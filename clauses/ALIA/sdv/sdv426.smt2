(set-info :origin "driver benchmark extracted from Microsoft SDV")
(set-logic HORN)
(declare-fun Proc24 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc6 (Int Int Int Bool Int) Bool)
(declare-fun Proc13 (Int Int Int Bool Int) Bool)
(declare-fun Proc23 (Int Int Int Bool) Bool)
(declare-fun Proc2 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc25 (Int Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc21 (Int Int Int Bool Int) Bool)
(declare-fun Proc11 (Int Int Int Bool Int) Bool)
(declare-fun Proc26 (Int Int Int Bool) Bool)
(declare-fun Proc22 (Int Int Int Bool Int) Bool)
(declare-fun Proc7 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc10 (Int Int Int Bool Int) Bool)
(declare-fun Proc4 (Int Int Int Bool) Bool)
(declare-fun Proc14 (Int Int Int Bool Int) Bool)
(declare-fun Proc5 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc9 (Int Int Int Bool Int) Bool)
(declare-fun Proc20 (Int Int Int Bool Int) Bool)
(declare-fun Proc16 (Int Int Int Bool Int) Bool)
(declare-fun Proc27 (Int Int Int Bool) Bool)
(declare-fun Proc19 (Int Int Int Bool Int) Bool)
(declare-fun Proc18 (Int Int Int Bool Int) Bool)
(declare-fun Proc12 (Int Int Int Bool Int) Bool)
(declare-fun Proc8 (Int Int Int Bool Int Int Int Bool Int) Bool)
(declare-fun Proc17 (Int Int Int Bool Int) Bool)
(declare-fun Proc15 (Int Int Int Bool Int) Bool)
(declare-fun Proc1 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc30 (Int Int Int Bool Int Bool Int Int Int) Bool)
(declare-fun Proc28 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc0 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc29 (Int Int Int Bool) Bool)
(declare-fun Proc3 (Int Int Int Bool) Bool)
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Bool))
  (let ((a!1 (and (not (<= G (+ 1 I))) (not (<= G H)))))
  (let ((a!2 (or (not J)
                 (not (= I H))
                 (not a!1)
                 (not (Proc0 G F E J I D))
                 (not (and (= C G) (= B D))))))
    (=> (not a!2) (Proc1 H F E J A C B))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= E 1))))))
    (=> a!1 (Proc0 D C B J A E)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Int))
  (let ((a!1 (or (not (= E 1))
                 (not (and (= D E) (= C F)))
                 (not (and (= B C) (= A D)))))
        (a!2 (or (= E 1)
                 (not (and (= D E) (= C F)))
                 (not (and (= B C) (= A D)))))
        (a!3 (or (not (= K 0))
                 (not (and (= D H) (= C I)))
                 (not (and (= B C) (= A D))))))
  (let ((a!4 (and (or (= K 0) (not (Proc1 I K H J G F E)) (and a!1 a!2)) a!3)))
    (=> (not (or (not J) a!4)) (Proc2 I K H J G B A))))))
(assert (forall ((A Int) (B Int) (C Int) (J Bool)) (=> J (Proc3 C B A J))))
(assert (forall ((A Int) (B Int) (C Int) (J Bool)) (=> J (Proc4 C B A J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (J Bool))
  (let ((a!1 (or (not J) (not (and (= E 0) (= D 0))))))
    (=> (not a!1) (Proc5 C B A J E D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Int)
         (L Bool)
         (M Bool)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Bool))
  (let ((a!1 (not (and (not (<= R 0)) (Proc6 R Q P S O))))
        (a!2 (not (and (= E G) (= D N) (= C H) (= L M) (= B I)))))
  (let ((a!3 (or (= H 0) (not (and (= G F) (not M))) a!2))
        (a!4 (or (not (and (= H 0) (= J S))) (not (and (= G A) (= M J))) a!2)))
  (let ((a!5 (and (or (= H 1) (and a!3 a!4)) (or (not (= H 1)) (and a!3 a!4)))))
  (let ((a!6 (not (or (not S)
                      a!1
                      (not (Proc5 O Q P S N K))
                      (not (Proc4 O N K S))
                      (not (Proc3 O N K S))
                      (not (Proc7 O N K S I H))
                      a!5))))
    (=> a!6 (Proc8 R Q P S E D C L B))))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 1))))))
    (=> a!1 (Proc9 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 0))))))
    (=> a!1 (Proc10 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 1))))))
    (=> a!1 (Proc11 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 0))))))
    (=> a!1 (Proc12 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 1))))))
    (=> a!1 (Proc13 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 0))))))
    (=> a!1 (Proc14 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 1))))))
    (=> a!1 (Proc15 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 1))))))
    (=> a!1 (Proc16 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 0))))))
    (=> a!1 (Proc17 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 0))))))
    (=> a!1 (Proc18 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 0))))))
    (=> a!1 (Proc19 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (J Bool))
  (let ((a!1 (or (not J) (not (= E (- 1073741823))) (not (= D E)))))
    (=> (not a!1) (Proc20 C B A J D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (let ((a!1 (not (or (not J) (not (= D 1))))))
    (=> a!1 (Proc21 C B A J D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Int))
  (let ((a!1 (not (and (= O R) (= N P) (= K Q))))
        (a!3 (and (not (<= H (+ 1 I))) (not (<= H A1)))))
  (let ((a!2 (or (not (and (= U Y) (= T A1)))
                 (not (Proc24 T Z U J V B1))
                 (= B1 0)
                 (not (= R V))
                 (not (and (= Q U) (= P T)))
                 a!1))
        (a!4 (or (not (and (= F 1) (= R E) (= Q F) (= P G))) a!1))
        (a!5 (or (= F 1)
                 (not (and (= U F) (= T G)))
                 (not (Proc24 T Z U J V B1))
                 (= B1 0)
                 (not (= R V))
                 (not (and (= Q U) (= P T)))
                 a!1)))
  (let ((a!6 (and a!2
                  (or (not (= I A1))
                      (not a!3)
                      (not (Proc2 H Z Y J I G F))
                      (and a!4 a!5)))))
  (let ((a!7 (and (or (= X 0) (not (Proc20 A1 Z Y J W)) (not (= V W)) a!6)
                  (or (not (Proc20 A1 Z Y J D)) (not (= V D)) a!6)
                  (or (not (Proc20 A1 Z Y J C)) (not (= V C)) a!6)
                  (or (= X 0) (not (Proc20 A1 Z Y J B)) (not (= V B)) a!6))))
  (let ((a!8 (not (or (not J)
                      (= B1 0)
                      (not (Proc22 A1 Z Y J B1))
                      (= X 0)
                      (not (Proc23 A1 Z Y J))
                      a!7))))
    (=> a!8 (Proc25 A1 Z Y J A B1 O N K)))))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (J Bool))
  (let ((a!1 (not (or (not J)
                      (not (Proc26 F E D J))
                      (not (Proc20 F E D J C))
                      (not (Proc27 F E D J))))))
    (=> a!1 (Proc28 F E D J B A)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (J Bool))
  (=> (not (or (not J) (= D 0))) (Proc22 C B A J D))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Int)
         (C1 Int)
         (D1 Int))
  (let ((a!1 (or (not (= G 1))
                 (not (and (= F G) (= E H)))
                 (not (and (= D E) (= C F)))))
        (a!2 (or (= G 1)
                 (not (and (= F G) (= E H)))
                 (not (and (= D E) (= C F)))))
        (a!3 (or (not (= A1 0))
                 (not (and (= F B1) (= E D1)))
                 (not (and (= D E) (= C F)))))
        (a!4 (or (= Z 0)
                 (not (Proc29 D1 C1 B1 J))
                 (not (Proc28 D1 C1 B1 J B A))
                 (not (and (= F B1) (= E D1)))
                 (not (and (= D E) (= C F)))))
        (a!5 (or (not (= Z 0))
                 (not (and (= F B1) (= E D1)))
                 (not (and (= D E) (= C F)))))
        (a!6 (or (not (and (= F B1) (= E D1))) (not (and (= D E) (= C F))))))
  (let ((a!7 (and (or (= A1 0)
                      (not (Proc29 D1 C1 B1 J))
                      (not (Proc25 D1 C1 B1 J N K I H G))
                      (and a!1 a!2))
                  a!3
                  a!4
                  a!5
                  a!6)))
  (let ((a!8 (not (or (not J)
                      (not (Proc11 D1 C1 B1 J A1))
                      (not (Proc18 D1 C1 B1 J Z))
                      (not (Proc12 D1 C1 B1 J Y))
                      (not (Proc17 D1 C1 B1 J X))
                      (not (Proc10 D1 C1 B1 J W))
                      (not (Proc14 D1 C1 B1 J V))
                      (not (Proc21 D1 C1 B1 J U))
                      (not (Proc19 D1 C1 B1 J T))
                      (not (Proc9 D1 C1 B1 J R))
                      (not (Proc15 D1 C1 B1 J Q))
                      (not (Proc16 D1 C1 B1 J P))
                      (not (Proc13 D1 C1 B1 J O))
                      a!7))))
    (=> a!8 (Proc7 D1 C1 B1 J D C)))))))
(assert (forall ((A Int) (B Int) (C Int) (J Bool)) (=> J (Proc23 C B A J))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (J Bool))
  (=> J (Proc24 E D C J B A))))
(assert (forall ((A Int) (B Int) (C Int) (J Bool)) (=> J (Proc29 C B A J))))
(assert (forall ((A Int) (B Int) (C Int) (J Bool)) (=> J (Proc26 C B A J))))
(assert (forall ((A Int) (B Int) (C Int) (J Bool)) (=> J (Proc27 C B A J))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Int)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (T Int)
         (U Int)
         (V Int)
         (W Int)
         (X Int)
         (Y Int)
         (Z Int)
         (A1 Int)
         (B1 Int)
         (C1 Int)
         (D1 Int)
         (E1 Int)
         (F1 Int)
         (G1 Int)
         (H1 Int)
         (I1 Int)
         (J1 Int)
         (K1 Int)
         (L1 Int)
         (M1 Int)
         (N1 Int)
         (O1 Int)
         (P1 Int)
         (Q1 Int)
         (R1 Int)
         (S1 Int)
         (T1 Int)
         (U1 Int)
         (V1 Int)
         (W1 Int)
         (X1 Int)
         (Y1 Int)
         (Z1 Int)
         (A2 Int)
         (B2 Int)
         (C2 Int)
         (D2 Int)
         (E2 Int)
         (F2 Int))
  (let ((a!1 (and (not (<= D2 (+ 16 F2))) (not (<= D2 E2))))
        (a!2 (and (= C2 D2)
                  (not (<= B2 (+ 240 C2)))
                  (not (<= B2 D2))
                  (= A2 B2)
                  (not (<= Z1 (+ 4 A2)))
                  (not (<= Z1 B2))
                  (= Y1 Z1)
                  (not (<= X1 (+ 332 Y1)))))
        (a!3 (and (not (<= X1 Z1))
                  (= W1 X1)
                  (not (<= V1 (+ 4 W1)))
                  (not (<= V1 X1))
                  (= U1 V1)
                  (not (<= T1 (+ 536 U1)))
                  (not (<= T1 V1))
                  (= S1 T1)
                  (not (<= R1 (+ 240 S1)))
                  (not (<= R1 T1))
                  (= Q1 R1)
                  (not (<= P1 (+ 240 Q1)))
                  (not (<= P1 R1))
                  (= O1 P1)
                  (not (<= N1 (+ 240 O1)))
                  (not (<= N1 P1))
                  (= M1 N1)
                  (not (<= L1 (+ 4 M1)))
                  (not (<= L1 N1))
                  (= K1 L1)
                  (not (<= J1 (+ 536 K1)))
                  (not (<= J1 L1))
                  (= I1 J1)
                  (not (<= H1 (+ 332 I1)))
                  (not (<= H1 J1))
                  (= G1 H1)
                  (not (<= F1 (+ 240 G1)))
                  (not (<= F1 H1))
                  (= E1 F1)
                  (not (<= D1 (+ 240 E1)))
                  (not (<= D1 F1))
                  (= C1 D1)
                  (not (<= B1 (+ 332 C1)))
                  (not (<= B1 D1))
                  (= A1 B1)
                  (not (<= Z (+ 4 A1)))
                  (not (<= Z B1))
                  (= Y Z)
                  (not (<= X (+ 240 Y)))
                  (not (<= X Z))
                  (= W X)
                  (not (<= V (+ 240 W)))
                  (not (<= V X))
                  (= U V)
                  (not (<= T (+ 240 U)))
                  (not (<= T V))
                  (= R T)
                  (not (<= Q (+ 240 R)))
                  (not (<= Q T))
                  (= P Q)
                  (not (<= O (+ 240 P)))
                  (not (<= O Q))
                  (= N O)
                  (not (<= K (+ 40 N)))
                  (not (<= K O))
                  (= I K)
                  (not (<= H (+ 332 I)))
                  (not (<= H K))
                  (= G H)
                  (not (<= F (+ 4 G)))
                  (not (<= F H))
                  (= E F)
                  (not (<= D (+ 40 E)))
                  (not (<= D F)))))
  (let ((a!4 (not (or (not J)
                      (not (= F2 E2))
                      (not a!1)
                      (not a!2)
                      (not a!3)
                      (not (= C D))))))
    (=> a!4 (Proc6 E2 B A J C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Int)
         (I Int)
         (J Bool)
         (K Int)
         (L Bool)
         (M Bool)
         (N Int))
  (let ((a!1 (or (not M) (not (and (Proc8 N K I true H G F L E) (not L))))))
    (=> (not a!1) (Proc30 N K I M D J C B A)))))
(assert (let ((a!1 (exists ((V0 Int)
                    (V1 Int)
                    (V2 Int)
                    (V3 Bool)
                    (V4 Int)
                    (V5 Bool)
                    (V6 Int)
                    (V7 Int)
                    (V8 Int))
             (not (=> (and (Proc30 V0 V1 V2 V3 V4 V5 V6 V7 V8) (not false))
                      false)))))
  (not a!1)))

(check-sat)