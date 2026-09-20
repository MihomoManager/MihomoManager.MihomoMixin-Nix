{ fetchNuGet }:
[
  (fetchNuGet {
    pname = "Jint";
    version = "4.16.3";
    sha256 = "sha256-Di57rjQ4eV4yUlD3vw6eFDfq+QVh/Kz3KQpYGF0SROk=";
  })
  (fetchNuGet {
    pname = "SharpYaml";
    version = "3.13.1";
    sha256 = "sha256-956AM3HrVl1nxH0n9/zqEoEkJLsIJsrpXKPr6tqiZMI=";
  })
  (fetchNuGet {
    pname = "acornima";
    version = "1.7.0";
    sha256 = "sha256-RMdNhr9GinGYY4C3h78y/Go47NwpM5b9EFawu5Tb9AQ=";
  })
]
