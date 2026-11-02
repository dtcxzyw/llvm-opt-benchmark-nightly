Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding_x86_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 241
begin_hunk_0_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  %wide.load1097 = load <8 x i64>, ptr %i.tx, align 8, !tbaa !113, !alias.scope !726
  %wide.load1098 = load <8 x i64>, ptr %i.ty, align 8, !tbaa !113, !alias.scope !726
  %wide.load1099 = load <8 x i64>, ptr %i.tz, align 8, !tbaa !113, !alias.scope !726
  %reverse1100 = shufflevector <8 x i64> %wide.load1096, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1101 = shufflevector <8 x i64> %wide.load1097, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1102 = shufflevector <8 x i64> %wide.load1098, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1103 = shufflevector <8 x i64> %wide.load1099, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ua = getelementptr i8, ptr %next.gep1095, i64 64
  %i.ub = getelementptr i8, ptr %next.gep1095, i64 128
  %i.uc = getelementptr i8, ptr %next.gep1095, i64 192
  store <8 x i64> %reverse1100, ptr %next.gep1095, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1101, ptr %i.ua, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1102, ptr %i.ub, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1103, ptr %i.uc, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  %index.next1104 = add nuw i64 %index1094, 32    ; 2 uses
  %i.ud = icmp eq i64 %index.next1104, %n.vec1092
  br i1 %i.ud, label %middle.block1105, label %vector.body1093, !llvm.loop !648

middle.block1105:                                 ; preds = %vector.body1093
  br i1 %cmp.n1106, label %..preheader8_crit_edge.us.i, label %vec.epilog.iter.check1108

vec.epilog.iter.check1108:                        ; preds = %middle.block1105
  br i1 %min.epilog.iters.check1110, label %vec.epilog.scalar.ph1109.preheader, label %vec.epilog.ph1111, !prof !117

vec.epilog.ph1111:                                ; preds = %vector.main.loop.iter.check1089, %vec.epilog.iter.check1108
  %vec.epilog.resume.val1112 = phi i64 [ %n.vec1092, %vec.epilog.iter.check1108 ], [ 0, %vector.main.loop.iter.check1089 ]
  %i.ue = getelementptr i8, ptr %.010023.us.i, i64 %i.tg ; 2 uses
  br label %vec.epilog.vector.body1114

vec.epilog.vector.body1114:                       ; preds = %vec.epilog.vector.body1114, %vec.epilog.ph1111
  %index1115 = phi i64 [ %vec.epilog.resume.val1112, %vec.epilog.ph1111 ], [ %index.next1119, %vec.epilog.vector.body1114 ] ; 3 uses
  %i.uf = shl i64 %index1115, 3
  %next.gep1116 = getelementptr i8, ptr %.010023.us.i, i64 %i.uf
  %i.ug = sub nuw nsw i64 %i.sm, %index1115
  %i.uh = shl nuw nsw i64 %i.ug, 3
  %i.ui = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %i.uh
  %i.uj = getelementptr inbounds i8, ptr %i.ui, i64 -56
  %wide.load1117 = load <8 x i64>, ptr %i.uj, align 8, !tbaa !113, !alias.scope !726
  %reverse1118 = shufflevector <8 x i64> %wide.load1117, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1118, ptr %next.gep1116, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  %index.next1119 = add nuw i64 %index1115, 8     ; 2 uses
  %i.uk = icmp eq i64 %index.next1119, %n.vec1113
  br i1 %i.uk, label %vec.epilog.middle.block1120, label %vec.epilog.vector.body1114, !llvm.loop !649

vec.epilog.middle.block1120:                      ; preds = %vec.epilog.vector.body1114
  br i1 %cmp.n1121, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1109.preheader

vec.epilog.scalar.ph1109.preheader:               ; preds = %iter.check1107, %vector.memcheck1084, %vec.epilog.iter.check1108, %vec.epilog.middle.block1120
  %indvars.iv142.i.ph = phi i64 [ 0, %iter.check1107 ], [ 0, %vector.memcheck1084 ], [ %n.vec1092, %vec.epilog.iter.check1108 ], [ %n.vec1113, %vec.epilog.middle.block1120 ] ; 3 uses
  %.110.us.i.ph = phi ptr [ %.010023.us.i, %iter.check1107 ], [ %.010023.us.i, %vector.memcheck1084 ], [ %i.tr, %vec.epilog.iter.check1108 ], [ %i.ue, %vec.epilog.middle.block1120 ] ; 2 uses
  br i1 %lcmp.mod1377.not, label %vec.epilog.scalar.ph1109.prol.loopexit, label %vec.epilog.scalar.ph1109.prol

vec.epilog.scalar.ph1109.prol:                    ; preds = %vec.epilog.scalar.ph1109.preheader, %vec.epilog.scalar.ph1109.prol
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %vec.epilog.scalar.ph1109.prol ], [ %indvars.iv142.i.ph, %vec.epilog.scalar.ph1109.preheader ] ; 2 uses
  %.110.us.i.prol = phi ptr [ %i.uo, %vec.epilog.scalar.ph1109.prol ], [ %.110.us.i.ph, %vec.epilog.scalar.ph1109.preheader ] ; 2 uses
  %prol.iter1378 = phi i64 [ %prol.iter1378.next, %vec.epilog.scalar.ph1109.prol ], [ 0, %vec.epilog.scalar.ph1109.preheader ]
  %i.ul = sub nuw nsw i64 %i.sm, %indvars.iv142.i.prol
  %.idx193.i.prol = shl nuw nsw i64 %i.ul, 3
  %i.um = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.prol
  %i.un = load i64, ptr %i.um, align 8, !tbaa !113
  store i64 %i.un, ptr %.110.us.i.prol, align 8, !tbaa !113
  %i.uo = getelementptr inbounds nuw i8, ptr %.110.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next143.i.prol = add nuw nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter1378.next = add i64 %prol.iter1378, 1 ; 2 uses
  %prol.iter1378.cmp.not = icmp eq i64 %prol.iter1378.next, %xtraiter1376
  br i1 %prol.iter1378.cmp.not, label %vec.epilog.scalar.ph1109.prol.loopexit, label %vec.epilog.scalar.ph1109.prol, !llvm.loop !650

vec.epilog.scalar.ph1109.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1109.prol, %vec.epilog.scalar.ph1109.preheader
  %.lcssa1337.unr = phi ptr [ poison, %vec.epilog.scalar.ph1109.preheader ], [ %i.uo, %vec.epilog.scalar.ph1109.prol ]
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %vec.epilog.scalar.ph1109.preheader ], [ %indvars.iv.next143.i.prol, %vec.epilog.scalar.ph1109.prol ]
  %.110.us.i.unr = phi ptr [ %.110.us.i.ph, %vec.epilog.scalar.ph1109.preheader ], [ %i.uo, %vec.epilog.scalar.ph1109.prol ]
  %i.up = sub nsw i64 %indvars.iv142.i.ph, %i.sm
  %i.uq = icmp ugt i64 %i.up, -4
  br i1 %i.uq, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1109

vec.epilog.scalar.ph1109:                         ; preds = %vec.epilog.scalar.ph1109.prol.loopexit, %vec.epilog.scalar.ph1109
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %vec.epilog.scalar.ph1109 ], [ %indvars.iv142.i.unr, %vec.epilog.scalar.ph1109.prol.loopexit ] ; 5 uses
  %.110.us.i = phi ptr [ %i.vg, %vec.epilog.scalar.ph1109 ], [ %.110.us.i.unr, %vec.epilog.scalar.ph1109.prol.loopexit ] ; 5 uses
  %i.ur = sub nuw nsw i64 %i.sm, %indvars.iv142.i
  %.idx193.i = shl nuw nsw i64 %i.ur, 3
  %i.us = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !113
  store i64 %i.ut, ptr %.110.us.i, align 8, !tbaa !113
  %i.uu = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 8
  %indvars.iv.next143.i.neg = xor i64 %indvars.iv142.i, -1
  %i.uv = add i64 %indvars.iv.next143.i.neg, %i.sm
  %.idx193.i.1 = shl nuw nsw i64 %i.uv, 3
  %i.uw = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.1
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !113
  store i64 %i.ux, ptr %i.uu, align 8, !tbaa !113
  %i.uy = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 16
  %indvars.iv.next143.i.1 = add nuw nsw i64 %indvars.iv142.i, 2
  %i.uz = sub nuw nsw i64 %i.sm, %indvars.iv.next143.i.1
  %.idx193.i.2 = shl nuw nsw i64 %i.uz, 3
  %i.va = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.2
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !113
  store i64 %i.vb, ptr %i.uy, align 8, !tbaa !113
  %i.vc = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 24
  %indvars.iv.next143.i.2 = add nuw nsw i64 %indvars.iv142.i, 3
  %i.vd = sub nuw nsw i64 %i.sm, %indvars.iv.next143.i.2
  %.idx193.i.3 = shl nuw nsw i64 %i.vd, 3
  %i.ve = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.3
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !113
  store i64 %i.vf, ptr %i.vc, align 8, !tbaa !113
  %i.vg = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 32 ; 2 uses
  %indvars.iv.next143.i.3 = add nuw nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %i.sm
  br i1 %exitcond146.not.i.3, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1109, !llvm.loop !651

.lr.ph15.us.i:                                    ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i
  %.09614.us.i = phi i32 [ %i.wf, %.lr.ph15.us.i ], [ %.09614.us.i.unr, %.lr.ph15.us.i.prol.loopexit ]
  %.09813.us.i = phi ptr [ %i.wd, %.lr.ph15.us.i ], [ %.09813.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %.212.us.i = phi ptr [ %i.we, %.lr.ph15.us.i ], [ %.212.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %i.vh = load i64, ptr %.09813.us.i, align 8, !tbaa !113
  store i64 %i.vh, ptr %.212.us.i, align 8, !tbaa !113
  %i.vi = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 8
  %i.vj = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 8
  %i.vk = load i64, ptr %i.vi, align 8, !tbaa !113
  store i64 %i.vk, ptr %i.vj, align 8, !tbaa !113
  %i.vl = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 16
  %i.vm = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 16
  %i.vn = load i64, ptr %i.vl, align 8, !tbaa !113
  store i64 %i.vn, ptr %i.vm, align 8, !tbaa !113
  %i.vo = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 24
  %i.vp = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 24
  %i.vq = load i64, ptr %i.vo, align 8, !tbaa !113
  store i64 %i.vq, ptr %i.vp, align 8, !tbaa !113
  %i.vr = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 32
  %i.vs = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 32
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !113
  store i64 %i.vt, ptr %i.vs, align 8, !tbaa !113
  %i.vu = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 40
  %i.vv = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 40
  %i.vw = load i64, ptr %i.vu, align 8, !tbaa !113
  store i64 %i.vw, ptr %i.vv, align 8, !tbaa !113
  %i.vx = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 48
  %i.vy = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 48
  %i.vz = load i64, ptr %i.vx, align 8, !tbaa !113
  store i64 %i.vz, ptr %i.vy, align 8, !tbaa !113
  %i.wa = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 56
  %i.wb = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 56
  %i.wc = load i64, ptr %i.wa, align 8, !tbaa !113
  store i64 %i.wc, ptr %i.wb, align 8, !tbaa !113
  %i.wd = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 64 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 64 ; 2 uses
  %i.wf = add nuw nsw i32 %.09614.us.i, 8         ; 2 uses
  %exitcond147.not.i.7 = icmp eq i32 %i.wf, %i.co
  br i1 %exitcond147.not.i.7, label %.preheader7.us.i, label %.lr.ph15.us.i, !llvm.loop !652

vec.epilog.scalar.ph1011:                         ; preds = %vec.epilog.scalar.ph1011.prol.loopexit, %vec.epilog.scalar.ph1011
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i.3, %vec.epilog.scalar.ph1011 ], [ %indvars.iv148.i.unr, %vec.epilog.scalar.ph1011.prol.loopexit ] ; 5 uses
  %.318.us.i = phi ptr [ %i.wt, %vec.epilog.scalar.ph1011 ], [ %.318.us.i.unr, %vec.epilog.scalar.ph1011.prol.loopexit ] ; 5 uses
  %.idx194.i = mul nsw i64 %indvars.iv148.i, -8
  %i.wg = getelementptr inbounds i8, ptr %i.xv, i64 %.idx194.i
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !113
  store i64 %i.wh, ptr %.318.us.i, align 8, !tbaa !113
  %i.wi = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 8
  %indvars.iv.next149.i.neg = xor i64 %indvars.iv148.i, -1
  %.idx194.i.1 = shl nsw i64 %indvars.iv.next149.i.neg, 3
  %i.wj = getelementptr inbounds i8, ptr %i.xv, i64 %.idx194.i.1
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !113
  store i64 %i.wk, ptr %i.wi, align 8, !tbaa !113
  %i.wl = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 16
  %i.wm = shl i64 %indvars.iv148.i, 3
  %.idx194.i.2 = sub i64 -16, %i.wm
  %i.wn = getelementptr inbounds i8, ptr %i.xv, i64 %.idx194.i.2
  %i.wo = load i64, ptr %i.wn, align 8, !tbaa !113
  store i64 %i.wo, ptr %i.wl, align 8, !tbaa !113
  %i.wp = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 24
  %i.wq = shl i64 %indvars.iv148.i, 3
  %.idx194.i.3 = sub i64 -24, %i.wq
  %i.wr = getelementptr inbounds i8, ptr %i.xv, i64 %.idx194.i.3
  %i.ws = load i64, ptr %i.wr, align 8, !tbaa !113
  store i64 %i.ws, ptr %i.wp, align 8, !tbaa !113
  %i.wt = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 32 ; 2 uses
  %indvars.iv.next149.i.3 = add nuw nsw i64 %indvars.iv148.i, 4 ; 2 uses
  %exitcond152.not.i.3 = icmp eq i64 %indvars.iv.next149.i.3, %wide.trip.count151.i
  br i1 %exitcond152.not.i.3, label %._crit_edge.us.i66, label %vec.epilog.scalar.ph1011, !llvm.loop !653

._crit_edge.us.i66:                               ; preds = %vec.epilog.scalar.ph1011.prol.loopexit, %vec.epilog.scalar.ph1011, %middle.block1007, %vec.epilog.middle.block1022, %.preheader7.us.i
  %.3.lcssa.us.i67 = phi ptr [ %.2.lcssa.us.i, %.preheader7.us.i ], [ %i.yl, %vec.epilog.middle.block1022 ], [ %i.xz, %middle.block1007 ], [ %.lcssa1340.unr, %vec.epilog.scalar.ph1011.prol.loopexit ], [ %i.wt, %vec.epilog.scalar.ph1011 ] ; 2 uses
  %i.wu = getelementptr inbounds [2 x i8], ptr %.010122.us.i, i64 %i.sl ; 2 uses
  %i.wv = add nuw nsw i32 %.09924.us.i, 1         ; 2 uses
  %exitcond153.not.i = icmp eq i32 %i.wv, %i.ry
  %indvar.next1032 = add i64 %indvar1031, 1
  br i1 %exitcond153.not.i, label %.preheader6.i, label %iter.check1107, !llvm.loop !654

.preheader7.us.i:                                 ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i, %middle.block1050, %vec.epilog.middle.block1065, %..preheader8_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %.lcssa257, %..preheader8_crit_edge.us.i ], [ %i.xl, %vec.epilog.middle.block1065 ], [ %i.xb, %middle.block1050 ], [ %.lcssa1338.unr, %.lr.ph15.us.i.prol.loopexit ], [ %i.we, %.lr.ph15.us.i ] ; 9 uses
  %.098.lcssa.us.i = phi ptr [ %.010122.us.i, %..preheader8_crit_edge.us.i ], [ %i.xk, %vec.epilog.middle.block1065 ], [ %i.xa, %middle.block1050 ], [ %.lcssa1339.unr, %.lr.ph15.us.i.prol.loopexit ], [ %i.wd, %.lr.ph15.us.i ] ; 3 uses
  br i1 %i.sj, label %iter.check1009, label %._crit_edge.us.i66

..preheader8_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph1109.prol.loopexit, %vec.epilog.scalar.ph1109, %vec.epilog.middle.block1120, %middle.block1105
  %.lcssa257 = phi ptr [ %i.ue, %vec.epilog.middle.block1120 ], [ %i.tr, %middle.block1105 ], [ %.lcssa1337.unr, %vec.epilog.scalar.ph1109.prol.loopexit ], [ %i.vg, %vec.epilog.scalar.ph1109 ] ; 8 uses
  br i1 %i.si, label %iter.check1052, label %.preheader7.us.i

iter.check1052:                                   ; preds = %..preheader8_crit_edge.us.i
  br i1 %min.iters.check1034, label %.lr.ph15.us.i.preheader, label %vector.memcheck1035

vector.memcheck1035:                              ; preds = %iter.check1052
  %i.ww = mul nsw i64 %indvar1031, %i.sp
  %i.wx = ptrtoaddr ptr %.lcssa257 to i64
  %i.wy = add i64 %i.ww, %i.wx
  %i.wz = sub i64 %i.ss, %i.wy
  %diff.check1036 = icmp ugt i64 %i.wz, -256
  br i1 %diff.check1036, label %.lr.ph15.us.i.preheader, label %vector.main.loop.iter.check1037

vector.main.loop.iter.check1037:                  ; preds = %vector.memcheck1035
  br i1 %min.iters.check1038, label %vec.epilog.ph1056, label %vector.ph1039

vector.ph1039:                                    ; preds = %vector.main.loop.iter.check1037
  %i.xa = getelementptr i8, ptr %.010122.us.i, i64 %i.tj ; 2 uses
  %i.xb = getelementptr i8, ptr %.lcssa257, i64 %i.tj ; 2 uses
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.ph1039, %vector.body1041
  %index1042 = phi i64 [ 0, %vector.ph1039 ], [ %index.next1049, %vector.body1041 ] ; 2 uses
  %i.xc = shl i64 %index1042, 3                   ; 2 uses
  %next.gep1043 = getelementptr i8, ptr %.010122.us.i, i64 %i.xc ; 4 uses
  %next.gep1044 = getelementptr i8, ptr %.lcssa257, i64 %i.xc ; 4 uses
  %i.xd = getelementptr i8, ptr %next.gep1043, i64 64
  %i.xe = getelementptr i8, ptr %next.gep1043, i64 128
  %i.xf = getelementptr i8, ptr %next.gep1043, i64 192
  %wide.load1045 = load <8 x i64>, ptr %next.gep1043, align 8, !tbaa !113
  %wide.load1046 = load <8 x i64>, ptr %i.xd, align 8, !tbaa !113
  %wide.load1047 = load <8 x i64>, ptr %i.xe, align 8, !tbaa !113
  %wide.load1048 = load <8 x i64>, ptr %i.xf, align 8, !tbaa !113
  %i.xg = getelementptr i8, ptr %next.gep1044, i64 64
  %i.xh = getelementptr i8, ptr %next.gep1044, i64 128
  %i.xi = getelementptr i8, ptr %next.gep1044, i64 192
  store <8 x i64> %wide.load1045, ptr %next.gep1044, align 8, !tbaa !113
  store <8 x i64> %wide.load1046, ptr %i.xg, align 8, !tbaa !113
  store <8 x i64> %wide.load1047, ptr %i.xh, align 8, !tbaa !113
  store <8 x i64> %wide.load1048, ptr %i.xi, align 8, !tbaa !113
  %index.next1049 = add nuw i64 %index1042, 32    ; 2 uses
  %i.xj = icmp eq i64 %index.next1049, %n.vec1040
  br i1 %i.xj, label %middle.block1050, label %vector.body1041, !llvm.loop !655

middle.block1050:                                 ; preds = %vector.body1041
  br i1 %cmp.n1051, label %.preheader7.us.i, label %vec.epilog.iter.check1053

vec.epilog.iter.check1053:                        ; preds = %middle.block1050
  br i1 %min.epilog.iters.check1055, label %.lr.ph15.us.i.preheader, label %vec.epilog.ph1056, !prof !117

vec.epilog.ph1056:                                ; preds = %vector.main.loop.iter.check1037, %vec.epilog.iter.check1053
  %vec.epilog.resume.val1057 = phi i64 [ %n.vec1040, %vec.epilog.iter.check1053 ], [ 0, %vector.main.loop.iter.check1037 ]
  %i.xk = getelementptr i8, ptr %.010122.us.i, i64 %i.tl ; 2 uses
  %i.xl = getelementptr i8, ptr %.lcssa257, i64 %i.tl ; 2 uses
  br label %vec.epilog.vector.body1059

vec.epilog.vector.body1059:                       ; preds = %vec.epilog.vector.body1059, %vec.epilog.ph1056
  %index1060 = phi i64 [ %vec.epilog.resume.val1057, %vec.epilog.ph1056 ], [ %index.next1064, %vec.epilog.vector.body1059 ] ; 2 uses
  %i.xm = shl i64 %index1060, 3                   ; 2 uses
  %next.gep1061 = getelementptr i8, ptr %.010122.us.i, i64 %i.xm
  %next.gep1062 = getelementptr i8, ptr %.lcssa257, i64 %i.xm
  %wide.load1063 = load <8 x i64>, ptr %next.gep1061, align 8, !tbaa !113
  store <8 x i64> %wide.load1063, ptr %next.gep1062, align 8, !tbaa !113
  %index.next1064 = add nuw i64 %index1060, 8     ; 2 uses
  %i.xn = icmp eq i64 %index.next1064, %n.vec1058
  br i1 %i.xn, label %vec.epilog.middle.block1065, label %vec.epilog.vector.body1059, !llvm.loop !656

vec.epilog.middle.block1065:                      ; preds = %vec.epilog.vector.body1059
  br i1 %cmp.n1066, label %.preheader7.us.i, label %.lr.ph15.us.i.preheader

.lr.ph15.us.i.preheader:                          ; preds = %iter.check1052, %vector.memcheck1035, %vec.epilog.iter.check1053, %vec.epilog.middle.block1065
  %.09614.us.i.ph = phi i32 [ 0, %iter.check1052 ], [ 0, %vector.memcheck1035 ], [ %i.ti, %vec.epilog.iter.check1053 ], [ %i.tk, %vec.epilog.middle.block1065 ] ; 4 uses
  %.09813.us.i.ph = phi ptr [ %.010122.us.i, %iter.check1052 ], [ %.010122.us.i, %vector.memcheck1035 ], [ %i.xa, %vec.epilog.iter.check1053 ], [ %i.xk, %vec.epilog.middle.block1065 ] ; 2 uses
  %.212.us.i.ph = phi ptr [ %.lcssa257, %iter.check1052 ], [ %.lcssa257, %vector.memcheck1035 ], [ %i.xb, %vec.epilog.iter.check1053 ], [ %i.xl, %vec.epilog.middle.block1065 ] ; 2 uses
  %i.xo = sub i32 %i.co, %.09614.us.i.ph
  %xtraiter1379 = and i32 %i.xo, 7                ; 2 uses
  %lcmp.mod1380.not = icmp eq i32 %xtraiter1379, 0
  br i1 %lcmp.mod1380.not, label %.lr.ph15.us.i.prol.loopexit, label %.lr.ph15.us.i.prol

.lr.ph15.us.i.prol:                               ; preds = %.lr.ph15.us.i.preheader, %.lr.ph15.us.i.prol
  %.09614.us.i.prol = phi i32 [ %i.xs, %.lr.ph15.us.i.prol ], [ %.09614.us.i.ph, %.lr.ph15.us.i.preheader ]
  %.09813.us.i.prol = phi ptr [ %i.xq, %.lr.ph15.us.i.prol ], [ %.09813.us.i.ph, %.lr.ph15.us.i.preheader ] ; 2 uses
  %.212.us.i.prol = phi ptr [ %i.xr, %.lr.ph15.us.i.prol ], [ %.212.us.i.ph, %.lr.ph15.us.i.preheader ] ; 2 uses
  %prol.iter1381 = phi i32 [ %prol.iter1381.next, %.lr.ph15.us.i.prol ], [ 0, %.lr.ph15.us.i.preheader ]
  %i.xp = load i64, ptr %.09813.us.i.prol, align 8, !tbaa !113
  store i64 %i.xp, ptr %.212.us.i.prol, align 8, !tbaa !113
  %i.xq = getelementptr inbounds nuw i8, ptr %.09813.us.i.prol, i64 8 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %.212.us.i.prol, i64 8 ; 3 uses
  %i.xs = add nuw nsw i32 %.09614.us.i.prol, 1    ; 2 uses
  %prol.iter1381.next = add i32 %prol.iter1381, 1 ; 2 uses
  %prol.iter1381.cmp.not = icmp eq i32 %prol.iter1381.next, %xtraiter1379
  br i1 %prol.iter1381.cmp.not, label %.lr.ph15.us.i.prol.loopexit, label %.lr.ph15.us.i.prol, !llvm.loop !657

.lr.ph15.us.i.prol.loopexit:                      ; preds = %.lr.ph15.us.i.prol, %.lr.ph15.us.i.preheader
  %.lcssa1339.unr = phi ptr [ poison, %.lr.ph15.us.i.preheader ], [ %i.xq, %.lr.ph15.us.i.prol ]
  %.lcssa1338.unr = phi ptr [ poison, %.lr.ph15.us.i.preheader ], [ %i.xr, %.lr.ph15.us.i.prol ]
  %.09614.us.i.unr = phi i32 [ %.09614.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xs, %.lr.ph15.us.i.prol ]
  %.09813.us.i.unr = phi ptr [ %.09813.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xq, %.lr.ph15.us.i.prol ]
  %.212.us.i.unr = phi ptr [ %.212.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xr, %.lr.ph15.us.i.prol ]
  %i.xt = sub i32 %.09614.us.i.ph, %i.co
  %i.xu = icmp ugt i32 %i.xt, -8
  br i1 %i.xu, label %.preheader7.us.i, label %.lr.ph15.us.i

iter.check1009:                                   ; preds = %.preheader7.us.i
  %i.xv = getelementptr inbounds i8, ptr %.098.lcssa.us.i, i64 -16 ; 7 uses
  br i1 %min.iters.check986, label %vec.epilog.scalar.ph1011.preheader, label %vector.memcheck987

vector.memcheck987:                               ; preds = %iter.check1009
  %i.xw = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.sn
  %i.xx = getelementptr i8, ptr %.098.lcssa.us.i, i64 %i.so
  %i.xy = getelementptr i8, ptr %.098.lcssa.us.i, i64 -8
  %bound0988 = icmp ult ptr %.2.lcssa.us.i, %i.xy
  %bound1989 = icmp ult ptr %i.xx, %i.xw
  %found.conflict990 = and i1 %bound0988, %bound1989
  br i1 %found.conflict990, label %vec.epilog.scalar.ph1011.preheader, label %vector.main.loop.iter.check991

vector.main.loop.iter.check991:                   ; preds = %vector.memcheck987
  br i1 %min.iters.check992, label %vec.epilog.ph1013, label %vector.ph993

vector.ph993:                                     ; preds = %vector.main.loop.iter.check991
  %i.xz = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.tn ; 2 uses
  br label %vector.body995

vector.body995:                                   ; preds = %vector.ph993, %vector.body995
  %index996 = phi i64 [ 0, %vector.ph993 ], [ %index.next1006, %vector.body995 ] ; 3 uses
  %i.ya = shl i64 %index996, 3
  %next.gep997 = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.ya ; 4 uses
  %i.yb = mul nsw i64 %index996, -8
  %i.yc = getelementptr inbounds i8, ptr %i.xv, i64 %i.yb ; 4 uses
  %i.yd = getelementptr inbounds i8, ptr %i.yc, i64 -56
  %i.ye = getelementptr inbounds i8, ptr %i.yc, i64 -120
  %i.yf = getelementptr inbounds i8, ptr %i.yc, i64 -184
  %i.yg = getelementptr inbounds i8, ptr %i.yc, i64 -248
  %wide.load998 = load <8 x i64>, ptr %i.yd, align 8, !tbaa !113, !alias.scope !728
  %wide.load999 = load <8 x i64>, ptr %i.ye, align 8, !tbaa !113, !alias.scope !728
  %wide.load1000 = load <8 x i64>, ptr %i.yf, align 8, !tbaa !113, !alias.scope !728
  %wide.load1001 = load <8 x i64>, ptr %i.yg, align 8, !tbaa !113, !alias.scope !728
  %reverse1002 = shufflevector <8 x i64> %wide.load998, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1003 = shufflevector <8 x i64> %wide.load999, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1004 = shufflevector <8 x i64> %wide.load1000, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1005 = shufflevector <8 x i64> %wide.load1001, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.yh = getelementptr i8, ptr %next.gep997, i64 64
  %i.yi = getelementptr i8, ptr %next.gep997, i64 128
  %i.yj = getelementptr i8, ptr %next.gep997, i64 192
  store <8 x i64> %reverse1002, ptr %next.gep997, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  store <8 x i64> %reverse1003, ptr %i.yh, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  store <8 x i64> %reverse1004, ptr %i.yi, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  store <8 x i64> %reverse1005, ptr %i.yj, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  %index.next1006 = add nuw i64 %index996, 32     ; 2 uses
  %i.yk = icmp eq i64 %index.next1006, %n.vec994
  br i1 %i.yk, label %middle.block1007, label %vector.body995, !llvm.loop !661

middle.block1007:                                 ; preds = %vector.body995
  br i1 %cmp.n1008, label %._crit_edge.us.i66, label %vec.epilog.iter.check1010

vec.epilog.iter.check1010:                        ; preds = %middle.block1007
  br i1 %min.epilog.iters.check1012, label %vec.epilog.scalar.ph1011.preheader, label %vec.epilog.ph1013, !prof !117

vec.epilog.ph1013:                                ; preds = %vector.main.loop.iter.check991, %vec.epilog.iter.check1010
  %vec.epilog.resume.val1014 = phi i64 [ %n.vec994, %vec.epilog.iter.check1010 ], [ 0, %vector.main.loop.iter.check991 ]
  %i.yl = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.to ; 2 uses
  br label %vec.epilog.vector.body1016

vec.epilog.vector.body1016:                       ; preds = %vec.epilog.vector.body1016, %vec.epilog.ph1013
  %index1017 = phi i64 [ %vec.epilog.resume.val1014, %vec.epilog.ph1013 ], [ %index.next1021, %vec.epilog.vector.body1016 ] ; 3 uses
  %i.ym = shl i64 %index1017, 3
  %next.gep1018 = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.ym
  %i.yn = mul nsw i64 %index1017, -8
  %i.yo = getelementptr inbounds i8, ptr %i.xv, i64 %i.yn
  %i.yp = getelementptr inbounds i8, ptr %i.yo, i64 -56
  %wide.load1019 = load <8 x i64>, ptr %i.yp, align 8, !tbaa !113, !alias.scope !728
  %reverse1020 = shufflevector <8 x i64> %wide.load1019, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1020, ptr %next.gep1018, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  %index.next1021 = add nuw i64 %index1017, 8     ; 2 uses
  %i.yq = icmp eq i64 %index.next1021, %n.vec1015
  br i1 %i.yq, label %vec.epilog.middle.block1022, label %vec.epilog.vector.body1016, !llvm.loop !662

vec.epilog.middle.block1022:                      ; preds = %vec.epilog.vector.body1016
  br i1 %cmp.n1023, label %._crit_edge.us.i66, label %vec.epilog.scalar.ph1011.preheader

vec.epilog.scalar.ph1011.preheader:               ; preds = %iter.check1009, %vector.memcheck987, %vec.epilog.iter.check1010, %vec.epilog.middle.block1022
  %indvars.iv148.i.ph = phi i64 [ 0, %iter.check1009 ], [ 0, %vector.memcheck987 ], [ %n.vec994, %vec.epilog.iter.check1010 ], [ %n.vec1015, %vec.epilog.middle.block1022 ] ; 3 uses
  %.318.us.i.ph = phi ptr [ %.2.lcssa.us.i, %iter.check1009 ], [ %.2.lcssa.us.i, %vector.memcheck987 ], [ %i.xz, %vec.epilog.iter.check1010 ], [ %i.yl, %vec.epilog.middle.block1022 ] ; 2 uses
  br i1 %lcmp.mod1383.not, label %vec.epilog.scalar.ph1011.prol.loopexit, label %vec.epilog.scalar.ph1011.prol

vec.epilog.scalar.ph1011.prol:                    ; preds = %vec.epilog.scalar.ph1011.preheader, %vec.epilog.scalar.ph1011.prol
  %indvars.iv148.i.prol = phi i64 [ %indvars.iv.next149.i.prol, %vec.epilog.scalar.ph1011.prol ], [ %indvars.iv148.i.ph, %vec.epilog.scalar.ph1011.preheader ] ; 2 uses
  %.318.us.i.prol = phi ptr [ %i.yt, %vec.epilog.scalar.ph1011.prol ], [ %.318.us.i.ph, %vec.epilog.scalar.ph1011.preheader ] ; 2 uses
  %prol.iter1384 = phi i64 [ %prol.iter1384.next, %vec.epilog.scalar.ph1011.prol ], [ 0, %vec.epilog.scalar.ph1011.preheader ]
  %.idx194.i.prol = mul nsw i64 %indvars.iv148.i.prol, -8
  %i.yr = getelementptr inbounds i8, ptr %i.xv, i64 %.idx194.i.prol
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !113
  store i64 %i.ys, ptr %.318.us.i.prol, align 8, !tbaa !113
  %i.yt = getelementptr inbounds nuw i8, ptr %.318.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next149.i.prol = add nuw nsw i64 %indvars.iv148.i.prol, 1 ; 2 uses
  %prol.iter1384.next = add i64 %prol.iter1384, 1 ; 2 uses
  %prol.iter1384.cmp.not = icmp eq i64 %prol.iter1384.next, %xtraiter1382
  br i1 %prol.iter1384.cmp.not, label %vec.epilog.scalar.ph1011.prol.loopexit, label %vec.epilog.scalar.ph1011.prol, !llvm.loop !663

vec.epilog.scalar.ph1011.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1011.prol, %vec.epilog.scalar.ph1011.preheader
  %.lcssa1340.unr = phi ptr [ poison, %vec.epilog.scalar.ph1011.preheader ], [ %i.yt, %vec.epilog.scalar.ph1011.prol ]
  %indvars.iv148.i.unr = phi i64 [ %indvars.iv148.i.ph, %vec.epilog.scalar.ph1011.preheader ], [ %indvars.iv.next149.i.prol, %vec.epilog.scalar.ph1011.prol ]
  %.318.us.i.unr = phi ptr [ %.318.us.i.ph, %vec.epilog.scalar.ph1011.preheader ], [ %i.yt, %vec.epilog.scalar.ph1011.prol ]
  %i.yu = sub nsw i64 %indvars.iv148.i.ph, %wide.trip.count151.i
  %i.yv = icmp ugt i64 %i.yu, -4
  br i1 %i.yv, label %._crit_edge.us.i66, label %vec.epilog.scalar.ph1011

.preheader9.lr.ph.split.i:                        ; preds = %.preheader9.lr.ph.i
  br i1 %i.sj, label %.preheader9.lr.ph.split.split.us.i, label %.preheader9.lr.ph.split.split.i

.preheader9.lr.ph.split.split.us.i:               ; preds = %.preheader9.lr.ph.split.i
  %wide.trip.count139.i = zext nneg i32 %i.sb to i64 ; 18 uses
  %i.yw = shl nsw i64 %i.se, 1                    ; 2 uses
  %i.yx = add i64 %i.cx, %i.yw                    ; 2 uses
  br i1 %i.si, label %.preheader9.us28.us.i.preheader, label %.preheader9.us28.i.preheader

.preheader9.us28.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.us.i
  %scevgep1224 = getelementptr i8, ptr %i.cr, i64 -8
  %i.yy = shl nsw i64 %i.sk, 1
  %i.yz = add nsw i32 %i.ry, -1
  %i.za = zext i32 %i.yz to i64
  %i.zb = mul i64 %i.yy, %i.za
  %i.zc = sub i64 %i.yx, %i.zb
  %scevgep1225 = getelementptr i8, ptr %scevgep1224, i64 %i.zc
  %scevgep1226 = getelementptr i8, ptr %i.cr, i64 -8
  %i.zd = add i64 %i.cx, %i.yw
  %i.ze = shl nuw nsw i64 %wide.trip.count139.i, 3 ; 2 uses
  %i.zf = sub i64 %i.zd, %i.ze
  %scevgep1227 = getelementptr i8, ptr %scevgep1226, i64 %i.zf
  %min.iters.check1228 = icmp ult i32 %i.sb, 8
  %stride.check1233 = icmp sgt i32 %i.sc, 0
  %min.iters.check1235 = icmp ult i32 %i.sb, 32
  %i.zg = and i64 %wide.trip.count139.i, 24
  %n.vec1237 = and i64 %wide.trip.count139.i, 2147483616 ; 5 uses
  %i.zh = shl nuw nsw i64 %n.vec1237, 3
  %cmp.n1251 = icmp eq i64 %n.vec1237, %wide.trip.count139.i
  %min.epilog.iters.check1255 = icmp eq i64 %i.zg, 0
  %n.vec1258 = and i64 %wide.trip.count139.i, 2147483640 ; 4 uses
  %i.zi = shl nuw nsw i64 %n.vec1258, 3
  %cmp.n1266 = icmp eq i64 %n.vec1258, %wide.trip.count139.i
  %xtraiter1367 = and i64 %wide.trip.count139.i, 3 ; 2 uses
  %lcmp.mod1368.not = icmp eq i64 %xtraiter1367, 0
  br label %iter.check1252

.preheader9.us28.us.i.preheader:                  ; preds = %.preheader9.lr.ph.split.split.us.i
  %i.zj = mul nsw i64 %i.sk, -2
  %i.zk = shl nuw nsw i64 %wide.trip.count139.i, 3 ; 2 uses
  %i.zl = sub i64 %i.yx, %i.zk
  %i.zm = shl nsw i64 %i.sk, 1
  %i.zn = add i64 %i.cx, %i.cs
  %.neg1314 = mul nsw i64 %i.se, -2
  %.neg1315 = sub i64 %.neg1314, %i.zn
  %i.zo = zext nneg i32 %i.co to i64              ; 5 uses
  %min.iters.check1178 = icmp ult i32 %i.co, 8
  %min.iters.check1182 = icmp ult i32 %i.co, 32
  %i.zp = and i64 %i.zo, 24
  %n.vec1184 = and i64 %i.zo, 2147483616          ; 5 uses
  %i.zq = trunc nuw nsw i64 %n.vec1184 to i32
  %i.zr = shl nuw nsw i64 %n.vec1184, 3           ; 2 uses
  %cmp.n1195 = icmp eq i64 %n.vec1184, %i.zo
  %min.epilog.iters.check1199 = icmp eq i64 %i.zp, 0
  %n.vec1202 = and i64 %i.zo, 2147483640          ; 4 uses
  %i.zs = trunc nuw nsw i64 %n.vec1202 to i32
  %i.zt = shl nuw nsw i64 %n.vec1202, 3           ; 2 uses
  %cmp.n1211 = icmp eq i64 %n.vec1202, %i.zo
  %min.iters.check1136 = icmp ult i32 %i.sb, 8
  %i.zu = getelementptr i8, ptr %i.cr, i64 %i.zl
  %min.iters.check1142 = icmp ult i32 %i.sb, 32
  %i.zv = and i64 %wide.trip.count139.i, 24
  %n.vec1144 = and i64 %wide.trip.count139.i, 2147483616 ; 5 uses
  %i.zw = shl nuw nsw i64 %n.vec1144, 3
  %cmp.n1158 = icmp eq i64 %n.vec1144, %wide.trip.count139.i
  %min.epilog.iters.check1162 = icmp eq i64 %i.zv, 0
  %n.vec1165 = and i64 %wide.trip.count139.i, 2147483640 ; 4 uses
  %i.zx = shl nuw nsw i64 %n.vec1165, 3
  %cmp.n1173 = icmp eq i64 %n.vec1165, %wide.trip.count139.i
  %xtraiter1373 = and i64 %wide.trip.count139.i, 3 ; 2 uses
  %lcmp.mod1374.not = icmp eq i64 %xtraiter1373, 0
  br label %iter.check1196

iter.check1196:                                   ; preds = %.preheader9.us28.us.i.preheader, %._crit_edge.us45.us.i
  %indvar1133 = phi i64 [ 0, %.preheader9.us28.us.i.preheader ], [ %indvar.next1134, %._crit_edge.us45.us.i ] ; 3 uses
  %.09924.us29.us.i = phi i32 [ 0, %.preheader9.us28.us.i.preheader ], [ %i.adr, %._crit_edge.us45.us.i ]
  %.010023.us30.us.i = phi ptr [ %i.bb, %.preheader9.us28.us.i.preheader ], [ %.lcssa255, %._crit_edge.us45.us.i ] ; 8 uses
  %.010122.us31.us.i = phi ptr [ %i.sf, %.preheader9.us28.us.i.preheader ], [ %i.adq, %._crit_edge.us45.us.i ] ; 7 uses
  %.010023.us30.us.i1135 = ptrtoaddr ptr %.010023.us30.us.i to i64 ; 2 uses
  br i1 %min.iters.check1178, label %vec.epilog.scalar.ph1198.preheader, label %vector.memcheck1179

vector.memcheck1179:                              ; preds = %iter.check1196
  %i.zy = mul nsw i64 %indvar1133, %i.zm
  %i.zz = add i64 %.neg1315, %i.zy
  %i.aaa = add i64 %i.zz, %.010023.us30.us.i1135
  %i.aab = add i64 %i.aaa, -1
  %diff.check1180 = icmp ult i64 %i.aab, 255
  br i1 %diff.check1180, label %vec.epilog.scalar.ph1198.preheader, label %vector.main.loop.iter.check1181

vector.main.loop.iter.check1181:                  ; preds = %vector.memcheck1179
  br i1 %min.iters.check1182, label %vec.epilog.ph1200, label %vector.ph1183

vector.ph1183:                                    ; preds = %vector.main.loop.iter.check1181
  %i.aac = getelementptr i8, ptr %.010122.us31.us.i, i64 %i.zr ; 2 uses
  %i.aad = getelementptr i8, ptr %.010023.us30.us.i, i64 %i.zr ; 2 uses
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.ph1183, %vector.body1185
  %index1186 = phi i64 [ 0, %vector.ph1183 ], [ %index.next1193, %vector.body1185 ] ; 2 uses
  %i.aae = shl i64 %index1186, 3                  ; 2 uses
  %next.gep1187 = getelementptr i8, ptr %.010122.us31.us.i, i64 %i.aae ; 4 uses
  %next.gep1188 = getelementptr i8, ptr %.010023.us30.us.i, i64 %i.aae ; 4 uses
  %i.aaf = getelementptr i8, ptr %next.gep1187, i64 64
  %i.aag = getelementptr i8, ptr %next.gep1187, i64 128
  %i.aah = getelementptr i8, ptr %next.gep1187, i64 192
  %wide.load1189 = load <8 x i64>, ptr %next.gep1187, align 8, !tbaa !113
  %wide.load1190 = load <8 x i64>, ptr %i.aaf, align 8, !tbaa !113
  %wide.load1191 = load <8 x i64>, ptr %i.aag, align 8, !tbaa !113
  %wide.load1192 = load <8 x i64>, ptr %i.aah, align 8, !tbaa !113
  %i.aai = getelementptr i8, ptr %next.gep1188, i64 64
  %i.aaj = getelementptr i8, ptr %next.gep1188, i64 128
  %i.aak = getelementptr i8, ptr %next.gep1188, i64 192
  store <8 x i64> %wide.load1189, ptr %next.gep1188, align 8, !tbaa !113
  store <8 x i64> %wide.load1190, ptr %i.aai, align 8, !tbaa !113
  store <8 x i64> %wide.load1191, ptr %i.aaj, align 8, !tbaa !113
  store <8 x i64> %wide.load1192, ptr %i.aak, align 8, !tbaa !113
  %index.next1193 = add nuw i64 %index1186, 32    ; 2 uses
  %i.aal = icmp eq i64 %index.next1193, %n.vec1184
  br i1 %i.aal, label %middle.block1194, label %vector.body1185, !llvm.loop !664

middle.block1194:                                 ; preds = %vector.body1185
  %ind.escape = getelementptr i8, ptr %i.aac, i64 -8
  br i1 %cmp.n1195, label %iter.check1159, label %vec.epilog.iter.check1197

vec.epilog.iter.check1197:                        ; preds = %middle.block1194
  br i1 %min.epilog.iters.check1199, label %vec.epilog.scalar.ph1198.preheader, label %vec.epilog.ph1200, !prof !117

vec.epilog.ph1200:                                ; preds = %vector.main.loop.iter.check1181, %vec.epilog.iter.check1197
  %vec.epilog.resume.val1201 = phi i64 [ %n.vec1184, %vec.epilog.iter.check1197 ], [ 0, %vector.main.loop.iter.check1181 ]
  %i.aam = getelementptr i8, ptr %.010122.us31.us.i, i64 %i.zt ; 2 uses
  %i.aan = getelementptr i8, ptr %.010023.us30.us.i, i64 %i.zt ; 2 uses
  br label %vec.epilog.vector.body1203

vec.epilog.vector.body1203:                       ; preds = %vec.epilog.vector.body1203, %vec.epilog.ph1200
  %index1204 = phi i64 [ %vec.epilog.resume.val1201, %vec.epilog.ph1200 ], [ %index.next1208, %vec.epilog.vector.body1203 ] ; 2 uses
  %i.aao = shl i64 %index1204, 3                  ; 2 uses
  %next.gep1205 = getelementptr i8, ptr %.010122.us31.us.i, i64 %i.aao
  %next.gep1206 = getelementptr i8, ptr %.010023.us30.us.i, i64 %i.aao
  %wide.load1207 = load <8 x i64>, ptr %next.gep1205, align 8, !tbaa !113
  store <8 x i64> %wide.load1207, ptr %next.gep1206, align 8, !tbaa !113
  %index.next1208 = add nuw i64 %index1204, 8     ; 2 uses
  %i.aap = icmp eq i64 %index.next1208, %n.vec1202
  br i1 %i.aap, label %vec.epilog.middle.block1209, label %vec.epilog.vector.body1203, !llvm.loop !665

vec.epilog.middle.block1209:                      ; preds = %vec.epilog.vector.body1203
  %ind.escape1210 = getelementptr i8, ptr %i.aam, i64 -8
  br i1 %cmp.n1211, label %iter.check1159, label %vec.epilog.scalar.ph1198.preheader

vec.epilog.scalar.ph1198.preheader:               ; preds = %iter.check1196, %vector.memcheck1179, %vec.epilog.iter.check1197, %vec.epilog.middle.block1209
  %.09614.us33.us.i.ph = phi i32 [ 0, %iter.check1196 ], [ 0, %vector.memcheck1179 ], [ %i.zq, %vec.epilog.iter.check1197 ], [ %i.zs, %vec.epilog.middle.block1209 ] ; 4 uses
  %.09813.us34.us.i.ph = phi ptr [ %.010122.us31.us.i, %iter.check1196 ], [ %.010122.us31.us.i, %vector.memcheck1179 ], [ %i.aac, %vec.epilog.iter.check1197 ], [ %i.aam, %vec.epilog.middle.block1209 ] ; 2 uses
  %.212.us35.us.i.ph = phi ptr [ %.010023.us30.us.i, %iter.check1196 ], [ %.010023.us30.us.i, %vector.memcheck1179 ], [ %i.aad, %vec.epilog.iter.check1197 ], [ %i.aan, %vec.epilog.middle.block1209 ] ; 2 uses
  %i.aaq = sub i32 %i.co, %.09614.us33.us.i.ph
  %xtraiter1370 = and i32 %i.aaq, 7               ; 2 uses
  %lcmp.mod1371.not = icmp eq i32 %xtraiter1370, 0
  br i1 %lcmp.mod1371.not, label %vec.epilog.scalar.ph1198.prol.loopexit, label %vec.epilog.scalar.ph1198.prol

vec.epilog.scalar.ph1198.prol:                    ; preds = %vec.epilog.scalar.ph1198.preheader, %vec.epilog.scalar.ph1198.prol
  %.09614.us33.us.i.prol = phi i32 [ %i.aau, %vec.epilog.scalar.ph1198.prol ], [ %.09614.us33.us.i.ph, %vec.epilog.scalar.ph1198.preheader ]
  %.09813.us34.us.i.prol = phi ptr [ %i.aas, %vec.epilog.scalar.ph1198.prol ], [ %.09813.us34.us.i.ph, %vec.epilog.scalar.ph1198.preheader ] ; 3 uses
  %.212.us35.us.i.prol = phi ptr [ %i.aat, %vec.epilog.scalar.ph1198.prol ], [ %.212.us35.us.i.ph, %vec.epilog.scalar.ph1198.preheader ] ; 2 uses
  %prol.iter1372 = phi i32 [ %prol.iter1372.next, %vec.epilog.scalar.ph1198.prol ], [ 0, %vec.epilog.scalar.ph1198.preheader ]
  %i.aar = load i64, ptr %.09813.us34.us.i.prol, align 8, !tbaa !113
  store i64 %i.aar, ptr %.212.us35.us.i.prol, align 8, !tbaa !113
  %i.aas = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i.prol, i64 8 ; 2 uses
  %i.aat = getelementptr i8, ptr %.212.us35.us.i.prol, i64 8 ; 3 uses
  %i.aau = add nuw nsw i32 %.09614.us33.us.i.prol, 1 ; 2 uses
  %prol.iter1372.next = add i32 %prol.iter1372, 1 ; 2 uses
  %prol.iter1372.cmp.not = icmp eq i32 %prol.iter1372.next, %xtraiter1370
  br i1 %prol.iter1372.cmp.not, label %vec.epilog.scalar.ph1198.prol.loopexit, label %vec.epilog.scalar.ph1198.prol, !llvm.loop !666

vec.epilog.scalar.ph1198.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1198.prol, %vec.epilog.scalar.ph1198.preheader
  %.09813.us34.us.i.lcssa1334.unr = phi ptr [ poison, %vec.epilog.scalar.ph1198.preheader ], [ %.09813.us34.us.i.prol, %vec.epilog.scalar.ph1198.prol ]
  %.lcssa1333.unr = phi ptr [ poison, %vec.epilog.scalar.ph1198.preheader ], [ %i.aat, %vec.epilog.scalar.ph1198.prol ]
  %.09614.us33.us.i.unr = phi i32 [ %.09614.us33.us.i.ph, %vec.epilog.scalar.ph1198.preheader ], [ %i.aau, %vec.epilog.scalar.ph1198.prol ]
  %.09813.us34.us.i.unr = phi ptr [ %.09813.us34.us.i.ph, %vec.epilog.scalar.ph1198.preheader ], [ %i.aas, %vec.epilog.scalar.ph1198.prol ]
  %.212.us35.us.i.unr = phi ptr [ %.212.us35.us.i.ph, %vec.epilog.scalar.ph1198.preheader ], [ %i.aat, %vec.epilog.scalar.ph1198.prol ]
  %i.aav = sub i32 %.09614.us33.us.i.ph, %i.co
  %i.aaw = icmp ugt i32 %i.aav, -8
  br i1 %i.aaw, label %iter.check1159, label %vec.epilog.scalar.ph1198

vec.epilog.scalar.ph1198:                         ; preds = %vec.epilog.scalar.ph1198.prol.loopexit, %vec.epilog.scalar.ph1198
  %.09614.us33.us.i = phi i32 [ %i.abv, %vec.epilog.scalar.ph1198 ], [ %.09614.us33.us.i.unr, %vec.epilog.scalar.ph1198.prol.loopexit ]
  %.09813.us34.us.i = phi ptr [ %i.abt, %vec.epilog.scalar.ph1198 ], [ %.09813.us34.us.i.unr, %vec.epilog.scalar.ph1198.prol.loopexit ] ; 10 uses
  %.212.us35.us.i = phi ptr [ %i.abu, %vec.epilog.scalar.ph1198 ], [ %.212.us35.us.i.unr, %vec.epilog.scalar.ph1198.prol.loopexit ] ; 9 uses
  %i.aax = load i64, ptr %.09813.us34.us.i, align 8, !tbaa !113
  store i64 %i.aax, ptr %.212.us35.us.i, align 8, !tbaa !113
  %i.aay = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 8
  %i.aaz = getelementptr i8, ptr %.212.us35.us.i, i64 8
  %i.aba = load i64, ptr %i.aay, align 8, !tbaa !113
  store i64 %i.aba, ptr %i.aaz, align 8, !tbaa !113
  %i.abb = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 16
  %i.abc = getelementptr i8, ptr %.212.us35.us.i, i64 16
  %i.abd = load i64, ptr %i.abb, align 8, !tbaa !113
  store i64 %i.abd, ptr %i.abc, align 8, !tbaa !113
  %i.abe = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 24
  %i.abf = getelementptr i8, ptr %.212.us35.us.i, i64 24
  %i.abg = load i64, ptr %i.abe, align 8, !tbaa !113
  store i64 %i.abg, ptr %i.abf, align 8, !tbaa !113
  %i.abh = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 32
  %i.abi = getelementptr i8, ptr %.212.us35.us.i, i64 32
  %i.abj = load i64, ptr %i.abh, align 8, !tbaa !113
  store i64 %i.abj, ptr %i.abi, align 8, !tbaa !113
  %i.abk = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 40
  %i.abl = getelementptr i8, ptr %.212.us35.us.i, i64 40
  %i.abm = load i64, ptr %i.abk, align 8, !tbaa !113
  store i64 %i.abm, ptr %i.abl, align 8, !tbaa !113
  %i.abn = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 48
  %i.abo = getelementptr i8, ptr %.212.us35.us.i, i64 48
  %i.abp = load i64, ptr %i.abn, align 8, !tbaa !113
  store i64 %i.abp, ptr %i.abo, align 8, !tbaa !113
  %i.abq = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 56
  %i.abr = getelementptr i8, ptr %.212.us35.us.i, i64 56
  %i.abs = load i64, ptr %i.abq, align 8, !tbaa !113
  store i64 %i.abs, ptr %i.abr, align 8, !tbaa !113
  %i.abt = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 64
  %i.abu = getelementptr i8, ptr %.212.us35.us.i, i64 64 ; 2 uses
  %i.abv = add nuw nsw i32 %.09614.us33.us.i, 8   ; 2 uses
  %exitcond135.not.i.7 = icmp eq i32 %i.abv, %i.co
  br i1 %exitcond135.not.i.7, label %iter.check1159.loopexit.unr-lcssa, label %vec.epilog.scalar.ph1198, !llvm.loop !667

iter.check1159.loopexit.unr-lcssa:                ; preds = %vec.epilog.scalar.ph1198
  %i.abw = getelementptr inbounds nuw i8, ptr %.09813.us34.us.i, i64 56
  br label %iter.check1159

iter.check1159:                                   ; preds = %iter.check1159.loopexit.unr-lcssa, %vec.epilog.scalar.ph1198.prol.loopexit, %vec.epilog.middle.block1209, %middle.block1194
  %.09813.us34.us.i.lcssa = phi ptr [ %ind.escape1210, %vec.epilog.middle.block1209 ], [ %ind.escape, %middle.block1194 ], [ %.09813.us34.us.i.lcssa1334.unr, %vec.epilog.scalar.ph1198.prol.loopexit ], [ %i.abw, %iter.check1159.loopexit.unr-lcssa ] ; 2 uses
  %.lcssa254 = phi ptr [ %i.aan, %vec.epilog.middle.block1209 ], [ %i.aad, %middle.block1194 ], [ %.lcssa1333.unr, %vec.epilog.scalar.ph1198.prol.loopexit ], [ %i.abu, %iter.check1159.loopexit.unr-lcssa ] ; 8 uses
  %i.abx = getelementptr inbounds i8, ptr %.09813.us34.us.i.lcssa, i64 -8 ; 7 uses
  br i1 %min.iters.check1136, label %vec.epilog.scalar.ph1161.preheader, label %vector.memcheck1137

vector.memcheck1137:                              ; preds = %iter.check1159
  %i.aby = ptrtoaddr ptr %.lcssa254 to i64
  %reass.sub = sub i64 %i.aby, %.010023.us30.us.i1135 ; 2 uses
  %i.abz = getelementptr i8, ptr %.010023.us30.us.i, i64 %i.zk
  %i.aca = getelementptr i8, ptr %i.abz, i64 %reass.sub
  %i.acb = mul nsw i64 %indvar1133, %i.zj
  %i.acc = getelementptr i8, ptr %i.zu, i64 %i.acb
  %i.acd = getelementptr i8, ptr %i.acc, i64 %reass.sub
  %i.ace = getelementptr i8, ptr %i.acd, i64 -8
  %bound01138 = icmp ult ptr %.lcssa254, %.09813.us34.us.i.lcssa
  %bound11139 = icmp ult ptr %i.ace, %i.aca
  %found.conflict1140 = and i1 %bound01138, %bound11139
  br i1 %found.conflict1140, label %vec.epilog.scalar.ph1161.preheader, label %vector.main.loop.iter.check1141

vector.main.loop.iter.check1141:                  ; preds = %vector.memcheck1137
  br i1 %min.iters.check1142, label %vec.epilog.ph1163, label %vector.ph1143

vector.ph1143:                                    ; preds = %vector.main.loop.iter.check1141
  %i.acf = getelementptr i8, ptr %.lcssa254, i64 %i.zw ; 2 uses
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.ph1143, %vector.body1145
  %index1146 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1156, %vector.body1145 ] ; 3 uses
  %i.acg = shl i64 %index1146, 3
  %next.gep1147 = getelementptr i8, ptr %.lcssa254, i64 %i.acg ; 4 uses
  %i.ach = mul nsw i64 %index1146, -8
  %i.aci = getelementptr inbounds i8, ptr %i.abx, i64 %i.ach ; 4 uses
  %i.acj = getelementptr inbounds i8, ptr %i.aci, i64 -56
  %i.ack = getelementptr inbounds i8, ptr %i.aci, i64 -120
  %i.acl = getelementptr inbounds i8, ptr %i.aci, i64 -184
  %i.acm = getelementptr inbounds i8, ptr %i.aci, i64 -248
  %wide.load1148 = load <8 x i64>, ptr %i.acj, align 8, !tbaa !113, !alias.scope !730
  %wide.load1149 = load <8 x i64>, ptr %i.ack, align 8, !tbaa !113, !alias.scope !730
  %wide.load1150 = load <8 x i64>, ptr %i.acl, align 8, !tbaa !113, !alias.scope !730
  %wide.load1151 = load <8 x i64>, ptr %i.acm, align 8, !tbaa !113, !alias.scope !730
  %reverse1152 = shufflevector <8 x i64> %wide.load1148, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1153 = shufflevector <8 x i64> %wide.load1149, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1154 = shufflevector <8 x i64> %wide.load1150, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1155 = shufflevector <8 x i64> %wide.load1151, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.acn = getelementptr i8, ptr %next.gep1147, i64 64
  %i.aco = getelementptr i8, ptr %next.gep1147, i64 128
  %i.acp = getelementptr i8, ptr %next.gep1147, i64 192
  store <8 x i64> %reverse1152, ptr %next.gep1147, align 8, !tbaa !113, !alias.scope !731, !noalias !730
  store <8 x i64> %reverse1153, ptr %i.acn, align 8, !tbaa !113, !alias.scope !731, !noalias !730
  store <8 x i64> %reverse1154, ptr %i.aco, align 8, !tbaa !113, !alias.scope !731, !noalias !730
  store <8 x i64> %reverse1155, ptr %i.acp, align 8, !tbaa !113, !alias.scope !731, !noalias !730
  %index.next1156 = add nuw i64 %index1146, 32    ; 2 uses
  %i.acq = icmp eq i64 %index.next1156, %n.vec1144
  br i1 %i.acq, label %middle.block1157, label %vector.body1145, !llvm.loop !671

middle.block1157:                                 ; preds = %vector.body1145
  br i1 %cmp.n1158, label %._crit_edge.us45.us.i, label %vec.epilog.iter.check1160

vec.epilog.iter.check1160:                        ; preds = %middle.block1157
  br i1 %min.epilog.iters.check1162, label %vec.epilog.scalar.ph1161.preheader, label %vec.epilog.ph1163, !prof !117

vec.epilog.ph1163:                                ; preds = %vector.main.loop.iter.check1141, %vec.epilog.iter.check1160
  %vec.epilog.resume.val1164 = phi i64 [ %n.vec1144, %vec.epilog.iter.check1160 ], [ 0, %vector.main.loop.iter.check1141 ]
  %i.acr = getelementptr i8, ptr %.lcssa254, i64 %i.zx ; 2 uses
  br label %vec.epilog.vector.body1166

vec.epilog.vector.body1166:                       ; preds = %vec.epilog.vector.body1166, %vec.epilog.ph1163
  %index1167 = phi i64 [ %vec.epilog.resume.val1164, %vec.epilog.ph1163 ], [ %index.next1171, %vec.epilog.vector.body1166 ] ; 3 uses
  %i.acs = shl i64 %index1167, 3
  %next.gep1168 = getelementptr i8, ptr %.lcssa254, i64 %i.acs
  %i.act = mul nsw i64 %index1167, -8
  %i.acu = getelementptr inbounds i8, ptr %i.abx, i64 %i.act
  %i.acv = getelementptr inbounds i8, ptr %i.acu, i64 -56
  %wide.load1169 = load <8 x i64>, ptr %i.acv, align 8, !tbaa !113, !alias.scope !730
  %reverse1170 = shufflevector <8 x i64> %wide.load1169, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1170, ptr %next.gep1168, align 8, !tbaa !113, !alias.scope !731, !noalias !730
  %index.next1171 = add nuw i64 %index1167, 8     ; 2 uses
  %i.acw = icmp eq i64 %index.next1171, %n.vec1165
  br i1 %i.acw, label %vec.epilog.middle.block1172, label %vec.epilog.vector.body1166, !llvm.loop !672

vec.epilog.middle.block1172:                      ; preds = %vec.epilog.vector.body1166
  br i1 %cmp.n1173, label %._crit_edge.us45.us.i, label %vec.epilog.scalar.ph1161.preheader

vec.epilog.scalar.ph1161.preheader:               ; preds = %iter.check1159, %vector.memcheck1137, %vec.epilog.iter.check1160, %vec.epilog.middle.block1172
  %indvars.iv136.i.ph = phi i64 [ 0, %iter.check1159 ], [ 0, %vector.memcheck1137 ], [ %n.vec1144, %vec.epilog.iter.check1160 ], [ %n.vec1165, %vec.epilog.middle.block1172 ] ; 3 uses
  %.318.us44.us.i.ph = phi ptr [ %.lcssa254, %iter.check1159 ], [ %.lcssa254, %vector.memcheck1137 ], [ %i.acf, %vec.epilog.iter.check1160 ], [ %i.acr, %vec.epilog.middle.block1172 ] ; 2 uses
  br i1 %lcmp.mod1374.not, label %vec.epilog.scalar.ph1161.prol.loopexit, label %vec.epilog.scalar.ph1161.prol

vec.epilog.scalar.ph1161.prol:                    ; preds = %vec.epilog.scalar.ph1161.preheader, %vec.epilog.scalar.ph1161.prol
  %indvars.iv136.i.prol = phi i64 [ %indvars.iv.next137.i.prol, %vec.epilog.scalar.ph1161.prol ], [ %indvars.iv136.i.ph, %vec.epilog.scalar.ph1161.preheader ] ; 2 uses
  %.318.us44.us.i.prol = phi ptr [ %i.acz, %vec.epilog.scalar.ph1161.prol ], [ %.318.us44.us.i.ph, %vec.epilog.scalar.ph1161.preheader ] ; 2 uses
  %prol.iter1375 = phi i64 [ %prol.iter1375.next, %vec.epilog.scalar.ph1161.prol ], [ 0, %vec.epilog.scalar.ph1161.preheader ]
  %.idx192.i.prol = mul nsw i64 %indvars.iv136.i.prol, -8
  %i.acx = getelementptr inbounds i8, ptr %i.abx, i64 %.idx192.i.prol
  %i.acy = load i64, ptr %i.acx, align 8, !tbaa !113
  store i64 %i.acy, ptr %.318.us44.us.i.prol, align 8, !tbaa !113
  %i.acz = getelementptr inbounds nuw i8, ptr %.318.us44.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next137.i.prol = add nuw nsw i64 %indvars.iv136.i.prol, 1 ; 2 uses
  %prol.iter1375.next = add i64 %prol.iter1375, 1 ; 2 uses
  %prol.iter1375.cmp.not = icmp eq i64 %prol.iter1375.next, %xtraiter1373
  br i1 %prol.iter1375.cmp.not, label %vec.epilog.scalar.ph1161.prol.loopexit, label %vec.epilog.scalar.ph1161.prol, !llvm.loop !673

vec.epilog.scalar.ph1161.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1161.prol, %vec.epilog.scalar.ph1161.preheader
  %.lcssa1335.unr = phi ptr [ poison, %vec.epilog.scalar.ph1161.preheader ], [ %i.acz, %vec.epilog.scalar.ph1161.prol ]
  %indvars.iv136.i.unr = phi i64 [ %indvars.iv136.i.ph, %vec.epilog.scalar.ph1161.preheader ], [ %indvars.iv.next137.i.prol, %vec.epilog.scalar.ph1161.prol ]
  %.318.us44.us.i.unr = phi ptr [ %.318.us44.us.i.ph, %vec.epilog.scalar.ph1161.preheader ], [ %i.acz, %vec.epilog.scalar.ph1161.prol ]
  %i.ada = sub nsw i64 %indvars.iv136.i.ph, %wide.trip.count139.i
  %i.adb = icmp ugt i64 %i.ada, -4
  br i1 %i.adb, label %._crit_edge.us45.us.i, label %vec.epilog.scalar.ph1161

vec.epilog.scalar.ph1161:                         ; preds = %vec.epilog.scalar.ph1161.prol.loopexit, %vec.epilog.scalar.ph1161
  %indvars.iv136.i = phi i64 [ %indvars.iv.next137.i.3, %vec.epilog.scalar.ph1161 ], [ %indvars.iv136.i.unr, %vec.epilog.scalar.ph1161.prol.loopexit ] ; 5 uses
  %.318.us44.us.i = phi ptr [ %i.adp, %vec.epilog.scalar.ph1161 ], [ %.318.us44.us.i.unr, %vec.epilog.scalar.ph1161.prol.loopexit ] ; 5 uses
  %.idx192.i = mul nsw i64 %indvars.iv136.i, -8
  %i.adc = getelementptr inbounds i8, ptr %i.abx, i64 %.idx192.i
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !113
  store i64 %i.add, ptr %.318.us44.us.i, align 8, !tbaa !113
  %i.ade = getelementptr inbounds nuw i8, ptr %.318.us44.us.i, i64 8
  %indvars.iv.next137.i.neg = xor i64 %indvars.iv136.i, -1
  %.idx192.i.1 = shl nsw i64 %indvars.iv.next137.i.neg, 3
  %i.adf = getelementptr inbounds i8, ptr %i.abx, i64 %.idx192.i.1
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !113
  store i64 %i.adg, ptr %i.ade, align 8, !tbaa !113
  %i.adh = getelementptr inbounds nuw i8, ptr %.318.us44.us.i, i64 16
  %i.adi = shl i64 %indvars.iv136.i, 3
  %.idx192.i.2 = sub i64 -16, %i.adi
  %i.adj = getelementptr inbounds i8, ptr %i.abx, i64 %.idx192.i.2
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !113
  store i64 %i.adk, ptr %i.adh, align 8, !tbaa !113
  %i.adl = getelementptr inbounds nuw i8, ptr %.318.us44.us.i, i64 24
  %i.adm = shl i64 %indvars.iv136.i, 3
  %.idx192.i.3 = sub i64 -24, %i.adm
  %i.adn = getelementptr inbounds i8, ptr %i.abx, i64 %.idx192.i.3
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !113
  store i64 %i.ado, ptr %i.adl, align 8, !tbaa !113
  %i.adp = getelementptr inbounds nuw i8, ptr %.318.us44.us.i, i64 32 ; 2 uses
  %indvars.iv.next137.i.3 = add nuw nsw i64 %indvars.iv136.i, 4 ; 2 uses
  %exitcond140.not.i.3 = icmp eq i64 %indvars.iv.next137.i.3, %wide.trip.count139.i
  br i1 %exitcond140.not.i.3, label %._crit_edge.us45.us.i, label %vec.epilog.scalar.ph1161, !llvm.loop !674

._crit_edge.us45.us.i:                            ; preds = %vec.epilog.scalar.ph1161.prol.loopexit, %vec.epilog.scalar.ph1161, %vec.epilog.middle.block1172, %middle.block1157
  %.lcssa255 = phi ptr [ %i.acr, %vec.epilog.middle.block1172 ], [ %i.acf, %middle.block1157 ], [ %.lcssa1335.unr, %vec.epilog.scalar.ph1161.prol.loopexit ], [ %i.adp, %vec.epilog.scalar.ph1161 ] ; 2 uses
  %i.adq = getelementptr inbounds [2 x i8], ptr %.010122.us31.us.i, i64 %i.sl ; 2 uses
  %i.adr = add nuw nsw i32 %.09924.us29.us.i, 1   ; 2 uses
  %exitcond141.not.i = icmp eq i32 %i.adr, %i.ry
  %indvar.next1134 = add i64 %indvar1133, 1
  br i1 %exitcond141.not.i, label %.preheader6.i, label %iter.check1196, !llvm.loop !654

iter.check1252:                                   ; preds = %.preheader9.us28.i.preheader, %._crit_edge.us45.i
  %.09924.us29.i = phi i32 [ %i.afh, %._crit_edge.us45.i ], [ 0, %.preheader9.us28.i.preheader ]
  %.010023.us30.i = phi ptr [ %.lcssa252, %._crit_edge.us45.i ], [ %i.bb, %.preheader9.us28.i.preheader ] ; 8 uses
  %.010122.us31.i = phi ptr [ %i.afg, %._crit_edge.us45.i ], [ %i.sf, %.preheader9.us28.i.preheader ] ; 2 uses
  %i.ads = getelementptr inbounds i8, ptr %.010122.us31.i, i64 -16 ; 7 uses
  br i1 %min.iters.check1228, label %vec.epilog.scalar.ph1254.preheader, label %vector.memcheck1229

vector.memcheck1229:                              ; preds = %iter.check1252
  %i.adt = getelementptr i8, ptr %.010023.us30.i, i64 %i.ze
  %bound01230 = icmp ult ptr %.010023.us30.i, %scevgep1225
  %bound11231 = icmp ult ptr %scevgep1227, %i.adt
  %found.conflict1232 = and i1 %bound01230, %bound11231
  %i.adu = or i1 %found.conflict1232, %stride.check1233
  br i1 %i.adu, label %vec.epilog.scalar.ph1254.preheader, label %vector.main.loop.iter.check1234

vector.main.loop.iter.check1234:                  ; preds = %vector.memcheck1229
  br i1 %min.iters.check1235, label %vec.epilog.ph1256, label %vector.ph1236

vector.ph1236:                                    ; preds = %vector.main.loop.iter.check1234
  %i.adv = getelementptr i8, ptr %.010023.us30.i, i64 %i.zh ; 2 uses
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.ph1236, %vector.body1238
  %index1239 = phi i64 [ 0, %vector.ph1236 ], [ %index.next1249, %vector.body1238 ] ; 3 uses
  %i.adw = shl i64 %index1239, 3
  %next.gep1240 = getelementptr i8, ptr %.010023.us30.i, i64 %i.adw ; 4 uses
  %i.adx = mul nsw i64 %index1239, -8
  %i.ady = getelementptr inbounds i8, ptr %i.ads, i64 %i.adx ; 4 uses
  %i.adz = getelementptr inbounds i8, ptr %i.ady, i64 -56
  %i.aea = getelementptr inbounds i8, ptr %i.ady, i64 -120
  %i.aeb = getelementptr inbounds i8, ptr %i.ady, i64 -184
  %i.aec = getelementptr inbounds i8, ptr %i.ady, i64 -248
  %wide.load1241 = load <8 x i64>, ptr %i.adz, align 8, !tbaa !113, !alias.scope !732
  %wide.load1242 = load <8 x i64>, ptr %i.aea, align 8, !tbaa !113, !alias.scope !732
  %wide.load1243 = load <8 x i64>, ptr %i.aeb, align 8, !tbaa !113, !alias.scope !732
  %wide.load1244 = load <8 x i64>, ptr %i.aec, align 8, !tbaa !113, !alias.scope !732
  %reverse1245 = shufflevector <8 x i64> %wide.load1241, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1246 = shufflevector <8 x i64> %wide.load1242, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1247 = shufflevector <8 x i64> %wide.load1243, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1248 = shufflevector <8 x i64> %wide.load1244, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aed = getelementptr i8, ptr %next.gep1240, i64 64
  %i.aee = getelementptr i8, ptr %next.gep1240, i64 128
  %i.aef = getelementptr i8, ptr %next.gep1240, i64 192
  store <8 x i64> %reverse1245, ptr %next.gep1240, align 8, !tbaa !113, !alias.scope !733, !noalias !732
  store <8 x i64> %reverse1246, ptr %i.aed, align 8, !tbaa !113, !alias.scope !733, !noalias !732
  store <8 x i64> %reverse1247, ptr %i.aee, align 8, !tbaa !113, !alias.scope !733, !noalias !732
  store <8 x i64> %reverse1248, ptr %i.aef, align 8, !tbaa !113, !alias.scope !733, !noalias !732
  %index.next1249 = add nuw i64 %index1239, 32    ; 2 uses
  %i.aeg = icmp eq i64 %index.next1249, %n.vec1237
  br i1 %i.aeg, label %middle.block1250, label %vector.body1238, !llvm.loop !678

middle.block1250:                                 ; preds = %vector.body1238
  br i1 %cmp.n1251, label %._crit_edge.us45.i, label %vec.epilog.iter.check1253

vec.epilog.iter.check1253:                        ; preds = %middle.block1250
  br i1 %min.epilog.iters.check1255, label %vec.epilog.scalar.ph1254.preheader, label %vec.epilog.ph1256, !prof !117

vec.epilog.ph1256:                                ; preds = %vector.main.loop.iter.check1234, %vec.epilog.iter.check1253
  %vec.epilog.resume.val1257 = phi i64 [ %n.vec1237, %vec.epilog.iter.check1253 ], [ 0, %vector.main.loop.iter.check1234 ]
  %i.aeh = getelementptr i8, ptr %.010023.us30.i, i64 %i.zi ; 2 uses
  br label %vec.epilog.vector.body1259

vec.epilog.vector.body1259:                       ; preds = %vec.epilog.vector.body1259, %vec.epilog.ph1256
  %index1260 = phi i64 [ %vec.epilog.resume.val1257, %vec.epilog.ph1256 ], [ %index.next1264, %vec.epilog.vector.body1259 ] ; 3 uses
  %i.aei = shl i64 %index1260, 3
  %next.gep1261 = getelementptr i8, ptr %.010023.us30.i, i64 %i.aei
  %i.aej = mul nsw i64 %index1260, -8
  %i.aek = getelementptr inbounds i8, ptr %i.ads, i64 %i.aej
  %i.ael = getelementptr inbounds i8, ptr %i.aek, i64 -56
  %wide.load1262 = load <8 x i64>, ptr %i.ael, align 8, !tbaa !113, !alias.scope !732
  %reverse1263 = shufflevector <8 x i64> %wide.load1262, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1263, ptr %next.gep1261, align 8, !tbaa !113, !alias.scope !733, !noalias !732
  %index.next1264 = add nuw i64 %index1260, 8     ; 2 uses
  %i.aem = icmp eq i64 %index.next1264, %n.vec1258
  br i1 %i.aem, label %vec.epilog.middle.block1265, label %vec.epilog.vector.body1259, !llvm.loop !679

vec.epilog.middle.block1265:                      ; preds = %vec.epilog.vector.body1259
  br i1 %cmp.n1266, label %._crit_edge.us45.i, label %vec.epilog.scalar.ph1254.preheader

vec.epilog.scalar.ph1254.preheader:               ; preds = %iter.check1252, %vector.memcheck1229, %vec.epilog.iter.check1253, %vec.epilog.middle.block1265
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check1252 ], [ 0, %vector.memcheck1229 ], [ %n.vec1237, %vec.epilog.iter.check1253 ], [ %n.vec1258, %vec.epilog.middle.block1265 ] ; 3 uses
  %.318.us44.i.ph = phi ptr [ %.010023.us30.i, %iter.check1252 ], [ %.010023.us30.i, %vector.memcheck1229 ], [ %i.adv, %vec.epilog.iter.check1253 ], [ %i.aeh, %vec.epilog.middle.block1265 ] ; 2 uses
  br i1 %lcmp.mod1368.not, label %vec.epilog.scalar.ph1254.prol.loopexit, label %vec.epilog.scalar.ph1254.prol

vec.epilog.scalar.ph1254.prol:                    ; preds = %vec.epilog.scalar.ph1254.preheader, %vec.epilog.scalar.ph1254.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph1254.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph1254.preheader ] ; 2 uses
  %.318.us44.i.prol = phi ptr [ %i.aep, %vec.epilog.scalar.ph1254.prol ], [ %.318.us44.i.ph, %vec.epilog.scalar.ph1254.preheader ] ; 2 uses
  %prol.iter1369 = phi i64 [ %prol.iter1369.next, %vec.epilog.scalar.ph1254.prol ], [ 0, %vec.epilog.scalar.ph1254.preheader ]
  %.idx.i.prol = mul nsw i64 %indvars.iv.i.prol, -8
  %i.aen = getelementptr inbounds i8, ptr %i.ads, i64 %.idx.i.prol
  %i.aeo = load i64, ptr %i.aen, align 8, !tbaa !113
  store i64 %i.aeo, ptr %.318.us44.i.prol, align 8, !tbaa !113
  %i.aep = getelementptr inbounds nuw i8, ptr %.318.us44.i.prol, i64 8 ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter1369.next = add i64 %prol.iter1369, 1 ; 2 uses
  %prol.iter1369.cmp.not = icmp eq i64 %prol.iter1369.next, %xtraiter1367
  br i1 %prol.iter1369.cmp.not, label %vec.epilog.scalar.ph1254.prol.loopexit, label %vec.epilog.scalar.ph1254.prol, !llvm.loop !680

vec.epilog.scalar.ph1254.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1254.prol, %vec.epilog.scalar.ph1254.preheader
  %.lcssa1331.unr = phi ptr [ poison, %vec.epilog.scalar.ph1254.preheader ], [ %i.aep, %vec.epilog.scalar.ph1254.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph1254.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph1254.prol ]
  %.318.us44.i.unr = phi ptr [ %.318.us44.i.ph, %vec.epilog.scalar.ph1254.preheader ], [ %i.aep, %vec.epilog.scalar.ph1254.prol ]
  %i.aeq = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count139.i
  %i.aer = icmp ugt i64 %i.aeq, -4
  br i1 %i.aer, label %._crit_edge.us45.i, label %vec.epilog.scalar.ph1254

vec.epilog.scalar.ph1254:                         ; preds = %vec.epilog.scalar.ph1254.prol.loopexit, %vec.epilog.scalar.ph1254
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph1254 ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph1254.prol.loopexit ] ; 5 uses
  %.318.us44.i = phi ptr [ %i.aff, %vec.epilog.scalar.ph1254 ], [ %.318.us44.i.unr, %vec.epilog.scalar.ph1254.prol.loopexit ] ; 5 uses
  %.idx.i = mul nsw i64 %indvars.iv.i, -8
  %i.aes = getelementptr inbounds i8, ptr %i.ads, i64 %.idx.i
  %i.aet = load i64, ptr %i.aes, align 8, !tbaa !113
  store i64 %i.aet, ptr %.318.us44.i, align 8, !tbaa !113
  %i.aeu = getelementptr inbounds nuw i8, ptr %.318.us44.i, i64 8
  %indvars.iv.next.i.neg = xor i64 %indvars.iv.i, -1
  %.idx.i.1 = shl nsw i64 %indvars.iv.next.i.neg, 3
  %i.aev = getelementptr inbounds i8, ptr %i.ads, i64 %.idx.i.1
  %i.aew = load i64, ptr %i.aev, align 8, !tbaa !113
  store i64 %i.aew, ptr %i.aeu, align 8, !tbaa !113
  %i.aex = getelementptr inbounds nuw i8, ptr %.318.us44.i, i64 16
  %i.aey = shl i64 %indvars.iv.i, 3
  %.idx.i.2 = sub i64 -16, %i.aey
  %i.aez = getelementptr inbounds i8, ptr %i.ads, i64 %.idx.i.2
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !113
  store i64 %i.afa, ptr %i.aex, align 8, !tbaa !113
  %i.afb = getelementptr inbounds nuw i8, ptr %.318.us44.i, i64 24
  %i.afc = shl i64 %indvars.iv.i, 3
  %.idx.i.3 = sub i64 -24, %i.afc
  %i.afd = getelementptr inbounds i8, ptr %i.ads, i64 %.idx.i.3
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !113
  store i64 %i.afe, ptr %i.afb, align 8, !tbaa !113
  %i.aff = getelementptr inbounds nuw i8, ptr %.318.us44.i, i64 32 ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond133.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count139.i
  br i1 %exitcond133.not.i.3, label %._crit_edge.us45.i, label %vec.epilog.scalar.ph1254, !llvm.loop !681

._crit_edge.us45.i:                               ; preds = %vec.epilog.scalar.ph1254.prol.loopexit, %vec.epilog.scalar.ph1254, %vec.epilog.middle.block1265, %middle.block1250
  %.lcssa252 = phi ptr [ %i.aeh, %vec.epilog.middle.block1265 ], [ %i.adv, %middle.block1250 ], [ %.lcssa1331.unr, %vec.epilog.scalar.ph1254.prol.loopexit ], [ %i.aff, %vec.epilog.scalar.ph1254 ] ; 2 uses
  %i.afg = getelementptr inbounds [2 x i8], ptr %.010122.us31.i, i64 %i.sl ; 2 uses
  %i.afh = add nuw nsw i32 %.09924.us29.i, 1      ; 2 uses
  %exitcond134.not.i = icmp eq i32 %i.afh, %i.ry
  br i1 %exitcond134.not.i, label %.preheader6.i, label %iter.check1252, !llvm.loop !654

.preheader9.lr.ph.split.split.i:                  ; preds = %.preheader9.lr.ph.split.i
  br i1 %i.si, label %.preheader9.us52.i.preheader, label %.preheader9.preheader.i

.preheader9.us52.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.i
  %i.afi = shl nsw i64 %i.sk, 1
  %i.afj = add i64 %i.cx, %i.cs
  %.neg = mul nsw i64 %i.se, -2
  %.neg1313 = sub i64 %.neg, %i.afj
  %i.afk = zext nneg i32 %i.co to i64             ; 5 uses
  %min.iters.check1277 = icmp ult i32 %i.co, 8
  %min.iters.check1281 = icmp ult i32 %i.co, 32
  %i.afl = and i64 %i.afk, 24
  %n.vec1283 = and i64 %i.afk, 2147483616         ; 5 uses
  %i.afm = trunc nuw nsw i64 %n.vec1283 to i32
  %i.afn = shl nuw nsw i64 %n.vec1283, 3          ; 2 uses
  %cmp.n1294 = icmp eq i64 %n.vec1283, %i.afk
  %min.epilog.iters.check1298 = icmp eq i64 %i.afl, 0
  %n.vec1301 = and i64 %i.afk, 2147483640         ; 4 uses
  %i.afo = trunc nuw nsw i64 %n.vec1301 to i32
  %i.afp = shl nuw nsw i64 %n.vec1301, 3          ; 2 uses
  %cmp.n1309 = icmp eq i64 %n.vec1301, %i.afk
  br label %iter.check1295

.preheader9.preheader.i:                          ; preds = %.preheader9.lr.ph.split.split.i
  %i.afq = add nsw i32 %i.ry, -1
  %i.afr = zext nneg i32 %i.afq to i64
  %i.afs = shl nuw nsw i64 %i.afr, 1
  %i.aft = sub nuw nsw i64 -2, %i.afs
  %i.afu = mul nsw i64 %i.aft, %i.sk
  %i.afv = shl nsw i64 %i.se, 1
  %i.afw = getelementptr i8, ptr %i.cy, i64 %i.afu
  %scevgep.i = getelementptr i8, ptr %i.afw, i64 %i.afv
  br label %.preheader6.i

iter.check1295:                                   ; preds = %.preheader9.us52.i.preheader, %..preheader7_crit_edge.us60.i
  %indvar1274 = phi i64 [ 0, %.preheader9.us52.i.preheader ], [ %indvar.next1275, %..preheader7_crit_edge.us60.i ] ; 2 uses
  %.09924.us53.i = phi i32 [ 0, %.preheader9.us52.i.preheader ], [ %i.ahw, %..preheader7_crit_edge.us60.i ]
  %.010023.us54.i = phi ptr [ %i.bb, %.preheader9.us52.i.preheader ], [ %.lcssa, %..preheader7_crit_edge.us60.i ] ; 7 uses
  %.010122.us55.i = phi ptr [ %i.sf, %.preheader9.us52.i.preheader ], [ %i.ahv, %..preheader7_crit_edge.us60.i ] ; 7 uses
  br i1 %min.iters.check1277, label %vec.epilog.scalar.ph1297.preheader, label %vector.memcheck1278

vector.memcheck1278:                              ; preds = %iter.check1295
  %.010023.us54.i1276 = ptrtoaddr ptr %.010023.us54.i to i64
  %i.afx = mul nsw i64 %indvar1274, %i.afi
  %i.afy = add i64 %.neg1313, %i.afx
  %i.afz = add i64 %i.afy, %.010023.us54.i1276
  %i.aga = add i64 %i.afz, -1
  %diff.check1279 = icmp ult i64 %i.aga, 255
  br i1 %diff.check1279, label %vec.epilog.scalar.ph1297.preheader, label %vector.main.loop.iter.check1280

vector.main.loop.iter.check1280:                  ; preds = %vector.memcheck1278
  br i1 %min.iters.check1281, label %vec.epilog.ph1299, label %vector.ph1282

vector.ph1282:                                    ; preds = %vector.main.loop.iter.check1280
  %i.agb = getelementptr i8, ptr %.010122.us55.i, i64 %i.afn
  %i.agc = getelementptr i8, ptr %.010023.us54.i, i64 %i.afn ; 2 uses
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.ph1282, %vector.body1284
  %index1285 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1292, %vector.body1284 ] ; 2 uses
  %i.agd = shl i64 %index1285, 3                  ; 2 uses
  %next.gep1286 = getelementptr i8, ptr %.010122.us55.i, i64 %i.agd ; 4 uses
  %next.gep1287 = getelementptr i8, ptr %.010023.us54.i, i64 %i.agd ; 4 uses
  %i.age = getelementptr i8, ptr %next.gep1286, i64 64
  %i.agf = getelementptr i8, ptr %next.gep1286, i64 128
  %i.agg = getelementptr i8, ptr %next.gep1286, i64 192
  %wide.load1288 = load <8 x i64>, ptr %next.gep1286, align 8, !tbaa !113
  %wide.load1289 = load <8 x i64>, ptr %i.age, align 8, !tbaa !113
  %wide.load1290 = load <8 x i64>, ptr %i.agf, align 8, !tbaa !113
  %wide.load1291 = load <8 x i64>, ptr %i.agg, align 8, !tbaa !113
  %i.agh = getelementptr i8, ptr %next.gep1287, i64 64
  %i.agi = getelementptr i8, ptr %next.gep1287, i64 128
  %i.agj = getelementptr i8, ptr %next.gep1287, i64 192
  store <8 x i64> %wide.load1288, ptr %next.gep1287, align 8, !tbaa !113
  store <8 x i64> %wide.load1289, ptr %i.agh, align 8, !tbaa !113
  store <8 x i64> %wide.load1290, ptr %i.agi, align 8, !tbaa !113
  store <8 x i64> %wide.load1291, ptr %i.agj, align 8, !tbaa !113
  %index.next1292 = add nuw i64 %index1285, 32    ; 2 uses
  %i.agk = icmp eq i64 %index.next1292, %n.vec1283
  br i1 %i.agk, label %middle.block1293, label %vector.body1284, !llvm.loop !682

middle.block1293:                                 ; preds = %vector.body1284
  br i1 %cmp.n1294, label %..preheader7_crit_edge.us60.i, label %vec.epilog.iter.check1296

vec.epilog.iter.check1296:                        ; preds = %middle.block1293
  br i1 %min.epilog.iters.check1298, label %vec.epilog.scalar.ph1297.preheader, label %vec.epilog.ph1299, !prof !117

vec.epilog.ph1299:                                ; preds = %vector.main.loop.iter.check1280, %vec.epilog.iter.check1296
  %vec.epilog.resume.val1300 = phi i64 [ %n.vec1283, %vec.epilog.iter.check1296 ], [ 0, %vector.main.loop.iter.check1280 ]
  %i.agl = getelementptr i8, ptr %.010122.us55.i, i64 %i.afp
  %i.agm = getelementptr i8, ptr %.010023.us54.i, i64 %i.afp ; 2 uses
  br label %vec.epilog.vector.body1302

vec.epilog.vector.body1302:                       ; preds = %vec.epilog.vector.body1302, %vec.epilog.ph1299
  %index1303 = phi i64 [ %vec.epilog.resume.val1300, %vec.epilog.ph1299 ], [ %index.next1307, %vec.epilog.vector.body1302 ] ; 2 uses
  %i.agn = shl i64 %index1303, 3                  ; 2 uses
  %next.gep1304 = getelementptr i8, ptr %.010122.us55.i, i64 %i.agn
  %next.gep1305 = getelementptr i8, ptr %.010023.us54.i, i64 %i.agn
  %wide.load1306 = load <8 x i64>, ptr %next.gep1304, align 8, !tbaa !113
  store <8 x i64> %wide.load1306, ptr %next.gep1305, align 8, !tbaa !113
  %index.next1307 = add nuw i64 %index1303, 8     ; 2 uses
  %i.ago = icmp eq i64 %index.next1307, %n.vec1301
  br i1 %i.ago, label %vec.epilog.middle.block1308, label %vec.epilog.vector.body1302, !llvm.loop !683

vec.epilog.middle.block1308:                      ; preds = %vec.epilog.vector.body1302
  br i1 %cmp.n1309, label %..preheader7_crit_edge.us60.i, label %vec.epilog.scalar.ph1297.preheader

vec.epilog.scalar.ph1297.preheader:               ; preds = %iter.check1295, %vector.memcheck1278, %vec.epilog.iter.check1296, %vec.epilog.middle.block1308
  %.09614.us57.i.ph = phi i32 [ 0, %iter.check1295 ], [ 0, %vector.memcheck1278 ], [ %i.afm, %vec.epilog.iter.check1296 ], [ %i.afo, %vec.epilog.middle.block1308 ] ; 4 uses
  %.09813.us58.i.ph = phi ptr [ %.010122.us55.i, %iter.check1295 ], [ %.010122.us55.i, %vector.memcheck1278 ], [ %i.agb, %vec.epilog.iter.check1296 ], [ %i.agl, %vec.epilog.middle.block1308 ] ; 2 uses
  %.212.us59.i.ph = phi ptr [ %.010023.us54.i, %iter.check1295 ], [ %.010023.us54.i, %vector.memcheck1278 ], [ %i.agc, %vec.epilog.iter.check1296 ], [ %i.agm, %vec.epilog.middle.block1308 ] ; 2 uses
  %i.agp = sub i32 %i.co, %.09614.us57.i.ph
  %xtraiter = and i32 %i.agp, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph1297.prol.loopexit, label %vec.epilog.scalar.ph1297.prol

vec.epilog.scalar.ph1297.prol:                    ; preds = %vec.epilog.scalar.ph1297.preheader, %vec.epilog.scalar.ph1297.prol
  %.09614.us57.i.prol = phi i32 [ %i.agt, %vec.epilog.scalar.ph1297.prol ], [ %.09614.us57.i.ph, %vec.epilog.scalar.ph1297.preheader ]
  %.09813.us58.i.prol = phi ptr [ %i.agr, %vec.epilog.scalar.ph1297.prol ], [ %.09813.us58.i.ph, %vec.epilog.scalar.ph1297.preheader ] ; 2 uses
  %.212.us59.i.prol = phi ptr [ %i.ags, %vec.epilog.scalar.ph1297.prol ], [ %.212.us59.i.ph, %vec.epilog.scalar.ph1297.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %vec.epilog.scalar.ph1297.prol ], [ 0, %vec.epilog.scalar.ph1297.preheader ]
  %i.agq = load i64, ptr %.09813.us58.i.prol, align 8, !tbaa !113
  store i64 %i.agq, ptr %.212.us59.i.prol, align 8, !tbaa !113
  %i.agr = getelementptr inbounds nuw i8, ptr %.09813.us58.i.prol, i64 8 ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.212.us59.i.prol, i64 8 ; 3 uses
  %i.agt = add nuw nsw i32 %.09614.us57.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph1297.prol.loopexit, label %vec.epilog.scalar.ph1297.prol, !llvm.loop !684

vec.epilog.scalar.ph1297.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1297.prol, %vec.epilog.scalar.ph1297.preheader
  %.lcssa1329.unr = phi ptr [ poison, %vec.epilog.scalar.ph1297.preheader ], [ %i.ags, %vec.epilog.scalar.ph1297.prol ]
  %.09614.us57.i.unr = phi i32 [ %.09614.us57.i.ph, %vec.epilog.scalar.ph1297.preheader ], [ %i.agt, %vec.epilog.scalar.ph1297.prol ]
  %.09813.us58.i.unr = phi ptr [ %.09813.us58.i.ph, %vec.epilog.scalar.ph1297.preheader ], [ %i.agr, %vec.epilog.scalar.ph1297.prol ]
  %.212.us59.i.unr = phi ptr [ %.212.us59.i.ph, %vec.epilog.scalar.ph1297.preheader ], [ %i.ags, %vec.epilog.scalar.ph1297.prol ]
  %i.agu = sub i32 %.09614.us57.i.ph, %i.co
  %i.agv = icmp ugt i32 %i.agu, -8
  br i1 %i.agv, label %..preheader7_crit_edge.us60.i, label %vec.epilog.scalar.ph1297

vec.epilog.scalar.ph1297:                         ; preds = %vec.epilog.scalar.ph1297.prol.loopexit, %vec.epilog.scalar.ph1297
  %.09614.us57.i = phi i32 [ %i.ahu, %vec.epilog.scalar.ph1297 ], [ %.09614.us57.i.unr, %vec.epilog.scalar.ph1297.prol.loopexit ]
  %.09813.us58.i = phi ptr [ %i.ahs, %vec.epilog.scalar.ph1297 ], [ %.09813.us58.i.unr, %vec.epilog.scalar.ph1297.prol.loopexit ] ; 9 uses
  %.212.us59.i = phi ptr [ %i.aht, %vec.epilog.scalar.ph1297 ], [ %.212.us59.i.unr, %vec.epilog.scalar.ph1297.prol.loopexit ] ; 9 uses
  %i.agw = load i64, ptr %.09813.us58.i, align 8, !tbaa !113
  store i64 %i.agw, ptr %.212.us59.i, align 8, !tbaa !113
  %i.agx = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 8
  %i.agy = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 8
  %i.agz = load i64, ptr %i.agx, align 8, !tbaa !113
  store i64 %i.agz, ptr %i.agy, align 8, !tbaa !113
  %i.aha = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 16
  %i.ahb = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 16
  %i.ahc = load i64, ptr %i.aha, align 8, !tbaa !113
  store i64 %i.ahc, ptr %i.ahb, align 8, !tbaa !113
  %i.ahd = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 24
  %i.ahe = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 24
  %i.ahf = load i64, ptr %i.ahd, align 8, !tbaa !113
  store i64 %i.ahf, ptr %i.ahe, align 8, !tbaa !113
  %i.ahg = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 32
  %i.ahh = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 32
  %i.ahi = load i64, ptr %i.ahg, align 8, !tbaa !113
  store i64 %i.ahi, ptr %i.ahh, align 8, !tbaa !113
  %i.ahj = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 40
  %i.ahk = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 40
  %i.ahl = load i64, ptr %i.ahj, align 8, !tbaa !113
  store i64 %i.ahl, ptr %i.ahk, align 8, !tbaa !113
  %i.ahm = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 48
  %i.ahn = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 48
  %i.aho = load i64, ptr %i.ahm, align 8, !tbaa !113
  store i64 %i.aho, ptr %i.ahn, align 8, !tbaa !113
  %i.ahp = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 56
  %i.ahq = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 56
  %i.ahr = load i64, ptr %i.ahp, align 8, !tbaa !113
  store i64 %i.ahr, ptr %i.ahq, align 8, !tbaa !113
  %i.ahs = getelementptr inbounds nuw i8, ptr %.09813.us58.i, i64 64
  %i.aht = getelementptr inbounds nuw i8, ptr %.212.us59.i, i64 64 ; 2 uses
  %i.ahu = add nuw nsw i32 %.09614.us57.i, 8      ; 2 uses
  %exitcond.not.i64.7 = icmp eq i32 %i.ahu, %i.co
  br i1 %exitcond.not.i64.7, label %..preheader7_crit_edge.us60.i, label %vec.epilog.scalar.ph1297, !llvm.loop !685

..preheader7_crit_edge.us60.i:                    ; preds = %vec.epilog.scalar.ph1297.prol.loopexit, %vec.epilog.scalar.ph1297, %vec.epilog.middle.block1308, %middle.block1293
  %.lcssa = phi ptr [ %i.agm, %vec.epilog.middle.block1308 ], [ %i.agc, %middle.block1293 ], [ %.lcssa1329.unr, %vec.epilog.scalar.ph1297.prol.loopexit ], [ %i.aht, %vec.epilog.scalar.ph1297 ] ; 2 uses
  %i.ahv = getelementptr inbounds [2 x i8], ptr %.010122.us55.i, i64 %i.sl ; 2 uses
  %i.ahw = add nuw nsw i32 %.09924.us53.i, 1      ; 2 uses
  %exitcond131.not.i65 = icmp eq i32 %i.ahw, %i.ry
  %indvar.next1275 = add i64 %indvar1274, 1
  br i1 %exitcond131.not.i65, label %.preheader6.i, label %iter.check1295, !llvm.loop !654

.preheader6.i:                                    ; preds = %..preheader7_crit_edge.us60.i, %._crit_edge.us45.i, %._crit_edge.us45.us.i, %._crit_edge.us.i66, %.preheader9.preheader.i, %bb.n
  %.0101.lcssa.i = phi ptr [ %i.sf, %bb.n ], [ %i.afg, %._crit_edge.us45.i ], [ %i.wu, %._crit_edge.us.i66 ], [ %scevgep.i, %.preheader9.preheader.i ], [ %i.adq, %._crit_edge.us45.us.i ], [ %i.ahv, %..preheader7_crit_edge.us60.i ] ; 2 uses
  %.0100.lcssa.i = phi ptr [ %i.bb, %bb.n ], [ %.lcssa252, %._crit_edge.us45.i ], [ %.3.lcssa.us.i67, %._crit_edge.us.i66 ], [ %i.bb, %.preheader9.preheader.i ], [ %.lcssa255, %._crit_edge.us45.us.i ], [ %.lcssa, %..preheader7_crit_edge.us60.i ] ; 2 uses
  %i.ahx = icmp sgt i32 %i.cp, 0
  br i1 %i.ahx, label %.preheader5.lr.ph.i, label %._crit_edge85.i

.preheader5.lr.ph.i:                              ; preds = %.preheader6.i
  %i.ahy = icmp sgt i32 %i.sa, 0
  %i.ahz = icmp sgt i32 %i.co, 0
  %i.aia = icmp sgt i32 %i.sb, 0
  %i.aib = zext i32 %i.sa to i64                  ; 16 uses
  %wide.trip.count163.i = zext i32 %i.sb to i64   ; 9 uses
  %i.aic = shl nuw nsw i64 %wide.trip.count163.i, 3 ; 2 uses
  %i.aid = sub nuw nsw i64 -8, %i.aic
  %i.aie = zext i32 %i.co to i64                  ; 5 uses
  %i.aif = shl nuw nsw i64 %i.aib, 3              ; 2 uses
  %min.iters.check939 = icmp ult i32 %i.sa, 8
  %min.iters.check945 = icmp ult i32 %i.sa, 32
  %i.aig = and i64 %i.aib, 24
  %n.vec947 = and i64 %i.aib, 2147483616          ; 5 uses
  %i.aih = shl nuw nsw i64 %n.vec947, 3
  %cmp.n961 = icmp eq i64 %n.vec947, %i.aib
  %min.epilog.iters.check965 = icmp eq i64 %i.aig, 0
  %n.vec968 = and i64 %i.aib, 2147483640          ; 4 uses
  %i.aii = shl nuw nsw i64 %n.vec968, 3
  %cmp.n976 = icmp eq i64 %n.vec968, %i.aib
  %xtraiter1385 = and i64 %i.aib, 3               ; 2 uses
  %lcmp.mod1386.not = icmp eq i64 %xtraiter1385, 0
  %min.iters.check896 = icmp ult i32 %i.co, 8
  %min.iters.check900 = icmp ult i32 %i.co, 32
  %i.aij = and i64 %i.aie, 24
  %n.vec902 = and i64 %i.aie, 2147483616          ; 5 uses
  %i.aik = trunc nuw nsw i64 %n.vec902 to i32
  %i.ail = shl nuw nsw i64 %n.vec902, 3           ; 2 uses
  %cmp.n913 = icmp eq i64 %n.vec902, %i.aie
  %min.epilog.iters.check917 = icmp eq i64 %i.aij, 0
  %n.vec920 = and i64 %i.aie, 2147483640          ; 4 uses
  %i.aim = trunc nuw nsw i64 %n.vec920 to i32
  %i.ain = shl nuw nsw i64 %n.vec920, 3           ; 2 uses
  %cmp.n928 = icmp eq i64 %n.vec920, %i.aie
  %min.iters.check850 = icmp ult i32 %i.sb, 8
  %min.iters.check856 = icmp ult i32 %i.sb, 32
  %i.aio = and i64 %wide.trip.count163.i, 24
  %n.vec858 = and i64 %wide.trip.count163.i, 2147483616 ; 5 uses
  %i.aip = shl nuw nsw i64 %n.vec858, 3
  %cmp.n872 = icmp eq i64 %n.vec858, %wide.trip.count163.i
  %min.epilog.iters.check876 = icmp eq i64 %i.aio, 0
  %n.vec879 = and i64 %wide.trip.count163.i, 2147483640 ; 4 uses
  %i.aiq = shl nuw nsw i64 %n.vec879, 3
  %cmp.n887 = icmp eq i64 %n.vec879, %wide.trip.count163.i
  %xtraiter1391 = and i64 %wide.trip.count163.i, 3 ; 2 uses
  %lcmp.mod1392.not = icmp eq i64 %xtraiter1391, 0
  br label %.preheader5.i

.preheader5.i:                                    ; preds = %._crit_edge.i61, %.preheader5.lr.ph.i
  %.09484.i = phi i32 [ 0, %.preheader5.lr.ph.i ], [ %i.aos, %._crit_edge.i61 ]
  %.483.i = phi ptr [ %.0100.lcssa.i, %.preheader5.lr.ph.i ], [ %.7.lcssa.i62, %._crit_edge.i61 ] ; 9 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  %i.ans = icmp ugt i64 %i.anr, -4
  br i1 %i.ans, label %._crit_edge.i61, label %vec.epilog.scalar.ph875

.lr.ph75.i:                                       ; preds = %.lr.ph75.i.prol.loopexit, %.lr.ph75.i
  %.09274.i = phi i32 [ %i.aor, %.lr.ph75.i ], [ %.09274.i.unr, %.lr.ph75.i.prol.loopexit ]
  %.673.i = phi ptr [ %i.aoq, %.lr.ph75.i ], [ %.673.i.unr, %.lr.ph75.i.prol.loopexit ] ; 9 uses
  %.210372.i = phi ptr [ %i.aop, %.lr.ph75.i ], [ %.210372.i.unr, %.lr.ph75.i.prol.loopexit ] ; 9 uses
  %i.ant = load i64, ptr %.210372.i, align 8, !tbaa !113
  store i64 %i.ant, ptr %.673.i, align 8, !tbaa !113
  %i.anu = getelementptr inbounds nuw i8, ptr %.210372.i, i64 8
  %i.anv = getelementptr inbounds nuw i8, ptr %.673.i, i64 8
  %i.anw = load i64, ptr %i.anu, align 8, !tbaa !113
  store i64 %i.anw, ptr %i.anv, align 8, !tbaa !113
  %i.anx = getelementptr inbounds nuw i8, ptr %.210372.i, i64 16
  %i.any = getelementptr inbounds nuw i8, ptr %.673.i, i64 16
  %i.anz = load i64, ptr %i.anx, align 8, !tbaa !113
  store i64 %i.anz, ptr %i.any, align 8, !tbaa !113
  %i.aoa = getelementptr inbounds nuw i8, ptr %.210372.i, i64 24
  %i.aob = getelementptr inbounds nuw i8, ptr %.673.i, i64 24
  %i.aoc = load i64, ptr %i.aoa, align 8, !tbaa !113
  store i64 %i.aoc, ptr %i.aob, align 8, !tbaa !113
  %i.aod = getelementptr inbounds nuw i8, ptr %.210372.i, i64 32
  %i.aoe = getelementptr inbounds nuw i8, ptr %.673.i, i64 32
  %i.aof = load i64, ptr %i.aod, align 8, !tbaa !113
  store i64 %i.aof, ptr %i.aoe, align 8, !tbaa !113
  %i.aog = getelementptr inbounds nuw i8, ptr %.210372.i, i64 40
  %i.aoh = getelementptr inbounds nuw i8, ptr %.673.i, i64 40
  %i.aoi = load i64, ptr %i.aog, align 8, !tbaa !113
  store i64 %i.aoi, ptr %i.aoh, align 8, !tbaa !113
  %i.aoj = getelementptr inbounds nuw i8, ptr %.210372.i, i64 48
  %i.aok = getelementptr inbounds nuw i8, ptr %.673.i, i64 48
  %i.aol = load i64, ptr %i.aoj, align 8, !tbaa !113
  store i64 %i.aol, ptr %i.aok, align 8, !tbaa !113
  %i.aom = getelementptr inbounds nuw i8, ptr %.210372.i, i64 56
  %i.aon = getelementptr inbounds nuw i8, ptr %.673.i, i64 56
  %i.aoo = load i64, ptr %i.aom, align 8, !tbaa !113
  store i64 %i.aoo, ptr %i.aon, align 8, !tbaa !113
  %i.aop = getelementptr inbounds nuw i8, ptr %.210372.i, i64 64 ; 2 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %.673.i, i64 64 ; 2 uses
  %i.aor = add nuw nsw i32 %.09274.i, 8           ; 2 uses
  %exitcond159.not.i.7 = icmp eq i32 %i.aor, %i.co
  br i1 %exitcond159.not.i.7, label %.preheader3.i59, label %.lr.ph75.i, !llvm.loop !702

._crit_edge.i61:                                  ; preds = %vec.epilog.scalar.ph875.prol.loopexit, %vec.epilog.scalar.ph875, %middle.block871, %vec.epilog.middle.block886, %.preheader3.i59
  %.7.lcssa.i62 = phi ptr [ %.6.lcssa.i60, %.preheader3.i59 ], [ %i.ani, %vec.epilog.middle.block886 ], [ %i.amw, %middle.block871 ], [ %.lcssa1345.unr, %vec.epilog.scalar.ph875.prol.loopexit ], [ %i.apg, %vec.epilog.scalar.ph875 ] ; 2 uses
  %i.aos = add nuw nsw i32 %.09484.i, 1           ; 2 uses
  %exitcond165.not.i = icmp eq i32 %i.aos, %i.cp
  br i1 %exitcond165.not.i, label %._crit_edge85.i, label %.preheader5.i, !llvm.loop !703

vec.epilog.scalar.ph875:                          ; preds = %vec.epilog.scalar.ph875.prol.loopexit, %vec.epilog.scalar.ph875
  %indvars.iv160.i = phi i64 [ %indvars.iv.next161.i.3, %vec.epilog.scalar.ph875 ], [ %indvars.iv160.i.unr, %vec.epilog.scalar.ph875.prol.loopexit ] ; 5 uses
  %.778.i = phi ptr [ %i.apg, %vec.epilog.scalar.ph875 ], [ %.778.i.unr, %vec.epilog.scalar.ph875.prol.loopexit ] ; 5 uses
  %.idx196.i = mul nsw i64 %indvars.iv160.i, -8
  %i.aot = getelementptr inbounds i8, ptr %i.ams, i64 %.idx196.i
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !113
  store i64 %i.aou, ptr %.778.i, align 8, !tbaa !113
  %i.aov = getelementptr inbounds nuw i8, ptr %.778.i, i64 8
  %indvars.iv.next161.i.neg = xor i64 %indvars.iv160.i, -1
  %.idx196.i.1 = shl nsw i64 %indvars.iv.next161.i.neg, 3
  %i.aow = getelementptr inbounds i8, ptr %i.ams, i64 %.idx196.i.1
  %i.aox = load i64, ptr %i.aow, align 8, !tbaa !113
  store i64 %i.aox, ptr %i.aov, align 8, !tbaa !113
  %i.aoy = getelementptr inbounds nuw i8, ptr %.778.i, i64 16
  %i.aoz = shl i64 %indvars.iv160.i, 3
  %.idx196.i.2 = sub i64 -16, %i.aoz
  %i.apa = getelementptr inbounds i8, ptr %i.ams, i64 %.idx196.i.2
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !113
  store i64 %i.apb, ptr %i.aoy, align 8, !tbaa !113
  %i.apc = getelementptr inbounds nuw i8, ptr %.778.i, i64 24
  %i.apd = shl i64 %indvars.iv160.i, 3
  %.idx196.i.3 = sub i64 -24, %i.apd
  %i.ape = getelementptr inbounds i8, ptr %i.ams, i64 %.idx196.i.3
  %i.apf = load i64, ptr %i.ape, align 8, !tbaa !113
  store i64 %i.apf, ptr %i.apc, align 8, !tbaa !113
  %i.apg = getelementptr inbounds nuw i8, ptr %.778.i, i64 32 ; 2 uses
  %indvars.iv.next161.i.3 = add nuw nsw i64 %indvars.iv160.i, 4 ; 2 uses
  %exitcond164.not.i.3 = icmp eq i64 %indvars.iv.next161.i.3, %wide.trip.count163.i
  br i1 %exitcond164.not.i.3, label %._crit_edge.i61, label %vec.epilog.scalar.ph875, !llvm.loop !704

.preheader2.i51:                                  ; preds = %._crit_edge101.i, %.preheader2.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge101.i ], [ 0, %.preheader2.lr.ph.i ] ; 2 uses
  %.090105.i = phi i32 [ %i.atz, %._crit_edge101.i ], [ 0, %.preheader2.lr.ph.i ]
  %.8104.i = phi ptr [ %.11.lcssa.i56, %._crit_edge101.i ], [ %.4.lcssa.i50, %.preheader2.lr.ph.i ] ; 9 uses
  %.3104103.i = phi ptr [ %i.aty, %._crit_edge101.i ], [ %i.ajz, %.preheader2.lr.ph.i ] ; 15 uses
  br i1 %i.aka, label %iter.check826, label %.preheader1.i52

iter.check826:                                    ; preds = %.preheader2.i51
  br i1 %min.iters.check803, label %.lr.ph90.i.preheader, label %vector.memcheck804

vector.memcheck804:                               ; preds = %iter.check826
  %i.aph = getelementptr i8, ptr %.8104.i, i64 %i.akm
  %bound0805 = icmp ult ptr %.8104.i, %scevgep800
  %bound1806 = icmp ult ptr %scevgep802, %i.aph
  %found.conflict807 = and i1 %bound0805, %bound1806
  %i.api = or i1 %found.conflict807, %stride.check
  br i1 %i.api, label %.lr.ph90.i.preheader, label %vector.main.loop.iter.check808

vector.main.loop.iter.check808:                   ; preds = %vector.memcheck804
  br i1 %min.iters.check809, label %vec.epilog.ph830, label %vector.ph810

vector.ph810:                                     ; preds = %vector.main.loop.iter.check808
  %i.apj = getelementptr i8, ptr %.8104.i, i64 %i.akw ; 2 uses
  br label %vector.body812

vector.body812:                                   ; preds = %vector.ph810, %vector.body812
  %index813 = phi i64 [ 0, %vector.ph810 ], [ %index.next823, %vector.body812 ] ; 3 uses
  %i.apk = shl i64 %index813, 3
  %next.gep814 = getelementptr i8, ptr %.8104.i, i64 %i.apk ; 4 uses
  %i.apl = sub nuw nsw i64 %i.akf, %index813
  %i.apm = shl nuw nsw i64 %i.apl, 3
  %i.apn = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %i.apm ; 4 uses
  %i.apo = getelementptr inbounds i8, ptr %i.apn, i64 -56
  %i.app = getelementptr inbounds i8, ptr %i.apn, i64 -120
  %i.apq = getelementptr inbounds i8, ptr %i.apn, i64 -184
  %i.apr = getelementptr inbounds i8, ptr %i.apn, i64 -248
  %wide.load815 = load <8 x i64>, ptr %i.apo, align 8, !tbaa !113, !alias.scope !738
  %wide.load816 = load <8 x i64>, ptr %i.app, align 8, !tbaa !113, !alias.scope !738
  %wide.load817 = load <8 x i64>, ptr %i.apq, align 8, !tbaa !113, !alias.scope !738
  %wide.load818 = load <8 x i64>, ptr %i.apr, align 8, !tbaa !113, !alias.scope !738
  %reverse819 = shufflevector <8 x i64> %wide.load815, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse820 = shufflevector <8 x i64> %wide.load816, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse821 = shufflevector <8 x i64> %wide.load817, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse822 = shufflevector <8 x i64> %wide.load818, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aps = getelementptr i8, ptr %next.gep814, i64 64
  %i.apt = getelementptr i8, ptr %next.gep814, i64 128
  %i.apu = getelementptr i8, ptr %next.gep814, i64 192
  store <8 x i64> %reverse819, ptr %next.gep814, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  store <8 x i64> %reverse820, ptr %i.aps, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  store <8 x i64> %reverse821, ptr %i.apt, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  store <8 x i64> %reverse822, ptr %i.apu, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  %index.next823 = add nuw i64 %index813, 32      ; 2 uses
  %i.apv = icmp eq i64 %index.next823, %n.vec811
  br i1 %i.apv, label %middle.block824, label %vector.body812, !llvm.loop !708

middle.block824:                                  ; preds = %vector.body812
  br i1 %cmp.n825, label %.preheader1.i52, label %vec.epilog.iter.check827

vec.epilog.iter.check827:                         ; preds = %middle.block824
  br i1 %min.epilog.iters.check829, label %.lr.ph90.i.preheader, label %vec.epilog.ph830, !prof !117

vec.epilog.ph830:                                 ; preds = %vector.main.loop.iter.check808, %vec.epilog.iter.check827
  %vec.epilog.resume.val831 = phi i64 [ %n.vec811, %vec.epilog.iter.check827 ], [ 0, %vector.main.loop.iter.check808 ]
  %i.apw = getelementptr i8, ptr %.8104.i, i64 %i.akx ; 2 uses
  br label %vec.epilog.vector.body833

vec.epilog.vector.body833:                        ; preds = %vec.epilog.vector.body833, %vec.epilog.ph830
  %index834 = phi i64 [ %vec.epilog.resume.val831, %vec.epilog.ph830 ], [ %index.next838, %vec.epilog.vector.body833 ] ; 3 uses
  %i.apx = shl i64 %index834, 3
  %next.gep835 = getelementptr i8, ptr %.8104.i, i64 %i.apx
  %i.apy = sub nuw nsw i64 %i.akf, %index834
  %i.apz = shl nuw nsw i64 %i.apy, 3
  %i.aqa = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %i.apz
  %i.aqb = getelementptr inbounds i8, ptr %i.aqa, i64 -56
  %wide.load836 = load <8 x i64>, ptr %i.aqb, align 8, !tbaa !113, !alias.scope !738
  %reverse837 = shufflevector <8 x i64> %wide.load836, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse837, ptr %next.gep835, align 8, !tbaa !113, !alias.scope !739, !noalias !738
  %index.next838 = add nuw i64 %index834, 8       ; 2 uses
  %i.aqc = icmp eq i64 %index.next838, %n.vec832
  br i1 %i.aqc, label %vec.epilog.middle.block839, label %vec.epilog.vector.body833, !llvm.loop !709

vec.epilog.middle.block839:                       ; preds = %vec.epilog.vector.body833
  br i1 %cmp.n840, label %.preheader1.i52, label %.lr.ph90.i.preheader

.lr.ph90.i.preheader:                             ; preds = %iter.check826, %vector.memcheck804, %vec.epilog.iter.check827, %vec.epilog.middle.block839
  %indvars.iv166.i.ph = phi i64 [ 0, %iter.check826 ], [ 0, %vector.memcheck804 ], [ %n.vec811, %vec.epilog.iter.check827 ], [ %n.vec832, %vec.epilog.middle.block839 ] ; 3 uses
  %.988.i.ph = phi ptr [ %.8104.i, %iter.check826 ], [ %.8104.i, %vector.memcheck804 ], [ %i.apj, %vec.epilog.iter.check827 ], [ %i.apw, %vec.epilog.middle.block839 ] ; 2 uses
  br i1 %lcmp.mod1395.not, label %.lr.ph90.i.prol.loopexit, label %.lr.ph90.i.prol

.lr.ph90.i.prol:                                  ; preds = %.lr.ph90.i.preheader, %.lr.ph90.i.prol
  %indvars.iv166.i.prol = phi i64 [ %indvars.iv.next167.i.prol, %.lr.ph90.i.prol ], [ %indvars.iv166.i.ph, %.lr.ph90.i.preheader ] ; 2 uses
  %.988.i.prol = phi ptr [ %i.aqg, %.lr.ph90.i.prol ], [ %.988.i.ph, %.lr.ph90.i.preheader ] ; 2 uses
  %prol.iter1396 = phi i64 [ %prol.iter1396.next, %.lr.ph90.i.prol ], [ 0, %.lr.ph90.i.preheader ]
  %i.aqd = sub nuw nsw i64 %i.akf, %indvars.iv166.i.prol
  %.idx197.i.prol = shl nuw nsw i64 %i.aqd, 3
  %i.aqe = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.prol
  %i.aqf = load i64, ptr %i.aqe, align 8, !tbaa !113
  store i64 %i.aqf, ptr %.988.i.prol, align 8, !tbaa !113
  %i.aqg = getelementptr inbounds nuw i8, ptr %.988.i.prol, i64 8 ; 3 uses
  %indvars.iv.next167.i.prol = add nuw nsw i64 %indvars.iv166.i.prol, 1 ; 2 uses
  %prol.iter1396.next = add i64 %prol.iter1396, 1 ; 2 uses
  %prol.iter1396.cmp.not = icmp eq i64 %prol.iter1396.next, %xtraiter1394
  br i1 %prol.iter1396.cmp.not, label %.lr.ph90.i.prol.loopexit, label %.lr.ph90.i.prol, !llvm.loop !710

.lr.ph90.i.prol.loopexit:                         ; preds = %.lr.ph90.i.prol, %.lr.ph90.i.preheader
  %.lcssa1346.unr = phi ptr [ poison, %.lr.ph90.i.preheader ], [ %i.aqg, %.lr.ph90.i.prol ]
  %indvars.iv166.i.unr = phi i64 [ %indvars.iv166.i.ph, %.lr.ph90.i.preheader ], [ %indvars.iv.next167.i.prol, %.lr.ph90.i.prol ]
  %.988.i.unr = phi ptr [ %.988.i.ph, %.lr.ph90.i.preheader ], [ %i.aqg, %.lr.ph90.i.prol ]
  %i.aqh = sub nsw i64 %indvars.iv166.i.ph, %i.akf
  %i.aqi = icmp ugt i64 %i.aqh, -4
  br i1 %i.aqi, label %.preheader1.i52, label %.lr.ph90.i

.preheader1.i52:                                  ; preds = %.lr.ph90.i.prol.loopexit, %.lr.ph90.i, %middle.block824, %vec.epilog.middle.block839, %.preheader2.i51
  %.9.lcssa.i53 = phi ptr [ %.8104.i, %.preheader2.i51 ], [ %i.apw, %vec.epilog.middle.block839 ], [ %i.apj, %middle.block824 ], [ %.lcssa1346.unr, %.lr.ph90.i.prol.loopexit ], [ %i.arx, %.lr.ph90.i ] ; 8 uses
  %.9.lcssa.i53756 = ptrtoaddr ptr %.9.lcssa.i53 to i64
  br i1 %i.akb, label %iter.check775, label %.preheader.i54

iter.check775:                                    ; preds = %.preheader1.i52
  br i1 %min.iters.check757, label %.lr.ph95.i.preheader, label %vector.memcheck758

vector.memcheck758:                               ; preds = %iter.check775
  %i.aqj = mul nsw i64 %indvar, %i.aki
  %i.aqk = add i64 %i.akk, %i.aqj
  %i.aql = add i64 %i.aqk, %.9.lcssa.i53756
  %i.aqm = add i64 %i.aql, -1
  %diff.check759 = icmp ult i64 %i.aqm, 255
  br i1 %diff.check759, label %.lr.ph95.i.preheader, label %vector.main.loop.iter.check760

vector.main.loop.iter.check760:                   ; preds = %vector.memcheck758
  br i1 %min.iters.check761, label %vec.epilog.ph779, label %vector.ph762

vector.ph762:                                     ; preds = %vector.main.loop.iter.check760
  %i.aqn = getelementptr i8, ptr %.3104103.i, i64 %i.ala ; 2 uses
  %i.aqo = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.ala ; 2 uses
  br label %vector.body764

vector.body764:                                   ; preds = %vector.ph762, %vector.body764
  %index765 = phi i64 [ 0, %vector.ph762 ], [ %index.next772, %vector.body764 ] ; 2 uses
  %i.aqp = shl i64 %index765, 3                   ; 2 uses
  %next.gep766 = getelementptr i8, ptr %.3104103.i, i64 %i.aqp ; 4 uses
  %next.gep767 = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.aqp ; 4 uses
  %i.aqq = getelementptr i8, ptr %next.gep766, i64 64
  %i.aqr = getelementptr i8, ptr %next.gep766, i64 128
  %i.aqs = getelementptr i8, ptr %next.gep766, i64 192
  %wide.load768 = load <8 x i64>, ptr %next.gep766, align 8, !tbaa !113
  %wide.load769 = load <8 x i64>, ptr %i.aqq, align 8, !tbaa !113
  %wide.load770 = load <8 x i64>, ptr %i.aqr, align 8, !tbaa !113
  %wide.load771 = load <8 x i64>, ptr %i.aqs, align 8, !tbaa !113
  %i.aqt = getelementptr i8, ptr %next.gep767, i64 64
  %i.aqu = getelementptr i8, ptr %next.gep767, i64 128
  %i.aqv = getelementptr i8, ptr %next.gep767, i64 192
  store <8 x i64> %wide.load768, ptr %next.gep767, align 8, !tbaa !113
  store <8 x i64> %wide.load769, ptr %i.aqt, align 8, !tbaa !113
  store <8 x i64> %wide.load770, ptr %i.aqu, align 8, !tbaa !113
  store <8 x i64> %wide.load771, ptr %i.aqv, align 8, !tbaa !113
  %index.next772 = add nuw i64 %index765, 32      ; 2 uses
  %i.aqw = icmp eq i64 %index.next772, %n.vec763
  br i1 %i.aqw, label %middle.block773, label %vector.body764, !llvm.loop !711

middle.block773:                                  ; preds = %vector.body764
  br i1 %cmp.n774, label %.preheader.i54, label %vec.epilog.iter.check776

vec.epilog.iter.check776:                         ; preds = %middle.block773
  br i1 %min.epilog.iters.check778, label %.lr.ph95.i.preheader, label %vec.epilog.ph779, !prof !117

vec.epilog.ph779:                                 ; preds = %vector.main.loop.iter.check760, %vec.epilog.iter.check776
  %vec.epilog.resume.val780 = phi i64 [ %n.vec763, %vec.epilog.iter.check776 ], [ 0, %vector.main.loop.iter.check760 ]
  %i.aqx = getelementptr i8, ptr %.3104103.i, i64 %i.alc ; 2 uses
  %i.aqy = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.alc ; 2 uses
  br label %vec.epilog.vector.body782

vec.epilog.vector.body782:                        ; preds = %vec.epilog.vector.body782, %vec.epilog.ph779
  %index783 = phi i64 [ %vec.epilog.resume.val780, %vec.epilog.ph779 ], [ %index.next787, %vec.epilog.vector.body782 ] ; 2 uses
  %i.aqz = shl i64 %index783, 3                   ; 2 uses
  %next.gep784 = getelementptr i8, ptr %.3104103.i, i64 %i.aqz
  %next.gep785 = getelementptr i8, ptr %.9.lcssa.i53, i64 %i.aqz
  %wide.load786 = load <8 x i64>, ptr %next.gep784, align 8, !tbaa !113
  store <8 x i64> %wide.load786, ptr %next.gep785, align 8, !tbaa !113
  %index.next787 = add nuw i64 %index783, 8       ; 2 uses
  %i.ara = icmp eq i64 %index.next787, %n.vec781
  br i1 %i.ara, label %vec.epilog.middle.block788, label %vec.epilog.vector.body782, !llvm.loop !712

vec.epilog.middle.block788:                       ; preds = %vec.epilog.vector.body782
  br i1 %cmp.n789, label %.preheader.i54, label %.lr.ph95.i.preheader

.lr.ph95.i.preheader:                             ; preds = %iter.check775, %vector.memcheck758, %vec.epilog.iter.check776, %vec.epilog.middle.block788
  %.08794.i.ph = phi i32 [ 0, %iter.check775 ], [ 0, %vector.memcheck758 ], [ %i.akz, %vec.epilog.iter.check776 ], [ %i.alb, %vec.epilog.middle.block788 ] ; 4 uses
  %.08993.i.ph = phi ptr [ %.3104103.i, %iter.check775 ], [ %.3104103.i, %vector.memcheck758 ], [ %i.aqn, %vec.epilog.iter.check776 ], [ %i.aqx, %vec.epilog.middle.block788 ] ; 2 uses
  %.1092.i.ph = phi ptr [ %.9.lcssa.i53, %iter.check775 ], [ %.9.lcssa.i53, %vector.memcheck758 ], [ %i.aqo, %vec.epilog.iter.check776 ], [ %i.aqy, %vec.epilog.middle.block788 ] ; 2 uses
  %i.arb = sub i32 %i.co, %.08794.i.ph
  %xtraiter1397 = and i32 %i.arb, 7               ; 2 uses
  %lcmp.mod1398.not = icmp eq i32 %xtraiter1397, 0
  br i1 %lcmp.mod1398.not, label %.lr.ph95.i.prol.loopexit, label %.lr.ph95.i.prol

.lr.ph95.i.prol:                                  ; preds = %.lr.ph95.i.preheader, %.lr.ph95.i.prol
  %.08794.i.prol = phi i32 [ %i.arf, %.lr.ph95.i.prol ], [ %.08794.i.ph, %.lr.ph95.i.preheader ]
  %.08993.i.prol = phi ptr [ %i.ard, %.lr.ph95.i.prol ], [ %.08993.i.ph, %.lr.ph95.i.preheader ] ; 2 uses
  %.1092.i.prol = phi ptr [ %i.are, %.lr.ph95.i.prol ], [ %.1092.i.ph, %.lr.ph95.i.preheader ] ; 2 uses
  %prol.iter1399 = phi i32 [ %prol.iter1399.next, %.lr.ph95.i.prol ], [ 0, %.lr.ph95.i.preheader ]
  %i.arc = load i64, ptr %.08993.i.prol, align 8, !tbaa !113
  store i64 %i.arc, ptr %.1092.i.prol, align 8, !tbaa !113
  %i.ard = getelementptr inbounds nuw i8, ptr %.08993.i.prol, i64 8 ; 3 uses
  %i.are = getelementptr inbounds nuw i8, ptr %.1092.i.prol, i64 8 ; 3 uses
  %i.arf = add nuw nsw i32 %.08794.i.prol, 1      ; 2 uses
  %prol.iter1399.next = add i32 %prol.iter1399, 1 ; 2 uses
  %prol.iter1399.cmp.not = icmp eq i32 %prol.iter1399.next, %xtraiter1397
  br i1 %prol.iter1399.cmp.not, label %.lr.ph95.i.prol.loopexit, label %.lr.ph95.i.prol, !llvm.loop !713

.lr.ph95.i.prol.loopexit:                         ; preds = %.lr.ph95.i.prol, %.lr.ph95.i.preheader
  %.lcssa1348.unr = phi ptr [ poison, %.lr.ph95.i.preheader ], [ %i.ard, %.lr.ph95.i.prol ]
  %.lcssa1347.unr = phi ptr [ poison, %.lr.ph95.i.preheader ], [ %i.are, %.lr.ph95.i.prol ]
  %.08794.i.unr = phi i32 [ %.08794.i.ph, %.lr.ph95.i.preheader ], [ %i.arf, %.lr.ph95.i.prol ]
  %.08993.i.unr = phi ptr [ %.08993.i.ph, %.lr.ph95.i.preheader ], [ %i.ard, %.lr.ph95.i.prol ]
  %.1092.i.unr = phi ptr [ %.1092.i.ph, %.lr.ph95.i.preheader ], [ %i.are, %.lr.ph95.i.prol ]
  %i.arg = sub i32 %.08794.i.ph, %i.co
  %i.arh = icmp ugt i32 %i.arg, -8
  br i1 %i.arh, label %.preheader.i54, label %.lr.ph95.i

.lr.ph90.i:                                       ; preds = %.lr.ph90.i.prol.loopexit, %.lr.ph90.i
  %indvars.iv166.i = phi i64 [ %indvars.iv.next167.i.3, %.lr.ph90.i ], [ %indvars.iv166.i.unr, %.lr.ph90.i.prol.loopexit ] ; 5 uses
  %.988.i = phi ptr [ %i.arx, %.lr.ph90.i ], [ %.988.i.unr, %.lr.ph90.i.prol.loopexit ] ; 5 uses
  %i.ari = sub nuw nsw i64 %i.akf, %indvars.iv166.i
  %.idx197.i = shl nuw nsw i64 %i.ari, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !113
  store i64 %i.ark, ptr %.988.i, align 8, !tbaa !113
  %i.arl = getelementptr inbounds nuw i8, ptr %.988.i, i64 8
  %indvars.iv.next167.i.neg = xor i64 %indvars.iv166.i, -1
  %i.arm = add i64 %indvars.iv.next167.i.neg, %i.akf
  %.idx197.i.1 = shl nuw nsw i64 %i.arm, 3
  %i.arn = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.1
  %i.aro = load i64, ptr %i.arn, align 8, !tbaa !113
  store i64 %i.aro, ptr %i.arl, align 8, !tbaa !113
  %i.arp = getelementptr inbounds nuw i8, ptr %.988.i, i64 16
  %indvars.iv.next167.i.1 = add nuw nsw i64 %indvars.iv166.i, 2
  %i.arq = sub nuw nsw i64 %i.akf, %indvars.iv.next167.i.1
  %.idx197.i.2 = shl nuw nsw i64 %i.arq, 3
  %i.arr = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.2
  %i.ars = load i64, ptr %i.arr, align 8, !tbaa !113
  store i64 %i.ars, ptr %i.arp, align 8, !tbaa !113
  %i.art = getelementptr inbounds nuw i8, ptr %.988.i, i64 24
  %indvars.iv.next167.i.2 = add nuw nsw i64 %indvars.iv166.i, 3
  %i.aru = sub nuw nsw i64 %i.akf, %indvars.iv.next167.i.2
  %.idx197.i.3 = shl nuw nsw i64 %i.aru, 3
  %i.arv = getelementptr inbounds nuw i8, ptr %.3104103.i, i64 %.idx197.i.3
  %i.arw = load i64, ptr %i.arv, align 8, !tbaa !113
  store i64 %i.arw, ptr %i.art, align 8, !tbaa !113
  %i.arx = getelementptr inbounds nuw i8, ptr %.988.i, i64 32 ; 2 uses
  %indvars.iv.next167.i.3 = add nuw nsw i64 %indvars.iv166.i, 4 ; 2 uses
  %exitcond170.not.i.3 = icmp eq i64 %indvars.iv.next167.i.3, %i.akf
  br i1 %exitcond170.not.i.3, label %.preheader1.i52, label %.lr.ph90.i, !llvm.loop !714

.preheader.i54:                                   ; preds = %.lr.ph95.i.prol.loopexit, %.lr.ph95.i, %middle.block773, %vec.epilog.middle.block788, %.preheader1.i52
  %.10.lcssa.i55 = phi ptr [ %.9.lcssa.i53, %.preheader1.i52 ], [ %i.aqy, %vec.epilog.middle.block788 ], [ %i.aqo, %middle.block773 ], [ %.lcssa1347.unr, %.lr.ph95.i.prol.loopexit ], [ %i.atw, %.lr.ph95.i ] ; 9 uses
  %.089.lcssa.i = phi ptr [ %.3104103.i, %.preheader1.i52 ], [ %i.aqx, %vec.epilog.middle.block788 ], [ %i.aqn, %middle.block773 ], [ %.lcssa1348.unr, %.lr.ph95.i.prol.loopexit ], [ %i.atv, %.lr.ph95.i ] ; 3 uses
  br i1 %i.akc, label %iter.check734, label %._crit_edge101.i

iter.check734:                                    ; preds = %.preheader.i54
  %i.ary = getelementptr inbounds i8, ptr %.089.lcssa.i, i64 -16 ; 7 uses
  br i1 %min.iters.check715, label %vec.epilog.scalar.ph736.preheader, label %vector.memcheck716

vector.memcheck716:                               ; preds = %iter.check734
  %i.arz = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.akg
  %i.asa = getelementptr i8, ptr %.089.lcssa.i, i64 %i.akh
  %i.asb = getelementptr i8, ptr %.089.lcssa.i, i64 -8
  %bound0 = icmp ult ptr %.10.lcssa.i55, %i.asb
  %bound1 = icmp ult ptr %i.asa, %i.arz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph736.preheader, label %vector.main.loop.iter.check717

vector.main.loop.iter.check717:                   ; preds = %vector.memcheck716
  br i1 %min.iters.check718, label %vec.epilog.ph738, label %vector.ph719

vector.ph719:                                     ; preds = %vector.main.loop.iter.check717
  %i.asc = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.ale ; 2 uses
  br label %vector.body721

vector.body721:                                   ; preds = %vector.ph719, %vector.body721
  %index722 = phi i64 [ 0, %vector.ph719 ], [ %index.next731, %vector.body721 ] ; 3 uses
  %i.asd = shl i64 %index722, 3
  %next.gep723 = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.asd ; 4 uses
  %i.ase = mul nsw i64 %index722, -8
  %i.asf = getelementptr inbounds i8, ptr %i.ary, i64 %i.ase ; 4 uses
  %i.asg = getelementptr inbounds i8, ptr %i.asf, i64 -56
  %i.ash = getelementptr inbounds i8, ptr %i.asf, i64 -120
  %i.asi = getelementptr inbounds i8, ptr %i.asf, i64 -184
  %i.asj = getelementptr inbounds i8, ptr %i.asf, i64 -248
  %wide.load724 = load <8 x i64>, ptr %i.asg, align 8, !tbaa !113, !alias.scope !740
  %wide.load725 = load <8 x i64>, ptr %i.ash, align 8, !tbaa !113, !alias.scope !740
  %wide.load726 = load <8 x i64>, ptr %i.asi, align 8, !tbaa !113, !alias.scope !740
  %wide.load727 = load <8 x i64>, ptr %i.asj, align 8, !tbaa !113, !alias.scope !740
  %reverse = shufflevector <8 x i64> %wide.load724, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse728 = shufflevector <8 x i64> %wide.load725, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse729 = shufflevector <8 x i64> %wide.load726, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse730 = shufflevector <8 x i64> %wide.load727, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ask = getelementptr i8, ptr %next.gep723, i64 64
  %i.asl = getelementptr i8, ptr %next.gep723, i64 128
  %i.asm = getelementptr i8, ptr %next.gep723, i64 192
  store <8 x i64> %reverse, ptr %next.gep723, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  store <8 x i64> %reverse728, ptr %i.ask, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  store <8 x i64> %reverse729, ptr %i.asl, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  store <8 x i64> %reverse730, ptr %i.asm, align 8, !tbaa !113, !alias.scope !741, !noalias !740
  %index.next731 = add nuw i64 %index722, 32      ; 2 uses
  %i.asn = icmp eq i64 %index.next731, %n.vec720
  br i1 %i.asn, label %middle.block732, label %vector.body721, !llvm.loop !718

middle.block732:                                  ; preds = %vector.body721
  br i1 %cmp.n733, label %._crit_edge101.i, label %vec.epilog.iter.check735

vec.epilog.iter.check735:                         ; preds = %middle.block732
  br i1 %min.epilog.iters.check737, label %vec.epilog.scalar.ph736.preheader, label %vec.epilog.ph738, !prof !117

vec.epilog.ph738:                                 ; preds = %vector.main.loop.iter.check717, %vec.epilog.iter.check735
  %vec.epilog.resume.val739 = phi i64 [ %n.vec720, %vec.epilog.iter.check735 ], [ 0, %vector.main.loop.iter.check717 ]
  %i.aso = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.alf ; 2 uses
  br label %vec.epilog.vector.body741

vec.epilog.vector.body741:                        ; preds = %vec.epilog.vector.body741, %vec.epilog.ph738
  %index742 = phi i64 [ %vec.epilog.resume.val739, %vec.epilog.ph738 ], [ %index.next746, %vec.epilog.vector.body741 ] ; 3 uses
  %i.asp = shl i64 %index742, 3
  %next.gep743 = getelementptr i8, ptr %.10.lcssa.i55, i64 %i.asp
  %i.asq = mul nsw i64 %index742, -8
end_hunk_1
