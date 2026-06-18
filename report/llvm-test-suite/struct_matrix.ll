inline.NumInlined: 4
begin_hunk_0_@hypre_StructMatrixInitializeShell:bb.a
  br label %bb.o

.lr.ph186.new:                                    ; preds = %.lr.ph186, %bb.n
  %indvars.iv210 = phi i64 [ %indvars.iv.next211.1, %bb.n ], [ 0, %.lr.ph186 ] ; 4 uses
  %.1154183 = phi i32 [ %.2155.1, %bb.n ], [ %.0153190, %.lr.ph186 ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.n ], [ 0, %.lr.ph186 ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv210
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph186.new
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv210
  store i32 %.1154183, ptr %i.fa, align 4, !tbaa !4
  %i.fb = add nuw nsw i32 %.1154183, %i.en
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph186.new, %bb.k
  %.2155 = phi i32 [ %i.fb, %bb.k ], [ %.1154183, %.lr.ph186.new ] ; 3 uses
  %indvars.iv.next211 = or disjoint i64 %indvars.iv210, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next211
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = icmp slt i32 %i.fd, 0
  br i1 %i.fe, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next211
  store i32 %.2155, ptr %i.ff, align 4, !tbaa !4
  %i.fg = add nuw nsw i32 %.2155, %i.en
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.2155.1 = phi i32 [ %i.fg, %bb.m ], [ %.2155, %bb.l ] ; 3 uses
  %indvars.iv.next211.1 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph188.unr-lcssa, label %.lr.ph186.new, !llvm.loop !47

bb.o:                                             ; preds = %.lr.ph188, %bb.s
  %indvars.iv215 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next216, %bb.s ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv215
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  %i.fj = icmp sgt i32 %i.fi, -1
  br i1 %i.fj, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.fk = zext nneg i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv215 ; 3 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.fs = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ft = sub nsw i32 %i.fr, %i.fs                ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !4
  %i.fx = add nuw nsw i32 %i.ft, 1
  %i.fy = mul nsw i32 %i.fw, %i.fx
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.fz = phi i32 [ %i.fy, %bb.q ], [ 0, %bb.p ]
  %i.ga = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.gb = load i32, ptr %i.ds, align 4, !tbaa !4
  %i.gc = sub nsw i32 %i.ga, %i.gb                ; 2 uses
  %i.gd = add nsw i32 %i.fz, %i.fq
  %i.ge = add nuw nsw i32 %i.gc, 1
  %i.gf = mul nsw i32 %i.ge, %i.gd
  %.inv170 = icmp slt i32 %i.gc, 0
  %i.gg = select i1 %.inv170, i32 0, i32 %i.gf
  %i.gh = add i32 %i.fo, %i.fm
  %i.gi = add i32 %i.gh, %i.gg
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv215
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond219.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count218
  br i1 %exitcond219.not, label %._crit_edge189, label %bb.o, !llvm.loop !48

._crit_edge189:                                   ; preds = %bb.s, %bb.i
  %.1154.lcssa244 = phi i32 [ %.0153190, %bb.i ], [ %.2155.lcssa, %bb.s ] ; 2 uses
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.gk = load i32, ptr %i.dl, align 8, !tbaa !29
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next221, %i.gl
  br i1 %i.gm, label %bb.i, label %._crit_edge194, !llvm.loop !49

._crit_edge194:                                   ; preds = %._crit_edge189, %bb.h
  %.0153.lcssa = phi i32 [ 0, %bb.h ], [ %.1154.lcssa244, %._crit_edge189 ]
  store ptr %i.dn, ptr %i.di, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.0153.lcssa, ptr %i.gn, align 4, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge194, %bb.g
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !51
  %i.gq = mul nsw i32 %i.gp, %i.ac
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %i.gq, ptr %i.gr, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @hypre_StructStencilSymmetrize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxArrayCreate(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixInitializeData(ptr nofree noundef captures(none) initializes((48, 60)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8, !tbaa !24
  store i32 0, ptr %i.b, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %hypre_StructMatrixExtractPointerByIndex.exit.thread
  %indvars.iv184 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next185, %hypre_StructMatrixExtractPointerByIndex.exit.thread ] ; 3 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.q = call i32 @hypre_StructStencilElementRank(ptr noundef %i.p, ptr noundef nonnull %i.b) #11 ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %hypre_StructMatrixExtractPointerByIndex.exit, label %hypre_StructMatrixExtractPointerByIndex.exit.thread

hypre_StructMatrixExtractPointerByIndex.exit:     ; preds = %bb.b
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv184
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.w = zext nneg i32 %i.q to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.z ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %hypre_StructMatrixExtractPointerByIndex.exit.thread, label %bb.c

bb.c:                                             ; preds = %hypre_StructMatrixExtractPointerByIndex.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %indvars.iv184 ; 5 uses
  %i.ad = call i32 @hypre_BoxGetSize(ptr noundef %i.ac, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !4   ; 6 uses
  %i.af = load i32, ptr %i.n, align 4, !tbaa !4   ; 4 uses
  %i.ag = load i32, ptr %i.o, align 4, !tbaa !4   ; 3 uses
  %.0128 = call i32 @llvm.smax.i32(i32 %i.af, i32 %i.ae)
  %.1129 = call i32 @llvm.smax.i32(i32 %i.ag, i32 %.0128)
  %i.ah = icmp sgt i32 %.1129, 0
  br i1 %i.ah, label %.preheader160.lr.ph, label %hypre_StructMatrixExtractPointerByIndex.exit.thread

.preheader160.lr.ph:                              ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.al = sub i32 %i.aj, %i.ak
  %i.am = call i32 @llvm.smax.i32(i32 %i.al, i32 -1) ; 2 uses
  %.neg = xor i32 %i.am, -1
  %i.an = add i32 %i.am, 1                        ; 2 uses
  %factor.op.mul171.neg = mul i32 %i.af, %.neg
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = sub nsw i32 %i.ap, %i.ar                ; 2 uses
  %.inv = icmp slt i32 %i.as, 0
  %i.at = add nuw nsw i32 %i.as, 1
  %i.au = mul nsw i32 %i.an, %i.at
  %i.av = select i1 %.inv, i32 0, i32 %i.au
  %2 = icmp sgt i32 %i.ag, 0
  %3 = icmp sgt i32 %i.af, 0
  %i.aw = sub i32 %i.an, %i.ae
  %i.ax = add i32 %i.av, %factor.op.mul171.neg
  %brmerge.not194 = and i1 %2, %3
  %4 = icmp sgt i32 %i.ae, 0
  %or.cond = and i1 %brmerge.not194, %4
  br i1 %or.cond, label %.preheader159.us.us.preheader, label %hypre_StructMatrixExtractPointerByIndex.exit.thread

.preheader159.us.us.preheader:                    ; preds = %.preheader160.lr.ph
  %i.ay = zext nneg i32 %i.ae to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ae, 4
  %n.vec = and i64 %i.ay, 2147483644              ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ay
  br label %.preheader159.us.us

.preheader159.us.us:                              ; preds = %.preheader159.us.us.preheader, %._crit_edge165.split.us.us.us
  %.0132168.us.us = phi i32 [ %i.bj, %._crit_edge165.split.us.us.us ], [ 0, %.preheader159.us.us.preheader ]
  %.1144167.us.us = phi i32 [ %i.bk, %._crit_edge165.split.us.us.us ], [ 0, %.preheader159.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader159.us.us
  %.1133164.us.us.us = phi i32 [ %.0132168.us.us, %.preheader159.us.us ], [ %i.bh, %._crit_edge.us.us.us ]
  %.1142163.us.us.us = phi i32 [ 0, %.preheader159.us.us ], [ %i.bi, %._crit_edge.us.us.us ]
  %i.ba = sext i32 %.1133164.us.us.us to i64      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.bb = add nsw i64 %n.vec, %i.ba               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %gep, align 8, !tbaa !53
  store <2 x double> splat (double 1.000000e+00), ptr %i.bc, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ba, %.preheader.us.us.us ], [ %i.bb, %middle.block ]
  %.1137161.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %i.az, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1137161.us.us.us = phi i32 [ %i.bf, %scalar.ph ], [ %.1137161.us.us.us.ph, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.be, align 8, !tbaa !53
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bf = add nuw nsw i32 %.1137161.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %i.ae
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !58

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.bb, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.bg = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.bh = add nsw i32 %i.aw, %i.bg                ; 2 uses
  %i.bi = add nuw nsw i32 %.1142163.us.us.us, 1   ; 2 uses
  %exitcond182.not = icmp eq i32 %i.bi, %i.af
  br i1 %exitcond182.not, label %._crit_edge165.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !59

._crit_edge165.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.bj = add nsw i32 %i.ax, %i.bh
  %i.bk = add nuw nsw i32 %.1144167.us.us, 1      ; 2 uses
  %exitcond183.not = icmp eq i32 %i.bk, %i.ag
  br i1 %exitcond183.not, label %hypre_StructMatrixExtractPointerByIndex.exit.thread, label %.preheader159.us.us, !llvm.loop !60

hypre_StructMatrixExtractPointerByIndex.exit.thread: ; preds = %._crit_edge165.split.us.us.us, %.preheader160.lr.ph, %bb.c, %bb.b, %hypre_StructMatrixExtractPointerByIndex.exit
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.bl = load i32, ptr %i.i, align 8, !tbaa !29
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next185, %i.bm
  br i1 %i.bn, label %bb.b, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %hypre_StructMatrixExtractPointerByIndex.exit.thread, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixInitialize(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @hypre_StructMatrixInitializeShell(ptr noundef %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50
  %i.d = tail call ptr @hypre_CAlloc(i32 noundef %i.c, i32 noundef 8) #11
  %i.e = tail call i32 @hypre_StructMatrixInitializeData(ptr noundef %0, ptr noundef %i.d) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 1, ptr %i.f, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_StructMatrixSetValues(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !29   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph121, label %._crit_edge

.lr.ph121:                                        ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !4      ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not104 = icmp eq i32 %5, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %.not104, label %.lr.ph121.split.us, label %.lr.ph121.split

.lr.ph121.split.us:                               ; preds = %.lr.ph121
  br i1 %i.o, label %.lr.ph121.split.us.split.us.preheader, label %._crit_edge

.lr.ph121.split.us.split.us.preheader:            ; preds = %.lr.ph121.split.us
  %wide.trip.count164 = zext nneg i32 %i.f to i64
  %wide.trip.count154 = zext nneg i32 %2 to i64   ; 4 uses
  %xtraiter191 = and i64 %wide.trip.count154, 3   ; 3 uses
  %i.p = icmp ult i32 %2, 4
  %unroll_iter194 = and i64 %wide.trip.count154, 2147483644
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  %lcmp.mod193 = icmp ne i64 %xtraiter191, 0
  %xtraiter197 = and i64 %wide.trip.count154, 3   ; 3 uses
  %i.q = icmp ult i32 %2, 4
  %unroll_iter201 = and i64 %wide.trip.count154, 2147483644
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  %lcmp.mod200 = icmp ne i64 %xtraiter197, 0
  br label %.lr.ph121.split.us.split.us

.lr.ph121.split.us.split.us:                      ; preds = %.lr.ph121.split.us.split.us.preheader, %..loopexit_crit_edge.us.us
  %indvars.iv161 = phi i64 [ 0, %.lr.ph121.split.us.split.us.preheader ], [ %indvars.iv.next162, %..loopexit_crit_edge.us.us ] ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv161 ; 6 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %.not.us.us = icmp slt i32 %i.i, %i.s
  br i1 %.not.us.us, label %..loopexit_crit_edge.us.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph121.split.us.split.us
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %.not99.us.us = icmp sgt i32 %i.i, %i.u
  br i1 %.not99.us.us, label %..loopexit_crit_edge.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.j, align 4, !tbaa !4    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %.not100.us.us = icmp slt i32 %i.v, %i.x
  br i1 %.not100.us.us, label %..loopexit_crit_edge.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %.not101.us.us = icmp sgt i32 %i.v, %i.z
  br i1 %.not101.us.us, label %..loopexit_crit_edge.us.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !4   ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %.not102.us.us = icmp slt i32 %i.aa, %i.ac
  br i1 %.not102.us.us, label %..loopexit_crit_edge.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %.not103.us.us = icmp sgt i32 %i.aa, %i.ae
  br i1 %.not103.us.us, label %..loopexit_crit_edge.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.f
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !19  ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv161
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 10 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %indvars.iv161 ; 5 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %i.an = sub i32 %i.i, %i.am                     ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.aq = sub i32 %i.v, %i.ap                     ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = sub nsw i32 %i.as, %i.ap                ; 2 uses
  %i.au = icmp sgt i32 %i.at, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sub nsw i32 %i.aw, %i.am                ; 2 uses
  %i.ay = add nuw nsw i32 %i.ax, 1                ; 2 uses
  %.inv105.us.us = icmp slt i32 %i.ax, 0          ; 2 uses
  br i1 %i.au, label %.lr.ph115.split.us.us.us, label %.lr.ph115.split.us124.us

end_hunk_0
begin_hunk_1_@hypre_StructMatrixSetBoxValues:bb.a
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #11 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !4
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !4
  %i.x = load i32, ptr %i.m, align 4, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !4
  %i.z = load i32, ptr %i.n, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !4
  %i.af = load i32, ptr %i.q, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !29
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !68

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.al = tail call i32 @hypre_BoxDestroy(ptr noundef %i.j) #11 ; 0 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !28
  %i.ao = tail call ptr @hypre_BoxDuplicate(ptr noundef %1) #11 ; 9 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = mul nsw i32 %i.ap, %2
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = mul nsw i32 %i.as, %2
  %i.au = add nsw i32 %2, -1
  %i.av = add nsw i32 %i.au, %i.at
  store i32 %i.av, ptr %i.ar, align 4, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !29
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph563, label %._crit_edge564

.lr.ph563:                                        ; preds = %bb.c
  %i.az = icmp sgt i32 %2, 0
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not470 = icmp eq i32 %5, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !45  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %._crit_edge564, label %.lr.ph563.split.preheader

.lr.ph563.split.preheader:                        ; preds = %.lr.ph563
  %i.bj = sext i32 %2 to i64                      ; 8 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %wide.trip.count614 = zext nneg i32 %2 to i64
  %scevgep661 = getelementptr i8, ptr %4, i64 8
  %ident.check654.not = icmp eq i32 %2, 1
  %ident.check.not = icmp eq i32 %2, 1
  br label %.lr.ph563.split

.lr.ph563.splitthread-pre-split:                  ; preds = %.loopexit494
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !45
  br label %.lr.ph563.split

.lr.ph563.split:                                  ; preds = %.lr.ph563.splitthread-pre-split, %.lr.ph563.split.preheader
  %i.bk = phi ptr [ %.pr, %.lr.ph563.splitthread-pre-split ], [ %i.bh, %.lr.ph563.split.preheader ] ; 2 uses
  %indvars.iv616 = phi i64 [ %indvars.iv.next617, %.lr.ph563.splitthread-pre-split ], [ 0, %.lr.ph563.split.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv616 ; 7 uses
  %i.bm = load ptr, ptr %i.an, align 8, !tbaa !45
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv616 ; 6 uses
  %.not469 = icmp eq ptr %i.bk, null
  br i1 %.not469, label %.loopexit494, label %bb.d

bb.d:                                             ; preds = %.lr.ph563.split
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4  ; 2 uses
  br i1 %i.az, label %.lr.ph557, label %.loopexit494

.lr.ph557:                                        ; preds = %bb.d
  %i.bs = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bt = mul nsw i32 %i.bs, %2                   ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 12 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  br i1 %.not470, label %.lr.ph557.split.us, label %.lr.ph557.split

.lr.ph557.split.us:                               ; preds = %.lr.ph557, %.loopexit492.us
  %indvars.iv611 = phi i64 [ %indvars.iv.next612, %.loopexit492.us ], [ 0, %.lr.ph557 ] ; 2 uses
  %.sroa.0212.0555.us = phi i32 [ %i.dy, %.loopexit492.us ], [ %i.bt, %.lr.ph557 ] ; 2 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bz = ptrtoaddr ptr %i.by to i64
  %i.ca = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv616
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv611
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ci ; 6 uses
  %i.ck = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.cl = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.cm = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.cn = sub i32 %i.cl, %i.cm
  %i.co = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.cp = load i32, ptr %i.bu, align 4, !tbaa !4  ; 2 uses
  %i.cq = sub i32 %i.co, %i.cp
  %i.cr = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.cs = sub nsw i32 %i.cr, %i.cp                ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, -1                  ; 2 uses
  br i1 %i.ct, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph557.split.us
  %i.cu = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.cv = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.cw = sub nsw i32 %i.cu, %i.cv
  %i.cx = add nuw nsw i32 %i.cs, 1
  %i.cy = mul nsw i32 %i.cw, %i.cx
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph557.split.us
  %i.cz = phi i32 [ %i.cy, %bb.e ], [ 0, %.lr.ph557.split.us ]
  %i.da = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.db = sub i32 %i.da, %i.cm                    ; 2 uses
  %i.dc = icmp sgt i32 %i.db, -1                  ; 2 uses
  %i.dd = add nsw i32 %i.cq, %i.cz
  %i.de = add i32 %i.db, 1                        ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.dd
  %i.dg = select i1 %i.dc, i32 %i.df, i32 0
  %i.dh = add nsw i32 %i.cn, %i.dg
  %i.di = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.dj = sub i32 %.sroa.0212.0555.us, %i.di
  %i.dk = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.dl = sub i32 %i.bp, %i.dk
  %i.dm = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.dn = sub nsw i32 %i.dm, %i.dk                ; 3 uses
  %i.do = icmp sgt i32 %i.dn, -1                  ; 2 uses
  br i1 %i.do, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dp = load i32, ptr %i.be, align 4, !tbaa !4
  %i.dq = sub nsw i32 %i.br, %i.dp
  %i.dr = add nuw nsw i32 %i.dn, 1
  %i.ds = mul nsw i32 %i.dq, %i.dr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dt = phi i32 [ %i.ds, %bb.g ], [ 0, %bb.f ]
  %i.du = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.dv = load i32, ptr %i.bf, align 4, !tbaa !4  ; 5 uses
  %i.dw = load i32, ptr %i.bg, align 4, !tbaa !4  ; 3 uses
  %.0388.us = call i32 @llvm.smax.i32(i32 %i.dv, i32 %i.du)
  %.1389.us = call i32 @llvm.smax.i32(i32 %i.dw, i32 %.0388.us)
  %i.dx = icmp sgt i32 %.1389.us, 0
  br i1 %i.dx, label %.preheader489.lr.ph.us, label %.loopexit492.us

.loopexit492.us:                                  ; preds = %._crit_edge532.split.us.us.us.us, %.preheader489.lr.ph.us, %bb.h
  %i.dy = add nsw i32 %.sroa.0212.0555.us, 1
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %exitcond615.not = icmp eq i64 %indvars.iv.next612, %wide.trip.count614
  br i1 %exitcond615.not, label %.loopexit494, label %.lr.ph557.split.us, !llvm.loop !69

.preheader489.lr.ph.us:                           ; preds = %bb.h
  %i.dz = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.ea = sub i32 %i.dz, %i.di                    ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, -1                  ; 2 uses
  %i.ec = add i32 %i.ea, 1                        ; 2 uses
  %i.ed = select i1 %i.eb, i32 %i.ec, i32 0       ; 3 uses
  %factor.op.mul547.us = mul i32 %i.ed, %i.dv
  %i.ee = select i1 %i.dc, i32 %i.de, i32 0       ; 3 uses
  %factor.op.mul546.us = mul i32 %i.dv, %i.ee
  %i.ef = mul i32 %2, %i.du
  %i.eg = add nuw nsw i32 %i.dn, 1
  %i.eh = mul nsw i32 %i.ed, %i.eg
  %i.ei = select i1 %i.do, i32 %i.eh, i32 0
  %i.ej = add nuw nsw i32 %i.cs, 1
  %i.ek = mul nsw i32 %i.ee, %i.ej
  %i.el = select i1 %i.ct, i32 %i.ek, i32 0
  %6 = icmp sgt i32 %i.dw, 0
  %7 = icmp sgt i32 %i.dv, 0
  %i.em = sub i32 %i.ee, %i.du
  %i.en = sub i32 %i.ed, %i.ef
  %i.eo = sub i32 %i.el, %factor.op.mul546.us
  %i.ep = sub i32 %i.ei, %factor.op.mul547.us
  %brmerge.not645 = and i1 %6, %7
  %8 = icmp sgt i32 %i.du, 0
  %or.cond = and i1 %brmerge.not645, %8
  br i1 %or.cond, label %.preheader487.us.us.us.preheader, label %.loopexit492.us

.preheader487.us.us.us.preheader:                 ; preds = %.preheader489.lr.ph.us
  %i.eq = add nsw i32 %i.dl, %i.dt
  %i.er = mul nsw i32 %i.ec, %i.eq
  %i.es = select i1 %i.eb, i32 %i.er, i32 0
  %i.et = add nsw i32 %i.dj, %i.es
  %i.eu = zext nneg i32 %i.du to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.du, 5
  %or.cond681 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %i.eu, 2147483644              ; 5 uses
  %i.ev = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.eu
  br label %.preheader487.us.us.us

.preheader487.us.us.us:                           ; preds = %.preheader487.us.us.us.preheader, %._crit_edge532.split.us.us.us.us
  %.3395542.us.us.us = phi i32 [ %i.gl, %._crit_edge532.split.us.us.us.us ], [ %i.dh, %.preheader487.us.us.us.preheader ]
  %.3403541.us.us.us = phi i32 [ %i.gm, %._crit_edge532.split.us.us.us.us ], [ %i.et, %.preheader487.us.us.us.preheader ]
  %.3420540.us.us.us = phi i32 [ %i.gn, %._crit_edge532.split.us.us.us.us ], [ 0, %.preheader487.us.us.us.preheader ]
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge526.us.us.us.us, %.preheader487.us.us.us
  %.4396531.us.us.us.us = phi i32 [ %.3395542.us.us.us, %.preheader487.us.us.us ], [ %i.gi, %._crit_edge526.us.us.us.us ]
  %.4404530.us.us.us.us = phi i32 [ %.3403541.us.us.us, %.preheader487.us.us.us ], [ %i.gj, %._crit_edge526.us.us.us.us ]
  %.3416529.us.us.us.us = phi i32 [ 0, %.preheader487.us.us.us ], [ %i.gk, %._crit_edge526.us.us.us.us ]
  %i.ew = sext i32 %.4396531.us.us.us.us to i64   ; 5 uses
  %i.ex = sext i32 %.4404530.us.us.us.us to i64   ; 5 uses
  br i1 %or.cond681, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us
  %i.ey = add nsw i64 %i.ci, %i.ew
  %i.ez = shl nsw i64 %i.ey, 3
  %i.fa = shl nsw i64 %i.ex, 3
  %i.fb = add i64 %i.ez, %i.bz
  %i.fc = add i64 %i.fa, %i.a
  %i.fd = sub i64 %i.fb, %i.fc
  %diff.check = icmp ult i64 %i.fd, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fe = add nsw i64 %n.vec, %i.ex               ; 2 uses
  %i.ff = add nsw i64 %n.vec, %i.ew               ; 2 uses
  %invariant.gep699 = getelementptr [8 x i8], ptr %4, i64 %i.ex
  %invariant.gep701 = getelementptr [8 x i8], ptr %i.cj, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep700 = getelementptr [8 x i8], ptr %invariant.gep699, i64 %index ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %gep700, i64 16
  %wide.load = load <2 x double>, ptr %gep700, align 8, !tbaa !53
  %wide.load650 = load <2 x double>, ptr %i.fg, align 8, !tbaa !53
  %gep702 = getelementptr [8 x i8], ptr %invariant.gep701, i64 %index ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %gep702, i64 16
  store <2 x double> %wide.load, ptr %gep702, align 8, !tbaa !53
  store <2 x double> %wide.load650, ptr %i.fh, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge526.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us.us, %middle.block
  %indvars.iv603.ph = phi i64 [ %i.ex, %vector.memcheck ], [ %i.ex, %.preheader.us.us.us.us ], [ %i.fe, %middle.block ] ; 2 uses
  %indvars.iv601.ph = phi i64 [ %i.ew, %vector.memcheck ], [ %i.ew, %.preheader.us.us.us.us ], [ %i.ff, %middle.block ] ; 2 uses
  %.3412522.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us.us ], [ %i.ev, %middle.block ] ; 4 uses
  %i.fj = sub i32 %i.du, %.3412522.us.us.us.us.ph
  %xtraiter691 = and i32 %i.fj, 3                 ; 2 uses
  %lcmp.mod692.not = icmp eq i32 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv603.prol = phi i64 [ %indvars.iv.next604.prol, %scalar.ph.prol ], [ %indvars.iv603.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv601.prol = phi i64 [ %indvars.iv.next602.prol, %scalar.ph.prol ], [ %indvars.iv601.ph, %scalar.ph.preheader ] ; 2 uses
  %.3412522.us.us.us.us.prol = phi i32 [ %i.fn, %scalar.ph.prol ], [ %.3412522.us.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv603.prol
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !53
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv601.prol
  store double %i.fl, ptr %i.fm, align 8, !tbaa !53
  %indvars.iv.next602.prol = add nsw i64 %indvars.iv601.prol, 1 ; 3 uses
  %indvars.iv.next604.prol = add nsw i64 %indvars.iv603.prol, %i.bj ; 3 uses
  %i.fn = add nuw nsw i32 %.3412522.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter691
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !71

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next602.lcssa688.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next602.prol, %scalar.ph.prol ]
  %indvars.iv.next604.lcssa687.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next604.prol, %scalar.ph.prol ]
  %indvars.iv603.unr = phi i64 [ %indvars.iv603.ph, %scalar.ph.preheader ], [ %indvars.iv.next604.prol, %scalar.ph.prol ]
  %indvars.iv601.unr = phi i64 [ %indvars.iv601.ph, %scalar.ph.preheader ], [ %indvars.iv.next602.prol, %scalar.ph.prol ]
  %.3412522.us.us.us.us.unr = phi i32 [ %.3412522.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.fn, %scalar.ph.prol ]
  %i.fo = sub i32 %.3412522.us.us.us.us.ph, %i.du
  %i.fp = icmp ugt i32 %i.fo, -4
  br i1 %i.fp, label %._crit_edge526.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv603 = phi i64 [ %indvars.iv.next604.3, %scalar.ph ], [ %indvars.iv603.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv601 = phi i64 [ %indvars.iv.next602.3, %scalar.ph ], [ %indvars.iv601.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.3412522.us.us.us.us = phi i32 [ %i.gf, %scalar.ph ], [ %.3412522.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fq = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv603
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !53
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv601
  store double %i.fr, ptr %i.fs, align 8, !tbaa !53
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, %i.bj ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next604
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !53
  %i.fv = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv601
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  store double %i.fu, ptr %i.fw, align 8, !tbaa !53
  %indvars.iv.next604.1 = add nsw i64 %indvars.iv.next604, %i.bj ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next604.1
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !53
  %i.fz = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv601
  %i.ga = getelementptr i8, ptr %i.fz, i64 16
  store double %i.fy, ptr %i.ga, align 8, !tbaa !53
  %indvars.iv.next604.2 = add nsw i64 %indvars.iv.next604.1, %i.bj ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next604.2
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !53
  %i.gd = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv601
  %i.ge = getelementptr i8, ptr %i.gd, i64 24
  store double %i.gc, ptr %i.ge, align 8, !tbaa !53
  %indvars.iv.next602.3 = add nsw i64 %indvars.iv601, 4 ; 2 uses
  %indvars.iv.next604.3 = add nsw i64 %indvars.iv.next604.2, %i.bj ; 2 uses
  %i.gf = add nuw nsw i32 %.3412522.us.us.us.us, 4 ; 2 uses
  %exitcond608.not.3 = icmp eq i32 %i.gf, %i.du
  br i1 %exitcond608.not.3, label %._crit_edge526.us.us.us.us, label %scalar.ph, !llvm.loop !72

._crit_edge526.us.us.us.us:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next602.lcssa = phi i64 [ %i.ff, %middle.block ], [ %indvars.iv.next602.lcssa688.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next602.3, %scalar.ph ]
  %indvars.iv.next604.lcssa = phi i64 [ %i.fe, %middle.block ], [ %indvars.iv.next604.lcssa687.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next604.3, %scalar.ph ]
  %i.gg = trunc nsw i64 %indvars.iv.next604.lcssa to i32
  %i.gh = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  %i.gi = add nsw i32 %i.em, %i.gh                ; 2 uses
  %i.gj = add nsw i32 %i.en, %i.gg                ; 2 uses
  %i.gk = add nuw nsw i32 %.3416529.us.us.us.us, 1 ; 2 uses
  %exitcond609.not = icmp eq i32 %i.gk, %i.dv
  br i1 %exitcond609.not, label %._crit_edge532.split.us.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !73

._crit_edge532.split.us.us.us.us:                 ; preds = %._crit_edge526.us.us.us.us
  %i.gl = add nsw i32 %i.eo, %i.gi
  %i.gm = add nsw i32 %i.ep, %i.gj
  %i.gn = add nuw nsw i32 %.3420540.us.us.us, 1   ; 2 uses
  %exitcond610.not = icmp eq i32 %i.gn, %i.dw
  br i1 %exitcond610.not, label %.loopexit492.us, label %.preheader487.us.us.us, !llvm.loop !74

.lr.ph557.split:                                  ; preds = %.lr.ph557, %.loopexit493
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %.loopexit493 ], [ 0, %.lr.ph557 ] ; 2 uses
  %.sroa.0212.0555 = phi i32 [ %i.lc, %.loopexit493 ], [ %i.bt, %.lr.ph557 ] ; 2 uses
  %i.go = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 3 uses
  %i.gp = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv616
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !21
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv596
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gx ; 4 uses
  %i.gz = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.ha = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.hb = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.hc = sub i32 %i.ha, %i.hb
  %i.hd = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.he = load i32, ptr %i.bu, align 4, !tbaa !4  ; 2 uses
  %i.hf = sub i32 %i.hd, %i.he
  %i.hg = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.hh = sub nsw i32 %i.hg, %i.he                ; 3 uses
  %i.hi = icmp sgt i32 %i.hh, -1                  ; 2 uses
  br i1 %i.hi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph557.split
  %i.hj = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.hk = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.hl = sub nsw i32 %i.hj, %i.hk
  %i.hm = add nuw nsw i32 %i.hh, 1
  %i.hn = mul nsw i32 %i.hl, %i.hm
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph557.split, %bb.i
  %i.ho = phi i32 [ %i.hn, %bb.i ], [ 0, %.lr.ph557.split ]
  %i.hp = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.hq = sub i32 %i.hp, %i.hb                    ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, -1                  ; 2 uses
  %i.hs = add nsw i32 %i.hf, %i.ho
  %i.ht = add i32 %i.hq, 1                        ; 2 uses
  %i.hu = mul nsw i32 %i.ht, %i.hs
  %i.hv = select i1 %i.hr, i32 %i.hu, i32 0
  %i.hw = add nsw i32 %i.hc, %i.hv
  %i.hx = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %i.hy = sub i32 %.sroa.0212.0555, %i.hx
  %i.hz = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.ia = sub i32 %i.bp, %i.hz
  %i.ib = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.ic = sub nsw i32 %i.ib, %i.hz                ; 3 uses
  %i.id = icmp sgt i32 %i.ic, -1                  ; 2 uses
  br i1 %i.id, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ie = load i32, ptr %i.be, align 4, !tbaa !4
  %i.if = sub nsw i32 %i.br, %i.ie
  %i.ig = add nuw nsw i32 %i.ic, 1
  %i.ih = mul nsw i32 %i.if, %i.ig
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ii = phi i32 [ %i.ih, %bb.k ], [ 0, %bb.j ]
  %i.ij = load i32, ptr %i.b, align 4, !tbaa !4   ; 10 uses
  %i.ik = load i32, ptr %i.bf, align 4, !tbaa !4  ; 5 uses
  %i.il = load i32, ptr %i.bg, align 4, !tbaa !4  ; 3 uses
  %.0435 = call i32 @llvm.smax.i32(i32 %i.ik, i32 %i.ij)
  %.1436 = call i32 @llvm.smax.i32(i32 %i.il, i32 %.0435)
  %i.im = icmp sgt i32 %.1436, 0
  br i1 %i.im, label %.preheader490.lr.ph, label %.loopexit493

.preheader490.lr.ph:                              ; preds = %bb.l
  %i.in = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.io = sub i32 %i.in, %i.hx                    ; 2 uses
  %i.ip = icmp sgt i32 %i.io, -1                  ; 2 uses
  %i.iq = add i32 %i.io, 1                        ; 2 uses
  %i.ir = select i1 %i.ip, i32 %i.iq, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.ir, %i.ik
  %i.is = select i1 %i.hr, i32 %i.ht, i32 0       ; 3 uses
  %factor.op.mul518 = mul i32 %i.ik, %i.is
  %i.it = mul i32 %2, %i.ij
  %i.iu = add nuw nsw i32 %i.ic, 1
  %i.iv = mul nsw i32 %i.ir, %i.iu
  %i.iw = select i1 %i.id, i32 %i.iv, i32 0
  %i.ix = add nuw nsw i32 %i.hh, 1
  %i.iy = mul nsw i32 %i.is, %i.ix
  %i.iz = select i1 %i.hi, i32 %i.iy, i32 0
  %9 = icmp sgt i32 %i.il, 0
  %10 = icmp sgt i32 %i.ik, 0
  %i.ja = sub i32 %i.is, %i.ij
  %i.jb = sub i32 %i.ir, %i.it
  %i.jc = sub i32 %i.iz, %factor.op.mul518
  %i.jd = sub i32 %i.iw, %factor.op.mul
  %brmerge569.not642 = and i1 %9, %10
  %11 = icmp sgt i32 %i.ij, 0
  %or.cond639 = and i1 %brmerge569.not642, %11
  br i1 %or.cond639, label %.preheader488.us.us.preheader, label %.loopexit493

.preheader488.us.us.preheader:                    ; preds = %.preheader490.lr.ph
  %i.je = add nsw i32 %i.ia, %i.ii
  %i.jf = mul nsw i32 %i.iq, %i.je
  %i.jg = select i1 %i.ip, i32 %i.jf, i32 0
  %i.jh = add nsw i32 %i.hy, %i.jg
  %i.ji = shl nsw i64 %i.gx, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.go, i64 %i.ji
  %scevgep657 = getelementptr i8, ptr %i.go, i64 8
  %i.jj = add nsw i32 %i.ij, -1
  %i.jk = zext i32 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 3                ; 2 uses
  %i.jm = getelementptr i8, ptr %scevgep657, i64 %i.ji
  %scevgep658 = getelementptr i8, ptr %i.jm, i64 %i.jl
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.jl
  %i.jn = zext nneg i32 %i.ij to i64              ; 2 uses
  %min.iters.check665 = icmp ugt i32 %i.ij, 3
  %or.cond682 = and i1 %min.iters.check665, %ident.check654.not
  %n.vec668 = and i64 %i.jn, 2147483644           ; 5 uses
  %i.jo = trunc nuw nsw i64 %n.vec668 to i32
  %cmp.n677 = icmp eq i64 %n.vec668, %i.jn
  br label %.preheader488.us.us

.preheader488.us.us:                              ; preds = %.preheader488.us.us.preheader, %._crit_edge505.split.us.us.us
  %.0392514.us.us = phi i32 [ %i.kz, %._crit_edge505.split.us.us.us ], [ %i.hw, %.preheader488.us.us.preheader ]
  %.0400513.us.us = phi i32 [ %i.la, %._crit_edge505.split.us.us.us ], [ %i.jh, %.preheader488.us.us.preheader ]
  %.1418512.us.us = phi i32 [ %i.lb, %._crit_edge505.split.us.us.us ], [ 0, %.preheader488.us.us.preheader ]
  br label %.preheader486.us.us.us

.preheader486.us.us.us:                           ; preds = %._crit_edge500.us.us.us, %.preheader488.us.us
  %.1393504.us.us.us = phi i32 [ %.0392514.us.us, %.preheader488.us.us ], [ %i.kw, %._crit_edge500.us.us.us ]
  %.1401503.us.us.us = phi i32 [ %.0400513.us.us, %.preheader488.us.us ], [ %i.kx, %._crit_edge500.us.us.us ]
  %.1414502.us.us.us = phi i32 [ 0, %.preheader488.us.us ], [ %i.ky, %._crit_edge500.us.us.us ]
  %i.jp = sext i32 %.1393504.us.us.us to i64      ; 5 uses
  %i.jq = sext i32 %.1401503.us.us.us to i64      ; 5 uses
  br i1 %or.cond682, label %vector.memcheck655, label %scalar.ph664.preheader

vector.memcheck655:                               ; preds = %.preheader486.us.us.us
  %i.jr = shl nsw i64 %i.jp, 3                    ; 2 uses
  %scevgep656 = getelementptr i8, ptr %scevgep, i64 %i.jr
  %scevgep659 = getelementptr i8, ptr %scevgep658, i64 %i.jr
  %i.js = shl nsw i64 %i.jq, 3                    ; 2 uses
  %scevgep660 = getelementptr i8, ptr %4, i64 %i.js
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.js
  %bound0 = icmp ult ptr %scevgep656, %scevgep663
  %bound1 = icmp ult ptr %scevgep660, %scevgep659
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph664.preheader, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck655
  %i.jt = add nsw i64 %n.vec668, %i.jq            ; 2 uses
  %i.ju = add nsw i64 %n.vec668, %i.jp            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.jq
  %invariant.gep697 = getelementptr [8 x i8], ptr %i.gy, i64 %i.jp
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %vector.ph666
  %index670 = phi i64 [ 0, %vector.ph666 ], [ %index.next675, %vector.body669 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index670 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load671 = load <2 x double>, ptr %gep, align 8, !tbaa !53, !alias.scope !75
  %wide.load672 = load <2 x double>, ptr %i.jv, align 8, !tbaa !53, !alias.scope !75
  %gep698 = getelementptr [8 x i8], ptr %invariant.gep697, i64 %index670 ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %gep698, i64 16 ; 2 uses
  %wide.load673 = load <2 x double>, ptr %gep698, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  %wide.load674 = load <2 x double>, ptr %i.jw, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  %i.jx = fadd <2 x double> %wide.load671, %wide.load673
  %i.jy = fadd <2 x double> %wide.load672, %wide.load674
  store <2 x double> %i.jx, ptr %gep698, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  store <2 x double> %i.jy, ptr %i.jw, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  %index.next675 = add nuw i64 %index670, 4       ; 2 uses
  %i.jz = icmp eq i64 %index.next675, %n.vec668
  br i1 %i.jz, label %middle.block676, label %vector.body669, !llvm.loop !80

middle.block676:                                  ; preds = %vector.body669
  br i1 %cmp.n677, label %._crit_edge500.us.us.us, label %scalar.ph664.preheader

scalar.ph664.preheader:                           ; preds = %vector.memcheck655, %.preheader486.us.us.us, %middle.block676
  %indvars.iv589.ph = phi i64 [ %i.jq, %vector.memcheck655 ], [ %i.jq, %.preheader486.us.us.us ], [ %i.jt, %middle.block676 ] ; 3 uses
  %indvars.iv587.ph = phi i64 [ %i.jp, %vector.memcheck655 ], [ %i.jp, %.preheader486.us.us.us ], [ %i.ju, %middle.block676 ] ; 3 uses
  %.1410496.us.us.us.ph = phi i32 [ 0, %vector.memcheck655 ], [ 0, %.preheader486.us.us.us ], [ %i.jo, %middle.block676 ] ; 4 uses
  %i.ka = sub i32 %i.ij, %.1410496.us.us.us.ph
  %.neg = add i32 %.1410496.us.us.us.ph, 1
  %xtraiter = and i32 %i.ka, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph664.prol.loopexit, label %scalar.ph664.prol

scalar.ph664.prol:                                ; preds = %scalar.ph664.preheader
  %i.kb = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv589.ph
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !53
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv587.ph ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !53
  %i.kf = fadd double %i.kc, %i.ke
  store double %i.kf, ptr %i.kd, align 8, !tbaa !53
  %indvars.iv.next588.prol = add nsw i64 %indvars.iv587.ph, 1 ; 2 uses
  %indvars.iv.next590.prol = add nsw i64 %indvars.iv589.ph, %i.bj ; 2 uses
  %i.kg = add nuw nsw i32 %.1410496.us.us.us.ph, 1
  br label %scalar.ph664.prol.loopexit

scalar.ph664.prol.loopexit:                       ; preds = %scalar.ph664.prol, %scalar.ph664.preheader
  %indvars.iv.next588.lcssa685.unr = phi i64 [ poison, %scalar.ph664.preheader ], [ %indvars.iv.next588.prol, %scalar.ph664.prol ]
  %indvars.iv.next590.lcssa684.unr = phi i64 [ poison, %scalar.ph664.preheader ], [ %indvars.iv.next590.prol, %scalar.ph664.prol ]
  %indvars.iv589.unr = phi i64 [ %indvars.iv589.ph, %scalar.ph664.preheader ], [ %indvars.iv.next590.prol, %scalar.ph664.prol ]
  %indvars.iv587.unr = phi i64 [ %indvars.iv587.ph, %scalar.ph664.preheader ], [ %indvars.iv.next588.prol, %scalar.ph664.prol ]
  %.1410496.us.us.us.unr = phi i32 [ %.1410496.us.us.us.ph, %scalar.ph664.preheader ], [ %i.kg, %scalar.ph664.prol ]
  %i.kh = icmp eq i32 %i.ij, %.neg
  br i1 %i.kh, label %._crit_edge500.us.us.us, label %scalar.ph664

scalar.ph664:                                     ; preds = %scalar.ph664.prol.loopexit, %scalar.ph664
  %indvars.iv589 = phi i64 [ %indvars.iv.next590.1, %scalar.ph664 ], [ %indvars.iv589.unr, %scalar.ph664.prol.loopexit ] ; 2 uses
  %indvars.iv587 = phi i64 [ %indvars.iv.next588.1, %scalar.ph664 ], [ %indvars.iv587.unr, %scalar.ph664.prol.loopexit ] ; 3 uses
  %.1410496.us.us.us = phi i32 [ %i.kt, %scalar.ph664 ], [ %.1410496.us.us.us.unr, %scalar.ph664.prol.loopexit ]
  %i.ki = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv589
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !53
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %indvars.iv587 ; 2 uses
  %i.kl = load double, ptr %i.kk, align 8, !tbaa !53
  %i.km = fadd double %i.kj, %i.kl
  store double %i.km, ptr %i.kk, align 8, !tbaa !53
  %indvars.iv.next590 = add nsw i64 %indvars.iv589, %i.bj ; 2 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next590
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !53
  %i.kp = getelementptr [8 x i8], ptr %i.gy, i64 %indvars.iv587
  %i.kq = getelementptr i8, ptr %i.kp, i64 8      ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !53
  %i.ks = fadd double %i.ko, %i.kr
  store double %i.ks, ptr %i.kq, align 8, !tbaa !53
  %indvars.iv.next588.1 = add nsw i64 %indvars.iv587, 2 ; 2 uses
  %indvars.iv.next590.1 = add nsw i64 %indvars.iv.next590, %i.bj ; 2 uses
  %i.kt = add nuw nsw i32 %.1410496.us.us.us, 2   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.kt, %i.ij
  br i1 %exitcond.not.1, label %._crit_edge500.us.us.us, label %scalar.ph664, !llvm.loop !81

._crit_edge500.us.us.us:                          ; preds = %scalar.ph664.prol.loopexit, %scalar.ph664, %middle.block676
  %indvars.iv.next588.lcssa = phi i64 [ %i.ju, %middle.block676 ], [ %indvars.iv.next588.lcssa685.unr, %scalar.ph664.prol.loopexit ], [ %indvars.iv.next588.1, %scalar.ph664 ]
  %indvars.iv.next590.lcssa = phi i64 [ %i.jt, %middle.block676 ], [ %indvars.iv.next590.lcssa684.unr, %scalar.ph664.prol.loopexit ], [ %indvars.iv.next590.1, %scalar.ph664 ]
  %i.ku = trunc nsw i64 %indvars.iv.next590.lcssa to i32
  %i.kv = trunc nsw i64 %indvars.iv.next588.lcssa to i32
  %i.kw = add nsw i32 %i.ja, %i.kv                ; 2 uses
  %i.kx = add nsw i32 %i.jb, %i.ku                ; 2 uses
  %i.ky = add nuw nsw i32 %.1414502.us.us.us, 1   ; 2 uses
  %exitcond594.not = icmp eq i32 %i.ky, %i.ik
  br i1 %exitcond594.not, label %._crit_edge505.split.us.us.us, label %.preheader486.us.us.us, !llvm.loop !82

._crit_edge505.split.us.us.us:                    ; preds = %._crit_edge500.us.us.us
  %i.kz = add nsw i32 %i.jc, %i.kw
  %i.la = add nsw i32 %i.jd, %i.kx
  %i.lb = add nuw nsw i32 %.1418512.us.us, 1      ; 2 uses
  %exitcond595.not = icmp eq i32 %i.lb, %i.il
  br i1 %exitcond595.not, label %.loopexit493, label %.preheader488.us.us, !llvm.loop !83

.loopexit493:                                     ; preds = %._crit_edge505.split.us.us.us, %.preheader490.lr.ph, %bb.l
  %i.lc = add nsw i32 %.sroa.0212.0555, 1
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond599.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count
  br i1 %exitcond599.not, label %.loopexit494, label %.lr.ph557.split, !llvm.loop !69

.loopexit494:                                     ; preds = %.loopexit493, %.loopexit492.us, %bb.d, %.lr.ph563.split
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 2 uses
  %i.ld = load i32, ptr %i.aw, align 8, !tbaa !29
  %i.le = sext i32 %i.ld to i64
  %i.lf = icmp slt i64 %indvars.iv.next617, %i.le
  br i1 %i.lf, label %.lr.ph563.splitthread-pre-split, label %._crit_edge564, !llvm.loop !84

._crit_edge564:                                   ; preds = %.loopexit494, %.lr.ph563, %bb.c
  %i.lg = call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.ao) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge564, %._crit_edge
  %i.lh = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 0
}

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_IntersectBoxes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxDuplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixAssemble(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca [3 x i32], align 4                ; 7 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_1
