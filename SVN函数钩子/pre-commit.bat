@echo 
rem SVNǿ��дע�͵�hooks�ű�(Windows)
rem �ļ�����: pre-commit.bat,�ŵ�repository/hooksĿ¼��
setlocal
set SVN_BINDIR="C:\Program Files\VisualSVN Server\bin"
set REPOS=%1
set TXN=%2

rem ����Ƿ��ύ��־
%SVN_BINDIR%\svnlook log -t "%TXN%" "%REPOS%" | findstr "......" > nul
if %errorlevel% gtr 0 goto nolog

rem �����ļ�����
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "obj$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "pdb$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "idb$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "pch$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "res$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "exp$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "ilk$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "dep$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "suo$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "ncb$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "aps$"
if %errorlevel% EQU 0 (goto SuffixError)


%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "TimeLog.txt$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr ".profile$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "workspace.json$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "log$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "cache*.txt$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "testline*.txt$"
if %errorlevel% EQU 0 (goto SuffixError)


%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/data\/meshes\/maps\/1001\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/data\/meshes\/maps\/1002\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/data\/meshes\/maps\/1003\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/data\/meshes\/maps\/1004\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/data\/meshes\/maps\/1005\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/workspace\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/profile\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/savePic\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/logs\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/bin\Debug\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/bin\Release\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/bin\x86\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/bin\x64\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/obj\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/db\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/temp\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/tmp\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/cache\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/reports\/$"
if %errorlevel% EQU 0 (goto SuffixError)
%SVN_BINDIR%\svnlook changed -t "%TXN%" "%REPOS%" | findstr "\/LocalTemp\/$"
if %errorlevel% EQU 0 (goto SuffixError)

exit 0
:SuffixError
echo �����ύ�����Ƶ��ļ����ļ��У�������ǧ���У���ȫ��һ�������벻�淶�����������ᡣ����obj��pdb��idb��manifest��pch��res��exp��ilk��dep��user��suo��ncb��aps��log��TimeLog.txt��.profile��workspace.json��cache*.txt��testline*.txt ���ļ���data\meshes\maps\1001��data\meshes\maps\1002��data\meshes\maps\1003��data\meshes\maps\1004��data\meshes\maps\1005��workspace��profile��savePic��logs��bin\Debug��bin\Release��bin\x86��bin\x64��obj��db��temp��tmp��cache��reports��LocalTemp ��Ŀ¼���� 1>&2
exit 1
:nolog
echo ��־(Message)����Ҫ��׷����Ϣ�����������ϰ�߲������ȿ�����6���ϡ� 1>&2
exit 1