(set-info :origin "driver benchmark extracted from Microsoft SDV")
(set-logic HORN)
(declare-fun Proc27 (Int Int Int Bool Int) Bool)
(declare-fun Proc1 (Int Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc24 (Int Int Int Bool Int) Bool)
(declare-fun Proc33 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc17 (Int Int Int Bool Int Int Int Bool Int) Bool)
(declare-fun Proc13 (Int Int Int Bool) Bool)
(declare-fun Proc5 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc8 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc2 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc23 (Int Int Int Bool Int) Bool)
(declare-fun Proc21 (Int Int Int Bool Int) Bool)
(declare-fun Proc37 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc12 (Int Int Int Bool) Bool)
(declare-fun Proc22 (Int Int Int Bool Int) Bool)
(declare-fun Proc30 (Int Int Int Bool Int) Bool)
(declare-fun Proc39 (Int Int Int Bool Int Bool Int Int Int) Bool)
(declare-fun Proc16 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc7 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc25 (Int Int Int Bool Int) Bool)
(declare-fun Proc11 (Int Int Int Bool) Bool)
(declare-fun Proc29 (Int Int Int Bool Int) Bool)
(declare-fun Proc20 (Int Int Int Bool Int) Bool)
(declare-fun Proc36 (Int Int Int Bool) Bool)
(declare-fun Proc0 (Int Int Int Bool) Bool)
(declare-fun Proc10 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc34 (Int Int Int Bool Int Int Int Int Int) Bool)
(declare-fun Proc31 (Int Int Int Bool Int) Bool)
(declare-fun Proc32 (Int Int Int Bool) Bool)
(declare-fun Proc38 (Int Int Int Bool) Bool)
(declare-fun Proc19 (Int Int Int Bool Int) Bool)
(declare-fun Proc18 (Int Int Int Bool Int) Bool)
(declare-fun Proc14 (Int Int Int Bool Int Int) Bool)
(declare-fun Proc4 (Int Int Int Bool Int Int Int Int) Bool)
(declare-fun Proc6 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc26 (Int Int Int Bool Int) Bool)
(declare-fun Proc35 (Int Int Int Bool) Bool)
(declare-fun Proc15 (Int Int Int Bool Int) Bool)
(declare-fun Proc3 (Int Int Int Bool Int Int Int) Bool)
(declare-fun Proc28 (Int Int Int Bool Int) Bool)
(declare-fun Proc9 (Int Int Int Bool Int Int Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (Proc0 G F E H))))))
    (=> a!1 (Proc1 G F E H D C B A)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (Proc2 G F E H D C B)) (not (= A 0))))))
    (=> a!1 (Proc3 G F E H D C A)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int))
  (let ((a!1 (not (and (not (= I 0)) (= G (+ 8 I)) (Proc4 F E D H G I 0 C)))))
  (let ((a!2 (not (or (not H) a!1 (not (= B 1))))))
    (=> a!2 (Proc5 F E D H A I B))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Bool))
  (let ((a!1 (not (or (not H) (= F 0) (not (= E 259))))))
    (=> a!1 (Proc6 D C B H A F E)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int))
  (let ((a!1 (and (or (not (= I 1)) (not (= G I)))
                  (or (not (= I 0)) (not (= G I))))))
    (=> (not (or (not H) a!1)) (Proc4 F E D H C B A G)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (Proc7 G F E H D C B)) (not (= A B))))))
    (=> a!1 (Proc2 G F E H D C A)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int)
         (J Int))
  (let ((a!1 (and (not (<= G (+ 1 J))) (not (<= G I)))))
  (let ((a!2 (or (not H)
                 (not (= J I))
                 (not a!1)
                 (not (Proc8 G F E H J D))
                 (not (and (= C G) (= B D))))))
    (=> (not a!2) (Proc9 I F E H A C B))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int)
         (J Int)
         (K Int))
  (let ((a!1 (or (not (= E 1))
                 (not (and (= D F) (= C E)))
                 (not (and (= B D) (= A C)))))
        (a!2 (or (= E 1)
                 (not (and (= D F) (= C E)))
                 (not (and (= B D) (= A C)))))
        (a!3 (or (not (= K 0))
                 (not (and (= D J) (= C I)))
                 (not (and (= B D) (= A C))))))
  (let ((a!4 (and (or (= K 0) (not (Proc9 J K I H G F E)) (and a!1 a!2)) a!3)))
    (=> (not (or (not H) a!4)) (Proc10 J K I H G B A))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= E 1))))))
    (=> a!1 (Proc8 D C B H A E)))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc11 C B A H))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc12 C B A H))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc13 C B A H))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (H Bool))
  (let ((a!1 (or (not H) (not (and (= E 0) (= D 0))))))
    (=> (not a!1) (Proc14 C B A H E D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int)
         (J Int)
         (K Int)
         (L Bool)
         (M Bool)
         (N Int)
         (O Int)
         (P Int)
         (Q Int)
         (R Int)
         (S Bool))
  (let ((a!1 (not (and (not (<= R 0)) (Proc15 R Q P S O))))
        (a!2 (not (and (= E G) (= D N) (= C I) (= L M) (= B J)))))
  (let ((a!3 (or (= I 0) (not (and (= G F) (not M))) a!2))
        (a!4 (or (not (and (= I 0) (= H S))) (not (and (= G A) (= M H))) a!2)))
  (let ((a!5 (and (or (= I 1) (and a!3 a!4)) (or (not (= I 1)) (and a!3 a!4)))))
  (let ((a!6 (not (or (not S)
                      a!1
                      (not (Proc14 O Q P S N K))
                      (not (Proc13 O N K S))
                      (not (Proc12 O N K S))
                      (not (Proc11 O N K S))
                      (not (Proc16 O N K S J I))
                      a!5))))
    (=> a!6 (Proc17 R Q P S E D C L B))))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 1))))))
    (=> a!1 (Proc18 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 0))))))
    (=> a!1 (Proc19 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 1))))))
    (=> a!1 (Proc20 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 1))))))
    (=> a!1 (Proc21 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 1))))))
    (=> a!1 (Proc22 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 0))))))
    (=> a!1 (Proc23 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 0))))))
    (=> a!1 (Proc24 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 1))))))
    (=> a!1 (Proc25 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 1))))))
    (=> a!1 (Proc26 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 0))))))
    (=> a!1 (Proc27 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 0))))))
    (=> a!1 (Proc28 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (H Bool))
  (let ((a!1 (or (not H) (not (= E (- 1073741823))) (not (= D E)))))
    (=> (not a!1) (Proc29 C B A H D)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (Proc6 G F E H D C B)) (not (= A B))))))
    (=> a!1 (Proc7 G F E H D C A)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (let ((a!1 (not (or (not H) (not (= D 0))))))
    (=> a!1 (Proc30 C B A H D)))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int)
         (J Int)
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
        (a!6 (and (not (<= D (+ 1 E))) (not (<= D A1))))
        (a!8 (not (and (not (= B 1)) (= V C) (= U B) (= T F)))))
  (let ((a!2 (or (= X 0)
                 (not (Proc29 A1 Z Y H W))
                 (not (= V A1))
                 (not (and (= U Y) (= T W)))
                 (not (Proc33 V Z U H T B1))
                 (= B1 0)
                 (not (= R T))
                 (not (and (= Q U) (= P V)))
                 a!1))
        (a!3 (or (not (Proc29 A1 Z Y H J))
                 (not (= V A1))
                 (not (and (= U Y) (= T J)))
                 (not (Proc33 V Z U H T B1))
                 (= B1 0)
                 (not (= R T))
                 (not (and (= Q U) (= P V)))
                 a!1))
        (a!4 (or (not (Proc29 A1 Z Y H I))
                 (not (= V A1))
                 (not (and (= U Y) (= T I)))
                 (not (Proc33 V Z U H T B1))
                 (= B1 0)
                 (not (= R T))
                 (not (and (= Q U) (= P V)))
                 a!1))
        (a!5 (or (not (= V A1))
                 (not (and (= U Y) (= T F)))
                 (not (Proc33 V Z U H T B1))
                 (= B1 0)
                 (not (= R T))
                 (not (and (= Q U) (= P V)))
                 a!1))
        (a!7 (or (not (and (= B 1) (= R A) (= Q B) (= P C))) a!1))
        (a!9 (or a!8
                 (not (Proc33 V Z U H T B1))
                 (= B1 0)
                 (not (= R T))
                 (not (and (= Q U) (= P V)))
                 a!1)))
  (let ((a!10 (and a!5
                   (or (not (= E A1))
                       (not a!6)
                       (not (Proc10 D Z Y H E C B))
                       (and a!7 a!9)))))
  (let ((a!11 (and a!2 a!3 a!4 (or (= X 0) (not (Proc3 A1 Z Y H G B1 F)) a!10))))
  (let ((a!12 (not (or (not H)
                       (= B1 0)
                       (not (Proc31 A1 Z Y H B1))
                       (= X 0)
                       (not (Proc32 A1 Z Y H))
                       a!11))))
    (=> a!12 (Proc34 A1 Z Y H G B1 O N K)))))))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Bool))
  (let ((a!1 (not (or (not H)
                      (not (Proc35 F E D H))
                      (not (Proc29 F E D H C))
                      (not (Proc36 F E D H))))))
    (=> a!1 (Proc37 F E D H B A)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (H Bool))
  (=> (not (or (not H) (= D 0))) (Proc31 C B A H D))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc0 C B A H))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int)
         (J Int)
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
         (K1 Int))
  (let ((a!1 (or (not (= Q 1))
                 (not (and (= P Q) (= O R)))
                 (not (and (= N O) (= K P)))))
        (a!2 (or (= Q 1)
                 (not (and (= P Q) (= O R)))
                 (not (and (= N O) (= K P)))))
        (a!3 (or (not (= H1 0))
                 (not (and (= P I1) (= O K1)))
                 (not (and (= N O) (= K P)))))
        (a!4 (or (= G1 0)
                 (not (Proc38 K1 J1 I1 H))
                 (not (Proc37 K1 J1 I1 H J I))
                 (not (and (= P I1) (= O K1)))
                 (not (and (= N O) (= K P)))))
        (a!5 (or (not (= G1 0))
                 (not (and (= P I1) (= O K1)))
                 (not (and (= N O) (= K P)))))
        (a!6 (or (not (Proc1 K1 J1 I1 H G F E D))
                 (not (and (= P I1) (= O K1)))
                 (not (and (= N O) (= K P)))))
        (a!7 (or (not (and (= P I1) (= O K1))) (not (and (= N O) (= K P)))))
        (a!8 (or (not (Proc5 K1 J1 I1 H C B A))
                 (not (and (= P I1) (= O K1)))
                 (not (and (= N O) (= K P))))))
  (let ((a!9 (and (or (= H1 0)
                      (not (Proc38 K1 J1 I1 H))
                      (not (Proc34 K1 J1 I1 H V U T R Q))
                      (and a!1 a!2))
                  a!3
                  a!4
                  a!5
                  a!6
                  a!7
                  a!8)))
  (let ((a!10 (not (or (not H)
                       (not (Proc20 K1 J1 I1 H H1))
                       (not (Proc27 K1 J1 I1 H G1))
                       (not (Proc21 K1 J1 I1 H F1))
                       (not (Proc26 K1 J1 I1 H E1))
                       (not (Proc19 K1 J1 I1 H D1))
                       (not (Proc23 K1 J1 I1 H C1))
                       (not (Proc30 K1 J1 I1 H B1))
                       (not (Proc28 K1 J1 I1 H A1))
                       (not (Proc18 K1 J1 I1 H Z))
                       (not (Proc24 K1 J1 I1 H Y))
                       (not (Proc25 K1 J1 I1 H X))
                       (not (Proc22 K1 J1 I1 H W))
                       a!9))))
    (=> a!10 (Proc16 K1 J1 I1 H N K)))))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc32 C B A H))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (H Bool))
  (=> H (Proc33 E D C H B A))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc38 C B A H))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc35 C B A H))))
(assert (forall ((A Int) (B Int) (C Int) (H Bool)) (=> H (Proc36 C B A H))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int)
         (J Int)
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
         (D2 Int))
  (let ((a!1 (and (= D2 C2)
                  (not (<= B2 (+ 240 D2)))
                  (not (<= B2 C2))
                  (= A2 B2)
                  (not (<= Z1 (+ 4 A2)))
                  (not (<= Z1 B2))
                  (= Y1 Z1)
                  (not (<= X1 (+ 332 Y1)))))
        (a!2 (and (not (<= X1 Z1))
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
                  (= J K)
                  (not (<= I (+ 332 J)))
                  (not (<= I K))
                  (= G I)
                  (not (<= F (+ 4 G)))
                  (not (<= F I))
                  (= E F)
                  (not (<= D (+ 40 E)))
                  (not (<= D F)))))
  (let ((a!3 (not (or (not H) (not a!1) (not a!2) (not (= C D))))))
    (=> a!3 (Proc15 C2 B A H C))))))
(assert (forall ((A Int)
         (B Int)
         (C Int)
         (D Int)
         (E Int)
         (F Int)
         (G Int)
         (H Bool)
         (I Int)
         (J Int)
         (K Int)
         (L Bool)
         (M Bool)
         (N Int))
  (let ((a!1 (or (not M) (not (and (Proc17 N K J true I G F L E) (not L))))))
    (=> (not a!1) (Proc39 N K J M D H C B A)))))
(assert (let ((a!1 (exists ((V0 Int)
                    (V1 Int)
                    (V2 Int)
                    (V3 Bool)
                    (V4 Int)
                    (V5 Bool)
                    (V6 Int)
                    (V7 Int)
                    (V8 Int))
             (not (=> (and (Proc39 V0 V1 V2 V3 V4 V5 V6 V7 V8) (not false))
                      false)))))
  (not a!1)))

(check-sat)
