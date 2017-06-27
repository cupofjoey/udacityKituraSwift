#if os(Linux)
	import Glibc
	srand(UInt32(time(nil)))
#else
	import Darwin.C
#endif

#if os(Linux)
	print(Int(random() % 10) + 1)
#else
	print(Int(arc4random_uniform(UInt32(10))) + 1)
#endif
	
