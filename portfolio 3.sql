--Select location, date, total_cases, total_deaths, (convert(float,total_deaths)/nullif(convert(float,total_cases),0)*100) as DeathPercentage
--from Portfolio..full_data
--where location like '%states%'
--order by 1,2
 
--select location, max(cast(total_deaths as int)) as totaldeathcount
--from portfolio..full_data 
--where location not in ('world', 'africa' ,'north america', 'south america', 'asia', 'europe', 'High income', 'low income', 'upper middle income'
--, 'lower middle income', 'european union')
--group by location
--order by totaldeathcount desc


--select location, max(cast(total_deaths as int)) as totaldeathcount
--from portfolio..full_data 
--where location in ('world', 'africa' ,'north america', 'south america', 'asia', 'europe', 'High income', 'low income', 'upper middle income'
--, 'lower middle income', 'european union')
--group by location
--order by totaldeathcount desc



--
--Select date, sum(cast(new_cases as int)) as totalcasesperday, sum(cast(new_deaths as int)) as totaldeathsperday
--from Portfolio..full_data
----where location like '%states%'
--group by date
--order by 1,2

--select da.location, da.date, daily_vaccinations, sum(convert(float,daily_vaccinations)) over (partition by da.location order by da.location)
--from Portfolio..full_data da
--join Portfolio..vaccinations vac
--on da.location= vac.location
--and da.date=vac.date
----where vac.daily_vaccinations is not null
--order by 1,2


--select da.location, da.date, daily_vaccinations, sum(convert(bigint,daily_vaccinations)) over (partition by da.location order by da.location, da.date) as totalvaccinations
--from Portfolio..full_data da
--join Portfolio..vaccinations vac
--on da.location= vac.location
--and da.date=vac.date
--where daily_vaccinations is not null
--order by 1,2



--, sum(convert(bigint,daily_vaccinations)) over (partition by da.location )

--create view vaccine as
--select da.location, da.date, daily_vaccinations, sum(convert(bigint,daily_vaccinations)) over (partition by da.location order by da.location, da.date) as totalvaccinations
--from Portfolio..full_data da
--join Portfolio..vaccinations vac
--on da.location= vac.location
--and da.date=vac.date
--where daily_vaccinations is not null
----order by 1,2

--select * from vaccine



