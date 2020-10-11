project_path=$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)

rm -rf ${project_path}/build/*
rm -rf ${project_path}/lib/*

echo 'done'
