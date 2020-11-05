#include"VirtualMachine/VirtualMachine.h"
using namespace Bubblegum::_VirtualMachine;
using namespace std;

bool is_file_type_correct(const string& name)
{
	auto point = find(name.begin(),name.end(),'.');
	string type = string(point,name.end());
	return type == ".bg";
}
int main(int argc,char** argv)
{
	if(argc == 1)
	{
		cout<<"Error#-1"<<endl<<"no input file!";
		exit(-1);
	}
	string path = argv[1];
	if(!is_file_type_correct(path))
	{
		cout<<"Error#-2"<<endl<<"incorrect file type!";
		exit(-2);
	}
	VirtualMachine machine;
	svector script = machine.load_script(path);
	machine.check_braces_equality(script);
	machine.run(script,"main");
	return 0;
}
