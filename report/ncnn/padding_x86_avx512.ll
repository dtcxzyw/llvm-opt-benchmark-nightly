Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding_x86_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 241
begin_hunk_0_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a
  %wide.load1091 = load <8 x i64>, ptr %i.tw, align 8, !tbaa !113, !alias.scope !726
  %wide.load1092 = load <8 x i64>, ptr %i.tx, align 8, !tbaa !113, !alias.scope !726
  %reverse1093 = shufflevector <8 x i64> %wide.load1089, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1094 = shufflevector <8 x i64> %wide.load1090, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1095 = shufflevector <8 x i64> %wide.load1091, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1096 = shufflevector <8 x i64> %wide.load1092, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ty = getelementptr i8, ptr %next.gep1088, i64 64
  %i.tz = getelementptr i8, ptr %next.gep1088, i64 128
  %i.ua = getelementptr i8, ptr %next.gep1088, i64 192
  store <8 x i64> %reverse1093, ptr %next.gep1088, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1094, ptr %i.ty, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1095, ptr %i.tz, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  store <8 x i64> %reverse1096, ptr %i.ua, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  %index.next1097 = add nuw i64 %index1087, 32    ; 2 uses
  %i.ub = icmp eq i64 %index.next1097, %n.vec1085
  br i1 %i.ub, label %middle.block1098, label %vector.body1086, !llvm.loop !648

middle.block1098:                                 ; preds = %vector.body1086
  br i1 %cmp.n1099, label %..preheader8_crit_edge.us.i, label %vec.epilog.iter.check1104

vec.epilog.iter.check1104:                        ; preds = %middle.block1098
  br i1 %min.epilog.iters.check1105, label %vec.epilog.scalar.ph1103.preheader, label %vec.epilog.ph1106, !prof !117

vec.epilog.ph1106:                                ; preds = %vector.main.loop.iter.check1082, %vec.epilog.iter.check1104
  %vec.epilog.resume.val1100 = phi i64 [ %n.vec1085, %vec.epilog.iter.check1104 ], [ 0, %vector.main.loop.iter.check1082 ]
  %i.uc = getelementptr i8, ptr %.010023.us.i, i64 %i.te ; 2 uses
  br label %vec.epilog.vector.body1108

vec.epilog.vector.body1108:                       ; preds = %vec.epilog.vector.body1108, %vec.epilog.ph1106
  %index1109 = phi i64 [ %vec.epilog.resume.val1100, %vec.epilog.ph1106 ], [ %index.next1113, %vec.epilog.vector.body1108 ] ; 3 uses
  %i.ud = shl i64 %index1109, 3
  %next.gep1110 = getelementptr i8, ptr %.010023.us.i, i64 %i.ud
  %i.ue = sub nuw nsw i64 %i.sl, %index1109
  %i.uf = shl nuw nsw i64 %i.ue, 3
  %i.ug = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %i.uf
  %i.uh = getelementptr inbounds i8, ptr %i.ug, i64 -56
  %wide.load1111 = load <8 x i64>, ptr %i.uh, align 8, !tbaa !113, !alias.scope !726
  %reverse1112 = shufflevector <8 x i64> %wide.load1111, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1112, ptr %next.gep1110, align 8, !tbaa !113, !alias.scope !727, !noalias !726
  %index.next1113 = add nuw i64 %index1109, 8     ; 2 uses
  %i.ui = icmp eq i64 %index.next1113, %n.vec1107
  br i1 %i.ui, label %vec.epilog.middle.block1114, label %vec.epilog.vector.body1108, !llvm.loop !649

vec.epilog.middle.block1114:                      ; preds = %vec.epilog.vector.body1108
  br i1 %cmp.n1115, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1103.preheader

vec.epilog.scalar.ph1103.preheader:               ; preds = %iter.check1102, %vector.memcheck1072, %vec.epilog.iter.check1104, %vec.epilog.middle.block1114
  %indvars.iv142.i.ph = phi i64 [ 0, %iter.check1102 ], [ 0, %vector.memcheck1072 ], [ %n.vec1085, %vec.epilog.iter.check1104 ], [ %n.vec1107, %vec.epilog.middle.block1114 ] ; 3 uses
  %.110.us.i.ph = phi ptr [ %.010023.us.i, %iter.check1102 ], [ %.010023.us.i, %vector.memcheck1072 ], [ %i.tp, %vec.epilog.iter.check1104 ], [ %i.uc, %vec.epilog.middle.block1114 ] ; 2 uses
  br i1 %lcmp.mod1354.not, label %vec.epilog.scalar.ph1103.prol.loopexit, label %vec.epilog.scalar.ph1103.prol

vec.epilog.scalar.ph1103.prol:                    ; preds = %vec.epilog.scalar.ph1103.preheader, %vec.epilog.scalar.ph1103.prol
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %vec.epilog.scalar.ph1103.prol ], [ %indvars.iv142.i.ph, %vec.epilog.scalar.ph1103.preheader ] ; 2 uses
  %.110.us.i.prol = phi ptr [ %i.um, %vec.epilog.scalar.ph1103.prol ], [ %.110.us.i.ph, %vec.epilog.scalar.ph1103.preheader ] ; 2 uses
  %prol.iter1355 = phi i64 [ %prol.iter1355.next, %vec.epilog.scalar.ph1103.prol ], [ 0, %vec.epilog.scalar.ph1103.preheader ]
  %i.uj = sub nuw nsw i64 %i.sl, %indvars.iv142.i.prol
  %.idx193.i.prol = shl nuw nsw i64 %i.uj, 3
  %i.uk = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.prol
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !113
  store i64 %i.ul, ptr %.110.us.i.prol, align 8, !tbaa !113
  %i.um = getelementptr inbounds nuw i8, ptr %.110.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next143.i.prol = add nuw nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %prol.iter1355.next = add i64 %prol.iter1355, 1 ; 2 uses
  %prol.iter1355.cmp.not = icmp eq i64 %prol.iter1355.next, %xtraiter1353
  br i1 %prol.iter1355.cmp.not, label %vec.epilog.scalar.ph1103.prol.loopexit, label %vec.epilog.scalar.ph1103.prol, !llvm.loop !650

vec.epilog.scalar.ph1103.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1103.prol, %vec.epilog.scalar.ph1103.preheader
  %.lcssa1314.unr = phi ptr [ poison, %vec.epilog.scalar.ph1103.preheader ], [ %i.um, %vec.epilog.scalar.ph1103.prol ]
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %vec.epilog.scalar.ph1103.preheader ], [ %indvars.iv.next143.i.prol, %vec.epilog.scalar.ph1103.prol ]
  %.110.us.i.unr = phi ptr [ %.110.us.i.ph, %vec.epilog.scalar.ph1103.preheader ], [ %i.um, %vec.epilog.scalar.ph1103.prol ]
  %i.un = sub nsw i64 %indvars.iv142.i.ph, %i.sl
  %i.uo = icmp ugt i64 %i.un, -4
  br i1 %i.uo, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1103

vec.epilog.scalar.ph1103:                         ; preds = %vec.epilog.scalar.ph1103.prol.loopexit, %vec.epilog.scalar.ph1103
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %vec.epilog.scalar.ph1103 ], [ %indvars.iv142.i.unr, %vec.epilog.scalar.ph1103.prol.loopexit ] ; 5 uses
  %.110.us.i = phi ptr [ %i.ve, %vec.epilog.scalar.ph1103 ], [ %.110.us.i.unr, %vec.epilog.scalar.ph1103.prol.loopexit ] ; 5 uses
  %i.up = sub nuw nsw i64 %i.sl, %indvars.iv142.i
  %.idx193.i = shl nuw nsw i64 %i.up, 3
  %i.uq = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !113
  store i64 %i.ur, ptr %.110.us.i, align 8, !tbaa !113
  %i.us = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 8
  %indvars.iv.next143.i.neg = xor i64 %indvars.iv142.i, -1
  %i.ut = add i64 %indvars.iv.next143.i.neg, %i.sl
  %.idx193.i.1 = shl nuw nsw i64 %i.ut, 3
  %i.uu = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.1
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !113
  store i64 %i.uv, ptr %i.us, align 8, !tbaa !113
  %i.uw = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 16
  %indvars.iv.next143.i.1 = add nuw nsw i64 %indvars.iv142.i, 2
  %i.ux = sub nuw nsw i64 %i.sl, %indvars.iv.next143.i.1
  %.idx193.i.2 = shl nuw nsw i64 %i.ux, 3
  %i.uy = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.2
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !113
  store i64 %i.uz, ptr %i.uw, align 8, !tbaa !113
  %i.va = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 24
  %indvars.iv.next143.i.2 = add nuw nsw i64 %indvars.iv142.i, 3
  %i.vb = sub nuw nsw i64 %i.sl, %indvars.iv.next143.i.2
  %.idx193.i.3 = shl nuw nsw i64 %i.vb, 3
  %i.vc = getelementptr inbounds nuw i8, ptr %.010122.us.i, i64 %.idx193.i.3
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !113
  store i64 %i.vd, ptr %i.va, align 8, !tbaa !113
  %i.ve = getelementptr inbounds nuw i8, ptr %.110.us.i, i64 32 ; 2 uses
  %indvars.iv.next143.i.3 = add nuw nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %exitcond146.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %i.sl
  br i1 %exitcond146.not.i.3, label %..preheader8_crit_edge.us.i, label %vec.epilog.scalar.ph1103, !llvm.loop !651

.lr.ph15.us.i:                                    ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i
  %.09614.us.i = phi i32 [ %i.wd, %.lr.ph15.us.i ], [ %.09614.us.i.unr, %.lr.ph15.us.i.prol.loopexit ]
  %.09813.us.i = phi ptr [ %i.wb, %.lr.ph15.us.i ], [ %.09813.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %.212.us.i = phi ptr [ %i.wc, %.lr.ph15.us.i ], [ %.212.us.i.unr, %.lr.ph15.us.i.prol.loopexit ] ; 9 uses
  %i.vf = load i64, ptr %.09813.us.i, align 8, !tbaa !113
  store i64 %i.vf, ptr %.212.us.i, align 8, !tbaa !113
  %i.vg = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 8
  %i.vi = load i64, ptr %i.vg, align 8, !tbaa !113
  store i64 %i.vi, ptr %i.vh, align 8, !tbaa !113
  %i.vj = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 16
  %i.vk = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 16
  %i.vl = load i64, ptr %i.vj, align 8, !tbaa !113
  store i64 %i.vl, ptr %i.vk, align 8, !tbaa !113
  %i.vm = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 24
  %i.vn = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 24
  %i.vo = load i64, ptr %i.vm, align 8, !tbaa !113
  store i64 %i.vo, ptr %i.vn, align 8, !tbaa !113
  %i.vp = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 32
  %i.vq = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 32
  %i.vr = load i64, ptr %i.vp, align 8, !tbaa !113
  store i64 %i.vr, ptr %i.vq, align 8, !tbaa !113
  %i.vs = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 40
  %i.vt = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 40
  %i.vu = load i64, ptr %i.vs, align 8, !tbaa !113
  store i64 %i.vu, ptr %i.vt, align 8, !tbaa !113
  %i.vv = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 48
  %i.vw = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 48
  %i.vx = load i64, ptr %i.vv, align 8, !tbaa !113
  store i64 %i.vx, ptr %i.vw, align 8, !tbaa !113
  %i.vy = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 56
  %i.vz = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 56
  %i.wa = load i64, ptr %i.vy, align 8, !tbaa !113
  store i64 %i.wa, ptr %i.vz, align 8, !tbaa !113
  %i.wb = getelementptr inbounds nuw i8, ptr %.09813.us.i, i64 64 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.212.us.i, i64 64 ; 2 uses
  %i.wd = add nuw nsw i32 %.09614.us.i, 8         ; 2 uses
  %exitcond147.not.i.7 = icmp eq i32 %i.wd, %i.co
  br i1 %exitcond147.not.i.7, label %.preheader7.us.i, label %.lr.ph15.us.i, !llvm.loop !652

vec.epilog.scalar.ph1015:                         ; preds = %vec.epilog.scalar.ph1015.prol.loopexit, %vec.epilog.scalar.ph1015
  %indvars.iv148.i = phi i64 [ %indvars.iv.next149.i.3, %vec.epilog.scalar.ph1015 ], [ %indvars.iv148.i.unr, %vec.epilog.scalar.ph1015.prol.loopexit ] ; 5 uses
  %.318.us.i = phi ptr [ %i.wr, %vec.epilog.scalar.ph1015 ], [ %.318.us.i.unr, %vec.epilog.scalar.ph1015.prol.loopexit ] ; 5 uses
  %.idx194.i = mul nsw i64 %indvars.iv148.i, -8
  %i.we = getelementptr inbounds i8, ptr %i.xq, i64 %.idx194.i
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !113
  store i64 %i.wf, ptr %.318.us.i, align 8, !tbaa !113
  %i.wg = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 8
  %indvars.iv.next149.i.neg = xor i64 %indvars.iv148.i, -1
  %.idx194.i.1 = shl nsw i64 %indvars.iv.next149.i.neg, 3
  %i.wh = getelementptr inbounds i8, ptr %i.xq, i64 %.idx194.i.1
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !113
  store i64 %i.wi, ptr %i.wg, align 8, !tbaa !113
  %i.wj = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 16
  %i.wk = shl i64 %indvars.iv148.i, 3
  %.idx194.i.2 = sub i64 -16, %i.wk
  %i.wl = getelementptr inbounds i8, ptr %i.xq, i64 %.idx194.i.2
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !113
  store i64 %i.wm, ptr %i.wj, align 8, !tbaa !113
  %i.wn = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 24
  %i.wo = shl i64 %indvars.iv148.i, 3
  %.idx194.i.3 = sub i64 -24, %i.wo
  %i.wp = getelementptr inbounds i8, ptr %i.xq, i64 %.idx194.i.3
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !113
  store i64 %i.wq, ptr %i.wn, align 8, !tbaa !113
  %i.wr = getelementptr inbounds nuw i8, ptr %.318.us.i, i64 32 ; 2 uses
  %indvars.iv.next149.i.3 = add nuw nsw i64 %indvars.iv148.i, 4 ; 2 uses
  %exitcond152.not.i.3 = icmp eq i64 %indvars.iv.next149.i.3, %wide.trip.count151.i
  br i1 %exitcond152.not.i.3, label %._crit_edge.us.i66, label %vec.epilog.scalar.ph1015, !llvm.loop !653

._crit_edge.us.i66:                               ; preds = %vec.epilog.scalar.ph1015.prol.loopexit, %vec.epilog.scalar.ph1015, %middle.block1010, %vec.epilog.middle.block1026, %.preheader7.us.i
  %.3.lcssa.us.i67 = phi ptr [ %.2.lcssa.us.i, %.preheader7.us.i ], [ %i.yd, %vec.epilog.middle.block1026 ], [ %i.xr, %middle.block1010 ], [ %.lcssa1317.unr, %vec.epilog.scalar.ph1015.prol.loopexit ], [ %i.wr, %vec.epilog.scalar.ph1015 ] ; 2 uses
  %i.ws = getelementptr inbounds [2 x i8], ptr %.010122.us.i, i64 %i.sk ; 2 uses
  %i.wt = add nuw nsw i32 %.09924.us.i, 1         ; 2 uses
  %exitcond153.not.i = icmp eq i32 %i.wt, %i.rx
  %indvar.next1033 = add i64 %indvar1032, 1
  br i1 %exitcond153.not.i, label %.preheader6.i, label %iter.check1102, !llvm.loop !654

.preheader7.us.i:                                 ; preds = %.lr.ph15.us.i.prol.loopexit, %.lr.ph15.us.i, %middle.block1049, %vec.epilog.middle.block1067, %..preheader8_crit_edge.us.i
  %.2.lcssa.us.i = phi ptr [ %.lcssa257, %..preheader8_crit_edge.us.i ], [ %i.xg, %vec.epilog.middle.block1067 ], [ %i.ww, %middle.block1049 ], [ %.lcssa1315.unr, %.lr.ph15.us.i.prol.loopexit ], [ %i.wc, %.lr.ph15.us.i ] ; 9 uses
  %.098.lcssa.us.i = phi ptr [ %.010122.us.i, %..preheader8_crit_edge.us.i ], [ %i.xf, %vec.epilog.middle.block1067 ], [ %i.wv, %middle.block1049 ], [ %.lcssa1316.unr, %.lr.ph15.us.i.prol.loopexit ], [ %i.wb, %.lr.ph15.us.i ] ; 2 uses
  br i1 %i.si, label %iter.check1014, label %._crit_edge.us.i66

..preheader8_crit_edge.us.i:                      ; preds = %vec.epilog.scalar.ph1103.prol.loopexit, %vec.epilog.scalar.ph1103, %vec.epilog.middle.block1114, %middle.block1098
  %.lcssa257 = phi ptr [ %i.uc, %vec.epilog.middle.block1114 ], [ %i.tp, %middle.block1098 ], [ %.lcssa1314.unr, %vec.epilog.scalar.ph1103.prol.loopexit ], [ %i.ve, %vec.epilog.scalar.ph1103 ] ; 8 uses
  br i1 %i.sh, label %iter.check1055, label %.preheader7.us.i

iter.check1055:                                   ; preds = %..preheader8_crit_edge.us.i
  br i1 %min.iters.check1035, label %.lr.ph15.us.i.preheader, label %vector.memcheck1030

vector.memcheck1030:                              ; preds = %iter.check1055
  %i.wu = ptrtoaddr ptr %.lcssa257 to i64
  %op.rdx = add i64 %reass.sub1293, %.010023.us.i1031
  %op.rdx1297 = add i64 %op.rdx, %i.wu
  %12 = sub i64 %.010023.us.i1031, %op.rdx1297
  %diff.check1034 = icmp ugt i64 %12, -256
  br i1 %diff.check1034, label %.lr.ph15.us.i.preheader, label %vector.main.loop.iter.check1036

vector.main.loop.iter.check1036:                  ; preds = %vector.memcheck1030
  br i1 %min.iters.check1037, label %vec.epilog.ph1059, label %vector.ph1038

vector.ph1038:                                    ; preds = %vector.main.loop.iter.check1036
  %i.wv = getelementptr i8, ptr %.010122.us.i, i64 %i.th ; 2 uses
  %i.ww = getelementptr i8, ptr %.lcssa257, i64 %i.th ; 2 uses
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.ph1038, %vector.body1040
  %index1041 = phi i64 [ 0, %vector.ph1038 ], [ %index.next1048, %vector.body1040 ] ; 2 uses
  %i.wx = shl i64 %index1041, 3                   ; 2 uses
  %next.gep1042 = getelementptr i8, ptr %.010122.us.i, i64 %i.wx ; 4 uses
  %next.gep1043 = getelementptr i8, ptr %.lcssa257, i64 %i.wx ; 4 uses
  %i.wy = getelementptr i8, ptr %next.gep1042, i64 64
  %i.wz = getelementptr i8, ptr %next.gep1042, i64 128
  %i.xa = getelementptr i8, ptr %next.gep1042, i64 192
  %wide.load1044 = load <8 x i64>, ptr %next.gep1042, align 8, !tbaa !113
  %wide.load1045 = load <8 x i64>, ptr %i.wy, align 8, !tbaa !113
  %wide.load1046 = load <8 x i64>, ptr %i.wz, align 8, !tbaa !113
  %wide.load1047 = load <8 x i64>, ptr %i.xa, align 8, !tbaa !113
  %i.xb = getelementptr i8, ptr %next.gep1043, i64 64
  %i.xc = getelementptr i8, ptr %next.gep1043, i64 128
  %i.xd = getelementptr i8, ptr %next.gep1043, i64 192
  store <8 x i64> %wide.load1044, ptr %next.gep1043, align 8, !tbaa !113
  store <8 x i64> %wide.load1045, ptr %i.xb, align 8, !tbaa !113
  store <8 x i64> %wide.load1046, ptr %i.xc, align 8, !tbaa !113
  store <8 x i64> %wide.load1047, ptr %i.xd, align 8, !tbaa !113
  %index.next1048 = add nuw i64 %index1041, 32    ; 2 uses
  %i.xe = icmp eq i64 %index.next1048, %n.vec1039
  br i1 %i.xe, label %middle.block1049, label %vector.body1040, !llvm.loop !655

middle.block1049:                                 ; preds = %vector.body1040
  br i1 %cmp.n1050, label %.preheader7.us.i, label %vec.epilog.iter.check1057

vec.epilog.iter.check1057:                        ; preds = %middle.block1049
  br i1 %min.epilog.iters.check1058, label %.lr.ph15.us.i.preheader, label %vec.epilog.ph1059, !prof !117

vec.epilog.ph1059:                                ; preds = %vector.main.loop.iter.check1036, %vec.epilog.iter.check1057
  %vec.epilog.resume.val1051 = phi i64 [ %n.vec1039, %vec.epilog.iter.check1057 ], [ 0, %vector.main.loop.iter.check1036 ]
  %i.xf = getelementptr i8, ptr %.010122.us.i, i64 %i.tj ; 2 uses
  %i.xg = getelementptr i8, ptr %.lcssa257, i64 %i.tj ; 2 uses
  br label %vec.epilog.vector.body1061

vec.epilog.vector.body1061:                       ; preds = %vec.epilog.vector.body1061, %vec.epilog.ph1059
  %index1062 = phi i64 [ %vec.epilog.resume.val1051, %vec.epilog.ph1059 ], [ %index.next1066, %vec.epilog.vector.body1061 ] ; 2 uses
  %i.xh = shl i64 %index1062, 3                   ; 2 uses
  %next.gep1063 = getelementptr i8, ptr %.010122.us.i, i64 %i.xh
  %next.gep1064 = getelementptr i8, ptr %.lcssa257, i64 %i.xh
  %wide.load1065 = load <8 x i64>, ptr %next.gep1063, align 8, !tbaa !113
  store <8 x i64> %wide.load1065, ptr %next.gep1064, align 8, !tbaa !113
  %index.next1066 = add nuw i64 %index1062, 8     ; 2 uses
  %i.xi = icmp eq i64 %index.next1066, %n.vec1060
  br i1 %i.xi, label %vec.epilog.middle.block1067, label %vec.epilog.vector.body1061, !llvm.loop !656

vec.epilog.middle.block1067:                      ; preds = %vec.epilog.vector.body1061
  br i1 %cmp.n1068, label %.preheader7.us.i, label %.lr.ph15.us.i.preheader

.lr.ph15.us.i.preheader:                          ; preds = %iter.check1055, %vector.memcheck1030, %vec.epilog.iter.check1057, %vec.epilog.middle.block1067
  %.09614.us.i.ph = phi i32 [ 0, %iter.check1055 ], [ 0, %vector.memcheck1030 ], [ %i.tg, %vec.epilog.iter.check1057 ], [ %i.ti, %vec.epilog.middle.block1067 ] ; 4 uses
  %.09813.us.i.ph = phi ptr [ %.010122.us.i, %iter.check1055 ], [ %.010122.us.i, %vector.memcheck1030 ], [ %i.wv, %vec.epilog.iter.check1057 ], [ %i.xf, %vec.epilog.middle.block1067 ] ; 2 uses
  %.212.us.i.ph = phi ptr [ %.lcssa257, %iter.check1055 ], [ %.lcssa257, %vector.memcheck1030 ], [ %i.ww, %vec.epilog.iter.check1057 ], [ %i.xg, %vec.epilog.middle.block1067 ] ; 2 uses
  %i.xj = sub i32 %i.co, %.09614.us.i.ph
  %xtraiter1356 = and i32 %i.xj, 7                ; 2 uses
  %lcmp.mod1357.not = icmp eq i32 %xtraiter1356, 0
  br i1 %lcmp.mod1357.not, label %.lr.ph15.us.i.prol.loopexit, label %.lr.ph15.us.i.prol

.lr.ph15.us.i.prol:                               ; preds = %.lr.ph15.us.i.preheader, %.lr.ph15.us.i.prol
  %.09614.us.i.prol = phi i32 [ %i.xn, %.lr.ph15.us.i.prol ], [ %.09614.us.i.ph, %.lr.ph15.us.i.preheader ]
  %.09813.us.i.prol = phi ptr [ %i.xl, %.lr.ph15.us.i.prol ], [ %.09813.us.i.ph, %.lr.ph15.us.i.preheader ] ; 2 uses
  %.212.us.i.prol = phi ptr [ %i.xm, %.lr.ph15.us.i.prol ], [ %.212.us.i.ph, %.lr.ph15.us.i.preheader ] ; 2 uses
  %prol.iter1358 = phi i32 [ %prol.iter1358.next, %.lr.ph15.us.i.prol ], [ 0, %.lr.ph15.us.i.preheader ]
  %i.xk = load i64, ptr %.09813.us.i.prol, align 8, !tbaa !113
  store i64 %i.xk, ptr %.212.us.i.prol, align 8, !tbaa !113
  %i.xl = getelementptr inbounds nuw i8, ptr %.09813.us.i.prol, i64 8 ; 3 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %.212.us.i.prol, i64 8 ; 3 uses
  %i.xn = add nuw nsw i32 %.09614.us.i.prol, 1    ; 2 uses
  %prol.iter1358.next = add i32 %prol.iter1358, 1 ; 2 uses
  %prol.iter1358.cmp.not = icmp eq i32 %prol.iter1358.next, %xtraiter1356
  br i1 %prol.iter1358.cmp.not, label %.lr.ph15.us.i.prol.loopexit, label %.lr.ph15.us.i.prol, !llvm.loop !657

.lr.ph15.us.i.prol.loopexit:                      ; preds = %.lr.ph15.us.i.prol, %.lr.ph15.us.i.preheader
  %.lcssa1316.unr = phi ptr [ poison, %.lr.ph15.us.i.preheader ], [ %i.xl, %.lr.ph15.us.i.prol ]
  %.lcssa1315.unr = phi ptr [ poison, %.lr.ph15.us.i.preheader ], [ %i.xm, %.lr.ph15.us.i.prol ]
  %.09614.us.i.unr = phi i32 [ %.09614.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xn, %.lr.ph15.us.i.prol ]
  %.09813.us.i.unr = phi ptr [ %.09813.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xl, %.lr.ph15.us.i.prol ]
  %.212.us.i.unr = phi ptr [ %.212.us.i.ph, %.lr.ph15.us.i.preheader ], [ %i.xm, %.lr.ph15.us.i.prol ]
  %i.xo = sub i32 %.09614.us.i.ph, %i.co
  %i.xp = icmp ugt i32 %i.xo, -8
  br i1 %i.xp, label %.preheader7.us.i, label %.lr.ph15.us.i

iter.check1014:                                   ; preds = %.preheader7.us.i
  %i.xq = getelementptr inbounds i8, ptr %.098.lcssa.us.i, i64 -16 ; 7 uses
  br i1 %min.iters.check993, label %vec.epilog.scalar.ph1015.preheader, label %vector.memcheck986

vector.memcheck986:                               ; preds = %iter.check1014
  %scevgep987 = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.sm
  %scevgep988 = getelementptr i8, ptr %.098.lcssa.us.i, i64 -8 ; 2 uses
  %scevgep989 = getelementptr i8, ptr %scevgep988, i64 %i.sn
  %bound0990 = icmp ult ptr %.2.lcssa.us.i, %scevgep988
  %bound1991 = icmp ult ptr %scevgep989, %scevgep987
  %found.conflict992 = and i1 %bound0990, %bound1991
  br i1 %found.conflict992, label %vec.epilog.scalar.ph1015.preheader, label %vector.main.loop.iter.check994

vector.main.loop.iter.check994:                   ; preds = %vector.memcheck986
  br i1 %min.iters.check995, label %vec.epilog.ph1018, label %vector.ph996

vector.ph996:                                     ; preds = %vector.main.loop.iter.check994
  %i.xr = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.tl ; 2 uses
  br label %vector.body998

vector.body998:                                   ; preds = %vector.ph996, %vector.body998
  %index999 = phi i64 [ 0, %vector.ph996 ], [ %index.next1009, %vector.body998 ] ; 3 uses
  %i.xs = shl i64 %index999, 3
  %next.gep1000 = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.xs ; 4 uses
  %i.xt = mul nsw i64 %index999, -8
  %i.xu = getelementptr inbounds i8, ptr %i.xq, i64 %i.xt ; 4 uses
  %i.xv = getelementptr inbounds i8, ptr %i.xu, i64 -56
  %i.xw = getelementptr inbounds i8, ptr %i.xu, i64 -120
  %i.xx = getelementptr inbounds i8, ptr %i.xu, i64 -184
  %i.xy = getelementptr inbounds i8, ptr %i.xu, i64 -248
  %wide.load1001 = load <8 x i64>, ptr %i.xv, align 8, !tbaa !113, !alias.scope !728
  %wide.load1002 = load <8 x i64>, ptr %i.xw, align 8, !tbaa !113, !alias.scope !728
  %wide.load1003 = load <8 x i64>, ptr %i.xx, align 8, !tbaa !113, !alias.scope !728
  %wide.load1004 = load <8 x i64>, ptr %i.xy, align 8, !tbaa !113, !alias.scope !728
  %reverse1005 = shufflevector <8 x i64> %wide.load1001, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1006 = shufflevector <8 x i64> %wide.load1002, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1007 = shufflevector <8 x i64> %wide.load1003, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1008 = shufflevector <8 x i64> %wide.load1004, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.xz = getelementptr i8, ptr %next.gep1000, i64 64
  %i.ya = getelementptr i8, ptr %next.gep1000, i64 128
  %i.yb = getelementptr i8, ptr %next.gep1000, i64 192
  store <8 x i64> %reverse1005, ptr %next.gep1000, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  store <8 x i64> %reverse1006, ptr %i.xz, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  store <8 x i64> %reverse1007, ptr %i.ya, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  store <8 x i64> %reverse1008, ptr %i.yb, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  %index.next1009 = add nuw i64 %index999, 32     ; 2 uses
  %i.yc = icmp eq i64 %index.next1009, %n.vec997
  br i1 %i.yc, label %middle.block1010, label %vector.body998, !llvm.loop !661

middle.block1010:                                 ; preds = %vector.body998
  br i1 %cmp.n1011, label %._crit_edge.us.i66, label %vec.epilog.iter.check1016

vec.epilog.iter.check1016:                        ; preds = %middle.block1010
  br i1 %min.epilog.iters.check1017, label %vec.epilog.scalar.ph1015.preheader, label %vec.epilog.ph1018, !prof !117

vec.epilog.ph1018:                                ; preds = %vector.main.loop.iter.check994, %vec.epilog.iter.check1016
  %vec.epilog.resume.val1012 = phi i64 [ %n.vec997, %vec.epilog.iter.check1016 ], [ 0, %vector.main.loop.iter.check994 ]
  %i.yd = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.tm ; 2 uses
  br label %vec.epilog.vector.body1020

vec.epilog.vector.body1020:                       ; preds = %vec.epilog.vector.body1020, %vec.epilog.ph1018
  %index1021 = phi i64 [ %vec.epilog.resume.val1012, %vec.epilog.ph1018 ], [ %index.next1025, %vec.epilog.vector.body1020 ] ; 3 uses
  %i.ye = shl i64 %index1021, 3
  %next.gep1022 = getelementptr i8, ptr %.2.lcssa.us.i, i64 %i.ye
  %i.yf = mul nsw i64 %index1021, -8
  %i.yg = getelementptr inbounds i8, ptr %i.xq, i64 %i.yf
  %i.yh = getelementptr inbounds i8, ptr %i.yg, i64 -56
  %wide.load1023 = load <8 x i64>, ptr %i.yh, align 8, !tbaa !113, !alias.scope !728
  %reverse1024 = shufflevector <8 x i64> %wide.load1023, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i64> %reverse1024, ptr %next.gep1022, align 8, !tbaa !113, !alias.scope !729, !noalias !728
  %index.next1025 = add nuw i64 %index1021, 8     ; 2 uses
  %i.yi = icmp eq i64 %index.next1025, %n.vec1019
  br i1 %i.yi, label %vec.epilog.middle.block1026, label %vec.epilog.vector.body1020, !llvm.loop !662

vec.epilog.middle.block1026:                      ; preds = %vec.epilog.vector.body1020
  br i1 %cmp.n1027, label %._crit_edge.us.i66, label %vec.epilog.scalar.ph1015.preheader

vec.epilog.scalar.ph1015.preheader:               ; preds = %iter.check1014, %vector.memcheck986, %vec.epilog.iter.check1016, %vec.epilog.middle.block1026
  %indvars.iv148.i.ph = phi i64 [ 0, %iter.check1014 ], [ 0, %vector.memcheck986 ], [ %n.vec997, %vec.epilog.iter.check1016 ], [ %n.vec1019, %vec.epilog.middle.block1026 ] ; 3 uses
  %.318.us.i.ph = phi ptr [ %.2.lcssa.us.i, %iter.check1014 ], [ %.2.lcssa.us.i, %vector.memcheck986 ], [ %i.xr, %vec.epilog.iter.check1016 ], [ %i.yd, %vec.epilog.middle.block1026 ] ; 2 uses
  br i1 %lcmp.mod1360.not, label %vec.epilog.scalar.ph1015.prol.loopexit, label %vec.epilog.scalar.ph1015.prol

vec.epilog.scalar.ph1015.prol:                    ; preds = %vec.epilog.scalar.ph1015.preheader, %vec.epilog.scalar.ph1015.prol
  %indvars.iv148.i.prol = phi i64 [ %indvars.iv.next149.i.prol, %vec.epilog.scalar.ph1015.prol ], [ %indvars.iv148.i.ph, %vec.epilog.scalar.ph1015.preheader ] ; 2 uses
  %.318.us.i.prol = phi ptr [ %i.yl, %vec.epilog.scalar.ph1015.prol ], [ %.318.us.i.ph, %vec.epilog.scalar.ph1015.preheader ] ; 2 uses
  %prol.iter1361 = phi i64 [ %prol.iter1361.next, %vec.epilog.scalar.ph1015.prol ], [ 0, %vec.epilog.scalar.ph1015.preheader ]
  %.idx194.i.prol = mul nsw i64 %indvars.iv148.i.prol, -8
  %i.yj = getelementptr inbounds i8, ptr %i.xq, i64 %.idx194.i.prol
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !113
  store i64 %i.yk, ptr %.318.us.i.prol, align 8, !tbaa !113
  %i.yl = getelementptr inbounds nuw i8, ptr %.318.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next149.i.prol = add nuw nsw i64 %indvars.iv148.i.prol, 1 ; 2 uses
  %prol.iter1361.next = add i64 %prol.iter1361, 1 ; 2 uses
  %prol.iter1361.cmp.not = icmp eq i64 %prol.iter1361.next, %xtraiter1359
  br i1 %prol.iter1361.cmp.not, label %vec.epilog.scalar.ph1015.prol.loopexit, label %vec.epilog.scalar.ph1015.prol, !llvm.loop !663

vec.epilog.scalar.ph1015.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1015.prol, %vec.epilog.scalar.ph1015.preheader
  %.lcssa1317.unr = phi ptr [ poison, %vec.epilog.scalar.ph1015.preheader ], [ %i.yl, %vec.epilog.scalar.ph1015.prol ]
  %indvars.iv148.i.unr = phi i64 [ %indvars.iv148.i.ph, %vec.epilog.scalar.ph1015.preheader ], [ %indvars.iv.next149.i.prol, %vec.epilog.scalar.ph1015.prol ]
  %.318.us.i.unr = phi ptr [ %.318.us.i.ph, %vec.epilog.scalar.ph1015.preheader ], [ %i.yl, %vec.epilog.scalar.ph1015.prol ]
  %i.ym = sub nsw i64 %indvars.iv148.i.ph, %wide.trip.count151.i
  %i.yn = icmp ugt i64 %i.ym, -4
  br i1 %i.yn, label %._crit_edge.us.i66, label %vec.epilog.scalar.ph1015

.preheader9.lr.ph.split.i:                        ; preds = %.preheader9.lr.ph.i
  br i1 %i.si, label %.preheader9.lr.ph.split.split.us.i, label %.preheader9.lr.ph.split.split.i

.preheader9.lr.ph.split.split.us.i:               ; preds = %.preheader9.lr.ph.split.i
end_hunk_0
begin_hunk_1_@_ZNK4ncnn18Padding_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
middle.block1075:                                 ; preds = %vector.body1066
  br i1 %cmp.n1076, label %iter.check1040, label %vec.epilog.iter.check1083

vec.epilog.iter.check1083:                        ; preds = %middle.block1075
  br i1 %min.epilog.iters.check1084, label %.lr.ph15.us.i76.preheader, label %vec.epilog.ph1085, !prof !117

vec.epilog.ph1085:                                ; preds = %vector.main.loop.iter.check1062, %vec.epilog.iter.check1083
  %vec.epilog.resume.val1077 = phi i64 [ %n.vec1065, %vec.epilog.iter.check1083 ], [ 0, %vector.main.loop.iter.check1062 ]
  %i.aaq = getelementptr i8, ptr %.08922.us.i, i64 %i.vy ; 2 uses
  %i.aar = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.vy ; 2 uses
  br label %vec.epilog.vector.body1087

vec.epilog.vector.body1087:                       ; preds = %vec.epilog.vector.body1087, %vec.epilog.ph1085
  %index1088 = phi i64 [ %vec.epilog.resume.val1077, %vec.epilog.ph1085 ], [ %index.next1092, %vec.epilog.vector.body1087 ] ; 2 uses
  %i.aas = shl i64 %index1088, 3                  ; 2 uses
  %next.gep1089 = getelementptr i8, ptr %.08922.us.i, i64 %i.aas
  %next.gep1090 = getelementptr i8, ptr %.1.lcssa.us.i, i64 %i.aas
  %wide.load1091 = load <8 x i64>, ptr %next.gep1089, align 8, !tbaa !113
  store <8 x i64> %wide.load1091, ptr %next.gep1090, align 8, !tbaa !113
  %index.next1092 = add nuw i64 %index1088, 8     ; 2 uses
  %i.aat = icmp eq i64 %index.next1092, %n.vec1086
  br i1 %i.aat, label %vec.epilog.middle.block1093, label %vec.epilog.vector.body1087, !llvm.loop !878

vec.epilog.middle.block1093:                      ; preds = %vec.epilog.vector.body1087
  br i1 %cmp.n1094, label %iter.check1040, label %.lr.ph15.us.i76.preheader

.lr.ph15.us.i76.preheader:                        ; preds = %iter.check1081, %vector.memcheck1056, %vec.epilog.iter.check1083, %vec.epilog.middle.block1093
  %.08414.us.i.ph = phi i32 [ 0, %iter.check1081 ], [ 0, %vector.memcheck1056 ], [ %i.vv, %vec.epilog.iter.check1083 ], [ %i.vx, %vec.epilog.middle.block1093 ] ; 4 uses
  %.08613.us.i.ph = phi ptr [ %.08922.us.i, %iter.check1081 ], [ %.08922.us.i, %vector.memcheck1056 ], [ %i.aag, %vec.epilog.iter.check1083 ], [ %i.aaq, %vec.epilog.middle.block1093 ] ; 2 uses
  %.212.us.i77.ph = phi ptr [ %.1.lcssa.us.i, %iter.check1081 ], [ %.1.lcssa.us.i, %vector.memcheck1056 ], [ %i.aah, %vec.epilog.iter.check1083 ], [ %i.aar, %vec.epilog.middle.block1093 ] ; 2 uses
  %i.aau = sub i32 %i.cs, %.08414.us.i.ph
  %xtraiter1389 = and i32 %i.aau, 7               ; 2 uses
  %lcmp.mod1390.not = icmp eq i32 %xtraiter1389, 0
  br i1 %lcmp.mod1390.not, label %.lr.ph15.us.i76.prol.loopexit, label %.lr.ph15.us.i76.prol

.lr.ph15.us.i76.prol:                             ; preds = %.lr.ph15.us.i76.preheader, %.lr.ph15.us.i76.prol
  %.08414.us.i.prol = phi i32 [ %i.aay, %.lr.ph15.us.i76.prol ], [ %.08414.us.i.ph, %.lr.ph15.us.i76.preheader ]
  %.08613.us.i.prol = phi ptr [ %i.aav, %.lr.ph15.us.i76.prol ], [ %.08613.us.i.ph, %.lr.ph15.us.i76.preheader ] ; 2 uses
  %.212.us.i77.prol = phi ptr [ %i.aax, %.lr.ph15.us.i76.prol ], [ %.212.us.i77.ph, %.lr.ph15.us.i76.preheader ] ; 2 uses
  %prol.iter1391 = phi i32 [ %prol.iter1391.next, %.lr.ph15.us.i76.prol ], [ 0, %.lr.ph15.us.i76.preheader ]
  %i.aav = getelementptr inbounds nuw i8, ptr %.08613.us.i.prol, i64 8 ; 3 uses
  %i.aaw = load i64, ptr %.08613.us.i.prol, align 8, !tbaa !113
  %i.aax = getelementptr inbounds nuw i8, ptr %.212.us.i77.prol, i64 8 ; 3 uses
  store i64 %i.aaw, ptr %.212.us.i77.prol, align 8, !tbaa !113
  %i.aay = add nuw nsw i32 %.08414.us.i.prol, 1   ; 2 uses
  %prol.iter1391.next = add i32 %prol.iter1391, 1 ; 2 uses
  %prol.iter1391.cmp.not = icmp eq i32 %prol.iter1391.next, %xtraiter1389
  br i1 %prol.iter1391.cmp.not, label %.lr.ph15.us.i76.prol.loopexit, label %.lr.ph15.us.i76.prol, !llvm.loop !879

.lr.ph15.us.i76.prol.loopexit:                    ; preds = %.lr.ph15.us.i76.prol, %.lr.ph15.us.i76.preheader
  %.lcssa1348.unr = phi ptr [ poison, %.lr.ph15.us.i76.preheader ], [ %i.aav, %.lr.ph15.us.i76.prol ]
  %.lcssa1347.unr = phi ptr [ poison, %.lr.ph15.us.i76.preheader ], [ %i.aax, %.lr.ph15.us.i76.prol ]
  %.08414.us.i.unr = phi i32 [ %.08414.us.i.ph, %.lr.ph15.us.i76.preheader ], [ %i.aay, %.lr.ph15.us.i76.prol ]
  %.08613.us.i.unr = phi ptr [ %.08613.us.i.ph, %.lr.ph15.us.i76.preheader ], [ %i.aav, %.lr.ph15.us.i76.prol ]
  %.212.us.i77.unr = phi ptr [ %.212.us.i77.ph, %.lr.ph15.us.i76.preheader ], [ %i.aax, %.lr.ph15.us.i76.prol ]
  %i.aaz = sub i32 %.08414.us.i.ph, %i.cs
  %i.aba = icmp ugt i32 %i.aaz, -8
  br i1 %i.aba, label %iter.check1040, label %.lr.ph15.us.i76

._crit_edge.us.i75:                               ; preds = %vec.epilog.scalar.ph1041.prol.loopexit, %vec.epilog.scalar.ph1041, %vec.epilog.middle.block1052, %middle.block1036
  %.lcssa270 = phi ptr [ %i.zs, %vec.epilog.middle.block1052 ], [ %i.zg, %middle.block1036 ], [ %.lcssa1349.unr, %vec.epilog.scalar.ph1041.prol.loopexit ], [ %i.zf, %vec.epilog.scalar.ph1041 ] ; 2 uses
  %i.abb = getelementptr inbounds [8 x i8], ptr %.08922.us.i, i64 %i.vb ; 2 uses
  %i.abc = add nuw nsw i32 %.08724.us.i, 1        ; 2 uses
  %exitcond152.not.i = icmp eq i32 %i.abc, %i.uq
  %indvar.next1059 = add i64 %indvar1058, 1
  br i1 %exitcond152.not.i, label %.preheader6.i47, label %.preheader9.us.i71, !llvm.loop !880

.preheader9.lr.ph.split.i66:                      ; preds = %.preheader9.lr.ph.i65
  br i1 %i.uy, label %.preheader9.lr.ph.split.split.us.i70, label %.preheader9.lr.ph.split.split.i67

.preheader9.lr.ph.split.split.us.i70:             ; preds = %.preheader9.lr.ph.split.i66
  %i.abd = zext nneg i32 %i.us to i64             ; 23 uses
  br i1 %i.uz, label %.preheader9.us28.us.i.preheader, label %.preheader9.us28.i.preheader

.preheader9.us28.i.preheader:                     ; preds = %.preheader9.lr.ph.split.split.us.i70
  %i.abe = shl nuw nsw i64 %i.abd, 3              ; 2 uses
  %scevgep1234 = getelementptr i8, ptr %i.cv, i64 8 ; 2 uses
  %i.abf = shl nsw i64 %i.uv, 3
  %i.abg = add i64 %i.db, %i.abf                  ; 2 uses
  %scevgep1235 = getelementptr i8, ptr %scevgep1234, i64 %i.abg
  %i.abh = add i64 %i.abg, %i.abe
  %i.abi = shl nsw i64 %i.df, 3
  %i.abj = add nsw i32 %i.uq, -1
  %i.abk = zext i32 %i.abj to i64
  %i.abl = mul i64 %i.abi, %i.abk
  %i.abm = sub i64 %i.abh, %i.abl
  %scevgep1236 = getelementptr i8, ptr %scevgep1234, i64 %i.abm
  %min.iters.check1240 = icmp ult i32 %i.us, 8
  %min.iters.check1242 = icmp ult i32 %i.us, 32
  %i.abn = and i64 %i.abd, 24
  %n.vec1244 = and i64 %i.abd, 2147483616         ; 5 uses
  %i.abo = shl nuw nsw i64 %n.vec1244, 3
  %cmp.n1258 = icmp eq i64 %n.vec1244, %i.abd
  %min.epilog.iters.check1264 = icmp eq i64 %i.abn, 0
  %n.vec1266 = and i64 %i.abd, 2147483640         ; 4 uses
  %i.abp = shl nuw nsw i64 %n.vec1266, 3
  %cmp.n1274 = icmp eq i64 %n.vec1266, %i.abd
  %xtraiter1376 = and i64 %i.abd, 3               ; 2 uses
  %lcmp.mod1377.not = icmp eq i64 %xtraiter1376, 0
  br label %iter.check1261

.preheader9.us28.us.i.preheader:                  ; preds = %.preheader9.lr.ph.split.split.us.i70
  %i.abq = add i64 %i.db, %i.cw
  %i.abr = shl nsw i64 %i.uv, 3
  %i.abs = add i64 %i.abq, %i.abr
  %i.abt = shl nuw nsw i64 %i.df, 3
  %i.abu = zext nneg i32 %i.cs to i64             ; 5 uses
  %xtraiter1379 = and i64 %i.abd, 3               ; 3 uses
  %i.abv = icmp ult i32 %i.us, 4
  %unroll_iter = and i64 %i.abd, 2147483644
  %lcmp.mod1380.not = icmp eq i64 %xtraiter1379, 0
  %lcmp.mod1382 = icmp ne i64 %xtraiter1379, 0
  %min.iters.check1149 = icmp ult i32 %i.cs, 8
  %min.iters.check1151 = icmp ult i32 %i.cs, 32
  %i.abw = and i64 %i.abu, 24
  %n.vec1153 = and i64 %i.abu, 2147483616         ; 5 uses
  %i.abx = trunc nuw nsw i64 %n.vec1153 to i32
  %i.aby = shl nuw nsw i64 %n.vec1153, 3          ; 2 uses
  %cmp.n1164 = icmp eq i64 %n.vec1153, %i.abu
  %min.epilog.iters.check1172 = icmp eq i64 %i.abw, 0
  %n.vec1174 = and i64 %i.abu, 2147483640         ; 4 uses
  %i.abz = trunc nuw nsw i64 %n.vec1174 to i32
  %i.aca = shl nuw nsw i64 %n.vec1174, 3          ; 2 uses
  %cmp.n1182 = icmp eq i64 %n.vec1174, %i.abu
  br label %iter.check1216

iter.check1216:                                   ; preds = %.preheader9.us28.us.i.preheader, %..preheader7_crit_edge.us43.us.i
  %indvar1146 = phi i64 [ 0, %.preheader9.us28.us.i.preheader ], [ %indvar.next1147, %..preheader7_crit_edge.us43.us.i ] ; 2 uses
  %.08724.us29.us.i = phi i32 [ 0, %.preheader9.us28.us.i.preheader ], [ %i.aeq, %..preheader7_crit_edge.us43.us.i ]
  %.08823.us30.us.i = phi ptr [ %i.bb, %.preheader9.us28.us.i.preheader ], [ %.lcssa265, %..preheader7_crit_edge.us43.us.i ] ; 3 uses
  %.08922.us31.us.i = phi ptr [ %i.uw, %.preheader9.us28.us.i.preheader ], [ %i.aep, %..preheader7_crit_edge.us43.us.i ] ; 12 uses
  %.08823.us30.us.i1145 = ptrtoaddr ptr %.08823.us30.us.i to i64 ; 2 uses
  %i.acb = mul i64 %i.abt, %indvar1146
  %reass.sub = sub i64 %i.acb, %i.abs
  br i1 %i.abv, label %.epil.preheader, label %iter.check1216.new

iter.check1216.new:                               ; preds = %iter.check1216
  %invariant.gep1504 = getelementptr [8 x i8], ptr %.08922.us31.us.i, i64 %i.abd
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %iter.check1216.new
  %indvars.iv134.i = phi i64 [ 0, %iter.check1216.new ], [ %indvars.iv.next135.i.3, %bb.i ] ; 5 uses
  %.110.us34.us.i = phi ptr [ %.08823.us30.us.i, %iter.check1216.new ], [ %i.acp, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %iter.check1216.new ], [ %niter.next.3, %bb.i ]
  %i.acc = sub nuw nsw i64 %i.abd, %indvars.iv134.i
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.acc
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !113
  %i.acf = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 8
  store i64 %i.ace, ptr %.110.us34.us.i, align 8, !tbaa !113
  %indvars.iv.next135.i.neg = xor i64 %indvars.iv134.i, -1
  %gep1505 = getelementptr [8 x i8], ptr %invariant.gep1504, i64 %indvars.iv.next135.i.neg
  %i.acg = load i64, ptr %gep1505, align 8, !tbaa !113
  %i.ach = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 16
  store i64 %i.acg, ptr %i.acf, align 8, !tbaa !113
  %indvars.iv.next135.i.1 = or disjoint i64 %indvars.iv134.i, 2
  %i.aci = sub nuw nsw i64 %i.abd, %indvars.iv.next135.i.1
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.aci
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !113
  %i.acl = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 24
  store i64 %i.ack, ptr %i.ach, align 8, !tbaa !113
  %indvars.iv.next135.i.2 = or disjoint i64 %indvars.iv134.i, 3
  %i.acm = sub nuw nsw i64 %i.abd, %indvars.iv.next135.i.2
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.acm
  %i.aco = load i64, ptr %i.acn, align 8, !tbaa !113
  %i.acp = getelementptr inbounds nuw i8, ptr %.110.us34.us.i, i64 32 ; 3 uses
  store i64 %i.aco, ptr %i.acl, align 8, !tbaa !113
  %indvars.iv.next135.i.3 = add nuw nsw i64 %indvars.iv134.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %iter.check1169.unr-lcssa, label %bb.i, !llvm.loop !881

iter.check1169.unr-lcssa:                         ; preds = %bb.i
  br i1 %lcmp.mod1380.not, label %iter.check1169, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check1169.unr-lcssa, %iter.check1216
  %indvars.iv134.i.epil.init = phi i64 [ 0, %iter.check1216 ], [ %indvars.iv.next135.i.3, %iter.check1169.unr-lcssa ]
  %.110.us34.us.i.epil.init = phi ptr [ %.08823.us30.us.i, %iter.check1216 ], [ %i.acp, %iter.check1169.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1382)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv134.i.epil = phi i64 [ %indvars.iv.next135.i.epil, %bb.j ], [ %indvars.iv134.i.epil.init, %.epil.preheader ] ; 2 uses
  %.110.us34.us.i.epil = phi ptr [ %i.act, %bb.j ], [ %.110.us34.us.i.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.j ], [ 0, %.epil.preheader ]
  %i.acq = sub nuw nsw i64 %i.abd, %indvars.iv134.i.epil
  %i.acr = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.us.i, i64 %i.acq
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !113
  %i.act = getelementptr inbounds nuw i8, ptr %.110.us34.us.i.epil, i64 8 ; 2 uses
  store i64 %i.acs, ptr %.110.us34.us.i.epil, align 8, !tbaa !113
  %indvars.iv.next135.i.epil = add nuw nsw i64 %indvars.iv134.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1379
  br i1 %epil.iter.cmp.not, label %iter.check1169, label %bb.j, !llvm.loop !882

iter.check1169:                                   ; preds = %bb.j, %iter.check1169.unr-lcssa
  %.lcssa1343 = phi ptr [ %i.acp, %iter.check1169.unr-lcssa ], [ %i.act, %bb.j ] ; 7 uses
  br i1 %min.iters.check1149, label %..preheader8_crit_edge.us35.us.i.preheader, label %vector.memcheck1144

vector.memcheck1144:                              ; preds = %iter.check1169
  %i.acu = ptrtoaddr ptr %.lcssa1343 to i64
  %op.rdx = add i64 %reass.sub, %.08823.us30.us.i1145
  %op.rdx1330 = add i64 %op.rdx, %i.acu
  %10 = sub i64 %.08823.us30.us.i1145, %op.rdx1330
  %diff.check1148 = icmp ugt i64 %10, -256
  br i1 %diff.check1148, label %..preheader8_crit_edge.us35.us.i.preheader, label %vector.main.loop.iter.check1150

vector.main.loop.iter.check1150:                  ; preds = %vector.memcheck1144
  br i1 %min.iters.check1151, label %vec.epilog.ph1173, label %vector.ph1152

vector.ph1152:                                    ; preds = %vector.main.loop.iter.check1150
  %i.acv = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.aby
  %i.acw = getelementptr i8, ptr %.lcssa1343, i64 %i.aby ; 2 uses
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.ph1152, %vector.body1154
  %index1155 = phi i64 [ 0, %vector.ph1152 ], [ %index.next1162, %vector.body1154 ] ; 2 uses
  %i.acx = shl i64 %index1155, 3                  ; 2 uses
  %next.gep1156 = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.acx ; 4 uses
  %next.gep1157 = getelementptr i8, ptr %.lcssa1343, i64 %i.acx ; 4 uses
  %i.acy = getelementptr i8, ptr %next.gep1156, i64 64
  %i.acz = getelementptr i8, ptr %next.gep1156, i64 128
  %i.ada = getelementptr i8, ptr %next.gep1156, i64 192
  %wide.load1158 = load <8 x i64>, ptr %next.gep1156, align 8, !tbaa !113
  %wide.load1159 = load <8 x i64>, ptr %i.acy, align 8, !tbaa !113
  %wide.load1160 = load <8 x i64>, ptr %i.acz, align 8, !tbaa !113
  %wide.load1161 = load <8 x i64>, ptr %i.ada, align 8, !tbaa !113
  %i.adb = getelementptr i8, ptr %next.gep1157, i64 64
  %i.adc = getelementptr i8, ptr %next.gep1157, i64 128
  %i.add = getelementptr i8, ptr %next.gep1157, i64 192
  store <8 x i64> %wide.load1158, ptr %next.gep1157, align 8, !tbaa !113
  store <8 x i64> %wide.load1159, ptr %i.adb, align 8, !tbaa !113
  store <8 x i64> %wide.load1160, ptr %i.adc, align 8, !tbaa !113
  store <8 x i64> %wide.load1161, ptr %i.add, align 8, !tbaa !113
  %index.next1162 = add nuw i64 %index1155, 32    ; 2 uses
  %i.ade = icmp eq i64 %index.next1162, %n.vec1153
  br i1 %i.ade, label %middle.block1163, label %vector.body1154, !llvm.loop !883

middle.block1163:                                 ; preds = %vector.body1154
  br i1 %cmp.n1164, label %..preheader7_crit_edge.us43.us.i, label %vec.epilog.iter.check1171

vec.epilog.iter.check1171:                        ; preds = %middle.block1163
  br i1 %min.epilog.iters.check1172, label %..preheader8_crit_edge.us35.us.i.preheader, label %vec.epilog.ph1173, !prof !117

vec.epilog.ph1173:                                ; preds = %vector.main.loop.iter.check1150, %vec.epilog.iter.check1171
  %vec.epilog.resume.val1165 = phi i64 [ %n.vec1153, %vec.epilog.iter.check1171 ], [ 0, %vector.main.loop.iter.check1150 ]
  %i.adf = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.aca
  %i.adg = getelementptr i8, ptr %.lcssa1343, i64 %i.aca ; 2 uses
  br label %vec.epilog.vector.body1175

vec.epilog.vector.body1175:                       ; preds = %vec.epilog.vector.body1175, %vec.epilog.ph1173
  %index1176 = phi i64 [ %vec.epilog.resume.val1165, %vec.epilog.ph1173 ], [ %index.next1180, %vec.epilog.vector.body1175 ] ; 2 uses
  %i.adh = shl i64 %index1176, 3                  ; 2 uses
  %next.gep1177 = getelementptr i8, ptr %.08922.us31.us.i, i64 %i.adh
  %next.gep1178 = getelementptr i8, ptr %.lcssa1343, i64 %i.adh
  %wide.load1179 = load <8 x i64>, ptr %next.gep1177, align 8, !tbaa !113
  store <8 x i64> %wide.load1179, ptr %next.gep1178, align 8, !tbaa !113
  %index.next1180 = add nuw i64 %index1176, 8     ; 2 uses
  %i.adi = icmp eq i64 %index.next1180, %n.vec1174
  br i1 %i.adi, label %vec.epilog.middle.block1181, label %vec.epilog.vector.body1175, !llvm.loop !884

vec.epilog.middle.block1181:                      ; preds = %vec.epilog.vector.body1175
  br i1 %cmp.n1182, label %..preheader7_crit_edge.us43.us.i, label %..preheader8_crit_edge.us35.us.i.preheader

..preheader8_crit_edge.us35.us.i.preheader:       ; preds = %iter.check1169, %vector.memcheck1144, %vec.epilog.iter.check1171, %vec.epilog.middle.block1181
  %.08414.us40.us.i.ph = phi i32 [ 0, %iter.check1169 ], [ 0, %vector.memcheck1144 ], [ %i.abx, %vec.epilog.iter.check1171 ], [ %i.abz, %vec.epilog.middle.block1181 ] ; 4 uses
  %.08613.us41.us.i.ph = phi ptr [ %.08922.us31.us.i, %iter.check1169 ], [ %.08922.us31.us.i, %vector.memcheck1144 ], [ %i.acv, %vec.epilog.iter.check1171 ], [ %i.adf, %vec.epilog.middle.block1181 ] ; 2 uses
  %.212.us42.us.i.ph = phi ptr [ %.lcssa1343, %iter.check1169 ], [ %.lcssa1343, %vector.memcheck1144 ], [ %i.acw, %vec.epilog.iter.check1171 ], [ %i.adg, %vec.epilog.middle.block1181 ] ; 2 uses
  %i.adj = sub i32 %i.cs, %.08414.us40.us.i.ph
  %xtraiter1383 = and i32 %i.adj, 7               ; 2 uses
  %lcmp.mod1384.not = icmp eq i32 %xtraiter1383, 0
  br i1 %lcmp.mod1384.not, label %..preheader8_crit_edge.us35.us.i.prol.loopexit, label %..preheader8_crit_edge.us35.us.i.prol

..preheader8_crit_edge.us35.us.i.prol:            ; preds = %..preheader8_crit_edge.us35.us.i.preheader, %..preheader8_crit_edge.us35.us.i.prol
  %.08414.us40.us.i.prol = phi i32 [ %i.adn, %..preheader8_crit_edge.us35.us.i.prol ], [ %.08414.us40.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ]
  %.08613.us41.us.i.prol = phi ptr [ %i.adk, %..preheader8_crit_edge.us35.us.i.prol ], [ %.08613.us41.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ] ; 2 uses
  %.212.us42.us.i.prol = phi ptr [ %i.adm, %..preheader8_crit_edge.us35.us.i.prol ], [ %.212.us42.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ] ; 2 uses
  %prol.iter1385 = phi i32 [ %prol.iter1385.next, %..preheader8_crit_edge.us35.us.i.prol ], [ 0, %..preheader8_crit_edge.us35.us.i.preheader ]
  %i.adk = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i.prol, i64 8 ; 2 uses
  %i.adl = load i64, ptr %.08613.us41.us.i.prol, align 8, !tbaa !113
  %i.adm = getelementptr inbounds nuw i8, ptr %.212.us42.us.i.prol, i64 8 ; 3 uses
  store i64 %i.adl, ptr %.212.us42.us.i.prol, align 8, !tbaa !113
  %i.adn = add nuw nsw i32 %.08414.us40.us.i.prol, 1 ; 2 uses
  %prol.iter1385.next = add i32 %prol.iter1385, 1 ; 2 uses
  %prol.iter1385.cmp.not = icmp eq i32 %prol.iter1385.next, %xtraiter1383
  br i1 %prol.iter1385.cmp.not, label %..preheader8_crit_edge.us35.us.i.prol.loopexit, label %..preheader8_crit_edge.us35.us.i.prol, !llvm.loop !885

..preheader8_crit_edge.us35.us.i.prol.loopexit:   ; preds = %..preheader8_crit_edge.us35.us.i.prol, %..preheader8_crit_edge.us35.us.i.preheader
  %.lcssa1344.unr = phi ptr [ poison, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adm, %..preheader8_crit_edge.us35.us.i.prol ]
  %.08414.us40.us.i.unr = phi i32 [ %.08414.us40.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adn, %..preheader8_crit_edge.us35.us.i.prol ]
  %.08613.us41.us.i.unr = phi ptr [ %.08613.us41.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adk, %..preheader8_crit_edge.us35.us.i.prol ]
  %.212.us42.us.i.unr = phi ptr [ %.212.us42.us.i.ph, %..preheader8_crit_edge.us35.us.i.preheader ], [ %i.adm, %..preheader8_crit_edge.us35.us.i.prol ]
  %i.ado = sub i32 %.08414.us40.us.i.ph, %i.cs
  %i.adp = icmp ugt i32 %i.ado, -8
  br i1 %i.adp, label %..preheader7_crit_edge.us43.us.i, label %..preheader8_crit_edge.us35.us.i

..preheader8_crit_edge.us35.us.i:                 ; preds = %..preheader8_crit_edge.us35.us.i.prol.loopexit, %..preheader8_crit_edge.us35.us.i
  %.08414.us40.us.i = phi i32 [ %i.aeo, %..preheader8_crit_edge.us35.us.i ], [ %.08414.us40.us.i.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ]
  %.08613.us41.us.i = phi ptr [ %i.ael, %..preheader8_crit_edge.us35.us.i ], [ %.08613.us41.us.i.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ] ; 9 uses
  %.212.us42.us.i = phi ptr [ %i.aen, %..preheader8_crit_edge.us35.us.i ], [ %.212.us42.us.i.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ] ; 9 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 8
  %i.adr = load i64, ptr %.08613.us41.us.i, align 8, !tbaa !113
  %i.ads = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 8
  store i64 %i.adr, ptr %.212.us42.us.i, align 8, !tbaa !113
  %i.adt = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 16
  %i.adu = load i64, ptr %i.adq, align 8, !tbaa !113
  %i.adv = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 16
  store i64 %i.adu, ptr %i.ads, align 8, !tbaa !113
  %i.adw = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 24
  %i.adx = load i64, ptr %i.adt, align 8, !tbaa !113
  %i.ady = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 24
  store i64 %i.adx, ptr %i.adv, align 8, !tbaa !113
  %i.adz = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 32
  %i.aea = load i64, ptr %i.adw, align 8, !tbaa !113
  %i.aeb = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 32
  store i64 %i.aea, ptr %i.ady, align 8, !tbaa !113
  %i.aec = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 40
  %i.aed = load i64, ptr %i.adz, align 8, !tbaa !113
  %i.aee = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 40
  store i64 %i.aed, ptr %i.aeb, align 8, !tbaa !113
  %i.aef = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 48
  %i.aeg = load i64, ptr %i.aec, align 8, !tbaa !113
  %i.aeh = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 48
  store i64 %i.aeg, ptr %i.aee, align 8, !tbaa !113
  %i.aei = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 56
  %i.aej = load i64, ptr %i.aef, align 8, !tbaa !113
  %i.aek = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 56
  store i64 %i.aej, ptr %i.aeh, align 8, !tbaa !113
  %i.ael = getelementptr inbounds nuw i8, ptr %.08613.us41.us.i, i64 64
  %i.aem = load i64, ptr %i.aei, align 8, !tbaa !113
  %i.aen = getelementptr inbounds nuw i8, ptr %.212.us42.us.i, i64 64 ; 2 uses
  store i64 %i.aem, ptr %i.aek, align 8, !tbaa !113
  %i.aeo = add nuw nsw i32 %.08414.us40.us.i, 8   ; 2 uses
  %exitcond139.not.i.7 = icmp eq i32 %i.aeo, %i.cs
  br i1 %exitcond139.not.i.7, label %..preheader7_crit_edge.us43.us.i, label %..preheader8_crit_edge.us35.us.i, !llvm.loop !886

..preheader7_crit_edge.us43.us.i:                 ; preds = %..preheader8_crit_edge.us35.us.i.prol.loopexit, %..preheader8_crit_edge.us35.us.i, %vec.epilog.middle.block1181, %middle.block1163
  %.lcssa265 = phi ptr [ %i.adg, %vec.epilog.middle.block1181 ], [ %i.acw, %middle.block1163 ], [ %.lcssa1344.unr, %..preheader8_crit_edge.us35.us.i.prol.loopexit ], [ %i.aen, %..preheader8_crit_edge.us35.us.i ] ; 2 uses
  %i.aep = getelementptr inbounds [8 x i8], ptr %.08922.us31.us.i, i64 %i.vb ; 2 uses
  %i.aeq = add nuw nsw i32 %.08724.us29.us.i, 1   ; 2 uses
  %exitcond140.not.i = icmp eq i32 %i.aeq, %i.uq
  %indvar.next1147 = add i64 %indvar1146, 1
  br i1 %exitcond140.not.i, label %.preheader6.i47, label %iter.check1216, !llvm.loop !880

iter.check1261:                                   ; preds = %.preheader9.us28.i.preheader, %..preheader8_crit_edge.us35.i
  %.08724.us29.i = phi i32 [ %i.age, %..preheader8_crit_edge.us35.i ], [ 0, %.preheader9.us28.i.preheader ]
  %.08823.us30.i = phi ptr [ %.lcssa262, %..preheader8_crit_edge.us35.i ], [ %i.bb, %.preheader9.us28.i.preheader ] ; 8 uses
  %.08922.us31.i = phi ptr [ %i.agd, %..preheader8_crit_edge.us35.i ], [ %i.uw, %.preheader9.us28.i.preheader ] ; 8 uses
  br i1 %min.iters.check1240, label %vec.epilog.scalar.ph1262.preheader, label %vector.memcheck1232

vector.memcheck1232:                              ; preds = %iter.check1261
  %scevgep1233 = getelementptr i8, ptr %.08823.us30.i, i64 %i.abe
  %bound01237 = icmp ult ptr %.08823.us30.i, %scevgep1236
  %bound11238 = icmp ult ptr %scevgep1235, %scevgep1233
  %found.conflict1239 = and i1 %bound01237, %bound11238
  br i1 %found.conflict1239, label %vec.epilog.scalar.ph1262.preheader, label %vector.main.loop.iter.check1241

vector.main.loop.iter.check1241:                  ; preds = %vector.memcheck1232
  br i1 %min.iters.check1242, label %vec.epilog.ph1265, label %vector.ph1243

vector.ph1243:                                    ; preds = %vector.main.loop.iter.check1241
  %i.aer = getelementptr i8, ptr %.08823.us30.i, i64 %i.abo ; 2 uses
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.ph1243, %vector.body1245
  %index1246 = phi i64 [ 0, %vector.ph1243 ], [ %index.next1256, %vector.body1245 ] ; 3 uses
  %i.aes = shl i64 %index1246, 3
  %next.gep1247 = getelementptr i8, ptr %.08823.us30.i, i64 %i.aes ; 4 uses
  %i.aet = sub nuw nsw i64 %i.abd, %index1246
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %.08922.us31.i, i64 %i.aet ; 4 uses
  %i.aev = getelementptr inbounds i8, ptr %i.aeu, i64 -56
  %i.aew = getelementptr inbounds i8, ptr %i.aeu, i64 -120
  %i.aex = getelementptr inbounds i8, ptr %i.aeu, i64 -184
  %i.aey = getelementptr inbounds i8, ptr %i.aeu, i64 -248
  %wide.load1248 = load <8 x i64>, ptr %i.aev, align 8, !tbaa !113, !alias.scope !942
  %wide.load1249 = load <8 x i64>, ptr %i.aew, align 8, !tbaa !113, !alias.scope !942
  %wide.load1250 = load <8 x i64>, ptr %i.aex, align 8, !tbaa !113, !alias.scope !942
  %wide.load1251 = load <8 x i64>, ptr %i.aey, align 8, !tbaa !113, !alias.scope !942
  %reverse1252 = shufflevector <8 x i64> %wide.load1248, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1253 = shufflevector <8 x i64> %wide.load1249, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1254 = shufflevector <8 x i64> %wide.load1250, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1255 = shufflevector <8 x i64> %wide.load1251, <8 x i64> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.aez = getelementptr i8, ptr %next.gep1247, i64 64
  %i.afa = getelementptr i8, ptr %next.gep1247, i64 128
  %i.afb = getelementptr i8, ptr %next.gep1247, i64 192
  store <8 x i64> %reverse1252, ptr %next.gep1247, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  store <8 x i64> %reverse1253, ptr %i.aez, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  store <8 x i64> %reverse1254, ptr %i.afa, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  store <8 x i64> %reverse1255, ptr %i.afb, align 8, !tbaa !113, !alias.scope !943, !noalias !942
  %index.next1256 = add nuw i64 %index1246, 32    ; 2 uses
  %i.afc = icmp eq i64 %index.next1256, %n.vec1244
  br i1 %i.afc, label %middle.block1257, label %vector.body1245, !llvm.loop !890

middle.block1257:                                 ; preds = %vector.body1245
  br i1 %cmp.n1258, label %..preheader8_crit_edge.us35.i, label %vec.epilog.iter.check1263

vec.epilog.iter.check1263:                        ; preds = %middle.block1257
  br i1 %min.epilog.iters.check1264, label %vec.epilog.scalar.ph1262.preheader, label %vec.epilog.ph1265, !prof !117

vec.epilog.ph1265:                                ; preds = %vector.main.loop.iter.check1241, %vec.epilog.iter.check1263
  %vec.epilog.resume.val1259 = phi i64 [ %n.vec1244, %vec.epilog.iter.check1263 ], [ 0, %vector.main.loop.iter.check1241 ]
  %i.afd = getelementptr i8, ptr %.08823.us30.i, i64 %i.abp ; 2 uses
  br label %vec.epilog.vector.body1267

vec.epilog.vector.body1267:                       ; preds = %vec.epilog.vector.body1267, %vec.epilog.ph1265
end_hunk_1
