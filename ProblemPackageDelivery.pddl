(define (problem DLOG-2-2-2)
	(:domain driverlog)
	(:objects
	driver1 - driver
	driver2 - driver
	driver3 - driver
	truck1 - truck
	truck2 - truck
	truck3 - truck
	package1 - obj
	package2 - obj
	package3 - obj
	s0 - location
	s1 - location
	s2 - location
	s3 - location
	p1-0 - location
	p1-2 - location
	p1-3 - location
	)
	(:init
	(at driver1 s0)
	(at driver2 s0)
	(at driver3 s0)
	(at truck1 s0)
	(empty truck1)
	(= (load truck1) 0)
	(= (fuel-per-minute truck1) 12)
	(at truck2 s0)
	(empty truck2)
	(= (load truck2) 0)
	(= (fuel-per-minute truck2) 12)
	(at truck3 s0)
	(empty truck3)
	(= (load truck3) 0)
	(= (fuel-per-minute truck3) 12)
	(at package1 s0)
	(at package2 s0)
	(at package3 s0)
	(path s1 p1-0)
	(path p1-0 s1)
	(path s0 p1-0)
	(path p1-0 s0)
	(= (time-to-walk s1 p1-0) 50)
	(= (time-to-walk p1-0 s1) 50)
	(= (time-to-walk s0 p1-0) 75)
	(= (time-to-walk p1-0 s0) 75)
	(path s1 p1-2)
	(path p1-2 s1)
	(path s2 p1-2)
	(path p1-2 s2)
	(= (time-to-walk s1 p1-2) 30)
	(= (time-to-walk p1-2 s1) 30)
	(= (time-to-walk s2 p1-2) 85)
	(= (time-to-walk p1-2 s2) 85)
	(path s1 p1-3)
	(path p1-3 s1)
	(path s3 p1-3)
	(path p1-3 s3)
	(= (time-to-walk s1 p1-3) 30)
	(= (time-to-walk p1-3 s1) 30)
	(= (time-to-walk s3 p1-3) 82)
	(= (time-to-walk p1-3 s3) 82)
	(link s0 s1)
	(link s1 s0)
	(= (time-to-drive s0 s1) 65)
	(= (time-to-drive s1 s0) 65)
	(link s0 s2)
	(link s2 s0)
	(= (time-to-drive s0 s2) 69)
	(= (time-to-drive s2 s0) 69)
	(link s2 s1)
	(link s1 s2)
	(= (time-to-drive s2 s1) 74)
	(= (time-to-drive s1 s2) 74)
	(link s0 s3)
	(link s3 s0)
	(= (time-to-drive s0 s3) 80)
	(= (time-to-drive s3 s0) 80)
	(link s3 s1)
	(link s1 s3)
	(= (time-to-drive s3 s1) 60)
	(= (time-to-drive s1 s3) 60)
	(link s3 s2)
	(link s2 s3)
	(= (time-to-drive s3 s2) 65)
	(= (time-to-drive s2 s3) 65)
	(= (fuel-used) 0)
)
	(:goal (and
	(at driver1 s1)
	(at truck1 s1)
	(at package1 s1)
	(at driver2 s2)
	(at truck2 s2)
	(at package2 s2)
	(at driver3 s3)
	(at truck3 s3)
	(at package3 s3)
	))

(:metric minimize (+ (* 1 (total-time)) (* 3 (fuel-used))))

)