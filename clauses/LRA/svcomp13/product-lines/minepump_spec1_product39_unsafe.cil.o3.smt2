(set-info :origin "SVCOMP13 benchmarks generated by Arie Gurfinkel")
(set-info :status unsat)
(set-logic HORN)
(declare-fun cp-rel-bb1.i.i23.i.i () Bool)
(declare-fun cp-rel-entry () Bool)
(declare-fun cp-rel-bb1.i.i (Real Real Real Real) Bool)
(assert |cp-rel-entry|)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Bool) )(let (($x197437 (and |cp-rel-entry| (<= ?D 1.0) (>= ?C 0.0) (<= ?C 0.0) (>= ?B 0.0) (<= ?B 0.0) (>= ?A 1.0) (<= ?A 1.0) (= ?E true) (>= ?D 1.0))))
(=> $x197437 (|cp-rel-bb1.i.i| ?A ?B ?C ?D))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Bool) (?J Bool) (?K Bool) (?L Bool) (?M Bool) (?N Bool) (?O Real) (?P Real) (?Q Bool) (?R Bool) (?S Bool) (?T Bool) (?U Bool) (?V Bool) (?W Real) (?X Real) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Real) (?M1 Real) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Bool) (?X1 Bool) (?Y1 Bool) (?Z1 Bool) (?A2 Real) (?B2 Real) (?C2 Real) (?D2 Real) (?E2 Bool) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Real) (?K2 Bool) (?L2 Real) (?M2 Real) (?N2 Bool) (?O2 Real) (?P2 Real) (?Q2 Bool) (?R2 Real) (?S2 Bool) (?T2 Bool) (?U2 Bool) )(let (($x256357 (|cp-rel-bb1.i.i| ?E ?F ?G ?H)))
(let (($x31318 (= ?I2 (or ?U2 ?T2))))
(let (($x334735 (or (not ?I) (and ?J ?K (not ?L)))))
(let (($x254008 (or (not ?I) ?K)))
(let (($x826784 (not ?M)))
(let (($x77781 (or $x826784 (and ?I ?N (<= ?O ?P) (>= ?O ?P)) (and ?J ?Q ?L (<= ?O ?D) (>= ?O ?D)))))
(let (($x788317 (or $x826784 (and ?N (not ?Q)) (and ?Q (not ?N)))))
(let (($x341615 (or (not ?R) (and ?M ?S (not ?T)))))
(let (($x259428 (or (not ?R) ?S)))
(let (($x39641 (not ?U)))
(let (($x12170 (or $x39641 (and ?R ?V (<= ?W ?X) (>= ?W ?X)) (and ?M ?Y ?T (<= ?W ?C) (>= ?W ?C)))))
(let (($x210149 (or $x39641 (and ?V (not ?Y)) (and ?Y (not ?V)))))
(let (($x512351 (or (not ?Z) (and ?U ?A1 ?B1))))
(let (($x519970 (or (not ?Z) ?A1)))
(let (($x81139 (or (not ?C1) (and ?Z ?D1 ?E1) (and ?U ?F1 (not ?B1)))))
(let (($x290850 (or (not ?C1) (and ?D1 (not ?F1)) (and ?F1 (not ?D1)))))
(let (($x159692 (or (not ?G1) (and ?C1 ?H1 (not ?I1)))))
(let (($x598701 (or (not ?G1) ?H1)))
(let (($x628228 (or (not ?J1) (and ?G1 ?K1 (<= ?L1 ?M1) (>= ?L1 ?M1)) (and ?C1 ?N1 ?I1 (<= ?L1 ?O) (>= ?L1 ?O)))))
(let (($x52390 (or (not ?J1) (and ?K1 (not ?N1)) (and ?N1 (not ?K1)))))
(let (($x536727 (or (not ?O1) (and ?J1 ?P1 (not ?Q1)))))
(let (($x466376 (or (not ?O1) ?P1)))
(let (($x392107 (or (not ?R1) (and ?O1 ?S1 ?I1))))
(let (($x261165 (or (not ?R1) ?S1)))
(let (($x199645 (or (not ?T1) (and ?O1 ?U1 (not ?I1)))))
(let (($x348003 (or (not ?T1) ?U1)))
(let (($x453240 (or (not ?V1) (and ?T1 ?W1 ?X1))))
(let (($x404382 (or (not ?V1) ?W1)))
(let (($x246342 (>= ?C2 0.0)))
(let (($x54957 (<= ?C2 0.0)))
(let (($x621721 (and ?Z ?H2 (not ?E1) (<= ?A2 0.0) (>= ?A2 0.0) (<= ?B2 ?O) (>= ?B2 ?O) $x54957 $x246342)))
(let (($x249679 (>= ?B2 ?L1)))
(let (($x817755 (<= ?B2 ?L1)))
(let (($x586572 (>= ?A2 ?A)))
(let (($x80578 (<= ?A2 ?A)))
(let (($x328550 (and ?J1 ?G2 ?Q1 $x80578 $x586572 $x817755 $x249679 (<= ?C2 ?B) (>= ?C2 ?B))))
(let (($x319210 (not ?Y1)))
(let (($x296544 (or $x319210 (and ?R1 ?Z1 $x80578 $x586572 $x817755 $x249679 (<= ?C2 ?D2) (>= ?C2 ?D2)) (and ?V1 ?E2 $x80578 $x586572 $x817755 $x249679 (<= ?C2 ?B) (>= ?C2 ?B)) (and ?T1 ?F2 (not ?X1) $x80578 $x586572 $x817755 $x249679 $x54957 $x246342) $x328550 $x621721)))
(let (($x608740 (or $x319210 (and ?Z1 (not ?E2) (not ?F2) (not ?G2) (not ?H2)) (and ?E2 (not ?Z1) (not ?F2) (not ?G2) (not ?H2)) (and ?F2 (not ?Z1) (not ?E2) (not ?G2) (not ?H2)) (and ?G2 (not ?Z1) (not ?E2) (not ?F2) (not ?H2)) (and ?H2 (not ?Z1) (not ?E2) (not ?F2) (not ?G2)))))
(let (($x799199 (= ?Y1 true)))
(let (($x602180 (= ?I2 true)))
(let (($x181647 (= ?L (= ?J2 0.0))))
(let (($x222961 (= ?L2 (ite ?K2 1.0 0.0))))
(let (($x637402 (= ?T (= ?M2 0.0))))
(let (($x272402 (= ?X (ite ?N2 1.0 0.0))))
(let (($x554392 (= ?B1 (= ?O2 0.0))))
(let (($x302742 (= ?E1 (= ?P2 0.0))))
(let (($x515350 (= ?Q2 (not (<= ?O 0.0)))))
(let (($x603977 (= ?R2 (+ (~ 1.0) ?O))))
(let (($x405816 (= ?M1 (ite ?Q2 ?R2 ?O))))
(let (($x417221 (= ?S2 (not (<= ?L1 1.0)))))
(let (($x553090 (= ?X1 (= ?W 0.0))))
(let (($x362895 (= ?T2 (= ?W 0.0))))
(let (($x103674 (= ?U2 (= ?C2 0.0))))
(let (($x304224 (and (|cp-rel-bb1.i.i| ?A ?B ?C ?D) $x103674 $x362895 $x553090 (= ?D2 (ite ?S2 1.0 ?B)) $x417221 (= ?Q1 (= ?A 0.0)) $x405816 $x603977 $x515350 (= ?I1 (= ?B 0.0)) $x302742 $x554392 $x272402 (= ?N2 (= ?C 0.0)) $x637402 (= ?P (+ ?L2 ?D)) $x222961 (= ?K2 (not (<= 2.0 ?D))) $x181647 (>= ?H ?B2) (<= ?H ?B2) (>= ?G ?W) (<= ?G ?W) (>= ?F ?C2) (<= ?F ?C2) (>= ?E ?A2) (<= ?E ?A2) $x602180 $x799199 $x608740 $x296544 $x404382 $x453240 $x348003 $x199645 $x261165 $x392107 $x466376 $x536727 $x52390 $x628228 $x598701 $x159692 $x290850 $x81139 $x519970 $x512351 $x210149 $x12170 $x259428 $x341615 $x788317 $x77781 $x254008 $x334735 $x31318)))
(=> $x304224 $x256357)))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Bool) (?F Bool) (?G Bool) (?H Bool) (?I Bool) (?J Bool) (?K Real) (?L Real) (?M Bool) (?N Bool) (?O Bool) (?P Bool) (?Q Bool) (?R Bool) (?S Real) (?T Real) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Real) (?I1 Real) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Real) (?X1 Real) (?Y1 Real) (?Z1 Real) (?A2 Bool) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Real) (?G2 Bool) (?H2 Real) (?I2 Real) (?J2 Bool) (?K2 Real) (?L2 Real) (?M2 Bool) (?N2 Real) (?O2 Bool) (?P2 Bool) (?Q2 Bool) )(let (($x31318 (= ?E2 (or ?Q2 ?P2))))
(let (($x334735 (or (not ?E) (and ?F ?G (not ?H)))))
(let (($x254008 (or (not ?E) ?G)))
(let (($x826784 (not ?I)))
(let (($x242922 (or $x826784 (and ?E ?J (<= ?K ?L) (>= ?K ?L)) (and ?F ?M ?H (<= ?K ?D) (>= ?K ?D)))))
(let (($x788317 (or $x826784 (and ?J (not ?M)) (and ?M (not ?J)))))
(let (($x341615 (or (not ?N) (and ?I ?O (not ?P)))))
(let (($x259428 (or (not ?N) ?O)))
(let (($x39641 (not ?Q)))
(let (($x694249 (or $x39641 (and ?N ?R (<= ?S ?T) (>= ?S ?T)) (and ?I ?U ?P (<= ?S ?C) (>= ?S ?C)))))
(let (($x210149 (or $x39641 (and ?R (not ?U)) (and ?U (not ?R)))))
(let (($x512351 (or (not ?V) (and ?Q ?W ?X))))
(let (($x519970 (or (not ?V) ?W)))
(let (($x81139 (or (not ?Y) (and ?V ?Z ?A1) (and ?Q ?B1 (not ?X)))))
(let (($x290850 (or (not ?Y) (and ?Z (not ?B1)) (and ?B1 (not ?Z)))))
(let (($x159692 (or (not ?C1) (and ?Y ?D1 (not ?E1)))))
(let (($x598701 (or (not ?C1) ?D1)))
(let (($x628228 (or (not ?F1) (and ?C1 ?G1 (<= ?H1 ?I1) (>= ?H1 ?I1)) (and ?Y ?J1 ?E1 (<= ?H1 ?K) (>= ?H1 ?K)))))
(let (($x52390 (or (not ?F1) (and ?G1 (not ?J1)) (and ?J1 (not ?G1)))))
(let (($x536727 (or (not ?K1) (and ?F1 ?L1 (not ?M1)))))
(let (($x466376 (or (not ?K1) ?L1)))
(let (($x392107 (or (not ?N1) (and ?K1 ?O1 ?E1))))
(let (($x261165 (or (not ?N1) ?O1)))
(let (($x199645 (or (not ?P1) (and ?K1 ?Q1 (not ?E1)))))
(let (($x348003 (or (not ?P1) ?Q1)))
(let (($x453240 (or (not ?R1) (and ?P1 ?S1 ?T1))))
(let (($x404382 (or (not ?R1) ?S1)))
(let (($x246342 (>= ?Y1 0.0)))
(let (($x54957 (<= ?Y1 0.0)))
(let (($x621721 (and ?V ?D2 (not ?A1) (<= ?W1 0.0) (>= ?W1 0.0) (<= ?X1 ?K) (>= ?X1 ?K) $x54957 $x246342)))
(let (($x249679 (>= ?X1 ?H1)))
(let (($x817755 (<= ?X1 ?H1)))
(let (($x466036 (>= ?W1 ?A)))
(let (($x276302 (<= ?W1 ?A)))
(let (($x577097 (and ?F1 ?C2 ?M1 $x276302 $x466036 $x817755 $x249679 (<= ?Y1 ?B) (>= ?Y1 ?B))))
(let (($x319210 (not ?U1)))
(let (($x397957 (or $x319210 (and ?N1 ?V1 $x276302 $x466036 $x817755 $x249679 (<= ?Y1 ?Z1) (>= ?Y1 ?Z1)) (and ?R1 ?A2 $x276302 $x466036 $x817755 $x249679 (<= ?Y1 ?B) (>= ?Y1 ?B)) (and ?P1 ?B2 (not ?T1) $x276302 $x466036 $x817755 $x249679 $x54957 $x246342) $x577097 $x621721)))
(let (($x608740 (or $x319210 (and ?V1 (not ?A2) (not ?B2) (not ?C2) (not ?D2)) (and ?A2 (not ?V1) (not ?B2) (not ?C2) (not ?D2)) (and ?B2 (not ?V1) (not ?A2) (not ?C2) (not ?D2)) (and ?C2 (not ?V1) (not ?A2) (not ?B2) (not ?D2)) (and ?D2 (not ?V1) (not ?A2) (not ?B2) (not ?C2)))))
(let (($x799199 (= ?U1 true)))
(let (($x181647 (= ?H (= ?F2 0.0))))
(let (($x222961 (= ?H2 (ite ?G2 1.0 0.0))))
(let (($x637402 (= ?P (= ?I2 0.0))))
(let (($x272402 (= ?T (ite ?J2 1.0 0.0))))
(let (($x554392 (= ?X (= ?K2 0.0))))
(let (($x302742 (= ?A1 (= ?L2 0.0))))
(let (($x515350 (= ?M2 (not (<= ?K 0.0)))))
(let (($x603977 (= ?N2 (+ (~ 1.0) ?K))))
(let (($x405816 (= ?I1 (ite ?M2 ?N2 ?K))))
(let (($x417221 (= ?O2 (not (<= ?H1 1.0)))))
(let (($x553090 (= ?T1 (= ?S 0.0))))
(let (($x362895 (= ?P2 (= ?S 0.0))))
(let (($x103674 (= ?Q2 (= ?Y1 0.0))))
(let (($x256357 (|cp-rel-bb1.i.i| ?A ?B ?C ?D)))
(let (($x911165 (and $x256357 $x103674 $x362895 $x553090 (= ?Z1 (ite ?O2 1.0 ?B)) $x417221 (= ?M1 (= ?A 0.0)) $x405816 $x603977 $x515350 (= ?E1 (= ?B 0.0)) $x302742 $x554392 $x272402 (= ?J2 (= ?C 0.0)) $x637402 (= ?L (+ ?H2 ?D)) $x222961 (= ?G2 (not (<= 2.0 ?D))) $x181647 (not (= ?E2 true)) $x799199 $x608740 $x397957 $x404382 $x453240 $x348003 $x199645 $x261165 $x392107 $x466376 $x536727 $x52390 $x628228 $x598701 $x159692 $x290850 $x81139 $x519970 $x512351 $x210149 $x694249 $x259428 $x341615 $x788317 $x242922 $x254008 $x334735 $x31318)))
(=> $x911165 |cp-rel-bb1.i.i23.i.i|))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (not cp-rel-bb1.i.i23.i.i))
(check-sat)