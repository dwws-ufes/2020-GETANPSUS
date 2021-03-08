﻿using System;
using TasteUfes.Models;
using Microsoft.EntityFrameworkCore.Storage;

namespace TasteUfes.Data.Interfaces
{
    public interface IUnitOfWork : IDisposable
    {
        int SaveChanges();
        IDbContextTransaction BeginTransaction();
        IEntityRepository<TEntity> Repository<TEntity>() where TEntity : Entity;
    }
}