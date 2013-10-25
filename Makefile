
all: lakaEngine 

lakaEngine: session.o laka_engine.o auth.o post_loop.o post_pad.o add_theme.o dashboard.o setting_pannel.o category_widget.o allpost.o 
	g++ session.o laka_engine.o auth.o post_loop.o post_pad.o add_theme.o dashboard.o setting_pannel.o category_widget.o allpost.o -o lakaEngine  -I/usr/local/include -L/usr/local/lib -lwthttp -lwt -lboost_regex -lboost_signals -lboost_system -lboost_thread -lboost_filesystem -lboost_date_time -lwtdbo -lwtdbosqlite3

session.o: session.C
	g++ -g -Wall -std=c++0x -c session.C

category_widget.o: admin/category_widget.C
	g++ -g -Wall -std=c++0x -c admin/category_widget.C

laka_engine.o: laka_engine.C
	g++ -g -Wall -std=c++0x -c laka_engine.C

auth.o: auth.C
	g++ -g -Wall -std=c++0x -c auth.C

post_loop.o: post_loop.C
	g++ -g -Wall -std=c++0x -c post_loop.C

post_pad.o: admin/post_pad.C
	g++ -g -Wall -std=c++0x -c admin/post_pad.C

add_theme.o: add_theme.C
	g++ -g -Wall -std=c++0x -c add_theme.C

dashboard.o: admin/dashboard.C
	g++ -g -Wall -std=c++0x -c admin/dashboard.C

setting_pannel.o: admin/setting_pannel.C
	g++ -g -Wall -std=c++0x -c admin/setting_pannel.C
allpost.o: admin/allpost.C
	g++ -g -Wall -std=c++0x -c admin/allpost.C

clean:
	 rm -rvf *.o lakaEngine

run:
	./lakaEngine --docroot . --http-address 0.0.0.0 --http-port 1314 
