Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/membed?download=true
inline.NumInlined: 899
inline.NumDeleted: 473
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a
  br label %bb.ha

bb.ha:                                            ; preds = %bb.hc, %bb.gz
  %.298.i = phi i32 [ 0, %bb.gz ], [ %i.vi, %bb.hc ] ; 8 uses
  %.026.i.i.i = phi i32 [ -1, %bb.gz ], [ %.127.i.i.i, %bb.hc ]
  %.0.i.i.i = phi i32 [ %i.ux, %bb.gz ], [ %.1.i.i.i, %bb.hc ]
  %i.uz = sext i32 %.298.i to i64
  %i.va = getelementptr inbounds nuw [24 x i8], ptr %i.uy, i64 %i.uz ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !80 ; 2 uses
  %i.vd = icmp slt i32 %i.ua, %i.vc
  br i1 %i.vd, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !81
  %.not.i.i.i = icmp slt i32 %i.ua, %i.vf
  br i1 %.not.i.i.i, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  %.127.i.i.i = phi i32 [ %.026.i.i.i, %bb.ha ], [ %.298.i, %bb.hb ] ; 2 uses
  %.1.i.i.i = phi i32 [ %.298.i, %bb.ha ], [ %.0.i.i.i, %bb.hb ] ; 2 uses
  %i.vg = add nsw i32 %.127.i.i.i, 1
  %i.vh = add i32 %i.vg, %.1.i.i.i
  %i.vi = ashr i32 %i.vh, 1
  br label %bb.ha, !llvm.loop !4

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i: ; preds = %bb.hb
  %i.vj = sub nsw i32 %i.ua, %i.vc
  %i.vk = load i32, ptr %i.va, align 4, !tbaa !357
  %i.vl = sdiv i32 %i.vj, %i.vk                   ; 4 uses
  %i.vm = icmp sgt i32 %.298.i, 0
  br i1 %i.vm, label %iter.check1144, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i

iter.check1144:                                   ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i
  %wide.trip.count.i.i = zext nneg i32 %.298.i to i64 ; 6 uses
  %min.iters.check1113 = icmp ult i32 %.298.i, 8
  br i1 %min.iters.check1113, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check1114

vector.main.loop.iter.check1114:                  ; preds = %iter.check1144
  %min.iters.check1115 = icmp ult i32 %.298.i, 32
  br i1 %min.iters.check1115, label %vec.epilog.ph1148, label %vector.ph1116

vector.ph1116:                                    ; preds = %vector.main.loop.iter.check1114
  %i.vn = and i64 %wide.trip.count.i.i, 24
  %n.vec1117 = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  %i.vo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.vl, i64 0
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.ph1116, %vector.body1118
  %index1119 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1135, %vector.body1118 ]
  %vec.ind1120 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1116 ], [ %vec.ind.next1136, %vector.body1118 ] ; 5 uses
  %vec.phi1121 = phi <8 x i32> [ %i.vo, %vector.ph1116 ], [ %i.vp, %vector.body1118 ]
  %vec.phi1122 = phi <8 x i32> [ zeroinitializer, %vector.ph1116 ], [ %i.vq, %vector.body1118 ]
  %vec.phi1123 = phi <8 x i32> [ zeroinitializer, %vector.ph1116 ], [ %i.vr, %vector.body1118 ]
  %vec.phi1124 = phi <8 x i32> [ zeroinitializer, %vector.ph1116 ], [ %i.vs, %vector.body1118 ]
  %step.add = add nuw <8 x i64> %vec.ind1120, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind1120, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind1120, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [56 x i8], ptr %i.us, <8 x i64> %vec.ind1120
  %wide.gep1125 = getelementptr inbounds nuw [56 x i8], ptr %i.us, <8 x i64> %step.add
  %wide.gep1126 = getelementptr inbounds nuw [56 x i8], ptr %i.us, <8 x i64> %step.add.2
  %wide.gep1127 = getelementptr inbounds nuw [56 x i8], ptr %i.us, <8 x i64> %step.add.3
  %wide.gep1128 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep1129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1125, i64 4
  %wide.gep1130 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1126, i64 4
  %wide.gep1131 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1127, i64 4
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1128, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %wide.masked.gather1132 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1129, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %wide.masked.gather1133 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1130, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %wide.masked.gather1134 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1131, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %i.vp = add <8 x i32> %wide.masked.gather, %vec.phi1121 ; 2 uses
  %i.vq = add <8 x i32> %wide.masked.gather1132, %vec.phi1122 ; 2 uses
  %i.vr = add <8 x i32> %wide.masked.gather1133, %vec.phi1123 ; 2 uses
  %i.vs = add <8 x i32> %wide.masked.gather1134, %vec.phi1124 ; 2 uses
  %index.next1135 = add nuw i64 %index1119, 32    ; 2 uses
  %vec.ind.next1136 = add nuw <8 x i64> %vec.ind1120, splat (i64 32)
  %i.vt = icmp eq i64 %index.next1135, %n.vec1117
  br i1 %i.vt, label %middle.block1137, label %vector.body1118, !llvm.loop !110

middle.block1137:                                 ; preds = %vector.body1118
  %bin.rdx1138 = add <8 x i32> %i.vq, %i.vp
  %bin.rdx1139 = add <8 x i32> %i.vr, %bin.rdx1138
  %bin.rdx1140 = add <8 x i32> %i.vs, %bin.rdx1139
  %i.vu = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1140) ; 3 uses
  %cmp.n1141 = icmp eq i64 %n.vec1117, %wide.trip.count.i.i
  br i1 %cmp.n1141, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i, label %vec.epilog.iter.check1146

vec.epilog.iter.check1146:                        ; preds = %middle.block1137
  %min.epilog.iters.check1147 = icmp eq i64 %i.vn, 0
  br i1 %min.epilog.iters.check1147, label %.lr.ph.i.i.preheader, label %vec.epilog.ph1148, !prof !359

vec.epilog.ph1148:                                ; preds = %vector.main.loop.iter.check1114, %vec.epilog.iter.check1146
  %vec.epilog.resume.val1142 = phi i64 [ %n.vec1117, %vec.epilog.iter.check1146 ], [ 0, %vector.main.loop.iter.check1114 ] ; 2 uses
  %bc.merge.rdx1143 = phi i32 [ %i.vu, %vec.epilog.iter.check1146 ], [ %i.vl, %vector.main.loop.iter.check1114 ]
  %n.vec1149 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %i.vv = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1143, i64 0
  %broadcast.splatinsert1150 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val1142, i64 0
  %broadcast.splat1151 = shufflevector <8 x i64> %broadcast.splatinsert1150, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat1151, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body1152

vec.epilog.vector.body1152:                       ; preds = %vec.epilog.vector.body1152, %vec.epilog.ph1148
  %index1153 = phi i64 [ %vec.epilog.resume.val1142, %vec.epilog.ph1148 ], [ %index.next1159, %vec.epilog.vector.body1152 ]
  %vec.ind1154 = phi <8 x i64> [ %induction, %vec.epilog.ph1148 ], [ %vec.ind.next1160, %vec.epilog.vector.body1152 ] ; 2 uses
  %vec.phi1155 = phi <8 x i32> [ %i.vv, %vec.epilog.ph1148 ], [ %i.vw, %vec.epilog.vector.body1152 ]
  %wide.gep1156 = getelementptr inbounds nuw [56 x i8], ptr %i.us, <8 x i64> %vec.ind1154
  %wide.gep1157 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1156, i64 4
  %wide.masked.gather1158 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1157, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %i.vw = add <8 x i32> %wide.masked.gather1158, %vec.phi1155 ; 2 uses
  %index.next1159 = add nuw i64 %index1153, 8     ; 2 uses
  %vec.ind.next1160 = add nuw nsw <8 x i64> %vec.ind1154, splat (i64 8)
  %i.vx = icmp eq i64 %index.next1159, %n.vec1149
  br i1 %i.vx, label %vec.epilog.middle.block1161, label %vec.epilog.vector.body1152, !llvm.loop !111

vec.epilog.middle.block1161:                      ; preds = %vec.epilog.vector.body1152
  %i.vy = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.vw) ; 2 uses
  %cmp.n1162 = icmp eq i64 %n.vec1149, %wide.trip.count.i.i
  br i1 %cmp.n1162, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check1144, %vec.epilog.iter.check1146, %vec.epilog.middle.block1161
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check1144 ], [ %n.vec1117, %vec.epilog.iter.check1146 ], [ %n.vec1149, %vec.epilog.middle.block1161 ]
  %.01315.i.i.ph = phi i32 [ %i.vl, %iter.check1144 ], [ %i.vu, %vec.epilog.iter.check1146 ], [ %i.vy, %vec.epilog.middle.block1161 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01315.i.i = phi i32 [ %i.wc, %.lr.ph.i.i ], [ %.01315.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.vz = getelementptr inbounds nuw [56 x i8], ptr %i.us, i64 %indvars.iv.i.i
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !358
  %i.wc = add nsw i32 %i.wb, %.01315.i.i          ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i, label %.lr.ph.i.i, !llvm.loop !112

_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i:       ; preds = %.lr.ph.i.i, %middle.block1137, %vec.epilog.middle.block1161, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i
  %.013.lcssa.i.i = phi i32 [ %i.vl, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i ], [ %i.vy, %vec.epilog.middle.block1161 ], [ %i.vu, %middle.block1137 ], [ %i.wc, %.lr.ph.i.i ] ; 4 uses
  %i.wd = icmp sgt i32 %.085104.i, 0
  br i1 %i.wd, label %iter.check, label %.critedge.i

iter.check:                                       ; preds = %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i
  %wide.trip.count.i282 = zext nneg i32 %.085104.i to i64 ; 6 uses
  %min.iters.check1078 = icmp ult i32 %.085104.i, 4
  br i1 %min.iters.check1078, label %.lr.ph.i283.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1079 = icmp ult i32 %.085104.i, 32
  br i1 %min.iters.check1079, label %vec.epilog.ph, label %vector.ph1080

vector.ph1080:                                    ; preds = %vector.main.loop.iter.check
  %i.we = and i64 %wide.trip.count.i282, 28
  %n.vec1081 = and i64 %wide.trip.count.i282, 2147483616 ; 4 uses
  %broadcast.splatinsert1082 = insertelement <8 x i32> poison, i32 %.013.lcssa.i.i, i64 0
  %broadcast.splat1083 = shufflevector <8 x i32> %broadcast.splatinsert1082, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.ph1080, %vector.body1084
  %index1085 = phi i64 [ 0, %vector.ph1080 ], [ %index.next1094, %vector.body1084 ] ; 2 uses
  %vec.phi1086 = phi <8 x i1> [ zeroinitializer, %vector.ph1080 ], [ %i.wn, %vector.body1084 ]
  %vec.phi1087 = phi <8 x i1> [ zeroinitializer, %vector.ph1080 ], [ %i.wo, %vector.body1084 ]
  %vec.phi1088 = phi <8 x i1> [ zeroinitializer, %vector.ph1080 ], [ %i.wp, %vector.body1084 ]
  %vec.phi1089 = phi <8 x i1> [ zeroinitializer, %vector.ph1080 ], [ %i.wq, %vector.body1084 ]
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %index1085 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 32
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wf, i64 64
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wf, i64 96
  %wide.load1090 = load <8 x i32>, ptr %i.wf, align 4, !tbaa !30
  %wide.load1091 = load <8 x i32>, ptr %i.wg, align 4, !tbaa !30
  %wide.load1092 = load <8 x i32>, ptr %i.wh, align 4, !tbaa !30
  %wide.load1093 = load <8 x i32>, ptr %i.wi, align 4, !tbaa !30
  %i.wj = icmp eq <8 x i32> %broadcast.splat1083, %wide.load1090
  %i.wk = icmp eq <8 x i32> %broadcast.splat1083, %wide.load1091
  %i.wl = icmp eq <8 x i32> %broadcast.splat1083, %wide.load1092
  %i.wm = icmp eq <8 x i32> %broadcast.splat1083, %wide.load1093
  %i.wn = or <8 x i1> %vec.phi1086, %i.wj         ; 2 uses
  %i.wo = or <8 x i1> %vec.phi1087, %i.wk         ; 2 uses
  %i.wp = or <8 x i1> %vec.phi1088, %i.wl         ; 2 uses
  %i.wq = or <8 x i1> %vec.phi1089, %i.wm         ; 2 uses
  %index.next1094 = add nuw i64 %index1085, 32    ; 2 uses
  %i.wr = icmp eq i64 %index.next1094, %n.vec1081
  br i1 %i.wr, label %middle.block1095, label %vector.body1084, !llvm.loop !113

middle.block1095:                                 ; preds = %vector.body1084
  %bin.rdx = or <8 x i1> %i.wo, %i.wn
  %bin.rdx1096 = or <8 x i1> %i.wp, %bin.rdx
  %bin.rdx1097 = or <8 x i1> %i.wq, %bin.rdx1096
  %bin.rdx1097.fr = freeze <8 x i1> %bin.rdx1097
  %i.ws = bitcast <8 x i1> %bin.rdx1097.fr to i8
  %.not1490 = icmp eq i8 %i.ws, 0                 ; 3 uses
  %cmp.n1098 = icmp eq i64 %n.vec1081, %wide.trip.count.i282
  br i1 %cmp.n1098, label %._crit_edge.i287, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1095
  %min.epilog.iters.check = icmp eq i64 %i.we, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i283.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1081, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx1099 = phi i1 [ %.not1490, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec1100 = and i64 %wide.trip.count.i282, 2147483644 ; 3 uses
  %52 = xor i1 %bc.merge.rdx1099, true
  %broadcast.splatinsert1101 = insertelement <4 x i1> poison, i1 %52, i64 0
  %broadcast.splat1102 = shufflevector <4 x i1> %broadcast.splatinsert1101, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1103 = insertelement <4 x i32> poison, i32 %.013.lcssa.i.i, i64 0
  %broadcast.splat1104 = shufflevector <4 x i32> %broadcast.splatinsert1103, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1105 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1108, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1106 = phi <4 x i1> [ %broadcast.splat1102, %vec.epilog.ph ], [ %.fr1491, %vec.epilog.vector.body ]
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %index1105
  %wide.load1107 = load <4 x i32>, ptr %i.wt, align 4, !tbaa !30
  %i.wu = icmp eq <4 x i32> %broadcast.splat1104, %wide.load1107
  %i.wv = or <4 x i1> %vec.phi1106, %i.wu
  %.fr1491 = freeze <4 x i1> %i.wv                ; 2 uses
  %index.next1108 = add nuw i64 %index1105, 4     ; 2 uses
  %i.ww = icmp eq i64 %index.next1108, %n.vec1100
  br i1 %i.ww, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !114

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.wx = bitcast <4 x i1> %.fr1491 to i4
  %.not1492 = icmp eq i4 %i.wx, 0                 ; 2 uses
  %cmp.n1109 = icmp eq i64 %n.vec1100, %wide.trip.count.i282
  br i1 %cmp.n1109, label %._crit_edge.i287, label %.lr.ph.i283.preheader

.lr.ph.i283.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i284.ph = phi i64 [ 0, %iter.check ], [ %n.vec1081, %vec.epilog.iter.check ], [ %n.vec1100, %vec.epilog.middle.block ]
  %.077101.i.ph = phi i1 [ true, %iter.check ], [ %.not1490, %vec.epilog.iter.check ], [ %.not1492, %vec.epilog.middle.block ]
  br label %.lr.ph.i283

.lr.ph.i283:                                      ; preds = %.lr.ph.i283.preheader, %.lr.ph.i283
  %indvars.iv.i284 = phi i64 [ %indvars.iv.next.i285, %.lr.ph.i283 ], [ %indvars.iv.i284.ph, %.lr.ph.i283.preheader ] ; 2 uses
  %.077101.i = phi i1 [ %spec.select.i, %.lr.ph.i283 ], [ %.077101.i.ph, %.lr.ph.i283.preheader ]
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv.i284
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !30
  %i.xa = icmp ne i32 %.013.lcssa.i.i, %i.wz
  %spec.select.i = select i1 %i.xa, i1 %.077101.i, i1 false ; 2 uses
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i284, 1 ; 2 uses
  %exitcond.not.i286 = icmp eq i64 %indvars.iv.next.i285, %wide.trip.count.i282
  br i1 %exitcond.not.i286, label %._crit_edge.i287, label %.lr.ph.i283, !llvm.loop !115

._crit_edge.i287:                                 ; preds = %.lr.ph.i283, %vec.epilog.middle.block, %middle.block1095
  %spec.select.i.lcssa = phi i1 [ %.not1492, %vec.epilog.middle.block ], [ %.not1490, %middle.block1095 ], [ %spec.select.i, %.lr.ph.i283 ]
  br i1 %spec.select.i.lcssa, label %.critedge.i, label %bb.hd

.critedge.i:                                      ; preds = %._crit_edge.i287, %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i
  %i.xb = sext i32 %.085104.i to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.to, i64 %i.xb
  store i32 %.013.lcssa.i.i, ptr %i.xc, align 4, !tbaa !30
  %i.xd = add nsw i32 %.085104.i, 1
  %.pre.pre.i = load i32, ptr %i.jx, align 8, !tbaa !64
  br label %bb.hd

bb.hd:                                            ; preds = %.critedge.i, %._crit_edge.i287
  %.pre.i281 = phi i32 [ %.pre.pre.i, %.critedge.i ], [ %.pre122.i, %._crit_edge.i287 ] ; 2 uses
  %.186.i = phi i32 [ %i.xd, %.critedge.i ], [ %.085104.i, %._crit_edge.i287 ]
  %i.xe = fcmp olt float %i.uo, %.080106.i
  %spec.select93.i = select i1 %i.xe, float %i.uo, float %.080106.i
  %i.xf = fcmp ogt float %i.uo, %.078107.i
  %.179.i = select i1 %i.xf, float %i.uo, float %.078107.i
  %i.xg = add nsw i32 %.083105.i, 1
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.gy, %bb.gx, %bb.gw, %bb.gv, %bb.gu
  %.pre123.i = phi i32 [ %.pre.i281, %bb.hd ], [ %.pre122.i, %bb.gu ], [ %.pre122.i, %bb.gy ], [ %.pre122.i, %bb.gx ], [ %.pre122.i, %bb.gw ], [ %.pre122.i, %bb.gv ]
  %i.xh = phi i32 [ %.pre.i281, %bb.hd ], [ %i.ty, %bb.gu ], [ %i.ty, %bb.gy ], [ %i.ty, %bb.gx ], [ %i.ty, %bb.gw ], [ %i.ty, %bb.gv ] ; 2 uses
  %.1.i279 = phi i32 [ %.298.i, %bb.hd ], [ %.097103.i, %bb.gu ], [ %.097103.i, %bb.gy ], [ %.097103.i, %bb.gx ], [ %.097103.i, %bb.gw ], [ %.097103.i, %bb.gv ] ; 2 uses
  %.287.i = phi i32 [ %.186.i, %bb.hd ], [ %.085104.i, %bb.gu ], [ %.085104.i, %bb.gy ], [ %.085104.i, %bb.gx ], [ %.085104.i, %bb.gw ], [ %.085104.i, %bb.gv ] ; 2 uses
  %.184.i = phi i32 [ %i.xg, %bb.hd ], [ %.083105.i, %bb.gu ], [ %.083105.i, %bb.gy ], [ %.083105.i, %bb.gx ], [ %.083105.i, %bb.gw ], [ %.083105.i, %bb.gv ] ; 2 uses
  %.282.i = phi float [ %spec.select93.i, %bb.hd ], [ %.080106.i, %bb.gu ], [ %.080106.i, %bb.gy ], [ %.080106.i, %bb.gx ], [ %.080106.i, %bb.gw ], [ %.080106.i, %bb.gv ] ; 2 uses
  %.2.i = phi float [ %.179.i, %bb.hd ], [ %.078107.i, %bb.gu ], [ %.078107.i, %bb.gy ], [ %.078107.i, %bb.gx ], [ %.078107.i, %bb.gw ], [ %.078107.i, %bb.gv ] ; 2 uses
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %i.xi = sext i32 %i.xh to i64
  %i.xj = icmp slt i64 %indvars.iv.next120.i, %i.xi
  br i1 %i.xj, label %bb.gu, label %._crit_edge111.loopexit.i, !llvm.loop !116

._crit_edge111.loopexit.i:                        ; preds = %bb.he
  %i.xk = sext i32 %.1.i279 to i64
  br label %._crit_edge111.i

._crit_edge111.i:                                 ; preds = %._crit_edge111.loopexit.i, %.noexc288
  %.097.lcssa.i = phi i64 [ 0, %.noexc288 ], [ %i.xk, %._crit_edge111.loopexit.i ]
  %.085.lcssa.i = phi i32 [ 0, %.noexc288 ], [ %.287.i, %._crit_edge111.loopexit.i ] ; 2 uses
  %.083.lcssa.i = phi i32 [ 0, %.noexc288 ], [ %.184.i, %._crit_edge111.loopexit.i ]
  %.080.lcssa.i = phi float [ %i.tp, %.noexc288 ], [ %.282.i, %._crit_edge111.loopexit.i ] ; 5 uses
  %.078.lcssa.i = phi float [ %i.tq, %.noexc288 ], [ %.2.i, %._crit_edge111.loopexit.i ] ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.if, i64 32 ; 8 uses
  store i32 %.085.lcssa.i, ptr %i.xl, align 8, !tbaa !361
  %i.xm = sext i32 %.085.lcssa.i to i64
  %i.xn = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.1, i32 noundef 451, ptr noundef %i.to, i64 noundef range(i64 -2147483648, 2147483648) %i.xm, i64 noundef 4)
          to label %.noexc289 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc289:                                        ; preds = %._crit_edge111.i
  %i.xo = getelementptr inbounds nuw i8, ptr %i.if, i64 40 ; 4 uses
  store ptr %i.xn, ptr %i.xo, align 8, !tbaa !362
  %i.xp = fsub float %.078.lcssa.i, %.080.lcssa.i ; 2 uses
  %i.xq = fpext float %i.xp to double             ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %5, i64 84
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !20
  %i.xt = fpext float %i.xs to double
  %i.xu = fadd double %i.xt, -5.000000e-01
  %i.xv = fcmp olt double %i.xu, %i.xq
  br i1 %i.xv, label %bb.hf, label %bb.hi

bb.hf:                                            ; preds = %.noexc289
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
          to label %.noexc290 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc290:                                        ; preds = %bb.hf
  %i.xw = fpext float %.078.lcssa.i to double
  %i.xx = fpext float %.080.lcssa.i to double
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 456, ptr noundef nonnull @.str.71, double noundef %i.xw, double noundef %i.xx) #28
          to label %bb.hg unwind label %bb.hh

bb.hg:                                            ; preds = %.noexc290
  unreachable

bb.hh:                                            ; preds = %.noexc290
  %i.xy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.body273

bb.hi:                                            ; preds = %.noexc289
  %i.xz = getelementptr inbounds nuw i8, ptr %i.if, i64 52 ; 3 uses
  store float %.080.lcssa.i, ptr %i.xz, align 4, !tbaa !363
  %i.ya = getelementptr inbounds nuw i8, ptr %i.if, i64 56 ; 2 uses
  store float %.078.lcssa.i, ptr %i.ya, align 8, !tbaa !364
  %i.yb = fmul float %i.xp, 5.000000e-01
  %i.yc = fadd float %.080.lcssa.i, %i.yb
  %i.yd = getelementptr inbounds nuw i8, ptr %i.if, i64 60 ; 5 uses
  store float %i.yc, ptr %i.yd, align 4, !tbaa !365
  %i.ye = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 7 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 12 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !75
  %i.yh = getelementptr inbounds nuw [56 x i8], ptr %i.yg, i64 %.097.lcssa.i
  %i.yi = load i32, ptr %i.yh, align 8, !tbaa !84
  %i.yj = sext i32 %i.yi to i64
  %i.yk = load ptr, ptr %i.ye, align 8, !tbaa !351
  %i.yl = getelementptr inbounds nuw [2408 x i8], ptr %i.yk, i64 %i.yj
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !366
  %i.yo = sdiv i32 %.083.lcssa.i, %i.yn
  %i.yp = load <2 x float>, ptr %i.rw, align 4, !tbaa !20
  %i.yq = load <2 x float>, ptr %i.l, align 8, !tbaa !20
  %i.yr = fsub <2 x float> %i.yp, %i.yq           ; 2 uses
  %shift = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.yr, %shift
  %i.ys = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.yt = fpext float %i.ys to double
  %i.yu = fmul double %i.yt, 2.000000e+00
  %i.yv = sitofp i32 %i.yo to double
  %i.yw = fdiv double %i.yu, %i.yv
  %i.yx = fptrunc double %i.yw to float
  %i.yy = getelementptr inbounds nuw i8, ptr %i.if, i64 48 ; 3 uses
  store float %i.yx, ptr %i.yy, align 8, !tbaa !367
  %i.yz = load ptr, ptr %i.pp, align 8, !tbaa !348
  %i.za = fpext float %.080.lcssa.i to double
  %i.zb = call double @llvm.fmuladd.f64(double %i.xq, double 1.000000e-01, double %i.za)
  %i.zc = fptrunc double %i.zb to float
  %i.zd = fpext float %.078.lcssa.i to double
  %i.ze = call double @llvm.fmuladd.f64(double %i.xq, double -1.000000e-01, double %i.zd)
  %i.zf = fptrunc double %i.ze to float
  %i.zg = load float, ptr %i.l, align 8, !tbaa !20 ; 2 uses
  %i.zh = load float, ptr %i.rw, align 4, !tbaa !20 ; 2 uses
  %i.zi = fcmp olt float %i.zg, %i.zh
  br i1 %i.zi, label %.lr.ph.i293, label %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit.thread

.lr.ph.i293:                                      ; preds = %bb.hi
  %i.zj = load float, ptr %i.rv, align 4, !tbaa !20 ; 2 uses
  %i.zk = load float, ptr %i.rx, align 8, !tbaa !20 ; 2 uses
  %i.zl = fcmp olt float %i.zj, %i.zk
  br i1 %i.zl, label %.lr.ph.split.us.i, label %_ZL13est_prot_areaP9pos_ins_tPA3_fP7t_blockP5mem_t.exit.thread

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i293
  %i.zm = load ptr, ptr %i.ii, align 8, !tbaa !65
  %i.zn = load i32, ptr %i.k, align 8, !tbaa !64
  %i.zo = sext i32 %i.zn to i64
  br label %.preheader.lr.ph.us.i

.preheader.lr.ph.us.i:                            ; preds = %._crit_edge.us.i, %.lr.ph.split.us.i
  %.0484.us.i = phi float [ 0.000000e+00, %.lr.ph.split.us.i ], [ %i.aai, %._crit_edge.us.i ]
  %.0513.us.i = phi float [ %i.zg, %.lr.ph.split.us.i ], [ %i.zp, %._crit_edge.us.i ] ; 2 uses
  %i.zp = fadd float %.0513.us.i, 1.500000e-01    ; 3 uses
  br label %.preheader.us.i

bb.hj:                                            ; preds = %.preheader.us.i, %bb.hm
  %indvars.iv.i294 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i295, %bb.hm ] ; 2 uses
  %.047.us.i = phi float [ 0.000000e+00, %.preheader.us.i ], [ %.1.us.i, %bb.hm ] ; 3 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zm, i64 %indvars.iv.i294
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !30
  %i.zs = sext i32 %i.zr to i64
  %i.zt = getelementptr inbounds [12 x i8], ptr %i.yz, i64 %i.zs ; 3 uses
  %i.zu = load float, ptr %i.zt, align 4, !tbaa !20 ; 2 uses
  %i.zv = fcmp oge float %i.zu, %.0513.us.i
  %i.zw = fcmp olt float %i.zu, %i.zp
  %or.cond.us.i = and i1 %i.zv, %i.zw
  br i1 %or.cond.us.i, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !20 ; 2 uses
  %i.zz = fcmp oge float %i.zy, %.0501.us.i
  %i.aaa = fcmp olt float %i.zy, %i.aak
  %or.cond58.us.i = and i1 %i.zz, %i.aaa
  br i1 %or.cond58.us.i, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hk
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !20 ; 2 uses
  %i.aad = fcmp ogt float %i.aac, %i.zc
end_hunk_0
begin_hunk_1_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a

bb.iq:                                            ; preds = %bb.is, %bb.ip
  %.0279.i = phi i32 [ 0, %bb.ip ], [ %i.ami, %bb.is ] ; 8 uses
  %.026.i.i.i324 = phi i32 [ -1, %bb.ip ], [ %.127.i.i.i327, %bb.is ]
  %.0.i.i.i325 = phi i32 [ %i.alx, %bb.ip ], [ %.1.i.i.i328, %bb.is ]
  %i.alz = sext i32 %.0279.i to i64
  %i.ama = getelementptr inbounds nuw [24 x i8], ptr %i.aly, i64 %i.alz ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 4
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !80 ; 2 uses
  %i.amd = icmp slt i32 %i.alh, %i.amc
  br i1 %i.amd, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ama, i64 8
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !81
  %.not.i.i.i326 = icmp slt i32 %i.alh, %i.amf
  br i1 %.not.i.i.i326, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i329, label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.127.i.i.i327 = phi i32 [ %.026.i.i.i324, %bb.iq ], [ %.0279.i, %bb.ir ] ; 2 uses
  %.1.i.i.i328 = phi i32 [ %.0279.i, %bb.iq ], [ %.0.i.i.i325, %bb.ir ] ; 2 uses
  %i.amg = add nsw i32 %.127.i.i.i327, 1
  %i.amh = add i32 %i.amg, %.1.i.i.i328
  %i.ami = ashr i32 %i.amh, 1
  br label %bb.iq, !llvm.loop !4

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i329: ; preds = %bb.ir
  %i.amj = sub nsw i32 %i.alh, %i.amc
  %i.amk = load i32, ptr %i.ama, align 4, !tbaa !357
  %i.aml = sdiv i32 %i.amj, %i.amk                ; 4 uses
  %i.amm = icmp sgt i32 %.0279.i, 0
  br i1 %i.amm, label %iter.check1286, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i330

iter.check1286:                                   ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i329
  %wide.trip.count.i.i341 = zext nneg i32 %.0279.i to i64 ; 6 uses
  %min.iters.check1250 = icmp ult i32 %.0279.i, 8
  br i1 %min.iters.check1250, label %.lr.ph.i.i342.preheader, label %vector.main.loop.iter.check1251

vector.main.loop.iter.check1251:                  ; preds = %iter.check1286
  %min.iters.check1252 = icmp ult i32 %.0279.i, 32
  br i1 %min.iters.check1252, label %vec.epilog.ph1290, label %vector.ph1253

vector.ph1253:                                    ; preds = %vector.main.loop.iter.check1251
  %i.amn = and i64 %wide.trip.count.i.i341, 24
  %n.vec1254 = and i64 %wide.trip.count.i.i341, 2147483616 ; 4 uses
  %i.amo = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.aml, i64 0
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.ph1253, %vector.body1255
  %index1256 = phi i64 [ 0, %vector.ph1253 ], [ %index.next1277, %vector.body1255 ]
  %vec.ind1257 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph1253 ], [ %vec.ind.next1278, %vector.body1255 ] ; 5 uses
  %vec.phi1258 = phi <8 x i32> [ %i.amo, %vector.ph1253 ], [ %i.amp, %vector.body1255 ]
  %vec.phi1259 = phi <8 x i32> [ zeroinitializer, %vector.ph1253 ], [ %i.amq, %vector.body1255 ]
  %vec.phi1260 = phi <8 x i32> [ zeroinitializer, %vector.ph1253 ], [ %i.amr, %vector.body1255 ]
  %vec.phi1261 = phi <8 x i32> [ zeroinitializer, %vector.ph1253 ], [ %i.ams, %vector.body1255 ]
  %step.add1262 = add nuw <8 x i64> %vec.ind1257, splat (i64 8)
  %step.add.21263 = add nuw <8 x i64> %vec.ind1257, splat (i64 16)
  %step.add.31264 = add nuw <8 x i64> %vec.ind1257, splat (i64 24)
  %wide.gep1265 = getelementptr inbounds nuw [56 x i8], ptr %i.als, <8 x i64> %vec.ind1257
  %wide.gep1266 = getelementptr inbounds nuw [56 x i8], ptr %i.als, <8 x i64> %step.add1262
  %wide.gep1267 = getelementptr inbounds nuw [56 x i8], ptr %i.als, <8 x i64> %step.add.21263
  %wide.gep1268 = getelementptr inbounds nuw [56 x i8], ptr %i.als, <8 x i64> %step.add.31264
  %wide.gep1269 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1265, i64 4
  %wide.gep1270 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1266, i64 4
  %wide.gep1271 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1267, i64 4
  %wide.gep1272 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1268, i64 4
  %wide.masked.gather1273 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1269, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %wide.masked.gather1274 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1270, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %wide.masked.gather1275 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1271, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %wide.masked.gather1276 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1272, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %i.amp = add <8 x i32> %wide.masked.gather1273, %vec.phi1258 ; 2 uses
  %i.amq = add <8 x i32> %wide.masked.gather1274, %vec.phi1259 ; 2 uses
  %i.amr = add <8 x i32> %wide.masked.gather1275, %vec.phi1260 ; 2 uses
  %i.ams = add <8 x i32> %wide.masked.gather1276, %vec.phi1261 ; 2 uses
  %index.next1277 = add nuw i64 %index1256, 32    ; 2 uses
  %vec.ind.next1278 = add nuw <8 x i64> %vec.ind1257, splat (i64 32)
  %i.amt = icmp eq i64 %index.next1277, %n.vec1254
  br i1 %i.amt, label %middle.block1279, label %vector.body1255, !llvm.loop !125

middle.block1279:                                 ; preds = %vector.body1255
  %bin.rdx1280 = add <8 x i32> %i.amq, %i.amp
  %bin.rdx1281 = add <8 x i32> %i.amr, %bin.rdx1280
  %bin.rdx1282 = add <8 x i32> %i.ams, %bin.rdx1281
  %i.amu = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1282) ; 3 uses
  %cmp.n1283 = icmp eq i64 %n.vec1254, %wide.trip.count.i.i341
  br i1 %cmp.n1283, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i330, label %vec.epilog.iter.check1288

vec.epilog.iter.check1288:                        ; preds = %middle.block1279
  %min.epilog.iters.check1289 = icmp eq i64 %i.amn, 0
  br i1 %min.epilog.iters.check1289, label %.lr.ph.i.i342.preheader, label %vec.epilog.ph1290, !prof !359

vec.epilog.ph1290:                                ; preds = %vector.main.loop.iter.check1251, %vec.epilog.iter.check1288
  %vec.epilog.resume.val1284 = phi i64 [ %n.vec1254, %vec.epilog.iter.check1288 ], [ 0, %vector.main.loop.iter.check1251 ] ; 2 uses
  %bc.merge.rdx1285 = phi i32 [ %i.amu, %vec.epilog.iter.check1288 ], [ %i.aml, %vector.main.loop.iter.check1251 ]
  %n.vec1291 = and i64 %wide.trip.count.i.i341, 2147483640 ; 3 uses
  %i.amv = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1285, i64 0
  %broadcast.splatinsert1292 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val1284, i64 0
  %broadcast.splat1293 = shufflevector <8 x i64> %broadcast.splatinsert1292, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1294 = or disjoint <8 x i64> %broadcast.splat1293, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body1295

vec.epilog.vector.body1295:                       ; preds = %vec.epilog.vector.body1295, %vec.epilog.ph1290
  %index1296 = phi i64 [ %vec.epilog.resume.val1284, %vec.epilog.ph1290 ], [ %index.next1302, %vec.epilog.vector.body1295 ]
  %vec.ind1297 = phi <8 x i64> [ %induction1294, %vec.epilog.ph1290 ], [ %vec.ind.next1303, %vec.epilog.vector.body1295 ] ; 2 uses
  %vec.phi1298 = phi <8 x i32> [ %i.amv, %vec.epilog.ph1290 ], [ %i.amw, %vec.epilog.vector.body1295 ]
  %wide.gep1299 = getelementptr inbounds nuw [56 x i8], ptr %i.als, <8 x i64> %vec.ind1297
  %wide.gep1300 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep1299, i64 4
  %wide.masked.gather1301 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep1300, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !358
  %i.amw = add <8 x i32> %wide.masked.gather1301, %vec.phi1298 ; 2 uses
  %index.next1302 = add nuw i64 %index1296, 8     ; 2 uses
  %vec.ind.next1303 = add nuw nsw <8 x i64> %vec.ind1297, splat (i64 8)
  %i.amx = icmp eq i64 %index.next1302, %n.vec1291
  br i1 %i.amx, label %vec.epilog.middle.block1304, label %vec.epilog.vector.body1295, !llvm.loop !126

vec.epilog.middle.block1304:                      ; preds = %vec.epilog.vector.body1295
  %i.amy = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.amw) ; 2 uses
  %cmp.n1305 = icmp eq i64 %n.vec1291, %wide.trip.count.i.i341
  br i1 %cmp.n1305, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i330, label %.lr.ph.i.i342.preheader

.lr.ph.i.i342.preheader:                          ; preds = %iter.check1286, %vec.epilog.iter.check1288, %vec.epilog.middle.block1304
  %indvars.iv.i.i343.ph = phi i64 [ 0, %iter.check1286 ], [ %n.vec1254, %vec.epilog.iter.check1288 ], [ %n.vec1291, %vec.epilog.middle.block1304 ]
  %.01315.i.i344.ph = phi i32 [ %i.aml, %iter.check1286 ], [ %i.amu, %vec.epilog.iter.check1288 ], [ %i.amy, %vec.epilog.middle.block1304 ]
  br label %.lr.ph.i.i342

.lr.ph.i.i342:                                    ; preds = %.lr.ph.i.i342.preheader, %.lr.ph.i.i342
  %indvars.iv.i.i343 = phi i64 [ %indvars.iv.next.i.i345, %.lr.ph.i.i342 ], [ %indvars.iv.i.i343.ph, %.lr.ph.i.i342.preheader ] ; 2 uses
  %.01315.i.i344 = phi i32 [ %i.anc, %.lr.ph.i.i342 ], [ %.01315.i.i344.ph, %.lr.ph.i.i342.preheader ]
  %i.amz = getelementptr inbounds nuw [56 x i8], ptr %i.als, i64 %indvars.iv.i.i343
  %i.ana = getelementptr inbounds nuw i8, ptr %i.amz, i64 4
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !358
  %i.anc = add nsw i32 %i.anb, %.01315.i.i344     ; 2 uses
  %indvars.iv.next.i.i345 = add nuw nsw i64 %indvars.iv.i.i343, 1 ; 2 uses
  %exitcond.not.i.i346 = icmp eq i64 %indvars.iv.next.i.i345, %wide.trip.count.i.i341
  br i1 %exitcond.not.i.i346, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i330, label %.lr.ph.i.i342, !llvm.loop !127

_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i330:    ; preds = %.lr.ph.i.i342, %middle.block1279, %vec.epilog.middle.block1304, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i329
  %.013.lcssa.i.i331 = phi i32 [ %i.aml, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i.i329 ], [ %i.amy, %vec.epilog.middle.block1304 ], [ %i.amu, %middle.block1279 ], [ %i.anc, %.lr.ph.i.i342 ] ; 6 uses
  %i.and = icmp sgt i32 %.1190340.i, 0
  %.pre.i332 = load ptr, ptr %i.akg, align 8, !tbaa !371 ; 4 uses
  br i1 %i.and, label %iter.check1230, label %.critedge386.i

iter.check1230:                                   ; preds = %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i330
  %wide.trip.count.i334 = zext nneg i32 %.1190340.i to i64 ; 6 uses
  %min.iters.check1205 = icmp ult i32 %.1190340.i, 4
  br i1 %min.iters.check1205, label %vec.epilog.scalar.ph1231.preheader, label %vector.main.loop.iter.check1206

vector.main.loop.iter.check1206:                  ; preds = %iter.check1230
  %min.iters.check1207 = icmp ult i32 %.1190340.i, 32
  br i1 %min.iters.check1207, label %vec.epilog.ph1234, label %vector.ph1208

vector.ph1208:                                    ; preds = %vector.main.loop.iter.check1206
  %i.ane = and i64 %wide.trip.count.i334, 28
  %n.vec1209 = and i64 %wide.trip.count.i334, 2147483616 ; 4 uses
  %broadcast.splatinsert1210 = insertelement <8 x i32> poison, i32 %.013.lcssa.i.i331, i64 0
  %broadcast.splat1211 = shufflevector <8 x i32> %broadcast.splatinsert1210, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.ph1208, %vector.body1212
  %index1213 = phi i64 [ 0, %vector.ph1208 ], [ %index.next1222, %vector.body1212 ] ; 2 uses
  %vec.phi1214 = phi <8 x i1> [ zeroinitializer, %vector.ph1208 ], [ %i.ann, %vector.body1212 ]
  %vec.phi1215 = phi <8 x i1> [ zeroinitializer, %vector.ph1208 ], [ %i.ano, %vector.body1212 ]
  %vec.phi1216 = phi <8 x i1> [ zeroinitializer, %vector.ph1208 ], [ %i.anp, %vector.body1212 ]
  %vec.phi1217 = phi <8 x i1> [ zeroinitializer, %vector.ph1208 ], [ %i.anq, %vector.body1212 ]
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i332, i64 %index1213 ; 4 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %i.anf, i64 32
  %i.anh = getelementptr inbounds nuw i8, ptr %i.anf, i64 64
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anf, i64 96
  %wide.load1218 = load <8 x i32>, ptr %i.anf, align 4, !tbaa !30
  %wide.load1219 = load <8 x i32>, ptr %i.ang, align 4, !tbaa !30
  %wide.load1220 = load <8 x i32>, ptr %i.anh, align 4, !tbaa !30
  %wide.load1221 = load <8 x i32>, ptr %i.ani, align 4, !tbaa !30
  %i.anj = icmp eq <8 x i32> %wide.load1218, %broadcast.splat1211
  %i.ank = icmp eq <8 x i32> %wide.load1219, %broadcast.splat1211
  %i.anl = icmp eq <8 x i32> %wide.load1220, %broadcast.splat1211
  %i.anm = icmp eq <8 x i32> %wide.load1221, %broadcast.splat1211
  %i.ann = or <8 x i1> %vec.phi1214, %i.anj       ; 2 uses
  %i.ano = or <8 x i1> %vec.phi1215, %i.ank       ; 2 uses
  %i.anp = or <8 x i1> %vec.phi1216, %i.anl       ; 2 uses
  %i.anq = or <8 x i1> %vec.phi1217, %i.anm       ; 2 uses
  %index.next1222 = add nuw i64 %index1213, 32    ; 2 uses
  %i.anr = icmp eq i64 %index.next1222, %n.vec1209
  br i1 %i.anr, label %middle.block1223, label %vector.body1212, !llvm.loop !128

middle.block1223:                                 ; preds = %vector.body1212
  %bin.rdx1224 = or <8 x i1> %i.ano, %i.ann
  %bin.rdx1225 = or <8 x i1> %i.anp, %bin.rdx1224
  %bin.rdx1226 = or <8 x i1> %i.anq, %bin.rdx1225
  %bin.rdx1226.fr = freeze <8 x i1> %bin.rdx1226
  %i.ans = bitcast <8 x i1> %bin.rdx1226.fr to i8
  %.not1493 = icmp eq i8 %i.ans, 0                ; 3 uses
  %cmp.n1227 = icmp eq i64 %n.vec1209, %wide.trip.count.i334
  br i1 %cmp.n1227, label %._crit_edge.i339, label %vec.epilog.iter.check1232

vec.epilog.iter.check1232:                        ; preds = %middle.block1223
  %min.epilog.iters.check1233 = icmp eq i64 %i.ane, 0
  br i1 %min.epilog.iters.check1233, label %vec.epilog.scalar.ph1231.preheader, label %vec.epilog.ph1234, !prof !83

vec.epilog.ph1234:                                ; preds = %vector.main.loop.iter.check1206, %vec.epilog.iter.check1232
  %vec.epilog.resume.val1228 = phi i64 [ %n.vec1209, %vec.epilog.iter.check1232 ], [ 0, %vector.main.loop.iter.check1206 ]
  %bc.merge.rdx1229 = phi i1 [ %.not1493, %vec.epilog.iter.check1232 ], [ true, %vector.main.loop.iter.check1206 ]
  %n.vec1235 = and i64 %wide.trip.count.i334, 2147483644 ; 3 uses
  %53 = xor i1 %bc.merge.rdx1229, true
  %broadcast.splatinsert1236 = insertelement <4 x i1> poison, i1 %53, i64 0
  %broadcast.splat1237 = shufflevector <4 x i1> %broadcast.splatinsert1236, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %.013.lcssa.i.i331, i64 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1240

vec.epilog.vector.body1240:                       ; preds = %vec.epilog.vector.body1240, %vec.epilog.ph1234
  %index1241 = phi i64 [ %vec.epilog.resume.val1228, %vec.epilog.ph1234 ], [ %index.next1244, %vec.epilog.vector.body1240 ] ; 2 uses
  %vec.phi1242 = phi <4 x i1> [ %broadcast.splat1237, %vec.epilog.ph1234 ], [ %.fr1494, %vec.epilog.vector.body1240 ]
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %.pre.i332, i64 %index1241
  %wide.load1243 = load <4 x i32>, ptr %i.ant, align 4, !tbaa !30
  %i.anu = icmp eq <4 x i32> %wide.load1243, %broadcast.splat1239
  %i.anv = or <4 x i1> %vec.phi1242, %i.anu
  %.fr1494 = freeze <4 x i1> %i.anv               ; 2 uses
  %index.next1244 = add nuw i64 %index1241, 4     ; 2 uses
  %i.anw = icmp eq i64 %index.next1244, %n.vec1235
  br i1 %i.anw, label %vec.epilog.middle.block1245, label %vec.epilog.vector.body1240, !llvm.loop !129

vec.epilog.middle.block1245:                      ; preds = %vec.epilog.vector.body1240
  %i.anx = bitcast <4 x i1> %.fr1494 to i4
  %.not1495 = icmp eq i4 %i.anx, 0                ; 2 uses
  %cmp.n1246 = icmp eq i64 %n.vec1235, %wide.trip.count.i334
  br i1 %cmp.n1246, label %._crit_edge.i339, label %vec.epilog.scalar.ph1231.preheader

vec.epilog.scalar.ph1231.preheader:               ; preds = %iter.check1230, %vec.epilog.iter.check1232, %vec.epilog.middle.block1245
  %indvars.iv.i335.ph = phi i64 [ 0, %iter.check1230 ], [ %n.vec1209, %vec.epilog.iter.check1232 ], [ %n.vec1235, %vec.epilog.middle.block1245 ]
  %.0164325.i.ph = phi i1 [ true, %iter.check1230 ], [ %.not1493, %vec.epilog.iter.check1232 ], [ %.not1495, %vec.epilog.middle.block1245 ]
  br label %vec.epilog.scalar.ph1231

._crit_edge.i339:                                 ; preds = %vec.epilog.scalar.ph1231, %vec.epilog.middle.block1245, %middle.block1223
  %spec.select.i336.lcssa = phi i1 [ %.not1495, %vec.epilog.middle.block1245 ], [ %.not1493, %middle.block1223 ], [ %spec.select.i336, %vec.epilog.scalar.ph1231 ]
  br i1 %spec.select.i336.lcssa, label %.critedge386.i, label %.loopexit287.i

.loopexit285.i:                                   ; preds = %bb.jd
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.in
  %lpad.loopexit288.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.kg, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i, %bb.kf, %._crit_edge.i.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, %bb.ja, %bb.im, %.noexc347
  %lpad.loopexit.split-lp289.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

vec.epilog.scalar.ph1231:                         ; preds = %vec.epilog.scalar.ph1231.preheader, %vec.epilog.scalar.ph1231
  %indvars.iv.i335 = phi i64 [ %indvars.iv.next.i337, %vec.epilog.scalar.ph1231 ], [ %indvars.iv.i335.ph, %vec.epilog.scalar.ph1231.preheader ] ; 2 uses
  %.0164325.i = phi i1 [ %spec.select.i336, %vec.epilog.scalar.ph1231 ], [ %.0164325.i.ph, %vec.epilog.scalar.ph1231.preheader ]
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %.pre.i332, i64 %indvars.iv.i335
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !30
  %i.aoa = icmp ne i32 %i.anz, %.013.lcssa.i.i331
  %spec.select.i336 = select i1 %i.aoa, i1 %.0164325.i, i1 false ; 2 uses
  %indvars.iv.next.i337 = add nuw nsw i64 %indvars.iv.i335, 1 ; 2 uses
  %exitcond.not.i338 = icmp eq i64 %indvars.iv.next.i337, %wide.trip.count.i334
  br i1 %exitcond.not.i338, label %._crit_edge.i339, label %vec.epilog.scalar.ph1231, !llvm.loop !130

.critedge386.i:                                   ; preds = %._crit_edge.i339, %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit.i330
  %i.aob = sext i32 %.1190340.i to i64            ; 2 uses
  %i.aoc = getelementptr inbounds [4 x i8], ptr %.pre.i332, i64 %i.aob
  store i32 %.013.lcssa.i.i331, ptr %i.aoc, align 4, !tbaa !30
  %i.aod = load ptr, ptr %i.ajw, align 8, !tbaa !372
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.aod, i64 %i.aob
  store i32 %.0279.i, ptr %i.aoe, align 4, !tbaa !30
  %i.aof = add nsw i32 %.1190340.i, 1             ; 2 uses
  %i.aog = load i32, ptr %i.xl, align 8, !tbaa !361 ; 2 uses
  %i.aoh = icmp sgt i32 %i.aog, 0
  br i1 %i.aoh, label %.lr.ph337.i, label %.loopexit287.i

.lr.ph337.i:                                      ; preds = %.critedge386.i
  %i.aoi = load ptr, ptr %i.xo, align 8, !tbaa !362
  %i.aoj = sext i32 %.013.lcssa.i.i331 to i64
  %i.aok = load ptr, ptr %14, align 8
  %i.aol = getelementptr [4 x i8], ptr %i.aok, i64 %i.aoj ; 2 uses
  %i.aom = getelementptr i8, ptr %i.aol, i64 4
  %wide.trip.count419.i = zext nneg i32 %i.aog to i64
  br label %bb.it

bb.it:                                            ; preds = %bb.iz, %.lr.ph337.i
  %indvars.iv416.i = phi i64 [ 0, %.lr.ph337.i ], [ %indvars.iv.next417.i, %bb.iz ] ; 2 uses
  %.0170334.i = phi float [ 0.000000e+00, %.lr.ph337.i ], [ %.2172.i, %bb.iz ] ; 4 uses
  %.2176333.i = phi i32 [ %.1175342.i, %.lr.ph337.i ], [ %.3177.i, %bb.iz ] ; 3 uses
  %.2183332.i = phi i32 [ %.1182341.i, %.lr.ph337.i ], [ %.3184.i, %bb.iz ] ; 3 uses
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.aoi, i64 %indvars.iv416.i
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !30
  %i.aop = icmp eq i32 %.013.lcssa.i.i331, %i.aoo
  br i1 %i.aop, label %bb.iu, label %bb.iz

bb.iu:                                            ; preds = %bb.it
  %i.aoq = load i32, ptr %i.aol, align 4, !tbaa !30 ; 6 uses
  %i.aor = load i32, ptr %i.aom, align 4, !tbaa !30 ; 6 uses
  %.not.i.i213.i = icmp sgt i32 %i.aoq, %i.aor
  br i1 %.not.i.i213.i, label %bb.iv, label %.preheader286.i

.preheader286.i:                                  ; preds = %bb.iu
  %.not282327.i = icmp eq i32 %i.aoq, %i.aor
  br i1 %.not282327.i, label %_ZNK3gmx17RangePartitioning5blockEi.exit220.i, label %.lr.ph330.preheader.i

.lr.ph330.preheader.i:                            ; preds = %.preheader286.i
  %i.aos = sext i32 %i.aoq to i64                 ; 2 uses
  %i.aot = sub i32 %i.aor, %i.aoq
  %xtraiter1598 = and i32 %i.aot, 7               ; 2 uses
  %lcmp.mod1599.not = icmp eq i32 %xtraiter1598, 0
  br i1 %lcmp.mod1599.not, label %.lr.ph330.i.prol.loopexit, label %.lr.ph330.i.prol

.lr.ph330.i.prol:                                 ; preds = %.lr.ph330.preheader.i, %.lr.ph330.i.prol
  %indvars.iv413.i.prol = phi i64 [ %indvars.iv.next414.i.prol, %.lr.ph330.i.prol ], [ %i.aos, %.lr.ph330.preheader.i ] ; 2 uses
  %.1171329.i.prol = phi float [ %i.aox, %.lr.ph330.i.prol ], [ %.0170334.i, %.lr.ph330.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph330.i.prol ], [ 0, %.lr.ph330.preheader.i ]
  %i.aou = getelementptr inbounds [12 x i8], ptr %i.aju, i64 %indvars.iv413.i.prol
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 8
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !20
  %i.aox = fadd float %.1171329.i.prol, %i.aow    ; 3 uses
  %indvars.iv.next414.i.prol = add nsw i64 %indvars.iv413.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1598
  br i1 %prol.iter.cmp.not, label %.lr.ph330.i.prol.loopexit, label %.lr.ph330.i.prol, !llvm.loop !131

.lr.ph330.i.prol.loopexit:                        ; preds = %.lr.ph330.i.prol, %.lr.ph330.preheader.i
  %.lcssa1563.unr = phi float [ poison, %.lr.ph330.preheader.i ], [ %i.aox, %.lr.ph330.i.prol ]
  %indvars.iv413.i.unr = phi i64 [ %i.aos, %.lr.ph330.preheader.i ], [ %indvars.iv.next414.i.prol, %.lr.ph330.i.prol ]
  %.1171329.i.unr = phi float [ %.0170334.i, %.lr.ph330.preheader.i ], [ %i.aox, %.lr.ph330.i.prol ]
  %i.aoy = sub i32 %i.aoq, %i.aor
  %i.aoz = icmp ugt i32 %i.aoy, -8
  br i1 %i.aoz, label %_ZNK3gmx17RangePartitioning5blockEi.exit220.i, label %.lr.ph330.i

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.83, i32 noundef 111) #28
          to label %.noexc.i unwind label %bb.iw

.noexc.i:                                         ; preds = %bb.iv
  unreachable

bb.iw:                                            ; preds = %bb.iv
  %i.apa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph330.i:                                      ; preds = %.lr.ph330.i.prol.loopexit, %.lr.ph330.i
  %indvars.iv413.i = phi i64 [ %indvars.iv.next414.i.7, %.lr.ph330.i ], [ %indvars.iv413.i.unr, %.lr.ph330.i.prol.loopexit ] ; 9 uses
  %.1171329.i = phi float [ %i.aqg, %.lr.ph330.i ], [ %.1171329.i.unr, %.lr.ph330.i.prol.loopexit ]
  %i.apb = getelementptr inbounds [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8
  %i.apd = load float, ptr %i.apc, align 4, !tbaa !20
  %i.ape = fadd float %.1171329.i, %i.apd
  %i.apf = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.apg = getelementptr i8, ptr %i.apf, i64 20
  %i.aph = load float, ptr %i.apg, align 4, !tbaa !20
  %i.api = fadd float %i.ape, %i.aph
  %i.apj = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.apk = getelementptr i8, ptr %i.apj, i64 32
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !20
  %i.apm = fadd float %i.api, %i.apl
  %i.apn = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.apo = getelementptr i8, ptr %i.apn, i64 44
  %i.app = load float, ptr %i.apo, align 4, !tbaa !20
  %i.apq = fadd float %i.apm, %i.app
  %i.apr = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.aps = getelementptr i8, ptr %i.apr, i64 56
  %i.apt = load float, ptr %i.aps, align 4, !tbaa !20
  %i.apu = fadd float %i.apq, %i.apt
  %i.apv = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.apw = getelementptr i8, ptr %i.apv, i64 68
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !20
  %i.apy = fadd float %i.apu, %i.apx
  %i.apz = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.aqa = getelementptr i8, ptr %i.apz, i64 80
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !20
  %i.aqc = fadd float %i.apy, %i.aqb
  %i.aqd = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv413.i
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 92
  %i.aqf = load float, ptr %i.aqe, align 4, !tbaa !20
  %i.aqg = fadd float %i.aqc, %i.aqf              ; 2 uses
  %indvars.iv.next414.i.7 = add nsw i64 %indvars.iv413.i, 8 ; 2 uses
  %i.aqh = trunc nsw i64 %indvars.iv.next414.i.7 to i32
  %.not282.i.7 = icmp eq i32 %i.aor, %i.aqh
  br i1 %.not282.i.7, label %_ZNK3gmx17RangePartitioning5blockEi.exit220.i, label %.lr.ph330.i

_ZNK3gmx17RangePartitioning5blockEi.exit220.i:    ; preds = %.lr.ph330.i.prol.loopexit, %.lr.ph330.i, %.preheader286.i
  %.1171.lcssa.i = phi float [ %.0170334.i, %.preheader286.i ], [ %.lcssa1563.unr, %.lr.ph330.i.prol.loopexit ], [ %i.aqg, %.lr.ph330.i ]
  %i.aqi = sub nsw i32 %i.aor, %i.aoq
  %i.aqj = sitofp i32 %i.aqi to float
  %i.aqk = fdiv float %.1171.lcssa.i, %i.aqj      ; 3 uses
  %i.aql = load float, ptr %i.yd, align 4, !tbaa !365
  %i.aqm = fcmp olt float %i.aqk, %i.aql
  br i1 %i.aqm, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %_ZNK3gmx17RangePartitioning5blockEi.exit220.i
  %i.aqn = add nsw i32 %.2176333.i, 1
  br label %bb.iz

bb.iy:                                            ; preds = %_ZNK3gmx17RangePartitioning5blockEi.exit220.i
  %i.aqo = add nsw i32 %.2183332.i, 1
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %bb.it
  %.3184.i = phi i32 [ %.2183332.i, %bb.ix ], [ %i.aqo, %bb.iy ], [ %.2183332.i, %bb.it ] ; 2 uses
  %.3177.i = phi i32 [ %i.aqn, %bb.ix ], [ %.2176333.i, %bb.iy ], [ %.2176333.i, %bb.it ] ; 2 uses
  %.2172.i = phi float [ %i.aqk, %bb.ix ], [ %i.aqk, %bb.iy ], [ %.0170334.i, %bb.it ]
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %exitcond420.not.i = icmp eq i64 %indvars.iv.next417.i, %wide.trip.count419.i
  br i1 %exitcond420.not.i, label %.loopexit287.i, label %bb.it, !llvm.loop !132

.loopexit287.i:                                   ; preds = %bb.iz, %.critedge386.i, %._crit_edge.i339, %bb.io
  %.2191.i = phi i32 [ %.1190340.i, %bb.io ], [ %.1190340.i, %._crit_edge.i339 ], [ %i.aof, %.critedge386.i ], [ %i.aof, %bb.iz ] ; 2 uses
  %.4185.i = phi i32 [ %.1182341.i, %bb.io ], [ %.1182341.i, %._crit_edge.i339 ], [ %.1182341.i, %.critedge386.i ], [ %.3184.i, %bb.iz ] ; 2 uses
  %.4178.i = phi i32 [ %.1175342.i, %bb.io ], [ %.1175342.i, %._crit_edge.i339 ], [ %.1175342.i, %.critedge386.i ], [ %.3177.i, %bb.iz ] ; 2 uses
  %indvars.iv.next422.i = add nuw nsw i64 %indvars.iv421.i, 1 ; 2 uses
  %i.aqp = load i32, ptr %i.pk, align 8, !tbaa !64 ; 2 uses
  %i.aqq = sext i32 %i.aqp to i64
end_hunk_1
begin_hunk_2_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a

bb.jg:                                            ; preds = %.lr.ph364.i
  %i.asf = load <2 x float>, ptr %i.f, align 8, !tbaa !20 ; 4 uses
  %foldExtExtBinop1501 = fmul <2 x float> %i.asf, %i.asf
  %i.asg = extractelement <2 x float> %foldExtExtBinop1501, i64 1
  %i.ash = extractelement <2 x float> %i.asf, i64 0 ; 2 uses
  %i.asi = call float @llvm.fmuladd.f32(float %i.ash, float %i.ash, float %i.asg)
  %i.asj = load float, ptr %i.arh, align 8, !tbaa !20 ; 3 uses
  %i.ask = call noundef float @llvm.fmuladd.f32(float %i.asj, float %i.asj, float %i.asi) ; 2 uses
  %i.asl = fcmp olt float %i.ask, %.0168361.i
  br i1 %i.asl, label %bb.jh, label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  store <2 x float> %i.asf, ptr %i.e, align 8, !tbaa !20
  store float %i.asj, ptr %i.arg, align 8, !tbaa !20
  br label %bb.jj

bb.ji:                                            ; preds = %.lr.ph364.i
  %i.asm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.jj:                                            ; preds = %bb.jh, %bb.jg
  %.1169.i = phi float [ %i.ask, %bb.jh ], [ %.0168361.i, %bb.jg ]
  %indvars.iv.next428.i = add nuw nsw i64 %indvars.iv427.i, 1 ; 2 uses
  %i.asn = load i32, ptr %i.jz, align 8, !tbaa !28
  %i.aso = sext i32 %i.asn to i64
  %i.asp = icmp slt i64 %indvars.iv.next428.i, %i.aso
  br i1 %i.asp, label %.lr.ph364.i, label %.loopexit.loopexit.i, !llvm.loop !135

.loopexit.loopexit.i:                             ; preds = %bb.jj
  %.pre447.i = load float, ptr %i.e, align 8, !tbaa !20
  %.pre449.i = load float, ptr %i.arf, align 4, !tbaa !20
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.je
  %i.asq = phi float [ %.pre450.i, %bb.je ], [ %.pre449.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.asr = phi float [ %.pre448.i, %bb.je ], [ %.pre447.i, %.loopexit.loopexit.i ] ; 2 uses
  %i.ass = fmul float %i.asq, %i.asq
  %i.ast = call float @llvm.fmuladd.f32(float %i.asr, float %i.asr, float %i.ass) ; 2 uses
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %indvars.iv430.i
  store float %i.ast, ptr %i.asu, align 4, !tbaa !20
  %.not388.i = icmp eq i64 %indvars.iv430.i, 0
  %i.asv = trunc nuw nsw i64 %indvars.iv430.i to i32
  br i1 %.not388.i, label %.critedge.i323, label %.lr.ph369.i

.lr.ph369.i:                                      ; preds = %.loopexit.i, %bb.jk
  %indvars.iv432.i = phi i64 [ %indvars.iv.next433.i, %bb.jk ], [ %indvars.iv430.i, %.loopexit.i ] ; 4 uses
  %indvars.iv.next433.i = add nsw i64 %indvars.iv432.i, -1 ; 2 uses
  %i.asw = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %indvars.iv.next433.i
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !30 ; 2 uses
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.aqz, i64 %i.asy
  %i.ata = load float, ptr %i.asz, align 4, !tbaa !20
  %i.atb = fcmp olt float %i.ast, %i.ata
  br i1 %i.atb, label %bb.jk, label %.critedge.i323

bb.jk:                                            ; preds = %.lr.ph369.i
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %indvars.iv432.i
  store i32 %i.asx, ptr %i.atc, align 4, !tbaa !30
  %i.atd = icmp sgt i64 %indvars.iv432.i, 1
  br i1 %i.atd, label %.lr.ph369.i, label %.critedge.i323, !llvm.loop !136

.critedge.i323:                                   ; preds = %bb.jk, %.lr.ph369.i, %.loopexit.i
  %.1149.in.lcssa.i = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv432.i, %.lr.ph369.i ], [ 0, %bb.jk ]
  %i.ate = getelementptr inbounds [4 x i8], ptr %i.arc, i64 %.1149.in.lcssa.i
  store i32 %i.asv, ptr %i.ate, align 4, !tbaa !30
  %indvars.iv.next431.i = add nuw nsw i64 %indvars.iv430.i, 1 ; 2 uses
  %i.atf = load i32, ptr %i.xl, align 8, !tbaa !361
  %i.atg = sext i32 %i.atf to i64
  %i.ath = icmp slt i64 %indvars.iv.next431.i, %i.atg
  br i1 %i.ath, label %bb.jb, label %.preheader283.i, !llvm.loop !137

bb.jl:                                            ; preds = %bb.jy, %.preheader283.i
  %indvars.iv443.i = phi i64 [ 0, %.preheader283.i ], [ %indvars.iv.next444.i, %bb.jy ] ; 3 uses
  %.3192.i = phi i32 [ %.0189.lcssa.i, %.preheader283.i ], [ %.4193.i, %bb.jy ] ; 12 uses
  %.5186.i = phi i32 [ %.0181.lcssa.i, %.preheader283.i ], [ %.6187.i, %bb.jy ] ; 10 uses
  %.5179.i = phi i32 [ %.0174.lcssa.i, %.preheader283.i ], [ %.6180.i, %bb.jy ] ; 8 uses
  %.not.i320 = icmp eq i32 %.5186.i, %.5179.i
  br i1 %.not.i320, label %bb.kf, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.ati = load ptr, ptr %i.xo, align 8, !tbaa !362
  %i.atj = getelementptr inbounds nuw [4 x i8], ptr %i.arc, i64 %indvars.iv443.i
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !30
  %i.atl = sext i32 %i.atk to i64
  %i.atm = getelementptr inbounds [4 x i8], ptr %i.ati, i64 %i.atl
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !30 ; 8 uses
  %.val.i = load ptr, ptr %i.yf, align 8          ; 3 uses
  %.val211.i = load ptr, ptr %i.ari, align 8      ; 2 uses
  %.not6.not.i.i = icmp eq ptr %.val211.i, %.val.i
  br i1 %.not6.not.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i231.i

.lr.ph.preheader.i231.i:                          ; preds = %bb.jm
  %i.ato = ptrtoint ptr %.val211.i to i64
  %i.atp = ptrtoint ptr %.val.i to i64
  %i.atq = sub i64 %i.ato, %i.atp
  %i.atr = sdiv exact i64 %i.atq, 56
  br label %.lr.ph.i232.i

.lr.ph.i232.i:                                    ; preds = %bb.jn, %.lr.ph.preheader.i231.i
  %.0148.i.i = phi i32 [ %i.atv, %bb.jn ], [ 0, %.lr.ph.preheader.i231.i ]
  %.0167.i.i = phi i64 [ %i.atx, %bb.jn ], [ 0, %.lr.ph.preheader.i231.i ] ; 3 uses
  %i.ats = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %.0167.i.i
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 4
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !358
  %i.atv = add nsw i32 %i.atu, %.0148.i.i         ; 3 uses
  %i.atw = icmp slt i32 %i.atn, %i.atv
  br i1 %i.atw, label %bb.jq, label %bb.jn

bb.jn:                                            ; preds = %.lr.ph.i232.i
  %i.atx = add nuw i64 %.0167.i.i, 1              ; 2 uses
  %exitcond.not.i233.i = icmp eq i64 %i.atx, %i.atr
  br i1 %exitcond.not.i233.i, label %._crit_edge.i.i, label %.lr.ph.i232.i, !llvm.loop !138

._crit_edge.i.i:                                  ; preds = %bb.jm, %bb.jn
  %.014.lcssa.i.i = phi i32 [ %i.atv, %bb.jn ], [ 0, %bb.jm ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
          to label %.noexc234.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc234.i:                                      ; preds = %._crit_edge.i.i
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 158, ptr noundef nonnull @.str.84, i32 noundef %i.atn, i32 noundef %.014.lcssa.i.i) #28
          to label %bb.jo unwind label %bb.jp

bb.jo:                                            ; preds = %.noexc234.i
  unreachable

bb.jp:                                            ; preds = %.noexc234.i
  %i.aty = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.body.i

bb.jq:                                            ; preds = %.lr.ph.i232.i
  %i.atz = trunc i64 %.0167.i.i to i32            ; 2 uses
  %i.aua = icmp sgt i32 %.3192.i, 0
  br i1 %i.aua, label %iter.check1334, label %.critedge387.i

iter.check1334:                                   ; preds = %bb.jq
  %i.aub = load ptr, ptr %i.akg, align 8, !tbaa !371 ; 3 uses
  %wide.trip.count438.i = zext nneg i32 %.3192.i to i64 ; 6 uses
  %min.iters.check1309 = icmp ult i32 %.3192.i, 4
  br i1 %min.iters.check1309, label %vec.epilog.scalar.ph1335.preheader, label %vector.main.loop.iter.check1310

vector.main.loop.iter.check1310:                  ; preds = %iter.check1334
  %min.iters.check1311 = icmp ult i32 %.3192.i, 32
  br i1 %min.iters.check1311, label %vec.epilog.ph1338, label %vector.ph1312

vector.ph1312:                                    ; preds = %vector.main.loop.iter.check1310
  %i.auc = and i64 %wide.trip.count438.i, 28
  %n.vec1313 = and i64 %wide.trip.count438.i, 2147483616 ; 4 uses
  %broadcast.splatinsert1314 = insertelement <8 x i32> poison, i32 %i.atn, i64 0
  %broadcast.splat1315 = shufflevector <8 x i32> %broadcast.splatinsert1314, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.ph1312, %vector.body1316
  %index1317 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1326, %vector.body1316 ] ; 2 uses
  %vec.phi1318 = phi <8 x i1> [ zeroinitializer, %vector.ph1312 ], [ %i.aul, %vector.body1316 ]
  %vec.phi1319 = phi <8 x i1> [ zeroinitializer, %vector.ph1312 ], [ %i.aum, %vector.body1316 ]
  %vec.phi1320 = phi <8 x i1> [ zeroinitializer, %vector.ph1312 ], [ %i.aun, %vector.body1316 ]
  %vec.phi1321 = phi <8 x i1> [ zeroinitializer, %vector.ph1312 ], [ %i.auo, %vector.body1316 ]
  %i.aud = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %index1317 ; 4 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 32
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aud, i64 64
  %i.aug = getelementptr inbounds nuw i8, ptr %i.aud, i64 96
  %wide.load1322 = load <8 x i32>, ptr %i.aud, align 4, !tbaa !30
  %wide.load1323 = load <8 x i32>, ptr %i.aue, align 4, !tbaa !30
  %wide.load1324 = load <8 x i32>, ptr %i.auf, align 4, !tbaa !30
  %wide.load1325 = load <8 x i32>, ptr %i.aug, align 4, !tbaa !30
  %i.auh = icmp eq <8 x i32> %wide.load1322, %broadcast.splat1315
  %i.aui = icmp eq <8 x i32> %wide.load1323, %broadcast.splat1315
  %i.auj = icmp eq <8 x i32> %wide.load1324, %broadcast.splat1315
  %i.auk = icmp eq <8 x i32> %wide.load1325, %broadcast.splat1315
  %i.aul = or <8 x i1> %vec.phi1318, %i.auh       ; 2 uses
  %i.aum = or <8 x i1> %vec.phi1319, %i.aui       ; 2 uses
  %i.aun = or <8 x i1> %vec.phi1320, %i.auj       ; 2 uses
  %i.auo = or <8 x i1> %vec.phi1321, %i.auk       ; 2 uses
  %index.next1326 = add nuw i64 %index1317, 32    ; 2 uses
  %i.aup = icmp eq i64 %index.next1326, %n.vec1313
  br i1 %i.aup, label %middle.block1327, label %vector.body1316, !llvm.loop !139

middle.block1327:                                 ; preds = %vector.body1316
  %bin.rdx1328 = or <8 x i1> %i.aum, %i.aul
  %bin.rdx1329 = or <8 x i1> %i.aun, %bin.rdx1328
  %bin.rdx1330 = or <8 x i1> %i.auo, %bin.rdx1329
  %bin.rdx1330.fr = freeze <8 x i1> %bin.rdx1330
  %i.auq = bitcast <8 x i1> %bin.rdx1330.fr to i8
  %.not1496 = icmp eq i8 %i.auq, 0                ; 3 uses
  %cmp.n1331 = icmp eq i64 %n.vec1313, %wide.trip.count438.i
  br i1 %cmp.n1331, label %._crit_edge379.i, label %vec.epilog.iter.check1336

vec.epilog.iter.check1336:                        ; preds = %middle.block1327
  %min.epilog.iters.check1337 = icmp eq i64 %i.auc, 0
  br i1 %min.epilog.iters.check1337, label %vec.epilog.scalar.ph1335.preheader, label %vec.epilog.ph1338, !prof !83

vec.epilog.ph1338:                                ; preds = %vector.main.loop.iter.check1310, %vec.epilog.iter.check1336
  %vec.epilog.resume.val1332 = phi i64 [ %n.vec1313, %vec.epilog.iter.check1336 ], [ 0, %vector.main.loop.iter.check1310 ]
  %bc.merge.rdx1333 = phi i1 [ %.not1496, %vec.epilog.iter.check1336 ], [ true, %vector.main.loop.iter.check1310 ]
  %n.vec1339 = and i64 %wide.trip.count438.i, 2147483644 ; 3 uses
  %54 = xor i1 %bc.merge.rdx1333, true
  %broadcast.splatinsert1340 = insertelement <4 x i1> poison, i1 %54, i64 0
  %broadcast.splat1341 = shufflevector <4 x i1> %broadcast.splatinsert1340, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1342 = insertelement <4 x i32> poison, i32 %i.atn, i64 0
  %broadcast.splat1343 = shufflevector <4 x i32> %broadcast.splatinsert1342, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1344

vec.epilog.vector.body1344:                       ; preds = %vec.epilog.vector.body1344, %vec.epilog.ph1338
  %index1345 = phi i64 [ %vec.epilog.resume.val1332, %vec.epilog.ph1338 ], [ %index.next1348, %vec.epilog.vector.body1344 ] ; 2 uses
  %vec.phi1346 = phi <4 x i1> [ %broadcast.splat1341, %vec.epilog.ph1338 ], [ %.fr1497, %vec.epilog.vector.body1344 ]
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %index1345
  %wide.load1347 = load <4 x i32>, ptr %i.aur, align 4, !tbaa !30
  %i.aus = icmp eq <4 x i32> %wide.load1347, %broadcast.splat1343
  %i.aut = or <4 x i1> %vec.phi1346, %i.aus
  %.fr1497 = freeze <4 x i1> %i.aut               ; 2 uses
  %index.next1348 = add nuw i64 %index1345, 4     ; 2 uses
  %i.auu = icmp eq i64 %index.next1348, %n.vec1339
  br i1 %i.auu, label %vec.epilog.middle.block1349, label %vec.epilog.vector.body1344, !llvm.loop !140

vec.epilog.middle.block1349:                      ; preds = %vec.epilog.vector.body1344
  %i.auv = bitcast <4 x i1> %.fr1497 to i4
  %.not1498 = icmp eq i4 %i.auv, 0                ; 2 uses
  %cmp.n1350 = icmp eq i64 %n.vec1339, %wide.trip.count438.i
  br i1 %cmp.n1350, label %._crit_edge379.i, label %vec.epilog.scalar.ph1335.preheader

vec.epilog.scalar.ph1335.preheader:               ; preds = %iter.check1334, %vec.epilog.iter.check1336, %vec.epilog.middle.block1349
  %indvars.iv436.i.ph = phi i64 [ 0, %iter.check1334 ], [ %n.vec1313, %vec.epilog.iter.check1336 ], [ %n.vec1339, %vec.epilog.middle.block1349 ]
  %.2166375.i.ph = phi i1 [ true, %iter.check1334 ], [ %.not1496, %vec.epilog.iter.check1336 ], [ %.not1498, %vec.epilog.middle.block1349 ]
  br label %vec.epilog.scalar.ph1335

._crit_edge379.i:                                 ; preds = %vec.epilog.scalar.ph1335, %vec.epilog.middle.block1349, %middle.block1327
  %spec.select210.i.lcssa = phi i1 [ %.not1498, %vec.epilog.middle.block1349 ], [ %.not1496, %middle.block1327 ], [ %spec.select210.i, %vec.epilog.scalar.ph1335 ]
  br i1 %spec.select210.i.lcssa, label %.critedge387.i, label %bb.jy

vec.epilog.scalar.ph1335:                         ; preds = %vec.epilog.scalar.ph1335.preheader, %vec.epilog.scalar.ph1335
  %indvars.iv436.i = phi i64 [ %indvars.iv.next437.i, %vec.epilog.scalar.ph1335 ], [ %indvars.iv436.i.ph, %vec.epilog.scalar.ph1335.preheader ] ; 2 uses
  %.2166375.i = phi i1 [ %spec.select210.i, %vec.epilog.scalar.ph1335 ], [ %.2166375.i.ph, %vec.epilog.scalar.ph1335.preheader ]
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv436.i
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !30
  %i.auy = icmp ne i32 %i.aux, %i.atn
  %spec.select210.i = select i1 %i.auy, i1 %.2166375.i, i1 false ; 2 uses
  %indvars.iv.next437.i = add nuw nsw i64 %indvars.iv436.i, 1 ; 2 uses
  %exitcond439.not.i = icmp eq i64 %indvars.iv.next437.i, %wide.trip.count438.i
  br i1 %exitcond439.not.i, label %._crit_edge379.i, label %vec.epilog.scalar.ph1335, !llvm.loop !141

.critedge387.i:                                   ; preds = %._crit_edge379.i, %bb.jq
  %i.auz = sext i32 %i.atn to i64
  %i.ava = getelementptr [4 x i8], ptr %i.arj, i64 %i.auz ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !30 ; 6 uses
  %i.avc = getelementptr i8, ptr %i.ava, i64 4
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !30 ; 6 uses
  %.not.i.i235.i = icmp sgt i32 %i.avb, %i.avd
  br i1 %.not.i.i235.i, label %bb.jr, label %.preheader.i321

.preheader.i321:                                  ; preds = %.critedge387.i
  %.not281381.i = icmp eq i32 %i.avb, %i.avd
  br i1 %.not281381.i, label %_ZNK3gmx17RangePartitioning5blockEi.exit248.i, label %.lr.ph384.preheader.i

.lr.ph384.preheader.i:                            ; preds = %.preheader.i321
  %i.ave = sext i32 %i.avb to i64                 ; 2 uses
  %i.avf = sub i32 %i.avd, %i.avb
  %xtraiter1600 = and i32 %i.avf, 7               ; 2 uses
  %lcmp.mod1601.not = icmp eq i32 %xtraiter1600, 0
  br i1 %lcmp.mod1601.not, label %.lr.ph384.i.prol.loopexit, label %.lr.ph384.i.prol

.lr.ph384.i.prol:                                 ; preds = %.lr.ph384.preheader.i, %.lr.ph384.i.prol
  %indvars.iv440.i.prol = phi i64 [ %indvars.iv.next441.i.prol, %.lr.ph384.i.prol ], [ %i.ave, %.lr.ph384.preheader.i ] ; 2 uses
  %.3173383.i.prol = phi float [ %i.avj, %.lr.ph384.i.prol ], [ 0.000000e+00, %.lr.ph384.preheader.i ]
  %prol.iter1602 = phi i32 [ %prol.iter1602.next, %.lr.ph384.i.prol ], [ 0, %.lr.ph384.preheader.i ]
  %i.avg = getelementptr inbounds [12 x i8], ptr %i.aju, i64 %indvars.iv440.i.prol
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 8
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !20
  %i.avj = fadd float %.3173383.i.prol, %i.avi    ; 3 uses
  %indvars.iv.next441.i.prol = add nsw i64 %indvars.iv440.i.prol, 1 ; 2 uses
  %prol.iter1602.next = add i32 %prol.iter1602, 1 ; 2 uses
  %prol.iter1602.cmp.not = icmp eq i32 %prol.iter1602.next, %xtraiter1600
  br i1 %prol.iter1602.cmp.not, label %.lr.ph384.i.prol.loopexit, label %.lr.ph384.i.prol, !llvm.loop !142

.lr.ph384.i.prol.loopexit:                        ; preds = %.lr.ph384.i.prol, %.lr.ph384.preheader.i
  %.lcssa1537.unr = phi float [ poison, %.lr.ph384.preheader.i ], [ %i.avj, %.lr.ph384.i.prol ]
  %indvars.iv440.i.unr = phi i64 [ %i.ave, %.lr.ph384.preheader.i ], [ %indvars.iv.next441.i.prol, %.lr.ph384.i.prol ]
  %.3173383.i.unr = phi float [ 0.000000e+00, %.lr.ph384.preheader.i ], [ %i.avj, %.lr.ph384.i.prol ]
  %i.avk = sub i32 %i.avb, %i.avd
  %i.avl = icmp ugt i32 %i.avk, -8
  br i1 %i.avl, label %_ZNK3gmx17RangePartitioning5blockEi.exit248.i, label %.lr.ph384.i

bb.jr:                                            ; preds = %.critedge387.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.83, i32 noundef 111) #28
          to label %.noexc240.i unwind label %bb.js

.noexc240.i:                                      ; preds = %bb.jr
  unreachable

bb.js:                                            ; preds = %bb.jr
  %i.avm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph384.i:                                      ; preds = %.lr.ph384.i.prol.loopexit, %.lr.ph384.i
  %indvars.iv440.i = phi i64 [ %indvars.iv.next441.i.7, %.lr.ph384.i ], [ %indvars.iv440.i.unr, %.lr.ph384.i.prol.loopexit ] ; 9 uses
  %.3173383.i = phi float [ %i.aws, %.lr.ph384.i ], [ %.3173383.i.unr, %.lr.ph384.i.prol.loopexit ]
  %i.avn = getelementptr inbounds [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 8
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !20
  %i.avq = fadd float %.3173383.i, %i.avp
  %i.avr = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.avs = getelementptr i8, ptr %i.avr, i64 20
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !20
  %i.avu = fadd float %i.avq, %i.avt
  %i.avv = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.avw = getelementptr i8, ptr %i.avv, i64 32
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !20
  %i.avy = fadd float %i.avu, %i.avx
  %i.avz = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.awa = getelementptr i8, ptr %i.avz, i64 44
  %i.awb = load float, ptr %i.awa, align 4, !tbaa !20
  %i.awc = fadd float %i.avy, %i.awb
  %i.awd = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.awe = getelementptr i8, ptr %i.awd, i64 56
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !20
  %i.awg = fadd float %i.awc, %i.awf
  %i.awh = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.awi = getelementptr i8, ptr %i.awh, i64 68
  %i.awj = load float, ptr %i.awi, align 4, !tbaa !20
  %i.awk = fadd float %i.awg, %i.awj
  %i.awl = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.awm = getelementptr i8, ptr %i.awl, i64 80
  %i.awn = load float, ptr %i.awm, align 4, !tbaa !20
  %i.awo = fadd float %i.awk, %i.awn
  %i.awp = getelementptr [12 x i8], ptr %i.aju, i64 %indvars.iv440.i
  %i.awq = getelementptr i8, ptr %i.awp, i64 92
  %i.awr = load float, ptr %i.awq, align 4, !tbaa !20
  %i.aws = fadd float %i.awo, %i.awr              ; 2 uses
  %indvars.iv.next441.i.7 = add nsw i64 %indvars.iv440.i, 8 ; 2 uses
  %i.awt = trunc nsw i64 %indvars.iv.next441.i.7 to i32
  %.not281.i.7 = icmp eq i32 %i.avd, %i.awt
  br i1 %.not281.i.7, label %_ZNK3gmx17RangePartitioning5blockEi.exit248.i, label %.lr.ph384.i

_ZNK3gmx17RangePartitioning5blockEi.exit248.i:    ; preds = %.lr.ph384.i.prol.loopexit, %.lr.ph384.i, %.preheader.i321
  %.3173.lcssa.i = phi float [ 0.000000e+00, %.preheader.i321 ], [ %.lcssa1537.unr, %.lr.ph384.i.prol.loopexit ], [ %i.aws, %.lr.ph384.i ]
  %i.awu = sub nsw i32 %i.avd, %i.avb
  %i.awv = sitofp i32 %i.awu to float
  %i.aww = fdiv float %.3173.lcssa.i, %i.awv      ; 2 uses
  %i.awx = icmp sgt i32 %.5186.i, %.5179.i
  br i1 %i.awx, label %bb.jt, label %bb.jv

bb.jt:                                            ; preds = %_ZNK3gmx17RangePartitioning5blockEi.exit248.i
  %i.awy = load float, ptr %i.yd, align 4, !tbaa !365
  %i.awz = fcmp olt float %i.aww, %i.awy
  br i1 %i.awz, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.axa = load ptr, ptr %i.akg, align 8, !tbaa !371
  %i.axb = sext i32 %.3192.i to i64               ; 2 uses
  %i.axc = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.axb
  store i32 %i.atn, ptr %i.axc, align 4, !tbaa !30
  %i.axd = load ptr, ptr %i.ajw, align 8, !tbaa !372
  %i.axe = getelementptr inbounds [4 x i8], ptr %i.axd, i64 %i.axb
  store i32 %i.atz, ptr %i.axe, align 4, !tbaa !30
  %i.axf = add nsw i32 %.3192.i, 1
  %i.axg = add nsw i32 %.5179.i, 1
  br label %bb.jy

bb.jv:                                            ; preds = %bb.jt, %_ZNK3gmx17RangePartitioning5blockEi.exit248.i
  %i.axh = icmp slt i32 %.5186.i, %.5179.i
  br i1 %i.axh, label %bb.jw, label %bb.jy

bb.jw:                                            ; preds = %bb.jv
  %i.axi = load float, ptr %i.yd, align 4, !tbaa !365
  %i.axj = fcmp ogt float %i.aww, %i.axi
  br i1 %i.axj, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %bb.jw
  %i.axk = load ptr, ptr %i.akg, align 8, !tbaa !371
  %i.axl = sext i32 %.3192.i to i64               ; 2 uses
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.axk, i64 %i.axl
  store i32 %i.atn, ptr %i.axm, align 4, !tbaa !30
  %i.axn = load ptr, ptr %i.ajw, align 8, !tbaa !372
  %i.axo = getelementptr inbounds [4 x i8], ptr %i.axn, i64 %i.axl
  store i32 %i.atz, ptr %i.axo, align 4, !tbaa !30
  %i.axp = add nsw i32 %.3192.i, 1
  %i.axq = add nsw i32 %.5186.i, 1
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.ju, %._crit_edge379.i
  %.4193.i = phi i32 [ %i.axf, %bb.ju ], [ %i.axp, %bb.jx ], [ %.3192.i, %bb.jw ], [ %.3192.i, %bb.jv ], [ %.3192.i, %._crit_edge379.i ]
  %.6187.i = phi i32 [ %.5186.i, %bb.ju ], [ %i.axq, %bb.jx ], [ %.5186.i, %bb.jw ], [ %.5186.i, %bb.jv ], [ %.5186.i, %._crit_edge379.i ]
  %.6180.i = phi i32 [ %i.axg, %bb.ju ], [ %.5179.i, %bb.jx ], [ %.5179.i, %bb.jw ], [ %.5179.i, %bb.jv ], [ %.5179.i, %._crit_edge379.i ]
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 1
  %i.axr = load i32, ptr %i.xl, align 8, !tbaa !361
  %i.axs = sext i32 %i.axr to i64
  %.not201.i = icmp slt i64 %indvars.iv443.i, %i.axs
  br i1 %.not201.i, label %bb.jl, label %bb.jz, !llvm.loop !143

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 1 dereferenceable(61) @.str.1, i8 noundef zeroext 2)
          to label %bb.ka unwind label %bb.kc

bb.ka:                                            ; preds = %bb.jz
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 709, ptr noundef nonnull @.str.80) #28
          to label %bb.kb unwind label %bb.kd

bb.kb:                                            ; preds = %bb.ka
  unreachable

bb.kc:                                            ; preds = %bb.jz
  %i.axt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ke

bb.kd:                                            ; preds = %bb.ka
  %i.axu = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_Z11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPf:bb.a
_ZNSt6vectorIhSaIhEE6resizeEm.exit.8.i:           ; preds = %bb.ne, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.8.i, %bb.nd, %bb.nc
  %i.bkw = getelementptr inbounds nuw i8, ptr %11, i64 192 ; 2 uses
  %i.bkx = getelementptr inbounds nuw i8, ptr %11, i64 200 ; 2 uses
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !86 ; 2 uses
  %i.bkz = load ptr, ptr %i.bkw, align 8, !tbaa !71 ; 2 uses
  %i.bla = ptrtoint ptr %i.bky to i64
  %i.blb = ptrtoint ptr %i.bkz to i64
  %i.blc = sub i64 %i.bla, %i.blb                 ; 3 uses
  %i.bld = icmp ult i64 %i.blc, %i.bbp
  br i1 %i.bld, label %bb.nh, label %bb.nf

bb.nf:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.8.i
  %i.ble = icmp ugt i64 %i.blc, %i.bbp
  br i1 %i.ble, label %bb.ng, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i

bb.ng:                                            ; preds = %bb.nf
  %i.blf = getelementptr inbounds nuw i8, ptr %i.bkz, i64 %i.bbp ; 2 uses
  %.not.i.i176.8.i = icmp eq ptr %i.bky, %i.blf
  br i1 %.not.i.i176.8.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.8.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.8.i: ; preds = %bb.ng
  store ptr %i.blf, ptr %i.bkx, align 8, !tbaa !86
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i

bb.nh:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.8.i
  %i.blg = sub nuw i64 %i.bbp, %i.blc
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bkw, i64 noundef %i.blg)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i unwind label %bb.ld

_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i:        ; preds = %bb.nh, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.8.i, %bb.ng, %bb.nf, %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.7.i
  %i.blh = getelementptr inbounds nuw i8, ptr %3, i64 664 ; 5 uses
  %i.bli = load ptr, ptr %i.blh, align 8, !tbaa !36 ; 3 uses
  %i.blj = getelementptr inbounds nuw i8, ptr %3, i64 672 ; 4 uses
  %i.blk = load ptr, ptr %i.blj, align 8, !tbaa !36 ; 3 uses
  %i.bll = icmp eq ptr %i.bli, %i.blk
  br i1 %i.bll, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i, label %bb.ni

bb.ni:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i
  %i.blm = ptrtoint ptr %i.blk to i64
  %i.bln = ptrtoint ptr %i.bli to i64
  %i.blo = sub i64 %i.blm, %i.bln                 ; 3 uses
  %i.blp = icmp ult i64 %i.blo, %i.bbp
  br i1 %i.blp, label %bb.nl, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.blq = icmp ugt i64 %i.blo, %i.bbp
  br i1 %i.blq, label %bb.nk, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i

bb.nk:                                            ; preds = %bb.nj
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bli, i64 %i.bbp ; 2 uses
  %.not.i.i174.9.i = icmp eq ptr %i.blk, %i.blr
  br i1 %.not.i.i174.9.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.9.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.9.i:    ; preds = %bb.nk
  store ptr %i.blr, ptr %i.blj, align 8, !tbaa !86
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i

bb.nl:                                            ; preds = %bb.ni
  %i.bls = sub nuw i64 %i.bbp, %i.blo
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.blh, i64 noundef %i.bls)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i unwind label %bb.ld

_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i:           ; preds = %bb.nl, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.9.i, %bb.nk, %bb.nj
  %i.blt = getelementptr inbounds nuw i8, ptr %11, i64 216 ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %11, i64 224 ; 2 uses
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !86 ; 2 uses
  %i.blw = load ptr, ptr %i.blt, align 8, !tbaa !71 ; 2 uses
  %i.blx = ptrtoint ptr %i.blv to i64
  %i.bly = ptrtoint ptr %i.blw to i64
  %i.blz = sub i64 %i.blx, %i.bly                 ; 3 uses
  %i.bma = icmp ult i64 %i.blz, %i.bbp
  br i1 %i.bma, label %bb.no, label %bb.nm

bb.nm:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i
  %i.bmb = icmp ugt i64 %i.blz, %i.bbp
  br i1 %i.bmb, label %bb.nn, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i

bb.nn:                                            ; preds = %bb.nm
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blw, i64 %i.bbp ; 2 uses
  %.not.i.i176.9.i = icmp eq ptr %i.blv, %i.bmc
  br i1 %.not.i.i176.9.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.9.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.9.i: ; preds = %bb.nn
  store ptr %i.bmc, ptr %i.blu, align 8, !tbaa !86
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i

bb.no:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.9.i
  %i.bmd = sub nuw i64 %i.bbp, %i.blz
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.blt, i64 noundef %i.bmd)
          to label %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i unwind label %bb.ld

_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i:        ; preds = %bb.no, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i177.9.i, %bb.nn, %bb.nm, %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.8.i
  %i.bme = load ptr, ptr %i.pp, align 8, !tbaa !348 ; 9 uses
  %i.bmf = getelementptr inbounds nuw i8, ptr %5, i64 456
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !348 ; 9 uses
  %i.bmh = load i32, ptr %5, align 8, !tbaa !347
  %i.bmi = icmp sgt i32 %i.bmh, 0
  br i1 %i.bmi, label %.preheader223.lr.ph.i, label %._crit_edge259.i

.preheader223.lr.ph.i:                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i
  %i.bmj = icmp sgt i32 %.0139.lcssa.i, 0
  %wide.trip.count.i351 = zext i32 %.0139.lcssa.i to i64 ; 6 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bml = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bmm = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bmn = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.bmo = getelementptr inbounds nuw i8, ptr %11, i64 120
  %i.bmp = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.bmq = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.bmr = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.bms = getelementptr inbounds nuw i8, ptr %11, i64 216
  %min.iters.check1397 = icmp ult i32 %.0139.lcssa.i, 8
  %min.iters.check1399 = icmp ult i32 %.0139.lcssa.i, 32
  %i.bmt = and i64 %wide.trip.count.i351, 24
  %n.vec1401 = and i64 %wide.trip.count.i351, 2147483616 ; 4 uses
  %cmp.n1426 = icmp eq i64 %n.vec1401, %wide.trip.count.i351
  %min.epilog.iters.check1433 = icmp eq i64 %i.bmt, 0
  %n.vec1435 = and i64 %wide.trip.count.i351, 2147483640 ; 3 uses
  %cmp.n1447 = icmp eq i64 %n.vec1435, %wide.trip.count.i351
  br label %.preheader223.i

.preheader223.i:                                  ; preds = %.loopexit.i352, %.preheader223.lr.ph.i
  %indvars.iv302.i = phi i64 [ 0, %.preheader223.lr.ph.i ], [ %indvars.iv.next303.i, %.loopexit.i352 ] ; 19 uses
  %.0141258.i = phi i32 [ 0, %.preheader223.lr.ph.i ], [ %.1142.lcssa436.i, %.loopexit.i352 ] ; 4 uses
  br i1 %i.bmj, label %iter.check1430, label %.preheader222.i

iter.check1430:                                   ; preds = %.preheader223.i
  br i1 %min.iters.check1397, label %.lr.ph245.i.preheader, label %vector.main.loop.iter.check1398

vector.main.loop.iter.check1398:                  ; preds = %iter.check1430
  br i1 %min.iters.check1399, label %vec.epilog.ph1434, label %vector.ph1400

vector.ph1400:                                    ; preds = %vector.main.loop.iter.check1398
  %i.bmu = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.0141258.i, i64 0
  %broadcast.splatinsert1402 = insertelement <8 x i64> poison, i64 %indvars.iv302.i, i64 0
  %broadcast.splat1403 = shufflevector <8 x i64> %broadcast.splatinsert1402, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.ph1400, %vector.body1404
  %index1405 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1418, %vector.body1404 ] ; 2 uses
  %vec.phi1406 = phi <8 x i32> [ %i.bmu, %vector.ph1400 ], [ %i.bnp, %vector.body1404 ]
  %vec.phi1407 = phi <8 x i32> [ zeroinitializer, %vector.ph1400 ], [ %i.bnq, %vector.body1404 ]
  %vec.phi1408 = phi <8 x i32> [ zeroinitializer, %vector.ph1400 ], [ %i.bnr, %vector.body1404 ]
  %vec.phi1409 = phi <8 x i32> [ zeroinitializer, %vector.ph1400 ], [ %i.bns, %vector.body1404 ]
  %vec.phi1410 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bnh, %vector.body1404 ]
  %vec.phi1411 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bni, %vector.body1404 ]
  %vec.phi1412 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bnj, %vector.body1404 ]
  %vec.phi1413 = phi <8 x i1> [ zeroinitializer, %vector.ph1400 ], [ %i.bnk, %vector.body1404 ]
  %i.bmv = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %index1405 ; 4 uses
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmv, i64 32
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.bmv, i64 64
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmv, i64 96
  %wide.load1414 = load <8 x i32>, ptr %i.bmv, align 4, !tbaa !30
  %wide.load1415 = load <8 x i32>, ptr %i.bmw, align 4, !tbaa !30
  %wide.load1416 = load <8 x i32>, ptr %i.bmx, align 4, !tbaa !30
  %wide.load1417 = load <8 x i32>, ptr %i.bmy, align 4, !tbaa !30
  %i.bmz = zext <8 x i32> %wide.load1414 to <8 x i64>
  %i.bna = zext <8 x i32> %wide.load1415 to <8 x i64>
  %i.bnb = zext <8 x i32> %wide.load1416 to <8 x i64>
  %i.bnc = zext <8 x i32> %wide.load1417 to <8 x i64>
  %i.bnd = icmp eq <8 x i64> %broadcast.splat1403, %i.bmz ; 2 uses
  %i.bne = icmp eq <8 x i64> %broadcast.splat1403, %i.bna ; 2 uses
  %i.bnf = icmp eq <8 x i64> %broadcast.splat1403, %i.bnb ; 2 uses
  %i.bng = icmp eq <8 x i64> %broadcast.splat1403, %i.bnc ; 2 uses
  %i.bnh = or <8 x i1> %vec.phi1410, %i.bnd       ; 2 uses
  %i.bni = or <8 x i1> %vec.phi1411, %i.bne       ; 2 uses
  %i.bnj = or <8 x i1> %vec.phi1412, %i.bnf       ; 2 uses
  %i.bnk = or <8 x i1> %vec.phi1413, %i.bng       ; 2 uses
  %i.bnl = zext <8 x i1> %i.bnd to <8 x i32>
  %i.bnm = zext <8 x i1> %i.bne to <8 x i32>
  %i.bnn = zext <8 x i1> %i.bnf to <8 x i32>
  %i.bno = zext <8 x i1> %i.bng to <8 x i32>
  %i.bnp = add <8 x i32> %vec.phi1406, %i.bnl     ; 2 uses
  %i.bnq = add <8 x i32> %vec.phi1407, %i.bnm     ; 2 uses
  %i.bnr = add <8 x i32> %vec.phi1408, %i.bnn     ; 2 uses
  %i.bns = add <8 x i32> %vec.phi1409, %i.bno     ; 2 uses
  %index.next1418 = add nuw i64 %index1405, 32    ; 2 uses
  %i.bnt = icmp eq i64 %index.next1418, %n.vec1401
  br i1 %i.bnt, label %middle.block1419, label %vector.body1404, !llvm.loop !151

middle.block1419:                                 ; preds = %vector.body1404
  %bin.rdx1420 = add <8 x i32> %i.bnq, %i.bnp
  %bin.rdx1421 = add <8 x i32> %i.bnr, %bin.rdx1420
  %bin.rdx1422 = add <8 x i32> %i.bns, %bin.rdx1421
  %i.bnu = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1422) ; 3 uses
  %bin.rdx1423 = or <8 x i1> %i.bni, %i.bnh
  %bin.rdx1424 = or <8 x i1> %i.bnj, %bin.rdx1423
  %bin.rdx1425 = or <8 x i1> %i.bnk, %bin.rdx1424
  %bin.rdx1425.fr = freeze <8 x i1> %bin.rdx1425
  %i.bnv = bitcast <8 x i1> %bin.rdx1425.fr to i8
  %i.bnw = icmp ne i8 %i.bnv, 0                   ; 3 uses
  br i1 %cmp.n1426, label %._crit_edge246.i, label %vec.epilog.iter.check1432

vec.epilog.iter.check1432:                        ; preds = %middle.block1419
  br i1 %min.epilog.iters.check1433, label %.lr.ph245.i.preheader, label %vec.epilog.ph1434, !prof !359

vec.epilog.ph1434:                                ; preds = %vector.main.loop.iter.check1398, %vec.epilog.iter.check1432
  %vec.epilog.resume.val1427 = phi i64 [ %n.vec1401, %vec.epilog.iter.check1432 ], [ 0, %vector.main.loop.iter.check1398 ]
  %bc.merge.rdx1428 = phi i32 [ %i.bnu, %vec.epilog.iter.check1432 ], [ %.0141258.i, %vector.main.loop.iter.check1398 ]
  %bc.merge.rdx1429 = phi i1 [ %i.bnw, %vec.epilog.iter.check1432 ], [ false, %vector.main.loop.iter.check1398 ]
  %broadcast.splatinsert1436 = insertelement <8 x i1> poison, i1 %bc.merge.rdx1429, i64 0
  %broadcast.splat1437 = shufflevector <8 x i1> %broadcast.splatinsert1436, <8 x i1> poison, <8 x i32> zeroinitializer
  %55 = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1428, i64 0
  %broadcast.splatinsert1438 = insertelement <8 x i64> poison, i64 %indvars.iv302.i, i64 0
  %broadcast.splat1439 = shufflevector <8 x i64> %broadcast.splatinsert1438, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body1440

vec.epilog.vector.body1440:                       ; preds = %vec.epilog.vector.body1440, %vec.epilog.ph1434
  %index1441 = phi i64 [ %vec.epilog.resume.val1427, %vec.epilog.ph1434 ], [ %index.next1445, %vec.epilog.vector.body1440 ] ; 2 uses
  %vec.phi1442 = phi <8 x i32> [ %55, %vec.epilog.ph1434 ], [ %i.boc, %vec.epilog.vector.body1440 ]
  %vec.phi1443 = phi <8 x i1> [ %broadcast.splat1437, %vec.epilog.ph1434 ], [ %i.boa, %vec.epilog.vector.body1440 ]
  %i.bnx = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %index1441
  %wide.load1444 = load <8 x i32>, ptr %i.bnx, align 4, !tbaa !30
  %i.bny = zext <8 x i32> %wide.load1444 to <8 x i64>
  %i.bnz = icmp eq <8 x i64> %broadcast.splat1439, %i.bny
  %.fr = freeze <8 x i1> %i.bnz                   ; 2 uses
  %i.boa = or <8 x i1> %vec.phi1443, %.fr         ; 2 uses
  %i.bob = zext <8 x i1> %.fr to <8 x i32>
  %i.boc = add <8 x i32> %vec.phi1442, %i.bob     ; 2 uses
  %index.next1445 = add nuw i64 %index1441, 8     ; 2 uses
  %i.bod = icmp eq i64 %index.next1445, %n.vec1435
  br i1 %i.bod, label %vec.epilog.middle.block1446, label %vec.epilog.vector.body1440, !llvm.loop !152

vec.epilog.middle.block1446:                      ; preds = %vec.epilog.vector.body1440
  %i.boe = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.boc) ; 2 uses
  %i.bof = bitcast <8 x i1> %i.boa to i8
  %i.bog = icmp ne i8 %i.bof, 0                   ; 2 uses
  br i1 %cmp.n1447, label %._crit_edge246.i, label %.lr.ph245.i.preheader

.lr.ph245.i.preheader:                            ; preds = %iter.check1430, %vec.epilog.iter.check1432, %vec.epilog.middle.block1446
  %indvars.iv288.i.ph = phi i64 [ 0, %iter.check1430 ], [ %n.vec1401, %vec.epilog.iter.check1432 ], [ %n.vec1435, %vec.epilog.middle.block1446 ]
  %.1142243.i.ph = phi i32 [ %.0141258.i, %iter.check1430 ], [ %i.bnu, %vec.epilog.iter.check1432 ], [ %i.boe, %vec.epilog.middle.block1446 ]
  %.0159242.i.ph = phi i1 [ false, %iter.check1430 ], [ %i.bnw, %vec.epilog.iter.check1432 ], [ %i.bog, %vec.epilog.middle.block1446 ]
  br label %.lr.ph245.i

._crit_edge259.i:                                 ; preds = %.loopexit.i352, %_ZNSt6vectorIhSaIhEE6resizeEm.exit179.9.i
  invoke void @_ZN7t_state14changeNumAtomsEi(ptr noundef nonnull align 8 dereferenceable(840) %5, i32 noundef %i.bbo)
          to label %.preheader219.i unwind label %bb.np

.preheader219.i:                                  ; preds = %._crit_edge259.i
  %i.boh = load i32, ptr %5, align 8, !tbaa !347  ; 3 uses
  %i.boi = icmp sgt i32 %i.boh, 0
  br i1 %i.boi, label %.lr.ph261.preheader.i, label %._crit_edge262.i

.lr.ph261.preheader.i:                            ; preds = %.preheader219.i
  %wide.trip.count308.i = zext nneg i32 %i.boh to i64 ; 6 uses
  %min.iters.check1453 = icmp ult i32 %i.boh, 8
  br i1 %min.iters.check1453, label %.lr.ph261.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph261.preheader.i
  %i.boj = mul nuw nsw i64 %wide.trip.count308.i, 12 ; 2 uses
  %i.bok = getelementptr i8, ptr %i.bme, i64 %i.boj
  %i.bol = getelementptr i8, ptr %i.bbq, i64 %i.boj
  %bound0 = icmp ult ptr %i.bme, %i.bol
  %bound1 = icmp ult ptr %i.bbq, %i.bok
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph261.i.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %vector.memcheck
  %n.vec1455 = and i64 %wide.trip.count308.i, 2147483640 ; 3 uses
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1460, %vector.body1456 ] ; 3 uses
  %i.bom = getelementptr inbounds nuw [12 x i8], ptr %i.bbq, i64 %index1457
  %i.bon = getelementptr inbounds nuw [12 x i8], ptr %i.bme, i64 %index1457
  %wide.vec = load <24 x float>, ptr %i.bom, align 4, !tbaa !20, !alias.scope !418
  store <24 x float> %wide.vec, ptr %i.bon, align 4, !tbaa !20, !alias.scope !419, !noalias !418
  %index.next1460 = add nuw i64 %index1457, 8     ; 2 uses
  %i.boo = icmp eq i64 %index.next1460, %n.vec1455
  br i1 %i.boo, label %middle.block1461, label %vector.body1456, !llvm.loop !156

middle.block1461:                                 ; preds = %vector.body1456
  %cmp.n1462 = icmp eq i64 %n.vec1455, %wide.trip.count308.i
  br i1 %cmp.n1462, label %._crit_edge262.i, label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph261.preheader.i, %middle.block1461
  %indvars.iv305.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph261.preheader.i ], [ %n.vec1455, %middle.block1461 ] ; 3 uses
  %xtraiter1603 = and i64 %wide.trip.count308.i, 3 ; 2 uses
  %lcmp.mod1604.not = icmp eq i64 %xtraiter1603, 0
  br i1 %lcmp.mod1604.not, label %.lr.ph261.i.prol.loopexit, label %.lr.ph261.i.prol

.lr.ph261.i.prol:                                 ; preds = %.lr.ph261.i.preheader, %.lr.ph261.i.prol
  %indvars.iv305.i.prol = phi i64 [ %indvars.iv.next306.i.prol, %.lr.ph261.i.prol ], [ %indvars.iv305.i.ph, %.lr.ph261.i.preheader ] ; 3 uses
  %prol.iter1605 = phi i64 [ %prol.iter1605.next, %.lr.ph261.i.prol ], [ 0, %.lr.ph261.i.preheader ]
  %i.bop = getelementptr inbounds nuw [12 x i8], ptr %i.bbq, i64 %indvars.iv305.i.prol ; 3 uses
  %i.boq = getelementptr inbounds nuw [12 x i8], ptr %i.bme, i64 %indvars.iv305.i.prol ; 3 uses
  %i.bor = load float, ptr %i.bop, align 4, !tbaa !20
  store float %i.bor, ptr %i.boq, align 4, !tbaa !20
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bop, i64 4
  %i.bot = load float, ptr %i.bos, align 4, !tbaa !20
  %i.bou = getelementptr inbounds nuw i8, ptr %i.boq, i64 4
  store float %i.bot, ptr %i.bou, align 4, !tbaa !20
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bop, i64 8
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !20
  %i.box = getelementptr inbounds nuw i8, ptr %i.boq, i64 8
  store float %i.bow, ptr %i.box, align 4, !tbaa !20
  %indvars.iv.next306.i.prol = add nuw nsw i64 %indvars.iv305.i.prol, 1 ; 2 uses
  %prol.iter1605.next = add i64 %prol.iter1605, 1 ; 2 uses
  %prol.iter1605.cmp.not = icmp eq i64 %prol.iter1605.next, %xtraiter1603
  br i1 %prol.iter1605.cmp.not, label %.lr.ph261.i.prol.loopexit, label %.lr.ph261.i.prol, !llvm.loop !157

.lr.ph261.i.prol.loopexit:                        ; preds = %.lr.ph261.i.prol, %.lr.ph261.i.preheader
  %indvars.iv305.i.unr = phi i64 [ %indvars.iv305.i.ph, %.lr.ph261.i.preheader ], [ %indvars.iv.next306.i.prol, %.lr.ph261.i.prol ]
  %i.boy = sub nsw i64 %indvars.iv305.i.ph, %wide.trip.count308.i
  %i.boz = icmp ugt i64 %i.boy, -4
  br i1 %i.boz, label %._crit_edge262.i, label %.lr.ph261.i

bb.np:                                            ; preds = %bb.pb, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit._crit_edge.i, %._crit_edge262.i, %._crit_edge259.i
  %i.bpa = landingpad { ptr, i32 }
          cleanup
  br label %bb.pk

.lr.ph245.i:                                      ; preds = %.lr.ph245.i.preheader, %.lr.ph245.i
  %indvars.iv288.i = phi i64 [ %indvars.iv.next289.i, %.lr.ph245.i ], [ %indvars.iv288.i.ph, %.lr.ph245.i.preheader ] ; 2 uses
  %.1142243.i = phi i32 [ %spec.select171.i, %.lr.ph245.i ], [ %.1142243.i.ph, %.lr.ph245.i.preheader ]
  %.0159242.i = phi i1 [ %spec.select.i353, %.lr.ph245.i ], [ %.0159242.i.ph, %.lr.ph245.i.preheader ]
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr %i.bbf, i64 %indvars.iv288.i
  %i.bpc = load i32, ptr %i.bpb, align 4, !tbaa !30
  %i.bpd = zext i32 %i.bpc to i64
  %i.bpe = icmp eq i64 %indvars.iv302.i, %i.bpd   ; 2 uses
  %spec.select.i353 = select i1 %i.bpe, i1 true, i1 %.0159242.i ; 2 uses
  %i.bpf = zext i1 %i.bpe to i32
  %spec.select171.i = add nsw i32 %.1142243.i, %i.bpf ; 2 uses
  %indvars.iv.next289.i = add nuw nsw i64 %indvars.iv288.i, 1 ; 2 uses
  %exitcond.not.i354 = icmp eq i64 %indvars.iv.next289.i, %wide.trip.count.i351
  br i1 %exitcond.not.i354, label %._crit_edge246.i, label %.lr.ph245.i, !llvm.loop !158

._crit_edge246.i:                                 ; preds = %.lr.ph245.i, %vec.epilog.middle.block1446, %middle.block1419
  %spec.select.i353.lcssa = phi i1 [ %i.bog, %vec.epilog.middle.block1446 ], [ %i.bnw, %middle.block1419 ], [ %spec.select.i353, %.lr.ph245.i ]
  %spec.select171.i.lcssa = phi i32 [ %i.boe, %vec.epilog.middle.block1446 ], [ %i.bnu, %middle.block1419 ], [ %spec.select171.i, %.lr.ph245.i ] ; 2 uses
  br i1 %spec.select.i353.lcssa, label %.loopexit.i352, label %.preheader222.i

.preheader222.i:                                  ; preds = %._crit_edge246.i, %.preheader223.i
  %.1142.lcssa435.i = phi i32 [ %spec.select171.i.lcssa, %._crit_edge246.i ], [ %.0141258.i, %.preheader223.i ] ; 3 uses
  %i.bpg = trunc nuw nsw i64 %indvars.iv302.i to i32
  %i.bph = sub nsw i32 %i.bpg, %.1142.lcssa435.i  ; 3 uses
  %i.bpi = sext i32 %i.bph to i64                 ; 12 uses
  %i.bpj = load ptr, ptr %i.bdh, align 8, !tbaa !36 ; 2 uses
  %i.bpk = load ptr, ptr %i.bdj, align 8, !tbaa !36
  %i.bpl = icmp eq ptr %i.bpj, %i.bpk
  br i1 %i.bpl, label %bb.nr, label %bb.nq

.lr.ph252.i:                                      ; preds = %bb.oj
  %i.bpm = load ptr, ptr %i.ii, align 8, !tbaa !65
  br label %bb.ok

bb.nq:                                            ; preds = %.preheader222.i
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpj, i64 %indvars.iv302.i
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !43
  %i.bpp = load ptr, ptr %11, align 8, !tbaa !71
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 %i.bpi
  store i8 %i.bpo, ptr %i.bpq, align 1, !tbaa !43
  br label %bb.nr

bb.nr:                                            ; preds = %bb.nq, %.preheader222.i
  %i.bpr = load ptr, ptr %i.bef, align 8, !tbaa !36 ; 2 uses
  %i.bps = load ptr, ptr %i.beh, align 8, !tbaa !36
  %i.bpt = icmp eq ptr %i.bpr, %i.bps
  br i1 %i.bpt, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpr, i64 %indvars.iv302.i
  %i.bpv = load i8, ptr %i.bpu, align 1, !tbaa !43
  %i.bpw = load ptr, ptr %i.bmk, align 8, !tbaa !71
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 %i.bpi
  store i8 %i.bpv, ptr %i.bpx, align 1, !tbaa !43
  br label %bb.nt

bb.nt:                                            ; preds = %bb.ns, %bb.nr
  %i.bpy = load ptr, ptr %i.bfc, align 8, !tbaa !36 ; 2 uses
  %i.bpz = load ptr, ptr %i.bfe, align 8, !tbaa !36
  %i.bqa = icmp eq ptr %i.bpy, %i.bpz
  br i1 %i.bqa, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpy, i64 %indvars.iv302.i
  %i.bqc = load i8, ptr %i.bqb, align 1, !tbaa !43
  %i.bqd = load ptr, ptr %i.bml, align 8, !tbaa !71
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bqd, i64 %i.bpi
  store i8 %i.bqc, ptr %i.bqe, align 1, !tbaa !43
  br label %bb.nv

bb.nv:                                            ; preds = %bb.nu, %bb.nt
  %i.bqf = load ptr, ptr %i.bfz, align 8, !tbaa !36 ; 2 uses
  %i.bqg = load ptr, ptr %i.bgb, align 8, !tbaa !36
  %i.bqh = icmp eq ptr %i.bqf, %i.bqg
  br i1 %i.bqh, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqf, i64 %indvars.iv302.i
  %i.bqj = load i8, ptr %i.bqi, align 1, !tbaa !43
  %i.bqk = load ptr, ptr %i.bmm, align 8, !tbaa !71
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqk, i64 %i.bpi
  store i8 %i.bqj, ptr %i.bql, align 1, !tbaa !43
  br label %bb.nx

bb.nx:                                            ; preds = %bb.nw, %bb.nv
  %i.bqm = load ptr, ptr %i.bgw, align 8, !tbaa !36 ; 2 uses
  %i.bqn = load ptr, ptr %i.bgy, align 8, !tbaa !36
  %i.bqo = icmp eq ptr %i.bqm, %i.bqn
  br i1 %i.bqo, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqm, i64 %indvars.iv302.i
  %i.bqq = load i8, ptr %i.bqp, align 1, !tbaa !43
  %i.bqr = load ptr, ptr %i.bmn, align 8, !tbaa !71
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqr, i64 %i.bpi
  store i8 %i.bqq, ptr %i.bqs, align 1, !tbaa !43
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.bqt = load ptr, ptr %i.bht, align 8, !tbaa !36 ; 2 uses
  %i.bqu = load ptr, ptr %i.bhv, align 8, !tbaa !36
  %i.bqv = icmp eq ptr %i.bqt, %i.bqu
end_hunk_3
begin_hunk_4_@"_ZN9__gnu_cxx5__ops10_Iter_predIZ11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPfE3$_0EclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISP_SaISP_EEEEEEbT_":bb.a
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !42
  %i.g = load i64, ptr %i.a, align 8, !tbaa !89
  store i64 %i.g, ptr %i.b, align 8, !tbaa !43
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.i = load i8, ptr %.0.val.0.val, align 1, !tbaa !43
  store i8 %i.i, ptr %i.h, align 1, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull readonly align 1 %.0.val.0.val, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !60
  %i.l = load ptr, ptr %1, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.n = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %"_ZZ11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPfENK3$_0clINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.q = load i64, ptr %i.b, align 8, !tbaa !43
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #27
  br label %"_ZZ11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPfENK3$_0clINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit"

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.b
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.b, align 8, !tbaa !43
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %i.s

"_ZZ11init_membedP8_IO_FILEiPK8t_filenmP10gmx_mtop_tP10t_inputrecP7t_stateP9t_commrecPfENK3$_0clINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDaRKT_.exit": ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret i1 %i.n
}

declare noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -2147483647, -2147483648) i32 @_ZL14get_mtype_listP7t_blockRK10gmx_mtop_tS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %1, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !64
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 173, i64 noundef %i.c, i64 noundef 4) ; 6 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !32
  %i.e = load i32, ptr %0, align 8, !tbaa !64     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph30, label %._crit_edge31

.lr.ph30:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !75   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 56
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph30, %bb.f
  %i.t = phi i32 [ %i.e, %.lr.ph30 ], [ %i.bk, %bb.f ]
  %indvars.iv34 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next35, %bb.f ] ; 2 uses
  %.01928 = phi i32 [ 0, %.lr.ph30 ], [ %.120, %bb.f ] ; 7 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv34
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.w = phi i32 [ 0, %bb.b ], [ %i.ag, %bb.e ]   ; 3 uses
  %.026.i.i = phi i32 [ -1, %bb.b ], [ %.127.i.i, %bb.e ]
  %.0.i.i = phi i32 [ %i.q, %bb.b ], [ %.1.i.i, %bb.e ]
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80
  %i.ab = icmp slt i32 %i.v, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %.not.i.i = icmp slt i32 %i.v, %i.ad
  br i1 %.not.i.i, label %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.127.i.i = phi i32 [ %.026.i.i, %bb.c ], [ %i.w, %bb.d ] ; 2 uses
  %.1.i.i = phi i32 [ %i.w, %bb.c ], [ %.0.i.i, %bb.d ] ; 2 uses
  %i.ae = add nsw i32 %.127.i.i, 1
  %i.af = add i32 %i.ae, %.1.i.i
  %i.ag = ashr i32 %i.af, 1
  br label %bb.c, !llvm.loop !4

_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit:         ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.x
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !84 ; 4 uses
  %i.aj = icmp sgt i32 %.01928, 0
  br i1 %i.aj, label %iter.check, label %.critedge

iter.check:                                       ; preds = %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit
  %wide.trip.count = zext nneg i32 %.01928 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.01928, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check38 = icmp ult i32 %.01928, 32
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi39 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi40 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi41 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %wide.load = load <8 x i32>, ptr %i.al, align 4, !tbaa !30
  %wide.load42 = load <8 x i32>, ptr %i.am, align 4, !tbaa !30
  %wide.load43 = load <8 x i32>, ptr %i.an, align 4, !tbaa !30
  %wide.load44 = load <8 x i32>, ptr %i.ao, align 4, !tbaa !30
  %i.ap = icmp eq <8 x i32> %wide.load, %broadcast.splat
  %i.aq = icmp eq <8 x i32> %wide.load42, %broadcast.splat
  %i.ar = icmp eq <8 x i32> %wide.load43, %broadcast.splat
  %i.as = icmp eq <8 x i32> %wide.load44, %broadcast.splat
  %i.at = or <8 x i1> %vec.phi, %i.ap             ; 2 uses
  %i.au = or <8 x i1> %vec.phi39, %i.aq           ; 2 uses
  %i.av = or <8 x i1> %vec.phi40, %i.ar           ; 2 uses
  %i.aw = or <8 x i1> %vec.phi41, %i.as           ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !473

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.au, %i.at
  %bin.rdx45 = or <8 x i1> %i.av, %bin.rdx
  %bin.rdx46 = or <8 x i1> %i.aw, %bin.rdx45
  %bin.rdx46.fr = freeze <8 x i1> %bin.rdx46
  %i.ay = bitcast <8 x i1> %bin.rdx46.fr to i8
  %.not = icmp eq i8 %i.ay, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !83

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %3 = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert48 = insertelement <4 x i1> poison, i1 %3, i64 0
  %broadcast.splat49 = shufflevector <4 x i1> %broadcast.splatinsert48, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index52 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next55, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi53 = phi <4 x i1> [ %broadcast.splat49, %vec.epilog.ph ], [ %.fr58, %vec.epilog.vector.body ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index52
  %wide.load54 = load <4 x i32>, ptr %i.az, align 4, !tbaa !30
  %i.ba = icmp eq <4 x i32> %wide.load54, %broadcast.splat51
  %i.bb = or <4 x i1> %vec.phi53, %i.ba
  %.fr58 = freeze <4 x i1> %i.bb                  ; 2 uses
  %index.next55 = add nuw i64 %index52, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next55, %n.vec47
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !474

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bd = bitcast <4 x i1> %.fr58 to i4
  %.not59 = icmp eq i4 %i.bd, 0                   ; 2 uses
  %cmp.n56 = icmp eq i64 %n.vec47, %wide.trip.count
  br i1 %cmp.n56, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec47, %vec.epilog.middle.block ]
  %.026.ph = phi i1 [ true, %iter.check ], [ %.not, %vec.epilog.iter.check ], [ %.not59, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.026 = phi i1 [ %spec.select, %.lr.ph ], [ %.026.ph, %.lr.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !30
  %i.bg = icmp ne i32 %i.bf, %i.ai
  %spec.select = select i1 %i.bg, i1 %.026, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !475

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %.not59, %vec.epilog.middle.block ], [ %.not, %middle.block ], [ %spec.select, %.lr.ph ]
  br i1 %spec.select.lcssa, label %.critedge, label %bb.f

.critedge:                                        ; preds = %_ZL10get_mol_idiRK10gmx_mtop_tPiS2_.exit, %._crit_edge
  %i.bh = sext i32 %.01928 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bh
  store i32 %i.ai, ptr %i.bi, align 4, !tbaa !30
  %i.bj = add nsw i32 %.01928, 1
  %.pre = load i32, ptr %0, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.critedge
  %i.bk = phi i32 [ %.pre, %.critedge ], [ %i.t, %._crit_edge ] ; 2 uses
  %.120 = phi i32 [ %i.bj, %.critedge ], [ %.01928, %._crit_edge ] ; 2 uses
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next35, %i.bl
  br i1 %i.bm, label %bb.b, label %._crit_edge31, !llvm.loop !476

._crit_edge31:                                    ; preds = %bb.f, %bb.a
  %.019.lcssa = phi i32 [ 0, %bb.a ], [ %.120, %bb.f ] ; 2 uses
  %i.bn = sext i32 %.019.lcssa to i64
  %i.bo = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1, i32 noundef 192, ptr noundef %i.d, i64 noundef range(i64 -2147483648, 2147483648) %i.bn, i64 noundef 4)
  store ptr %i.bo, ptr %i.a, align 8, !tbaa !32
  ret i32 %.019.lcssa
}

declare void @_Z10done_blockP7t_block(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

declare void @_Z18gmx_mtop_moleculesRK10gmx_mtop_t(ptr dead_on_unwind writable sret(%"class.gmx::RangePartitioning") align 8, ptr noundef nonnull align 8 dereferenceable(768)) local_unnamed_addr #5

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN7t_state14changeNumAtomsEi(ptr noundef nonnull align 8 dereferenceable(840), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.c = load ptr, ptr %1, align 8, !tbaa !71     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.i = load ptr, ptr %0, align 8, !tbaa !71     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !93

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #30 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !95

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !43
  store i8 %i.q, ptr %i.o, align 1, !tbaa !43
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit: ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !94
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #27
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !94
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !86
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp sgt i64 %i.f, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !95

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !43
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !43
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !95

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %bb.p, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !43
  store i8 %i.ag, ptr %i.i, align 1, !tbaa !43
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ah = load ptr, ptr %1, align 8, !tbaa !71
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !86  ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !71
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.r, !prof !95

bb.q:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

end_hunk_4
