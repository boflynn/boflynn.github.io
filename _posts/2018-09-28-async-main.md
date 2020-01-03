---
title:  ".NET Core Async Main"
date:   2018-09-29 0:00:00 -0500
status: "released"
---

Since the release of C# 7.1, it has been possibly to natively use the `await` operator in the `Main` method of a console application, but it requires a small project configuration change.

Here's the default `csproj` created by the `dotnet new console` command:

```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>netcoreapp2.1</TargetFramework>
  </PropertyGroup>

</Project>
```

If you want to use `async` methods in `Main`, add the following inside the `<PropertyGroup>` node:

```xml
<LangVersion>latest</LangVersion>
```

Now, you can change the signature of `Main` to the following:

```csharp
public static async Task Main(string[] args)
{
    // async calls here
}
```