# 프로젝트 구조
1. **DataGrip**에서 SQL 작업 후 GitHub(https://github.com/TSjhkim/actions1.git) 으로 Push
2. **GitHub Actions**의 sql 파일 Push에 대한 이벤트 트리거가 작동하여 Actions Workflow 시작
3. Actions YAML에 명시된 **MSSQL 서버**에 GitHub에 Push된 SQL 파일이 실행되며 데이터 저장됨
# Actions.yaml
