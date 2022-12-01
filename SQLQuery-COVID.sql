
--Select *
--From
--PortfolioPoroject..CovidDeaths
--Where continent is not NULL
--order by 3,4

---- Select *
--From
--PortfolioPoroject..CovidVaccination
--order by 3,4

--Select location, date, total_cases, new_cases, total_deaths, population
--From
--PortfolioPoroject..CovidDeaths
--order by 1,2



----- Total Cases vs Total deaths

--Select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercent
--From
--PortfolioPoroject..CovidDeaths
--Where location like '%states'
--order by 1,2




------- Total Cases vs Population, Shows what percentage of population got Covid

--Select location, date, total_cases, population, (total_deaths/population)*100 as DeathPercent
--From
--PortfolioPoroject..CovidDeaths
--Where location like '%states'
--order by 5

------ Countries with Highest infection Rates compared to population

--Select location, population, MAX (total_cases) as HighestInfectionCount, Max ((total_deaths/population))*100 as PercentPopulationINfected
--From
--PortfolioPoroject..CovidDeaths
--Group by location, population
--Order by PercentPopulationINfected desc



------ Showing Countries with Highest Death Count per Population

--Select location, MAX(cast(total_deaths as int)) as TotalDeathCount
--From
--PortfolioPoroject..CovidDeaths
--Where continent is not NULL
--Group by location
--Order by TotalDeathCount desc


----------- Global Number
--Select SUM(new_cases) as total_cases, SUM(cast(new_deaths as int)) as total_deaths, 
--SUM(cast(new_deaths as int))/SUM(new_cases)*100 as DeathPercentage
--From
--PortfolioPoroject..CovidDeaths
--Where continent is not NULL
----Group by date
--Order by 1


----Looking at Total Population vs Vaccinations

--Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
--From
--	PortfolioPoroject..CovidDeaths dea
--Join
--	PortfolioPoroject..CovidVaccination vac
	
--	On dea.location = vac.location
--	and dea.date = vac.date

--	Where dea.continent is not NULL and vac.new_vaccinations is not NULL
--	Order by 2,3


