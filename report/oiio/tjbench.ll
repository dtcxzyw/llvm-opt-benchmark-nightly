inline.NumInlined: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@decompTest:bb.a
  br i1 %i.vf, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.vg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.277) ; 0 uses
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.vh = load ptr, ptr %calloc1178, align 8, !tbaa !10
  call void @tj3Free(ptr noundef %i.vh) #22
  store ptr null, ptr %calloc1178, align 8, !tbaa !10
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fo, %bb.fp, %bb.fs
  %.1662 = phi i32 [ %.0661, %bb.fo ], [ %.0661, %bb.fp ], [ %.1649, %bb.fs ]
  %.1659 = phi i32 [ %.0658, %bb.fo ], [ %.0658, %bb.fp ], [ %spec.select, %bb.fs ]
  %.2657 = phi i32 [ %.1656, %bb.fo ], [ %.1656, %bb.fp ], [ %i.hj, %bb.fs ] ; 2 uses
  %.2654 = phi i32 [ %.1653, %bb.fo ], [ %.1653, %bb.fp ], [ %i.hi, %bb.fs ] ; 2 uses
  %.1643 = phi i32 [ %.0642, %bb.fo ], [ %.0642, %bb.fp ], [ 1, %bb.fs ] ; 2 uses
  %.not975 = icmp sgt i32 %i.hi, %.0646           ; 2 uses
  %.not976 = icmp sgt i32 %i.hj, %.0648           ; 2 uses
  %i.vi = load i32, ptr @xformOpt, align 4, !tbaa !4
  %i.vj = and i32 %i.vi, 16
  %.not809 = icmp eq i32 %i.vj, 0
  br i1 %.not809, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %.2663 = select i1 %.not976, i32 %.1662, i32 %.2657
  %spec.select850 = select i1 %.not975, i32 %.1659, i32 %.2654
  %.not810 = icmp eq i32 %.1643, 0                ; 2 uses
  %i.vk = select i1 %.not810, ptr %calloc1178, ptr %i.a
  %i.vl = select i1 %.not810, ptr %calloc, ptr %i.b
  %i.vm = call fastcc i32 @decomp(ptr noundef %i.vk, ptr noundef %i.vl, ptr noundef null, i32 noundef %.2654, i32 noundef %.2657, i32 noundef %.0664, i32 noundef 0, ptr noundef nonnull %0, i32 noundef %spec.select850, i32 noundef %.2663)
  %i.vn = icmp eq i32 %i.vm, -1
  br i1 %i.vn, label %.thread921, label %bb.fx

bb.fv:                                            ; preds = %bb.ft
  %i.vo = load i32, ptr @quiet, align 4, !tbaa !4
  %i.vp = icmp eq i32 %i.vo, 1
  br i1 %i.vp, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %puts811 = call i32 @puts(ptr nonnull dereferenceable(1) @str.131) ; 0 uses
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fv, %bb.fw, %bb.fu
  %i.vq = mul nsw i32 %i.lr, %i.lp                ; 2 uses
  %i.vr = icmp sgt i32 %i.vq, 0
  br i1 %i.vr, label %.lr.ph1051.preheader, label %._crit_edge1052

.lr.ph1051.preheader:                             ; preds = %bb.fx
  %wide.trip.count1127 = zext nneg i32 %i.vq to i64
  br label %.lr.ph1051

.lr.ph1051:                                       ; preds = %.lr.ph1051.preheader, %.lr.ph1051
  %indvars.iv1124 = phi i64 [ 0, %.lr.ph1051.preheader ], [ %indvars.iv.next1125, %.lr.ph1051 ] ; 2 uses
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %calloc1178, i64 %indvars.iv1124 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !10
  call void @tj3Free(ptr noundef %i.vt) #22
  store ptr null, ptr %i.vs, align 8, !tbaa !10
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 1 ; 2 uses
  %exitcond1128.not = icmp eq i64 %indvars.iv.next1125, %wide.trip.count1127
  br i1 %exitcond1128.not, label %._crit_edge1052, label %.lr.ph1051, !llvm.loop !57

._crit_edge1052:                                  ; preds = %.lr.ph1051, %bb.fx
  call void @free(ptr noundef nonnull %calloc1178) #22
  call void @free(ptr noundef %.1) #22
  call void @free(ptr noundef nonnull %calloc) #22
  %brmerge = select i1 %.not975, i1 true, i1 %.not976
  br i1 %brmerge, label %bb.fy, label %.thread965

bb.fy:                                            ; preds = %._crit_edge1052
  %i.vu = shl nsw i32 %spec.select, 1
  %i.vv = shl nsw i32 %.1649, 1
  br label %bb.di

.thread948:                                       ; preds = %bb.k, %bb.i, %bb.g, %bb.e
  %i.vw = tail call i32 @fclose(ptr noundef nonnull %i.o) ; 0 uses
  br label %.thread965

.thread921:                                       ; preds = %bb.fu, %bb.fa, %bb.fb, %bb.dl, %bb.dq, %bb.ek, %bb.eo, %bb.fk
  %.2625.ph = phi ptr [ null, %bb.dq ], [ %i.ps, %bb.fk ], [ %i.ps, %bb.fa ], [ null, %bb.dl ], [ null, %bb.ek ], [ %i.ps, %bb.eo ], [ %i.ps, %bb.fb ], [ null, %bb.fu ] ; 2 uses
  %.2.ph = phi ptr [ null, %bb.dq ], [ %.1, %bb.fk ], [ %.1, %bb.fa ], [ null, %bb.dl ], [ %.1, %bb.ek ], [ %.1, %bb.eo ], [ %.1, %bb.fb ], [ %.1, %bb.fu ] ; 2 uses
  %i.vx = mul nsw i32 %i.lr, %i.lp                ; 2 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph1054.preheader, label %.thread965

.lr.ph1054.preheader:                             ; preds = %.thread921
  %wide.trip.count1132 = zext nneg i32 %i.vx to i64
  br label %.lr.ph1054

.lr.ph1054:                                       ; preds = %.lr.ph1054.preheader, %.lr.ph1054
  %indvars.iv1129 = phi i64 [ 0, %.lr.ph1054.preheader ], [ %indvars.iv.next1130, %.lr.ph1054 ] ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %calloc1178, i64 %indvars.iv1129
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !10
  call void @tj3Free(ptr noundef %i.wa) #22
  %indvars.iv.next1130 = add nuw nsw i64 %indvars.iv1129, 1 ; 2 uses
  %exitcond1133.not = icmp eq i64 %indvars.iv.next1130, %wide.trip.count1132
  br i1 %exitcond1133.not, label %.thread965, label %.lr.ph1054, !llvm.loop !58

.thread965:                                       ; preds = %._crit_edge1052, %.lr.ph1054, %.thread921, %bb.b, %bb.o, %bb.ch, %bb.df, %bb.dj, %bb.cw, %bb.cr, %bb.cg, %bb.cb, %bb.bs, %bb.bn, %bb.bi, %bb.bd, %bb.ay, %bb.at, %bb.ao, %bb.aj, %bb.ae, %bb.z, %bb.u, %.thread948
  %.2625943962 = phi ptr [ null, %.thread948 ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.b ], [ null, %bb.o ], [ null, %bb.ch ], [ null, %bb.df ], [ null, %bb.dj ], [ %.2625.ph, %.thread921 ], [ null, %bb.cw ], [ null, %bb.cr ], [ null, %bb.cg ], [ null, %bb.cb ], [ null, %bb.bs ], [ null, %bb.bn ], [ null, %bb.bi ], [ null, %bb.bd ], [ null, %bb.ay ], [ null, %bb.at ], [ null, %bb.ao ], [ null, %bb.aj ], [ null, %bb.ae ], [ %.2625.ph, %.lr.ph1054 ], [ null, %._crit_edge1052 ]
  %.1621944961 = phi ptr [ null, %.thread948 ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.b ], [ null, %bb.o ], [ null, %bb.ch ], [ null, %bb.df ], [ null, %bb.dj ], [ %calloc, %.thread921 ], [ null, %bb.cw ], [ null, %bb.cr ], [ null, %bb.cg ], [ null, %bb.cb ], [ null, %bb.bs ], [ null, %bb.bn ], [ null, %bb.bi ], [ null, %bb.bd ], [ null, %bb.ay ], [ null, %bb.at ], [ null, %bb.ao ], [ null, %bb.aj ], [ null, %bb.ae ], [ %calloc, %.lr.ph1054 ], [ null, %._crit_edge1052 ]
  %.2945960 = phi ptr [ null, %.thread948 ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.b ], [ null, %bb.o ], [ null, %bb.ch ], [ null, %bb.df ], [ null, %bb.dj ], [ %.2.ph, %.thread921 ], [ null, %bb.cw ], [ null, %bb.cr ], [ null, %bb.cg ], [ null, %bb.cb ], [ null, %bb.bs ], [ null, %bb.bn ], [ null, %bb.bi ], [ null, %bb.bd ], [ null, %bb.ay ], [ null, %bb.at ], [ null, %bb.ao ], [ null, %bb.aj ], [ null, %bb.ae ], [ %.2.ph, %.lr.ph1054 ], [ null, %._crit_edge1052 ]
  %.0618946959 = phi ptr [ null, %.thread948 ], [ null, %bb.z ], [ null, %bb.u ], [ null, %bb.b ], [ null, %bb.o ], [ null, %bb.ch ], [ null, %bb.df ], [ null, %bb.dj ], [ %calloc1178, %.thread921 ], [ null, %bb.cw ], [ null, %bb.cr ], [ null, %bb.cg ], [ null, %bb.cb ], [ null, %bb.bs ], [ null, %bb.bn ], [ null, %bb.bi ], [ null, %bb.bd ], [ null, %bb.ay ], [ null, %bb.at ], [ null, %bb.ao ], [ null, %bb.aj ], [ null, %bb.ae ], [ %calloc1178, %.lr.ph1054 ], [ null, %._crit_edge1052 ]
  %.0617947958 = phi ptr [ null, %.thread948 ], [ %i.aw, %bb.z ], [ %i.aw, %bb.u ], [ null, %bb.b ], [ null, %bb.o ], [ %i.aw, %bb.ch ], [ %i.aw, %bb.df ], [ %i.aw, %bb.dj ], [ %i.aw, %.thread921 ], [ %i.aw, %bb.cw ], [ %i.aw, %bb.cr ], [ %i.aw, %bb.cg ], [ %i.aw, %bb.cb ], [ %i.aw, %bb.bs ], [ %i.aw, %bb.bn ], [ %i.aw, %bb.bi ], [ %i.aw, %bb.bd ], [ %i.aw, %bb.ay ], [ %i.aw, %bb.at ], [ %i.aw, %bb.ao ], [ %i.aw, %bb.aj ], [ %i.aw, %bb.ae ], [ %i.aw, %.lr.ph1054 ], [ %i.aw, %._crit_edge1052 ]
  call void @free(ptr noundef %.0618946959) #22
  call void @free(ptr noundef %.2945960) #22
  call void @free(ptr noundef %.1621944961) #22
  %i.wb = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @free(ptr noundef %i.wb) #22
  call void @free(ptr noundef %.2625943962) #22
  call void @tj3Destroy(ptr noundef %.0617947958) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @fullTest(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 -2147483648, 7) %4, i32 noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  %i.b = alloca [80 x i8], align 16               ; 5 uses
  %i.c = alloca [80 x i8], align 16               ; 5 uses
  %i.d = alloca [1024 x i8], align 16             ; 9 uses
  %i.e = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.f = load i32, ptr @pf, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 3 uses
  %i.j = mul nsw i32 %i.i, %2                     ; 7 uses
  %i.k = getelementptr inbounds [8 x i8], ptr @pixFormatStr, i64 %i.g
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10   ; 2 uses
  %i.m = sext i32 %i.j to i64                     ; 16 uses
  %i.n = sext i32 %3 to i64
  %i.o = mul nsw i64 %i.m, %i.n
  %i.p = load i32, ptr @sampleSize, align 4, !tbaa !4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul i64 %i.o, %i.q
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #26 ; 13 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = tail call ptr @__errno_location() #25
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = tail call ptr @strerror(i32 noundef %i.v) #22
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 400, ptr noundef nonnull @.str.320, ptr noundef %i.w) ; 0 uses
  br label %.thread890.thread

bb.c:                                             ; preds = %bb.a
  %i.y = load i32, ptr @quiet, align 4, !tbaa !4
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.b685 = load i1, ptr @bottomUp, align 4
  %i.z = select i1 %.b685, ptr @.str.254, ptr @.str.255
  %i.aa = load i32, ptr @precision, align 4, !tbaa !4
  %i.ab = load i32, ptr @lossless, align 4, !tbaa !4
  %.not717 = icmp eq i32 %i.ab, 0
  br i1 %.not717, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = sext i32 %4 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr @subNameLong, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.af = phi ptr [ @.str.305, %bb.e ], [ @.str.304, %bb.d ]
  %i.ag = phi ptr [ %i.ae, %bb.e ], [ @.str.282, %bb.d ]
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.321, ptr noundef %i.l, ptr noundef nonnull %i.z, i32 noundef %i.aa, ptr noundef %i.ag, ptr noundef nonnull %i.af, i32 noundef %5) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.b692 = load i1, ptr @doTile, align 4          ; 2 uses
  %i.ai = select i1 %.b692, i32 8, i32 %2
  %i.aj = select i1 %.b692, i32 8, i32 %3
  %i.ak = add i32 %2, -1
  %i.al = add i32 %3, -1
  %i.am = sext i32 %4 to i64                      ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr @subNameLong, i64 %i.am
  %i.ao = icmp sgt i32 %3, 0                      ; 2 uses
  %i.ap = mul nsw i32 %3, %2                      ; 2 uses
  %i.aq = sitofp i32 %i.ap to double
  %i.ar = fdiv nnan double %i.aq, 1.000000e+06    ; 3 uses
  %i.as = mul nsw i32 %i.i, %i.ap
  %i.at = sitofp i32 %i.as to double              ; 3 uses
  %i.au = getelementptr inbounds [8 x i8], ptr @subName, i64 %i.am
  %wide.trip.count1459 = zext i32 %3 to i64       ; 4 uses
  %xtraiter = and i64 %wide.trip.count1459, 3     ; 3 uses
  %i.av = icmp ult i32 %3, 4
  %unroll_iter = and i64 %wide.trip.count1459, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod428 = icmp ne i64 %xtraiter, 0
  %xtraiter429 = and i64 %wide.trip.count1459, 3  ; 3 uses
  %i.aw = icmp ult i32 %3, 4
  %unroll_iter433 = and i64 %wide.trip.count1459, 2147483644
  %lcmp.mod431.not = icmp eq i64 %xtraiter429, 0
  %lcmp.mod432 = icmp ne i64 %xtraiter429, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.ex, %bb.g
  %.0618 = phi i64 [ 0, %bb.g ], [ %.1619, %bb.ex ]
  %.0595 = phi i32 [ %i.aj, %bb.g ], [ %i.ub, %bb.ex ] ; 3 uses
  %.0591 = phi i32 [ %i.ai, %bb.g ], [ %i.ua, %bb.ex ] ; 2 uses
  %.0571 = phi ptr [ null, %bb.g ], [ %.2573, %bb.ex ] ; 19 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %.0591, i32 %2) ; 11 uses
  %.1596 = call i32 @llvm.smin.i32(i32 %.0595, i32 %3) ; 11 uses
  %i.ax = add i32 %i.ak, %spec.select
  %i.ay = sdiv i32 %i.ax, %spec.select            ; 6 uses
  %i.az = add i32 %i.al, %.1596
  %i.ba = sdiv i32 %i.az, %.1596                  ; 6 uses
  %i.bb = sext i32 %i.ay to i64
  %i.bc = shl nsw i64 %i.bb, 3
  %i.bd = sext i32 %i.ba to i64
  %i.be = mul i64 %i.bc, %i.bd                    ; 3 uses
  %calloc1512 = call ptr @calloc(i64 1, i64 %i.be) ; 12 uses
  %i.bf = icmp eq ptr %calloc1512, null
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = tail call ptr @__errno_location() #25
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = call ptr @strerror(i32 noundef %i.bh) #22
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 417, ptr noundef nonnull @.str.258, ptr noundef %i.bi) ; 0 uses
  br label %.thread890.thread

bb.j:                                             ; preds = %bb.h
  %calloc = call ptr @calloc(i64 1, i64 %i.be)    ; 11 uses
  %i.bk = icmp eq ptr %calloc, null
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = tail call ptr @__errno_location() #25
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = call ptr @strerror(i32 noundef %i.bm) #22
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 421, ptr noundef nonnull @.str.259, ptr noundef %i.bn) ; 0 uses
  br label %.thread890

bb.l:                                             ; preds = %bb.j
  %.b682 = load i1, ptr @noRealloc, align 4
  br i1 %.b682, label %.loopexit935, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = call noalias ptr @malloc(i64 noundef %i.be) #26 ; 6 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.n, label %.preheader934

.preheader934:                                    ; preds = %bb.m
  %i.br = mul nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph.preheader, label %.loopexit935

.lr.ph.preheader:                                 ; preds = %.preheader934
  %wide.trip.count = zext nneg i32 %i.br to i64
  br label %.lr.ph

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call ptr @__errno_location() #25
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = call ptr @strerror(i32 noundef %i.bu) #22
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 427, ptr noundef nonnull @.str.260, ptr noundef %i.bv) ; 0 uses
  br label %.thread890

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.bx = call i64 @tj3JPEGBufSize(i32 noundef %spec.select, i32 noundef %.1596, i32 noundef %4) #22 ; 3 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.bz = call ptr @tj3GetErrorStr(ptr noundef null) #22
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, i32 noundef 432, ptr noundef %i.bz) ; 0 uses
  br label %.thread890

bb.p:                                             ; preds = %.lr.ph
  %i.cb = call ptr @tj3Alloc(i64 noundef %i.bx) #22 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %calloc1512, i64 %indvars.iv
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !10
  %i.cd = icmp eq ptr %i.cb, null
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = tail call ptr @__errno_location() #25
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = call ptr @strerror(i32 noundef %i.cf) #22
  %i.ch = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 434, ptr noundef nonnull @.str.269, ptr noundef %i.cg) ; 0 uses
  br label %.thread890

bb.r:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  store i64 %i.bx, ptr %i.ci, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit935, label %.lr.ph, !llvm.loop !59

.loopexit935:                                     ; preds = %bb.r, %.preheader934, %bb.l
  %.1614 = phi ptr [ null, %bb.l ], [ %i.bp, %.preheader934 ], [ %i.bp, %bb.r ] ; 24 uses
  %i.cj = load i32, ptr @quiet, align 4, !tbaa !4
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.loopexit935
  %.b684 = load i1, ptr @bottomUp, align 4
  %i.cl = select i1 %.b684, ptr @.str.265, ptr @.str.266
  %i.cm = load i32, ptr @precision, align 4, !tbaa !4
  %i.cn = load i32, ptr @lossless, align 4, !tbaa !4
  %.not719 = icmp eq i32 %i.cn, 0
  br i1 %.not719, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.co = load ptr, ptr %i.an, align 8, !tbaa !10
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cp = phi ptr [ %i.co, %bb.t ], [ @.str.319, %bb.s ]
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.322, ptr noundef %i.l, ptr noundef nonnull %i.cl, i32 noundef %i.cm, ptr noundef %i.cp, i32 noundef %5) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit935
  %i.cr = load i32, ptr @precision, align 4, !tbaa !4
  %i.cs = icmp slt i32 %i.cr, 9
  br i1 %i.cs, label %.preheader931, label %.preheader932

.preheader932:                                    ; preds = %bb.v
  br i1 %i.ao, label %.lr.ph1172, label %.loopexit

.lr.ph1172:                                       ; preds = %.preheader932
  %i.ct = load i32, ptr @sampleSize, align 4, !tbaa !4
  %i.cu = mul nsw i32 %i.ct, %i.j
  %i.cv = sext i32 %i.cu to i64                   ; 5 uses
  br i1 %i.av, label %.epil.preheader, label %.lr.ph1172.new

.preheader931:                                    ; preds = %bb.v
  br i1 %i.ao, label %.lr.ph1174.preheader, label %.loopexit

.lr.ph1174.preheader:                             ; preds = %.preheader931
  br i1 %i.aw, label %.lr.ph1174.epil.preheader, label %.lr.ph1174

.lr.ph1174:                                       ; preds = %.lr.ph1174.preheader, %.lr.ph1174
  %indvars.iv1461 = phi i64 [ %indvars.iv.next1462.3, %.lr.ph1174 ], [ 0, %.lr.ph1174.preheader ] ; 5 uses
  %niter434 = phi i64 [ %niter434.next.3, %.lr.ph1174 ], [ 0, %.lr.ph1174.preheader ]
  %i.cw = mul nsw i64 %indvars.iv1461, %i.m       ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.s, i64 %i.cw
  %i.cy = getelementptr inbounds i8, ptr %1, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr align 1 %i.cy, i64 %i.m, i1 false)
  %indvars.iv.next1462 = or disjoint i64 %indvars.iv1461, 1
  %i.cz = mul nsw i64 %indvars.iv.next1462, %i.m  ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.s, i64 %i.cz
  %i.db = getelementptr inbounds i8, ptr %1, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr align 1 %i.db, i64 %i.m, i1 false)
  %indvars.iv.next1462.1 = or disjoint i64 %indvars.iv1461, 2
  %i.dc = mul nsw i64 %indvars.iv.next1462.1, %i.m ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.s, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr align 1 %i.de, i64 %i.m, i1 false)
  %indvars.iv.next1462.2 = or disjoint i64 %indvars.iv1461, 3
  %i.df = mul nsw i64 %indvars.iv.next1462.2, %i.m ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.s, i64 %i.df
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr align 1 %i.dh, i64 %i.m, i1 false)
  %indvars.iv.next1462.3 = add nuw nsw i64 %indvars.iv1461, 4 ; 2 uses
  %niter434.next.3 = add i64 %niter434, 4         ; 2 uses
  %niter434.ncmp.3 = icmp eq i64 %niter434.next.3, %unroll_iter433
  br i1 %niter434.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph1174, !llvm.loop !60

.lr.ph1172.new:                                   ; preds = %.lr.ph1172, %.lr.ph1172.new
  %indvars.iv1456 = phi i64 [ %indvars.iv.next1457.3, %.lr.ph1172.new ], [ 0, %.lr.ph1172 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph1172.new ], [ 0, %.lr.ph1172 ]
  %i.di = mul nsw i64 %indvars.iv1456, %i.m       ; 2 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.di
  %i.dk = getelementptr inbounds [2 x i8], ptr %1, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dj, ptr align 2 %i.dk, i64 %i.cv, i1 false)
  %indvars.iv.next1457 = or disjoint i64 %indvars.iv1456, 1
  %i.dl = mul nsw i64 %indvars.iv.next1457, %i.m  ; 2 uses
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.dl
  %i.dn = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dl
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dm, ptr align 2 %i.dn, i64 %i.cv, i1 false)
  %indvars.iv.next1457.1 = or disjoint i64 %indvars.iv1456, 2
  %i.do = mul nsw i64 %indvars.iv.next1457.1, %i.m ; 2 uses
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.do
  %i.dq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.do
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dp, ptr align 2 %i.dq, i64 %i.cv, i1 false)
  %indvars.iv.next1457.2 = or disjoint i64 %indvars.iv1456, 3
  %i.dr = mul nsw i64 %indvars.iv.next1457.2, %i.m ; 2 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.dr
  %i.dt = getelementptr inbounds [2 x i8], ptr %1, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ds, ptr align 2 %i.dt, i64 %i.cv, i1 false)
  %indvars.iv.next1457.3 = add nuw nsw i64 %indvars.iv1456, 4 ; 2 uses
end_hunk_0
begin_hunk_1_@fullTest:bb.a
  %i.ov = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 515, ptr noundef nonnull %i.on) ; 0 uses
  br label %.thread848.us

.thread848.us:                                    ; preds = %bb.dr, %bb.dq, %bb.dn, %bb.dg, %bb.df, %bb.dc, %bb.db, %bb.da, %bb.cx, %bb.cw, %bb.cv, %bb.cs
  %.5.us = phi double [ %.3583.us, %bb.dr ], [ %.3583.us, %bb.dq ], [ %.25821178.us, %bb.dc ], [ %.25821178.us, %bb.dg ], [ %.25821178.us, %bb.cx ], [ %.25821178.us, %bb.db ], [ %.25821178.us, %bb.cs ], [ %.3583.us, %bb.dn ], [ %.25821178.us, %bb.df ], [ %.25821178.us, %bb.da ], [ %.25821178.us, %bb.cv ], [ %.25821178.us, %bb.cw ] ; 3 uses
  %i.ow = getelementptr inbounds [8 x i8], ptr %calloc, i64 %indvars.iv1466
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !43
  %i.oy = add i64 %i.ox, %.16101175.us            ; 3 uses
  %i.oz = add nuw nsw i32 %.05851177.us, 1        ; 2 uses
  %indvars.iv.next1467 = add nsw i64 %indvars.iv1466, 1 ; 2 uses
  %i.pa = load i32, ptr @sampleSize, align 4, !tbaa !4 ; 2 uses
  %i.pb = mul nsw i32 %i.lj, %i.pa
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds i8, ptr %.05751179.us, i64 %i.pc
  %exitcond1469.not = icmp eq i32 %i.oz, %i.ay
  br i1 %exitcond1469.not, label %._crit_edge.us, label %bb.cn, !llvm.loop !65

._crit_edge.us:                                   ; preds = %.thread848.us
  %i.pe = add nuw nsw i32 %.05841185.us, 1        ; 2 uses
  %i.pf = mul nsw i32 %i.lk, %i.pa
  %i.pg = sext i32 %i.pf to i64
  %i.ph = getelementptr inbounds i8, ptr %.05741187.us, i64 %i.pg
  %exitcond1470.not = icmp eq i32 %i.pe, %i.ba
  br i1 %exitcond1470.not, label %._crit_edge1188, label %.preheader.us, !llvm.loop !66

.thread853:                                       ; preds = %bb.di
  %i.pi = select i1 %i.ny, ptr @.str.111, ptr @.str.112
  %i.pj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.pi, i32 noundef 511, ptr noundef %i.nv) ; 0 uses
  br label %.thread890

.split1229.us:                                    ; preds = %bb.do
  %i.pk = select i1 %i.oq, ptr @.str.111, ptr @.str.112
  %i.pl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.pk, i32 noundef 515, ptr noundef %i.on) ; 0 uses
  br label %.thread890

.split1211.us:                                    ; preds = %bb.dd
  %i.pm = select i1 %i.nj, ptr @.str.111, ptr @.str.112
  %i.pn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.pm, i32 noundef 520, ptr noundef %i.ng) ; 0 uses
  br label %.thread890

.split1201.us:                                    ; preds = %bb.cy
  %i.po = select i1 %i.mu, ptr @.str.111, ptr @.str.112
  %i.pp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.po, i32 noundef 524, ptr noundef %i.mr) ; 0 uses
  br label %.thread890

.split.us:                                        ; preds = %bb.ct
  %i.pq = select i1 %i.mi, ptr @.str.111, ptr @.str.112
  %i.pr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.pq, i32 noundef 529, ptr noundef %i.mf) ; 0 uses
  br label %.thread890

._crit_edge1188:                                  ; preds = %._crit_edge.us, %.thread871
  %.0609.lcssa = phi i64 [ 0, %.thread871 ], [ %i.oy, %._crit_edge.us ] ; 3 uses
  %.1581.lcssa = phi double [ %.0580, %.thread871 ], [ %.5.us, %._crit_edge.us ] ; 7 uses
  %i.ps = call double @getTime() #22
  %i.pt = fsub double %i.ps, %i.ln
  %i.pu = fadd double %.0576, %i.pt               ; 6 uses
  br i1 %i.lm, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %._crit_edge1188
  %i.pv = add nuw nsw i32 %.0606.ph, 1            ; 3 uses
  %i.pw = load double, ptr @benchTime, align 8, !tbaa !14
  %i.px = fcmp ult double %i.pu, %i.pw
  br i1 %i.px, label %.thread871.outer.backedge, label %.thread877

.thread871.outer.backedge:                        ; preds = %bb.dt, %bb.ds
  %.0606.ph.be = phi i32 [ %i.pv, %bb.ds ], [ 0, %bb.dt ]
  %.0580.ph.be = phi double [ %.1581.lcssa, %bb.ds ], [ 0.000000e+00, %bb.dt ]
  %.0576.ph.be = phi double [ %i.pu, %bb.ds ], [ 0.000000e+00, %bb.dt ]
  br label %.thread871.outer

bb.dt:                                            ; preds = %._crit_edge1188
  %i.py = load double, ptr @warmup, align 8, !tbaa !14
  %i.pz = fcmp ult double %i.pu, %i.py
  br i1 %i.pz, label %.thread871, label %.thread871.outer.backedge

.thread877:                                       ; preds = %bb.ds
  %.b697 = load i1, ptr @doYUV, align 4
  %i.qa = fsub double %i.pu, %.1581.lcssa
  %.3579 = select i1 %.b697, double %i.qa, double %i.pu ; 4 uses
  %i.qb = load i32, ptr @quiet, align 4, !tbaa !4 ; 2 uses
  %i.qc = icmp eq i32 %i.qb, 1
  br i1 %i.qc, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.thread877
  %i.qd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.267, i32 noundef %spec.select, i32 noundef %.1596) ; 0 uses
  %.pr = load i32, ptr @quiet, align 4, !tbaa !4
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.thread877
  %i.qe = phi i32 [ %.pr, %bb.du ], [ %i.qb, %.thread877 ]
  %.not755 = icmp eq i32 %i.qe, 0
  br i1 %.not755, label %bb.ee, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.b696 = load i1, ptr @doYUV, align 4
  %i.qf = uitofp nneg i32 %i.pv to double
  %i.qg = fmul double %i.ar, %i.qf                ; 2 uses
  br i1 %.b696, label %bb.dx, label %._crit_edge1482

bb.dx:                                            ; preds = %bb.dw
  %i.qh = fdiv double %i.qg, %.1581.lcssa         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.qi = call double @llvm.fabs.f64(double %i.qh)
  %i.qj = call double @log10(double noundef %i.qi) #22, !tbaa !4
  %i.qk = call double @llvm.ceil.f64(double %i.qj)
  %i.ql = fptosi double %i.qk to i32              ; 2 uses
  %i.qm = icmp sgt i32 %i.ql, 3
  br i1 %i.qm, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 80, ptr noundef nonnull @.str.301) #22 ; 0 uses
  br label %sigfig.exit

bb.dz:                                            ; preds = %bb.dx
  %i.qo = sub nsw i32 4, %i.ql
  %i.qp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 80, ptr noundef nonnull @.str.302, i32 noundef %i.qo) #22 ; 0 uses
  br label %sigfig.exit

sigfig.exit:                                      ; preds = %bb.dy, %bb.dz
  %i.qq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull %i.c, double noundef %i.qh) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  %i.qr = load i32, ptr @quiet, align 4, !tbaa !4
  %i.qs = icmp eq i32 %i.qr, 2
  %i.qt = select i1 %i.qs, ptr @str.129, ptr @.str.271
  %i.qu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.308, ptr noundef nonnull %i.d, ptr noundef nonnull %i.qt) ; 0 uses
  br label %._crit_edge1482

._crit_edge1482:                                  ; preds = %bb.dw, %sigfig.exit
  %i.qv = fdiv double %i.qg, %.3579               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.qw = call double @llvm.fabs.f64(double %i.qv)
  %i.qx = call double @log10(double noundef %i.qw) #22, !tbaa !4
  %i.qy = call double @llvm.ceil.f64(double %i.qx)
  %i.qz = fptosi double %i.qy to i32              ; 2 uses
  %i.ra = icmp sgt i32 %i.qz, 3
  br i1 %i.ra, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %._crit_edge1482
  %i.rb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80, ptr noundef nonnull @.str.301) #22 ; 0 uses
  br label %sigfig.exit791

bb.eb:                                            ; preds = %._crit_edge1482
  %i.rc = sub nsw i32 4, %i.qz
  %i.rd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 80, ptr noundef nonnull @.str.302, i32 noundef %i.rc) #22 ; 0 uses
  br label %sigfig.exit791

sigfig.exit791:                                   ; preds = %bb.ea, %bb.eb
  %i.re = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull %i.b, double noundef %i.qv) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.rf = load i32, ptr @quiet, align 4, !tbaa !4
  %i.rg = icmp eq i32 %i.rf, 2
  %i.rh = select i1 %i.rg, ptr @str.129, ptr @.str.271
  %i.ri = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.308, ptr noundef nonnull %i.d, ptr noundef nonnull %i.rh) ; 0 uses
  %i.rj = uitofp i64 %.0609.lcssa to double
  %i.rk = fdiv double %i.at, %i.rj                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.rl = call double @llvm.fabs.f64(double %i.rk)
  %i.rm = call double @log10(double noundef %i.rl) #22, !tbaa !4
  %i.rn = call double @llvm.ceil.f64(double %i.rm)
  %i.ro = fptosi double %i.rn to i32              ; 2 uses
  %i.rp = icmp sgt i32 %i.ro, 3
  br i1 %i.rp, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %sigfig.exit791
  %i.rq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.301) #22 ; 0 uses
  br label %sigfig.exit792

bb.ed:                                            ; preds = %sigfig.exit791
  %i.rr = sub nsw i32 4, %i.ro
  %i.rs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 80, ptr noundef nonnull @.str.302, i32 noundef %i.rr) #22 ; 0 uses
  br label %sigfig.exit792

sigfig.exit792:                                   ; preds = %bb.ec, %bb.ed
  %i.rt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 80, ptr noundef nonnull %i.a, double noundef %i.rk) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ru = load i32, ptr @quiet, align 4, !tbaa !4
  %i.rv = icmp eq i32 %i.ru, 2
  %i.rw = select i1 %i.rv, ptr @str.129, ptr @.str.271
  %i.rx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.308, ptr noundef nonnull %i.e, ptr noundef nonnull %i.rw) ; 0 uses
  br label %bb.eh

bb.ee:                                            ; preds = %bb.dv
  %.b691 = load i1, ptr @doTile, align 4
  %i.ry = select i1 %.b691, ptr @.str.262, ptr @.str.116
  %i.rz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.323, ptr noundef nonnull %i.ry, i32 noundef %spec.select, i32 noundef %.1596) ; 0 uses
  %.b695 = load i1, ptr @doYUV, align 4
  %i.sa = uitofp nneg i32 %i.pv to double         ; 6 uses
  br i1 %.b695, label %bb.ef, label %._crit_edge1483

._crit_edge1483:                                  ; preds = %bb.ee
  %.pre1484 = fmul double %i.ar, %i.sa
  br label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.sb = fdiv double %i.sa, %.1581.lcssa
  %i.sc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.324, double noundef %i.sb) ; 0 uses
  %i.sd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.273, i64 noundef %.1619) ; 0 uses
  %i.se = uitofp i64 %.1619 to double             ; 2 uses
  %i.sf = fdiv double %i.at, %i.se
  %i.sg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.274, double noundef %i.sf) ; 0 uses
  %7 = fmul double %i.ar, %i.sa                   ; 2 uses
  %8 = fdiv double %7, %.1581.lcssa
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.275, double noundef %8) ; 0 uses
  %10 = fmul nnan double %i.se, 8.000000e+00
  %11 = fdiv nnan double %10, 1.000000e+06
  %i.sh = fmul double %11, %i.sa
  %i.si = fdiv double %i.sh, %.1581.lcssa
  %i.sj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.276, double noundef %i.si) ; 0 uses
  %.b694.pre = load i1, ptr @doYUV, align 4
  %i.sk = select i1 %.b694.pre, ptr @.str.325, ptr @.str.326
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge1483, %bb.ef
  %.pre-phi1485 = phi double [ %.pre1484, %._crit_edge1483 ], [ %7, %bb.ef ]
  %.b694 = phi ptr [ @.str.326, %._crit_edge1483 ], [ %i.sk, %bb.ef ]
  %i.sl = fdiv double %i.sa, %.3579
  %i.sm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.310, ptr noundef nonnull %.b694, double noundef %i.sl) ; 0 uses
  %i.sn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.273, i64 noundef %.0609.lcssa) ; 0 uses
  %i.so = uitofp i64 %.0609.lcssa to double       ; 2 uses
  %i.sp = fdiv double %i.at, %i.so
  %i.sq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.274, double noundef %i.sp) ; 0 uses
  %i.sr = fdiv double %.pre-phi1485, %.3579
  %i.ss = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.275, double noundef %i.sr) ; 0 uses
  %i.st = fmul nnan double %i.so, 8.000000e+00
  %i.su = fdiv nnan double %i.st, 1.000000e+06
  %i.sv = fmul double %i.su, %i.sa
  %i.sw = fdiv double %i.sv, %.3579
  %i.sx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.276, double noundef %i.sw) ; 0 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %sigfig.exit792
  %i.sy = icmp sle i32 %2, %.0591                 ; 2 uses
  br i1 %i.sy, label %bb.ei, label %bb.eq

bb.ei:                                            ; preds = %bb.eh
  %i.sz = icmp sgt i32 %3, %.0595
  %.b688 = load i1, ptr @doWrite, align 4
  %or.cond75.not = select i1 %i.sz, i1 true, i1 %.b688
  br i1 %or.cond75.not, label %bb.eq, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ta = load i32, ptr @lossless, align 4, !tbaa !4
  %.not757 = icmp eq i32 %i.ta, 0
  br i1 %.not757, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.tb = load ptr, ptr %i.au, align 8, !tbaa !10
  br label %bb.el

bb.el:                                            ; preds = %bb.ej, %bb.ek
  %i.tc = phi ptr [ @.str.305, %bb.ek ], [ @.str.304, %bb.ej ]
  %i.td = phi ptr [ %i.tb, %bb.ek ], [ @.str.319, %bb.ej ]
  %i.te = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.327, ptr noundef %6, ptr noundef %i.td, ptr noundef nonnull %i.tc, i32 noundef %5) #22 ; 0 uses
  %i.tf = call noalias ptr @fopen(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.328) ; 4 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.th = tail call ptr @__errno_location() #25
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !4
  %i.tj = call ptr @strerror(i32 noundef %i.ti) #22
  %i.tk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 592, ptr noundef nonnull @.str.329, ptr noundef %i.tj) ; 0 uses
  br label %.thread890

bb.en:                                            ; preds = %bb.el
  %i.tl = load ptr, ptr %calloc1512, align 8, !tbaa !10
  %i.tm = load i64, ptr %calloc, align 8, !tbaa !43
  %i.tn = call i64 @fwrite(ptr noundef %i.tl, i64 noundef %i.tm, i64 noundef 1, ptr noundef nonnull %i.tf)
  %.not759 = icmp eq i64 %i.tn, 1
  br i1 %.not759, label %bb.eo, label %bb.ey

bb.eo:                                            ; preds = %bb.en
  %i.to = call i32 @fclose(ptr noundef nonnull %i.tf) ; 0 uses
  %i.tp = load i32, ptr @quiet, align 4, !tbaa !4
  %.not760 = icmp eq i32 %i.tp, 0
  br i1 %.not760, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.tq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.331, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.eq

bb.eq:                                            ; preds = %bb.eo, %bb.ep, %bb.ei, %bb.eh
  %.b686 = load i1, ptr @compOnly, align 4
  br i1 %.b686, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.tr = call fastcc i32 @decomp(ptr noundef %calloc1512, ptr noundef %calloc, ptr noundef nonnull %i.s, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %spec.select, i32 noundef %.1596)
  %i.ts = icmp eq i32 %i.tr, -1
  br i1 %i.ts, label %.thread890, label %bb.eu

bb.es:                                            ; preds = %bb.eq
  %i.tt = load i32, ptr @quiet, align 4, !tbaa !4
  %i.tu = icmp eq i32 %i.tt, 1
  br i1 %i.tu, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.131) ; 0 uses
  br label %bb.eu

bb.eu:                                            ; preds = %bb.es, %bb.et, %bb.er
  %i.tv = mul nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.tw = icmp sgt i32 %i.tv, 0
  br i1 %i.tw, label %.lr.ph1239.preheader, label %._crit_edge

.lr.ph1239.preheader:                             ; preds = %bb.eu
  %wide.trip.count1474 = zext nneg i32 %i.tv to i64
  br label %.lr.ph1239

.lr.ph1239:                                       ; preds = %.lr.ph1239.preheader, %.lr.ph1239
  %indvars.iv1471 = phi i64 [ 0, %.lr.ph1239.preheader ], [ %indvars.iv.next1472, %.lr.ph1239 ] ; 2 uses
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %calloc1512, i64 %indvars.iv1471 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !10
  call void @tj3Free(ptr noundef %i.ty) #22
  store ptr null, ptr %i.tx, align 8, !tbaa !10
  %indvars.iv.next1472 = add nuw nsw i64 %indvars.iv1471, 1 ; 2 uses
  %exitcond1475.not = icmp eq i64 %indvars.iv.next1472, %wide.trip.count1474
  br i1 %exitcond1475.not, label %._crit_edge, label %.lr.ph1239, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph1239, %bb.eu
  call void @free(ptr noundef %calloc1512) #22
  call void @free(ptr noundef %.1614) #22
  call void @free(ptr noundef %calloc) #22
  %.b693 = load i1, ptr @doYUV, align 4
  br i1 %.b693, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.1572) #22
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %._crit_edge
  %.2573 = phi ptr [ null, %bb.ev ], [ %.1572, %._crit_edge ] ; 2 uses
  %i.tz = icmp sle i32 %3, %.0595
  %or.cond789 = and i1 %i.tz, %i.sy
  br i1 %or.cond789, label %.thread890.thread, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ua = shl nsw i32 %spec.select, 1
  %i.ub = shl nsw i32 %.1596, 1
  br label %bb.h

bb.ey:                                            ; preds = %bb.en
  %i.uc = tail call ptr @__errno_location() #25
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !4
  %i.ue = call ptr @strerror(i32 noundef %i.ud) #22
  %i.uf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 594, ptr noundef nonnull @.str.330, ptr noundef %i.ue) ; 0 uses
  %i.ug = call i32 @fclose(ptr noundef nonnull %i.tf) ; 0 uses
  br label %.thread890

.thread890:                                       ; preds = %bb.er, %.split1211.us, %.split1201.us, %.split.us, %.thread853, %.split1229.us, %bb.q, %bb.o, %bb.ab, %bb.ag, %bb.al, %bb.aq, %bb.av, %bb.ba, %bb.bf, %bb.br, %bb.bl, %bb.bw, %bb.cb, %bb.cg, %bb.em, %bb.ck, %bb.ci, %bb.n, %bb.k, %bb.ey
  %.3905 = phi ptr [ %.1572, %bb.ey ], [ %.0571, %bb.ab ], [ %.0571, %bb.ag ], [ %.0571, %bb.al ], [ %.0571, %bb.aq ], [ %.0571, %bb.av ], [ %.0571, %bb.ba ], [ %.0571, %bb.bf ], [ %.0571, %bb.br ], [ %.0571, %bb.bl ], [ %.0571, %bb.bw ], [ %.0571, %bb.cb ], [ %.0571, %bb.cg ], [ %.0571, %bb.k ], [ %.1572, %.split1211.us ], [ %.0571, %bb.q ], [ %.1572, %bb.em ], [ null, %bb.ck ], [ %.0571, %bb.ci ], [ %.0571, %bb.o ], [ %.0571, %bb.n ], [ %.1572, %.split1229.us ], [ %.1572, %.thread853 ], [ %.1572, %.split.us ], [ %.1572, %.split1201.us ], [ %.1572, %bb.er ] ; 2 uses
  %.2615903 = phi ptr [ %.1614, %bb.ey ], [ %.1614, %bb.ab ], [ %.1614, %bb.ag ], [ %.1614, %bb.al ], [ %.1614, %bb.aq ], [ %.1614, %bb.av ], [ %.1614, %bb.ba ], [ %.1614, %bb.bf ], [ %.1614, %bb.br ], [ %.1614, %bb.bl ], [ %.1614, %bb.bw ], [ %.1614, %bb.cb ], [ %.1614, %bb.cg ], [ null, %bb.k ], [ %.1614, %.split1211.us ], [ %i.bp, %bb.q ], [ %.1614, %bb.em ], [ %.1614, %bb.ck ], [ %.1614, %bb.ci ], [ %i.bp, %bb.o ], [ null, %bb.n ], [ %.1614, %.split1229.us ], [ %.1614, %.thread853 ], [ %.1614, %.split.us ], [ %.1614, %.split1201.us ], [ %.1614, %bb.er ] ; 2 uses
  %i.uh = mul nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.ui = icmp sgt i32 %i.uh, 0
  br i1 %i.ui, label %.lr.ph1241.preheader, label %.thread890.thread

.lr.ph1241.preheader:                             ; preds = %.thread890
  %wide.trip.count1479 = zext nneg i32 %i.uh to i64
  br label %.lr.ph1241

.lr.ph1241:                                       ; preds = %.lr.ph1241.preheader, %.lr.ph1241
  %indvars.iv1476 = phi i64 [ 0, %.lr.ph1241.preheader ], [ %indvars.iv.next1477, %.lr.ph1241 ] ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %calloc1512, i64 %indvars.iv1476
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !10
  call void @tj3Free(ptr noundef %i.uk) #22
  %indvars.iv.next1477 = add nuw nsw i64 %indvars.iv1476, 1 ; 2 uses
  %exitcond1480.not = icmp eq i64 %indvars.iv.next1477, %wide.trip.count1479
  br i1 %exitcond1480.not, label %.thread890.thread, label %.lr.ph1241, !llvm.loop !68

.thread890.thread:                                ; preds = %bb.ew, %.lr.ph1241, %.thread890, %bb.i, %bb.b
  %.1617902930 = phi ptr [ null, %bb.i ], [ null, %bb.b ], [ %calloc, %.thread890 ], [ %calloc, %.lr.ph1241 ], [ null, %bb.ew ]
  %.2615903929 = phi ptr [ null, %bb.i ], [ null, %bb.b ], [ %.2615903, %.thread890 ], [ %.2615903, %.lr.ph1241 ], [ null, %bb.ew ]
  %.3905927 = phi ptr [ %.0571, %bb.i ], [ null, %bb.b ], [ %.3905, %.thread890 ], [ %.3905, %.lr.ph1241 ], [ %.2573, %bb.ew ]
  %.0570906926 = phi ptr [ null, %bb.i ], [ null, %bb.b ], [ %calloc1512, %.thread890 ], [ %calloc1512, %.lr.ph1241 ], [ null, %bb.ew ]
  call void @free(ptr noundef %.0570906926) #22
  call void @free(ptr noundef %.3905927) #22
  call void @free(ptr noundef %.2615903929) #22
  call void @free(ptr noundef %.1617902930) #22
  call void @free(ptr noundef %i.s) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  ret void
}

declare void @tj3Destroy(ptr noundef) local_unnamed_addr #2

declare void @tj3Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

end_hunk_1
begin_hunk_2_@decomp:bb.a

.thread729.us.us.us:                              ; preds = %bb.cp, %bb.co, %bb.cl
  %i.lr = tail call double @getTime() #22
  %i.ls = load i32, ptr @yuvAlign, align 4, !tbaa !4
  %i.lt = load i32, ptr @pf, align 4, !tbaa !4
  %i.lu = tail call i32 @tj3DecodeYUV8(ptr noundef nonnull %i.ab, ptr noundef %.1521, i32 noundef %i.ls, ptr noundef %.0519822.us.us.us, i32 noundef %i.jb, i32 noundef %i.gq, i32 noundef %i.jc, i32 noundef %i.lt) #22
  %i.lv = icmp eq i32 %i.lu, -1
  br i1 %i.lv, label %bb.cq, label %.thread733.us.us.us

bb.cq:                                            ; preds = %.thread729.us.us.us
  %i.lw = tail call i32 @tj3GetErrorCode(ptr noundef nonnull %i.ab) #22
  %i.lx = tail call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ab) #22 ; 4 uses
  %i.ly = tail call i32 @tj3Get(ptr noundef nonnull %i.ab, i32 noundef 0) #22
  %i.lz = icmp eq i32 %i.ly, 0
  %i.ma = icmp eq i32 %i.lw, 0                    ; 2 uses
  %or.cond63.us.us.us = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond63.us.us.us, label %bb.cr, label %.split848.us

bb.cr:                                            ; preds = %bb.cq
  %i.mb = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lx, i64 noundef 200) #23
  %.not644.us.us.us = icmp eq i32 %i.mb, 0
  br i1 %.not644.us.us.us, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %.b603.us.us.us = load i1, ptr @tjErrorCode, align 4
  %i.mc = load i32, ptr @tjErrorLine, align 4
  %i.md = icmp eq i32 %i.mc, 289
  %or.cond65.not.us.us.us = select i1 %.b603.us.us.us, i1 %i.md, i1 false
  br i1 %or.cond65.not.us.us.us, label %.thread733.us.us.us, label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.me = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.lx, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 289, ptr @tjErrorLine, align 4, !tbaa !4
  %i.mf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 289, ptr noundef nonnull %i.lx) ; 0 uses
  br label %.thread733.us.us.us

.thread733.us.us.us:                              ; preds = %bb.ct, %bb.cs, %.thread729.us.us.us
  br i1 %i.iq, label %bb.cu, label %.thread737.us.us.us

bb.cu:                                            ; preds = %.thread733.us.us.us
  %i.mg = tail call double @getTime() #22
  %i.mh = fsub double %i.mg, %i.lr
  %i.mi = fadd double %.2509823.us.us.us, %i.mh
  br label %.thread737.us.us.us

.thread737.us.us.us:                              ; preds = %bb.cu, %.thread733.us.us.us, %bb.ck, %bb.cj, %bb.cg, %bb.cf, %bb.ce, %bb.cb, %bb.ca, %bb.bz, %bb.bw
  %.6513.ph.us.us.us = phi double [ %.2509823.us.us.us, %bb.bw ], [ %.2509823.us.us.us, %bb.cf ], [ %.2509823.us.us.us, %bb.cb ], [ %.2509823.us.us.us, %bb.ck ], [ %.2509823.us.us.us, %bb.cg ], [ %i.mi, %bb.cu ], [ %.2509823.us.us.us, %.thread733.us.us.us ], [ %.2509823.us.us.us, %bb.cj ], [ %.2509823.us.us.us, %bb.ce ], [ %.2509823.us.us.us, %bb.bz ], [ %.2509823.us.us.us, %bb.ca ] ; 5 uses
  %i.mj = add nuw nsw i32 %.0495824.us.us.us, 1   ; 2 uses
  %indvars.iv.next910 = add nsw i64 %indvars.iv909, 1 ; 2 uses
  %i.mk = load i32, ptr @sampleSize, align 4, !tbaa !4 ; 2 uses
  %i.ml = mul nsw i32 %i.il, %i.mk
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %.0519822.us.us.us, i64 %i.mm
  %exitcond912.not = icmp eq i32 %i.mj, %i.j
  br i1 %exitcond912.not, label %._crit_edge.us.us.us, label %bb.bt, !llvm.loop !75

._crit_edge.us.us.us:                             ; preds = %.thread737.us.us.us
  %i.mo = add nuw nsw i32 %.0494830.us.us.us, 1   ; 2 uses
  %i.mp = zext nneg i32 %i.mk to i64
  %i.mq = mul i64 %i.io, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.0518828.us.us.us, i64 %i.mq
  %exitcond913.not = icmp eq i32 %i.mo, %i.m
  br i1 %exitcond913.not, label %._crit_edge831.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !76

._crit_edge831.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.ms = tail call double @getTime() #22
  %i.mt = fsub double %i.ms, %i.ir
  %i.mu = fadd double %.0503.us.us, %i.mt         ; 5 uses
  br i1 %i.iq, label %bb.bs, label %bb.br

.preheader.lr.ph.us:                              ; preds = %.preheader.lr.ph.us.outer, %bb.cv
  %.0503.us = phi double [ %i.my, %bb.cv ], [ %.0503.us.ph, %.preheader.lr.ph.us.outer ]
  %i.mv = tail call double @getTime() #22
  %i.mw = tail call double @getTime() #22
  %i.mx = fsub double %i.mw, %i.mv
  %i.my = fadd double %.0503.us, %i.mx            ; 5 uses
  br i1 %i.nb, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.preheader.lr.ph.us
  %i.mz = load double, ptr @warmup, align 8, !tbaa !14
  %i.na = fcmp ult double %i.my, %i.mz
  br i1 %i.na, label %.preheader.lr.ph.us, label %.preheader.lr.ph.us.outer.backedge

.preheader.lr.ph.us.outer:                        ; preds = %.split.us851, %.preheader.lr.ph.us.outer.backedge
  %.0503.us.ph = phi double [ %.0503.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ 0.000000e+00, %.split.us851 ]
  %.0496.us.ph = phi i32 [ %.0496.us.ph.be, %.preheader.lr.ph.us.outer.backedge ], [ -1, %.split.us851 ] ; 2 uses
  %i.nb = icmp sgt i32 %.0496.us.ph, -1
  br label %.preheader.lr.ph.us

bb.cw:                                            ; preds = %.preheader.lr.ph.us
  %i.nc = add nuw nsw i32 %.0496.us.ph, 1         ; 2 uses
  %i.nd = load double, ptr @benchTime, align 8, !tbaa !14
  %i.ne = fcmp ult double %i.my, %i.nd
  br i1 %i.ne, label %.preheader.lr.ph.us.outer.backedge, label %.split858.us

.preheader.lr.ph.us.outer.backedge:               ; preds = %bb.cv, %bb.cw
  %.0503.us.ph.be = phi double [ %i.my, %bb.cw ], [ 0.000000e+00, %bb.cv ]
  %.0496.us.ph.be = phi i32 [ %i.nc, %bb.cw ], [ 0, %bb.cv ]
  br label %.preheader.lr.ph.us.outer

.split:                                           ; preds = %.split.outer, %bb.cy
  %.0503 = phi double [ %i.ni, %bb.cy ], [ %.0503.ph, %.split.outer ]
  %i.nf = tail call double @getTime() #22
  %i.ng = tail call double @getTime() #22
  %i.nh = fsub double %i.ng, %i.nf
  %i.ni = fadd double %.0503, %i.nh               ; 5 uses
  br i1 %i.nw, label %bb.cx, label %bb.cy

.split844.us:                                     ; preds = %bb.cm
  %i.nj = select i1 %i.ll, ptr @.str.111, ptr @.str.112
  %i.nk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.nj, i32 noundef 285, ptr noundef %i.li) ; 0 uses
  br label %.thread724

.split848.us:                                     ; preds = %bb.cq
  %i.nl = select i1 %i.ma, ptr @.str.111, ptr @.str.112
  %i.nm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.nl, i32 noundef 289, ptr noundef %i.lx) ; 0 uses
  br label %.thread724

.split840.us:                                     ; preds = %bb.ch
  %i.nn = select i1 %i.ku, ptr @.str.111, ptr @.str.112
  %i.no = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.nn, i32 noundef 295, ptr noundef %i.kr) ; 0 uses
  br label %.thread724

.split836.us:                                     ; preds = %bb.cc
  %i.np = select i1 %i.kd, ptr @.str.111, ptr @.str.112
  %i.nq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.np, i32 noundef 299, ptr noundef %i.ka) ; 0 uses
  br label %.thread724

.split.us:                                        ; preds = %bb.bx
  %i.nr = select i1 %i.jr, ptr @.str.111, ptr @.str.112
  %i.ns = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.nr, i32 noundef 303, ptr noundef %i.jo) ; 0 uses
  br label %.thread724

bb.cx:                                            ; preds = %.split
  %i.nt = add nuw nsw i32 %.0496.ph, 1            ; 2 uses
  %i.nu = load double, ptr @benchTime, align 8, !tbaa !14
  %i.nv = fcmp ult double %i.ni, %i.nu
  br i1 %i.nv, label %.split.outer.backedge, label %.split858.us

.split.outer.backedge:                            ; preds = %bb.cy, %bb.cx
  %.0503.ph.be = phi double [ %i.ni, %bb.cx ], [ 0.000000e+00, %bb.cy ]
  %.0496.ph.be = phi i32 [ %i.nt, %bb.cx ], [ 0, %bb.cy ]
  br label %.split.outer

.split.outer:                                     ; preds = %bb.bq, %.split.outer.backedge
  %.0503.ph = phi double [ %.0503.ph.be, %.split.outer.backedge ], [ 0.000000e+00, %bb.bq ]
  %.0496.ph = phi i32 [ %.0496.ph.be, %.split.outer.backedge ], [ -1, %bb.bq ] ; 2 uses
  %i.nw = icmp sgt i32 %.0496.ph, -1
  br label %.split

bb.cy:                                            ; preds = %.split
  %i.nx = load double, ptr @warmup, align 8, !tbaa !14
  %i.ny = fcmp ult double %i.ni, %i.nx
  br i1 %i.ny, label %.split, label %.split.outer.backedge

.split858.us:                                     ; preds = %bb.cx, %bb.cw, %bb.bs
  %.us-phi859 = phi i32 [ %i.nc, %bb.cw ], [ %i.iu, %bb.bs ], [ %i.nt, %bb.cx ] ; 2 uses
  %.us-phi860 = phi double [ %i.my, %bb.cw ], [ %i.mu, %bb.bs ], [ %i.ni, %bb.cx ] ; 2 uses
  %.us-phi861 = phi double [ 0.000000e+00, %bb.cw ], [ %.6513.ph.us.us.us, %bb.bs ], [ 0.000000e+00, %bb.cx ] ; 4 uses
  %.b594 = load i1, ptr @doYUV, align 4           ; 2 uses
  %i.nz = fsub double %.us-phi860, %.us-phi861
  %.3506 = select i1 %.b594, double %i.nz, double %.us-phi860 ; 3 uses
  %i.oa = load i32, ptr @quiet, align 4, !tbaa !4
  %.not646 = icmp eq i32 %i.oa, 0
  br i1 %.not646, label %bb.dd, label %bb.cz

bb.cz:                                            ; preds = %.split858.us
  %i.ob = mul nsw i32 %4, %3
  %i.oc = sitofp i32 %i.ob to double
  %i.od = fdiv nnan double %i.oc, 1.000000e+06
  %i.oe = uitofp nneg i32 %.us-phi859 to double
  %i.of = fmul double %i.od, %i.oe                ; 2 uses
  %i.og = fdiv double %i.of, %.3506
  %i.oh = call fastcc ptr @sigfig(double noundef %i.og, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %i.oi = load i32, ptr @quiet, align 4, !tbaa !4
  %i.oj = icmp eq i32 %i.oi, 2
  %i.ok = select i1 %i.oj, ptr @str.129, ptr @.str.271
  %i.ol = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.308, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ok) ; 0 uses
  %.b593 = load i1, ptr @doYUV, align 4
  br i1 %.b593, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.om = fdiv double %i.of, %.us-phi861
  %i.on = call fastcc ptr @sigfig(double noundef %i.om, ptr noundef %i.a, i32 noundef 1024) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.a) ; 0 uses
  br label %bb.df

bb.db:                                            ; preds = %bb.cz
  %i.oo = load i32, ptr @quiet, align 4, !tbaa !4
  %.not647 = icmp eq i32 %i.oo, 2
  br i1 %.not647, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.df

bb.dd:                                            ; preds = %.split858.us
  %i.op = select i1 %.b594, ptr @.str.311, ptr @.str.312
  %i.oq = uitofp nneg i32 %.us-phi859 to double   ; 3 uses
  %10 = fdiv double %i.oq, %.3506
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.310, ptr noundef nonnull %i.op, double noundef %10) ; 0 uses
  %12 = mul nsw i32 %4, %3
  %13 = sitofp i32 %12 to double
  %14 = fdiv nnan double %13, 1.000000e+06
  %i.or = fmul double %14, %i.oq                  ; 2 uses
  %i.os = fdiv double %i.or, %.3506
  %i.ot = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.275, double noundef %i.os) ; 0 uses
  %.b591 = load i1, ptr @doYUV, align 4
  br i1 %.b591, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ou = fdiv double %i.oq, %.us-phi861
  %i.ov = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.313, double noundef %i.ou) ; 0 uses
  %i.ow = fdiv double %i.or, %.us-phi861
  %i.ox = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.275, double noundef %i.ow) ; 0 uses
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de, %bb.da, %bb.dc, %bb.db
  %.b586 = load i1, ptr @doWrite, align 4
  br i1 %.b586, label %.thread724, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.oy = load i32, ptr @sf, align 8, !tbaa !25   ; 2 uses
  %i.oz = icmp ne i32 %i.oy, 1
  %i.pa = load i32, ptr getelementptr inbounds nuw (i8, ptr @sf, i64 4), align 4 ; 2 uses
  %i.pb = icmp ne i32 %i.pa, 1
  %or.cond79 = select i1 %i.oz, i1 true, i1 %i.pb
  br i1 %or.cond79, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.pc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 24, ptr noundef nonnull @.str.314, i32 noundef %i.oy, i32 noundef %i.pa) #22 ; 0 uses
  br label %bb.dl

bb.di:                                            ; preds = %bb.dg
  %.not648 = icmp eq i32 %8, %3
  %.not649 = icmp eq i32 %9, %4
  %or.cond681 = and i1 %.not648, %.not649
  br i1 %or.cond681, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 24, ptr noundef nonnull @.str.315, i32 noundef %8, i32 noundef %9) #22 ; 0 uses
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @.str.316, i64 5, i1 false)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk, %bb.dh
  %.b = load i1, ptr @decompOnly, align 4
  br i1 %.b, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.pe = load ptr, ptr @ext, align 8, !tbaa !10
  %i.pf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.317, ptr noundef %7, ptr noundef nonnull %i.b, ptr noundef %i.pe) #22 ; 0 uses
  br label %bb.dq

bb.dn:                                            ; preds = %bb.dl
  %i.pg = load i32, ptr @lossless, align 4, !tbaa !4
  %.not650 = icmp eq i32 %i.pg, 0
  br i1 %.not650, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.ph = sext i32 %5 to i64
  %i.pi = getelementptr inbounds [8 x i8], ptr @subName, i64 %i.ph
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !10
  br label %bb.dp

bb.dp:                                            ; preds = %bb.dn, %bb.do
  %i.pk = phi ptr [ %i.pj, %bb.do ], [ @.str.319, %bb.dn ]
  %i.pl = load ptr, ptr @ext, align 8, !tbaa !10
  %i.pm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.318, ptr noundef %7, ptr noundef %i.pk, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %i.pl) #22 ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dm
  %i.pn = load i32, ptr @precision, align 4, !tbaa !4 ; 2 uses
  %i.po = icmp slt i32 %i.pn, 9
  br i1 %i.po, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.pp = load i32, ptr @pf, align 4, !tbaa !4
  %i.pq = call i32 @tj3SaveImage8(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %.0491, i32 noundef %.0516, i32 noundef 0, i32 noundef %.0517, i32 noundef %i.pp) #22
  %i.pr = icmp eq i32 %i.pq, -1
  br i1 %i.pr, label %bb.ds, label %.thread724

bb.ds:                                            ; preds = %bb.dr
  %i.ps = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.ab) #22
  %i.pt = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ab) #22 ; 4 uses
  %i.pu = call i32 @tj3Get(ptr noundef nonnull %i.ab, i32 noundef 0) #22
  %i.pv = icmp eq i32 %i.pu, 0
  %i.pw = icmp eq i32 %i.ps, 0                    ; 2 uses
  %or.cond81 = select i1 %i.pv, i1 %i.pw, i1 false
  br i1 %or.cond81, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.px = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.pt, i64 noundef 200) #23
  %.not655 = icmp eq i32 %i.px, 0
  br i1 %.not655, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %.b599 = load i1, ptr @tjErrorCode, align 4
  %i.py = load i32, ptr @tjErrorLine, align 4
  %i.pz = icmp eq i32 %i.py, 358
  %or.cond83.not = select i1 %.b599, i1 %i.pz, i1 false
  br i1 %or.cond83.not, label %.thread724, label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.qa = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.pt, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 358, ptr @tjErrorLine, align 4, !tbaa !4
  %i.qb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 358, ptr noundef nonnull %i.pt) ; 0 uses
  br label %.thread724

bb.dw:                                            ; preds = %bb.ds
  %i.qc = select i1 %i.pw, ptr @.str.111, ptr @.str.112
  %i.qd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.qc, i32 noundef 358, ptr noundef %i.pt) ; 0 uses
  br label %.thread724

bb.dx:                                            ; preds = %bb.dq
  %i.qe = icmp samesign ult i32 %i.pn, 13
  %i.qf = load i32, ptr @pf, align 4, !tbaa !4    ; 2 uses
  br i1 %i.qe, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  %i.qg = call i32 @tj3SaveImage12(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %.0491, i32 noundef %.0516, i32 noundef 0, i32 noundef %.0517, i32 noundef %i.qf) #22
  %i.qh = icmp eq i32 %i.qg, -1
  br i1 %i.qh, label %bb.dz, label %.thread724

bb.dz:                                            ; preds = %bb.dy
  %i.qi = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.ab) #22
  %i.qj = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ab) #22 ; 4 uses
  %i.qk = call i32 @tj3Get(ptr noundef nonnull %i.ab, i32 noundef 0) #22
  %i.ql = icmp eq i32 %i.qk, 0
  %i.qm = icmp eq i32 %i.qi, 0                    ; 2 uses
  %or.cond85 = select i1 %i.ql, i1 %i.qm, i1 false
  br i1 %or.cond85, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz
  %i.qn = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qj, i64 noundef 200) #23
  %.not653 = icmp eq i32 %i.qn, 0
  br i1 %.not653, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %.b598 = load i1, ptr @tjErrorCode, align 4
  %i.qo = load i32, ptr @tjErrorLine, align 4
  %i.qp = icmp eq i32 %i.qo, 362
  %or.cond87.not = select i1 %.b598, i1 %i.qp, i1 false
  br i1 %or.cond87.not, label %.thread724, label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.qq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qj, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 362, ptr @tjErrorLine, align 4, !tbaa !4
  %i.qr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 362, ptr noundef nonnull %i.qj) ; 0 uses
  br label %.thread724

bb.ed:                                            ; preds = %bb.dz
  %i.qs = select i1 %i.qm, ptr @.str.111, ptr @.str.112
  %i.qt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.qs, i32 noundef 362, ptr noundef %i.qj) ; 0 uses
  br label %.thread724

bb.ee:                                            ; preds = %bb.dx
  %i.qu = call i32 @tj3SaveImage16(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.a, ptr noundef nonnull %.0491, i32 noundef %.0516, i32 noundef 0, i32 noundef %.0517, i32 noundef %i.qf) #22
  %i.qv = icmp eq i32 %i.qu, -1
  br i1 %i.qv, label %bb.ef, label %.thread724

bb.ef:                                            ; preds = %bb.ee
  %i.qw = call i32 @tj3GetErrorCode(ptr noundef nonnull %i.ab) #22
  %i.qx = call ptr @tj3GetErrorStr(ptr noundef nonnull %i.ab) #22 ; 4 uses
  %i.qy = call i32 @tj3Get(ptr noundef nonnull %i.ab, i32 noundef 0) #22
  %i.qz = icmp eq i32 %i.qy, 0
  %i.ra = icmp eq i32 %i.qw, 0                    ; 2 uses
  %or.cond89 = select i1 %i.qz, i1 %i.ra, i1 false
  br i1 %or.cond89, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.rb = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qx, i64 noundef 200) #23
  %.not651 = icmp eq i32 %i.rb, 0
  br i1 %.not651, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %.b597 = load i1, ptr @tjErrorCode, align 4
  %i.rc = load i32, ptr @tjErrorLine, align 4
  %i.rd = icmp eq i32 %i.rc, 366
  %or.cond91.not = select i1 %.b597, i1 %i.rd, i1 false
  br i1 %or.cond91.not, label %.thread724, label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.re = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @tjErrorStr, ptr noundef nonnull dereferenceable(1) %i.qx, i64 noundef 200) #22 ; 0 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @tjErrorStr, i64 199), align 1, !tbaa !16
  store i1 true, ptr @tjErrorCode, align 4
  store i32 366, ptr @tjErrorLine, align 4, !tbaa !4
  %i.rf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.109, i32 noundef 366, ptr noundef nonnull %i.qx) ; 0 uses
  br label %.thread724

bb.ej:                                            ; preds = %bb.ef
  %i.rg = select i1 %i.ra, ptr @.str.111, ptr @.str.112
  %i.rh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.110, ptr noundef nonnull %i.rg, i32 noundef 366, ptr noundef %i.qx) ; 0 uses
  br label %.thread724

.thread780:                                       ; preds = %bb.f, %bb.bh, %bb.l, %bb.q, %bb.bf, %bb.ba, %bb.av, %bb.ap, %bb.ak, %bb.af, %bb.aa, %bb.v
  tail call void @tj3Destroy(ptr noundef %i.ab) #22
  br label %bb.el

end_hunk_2
