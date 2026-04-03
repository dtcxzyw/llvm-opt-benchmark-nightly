begin_hunk_0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.as = load <2 x double>, ptr %i.aq, align 8, !tbaa !118 ; 3 uses
  %i.at = load <2 x double>, ptr %i.ap, align 8, !tbaa !118 ; 6 uses
  %i.au = shufflevector <2 x double> %i.at, <2 x double> %i.as, <2 x i32> <i32 0, i32 3>
  %i.av = shufflevector <2 x double> %i.as, <2 x double> %i.at, <2 x i32> <i32 0, i32 3>
  %i.aw = fcmp olt <2 x double> %i.au, %i.av
  %i.ax = select <2 x i1> %i.aw, <2 x double> %i.as, <2 x double> %i.at ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !225, !range !53, !noundef !57
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
end_hunk_0
begin_hunk_1
bb.m:                                             ; preds = %bb.l
  %i.bl = extractelement <2 x double> %i.ax, i64 0 ; 4 uses
  %i.bm = fcmp uno double %i.bl, 0.000000e+00
  br i1 %i.bm, label %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit, label %3

3:                                                ; preds = %bb.m
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %3
  %4 = fcmp olt <2 x double> %i.ax, %i.at
  %5 = extractelement <2 x i1> %4, i64 0
  br i1 %5, label %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 17
end_hunk_1
begin_hunk_2
  %or.cond.i.i = and i1 %i.br, %i.bp
  br i1 %or.cond.i.i, label %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %3
  br i1 %i.bg, label %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit.thread56, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_2
begin_hunk_3
  %i.cd = zext i1 %i.cc to i8
  br label %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit.thread

_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit.thread: ; preds = %bb.n, %bb.q, %bb.o, %bb.r, %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit, %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit.thread56, %bb.l
  %6 = phi i8 [ 0, %bb.l ], [ 1, %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit ], [ %i.cd, %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit.thread56 ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.n ]
  %i.ce = trunc nuw i8 %i.bj to i1                ; 2 uses
  br i1 %i.ce, label %_ZNK8facebook5velox6common18FloatingPointRangeIdE10testDoubleEd.exit19.thread, label %bb.s

end_hunk_3
begin_hunk_4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i8 %i.bd, ptr %i.dw, align 8, !tbaa !225, !noalias !2145
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 17
  %i.dy = or i8 %6, %i.bd
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !227, !noalias !2145
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 18
  store i8 %i.bj, ptr %i.dz, align 2, !tbaa !228, !noalias !2145
end_hunk_4
begin_hunk_5
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load <2 x float>, ptr %i.aq, align 4, !tbaa !2154 ; 3 uses
  %i.at = load <2 x float>, ptr %i.ap, align 4, !tbaa !2154 ; 6 uses
  %i.au = shufflevector <2 x float> %i.at, <2 x float> %i.as, <2 x i32> <i32 0, i32 3>
  %i.av = shufflevector <2 x float> %i.as, <2 x float> %i.at, <2 x i32> <i32 0, i32 3>
  %i.aw = fcmp olt <2 x float> %i.au, %i.av
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.as, <2 x float> %i.at ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !225, !range !53, !noundef !57
  %i.ba = trunc nuw i8 %i.az to i1                ; 2 uses
end_hunk_5
begin_hunk_6
bb.m:                                             ; preds = %bb.l
  %i.bl = extractelement <2 x float> %i.ax, i64 0 ; 4 uses
  %i.bm = fcmp uno float %i.bl, 0.000000e+00
  br i1 %i.bm, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit, label %3

3:                                                ; preds = %bb.m
  br i1 %i.ba, label %bb.p, label %bb.n

bb.n:                                             ; preds = %3
  %4 = fcmp ogt <2 x float> %i.at, %i.ax
  %5 = extractelement <2 x i1> %4, i64 0
  br i1 %5, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 17
end_hunk_6
begin_hunk_7
  %or.cond.i.i = and i1 %i.br, %i.bp
  br i1 %or.cond.i.i, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %3
  br i1 %i.bg, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread56, label %bb.q

bb.q:                                             ; preds = %bb.p
end_hunk_7
begin_hunk_8
  %i.ce = zext i1 %i.cd to i8
  br label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread

_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread: ; preds = %bb.n, %bb.q, %bb.o, %bb.r, %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit, %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread56, %bb.l
  %6 = phi i8 [ 0, %bb.l ], [ 1, %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit ], [ %i.ce, %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit.thread56 ], [ 1, %bb.r ], [ 1, %bb.o ], [ 1, %bb.q ], [ 1, %bb.n ]
  %i.cf = trunc nuw i8 %i.bj to i1                ; 2 uses
  br i1 %i.cf, label %_ZNK8facebook5velox6common18FloatingPointRangeIfE10testDoubleEd.exit19.thread, label %bb.s

end_hunk_8
begin_hunk_9
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i8 %i.bd, ptr %i.dy, align 8, !tbaa !225, !noalias !2167
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 17
  %i.ea = or i8 %6, %i.bd
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !227, !noalias !2167
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 18
  store i8 %i.bj, ptr %i.eb, align 2, !tbaa !228, !noalias !2167
end_hunk_9
