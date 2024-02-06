**Tenant Data Analysis**
**Single database, separate schema
Database per tenant
Multiple databases, multiple tenants per database, shared schema**

**One database to hold the data for all tenants
Every tenant's data is stored in the same set of tables
Tables that contain tenant-specific data include a column to identify which tenant each row belongs.**

**Separate tables for each tenant, each set under a tenant-specific schema**

**Adapting to Change**

**I've covered some of the main approaches to multi-tenancy with SQL Server.
If you're starting to design a multi-tenant system, 
hopefully this codes will provide the start of some good discussions within your team to work out what strategy makes most sense for you.**
