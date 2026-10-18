Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/compress?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BZ2_compressBlock:bb.a
  %i.qn = sitofp i32 %i.qm to float
  %i.qo = fpext float %i.qn to double
  %i.qp = fdiv double %i.ql, %i.qo
  %i.qq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qi, ptr noundef nonnull @.str.3, i32 noundef %i.pl, i32 noundef %.014692121.i, i32 noundef %.11473.i, i32 noundef %.11478.i, double noundef %i.qp) #10 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge2113.thread.i
  br i1 %i.of, label %iter.check1107, label %._crit_edge2118.i

iter.check1107:                                   ; preds = %bb.az
  %i.qr = getelementptr [258 x i8], ptr %0, i64 %indvars.iv2354.i
  %i.qs = getelementptr i8, ptr %i.qr, i64 37450  ; 3 uses
  %i.qt = sext i32 %.11473.i to i64               ; 3 uses
  %i.qu = sext i32 %.014692121.i to i64           ; 3 uses
  br i1 %min.iters.check1090, label %vec.epilog.scalar.ph1108.preheader, label %vector.main.loop.iter.check1091

vector.main.loop.iter.check1091:                  ; preds = %iter.check1107
  br i1 %min.iters.check1092, label %vec.epilog.ph1111, label %vector.ph1093

vector.ph1093:                                    ; preds = %vector.main.loop.iter.check1091
  %broadcast.splatinsert1095 = insertelement <16 x i64> poison, i64 %i.qt, i64 0
  %broadcast.splat1096 = shufflevector <16 x i64> %broadcast.splatinsert1095, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1097 = insertelement <16 x i64> poison, i64 %i.qu, i64 0
  %broadcast.splat1098 = shufflevector <16 x i64> %broadcast.splatinsert1097, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.ph1093, %vector.body1099
  %index1100 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1102, %vector.body1099 ] ; 2 uses
  %vec.ind1101 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph1093 ], [ %vec.ind.next1103, %vector.body1099 ] ; 3 uses
  %i.qv = icmp slt <16 x i64> %vec.ind1101, %broadcast.splat1098
  %i.qw = icmp sgt <16 x i64> %vec.ind1101, %broadcast.splat1096
  %i.qx = select <16 x i1> %i.qv, <16 x i1> splat (i1 true), <16 x i1> %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 %index1100
  %i.qz = select <16 x i1> %i.qx, <16 x i8> splat (i8 15), <16 x i8> zeroinitializer
  store <16 x i8> %i.qz, ptr %i.qy, align 1, !tbaa !19
  %index.next1102 = add nuw i64 %index1100, 16    ; 2 uses
  %vec.ind.next1103 = add nuw nsw <16 x i64> %vec.ind1101, splat (i64 16)
  %i.ra = icmp eq i64 %index.next1102, %n.vec1094
  br i1 %i.ra, label %middle.block1104, label %vector.body1099, !llvm.loop !28

middle.block1104:                                 ; preds = %vector.body1099
  br i1 %cmp.n1105, label %._crit_edge2118.i, label %vec.epilog.iter.check1109

vec.epilog.iter.check1109:                        ; preds = %middle.block1104
  br i1 %min.epilog.iters.check1110.not.not, label %vec.epilog.scalar.ph1108.preheader, label %vec.epilog.ph1111, !prof !81

vec.epilog.ph1111:                                ; preds = %vector.main.loop.iter.check1091, %vec.epilog.iter.check1109
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1094, %vec.epilog.iter.check1109 ], [ 0, %vector.main.loop.iter.check1091 ] ; 2 uses
  %broadcast.splatinsert1113 = insertelement <8 x i64> poison, i64 %i.qt, i64 0
  %broadcast.splat1114 = shufflevector <8 x i64> %broadcast.splatinsert1113, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1115 = insertelement <8 x i64> poison, i64 %i.qu, i64 0
  %broadcast.splat1116 = shufflevector <8 x i64> %broadcast.splatinsert1115, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1117 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val1106, i64 0
  %broadcast.splat1118 = shufflevector <8 x i64> %broadcast.splatinsert1117, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1119 = or disjoint <8 x i64> %broadcast.splat1118, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body1120

vec.epilog.vector.body1120:                       ; preds = %vec.epilog.vector.body1120, %vec.epilog.ph1111
  %index1121 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1111 ], [ %index.next1123, %vec.epilog.vector.body1120 ] ; 2 uses
  %vec.ind1122 = phi <8 x i64> [ %induction1119, %vec.epilog.ph1111 ], [ %vec.ind.next1124, %vec.epilog.vector.body1120 ] ; 3 uses
  %i.rb = icmp slt <8 x i64> %vec.ind1122, %broadcast.splat1116
  %i.rc = icmp sgt <8 x i64> %vec.ind1122, %broadcast.splat1114
  %i.rd = select <8 x i1> %i.rb, <8 x i1> splat (i1 true), <8 x i1> %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 %index1121
  %i.rf = select <8 x i1> %i.rd, <8 x i8> splat (i8 15), <8 x i8> zeroinitializer
  store <8 x i8> %i.rf, ptr %i.re, align 1, !tbaa !19
  %index.next1123 = add nuw i64 %index1121, 8     ; 2 uses
  %vec.ind.next1124 = add nuw nsw <8 x i64> %vec.ind1122, splat (i64 8)
  %i.rg = icmp eq i64 %index.next1123, %n.vec1112
  br i1 %i.rg, label %vec.epilog.middle.block1125, label %vec.epilog.vector.body1120, !llvm.loop !29

vec.epilog.middle.block1125:                      ; preds = %vec.epilog.vector.body1120
  br i1 %cmp.n1126, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108.preheader

vec.epilog.scalar.ph1108.preheader:               ; preds = %iter.check1107, %vec.epilog.iter.check1109, %vec.epilog.middle.block1125
  %indvars.iv2350.i.ph = phi i64 [ 0, %iter.check1107 ], [ %n.vec1094, %vec.epilog.iter.check1109 ], [ %n.vec1112, %vec.epilog.middle.block1125 ]
  br label %vec.epilog.scalar.ph1108

vec.epilog.scalar.ph1108:                         ; preds = %vec.epilog.scalar.ph1108.preheader, %vec.epilog.scalar.ph1108
  %indvars.iv2350.i = phi i64 [ %indvars.iv.next2351.i, %vec.epilog.scalar.ph1108 ], [ %indvars.iv2350.i.ph, %vec.epilog.scalar.ph1108.preheader ] ; 4 uses
  %.not1514.i = icmp slt i64 %indvars.iv2350.i, %i.qu
  %.not1515.i = icmp sgt i64 %indvars.iv2350.i, %i.qt
  %or.cond1517.i = select i1 %.not1514.i, i1 true, i1 %.not1515.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qs, i64 %indvars.iv2350.i
  %..i = select i1 %or.cond1517.i, i8 15, i8 0
  store i8 %..i, ptr %i.rh, align 1, !tbaa !19
  %indvars.iv.next2351.i = add nuw nsw i64 %indvars.iv2350.i, 1 ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next2351.i, %wide.trip.count.i122
  br i1 %exitcond.not.i128, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108, !llvm.loop !30

._crit_edge2118.i:                                ; preds = %vec.epilog.scalar.ph1108, %middle.block1104, %vec.epilog.middle.block1125, %bb.az
  %indvars.iv.next2355.i = add nsw i64 %indvars.iv2354.i, -1
  %i.ri = add nsw i32 %.11473.i, 1
  %i.rj = sub nsw i32 %.014792120.i, %.11478.i
  %i.rk = icmp sgt i64 %indvars.iv2354.i, 1
  br i1 %i.rk, label %bb.av, label %.preheader1979.i, !llvm.loop !31

.preheader1978.i:                                 ; preds = %bb.bg, %.preheader1979.i
  %.014892152.i = phi i32 [ 0, %.preheader1979.i ], [ %i.bcl, %bb.bg ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.ph, i1 false), !tbaa !74
  br i1 %i.of, label %.preheader1974.i.epil, label %.loopexit1976.i

.preheader1974.i.epil:                            ; preds = %.preheader1978.i, %.preheader1974.i.epil
  %indvars.iv2363.i.epil = phi i64 [ %indvars.iv.next2364.i.epil, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ]
  %i.rl = getelementptr inbounds nuw [1032 x i8], ptr %i.oy, i64 %indvars.iv2363.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.rl, i8 0, i64 %i.pi, i1 false), !tbaa !74
  %indvars.iv.next2364.i.epil = add nuw nsw i64 %indvars.iv2363.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.ow
  br i1 %epil.iter.cmp.not, label %.split2127.i, label %.preheader1974.i.epil, !llvm.loop !32

.split2127.i:                                     ; preds = %.preheader1974.i.epil
  br i1 %brmerge.not.i, label %.lr.ph2129.i, label %.loopexit1976.i

.lr.ph2129.i:                                     ; preds = %.split2127.i, %.lr.ph2129.i
  %indvars.iv2368.i = phi i64 [ %indvars.iv.next2369.i, %.lr.ph2129.i ], [ 0, %.split2127.i ] ; 8 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv2368.i
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !19
  %i.ro = zext i8 %i.rn to i32
  %i.rp = shl nuw nsw i32 %i.ro, 16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.og, i64 %indvars.iv2368.i
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !19
  %i.rs = zext i8 %i.rr to i32
  %i.rt = or disjoint i32 %i.rp, %i.rs
  %i.ru = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %indvars.iv2368.i ; 3 uses
  store i32 %i.rt, ptr %i.ru, align 8, !tbaa !74
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv2368.i
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !19
  %i.rx = zext i8 %i.rw to i32
  %i.ry = shl nuw nsw i32 %i.rx, 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.pc, i64 %indvars.iv2368.i
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !19
  %i.sb = zext i8 %i.sa to i32
  %i.sc = or disjoint i32 %i.ry, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !74
  %i.se = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv2368.i
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !19
  %i.sg = zext i8 %i.sf to i32
  %i.sh = shl nuw nsw i32 %i.sg, 16
  %i.si = getelementptr inbounds nuw i8, ptr %i.pe, i64 %indvars.iv2368.i
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !19
  %i.sk = zext i8 %i.sj to i32
  %i.sl = or disjoint i32 %i.sh, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store i32 %i.sl, ptr %i.sm, align 8, !tbaa !74
  %indvars.iv.next2369.i = add nuw nsw i64 %indvars.iv2368.i, 1 ; 2 uses
  %exitcond2372.not.i = icmp eq i64 %indvars.iv.next2369.i, %wide.trip.count.i122
  br i1 %exitcond2372.not.i, label %.loopexit1976.i, label %.lr.ph2129.i, !llvm.loop !33

.loopexit1976.i:                                  ; preds = %.lr.ph2129.i, %.split2127.i, %.preheader1978.i
  %i.sn = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not15102141.i = icmp sgt i32 %i.sn, 0
  br i1 %.not15102141.i, label %.lr.ph2146.i, label %._crit_edge2147.i

.lr.ph2146.i:                                     ; preds = %.loopexit1976.i, %.loopexit1971.i
  %indvars.iv2397.i = phi i64 [ %indvars.iv.next2398.i, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 2 uses
  %i.so = phi i32 [ %i.bbw, %.loopexit1971.i ], [ %i.sn, %.loopexit1976.i ] ; 3 uses
  %.114702144.i = phi i32 [ %i.bbv, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 12 uses
  %.014762143.i = phi i32 [ %i.aok, %.loopexit1971.i ], [ 0, %.loopexit1976.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.pj, i1 false), !tbaa !79
  %i.sp = add i32 %.114702144.i, 49
  %i.sq = add nsw i32 %i.so, -1
  %spec.select.i127 = call i32 @llvm.smin.i32(i32 %i.sp, i32 %i.sq) ; 4 uses
  %i.sr = sub nsw i32 %spec.select.i127, %.114702144.i
  %i.ss = icmp eq i32 %i.sr, 49
  %or.cond1519.i = select i1 %i.ou, i1 %i.ss, i1 false ; 2 uses
  br i1 %or.cond1519.i, label %bb.ba, label %.preheader1972.i

.preheader1972.i:                                 ; preds = %.lr.ph2146.i
  %.not15122132.not.i = icmp sgt i32 %i.so, %.114702144.i
  br i1 %.not15122132.not.i, label %.lr.ph2134.preheader.i, label %.loopexit1973.i.preheader

.lr.ph2134.preheader.i:                           ; preds = %.preheader1972.i
  %i.st = sext i32 %.114702144.i to i64
  %smax2384.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127)
  %i.su = add nsw i32 %smax2384.i, 1
  br label %.lr.ph2134.i

bb.ba:                                            ; preds = %.lr.ph2146.i
  %i.sv = sext i32 %.114702144.i to i64
  %i.sw = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.sv ; 50 uses
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !79
  %i.sy = zext i16 %i.sx to i64
  %i.sz = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.sy ; 3 uses
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !74
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 4
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !74
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.te = load i32, ptr %i.td, align 8, !tbaa !74
  %i.tf = getelementptr i8, ptr %i.sw, i64 2
  %i.tg = load i16, ptr %i.tf, align 2, !tbaa !79
  %i.th = zext i16 %i.tg to i64
  %i.ti = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.th ; 3 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !74
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !74
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !74
  %2 = add i32 %i.tn, %i.te
  %i.to = getelementptr i8, ptr %i.sw, i64 4
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !79
  %i.tq = zext i16 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tq ; 3 uses
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !74
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 4
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !74
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !74
  %3 = add i32 %2, %i.tw
  %i.tx = getelementptr i8, ptr %i.sw, i64 6
  %i.ty = load i16, ptr %i.tx, align 2, !tbaa !79
  %i.tz = zext i16 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tz ; 3 uses
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !74
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ua, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !74
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !74
  %4 = add i32 %3, %i.uf
  %i.ug = getelementptr i8, ptr %i.sw, i64 8
  %i.uh = load i16, ptr %i.ug, align 2, !tbaa !79
  %i.ui = zext i16 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ui ; 3 uses
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !74
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !74
  %i.un = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.uo = load i32, ptr %i.un, align 8, !tbaa !74
  %5 = add i32 %4, %i.uo
  %i.up = getelementptr i8, ptr %i.sw, i64 10
  %i.uq = load i16, ptr %i.up, align 2, !tbaa !79
  %i.ur = zext i16 %i.uq to i64
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ur ; 3 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !74
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !74
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !74
  %6 = add i32 %5, %i.ux
  %i.uy = getelementptr i8, ptr %i.sw, i64 12
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !79
  %i.va = zext i16 %i.uz to i64
  %i.vb = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.va ; 3 uses
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !74
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !74
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !74
  %7 = add i32 %6, %i.vg
  %i.vh = getelementptr i8, ptr %i.sw, i64 14
  %i.vi = load i16, ptr %i.vh, align 2, !tbaa !79
  %i.vj = zext i16 %i.vi to i64
  %i.vk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vj ; 3 uses
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !74
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vk, i64 4
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !74
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !74
  %8 = add i32 %7, %i.vp
  %i.vq = getelementptr i8, ptr %i.sw, i64 16
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !79
  %i.vs = zext i16 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vs ; 3 uses
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !74
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !74
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !74
  %9 = add i32 %8, %i.vy
  %i.vz = getelementptr i8, ptr %i.sw, i64 18
  %i.wa = load i16, ptr %i.vz, align 2, !tbaa !79
  %i.wb = zext i16 %i.wa to i64
  %i.wc = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wb ; 3 uses
  %i.wd = load i32, ptr %i.wc, align 8, !tbaa !74
  %i.we = getelementptr inbounds nuw i8, ptr %i.wc, i64 4
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !74
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !74
  %10 = add i32 %9, %i.wh
  %i.wi = getelementptr i8, ptr %i.sw, i64 20
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !79
  %i.wk = zext i16 %i.wj to i64
  %i.wl = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wk ; 3 uses
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !74
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 4
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !74
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wq = load i32, ptr %i.wp, align 8, !tbaa !74
  %11 = add i32 %10, %i.wq
  %i.wr = getelementptr i8, ptr %i.sw, i64 22
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !79
  %i.wt = zext i16 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wt ; 3 uses
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !74
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 4
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !74
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.wz = load i32, ptr %i.wy, align 8, !tbaa !74
  %12 = add i32 %11, %i.wz
  %i.xa = getelementptr i8, ptr %i.sw, i64 24
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !79
  %i.xc = zext i16 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xc ; 3 uses
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !74
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !74
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !74
  %13 = add i32 %12, %i.xi
  %i.xj = getelementptr i8, ptr %i.sw, i64 26
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !79
  %i.xl = zext i16 %i.xk to i64
  %i.xm = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xl ; 3 uses
  %i.xn = load i32, ptr %i.xm, align 8, !tbaa !74
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xm, i64 4
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !74
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !74
  %14 = add i32 %13, %i.xr
  %i.xs = getelementptr i8, ptr %i.sw, i64 28
  %i.xt = load i16, ptr %i.xs, align 2, !tbaa !79
  %i.xu = zext i16 %i.xt to i64
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xu ; 3 uses
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !74
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xv, i64 4
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !74
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !74
  %15 = add i32 %14, %i.ya
  %i.yb = getelementptr i8, ptr %i.sw, i64 30
  %i.yc = load i16, ptr %i.yb, align 2, !tbaa !79
  %i.yd = zext i16 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.yd ; 3 uses
  %i.yf = load i32, ptr %i.ye, align 8, !tbaa !74
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !74
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !74
  %16 = add i32 %15, %i.yj
  %i.yk = getelementptr i8, ptr %i.sw, i64 32
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !79
  %i.ym = zext i16 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ym ; 3 uses
  %i.yo = load i32, ptr %i.yn, align 8, !tbaa !74
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 4
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !74
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !74
  %17 = add i32 %16, %i.ys
  %i.yt = getelementptr i8, ptr %i.sw, i64 34
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !79
  %i.yv = zext i16 %i.yu to i64
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.yv ; 3 uses
  %i.yx = load i32, ptr %i.yw, align 8, !tbaa !74
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yw, i64 4
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !74
  %i.za = getelementptr inbounds nuw i8, ptr %i.yw, i64 8
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !74
  %18 = add i32 %17, %i.zb
  %i.zc = getelementptr i8, ptr %i.sw, i64 36
  %i.zd = load i16, ptr %i.zc, align 2, !tbaa !79
  %i.ze = zext i16 %i.zd to i64
  %i.zf = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ze ; 3 uses
  %i.zg = load i32, ptr %i.zf, align 8, !tbaa !74
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !74
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 8
  %i.zk = load i32, ptr %i.zj, align 8, !tbaa !74
  %19 = add i32 %18, %i.zk
  %i.zl = getelementptr i8, ptr %i.sw, i64 38
  %i.zm = load i16, ptr %i.zl, align 2, !tbaa !79
  %i.zn = zext i16 %i.zm to i64
  %i.zo = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zn ; 3 uses
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !74
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zo, i64 4
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !74
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.zt = load i32, ptr %i.zs, align 8, !tbaa !74
  %20 = add i32 %19, %i.zt
  %i.zu = getelementptr i8, ptr %i.sw, i64 40
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !79
  %i.zw = zext i16 %i.zv to i64
  %i.zx = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zw ; 3 uses
  %i.zy = load i32, ptr %i.zx, align 8, !tbaa !74
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zx, i64 4
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !74
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 8
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !74
  %21 = add i32 %20, %i.aac
  %i.aad = getelementptr i8, ptr %i.sw, i64 42
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !79
  %i.aaf = zext i16 %i.aae to i64
  %i.aag = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aaf ; 3 uses
  %i.aah = load i32, ptr %i.aag, align 8, !tbaa !74
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !74
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aal = load i32, ptr %i.aak, align 8, !tbaa !74
  %22 = add i32 %21, %i.aal
  %i.aam = getelementptr i8, ptr %i.sw, i64 44
  %i.aan = load i16, ptr %i.aam, align 2, !tbaa !79
  %i.aao = zext i16 %i.aan to i64
  %i.aap = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aao ; 3 uses
  %i.aaq = load i32, ptr %i.aap, align 8, !tbaa !74
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aap, i64 4
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !74
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 8
  %i.aau = load i32, ptr %i.aat, align 8, !tbaa !74
  %23 = add i32 %22, %i.aau
  %i.aav = getelementptr i8, ptr %i.sw, i64 46
  %i.aaw = load i16, ptr %i.aav, align 2, !tbaa !79
  %i.aax = zext i16 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aax ; 3 uses
  %i.aaz = load i32, ptr %i.aay, align 8, !tbaa !74
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aay, i64 4
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !74
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %i.abd = load i32, ptr %i.abc, align 8, !tbaa !74
  %24 = add i32 %23, %i.abd
  %i.abe = getelementptr i8, ptr %i.sw, i64 48
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !79
  %i.abg = zext i16 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.abg ; 3 uses
  %i.abi = load i32, ptr %i.abh, align 8, !tbaa !74
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 4
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !74
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abm = load i32, ptr %i.abl, align 8, !tbaa !74
  %25 = add i32 %24, %i.abm
  %i.abn = getelementptr i8, ptr %i.sw, i64 50
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !79
  %i.abp = zext i16 %i.abo to i64
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.abp ; 3 uses
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !74
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 4
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !74
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !74
  %26 = add i32 %25, %i.abv
  %i.abw = getelementptr i8, ptr %i.sw, i64 52
  %i.abx = load i16, ptr %i.abw, align 2, !tbaa !79
  %i.aby = zext i16 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aby ; 3 uses
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !74
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !74
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !74
  %27 = add i32 %26, %i.ace
  %i.acf = getelementptr i8, ptr %i.sw, i64 54
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !79
  %i.ach = zext i16 %i.acg to i64
  %i.aci = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ach ; 3 uses
  %i.acj = load i32, ptr %i.aci, align 8, !tbaa !74
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !74
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  %i.acn = load i32, ptr %i.acm, align 8, !tbaa !74
  %28 = add i32 %27, %i.acn
  %i.aco = getelementptr i8, ptr %i.sw, i64 56
  %i.acp = load i16, ptr %i.aco, align 2, !tbaa !79
  %i.acq = zext i16 %i.acp to i64
  %i.acr = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.acq ; 3 uses
  %i.acs = load i32, ptr %i.acr, align 8, !tbaa !74
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 4
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !74
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !74
  %29 = add i32 %28, %i.acw
  %i.acx = getelementptr i8, ptr %i.sw, i64 58
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !79
  %i.acz = zext i16 %i.acy to i64
  %i.ada = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.acz ; 3 uses
  %i.adb = load i32, ptr %i.ada, align 8, !tbaa !74
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ada, i64 4
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !74
  %i.ade = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  %i.adf = load i32, ptr %i.ade, align 8, !tbaa !74
  %30 = add i32 %29, %i.adf
  %i.adg = getelementptr i8, ptr %i.sw, i64 60
  %i.adh = load i16, ptr %i.adg, align 2, !tbaa !79
  %i.adi = zext i16 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.adi ; 3 uses
  %i.adk = load i32, ptr %i.adj, align 8, !tbaa !74
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adj, i64 4
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !74
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adj, i64 8
  %i.ado = load i32, ptr %i.adn, align 8, !tbaa !74
  %31 = add i32 %30, %i.ado
  %i.adp = getelementptr i8, ptr %i.sw, i64 62
  %i.adq = load i16, ptr %i.adp, align 2, !tbaa !79
  %i.adr = zext i16 %i.adq to i64
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.adr ; 3 uses
  %i.adt = load i32, ptr %i.ads, align 8, !tbaa !74
  %i.adu = getelementptr inbounds nuw i8, ptr %i.ads, i64 4
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !74
  %i.adw = getelementptr inbounds nuw i8, ptr %i.ads, i64 8
  %i.adx = load i32, ptr %i.adw, align 8, !tbaa !74
  %32 = add i32 %31, %i.adx
  %i.ady = getelementptr i8, ptr %i.sw, i64 64
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !79
  %i.aea = zext i16 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aea ; 3 uses
  %i.aec = load i32, ptr %i.aeb, align 8, !tbaa !74
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 4
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !74
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aeg = load i32, ptr %i.aef, align 8, !tbaa !74
  %33 = add i32 %32, %i.aeg
  %i.aeh = getelementptr i8, ptr %i.sw, i64 66
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !79
  %i.aej = zext i16 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aej ; 3 uses
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !74
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aek, i64 4
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !74
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aep = load i32, ptr %i.aeo, align 8, !tbaa !74
  %34 = add i32 %33, %i.aep
  %i.aeq = getelementptr i8, ptr %i.sw, i64 68
  %i.aer = load i16, ptr %i.aeq, align 2, !tbaa !79
  %i.aes = zext i16 %i.aer to i64
  %i.aet = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aes ; 3 uses
  %i.aeu = load i32, ptr %i.aet, align 8, !tbaa !74
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 4
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !74
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !74
  %35 = add i32 %34, %i.aey
  %i.aez = getelementptr i8, ptr %i.sw, i64 70
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !79
  %i.afb = zext i16 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.afb ; 3 uses
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !74
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afc, i64 4
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !74
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afc, i64 8
  %i.afh = load i32, ptr %i.afg, align 8, !tbaa !74
  %36 = add i32 %35, %i.afh
  %i.afi = getelementptr i8, ptr %i.sw, i64 72
  %i.afj = load i16, ptr %i.afi, align 2, !tbaa !79
  %i.afk = zext i16 %i.afj to i64
  %i.afl = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.afk ; 3 uses
  %i.afm = load i32, ptr %i.afl, align 8, !tbaa !74
  %i.afn = insertelement <36 x i32> poison, i32 %i.tj, i64 0
  %i.afo = insertelement <36 x i32> %i.afn, i32 %i.ta, i64 1
  %i.afp = insertelement <36 x i32> %i.afo, i32 %i.ts, i64 2
  %i.afq = insertelement <36 x i32> %i.afp, i32 %i.ub, i64 3
  %i.afr = insertelement <36 x i32> %i.afq, i32 %i.uk, i64 4
  %i.afs = insertelement <36 x i32> %i.afr, i32 %i.ut, i64 5
  %i.aft = insertelement <36 x i32> %i.afs, i32 %i.vc, i64 6
  %i.afu = insertelement <36 x i32> %i.aft, i32 %i.vl, i64 7
  %i.afv = insertelement <36 x i32> %i.afu, i32 %i.vu, i64 8
  %i.afw = insertelement <36 x i32> %i.afv, i32 %i.wd, i64 9
  %i.afx = insertelement <36 x i32> %i.afw, i32 %i.wm, i64 10
  %i.afy = insertelement <36 x i32> %i.afx, i32 %i.wv, i64 11
  %i.afz = insertelement <36 x i32> %i.afy, i32 %i.xe, i64 12
  %i.aga = insertelement <36 x i32> %i.afz, i32 %i.xn, i64 13
  %i.agb = insertelement <36 x i32> %i.aga, i32 %i.xw, i64 14
  %i.agc = insertelement <36 x i32> %i.agb, i32 %i.yf, i64 15
  %i.agd = insertelement <36 x i32> %i.agc, i32 %i.yo, i64 16
  %i.age = insertelement <36 x i32> %i.agd, i32 %i.yx, i64 17
  %i.agf = insertelement <36 x i32> %i.age, i32 %i.zg, i64 18
  %i.agg = insertelement <36 x i32> %i.agf, i32 %i.zp, i64 19
  %i.agh = insertelement <36 x i32> %i.agg, i32 %i.zy, i64 20
  %i.agi = insertelement <36 x i32> %i.agh, i32 %i.aah, i64 21
  %i.agj = insertelement <36 x i32> %i.agi, i32 %i.aaq, i64 22
  %i.agk = insertelement <36 x i32> %i.agj, i32 %i.aaz, i64 23
  %i.agl = insertelement <36 x i32> %i.agk, i32 %i.abi, i64 24
  %i.agm = insertelement <36 x i32> %i.agl, i32 %i.abr, i64 25
  %i.agn = insertelement <36 x i32> %i.agm, i32 %i.aca, i64 26
  %i.ago = insertelement <36 x i32> %i.agn, i32 %i.acj, i64 27
  %i.agp = insertelement <36 x i32> %i.ago, i32 %i.acs, i64 28
  %i.agq = insertelement <36 x i32> %i.agp, i32 %i.adb, i64 29
  %i.agr = insertelement <36 x i32> %i.agq, i32 %i.adk, i64 30
  %i.ags = insertelement <36 x i32> %i.agr, i32 %i.adt, i64 31
  %i.agt = insertelement <36 x i32> %i.ags, i32 %i.aec, i64 32
  %i.agu = insertelement <36 x i32> %i.agt, i32 %i.ael, i64 33
  %i.agv = insertelement <36 x i32> %i.agu, i32 %i.aeu, i64 34
  %i.agw = insertelement <36 x i32> %i.agv, i32 %i.afd, i64 35
  %i.agx = call i32 @llvm.vector.reduce.add.v36i32(<36 x i32> %i.agw)
  %op.rdx1172 = add i32 %i.agx, %i.afm
  %i.agy = getelementptr inbounds nuw i8, ptr %i.afl, i64 4
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !74
  %i.aha = getelementptr inbounds nuw i8, ptr %i.afl, i64 8
  %i.ahb = load i32, ptr %i.aha, align 8, !tbaa !74
  %37 = add i32 %36, %i.ahb
  %i.ahc = getelementptr i8, ptr %i.sw, i64 74
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !79
  %i.ahe = zext i16 %i.ahd to i64
  %i.ahf = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahe ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load i32, ptr %i.ahg, align 8, !tbaa !74
  %38 = add i32 %37, %i.ahh
  %i.ahi = getelementptr i8, ptr %i.sw, i64 76
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !79
  %i.ahk = zext i16 %i.ahj to i64
  %i.ahl = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahk ; 2 uses
  %i.ahm = insertelement <36 x i32> poison, i32 %i.tl, i64 0
  %i.ahn = insertelement <36 x i32> %i.ahm, i32 %i.tc, i64 1
  %i.aho = insertelement <36 x i32> %i.ahn, i32 %i.tu, i64 2
  %i.ahp = insertelement <36 x i32> %i.aho, i32 %i.ud, i64 3
  %i.ahq = insertelement <36 x i32> %i.ahp, i32 %i.um, i64 4
  %i.ahr = insertelement <36 x i32> %i.ahq, i32 %i.uv, i64 5
  %i.ahs = insertelement <36 x i32> %i.ahr, i32 %i.ve, i64 6
  %i.aht = insertelement <36 x i32> %i.ahs, i32 %i.vn, i64 7
  %i.ahu = insertelement <36 x i32> %i.aht, i32 %i.vw, i64 8
  %i.ahv = insertelement <36 x i32> %i.ahu, i32 %i.wf, i64 9
  %i.ahw = insertelement <36 x i32> %i.ahv, i32 %i.wo, i64 10
  %i.ahx = insertelement <36 x i32> %i.ahw, i32 %i.wx, i64 11
  %i.ahy = insertelement <36 x i32> %i.ahx, i32 %i.xg, i64 12
  %i.ahz = insertelement <36 x i32> %i.ahy, i32 %i.xp, i64 13
  %i.aia = insertelement <36 x i32> %i.ahz, i32 %i.xy, i64 14
  %i.aib = insertelement <36 x i32> %i.aia, i32 %i.yh, i64 15
  %i.aic = insertelement <36 x i32> %i.aib, i32 %i.yq, i64 16
  %i.aid = insertelement <36 x i32> %i.aic, i32 %i.yz, i64 17
  %i.aie = insertelement <36 x i32> %i.aid, i32 %i.zi, i64 18
  %i.aif = insertelement <36 x i32> %i.aie, i32 %i.zr, i64 19
  %i.aig = insertelement <36 x i32> %i.aif, i32 %i.aaa, i64 20
  %i.aih = insertelement <36 x i32> %i.aig, i32 %i.aaj, i64 21
  %i.aii = insertelement <36 x i32> %i.aih, i32 %i.aas, i64 22
  %i.aij = insertelement <36 x i32> %i.aii, i32 %i.abb, i64 23
  %i.aik = insertelement <36 x i32> %i.aij, i32 %i.abk, i64 24
  %i.ail = insertelement <36 x i32> %i.aik, i32 %i.abt, i64 25
  %i.aim = insertelement <36 x i32> %i.ail, i32 %i.acc, i64 26
  %i.ain = insertelement <36 x i32> %i.aim, i32 %i.acl, i64 27
  %i.aio = insertelement <36 x i32> %i.ain, i32 %i.acu, i64 28
  %i.aip = insertelement <36 x i32> %i.aio, i32 %i.add, i64 29
  %i.aiq = insertelement <36 x i32> %i.aip, i32 %i.adm, i64 30
  %i.air = insertelement <36 x i32> %i.aiq, i32 %i.adv, i64 31
  %i.ais = insertelement <36 x i32> %i.air, i32 %i.aee, i64 32
  %i.ait = insertelement <36 x i32> %i.ais, i32 %i.aen, i64 33
  %i.aiu = insertelement <36 x i32> %i.ait, i32 %i.aew, i64 34
  %i.aiv = insertelement <36 x i32> %i.aiu, i32 %i.aff, i64 35
  %i.aiw = call i32 @llvm.vector.reduce.add.v36i32(<36 x i32> %i.aiv)
  %op.rdx = add i32 %i.aiw, %i.agz
  %i.aix = load <2 x i32>, ptr %i.ahf, align 8, !tbaa !74
  %i.aiy = load <2 x i32>, ptr %i.ahl, align 8, !tbaa !74 ; 2 uses
  %i.aiz = insertelement <2 x i32> %i.aiy, i32 %op.rdx1172, i64 0
  %i.aja = add <2 x i32> %i.aiz, %i.aix
  %i.ajb = insertelement <2 x i32> %i.aiy, i32 %op.rdx, i64 1
  %i.ajc = add <2 x i32> %i.aja, %i.ajb
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.aje = load i32, ptr %i.ajd, align 8, !tbaa !74
  %39 = add i32 %38, %i.aje
  %i.ajf = getelementptr i8, ptr %i.sw, i64 78
  %i.ajg = load i16, ptr %i.ajf, align 2, !tbaa !79
  %i.ajh = zext i16 %i.ajg to i64
  %i.aji = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajh ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.ajk = load i32, ptr %i.ajj, align 8, !tbaa !74
  %40 = add i32 %39, %i.ajk
  %i.ajl = getelementptr i8, ptr %i.sw, i64 80
  %i.ajm = load i16, ptr %i.ajl, align 2, !tbaa !79
  %i.ajn = zext i16 %i.ajm to i64
  %i.ajo = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajn ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajq = load i32, ptr %i.ajp, align 8, !tbaa !74
  %41 = add i32 %40, %i.ajq
  %i.ajr = getelementptr i8, ptr %i.sw, i64 82
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !79
  %i.ajt = zext i16 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajt ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.aju, i64 8
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !74
  %42 = add i32 %41, %i.ajw
  %i.ajx = getelementptr i8, ptr %i.sw, i64 84
  %i.ajy = load i16, ptr %i.ajx, align 2, !tbaa !79
  %i.ajz = zext i16 %i.ajy to i64
  %i.aka = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajz ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !74
  %43 = add i32 %42, %i.akc
  %i.akd = getelementptr i8, ptr %i.sw, i64 86
  %i.ake = load i16, ptr %i.akd, align 2, !tbaa !79
  %i.akf = zext i16 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akf ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %i.aki = load i32, ptr %i.akh, align 8, !tbaa !74
  %44 = add i32 %43, %i.aki
  %i.akj = getelementptr i8, ptr %i.sw, i64 88
  %i.akk = load i16, ptr %i.akj, align 2, !tbaa !79
  %i.akl = zext i16 %i.akk to i64
  %i.akm = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akl ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !74
  %45 = add i32 %44, %i.ako
  %i.akp = getelementptr i8, ptr %i.sw, i64 90
  %i.akq = load i16, ptr %i.akp, align 2, !tbaa !79
  %i.akr = zext i16 %i.akq to i64
  %i.aks = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akr ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aks, i64 8
  %i.aku = load i32, ptr %i.akt, align 8, !tbaa !74
  %46 = add i32 %45, %i.aku
  %i.akv = getelementptr i8, ptr %i.sw, i64 92
  %i.akw = load i16, ptr %i.akv, align 2, !tbaa !79
  %i.akx = zext i16 %i.akw to i64
  %i.aky = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akx ; 2 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 8
  %i.ala = load i32, ptr %i.akz, align 8, !tbaa !74
  %47 = add i32 %46, %i.ala
  %i.alb = getelementptr i8, ptr %i.sw, i64 94
  %i.alc = load i16, ptr %i.alb, align 2, !tbaa !79
  %i.ald = zext i16 %i.alc to i64
  %i.ale = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ald ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 8
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !74
  %48 = add i32 %47, %i.alg
  %i.alh = getelementptr i8, ptr %i.sw, i64 96
  %i.ali = load i16, ptr %i.alh, align 2, !tbaa !79
  %i.alj = zext i16 %i.ali to i64
  %i.alk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.alj ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 8
  %i.alm = load i32, ptr %i.all, align 8, !tbaa !74
  %49 = add i32 %48, %i.alm
  %i.aln = getelementptr i8, ptr %i.sw, i64 98
  %i.alo = load i16, ptr %i.aln, align 2, !tbaa !79
  %i.alp = zext i16 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.alp ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 8
  %i.als = load i32, ptr %i.alr, align 8, !tbaa !74
  %i.alt = add i32 %49, %i.als
  %i.alu = load <2 x i32>, ptr %i.aji, align 8, !tbaa !74
  %i.alv = add <2 x i32> %i.ajc, %i.alu
  %i.alw = load <2 x i32>, ptr %i.ajo, align 8, !tbaa !74
  %i.alx = add <2 x i32> %i.alv, %i.alw
  %i.aly = load <2 x i32>, ptr %i.aju, align 8, !tbaa !74
  %i.alz = add <2 x i32> %i.alx, %i.aly
  %i.ama = load <2 x i32>, ptr %i.aka, align 8, !tbaa !74
  %i.amb = add <2 x i32> %i.alz, %i.ama
  %i.amc = load <2 x i32>, ptr %i.akg, align 8, !tbaa !74
  %i.amd = add <2 x i32> %i.amb, %i.amc
  %i.ame = load <2 x i32>, ptr %i.akm, align 8, !tbaa !74
  %i.amf = add <2 x i32> %i.amd, %i.ame
  %i.amg = load <2 x i32>, ptr %i.aks, align 8, !tbaa !74
  %i.amh = add <2 x i32> %i.amf, %i.amg
  %i.ami = load <2 x i32>, ptr %i.aky, align 8, !tbaa !74
  %i.amj = add <2 x i32> %i.amh, %i.ami
  %i.amk = load <2 x i32>, ptr %i.ale, align 8, !tbaa !74
  %i.aml = add <2 x i32> %i.amj, %i.amk
  %i.amm = load <2 x i32>, ptr %i.alk, align 8, !tbaa !74
  %i.amn = add <2 x i32> %i.aml, %i.amm
  %i.amo = load <2 x i32>, ptr %i.alq, align 8, !tbaa !74
  %i.amp = add <2 x i32> %i.amn, %i.amo
  store <2 x i32> %i.amp, ptr %i.a, align 8
  store i32 %i.alt, ptr %i.pf, align 8
  br label %.loopexit1973.i.preheader

.lr.ph2134.i:                                     ; preds = %.loopexit, %.lr.ph2134.preheader.i
  %indvars.iv2381.i = phi i64 [ %i.st, %.lr.ph2134.preheader.i ], [ %indvars.iv.next2382.i, %.loopexit ] ; 2 uses
  %i.amq = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2381.i
  %i.amr = load i16, ptr %i.amq, align 2, !tbaa !79
  %i.ams = zext i16 %i.amr to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.ams ; 5 uses
  br i1 %min.iters.check1128, label %scalar.ph.preheader, label %vector.body1131

vector.body1131:                                  ; preds = %.lr.ph2134.i
  %i.amt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 258
  %i.amu = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 516
  %i.amv = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 774
  %i.amw = load i8, ptr %invariant.gep.i, align 1, !tbaa !19
  %i.amx = load i8, ptr %i.amt, align 1, !tbaa !19
  %i.amy = load i8, ptr %i.amu, align 1, !tbaa !19
  %i.amz = load i8, ptr %i.amv, align 1, !tbaa !19
  %i.ana = insertelement <4 x i8> poison, i8 %i.amw, i64 0
  %i.anb = insertelement <4 x i8> %i.ana, i8 %i.amx, i64 1
  %i.anc = insertelement <4 x i8> %i.anb, i8 %i.amy, i64 2
  %i.and = insertelement <4 x i8> %i.anc, i8 %i.amz, i64 3
  %i.ane = zext <4 x i8> %i.and to <4 x i16>
  %wide.load = load <4 x i16>, ptr %i.a, align 8, !tbaa !79
  %i.anf = add <4 x i16> %wide.load, %i.ane
  store <4 x i16> %i.anf, ptr %i.a, align 8, !tbaa !79
  br i1 %cmp.n1135, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2134.i, %vector.body1131
  %indvars.iv2376.i.ph = phi i64 [ 0, %.lr.ph2134.i ], [ %n.vec1130, %vector.body1131 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2376.i = phi i64 [ %indvars.iv.next2377.i, %scalar.ph ], [ %indvars.iv2376.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [258 x i8], ptr %invariant.gep.i, i64 %indvars.iv2376.i
  %i.ang = load i8, ptr %gep.i, align 1, !tbaa !19
  %i.anh = zext i8 %i.ang to i16
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2376.i ; 2 uses
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !79
  %i.ank = add i16 %i.anj, %i.anh
  store i16 %i.ank, ptr %i.ani, align 2, !tbaa !79
  %indvars.iv.next2377.i = add nuw nsw i64 %indvars.iv2376.i, 1 ; 2 uses
  %exitcond2380.not.i = icmp eq i64 %indvars.iv.next2377.i, %i.ow
  br i1 %exitcond2380.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph, %vector.body1131
  %indvars.iv.next2382.i = add nsw i64 %indvars.iv2381.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next2382.i to i32
  %exitcond2385.not.i = icmp eq i32 %i.su, %lftr.wideiv.i
  br i1 %exitcond2385.not.i, label %.loopexit1973.i.preheader, label %.lr.ph2134.i, !llvm.loop !35

.loopexit1973.i.preheader:                        ; preds = %.loopexit, %bb.ba, %.preheader1972.i
  br i1 %i.pk, label %.loopexit1973.i.epil.preheader, label %.loopexit1973.i

.loopexit1973.i:                                  ; preds = %.loopexit1973.i.preheader, %.loopexit1973.i
  %indvars.iv2386.i = phi i64 [ %indvars.iv.next2387.i.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ] ; 6 uses
  %.014902136.i = phi i32 [ %spec.select1521.i.3, %.loopexit1973.i ], [ 999999999, %.loopexit1973.i.preheader ] ; 2 uses
  %.014922135.i = phi i32 [ %spec.select1520.i.3, %.loopexit1973.i ], [ -1, %.loopexit1973.i.preheader ]
  %niter1383 = phi i64 [ %niter1383.next.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ]
  %i.anl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i
  %i.anm = load i16, ptr %i.anl, align 8, !tbaa !79
  %i.ann = zext i16 %i.anm to i32                 ; 2 uses
  %i.ano = icmp samesign ugt i32 %.014902136.i, %i.ann
  %i.anp = trunc nuw nsw i64 %indvars.iv2386.i to i32
  %spec.select1520.i = select i1 %i.ano, i32 %i.anp, i32 %.014922135.i
  %spec.select1521.i = call i32 @llvm.umin.i32(i32 %.014902136.i, i32 %i.ann) ; 2 uses
  %indvars.iv.next2387.i = or disjoint i64 %indvars.iv2386.i, 1 ; 2 uses
  %i.anq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !79
  %i.ans = zext i16 %i.anr to i32                 ; 2 uses
  %i.ant = icmp samesign ugt i32 %spec.select1521.i, %i.ans
  %i.anu = trunc nuw nsw i64 %indvars.iv.next2387.i to i32
  %spec.select1520.i.1 = select i1 %i.ant, i32 %i.anu, i32 %spec.select1520.i
  %spec.select1521.i.1 = call i32 @llvm.umin.i32(i32 %spec.select1521.i, i32 %i.ans) ; 2 uses
  %indvars.iv.next2387.i.1 = or disjoint i64 %indvars.iv2386.i, 2 ; 2 uses
  %i.anv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.1
  %i.anw = load i16, ptr %i.anv, align 4, !tbaa !79
  %i.anx = zext i16 %i.anw to i32                 ; 2 uses
  %i.any = icmp samesign ugt i32 %spec.select1521.i.1, %i.anx
  %i.anz = trunc nuw nsw i64 %indvars.iv.next2387.i.1 to i32
  %spec.select1520.i.2 = select i1 %i.any, i32 %i.anz, i32 %spec.select1520.i.1
  %spec.select1521.i.2 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.1, i32 %i.anx) ; 2 uses
  %indvars.iv.next2387.i.2 = or disjoint i64 %indvars.iv2386.i, 3 ; 2 uses
  %i.aoa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.2
  %i.aob = load i16, ptr %i.aoa, align 2, !tbaa !79
  %i.aoc = zext i16 %i.aob to i32                 ; 2 uses
  %i.aod = icmp samesign ugt i32 %spec.select1521.i.2, %i.aoc
  %i.aoe = trunc nuw nsw i64 %indvars.iv.next2387.i.2 to i32
  %spec.select1520.i.3 = select i1 %i.aod, i32 %i.aoe, i32 %spec.select1520.i.2 ; 3 uses
  %spec.select1521.i.3 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.2, i32 %i.aoc) ; 3 uses
  %indvars.iv.next2387.i.3 = add nuw nsw i64 %indvars.iv2386.i, 4 ; 2 uses
  %niter1383.next.3 = add i64 %niter1383, 4       ; 2 uses
  %niter1383.ncmp.3 = icmp eq i64 %niter1383.next.3, %unroll_iter1382
  br i1 %niter1383.ncmp.3, label %.unr-lcssa, label %.loopexit1973.i, !llvm.loop !36

.unr-lcssa:                                       ; preds = %.loopexit1973.i
  br i1 %lcmp.mod1378.not, label %.epilog-lcssa, label %.loopexit1973.i.epil.preheader

.loopexit1973.i.epil.preheader:                   ; preds = %.unr-lcssa, %.loopexit1973.i.preheader
  %indvars.iv2386.i.epil.init = phi i64 [ 0, %.loopexit1973.i.preheader ], [ %indvars.iv.next2387.i.3, %.unr-lcssa ]
  %.014902136.i.epil.init = phi i32 [ 999999999, %.loopexit1973.i.preheader ], [ %spec.select1521.i.3, %.unr-lcssa ]
  %.014922135.i.epil.init = phi i32 [ -1, %.loopexit1973.i.preheader ], [ %spec.select1520.i.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1381)
  br label %.loopexit1973.i.epil

.loopexit1973.i.epil:                             ; preds = %.loopexit1973.i.epil, %.loopexit1973.i.epil.preheader
  %indvars.iv2386.i.epil = phi i64 [ %indvars.iv.next2387.i.epil, %.loopexit1973.i.epil ], [ %indvars.iv2386.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 3 uses
  %.014902136.i.epil = phi i32 [ %spec.select1521.i.epil, %.loopexit1973.i.epil ], [ %.014902136.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 2 uses
  %.014922135.i.epil = phi i32 [ %spec.select1520.i.epil, %.loopexit1973.i.epil ], [ %.014922135.i.epil.init, %.loopexit1973.i.epil.preheader ]
  %epil.iter1377 = phi i64 [ %epil.iter1377.next, %.loopexit1973.i.epil ], [ 0, %.loopexit1973.i.epil.preheader ]
  %i.aof = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i.epil
  %i.aog = load i16, ptr %i.aof, align 2, !tbaa !79
  %i.aoh = zext i16 %i.aog to i32                 ; 2 uses
  %i.aoi = icmp samesign ugt i32 %.014902136.i.epil, %i.aoh
  %i.aoj = trunc nuw nsw i64 %indvars.iv2386.i.epil to i32
  %spec.select1520.i.epil = select i1 %i.aoi, i32 %i.aoj, i32 %.014922135.i.epil ; 2 uses
  %spec.select1521.i.epil = call i32 @llvm.umin.i32(i32 %.014902136.i.epil, i32 %i.aoh) ; 2 uses
  %indvars.iv.next2387.i.epil = add nuw nsw i64 %indvars.iv2386.i.epil, 1
  %epil.iter1377.next = add i64 %epil.iter1377, 1 ; 2 uses
  %epil.iter1377.cmp.not = icmp eq i64 %epil.iter1377.next, %xtraiter1376
  br i1 %epil.iter1377.cmp.not, label %.epilog-lcssa, label %.loopexit1973.i.epil, !llvm.loop !37

.epilog-lcssa:                                    ; preds = %.loopexit1973.i.epil, %.unr-lcssa
  %spec.select1520.i.lcssa = phi i32 [ %spec.select1520.i.3, %.unr-lcssa ], [ %spec.select1520.i.epil, %.loopexit1973.i.epil ] ; 2 uses
  %spec.select1521.i.lcssa = phi i32 [ %spec.select1521.i.3, %.unr-lcssa ], [ %spec.select1521.i.epil, %.loopexit1973.i.epil ]
  %i.aok = add nuw nsw i32 %spec.select1521.i.lcssa, %.014762143.i ; 2 uses
  %i.aol = sext i32 %spec.select1520.i.lcssa to i64 ; 3 uses
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aol ; 2 uses
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !74
  %i.aoo = add nsw i32 %i.aon, 1
  store i32 %i.aoo, ptr %i.aom, align 4, !tbaa !74
  %i.aop = trunc i32 %spec.select1520.i.lcssa to i8
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2397.i
  store i8 %i.aop, ptr %i.aoq, align 1, !tbaa !19
  %indvars.iv.next2398.i = add nuw nsw i64 %indvars.iv2397.i, 1 ; 2 uses
  br i1 %or.cond1519.i, label %bb.bb, label %.preheader1970.i

.preheader1970.i:                                 ; preds = %.epilog-lcssa
  %.not15132138.not.i = icmp sgt i32 %i.so, %.114702144.i
  br i1 %.not15132138.not.i, label %.lr.ph2140.i, label %.loopexit1971.i

.lr.ph2140.i:                                     ; preds = %.preheader1970.i
  %i.aor = getelementptr inbounds [1032 x i8], ptr %i.oy, i64 %i.aol ; 5 uses
  %i.aos = sext i32 %.114702144.i to i64          ; 2 uses
  %smax2394.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127) ; 3 uses
  %i.aot = add nsw i32 %smax2394.i, 1
  %i.aou = add i32 %smax2394.i, 1
  %i.aov = sub i32 %i.aou, %.114702144.i
  %i.aow = sub i32 %smax2394.i, %.114702144.i
  %xtraiter1384 = and i32 %i.aov, 3               ; 2 uses
  %lcmp.mod1385.not = icmp eq i32 %xtraiter1384, 0
  br i1 %lcmp.mod1385.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2140.i, %.prol.preheader
  %indvars.iv2391.i.prol = phi i64 [ %indvars.iv.next2392.i.prol, %.prol.preheader ], [ %i.aos, %.lr.ph2140.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2140.i ]
  %i.aox = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i.prol
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !79
  %i.aoz = zext i16 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %i.aoz ; 2 uses
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !74
  %i.apc = add nsw i32 %i.apb, 1
  store i32 %i.apc, ptr %i.apa, align 4, !tbaa !74
  %indvars.iv.next2392.i.prol = add nsw i64 %indvars.iv2391.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1384
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2140.i
  %indvars.iv2391.i.unr = phi i64 [ %i.aos, %.lr.ph2140.i ], [ %indvars.iv.next2392.i.prol, %.prol.preheader ]
  %i.apd = icmp ult i32 %i.aow, 3
  br i1 %i.apd, label %.loopexit1971.i, label %.lr.ph2140.i.new

bb.bb:                                            ; preds = %.epilog-lcssa
  %i.ape = getelementptr inbounds [1032 x i8], ptr %i.oy, i64 %i.aol ; 50 uses
  %i.apf = sext i32 %.114702144.i to i64
end_hunk_0
begin_hunk_1_@bsPutUInt32:bb.a
  %i.j = phi i32 [ %.pre.i, %.lr.ph.i ], [ %i.s, %bb.b ]
  %i.k = lshr i32 %i.j, 24
  %i.l = trunc nuw i32 %i.k to i8
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.n = sext i32 %i.i to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  store i8 %i.l, ptr %i.o, align 1, !tbaa !19
  %i.p = load i32, ptr %i.h, align 4, !tbaa !17
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !17
  %i.r = load i32, ptr %i.e, align 8, !tbaa !16
  %i.s = shl i32 %i.r, 8                          ; 3 uses
  store i32 %i.s, ptr %i.e, align 8, !tbaa !16
  %i.t = load i32, ptr %i.b, align 4, !tbaa !15   ; 3 uses
  %i.u = add nsw i32 %i.t, -8
  store i32 %i.u, ptr %i.b, align 4, !tbaa !15
  %i.v = icmp sgt i32 %i.t, 15
  br i1 %i.v, label %bb.b, label %bsW.exit, !llvm.loop !0

bsW.exit:                                         ; preds = %bb.b, %.._crit_edge_crit_edge.i
  %i.w = phi i32 [ %.pre16.i, %.._crit_edge_crit_edge.i ], [ %i.s, %bb.b ]
  %.lcssa.i = phi i32 [ %i.f, %.._crit_edge_crit_edge.i ], [ %i.t, %bb.b ] ; 4 uses
  %i.x = sub i32 32, %.lcssa.i
  %i.y = shl i32 %i.a, %i.x
  %i.z = or i32 %i.y, %i.w                        ; 3 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !16
  store i32 %.lcssa.i, ptr %i.b, align 4, !tbaa !15
  %i.aa = lshr i32 %1, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = icmp sgt i32 %.lcssa.i, 7
  br i1 %i.ac, label %.lr.ph.i10, label %bsW.exit13

.lr.ph.i10:                                       ; preds = %bsW.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i12 = load i32, ptr %i.ae, align 4, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i10
  %i.af = phi i32 [ %.pre15.i12, %.lr.ph.i10 ], [ %i.an, %bb.c ]
  %i.ag = phi i32 [ %i.z, %.lr.ph.i10 ], [ %i.ap, %bb.c ]
  %i.ah = lshr i32 %i.ag, 24
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ak = sext i32 %i.af to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store i8 %i.ai, ptr %i.al, align 1, !tbaa !19
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.an, ptr %i.ae, align 4, !tbaa !17
  %i.ao = load i32, ptr %i.e, align 8, !tbaa !16
  %i.ap = shl i32 %i.ao, 8                        ; 3 uses
  store i32 %i.ap, ptr %i.e, align 8, !tbaa !16
  %i.aq = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.ar = add nsw i32 %i.aq, -8                   ; 2 uses
  store i32 %i.ar, ptr %i.b, align 4, !tbaa !15
  %i.as = icmp sgt i32 %i.aq, 15
  br i1 %i.as, label %bb.c, label %bsW.exit13, !llvm.loop !0

bsW.exit13:                                       ; preds = %bb.c, %bsW.exit
  %i.at = phi i32 [ %i.z, %bsW.exit ], [ %i.ap, %bb.c ]
  %.lcssa.i9 = phi i32 [ %.lcssa.i, %bsW.exit ], [ %i.ar, %bb.c ] ; 3 uses
  %i.au = add nsw i32 %.lcssa.i9, 8               ; 2 uses
  %i.av = sub i32 24, %.lcssa.i9
  %i.aw = shl i32 %i.ab, %i.av
  %i.ax = or i32 %i.aw, %i.at                     ; 3 uses
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !16
  store i32 %i.au, ptr %i.b, align 4, !tbaa !15
  %i.ay = lshr i32 %1, 8
  %i.az = and i32 %i.ay, 255
  %i.ba = icmp sgt i32 %.lcssa.i9, -1
  br i1 %i.ba, label %.lr.ph.i17, label %bsW.exit20

.lr.ph.i17:                                       ; preds = %bsW.exit13
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i19 = load i32, ptr %i.bc, align 4, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i17
  %i.bd = phi i32 [ %.pre15.i19, %.lr.ph.i17 ], [ %i.bl, %bb.d ]
  %i.be = phi i32 [ %i.ax, %.lr.ph.i17 ], [ %i.bn, %bb.d ]
  %i.bf = lshr i32 %i.be, 24
  %i.bg = trunc nuw i32 %i.bf to i8
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !18
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !19
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !17
  %i.bl = add nsw i32 %i.bk, 1                    ; 2 uses
  store i32 %i.bl, ptr %i.bc, align 4, !tbaa !17
  %i.bm = load i32, ptr %i.e, align 8, !tbaa !16
  %i.bn = shl i32 %i.bm, 8                        ; 3 uses
  store i32 %i.bn, ptr %i.e, align 8, !tbaa !16
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -8                   ; 2 uses
  store i32 %i.bp, ptr %i.b, align 4, !tbaa !15
  %i.bq = icmp sgt i32 %i.bo, 15
  br i1 %i.bq, label %bb.d, label %bsW.exit20, !llvm.loop !0

bsW.exit20:                                       ; preds = %bb.d, %bsW.exit13
  %i.br = phi i32 [ %i.ax, %bsW.exit13 ], [ %i.bn, %bb.d ]
  %.lcssa.i16 = phi i32 [ %i.au, %bsW.exit13 ], [ %i.bp, %bb.d ] ; 3 uses
  %i.bs = add nsw i32 %.lcssa.i16, 8              ; 2 uses
  %i.bt = sub i32 24, %.lcssa.i16
  %i.bu = shl i32 %i.az, %i.bt
  %i.bv = or i32 %i.bu, %i.br                     ; 3 uses
  store i32 %i.bv, ptr %i.e, align 8, !tbaa !16
  store i32 %i.bs, ptr %i.b, align 4, !tbaa !15
  %i.bw = icmp sgt i32 %.lcssa.i16, -1
  br i1 %i.bw, label %.lr.ph.i24, label %bsW.exit27

.lr.ph.i24:                                       ; preds = %bsW.exit20
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i26 = load i32, ptr %i.by, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i24
  %i.bz = phi i32 [ %.pre15.i26, %.lr.ph.i24 ], [ %i.ch, %bb.e ]
  %i.ca = phi i32 [ %i.bv, %.lr.ph.i24 ], [ %i.cj, %bb.e ]
  %i.cb = lshr i32 %i.ca, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !18
  %i.ce = sext i32 %i.bz to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  store i8 %i.cc, ptr %i.cf, align 1, !tbaa !19
  %i.cg = load i32, ptr %i.by, align 4, !tbaa !17
  %i.ch = add nsw i32 %i.cg, 1                    ; 2 uses
  store i32 %i.ch, ptr %i.by, align 4, !tbaa !17
  %i.ci = load i32, ptr %i.e, align 8, !tbaa !16
  %i.cj = shl i32 %i.ci, 8                        ; 3 uses
  store i32 %i.cj, ptr %i.e, align 8, !tbaa !16
  %i.ck = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.cl = add nsw i32 %i.ck, -8                   ; 2 uses
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !15
  %i.cm = icmp sgt i32 %i.ck, 15
  br i1 %i.cm, label %bb.e, label %bsW.exit27, !llvm.loop !0

bsW.exit27:                                       ; preds = %bb.e, %bsW.exit20
  %i.cn = phi i32 [ %i.bv, %bsW.exit20 ], [ %i.cj, %bb.e ]
  %.lcssa.i23 = phi i32 [ %i.bs, %bsW.exit20 ], [ %i.cl, %bb.e ] ; 2 uses
  %i.co = and i32 %1, 255
  %i.cp = add nsw i32 %.lcssa.i23, 8
  %i.cq = sub i32 24, %.lcssa.i23
  %i.cr = shl i32 %i.co, %i.cq
  %i.cs = or i32 %i.cr, %i.cn
  store i32 %i.cs, ptr %i.e, align 8, !tbaa !16
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @BZ2_bz__AssertH__fail(i32 noundef) local_unnamed_addr #3

declare void @BZ2_hbMakeCodeLengths(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @BZ2_hbAssignCodes(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v36i32(<36 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 int", !10, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!"p1 short", !10, i64 0}
!14 = !{!"", !10, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !7, i64 48, !11, i64 56, !12, i64 64, !13, i64 72, !12, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !6, i64 128, !6, i64 384, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !6, i64 672, !6, i64 1704, !6, i64 19706, !6, i64 37708, !6, i64 39256, !6, i64 45448, !6, i64 51640}
!15 = !{!14, !7, i64 644}
!16 = !{!14, !7, i64 640}
!17 = !{!14, !7, i64 116}
!18 = !{!14, !12, i64 80}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = distinct !{!21, !20}
!22 = distinct !{!22, !20, !75, !76}
!23 = distinct !{!23, !20, !75, !76}
!24 = distinct !{!24, !20, !76, !75}
!25 = distinct !{!25, !20}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20, !75, !76}
!29 = distinct !{!29, !20, !75, !76}
!30 = distinct !{!30, !20, !76, !75}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !82}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20, !76, !75}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !82}
!38 = distinct !{!38, !82}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20, !76, !75}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = distinct !{!46, !20, !75, !76}
!47 = distinct !{!47, !20, !76, !75}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = distinct !{!52, !20}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = !{!14, !7, i64 108}
!61 = !{!14, !7, i64 648}
!62 = !{!14, !7, i64 652}
!63 = !{!14, !7, i64 660}
!64 = !{!14, !7, i64 656}
!65 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!14, !11, i64 32}
!68 = !{!14, !7, i64 664}
!69 = !{!14, !7, i64 48}
!70 = !{!14, !11, i64 56}
!71 = !{!14, !12, i64 64}
!72 = !{!14, !13, i64 72}
!73 = !{!14, !7, i64 124}
!74 = !{!7, !7, i64 0}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!"branch_weights", i32 8, i32 24}
!78 = !{!"short", !6, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!14, !7, i64 668}
!81 = !{!"branch_weights", i32 8, i32 8}
!82 = !{!"llvm.loop.unroll.disable"}
end_hunk_1
