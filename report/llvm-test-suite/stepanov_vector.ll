inline.NumInlined: 864
inline.NumDeleted: 161
begin_hunk_0_@main:bb.a
  br i1 %or.cond, label %.lr.ph.i146.preheader1168, label %vector.ph993

vector.ph993:                                     ; preds = %.lr.ph.i146.preheader
  %n.vec995 = and i64 %i.kh, 4611686018427387900  ; 4 uses
  %i.kj = shl i64 %n.vec995, 3
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.kj
  %26 = shl i64 %n.vec995, 3
  %i.kl = getelementptr i8, ptr %i.jr, i64 %26
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph993
  %index997 = phi i64 [ 0, %vector.ph993 ], [ %index.next1003, %vector.body996 ] ; 3 uses
  %offset.idx998 = shl i64 %index997, 3
  %next.gep999 = getelementptr i8, ptr %i.ka, i64 %offset.idx998 ; 2 uses
  %offset.idx1000 = shl i64 %index997, 3
  %next.gep1001 = getelementptr i8, ptr %i.jr, i64 %offset.idx1000 ; 2 uses
  %i.km = getelementptr i8, ptr %next.gep999, i64 16
  %wide.load = load <2 x double>, ptr %next.gep999, align 8, !tbaa !32
  %wide.load1002 = load <2 x double>, ptr %i.km, align 8, !tbaa !32
end_hunk_0
begin_hunk_1_@main:bb.a
  %min.iters.check1011 = icmp ult i64 %i.lh, 24
  %diff.check1009 = icmp ult i64 %i.lf, 32
  %or.cond1139 = select i1 %min.iters.check1011, i1 true, i1 %diff.check1009
  %n.vec1014 = and i64 %i.lj, 4611686018427387900 ; 4 uses
  %i.lk = mul i64 %n.vec1014, -8
  %i.ll = getelementptr i8, ptr %i.kw, i64 %i.lk
  %27 = mul i64 %n.vec1014, -8
  %i.lm = getelementptr i8, ptr %i.ku, i64 %27
  %cmp.n1028 = icmp eq i64 %i.lj, %n.vec1014
  br label %.lr.ph.i148

end_hunk_1
begin_hunk_2_@main:bb.a
  br i1 %or.cond1139, label %.lr.ph.i.i150.preheader1166, label %vector.body1015

vector.body1015:                                  ; preds = %.lr.ph.i.i150.preheader, %vector.body1015
  %index1016 = phi i64 [ %index.next1026, %vector.body1015 ], [ 0, %.lr.ph.i.i150.preheader ] ; 3 uses
  %offset.idx1017 = mul i64 %index1016, -8
  %next.gep1018 = getelementptr i8, ptr %i.kw, i64 %offset.idx1017 ; 2 uses
  %offset.idx1019 = mul i64 %index1016, -8
  %next.gep1020 = getelementptr i8, ptr %i.ku, i64 %offset.idx1019 ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %next.gep1020, i64 -16
  %i.lp = getelementptr inbounds i8, ptr %next.gep1020, i64 -32
  %wide.load1021 = load <2 x double>, ptr %i.lo, align 8, !tbaa !32
end_hunk_2
begin_hunk_3_@main:bb.a
  %min.iters.check1034 = icmp ult i64 %i.pu, 24
  %diff.check1032 = icmp ult i64 %i.ps, 32
  %or.cond1140 = select i1 %min.iters.check1034, i1 true, i1 %diff.check1032
  %n.vec1037 = and i64 %i.pw, 4611686018427387900 ; 4 uses
  %i.px = shl i64 %n.vec1037, 3
  %i.py = getelementptr i8, ptr %i.pl, i64 %i.px
  %28 = shl i64 %n.vec1037, 3
  %i.pz = getelementptr i8, ptr %i.pj, i64 %28
  %cmp.n1048 = icmp eq i64 %i.pw, %n.vec1037
  br label %.lr.ph.i188

end_hunk_3
begin_hunk_4_@main:bb.a
  br i1 %or.cond1140, label %.lr.ph.i.i190.preheader1162, label %vector.body1038

vector.body1038:                                  ; preds = %.lr.ph.i.i190.preheader, %vector.body1038
  %index1039 = phi i64 [ %index.next1046, %vector.body1038 ], [ 0, %.lr.ph.i.i190.preheader ] ; 3 uses
  %offset.idx1040 = shl i64 %index1039, 3
  %next.gep1041 = getelementptr i8, ptr %i.pl, i64 %offset.idx1040 ; 2 uses
  %offset.idx1042 = shl i64 %index1039, 3
  %next.gep1043 = getelementptr i8, ptr %i.pj, i64 %offset.idx1042 ; 2 uses
  %i.qb = getelementptr i8, ptr %next.gep1043, i64 16
  %wide.load1044 = load <2 x double>, ptr %next.gep1043, align 8, !tbaa !32
  %wide.load1045 = load <2 x double>, ptr %i.qb, align 8, !tbaa !32
end_hunk_4
begin_hunk_5_@main:bb.a
  %min.iters.check1054 = icmp ult i64 %i.tj, 24
  %diff.check1052 = icmp ult i64 %i.th, 32
  %or.cond1141 = select i1 %min.iters.check1054, i1 true, i1 %diff.check1052
  %n.vec1057 = and i64 %i.tl, 4611686018427387900 ; 4 uses
  %i.tm = mul i64 %n.vec1057, -8
  %i.tn = getelementptr i8, ptr %i.sy, i64 %i.tm
  %29 = mul i64 %n.vec1057, -8
  %i.to = getelementptr i8, ptr %i.sw, i64 %29
  %cmp.n1072 = icmp eq i64 %i.tl, %n.vec1057
  br label %.lr.ph.i244

end_hunk_5
begin_hunk_6_@main:bb.a
  br i1 %or.cond1141, label %.lr.ph.i.i246.preheader1158, label %vector.body1058

vector.body1058:                                  ; preds = %.lr.ph.i.i246.preheader, %vector.body1058
  %index1059 = phi i64 [ %index.next1070, %vector.body1058 ], [ 0, %.lr.ph.i.i246.preheader ] ; 3 uses
  %offset.idx1060 = mul i64 %index1059, -8
  %next.gep1061 = getelementptr i8, ptr %i.sy, i64 %offset.idx1060 ; 2 uses
  %offset.idx1062 = mul i64 %index1059, -8
  %next.gep1063 = getelementptr i8, ptr %i.sw, i64 %offset.idx1062 ; 2 uses
  %i.tp = getelementptr inbounds i8, ptr %next.gep1063, i64 -16
  %i.tq = getelementptr inbounds i8, ptr %next.gep1063, i64 -32
  %wide.load1064 = load <2 x double>, ptr %i.tp, align 8, !tbaa !32
end_hunk_6
begin_hunk_7_@main:bb.a
  %min.iters.check1078 = icmp ult i64 %i.wn, 24
  %diff.check1076 = icmp ult i64 %i.wl, 32
  %or.cond1142 = select i1 %min.iters.check1078, i1 true, i1 %diff.check1076
  %n.vec1081 = and i64 %i.wp, 4611686018427387900 ; 4 uses
  %i.wq = shl i64 %n.vec1081, 3
  %i.wr = getelementptr i8, ptr %i.wc, i64 %i.wq
  %30 = shl i64 %n.vec1081, 3
  %i.ws = getelementptr i8, ptr %i.wa, i64 %30
  %cmp.n1092 = icmp eq i64 %i.wp, %n.vec1081
  br label %bb.aj

end_hunk_7
begin_hunk_8_@main:bb.a
  br i1 %or.cond1142, label %.lr.ph.i.i288.preheader1153, label %vector.body1082

vector.body1082:                                  ; preds = %.lr.ph.i.i288.preheader, %vector.body1082
  %index1083 = phi i64 [ %index.next1090, %vector.body1082 ], [ 0, %.lr.ph.i.i288.preheader ] ; 3 uses
  %offset.idx1084 = shl i64 %index1083, 3
  %next.gep1085 = getelementptr i8, ptr %i.wc, i64 %offset.idx1084 ; 2 uses
  %offset.idx1086 = shl i64 %index1083, 3
  %next.gep1087 = getelementptr i8, ptr %i.wa, i64 %offset.idx1086 ; 2 uses
  %i.wt = getelementptr i8, ptr %next.gep1087, i64 16
  %wide.load1088 = load <2 x double>, ptr %next.gep1087, align 8, !tbaa !32
  %wide.load1089 = load <2 x double>, ptr %i.wt, align 8, !tbaa !32
end_hunk_8
begin_hunk_9_@main:bb.a
  %min.iters.check1098 = icmp ult i64 %i.zi, 24
  %diff.check1096 = icmp ult i64 %i.zg, 32
  %or.cond1143 = select i1 %min.iters.check1098, i1 true, i1 %diff.check1096
  %n.vec1101 = and i64 %i.zk, 4611686018427387900 ; 4 uses
  %i.zl = mul i64 %n.vec1101, -8
  %i.zm = getelementptr i8, ptr %i.yx, i64 %i.zl
  %31 = mul i64 %n.vec1101, -8
  %i.zn = getelementptr i8, ptr %i.yv, i64 %31
  %cmp.n1116 = icmp eq i64 %i.zk, %n.vec1101
  br label %.lr.ph.i328

end_hunk_9
begin_hunk_10_@main:bb.a
  br i1 %or.cond1143, label %.lr.ph.i.i331.preheader1149, label %vector.body1102

vector.body1102:                                  ; preds = %.lr.ph.i.i331.preheader, %vector.body1102
  %index1103 = phi i64 [ %index.next1114, %vector.body1102 ], [ 0, %.lr.ph.i.i331.preheader ] ; 3 uses
  %offset.idx1104 = mul i64 %index1103, -8
  %next.gep1105 = getelementptr i8, ptr %i.yx, i64 %offset.idx1104 ; 2 uses
  %offset.idx1106 = mul i64 %index1103, -8
  %next.gep1107 = getelementptr i8, ptr %i.yv, i64 %offset.idx1106 ; 2 uses
  %i.zo = getelementptr inbounds i8, ptr %next.gep1107, i64 -16
  %i.zp = getelementptr inbounds i8, ptr %next.gep1107, i64 -32
  %wide.load1108 = load <2 x double>, ptr %i.zo, align 8, !tbaa !32
end_hunk_10
begin_hunk_11_@main:bb.a
  %min.iters.check1122 = icmp ult i64 %i.acm, 24
  %diff.check1120 = icmp ult i64 %i.ack, 32
  %or.cond1144 = select i1 %min.iters.check1122, i1 true, i1 %diff.check1120
  %n.vec1125 = and i64 %i.aco, 4611686018427387900 ; 4 uses
  %i.acp = shl i64 %n.vec1125, 3
  %i.acq = getelementptr i8, ptr %i.acb, i64 %i.acp
  %32 = shl i64 %n.vec1125, 3
  %i.acr = getelementptr i8, ptr %i.abz, i64 %32
  %cmp.n1136 = icmp eq i64 %i.aco, %n.vec1125
  br label %bb.as

end_hunk_11
begin_hunk_12_@main:bb.a
  br i1 %or.cond1144, label %.lr.ph.i.i374.preheader1145, label %vector.body1126

vector.body1126:                                  ; preds = %.lr.ph.i.i374.preheader, %vector.body1126
  %index1127 = phi i64 [ %index.next1134, %vector.body1126 ], [ 0, %.lr.ph.i.i374.preheader ] ; 3 uses
  %offset.idx1128 = shl i64 %index1127, 3
  %next.gep1129 = getelementptr i8, ptr %i.acb, i64 %offset.idx1128 ; 2 uses
  %offset.idx1130 = shl i64 %index1127, 3
  %next.gep1131 = getelementptr i8, ptr %i.abz, i64 %offset.idx1130 ; 2 uses
  %i.acs = getelementptr i8, ptr %next.gep1131, i64 16
  %wide.load1132 = load <2 x double>, ptr %next.gep1131, align 8, !tbaa !32
  %wide.load1133 = load <2 x double>, ptr %i.acs, align 8, !tbaa !32
end_hunk_12
begin_hunk_13_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check57 = icmp ult i64 %i.k, 24
  %diff.check55 = icmp ult i64 %i.i, 32
  %or.cond = or i1 %min.iters.check57, %diff.check55
  %n.vec60 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec60, 3
  %i.o = getelementptr i8, ptr %2, i64 %i.n
  %6 = shl i64 %n.vec60, 3
  %i.p = getelementptr i8, ptr %0, i64 %6
  %cmp.n71 = icmp eq i64 %i.m, %n.vec60
  br label %.lr.ph.i.preheader.us

end_hunk_13
begin_hunk_14_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body61

vector.body61:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body61
  %index62 = phi i64 [ %index.next69, %vector.body61 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx63 = shl i64 %index62, 3
  %next.gep64 = getelementptr i8, ptr %2, i64 %offset.idx63 ; 2 uses
  %offset.idx65 = shl i64 %index62, 3
  %next.gep66 = getelementptr i8, ptr %0, i64 %offset.idx65 ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep66, i64 16
  %wide.load67 = load <2 x double>, ptr %next.gep66, align 8, !tbaa !32
  %wide.load68 = load <2 x double>, ptr %i.aa, align 8, !tbaa !32
end_hunk_14
begin_hunk_15_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.aq, 24
  %diff.check = icmp ult i64 %i.ao, 32
  %or.cond74 = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.as, 4611686018427387900     ; 4 uses
  %i.at = shl i64 %n.vec, 3
  %i.au = getelementptr i8, ptr %2, i64 %i.at
  %7 = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %0, i64 %7
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_15
begin_hunk_16_@_Z19test_insertion_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond74, label %.lr.ph.i.preheader77, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx50 = shl i64 %index, 3
  %next.gep51 = getelementptr i8, ptr %0, i64 %offset.idx50 ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load = load <2 x double>, ptr %next.gep51, align 8, !tbaa !32
  %wide.load52 = load <2 x double>, ptr %i.bk, align 8, !tbaa !32
end_hunk_16
begin_hunk_17_@_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  %min.iters.check64 = icmp ult i64 %i.k, 24
  %diff.check62 = icmp ult i64 %i.i, 32
  %or.cond = select i1 %min.iters.check64, i1 true, i1 %diff.check62
  %n.vec67 = and i64 %i.m, 4611686018427387900    ; 4 uses
  %i.n = shl i64 %n.vec67, 3
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %6 = shl i64 %n.vec67, 3
  %i.p = getelementptr i8, ptr %2, i64 %6
  %cmp.n78 = icmp eq i64 %i.m, %n.vec67
  br label %.lr.ph.i.preheader.us

end_hunk_17
begin_hunk_18_@_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.us.preheader, label %vector.body68

vector.body68:                                    ; preds = %.lr.ph.i.preheader.us, %vector.body68
  %index69 = phi i64 [ %index.next76, %vector.body68 ], [ 0, %.lr.ph.i.preheader.us ] ; 3 uses
  %offset.idx70 = shl i64 %index69, 3
  %next.gep71 = getelementptr i8, ptr %0, i64 %offset.idx70 ; 2 uses
  %offset.idx72 = shl i64 %index69, 3
  %next.gep73 = getelementptr i8, ptr %2, i64 %offset.idx72 ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep71, i64 16
  %wide.load74 = load <2 x double>, ptr %next.gep71, align 8, !tbaa !32
  %wide.load75 = load <2 x double>, ptr %i.ab, align 8, !tbaa !32
end_hunk_18
begin_hunk_19_@_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.as, 24
  %diff.check = icmp ult i64 %i.aq, 32
  %or.cond81 = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.au, 4611686018427387900     ; 4 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %7 = shl i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %2, i64 %7
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_19
begin_hunk_20_@_Z19test_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  br i1 %or.cond81, label %.lr.ph.i.preheader84, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx57 = shl i64 %index, 3
  %next.gep58 = getelementptr i8, ptr %2, i64 %offset.idx57 ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load59 = load <2 x double>, ptr %i.bn, align 8, !tbaa !32
end_hunk_20
begin_hunk_21_@_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_21
begin_hunk_22_@_Z14test_quicksortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x double>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x double>, ptr %i.w, align 8, !tbaa !32
end_hunk_22
begin_hunk_23_@_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_23
begin_hunk_24_@_Z14test_quicksortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx21 = shl i64 %index, 3
  %next.gep22 = getelementptr i8, ptr %2, i64 %offset.idx21 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x double>, ptr %i.x, align 8, !tbaa !32
end_hunk_24
begin_hunk_25_@_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %0, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_25
begin_hunk_26_@_Z14test_heap_sortIPddEvT_S1_S1_S1_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader19, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %offset.idx ; 2 uses
  %offset.idx15 = shl i64 %index, 3
  %next.gep16 = getelementptr i8, ptr %0, i64 %offset.idx15 ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep16, i64 16
  %wide.load = load <2 x double>, ptr %next.gep16, align 8, !tbaa !32
  %wide.load17 = load <2 x double>, ptr %i.w, align 8, !tbaa !32
end_hunk_26
begin_hunk_27_@_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  %min.iters.check = icmp ult i64 %i.i, 24
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.l = shl i64 %n.vec, 3
  %i.m = getelementptr i8, ptr %0, i64 %i.l
  %6 = shl i64 %n.vec, 3
  %i.n = getelementptr i8, ptr %2, i64 %6
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br label %.lr.ph.i.preheader

end_hunk_27
begin_hunk_28_@_Z14test_heap_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdEvT_S7_S7_S7_T0_PKc:bb.a
  br i1 %or.cond, label %.lr.ph.i.preheader25, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %offset.idx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %offset.idx ; 2 uses
  %offset.idx21 = shl i64 %index, 3
  %next.gep22 = getelementptr i8, ptr %2, i64 %offset.idx21 ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x double>, ptr %next.gep, align 8, !tbaa !32
  %wide.load23 = load <2 x double>, ptr %i.x, align 8, !tbaa !32
end_hunk_28
