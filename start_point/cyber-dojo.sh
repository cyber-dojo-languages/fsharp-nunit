fsharpc --nologo \
        --target:library \
        -r:/usr/lib/cli/nunit.framework-2.6.3/nunit.framework.dll \
          -o RunTests.dll *.fs

if [ $? -eq 0 ]; then
  nunit-console -nologo ./RunTests.dll
fi
