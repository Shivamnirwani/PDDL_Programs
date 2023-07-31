(define (problem PickandPlaceProblem)
(:domain PickandPlaceDomain)
(:objects 
 rooma roomb
 ball1 ball2 ball3 ball4 ball5 ball6 ball7 ball8 ball9 ball10
 left right)
  
(:init (ROOM rooma) (ROOM roomb)
  (BALL ball1 ball2) (BALL ball3 ball4) (BALL1 ball5)
  (GRIPPER left right) (free left) (free right)(GRIPPER1 left)
  (at-robby rooma)
  (at-ball ball1 rooma) (at-ball ball2 rooma) (at-ball ball3 rooma)
  (at-ball ball4 rooma) (at-ball ball5 rooma)
 
  )
  
(:goal (and (at-ball ball1 roomb)
        (at-ball ball2 roomb)
        (at-ball ball3 roomb)
        (at-ball ball4 roomb)
        (at-ball ball5 roomb)
        ))
)