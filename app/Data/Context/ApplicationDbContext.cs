using System;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using TasteUfes.Data.Context.Extensions;
using TasteUfes.Models;
using TasteUfes.Seeders;

namespace TasteUfes.Data.Context
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
            // ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
            // ChangeTracker.AutoDetectChangesEnabled = false;
            Database.Migrate();
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Food>()
                .HasIndex(f => f.Name)
                .IsUnique();

            modelBuilder.Entity<Nutrient>()
                .HasIndex(n => n.Name)
                .IsUnique();

            modelBuilder.Entity<Role>()
                .HasIndex(r => r.Name)
                .IsUnique();

            modelBuilder.Entity<User>()
                .HasIndex(u => u.Username)
                .IsUnique();

            modelBuilder.Entity<User>()
                .HasIndex(u => u.Email)
                .IsUnique();

            modelBuilder.Entity<User>()
                .HasMany(u => u.Roles)
                .WithMany(r => r.Users)
                .UsingEntity<UserRole>(
                    ur => ur
                        .HasOne(ur => ur.Role)
                        .WithMany()
                        .HasForeignKey("RoleId"),
                    ur => ur
                        .HasOne(ur => ur.User)
                        .WithMany()
                        .HasForeignKey("UserId"))
                .ToTable("UserRole")
                .HasKey(ur => new { ur.UserId, ur.RoleId });

            modelBuilder.Seed<Nutrient>();
            modelBuilder.Seed<Role>();
            modelBuilder.Seed<User>();
            modelBuilder.Seed<UserRole>();

            /**
             * Por padrão a engine do SQLite mapeia "string" para "text" sem especificar o tamanho máximo.
             * ref: https://www.devart.com/dotconnect/sqlite/docs/DataTypeMapping.html
             *
             * Abaixo há uma forma de resolver este problema, mas manteremos o mapeamento padrão da engine.
             * modelBuilder.VarcharMaxLengthWhenUndefined(255);
             */
            modelBuilder.ApplyConfigurationsFromAssembly(typeof(ApplicationDbContext).Assembly);
            modelBuilder.OnDeleteClientSetNull();

            // Evita a modificação de OnDeleteClientSetNull
            modelBuilder.Entity<Token>()
                .HasOne(t => t.User)
                .WithMany(u => u.Tokens)
                .HasForeignKey(t => t.UserId)
                .OnDelete(DeleteBehavior.Cascade);

            base.OnModelCreating(modelBuilder);
        }

        public DbSet<Food> Foods { get; set; }
        public DbSet<Ingredient> Ingredients { get; set; }
        public DbSet<Nutrient> Nutrients { get; set; }
        public DbSet<NutritionFacts> NutritionFacts { get; set; }
        public DbSet<NutritionFactsNutrients> NutritionFactsNutrients { get; set; }
        public DbSet<Preparation> Preparations { get; set; }
        public DbSet<PreparationStep> PreparationSteps { get; set; }
        public DbSet<Recipe> Recipes { get; set; }
        public DbSet<Role> Roles { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<UserRole> UserRoles { get; set; }
        public DbSet<Token> Tokens { get; set; }
    }
}