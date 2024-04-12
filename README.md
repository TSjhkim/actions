# 프로젝트 구조
1. **DataGrip**에서 SQL 작업 후 GitHub(https://github.com/TSjhkim/actions1.git) 으로 Push
2. **GitHub Actions**의 sql 파일 Push에 대한 이벤트 트리거가 작동하여 Actions Workflow 시작
3. Actions YAML에 명시된 **MSSQL 서버**에 GitHub에 Push된 SQL 파일이 실행되며 데이터 저장됨
# GitHub 구성
1. 저장소 - Settings - Security - Secrets and variables - Actions - New repository secret
   - **Name** MSSQL_HOST / **Secret** tcp:1.221.184.114,1433
   - (프로토콜):(IP주소),(포트) 형식
   - **Name** MSSQL_PASSWORD / **Secret** MSSQL 로그인 시 암호
   - **Name** MSSQL_USERT / **Secret** MSSQL 로그인 명
# Actions.yaml

