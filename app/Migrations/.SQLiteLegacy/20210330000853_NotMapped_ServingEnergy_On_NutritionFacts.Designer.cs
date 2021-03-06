﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using TasteUfes.Data.Context;

namespace TasteUfes.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20210330000853_NotMapped_ServingEnergy_On_NutritionFacts")]
    partial class NotMapped_ServingEnergy_On_NutritionFacts
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "5.0.4");

            modelBuilder.Entity("TasteUfes.Models.Food", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(256)
                        .HasColumnType("TEXT");

                    b.Property<Guid?>("NutritionFactsId")
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("Name")
                        .IsUnique();

                    b.HasIndex("NutritionFactsId")
                        .IsUnique();

                    b.ToTable("Foods");
                });

            modelBuilder.Entity("TasteUfes.Models.Ingredient", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<Guid>("FoodId")
                        .HasColumnType("TEXT");

                    b.Property<int>("Quantity")
                        .HasColumnType("INTEGER");

                    b.Property<int>("QuantityUnit")
                        .HasColumnType("INTEGER");

                    b.Property<Guid>("RecipeId")
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("FoodId");

                    b.HasIndex("RecipeId");

                    b.ToTable("Ingredients");
                });

            modelBuilder.Entity("TasteUfes.Models.Nutrient", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<double>("DailyRecommendation")
                        .HasColumnType("REAL");

                    b.Property<double>("EnergyPerGram")
                        .HasColumnType("REAL");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(64)
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("Name")
                        .IsUnique();

                    b.ToTable("Nutrients");

                    b.HasData(
                        new
                        {
                            Id = new Guid("2b2dd419-c6b4-49cc-9be8-50992e91f36c"),
                            DailyRecommendation = 375.0,
                            EnergyPerGram = 4.0,
                            Name = "Carbohydrate"
                        },
                        new
                        {
                            Id = new Guid("829e1eb9-5eea-4856-8906-74cff3b95cb1"),
                            DailyRecommendation = 50.0,
                            EnergyPerGram = 4.0,
                            Name = "Protein"
                        },
                        new
                        {
                            Id = new Guid("db02fbba-a1bb-4bf7-8411-69412b446f50"),
                            DailyRecommendation = 80.0,
                            EnergyPerGram = 9.0,
                            Name = "Total Fat"
                        });
                });

            modelBuilder.Entity("TasteUfes.Models.NutritionFacts", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<double>("ServingSize")
                        .HasColumnType("REAL");

                    b.Property<int>("ServingSizeUnit")
                        .HasColumnType("INTEGER");

                    b.HasKey("Id");

                    b.ToTable("NutritionFacts");
                });

            modelBuilder.Entity("TasteUfes.Models.NutritionFactsNutrients", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<double>("AmountPerServing")
                        .HasColumnType("REAL");

                    b.Property<int>("AmountPerServingUnit")
                        .HasColumnType("INTEGER");

                    b.Property<Guid>("NutrientId")
                        .HasColumnType("TEXT");

                    b.Property<Guid>("NutritionFactsId")
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("NutrientId");

                    b.HasIndex("NutritionFactsId");

                    b.ToTable("NutritionFactsNutrients");
                });

            modelBuilder.Entity("TasteUfes.Models.Preparation", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<TimeSpan>("PreparationTime")
                        .HasColumnType("TEXT");

                    b.Property<Guid>("RecipeId")
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("RecipeId")
                        .IsUnique();

                    b.ToTable("Preparations");
                });

            modelBuilder.Entity("TasteUfes.Models.PreparationStep", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<string>("Description")
                        .IsRequired()
                        .HasMaxLength(2048)
                        .HasColumnType("TEXT");

                    b.Property<Guid>("PreparationId")
                        .HasColumnType("TEXT");

                    b.Property<int>("Step")
                        .HasColumnType("INTEGER");

                    b.HasKey("Id");

                    b.HasIndex("PreparationId");

                    b.ToTable("PreparationSteps");
                });

            modelBuilder.Entity("TasteUfes.Models.Recipe", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(256)
                        .HasColumnType("TEXT");

                    b.Property<int>("Servings")
                        .HasColumnType("INTEGER");

                    b.Property<Guid>("UserId")
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("Recipes");
                });

            modelBuilder.Entity("TasteUfes.Models.Role", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(16)
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("Name")
                        .IsUnique();

                    b.ToTable("Roles");

                    b.HasData(
                        new
                        {
                            Id = new Guid("d6742fbb-18ab-451b-a736-713b63b7a108"),
                            Name = "Admin"
                        });
                });

            modelBuilder.Entity("TasteUfes.Models.User", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("TEXT");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("TEXT");

                    b.Property<string>("FirstName")
                        .IsRequired()
                        .HasMaxLength(128)
                        .HasColumnType("TEXT");

                    b.Property<string>("LastName")
                        .IsRequired()
                        .HasMaxLength(128)
                        .HasColumnType("TEXT");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("TEXT");

                    b.Property<string>("Username")
                        .IsRequired()
                        .HasMaxLength(16)
                        .HasColumnType("TEXT");

                    b.HasKey("Id");

                    b.HasIndex("Email")
                        .IsUnique();

                    b.HasIndex("Username")
                        .IsUnique();

                    b.ToTable("Users");

                    b.HasData(
                        new
                        {
                            Id = new Guid("cab6b7ab-636c-4b3f-a549-7e5284a92848"),
                            Email = "admin@tasteufes.es",
                            FirstName = "Zé",
                            LastName = "Gonc",
                            Password = "AQAAAAEAACcQAAAAEMWXKZqYj6WvHX8oc0M9YUFYjMJItW+1xwSBbrZCZ2EB8d0wuPQIFRaaC3e5lCZStw==",
                            Username = "admin"
                        });
                });

            modelBuilder.Entity("TasteUfes.Models.UserRole", b =>
                {
                    b.Property<Guid>("UserId")
                        .HasColumnType("TEXT");

                    b.Property<Guid>("RoleId")
                        .HasColumnType("TEXT");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("UserRole");

                    b.HasData(
                        new
                        {
                            UserId = new Guid("cab6b7ab-636c-4b3f-a549-7e5284a92848"),
                            RoleId = new Guid("d6742fbb-18ab-451b-a736-713b63b7a108")
                        });
                });

            modelBuilder.Entity("TasteUfes.Models.Food", b =>
                {
                    b.HasOne("TasteUfes.Models.NutritionFacts", "NutritionFacts")
                        .WithOne("Food")
                        .HasForeignKey("TasteUfes.Models.Food", "NutritionFactsId");

                    b.Navigation("NutritionFacts");
                });

            modelBuilder.Entity("TasteUfes.Models.Ingredient", b =>
                {
                    b.HasOne("TasteUfes.Models.Food", "Food")
                        .WithMany("Ingredients")
                        .HasForeignKey("FoodId")
                        .IsRequired();

                    b.HasOne("TasteUfes.Models.Recipe", "Recipe")
                        .WithMany("Ingredients")
                        .HasForeignKey("RecipeId")
                        .IsRequired();

                    b.Navigation("Food");

                    b.Navigation("Recipe");
                });

            modelBuilder.Entity("TasteUfes.Models.NutritionFactsNutrients", b =>
                {
                    b.HasOne("TasteUfes.Models.Nutrient", "Nutrient")
                        .WithMany("NutritionFactsNutrients")
                        .HasForeignKey("NutrientId")
                        .IsRequired();

                    b.HasOne("TasteUfes.Models.NutritionFacts", "NutritionFacts")
                        .WithMany("NutritionFactsNutrients")
                        .HasForeignKey("NutritionFactsId")
                        .IsRequired();

                    b.Navigation("Nutrient");

                    b.Navigation("NutritionFacts");
                });

            modelBuilder.Entity("TasteUfes.Models.Preparation", b =>
                {
                    b.HasOne("TasteUfes.Models.Recipe", "Recipe")
                        .WithOne("Preparation")
                        .HasForeignKey("TasteUfes.Models.Preparation", "RecipeId")
                        .IsRequired();

                    b.Navigation("Recipe");
                });

            modelBuilder.Entity("TasteUfes.Models.PreparationStep", b =>
                {
                    b.HasOne("TasteUfes.Models.Preparation", "Preparation")
                        .WithMany("Steps")
                        .HasForeignKey("PreparationId")
                        .IsRequired();

                    b.Navigation("Preparation");
                });

            modelBuilder.Entity("TasteUfes.Models.Recipe", b =>
                {
                    b.HasOne("TasteUfes.Models.User", "User")
                        .WithMany("Recipes")
                        .HasForeignKey("UserId")
                        .IsRequired();

                    b.Navigation("User");
                });

            modelBuilder.Entity("TasteUfes.Models.UserRole", b =>
                {
                    b.HasOne("TasteUfes.Models.Role", "Role")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .IsRequired();

                    b.HasOne("TasteUfes.Models.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .IsRequired();

                    b.Navigation("Role");

                    b.Navigation("User");
                });

            modelBuilder.Entity("TasteUfes.Models.Food", b =>
                {
                    b.Navigation("Ingredients");
                });

            modelBuilder.Entity("TasteUfes.Models.Nutrient", b =>
                {
                    b.Navigation("NutritionFactsNutrients");
                });

            modelBuilder.Entity("TasteUfes.Models.NutritionFacts", b =>
                {
                    b.Navigation("Food");

                    b.Navigation("NutritionFactsNutrients");
                });

            modelBuilder.Entity("TasteUfes.Models.Preparation", b =>
                {
                    b.Navigation("Steps");
                });

            modelBuilder.Entity("TasteUfes.Models.Recipe", b =>
                {
                    b.Navigation("Ingredients");

                    b.Navigation("Preparation");
                });

            modelBuilder.Entity("TasteUfes.Models.User", b =>
                {
                    b.Navigation("Recipes");
                });
#pragma warning restore 612, 618
        }
    }
}
