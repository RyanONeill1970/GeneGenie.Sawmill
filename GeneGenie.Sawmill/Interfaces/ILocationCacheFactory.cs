﻿// <copyright file="ILocationCacheFactory.cs" company="GeneGenie.com">
// Copyright (c) GeneGenie.com. All Rights Reserved.
// Licensed under the GNU Affero General Public License v3.0. See LICENSE in the project root for license information.
// </copyright>

namespace GeneGenie.Sawmill.Interfaces
{
    using GeneGenie.Sawmill.Caching;

    public interface ILocationCacheFactory
    {
        CacheManager Create();
    }
}
