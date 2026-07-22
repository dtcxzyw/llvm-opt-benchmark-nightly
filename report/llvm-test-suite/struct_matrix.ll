inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hypre_StructMatrixInitializeShell:bb.a

.lr.ph186:                                        ; preds = %bb.i
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !21  ; 3 uses
  br i1 %i.dq, label %.epil.preheader, label %.lr.ph186.new

.lr.ph188.unr-lcssa:                              ; preds = %bb.n
  br i1 %lcmp.mod.not, label %.lr.ph188, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph188.unr-lcssa, %.lr.ph186
  %indvars.iv210.epil.init = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next211.1, %.lr.ph188.unr-lcssa ] ; 2 uses
  %.1154183.epil.init = phi i32 [ %.0153190, %.lr.ph186 ], [ %.2155.1, %.lr.ph188.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod246)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv210.epil.init
  %i.es = load i32, ptr %i.er, align 4, !tbaa !4
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %bb.j, label %.lr.ph188

bb.j:                                             ; preds = %.epil.preheader
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv210.epil.init
  store i32 %.1154183.epil.init, ptr %i.eu, align 4, !tbaa !4
  %i.ev = add nuw nsw i32 %.1154183.epil.init, %i.en
  br label %.lr.ph188

.lr.ph188:                                        ; preds = %.epil.preheader, %bb.j, %.lr.ph188.unr-lcssa
  %.2155.lcssa = phi i32 [ %.2155.1, %.lr.ph188.unr-lcssa ], [ %i.ev, %bb.j ], [ %.1154183.epil.init, %.epil.preheader ]
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !21
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
  %2 = add i32 %i.am, 1                           ; 2 uses
  %factor.op.mul171.neg = mul i32 %i.af, %.neg
  %3 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %4 = load i32, ptr %3, align 4, !tbaa !4
  %5 = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %6 = load i32, ptr %5, align 4, !tbaa !4
  %7 = sub nsw i32 %4, %6                         ; 2 uses
  %.inv = icmp slt i32 %7, 0
  %i.an = add nuw nsw i32 %7, 1
  %8 = mul nsw i32 %2, %i.an
  %9 = select i1 %.inv, i32 0, i32 %8
  %i.ao = icmp sgt i32 %i.ag, 0
  %i.ap = icmp sgt i32 %i.af, 0
  %10 = sub i32 %2, %i.ae
  %11 = add i32 %9, %factor.op.mul171.neg
  %brmerge.not194 = and i1 %i.ao, %i.ap
  %i.aq = icmp sgt i32 %i.ae, 0
  %or.cond = and i1 %brmerge.not194, %i.aq
  br i1 %or.cond, label %.preheader159.us.us.preheader, label %hypre_StructMatrixExtractPointerByIndex.exit.thread

.preheader159.us.us.preheader:                    ; preds = %.preheader160.lr.ph
  %i.ar = zext nneg i32 %i.ae to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ae, 4
  %n.vec = and i64 %i.ar, 2147483644              ; 4 uses
  %i.as = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  br label %.preheader159.us.us

.preheader159.us.us:                              ; preds = %.preheader159.us.us.preheader, %._crit_edge165.split.us.us.us
  %.0132168.us.us = phi i32 [ %i.bb, %._crit_edge165.split.us.us.us ], [ 0, %.preheader159.us.us.preheader ]
  %.1144167.us.us = phi i32 [ %i.bc, %._crit_edge165.split.us.us.us ], [ 0, %.preheader159.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader159.us.us
  %.1133164.us.us.us = phi i32 [ %.0132168.us.us, %.preheader159.us.us ], [ %i.az, %._crit_edge.us.us.us ]
  %.1142163.us.us.us = phi i32 [ 0, %.preheader159.us.us ], [ %i.ba, %._crit_edge.us.us.us ]
  %i.at = sext i32 %.1133164.us.us.us to i64      ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.us
  %i.au = add nsw i64 %n.vec, %i.at               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.aa, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %gep, align 8, !tbaa !53
  store <2 x double> splat (double 1.000000e+00), ptr %i.av, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ %i.at, %.preheader.us.us.us ], [ %i.au, %middle.block ]
  %.1137161.us.us.us.ph = phi i32 [ 0, %.preheader.us.us.us ], [ %i.as, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1137161.us.us.us = phi i32 [ %i.ay, %scalar.ph ], [ %.1137161.us.us.us.ph, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.ax, align 8, !tbaa !53
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = add nuw nsw i32 %.1137161.us.us.us, 1   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.ae
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %scalar.ph, !llvm.loop !58

._crit_edge.us.us.us:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.au, %middle.block ], [ %indvars.iv.next.a, %scalar.ph ]
  %12 = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %i.az = add nsw i32 %10, %12                    ; 2 uses
  %i.ba = add nuw nsw i32 %.1142163.us.us.us, 1   ; 2 uses
  %exitcond182.not = icmp eq i32 %i.ba, %i.af
  br i1 %exitcond182.not, label %._crit_edge165.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !59

._crit_edge165.split.us.us.us:                    ; preds = %._crit_edge.us.us.us
  %i.bb = add nsw i32 %11, %i.az
  %i.bc = add nuw nsw i32 %.1144167.us.us, 1      ; 2 uses
  %exitcond183.not = icmp eq i32 %i.bc, %i.ag
  br i1 %exitcond183.not, label %hypre_StructMatrixExtractPointerByIndex.exit.thread, label %.preheader159.us.us, !llvm.loop !60

hypre_StructMatrixExtractPointerByIndex.exit.thread: ; preds = %._crit_edge165.split.us.us.us, %.preheader160.lr.ph, %bb.c, %bb.b, %hypre_StructMatrixExtractPointerByIndex.exit
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !29
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next185, %i.be
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !61

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

.lr.ph115.split.us124.us.new:                     ; preds = %.lr.ph115.split.us124.us, %.lr.ph115.split.us124.us.new
  %indvars.iv151 = phi i64 [ %indvars.iv.next152.3, %.lr.ph115.split.us124.us.new ], [ 0, %.lr.ph115.split.us124.us ] ; 6 uses
  %niter195 = phi i64 [ %niter195.next.3, %.lr.ph115.split.us124.us.new ], [ 0, %.lr.ph115.split.us124.us ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv151
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = sext i32 %i.bd to i64
  %gep117.us.us = getelementptr [8 x i8], ptr %invariant.gep116.us.us, i64 %i.be
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv151
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !53
  store double %i.bg, ptr %gep117.us.us, align 8, !tbaa !53
  %indvars.iv.next152 = or disjoint i64 %indvars.iv151, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next152
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = sext i32 %i.bl to i64
  %gep117.us.us.1 = getelementptr [8 x i8], ptr %invariant.gep116.us.us, i64 %i.bm
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next152
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !53
  store double %i.bo, ptr %gep117.us.us.1, align 8, !tbaa !53
  %indvars.iv.next152.1 = or disjoint i64 %indvars.iv151, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next152.1
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = sext i32 %i.bt to i64
  %gep117.us.us.2 = getelementptr [8 x i8], ptr %invariant.gep116.us.us, i64 %i.bu
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next152.1
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !53
  store double %i.bw, ptr %gep117.us.us.2, align 8, !tbaa !53
  %indvars.iv.next152.2 = or disjoint i64 %indvars.iv151, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next152.2
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = sext i32 %i.cb to i64
  %gep117.us.us.3 = getelementptr [8 x i8], ptr %invariant.gep116.us.us, i64 %i.cc
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next152.2
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !53
  store double %i.ce, ptr %gep117.us.us.3, align 8, !tbaa !53
  %indvars.iv.next152.3 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %niter195.next.3 = add i64 %niter195, 4         ; 2 uses
  %niter195.ncmp.3 = icmp eq i64 %niter195.next.3, %unroll_iter194
  br i1 %niter195.ncmp.3, label %..loopexit_crit_edge.us.us.loopexit180.unr-lcssa, label %.lr.ph115.split.us124.us.new, !llvm.loop !62

..loopexit_crit_edge.us.us.loopexit.unr-lcssa:    ; preds = %.lr.ph115.split.us.us.us.new
  br i1 %lcmp.mod199.not, label %..loopexit_crit_edge.us.us, label %.epil.preheader196

.epil.preheader196:                               ; preds = %..loopexit_crit_edge.us.us.loopexit.unr-lcssa, %.lr.ph115.split.us.us.us
  %indvars.iv156.epil.init = phi i64 [ 0, %.lr.ph115.split.us.us.us ], [ %indvars.iv.next157.3, %..loopexit_crit_edge.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod200)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader196
  %indvars.iv156.epil = phi i64 [ %indvars.iv.next157.epil, %bb.g ], [ %indvars.iv156.epil.init, %.epil.preheader196 ] ; 3 uses
  %epil.iter198 = phi i64 [ %epil.iter198.next, %bb.g ], [ 0, %.epil.preheader196 ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv156.epil
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = sext i32 %i.cg to i64
end_hunk_0
begin_hunk_1_@hypre_StructMatrixSetValues:bb.a
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = sext i32 %i.gy to i64
  %gep113.us.epil = getelementptr [8 x i8], ptr %invariant.gep112.us, i64 %i.gz ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv141.epil.init
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !53
  %i.hc = load double, ptr %gep113.us.epil, align 8, !tbaa !53
  %i.hd = fadd double %i.hb, %i.hc
  store double %i.hd, ptr %gep113.us.epil, align 8, !tbaa !53
  br label %..loopexit110_crit_edge.us

..loopexit110_crit_edge.us.loopexit181.unr-lcssa: ; preds = %.lr.ph.split.us134.new
  br i1 %lcmp.mod.not, label %..loopexit110_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit110_crit_edge.us.loopexit181.unr-lcssa, %.lr.ph.split.us134
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.us134 ], [ %indvars.iv.next.1, %..loopexit110_crit_edge.us.loopexit181.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !4
  %i.hj = sext i32 %i.hi to i64
  %gep.us.epil = getelementptr [8 x i8], ptr %invariant.gep.us, i64 %i.hj ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !53
  %i.hm = load double, ptr %gep.us.epil, align 8, !tbaa !53
  %i.hn = fadd double %i.hl, %i.hm
  store double %i.hn, ptr %gep.us.epil, align 8, !tbaa !53
  br label %..loopexit110_crit_edge.us

..loopexit110_crit_edge.us:                       ; preds = %.epil.preheader, %..loopexit110_crit_edge.us.loopexit181.unr-lcssa, %.epil.preheader184, %..loopexit110_crit_edge.us.loopexit.unr-lcssa, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph121.split.split.us
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge, label %.lr.ph121.split.split.us, !llvm.loop !66

.lr.ph.split.us134:                               ; preds = %.preheader109.us
  %i.ho = mul nsw i32 %i.fz, %i.fr
  %i.hp = select i1 %.inv.us, i32 0, i32 %i.ho
  %i.hq = add nsw i32 %i.fo, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %invariant.gep.us = getelementptr [8 x i8], ptr %i.fg, i64 %i.hr ; 3 uses
  br i1 %i.eq, label %.epil.preheader, label %.lr.ph.split.us134.new

.lr.ph.split.us.us:                               ; preds = %.preheader109.us
  %i.hs = add nuw nsw i32 %i.fu, 1
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !4
  %i.hv = sub nsw i32 %i.fb, %i.hu
  %i.hw = mul nsw i32 %i.hv, %i.hs
  %i.hx = add nsw i32 %i.fr, %i.hw
  %i.hy = mul nsw i32 %i.fz, %i.hx
  %i.hz = select i1 %.inv.us, i32 0, i32 %i.hy
  %i.ia = add nsw i32 %i.fo, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %invariant.gep112.us = getelementptr [8 x i8], ptr %i.fg, i64 %i.ib ; 3 uses
  br i1 %i.er, label %.epil.preheader184, label %.lr.ph.split.us.us.new

.lr.ph.split.us.us.new:                           ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.us.new
  %indvars.iv141 = phi i64 [ %indvars.iv.next142.1, %.lr.ph.split.us.us.new ], [ 0, %.lr.ph.split.us.us ] ; 4 uses
  %niter189 = phi i64 [ %niter189.next.1, %.lr.ph.split.us.us.new ], [ 0, %.lr.ph.split.us.us ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv141
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !4
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !4
  %i.ih = sext i32 %i.ig to i64
  %gep113.us = getelementptr [8 x i8], ptr %invariant.gep112.us, i64 %i.ih ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv141
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !53
  %i.ik = load double, ptr %gep113.us, align 8, !tbaa !53
  %i.il = fadd double %i.ij, %i.ik
  store double %i.il, ptr %gep113.us, align 8, !tbaa !53
  %indvars.iv.next142 = or disjoint i64 %indvars.iv141, 1 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next142
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !4
  %i.ir = sext i32 %i.iq to i64
  %gep113.us.1 = getelementptr [8 x i8], ptr %invariant.gep112.us, i64 %i.ir ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next142
  %i.it = load double, ptr %i.is, align 8, !tbaa !53
  %i.iu = load double, ptr %gep113.us.1, align 8, !tbaa !53
  %i.iv = fadd double %i.it, %i.iu
  store double %i.iv, ptr %gep113.us.1, align 8, !tbaa !53
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %niter189.next.1 = add i64 %niter189, 2         ; 2 uses
  %niter189.ncmp.1 = icmp eq i64 %niter189.next.1, %unroll_iter188
  br i1 %niter189.ncmp.1, label %..loopexit110_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.split.us.us.new, !llvm.loop !67

._crit_edge:                                      ; preds = %..loopexit110_crit_edge.us, %..loopexit_crit_edge.us.us, %.lr.ph121.split, %.lr.ph121.split.us, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixSetBoxValues(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29
  %i.i = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.h) #11 ; 6 uses
  %i.j = tail call ptr @hypre_BoxCreate() #11     ; 9 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !29
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
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
  %.sroa.0212.0555.us = phi i32 [ %i.dx, %.loopexit492.us ], [ %i.bt, %.lr.ph557 ] ; 2 uses
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
  %6 = sub i32 %.sroa.0212.0555.us, %i.di
  %i.dj = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.dk = sub i32 %i.bp, %i.dj
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.dm = sub nsw i32 %i.dl, %i.dj                ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, -1                  ; 2 uses
  br i1 %i.dn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.do = load i32, ptr %i.be, align 4, !tbaa !4
  %i.dp = sub nsw i32 %i.br, %i.do
  %i.dq = add nuw nsw i32 %i.dm, 1
  %i.dr = mul nsw i32 %i.dp, %i.dq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ds = phi i32 [ %i.dr, %bb.g ], [ 0, %bb.f ]
  %i.dt = load i32, ptr %i.b, align 4, !tbaa !4   ; 9 uses
  %i.du = load i32, ptr %i.bf, align 4, !tbaa !4  ; 5 uses
  %i.dv = load i32, ptr %i.bg, align 4, !tbaa !4  ; 3 uses
  %.0388.us = call i32 @llvm.smax.i32(i32 %i.du, i32 %i.dt)
  %.1389.us = call i32 @llvm.smax.i32(i32 %i.dv, i32 %.0388.us)
  %i.dw = icmp sgt i32 %.1389.us, 0
  br i1 %i.dw, label %.preheader489.lr.ph.us, label %.loopexit492.us

.loopexit492.us:                                  ; preds = %._crit_edge532.split.us.us.us.us, %.preheader489.lr.ph.us, %bb.h
  %i.dx = add nsw i32 %.sroa.0212.0555.us, 1
  %indvars.iv.next612 = add nuw nsw i64 %indvars.iv611, 1 ; 2 uses
  %exitcond615.not = icmp eq i64 %indvars.iv.next612, %wide.trip.count614
  br i1 %exitcond615.not, label %.loopexit494, label %.lr.ph557.split.us, !llvm.loop !69

.preheader489.lr.ph.us:                           ; preds = %bb.h
  %7 = load i32, ptr %i.ar, align 4, !tbaa !4
  %8 = sub i32 %7, %i.di                          ; 2 uses
  %9 = icmp sgt i32 %8, -1                        ; 2 uses
  %10 = add i32 %8, 1                             ; 2 uses
  %i.dy = select i1 %9, i32 %10, i32 0            ; 3 uses
  %factor.op.mul547.us = mul i32 %i.dy, %i.du
  %i.dz = select i1 %i.dc, i32 %i.de, i32 0       ; 3 uses
  %factor.op.mul546.us = mul i32 %i.du, %i.dz
  %11 = mul i32 %2, %i.dt
  %i.ea = add nuw nsw i32 %i.dm, 1
  %i.eb = mul nsw i32 %i.dy, %i.ea
  %i.ec = select i1 %i.dn, i32 %i.eb, i32 0
  %i.ed = add nuw nsw i32 %i.cs, 1
  %i.ee = mul nsw i32 %i.dz, %i.ed
  %i.ef = select i1 %i.ct, i32 %i.ee, i32 0
  %i.eg = icmp sgt i32 %i.dv, 0
  %i.eh = icmp sgt i32 %i.du, 0
  %12 = sub i32 %i.dz, %i.dt
  %13 = sub i32 %i.dy, %11
  %14 = sub i32 %i.ef, %factor.op.mul546.us
  %15 = sub i32 %i.ec, %factor.op.mul547.us
  %brmerge.not645 = and i1 %i.eg, %i.eh
  %i.ei = icmp sgt i32 %i.dt, 0
  %or.cond = and i1 %brmerge.not645, %i.ei
  br i1 %or.cond, label %.preheader487.us.us.us.preheader, label %.loopexit492.us

.preheader487.us.us.us.preheader:                 ; preds = %.preheader489.lr.ph.us
  %i.ej = add nsw i32 %i.dk, %i.ds
  %16 = mul nsw i32 %10, %i.ej
  %17 = select i1 %9, i32 %16, i32 0
  %18 = add nsw i32 %6, %17
  %i.ek = zext nneg i32 %i.dt to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.dt, 7
  %or.cond681 = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %i.ek, 2147483644              ; 5 uses
  %i.el = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ek
  br label %.preheader487.us.us.us

.preheader487.us.us.us:                           ; preds = %.preheader487.us.us.us.preheader, %._crit_edge532.split.us.us.us.us
  %.3395542.us.us.us = phi i32 [ %i.fx, %._crit_edge532.split.us.us.us.us ], [ %i.dh, %.preheader487.us.us.us.preheader ]
  %.3403541.us.us.us = phi i32 [ %i.fy, %._crit_edge532.split.us.us.us.us ], [ %18, %.preheader487.us.us.us.preheader ]
  %.3420540.us.us.us = phi i32 [ %i.fz, %._crit_edge532.split.us.us.us.us ], [ 0, %.preheader487.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.a

.preheader.us.us.us.us.a:                         ; preds = %._crit_edge526.us.us.us.us, %.preheader487.us.us.us
  %.4396531.us.us.us.us = phi i32 [ %.3395542.us.us.us, %.preheader487.us.us.us ], [ %i.fu, %._crit_edge526.us.us.us.us ]
  %.4404530.us.us.us.us = phi i32 [ %.3403541.us.us.us, %.preheader487.us.us.us ], [ %i.fv, %._crit_edge526.us.us.us.us ]
  %.3416529.us.us.us.us.a = phi i32 [ 0, %.preheader487.us.us.us ], [ %i.fw, %._crit_edge526.us.us.us.us ]
  %19 = sext i32 %.4396531.us.us.us.us to i64     ; 5 uses
  %20 = sext i32 %.4404530.us.us.us.us to i64     ; 5 uses
  br i1 %or.cond681, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us.a
  %i.em = add nsw i64 %i.ci, %19
  %i.en = shl nsw i64 %i.em, 3
  %i.eo = shl nsw i64 %20, 3
  %i.ep = add i64 %i.en, %i.bz
  %i.eq = add i64 %i.eo, %i.a
  %i.er = sub i64 %i.eq, %i.ep
  %diff.check = icmp ugt i64 %i.er, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.es = add nsw i64 %n.vec, %20                 ; 2 uses
  %i.et = add nsw i64 %n.vec, %19                 ; 2 uses
  %invariant.gep699 = getelementptr [8 x i8], ptr %4, i64 %20
  %invariant.gep701 = getelementptr [8 x i8], ptr %i.cj, i64 %19
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep700 = getelementptr [8 x i8], ptr %invariant.gep699, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep700, i64 16
  %wide.load = load <2 x double>, ptr %gep700, align 8, !tbaa !53
  %wide.load650 = load <2 x double>, ptr %i.eu, align 8, !tbaa !53
  %gep702 = getelementptr [8 x i8], ptr %invariant.gep701, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep702, i64 16
  store <2 x double> %wide.load, ptr %gep702, align 8, !tbaa !53
  store <2 x double> %wide.load650, ptr %i.ev, align 8, !tbaa !53
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge526.us.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us.us.a, %middle.block
  %indvars.iv603.ph = phi i64 [ %20, %vector.memcheck ], [ %20, %.preheader.us.us.us.us.a ], [ %i.es, %middle.block ] ; 2 uses
  %indvars.iv601.ph = phi i64 [ %19, %vector.memcheck ], [ %19, %.preheader.us.us.us.us.a ], [ %i.et, %middle.block ] ; 2 uses
  %.3412522.us.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us.us.a ], [ %i.el, %middle.block ] ; 4 uses
  %i.ex = sub i32 %i.dt, %.3412522.us.us.us.us.ph
  %xtraiter691 = and i32 %i.ex, 3                 ; 2 uses
  %lcmp.mod692.not = icmp eq i32 %xtraiter691, 0
  br i1 %lcmp.mod692.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv603.prol = phi i64 [ %indvars.iv.next604.prol.a, %scalar.ph.prol ], [ %indvars.iv603.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv601.prol = phi i64 [ %indvars.iv.next602.prol, %scalar.ph.prol ], [ %indvars.iv601.ph, %scalar.ph.preheader ] ; 2 uses
  %.3412522.us.us.us.us.prol = phi i32 [ %i.fb, %scalar.ph.prol ], [ %.3412522.us.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ey = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv603.prol
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !53
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv601.prol
  store double %i.ez, ptr %i.fa, align 8, !tbaa !53
  %indvars.iv.next602.prol = add nsw i64 %indvars.iv601.prol, 1 ; 3 uses
  %indvars.iv.next604.prol.a = add nsw i64 %indvars.iv603.prol, %i.bj ; 3 uses
  %i.fb = add nuw nsw i32 %.3412522.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter691
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !71

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next602.lcssa688.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next602.prol, %scalar.ph.prol ]
  %indvars.iv.next604.lcssa687.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next604.prol.a, %scalar.ph.prol ]
  %indvars.iv603.unr.a = phi i64 [ %indvars.iv603.ph, %scalar.ph.preheader ], [ %indvars.iv.next604.prol.a, %scalar.ph.prol ]
  %indvars.iv601.unr = phi i64 [ %indvars.iv601.ph, %scalar.ph.preheader ], [ %indvars.iv.next602.prol, %scalar.ph.prol ]
  %.3412522.us.us.us.us.unr = phi i32 [ %.3412522.us.us.us.us.ph, %scalar.ph.preheader ], [ %i.fb, %scalar.ph.prol ]
  %i.fc = sub i32 %.3412522.us.us.us.us.ph, %i.dt
  %i.fd = icmp ugt i32 %i.fc, -4
  br i1 %i.fd, label %._crit_edge526.us.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv603.a = phi i64 [ %indvars.iv.next604.3, %scalar.ph ], [ %indvars.iv603.unr.a, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv601.a = phi i64 [ %indvars.iv.next602.3, %scalar.ph ], [ %indvars.iv601.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.3412522.us.us.us.us = phi i32 [ %i.ft, %scalar.ph ], [ %.3412522.us.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.fe = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv603.a
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !53
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %indvars.iv601.a
  store double %i.ff, ptr %i.fg, align 8, !tbaa !53
  %indvars.iv.next604.a = add nsw i64 %indvars.iv603.a, %i.bj ; 2 uses
  %i.fh = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next604.a
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !53
  %i.fj = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv601.a
  %i.fk = getelementptr i8, ptr %i.fj, i64 8
  store double %i.fi, ptr %i.fk, align 8, !tbaa !53
  %indvars.iv.next604.1.a = add nsw i64 %indvars.iv.next604.a, %i.bj ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next604.1.a
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !53
  %i.fn = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv601.a
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  store double %i.fm, ptr %i.fo, align 8, !tbaa !53
  %indvars.iv.next604.2 = add nsw i64 %indvars.iv.next604.1.a, %i.bj ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next604.2
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !53
  %i.fr = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv601.a
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  store double %i.fq, ptr %i.fs, align 8, !tbaa !53
  %indvars.iv.next602.3 = add nsw i64 %indvars.iv601.a, 4 ; 2 uses
  %indvars.iv.next604.3 = add nsw i64 %indvars.iv.next604.2, %i.bj ; 2 uses
  %i.ft = add nuw nsw i32 %.3412522.us.us.us.us, 4 ; 2 uses
  %exitcond608.not.3 = icmp eq i32 %i.ft, %i.dt
  br i1 %exitcond608.not.3, label %._crit_edge526.us.us.us.us, label %scalar.ph, !llvm.loop !72

._crit_edge526.us.us.us.us:                       ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next602.lcssa = phi i64 [ %i.et, %middle.block ], [ %indvars.iv.next602.lcssa688.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next602.3, %scalar.ph ]
  %indvars.iv.next604.lcssa = phi i64 [ %i.es, %middle.block ], [ %indvars.iv.next604.lcssa687.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next604.3, %scalar.ph ]
  %21 = trunc nsw i64 %indvars.iv.next604.lcssa to i32
  %22 = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  %i.fu = add nsw i32 %12, %22                    ; 2 uses
  %i.fv = add nsw i32 %13, %21                    ; 2 uses
  %i.fw = add nuw nsw i32 %.3416529.us.us.us.us.a, 1 ; 2 uses
  %exitcond609.not.a = icmp eq i32 %i.fw, %i.du
  br i1 %exitcond609.not.a, label %._crit_edge532.split.us.us.us.us, label %.preheader.us.us.us.us.a, !llvm.loop !73

._crit_edge532.split.us.us.us.us:                 ; preds = %._crit_edge526.us.us.us.us
  %i.fx = add nsw i32 %14, %i.fu
  %i.fy = add nsw i32 %15, %i.fv
  %i.fz = add nuw nsw i32 %.3420540.us.us.us, 1   ; 2 uses
  %exitcond610.not = icmp eq i32 %i.fz, %i.dv
  br i1 %exitcond610.not, label %.loopexit492.us, label %.preheader487.us.us.us, !llvm.loop !74

.lr.ph557.split:                                  ; preds = %.lr.ph557, %.loopexit493
  %indvars.iv596 = phi i64 [ %indvars.iv.next597, %.loopexit493 ], [ 0, %.lr.ph557 ] ; 2 uses
  %.sroa.0212.0555 = phi i32 [ %i.kc, %.loopexit493 ], [ %i.bt, %.lr.ph557 ] ; 2 uses
  %i.ga = load ptr, ptr %i.ba, align 8, !tbaa !19 ; 3 uses
  %i.gb = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv616
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !21
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv596
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gj ; 4 uses
  %i.gl = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.gm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.gn = load i32, ptr %i.bn, align 4, !tbaa !4  ; 2 uses
  %i.go = sub i32 %i.gm, %i.gn
  %i.gp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.gq = load i32, ptr %i.bu, align 4, !tbaa !4  ; 2 uses
  %i.gr = sub i32 %i.gp, %i.gq
  %i.gs = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.gt = sub nsw i32 %i.gs, %i.gq                ; 3 uses
  %i.gu = icmp sgt i32 %i.gt, -1                  ; 2 uses
  br i1 %i.gu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph557.split
  %i.gv = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.gw = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.gx = sub nsw i32 %i.gv, %i.gw
  %i.gy = add nuw nsw i32 %i.gt, 1
  %i.gz = mul nsw i32 %i.gx, %i.gy
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph557.split, %bb.i
  %i.ha = phi i32 [ %i.gz, %bb.i ], [ 0, %.lr.ph557.split ]
  %i.hb = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.hc = sub i32 %i.hb, %i.gn                    ; 2 uses
  %i.hd = icmp sgt i32 %i.hc, -1                  ; 2 uses
  %i.he = add nsw i32 %i.gr, %i.ha
  %i.hf = add i32 %i.hc, 1                        ; 2 uses
  %i.hg = mul nsw i32 %i.hf, %i.he
  %i.hh = select i1 %i.hd, i32 %i.hg, i32 0
  %i.hi = add nsw i32 %i.go, %i.hh
  %i.hj = load i32, ptr %i.ao, align 4, !tbaa !4  ; 2 uses
  %23 = sub i32 %.sroa.0212.0555, %i.hj
  %i.hk = load i32, ptr %i.bc, align 4, !tbaa !4  ; 2 uses
  %i.hl = sub i32 %i.bp, %i.hk
  %i.hm = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.hn = sub nsw i32 %i.hm, %i.hk                ; 3 uses
  %i.ho = icmp sgt i32 %i.hn, -1                  ; 2 uses
  br i1 %i.ho, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.hp = load i32, ptr %i.be, align 4, !tbaa !4
  %i.hq = sub nsw i32 %i.br, %i.hp
  %i.hr = add nuw nsw i32 %i.hn, 1
  %i.hs = mul nsw i32 %i.hq, %i.hr
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ht = phi i32 [ %i.hs, %bb.k ], [ 0, %bb.j ]
  %i.hu = load i32, ptr %i.b, align 4, !tbaa !4   ; 10 uses
  %i.hv = load i32, ptr %i.bf, align 4, !tbaa !4  ; 5 uses
  %i.hw = load i32, ptr %i.bg, align 4, !tbaa !4  ; 3 uses
  %.0435 = call i32 @llvm.smax.i32(i32 %i.hv, i32 %i.hu)
  %.1436 = call i32 @llvm.smax.i32(i32 %i.hw, i32 %.0435)
  %i.hx = icmp sgt i32 %.1436, 0
  br i1 %i.hx, label %.preheader490.lr.ph, label %.loopexit493

.preheader490.lr.ph:                              ; preds = %bb.l
  %24 = load i32, ptr %i.ar, align 4, !tbaa !4
  %25 = sub i32 %24, %i.hj                        ; 2 uses
  %26 = icmp sgt i32 %25, -1                      ; 2 uses
  %27 = add i32 %25, 1                            ; 2 uses
  %i.hy = select i1 %26, i32 %27, i32 0           ; 3 uses
  %factor.op.mul = mul i32 %i.hy, %i.hv
  %i.hz = select i1 %i.hd, i32 %i.hf, i32 0       ; 3 uses
  %factor.op.mul518 = mul i32 %i.hv, %i.hz
  %28 = mul i32 %2, %i.hu
  %i.ia = add nuw nsw i32 %i.hn, 1
  %i.ib = mul nsw i32 %i.hy, %i.ia
  %i.ic = select i1 %i.ho, i32 %i.ib, i32 0
  %i.id = add nuw nsw i32 %i.gt, 1
  %i.ie = mul nsw i32 %i.hz, %i.id
  %i.if = select i1 %i.gu, i32 %i.ie, i32 0
  %i.ig = icmp sgt i32 %i.hw, 0
  %i.ih = icmp sgt i32 %i.hv, 0
  %29 = sub i32 %i.hz, %i.hu
  %30 = sub i32 %i.hy, %28
  %31 = sub i32 %i.if, %factor.op.mul518
  %32 = sub i32 %i.ic, %factor.op.mul
  %brmerge569.not642 = and i1 %i.ig, %i.ih
  %i.ii = icmp sgt i32 %i.hu, 0
  %or.cond639 = and i1 %brmerge569.not642, %i.ii
  br i1 %or.cond639, label %.preheader488.us.us.preheader, label %.loopexit493

.preheader488.us.us.preheader:                    ; preds = %.preheader490.lr.ph
  %i.ij = add nsw i32 %i.hl, %i.ht
  %33 = mul nsw i32 %27, %i.ij
  %34 = select i1 %26, i32 %33, i32 0
  %35 = add nsw i32 %23, %34
  %i.ik = shl nsw i64 %i.gj, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ga, i64 %i.ik
  %scevgep657 = getelementptr i8, ptr %i.ga, i64 8
  %i.il = add nsw i32 %i.hu, -1
  %i.im = zext i32 %i.il to i64
  %i.in = shl nuw nsw i64 %i.im, 3                ; 2 uses
  %i.io = getelementptr i8, ptr %scevgep657, i64 %i.ik
  %scevgep658 = getelementptr i8, ptr %i.io, i64 %i.in
  %scevgep662 = getelementptr i8, ptr %scevgep661, i64 %i.in
  %i.ip = zext nneg i32 %i.hu to i64              ; 2 uses
  %min.iters.check665 = icmp ugt i32 %i.hu, 3
  %or.cond682 = and i1 %min.iters.check665, %ident.check654.not
  %n.vec668 = and i64 %i.ip, 2147483644           ; 5 uses
  %i.iq = trunc nuw nsw i64 %n.vec668 to i32
  %cmp.n677 = icmp eq i64 %n.vec668, %i.ip
  br label %.preheader488.us.us

.preheader488.us.us:                              ; preds = %.preheader488.us.us.preheader, %._crit_edge505.split.us.us.us
  %.0392514.us.us = phi i32 [ %i.jz, %._crit_edge505.split.us.us.us ], [ %i.hi, %.preheader488.us.us.preheader ]
  %.0400513.us.us = phi i32 [ %i.ka, %._crit_edge505.split.us.us.us ], [ %35, %.preheader488.us.us.preheader ]
  %.1418512.us.us = phi i32 [ %i.kb, %._crit_edge505.split.us.us.us ], [ 0, %.preheader488.us.us.preheader ]
  br label %.preheader486.us.us.us

.preheader486.us.us.us:                           ; preds = %._crit_edge500.us.us.us, %.preheader488.us.us
  %.1393504.us.us.us = phi i32 [ %.0392514.us.us, %.preheader488.us.us ], [ %i.jw, %._crit_edge500.us.us.us ]
  %.1401503.us.us.us = phi i32 [ %.0400513.us.us, %.preheader488.us.us ], [ %i.jx, %._crit_edge500.us.us.us ]
  %.1414502.us.us.us = phi i32 [ 0, %.preheader488.us.us ], [ %i.jy, %._crit_edge500.us.us.us ]
  %i.ir = sext i32 %.1393504.us.us.us to i64      ; 5 uses
  %i.is = sext i32 %.1401503.us.us.us to i64      ; 5 uses
  br i1 %or.cond682, label %vector.memcheck655, label %scalar.ph664.preheader

vector.memcheck655:                               ; preds = %.preheader486.us.us.us
  %i.it = shl nsw i64 %i.ir, 3                    ; 2 uses
  %scevgep656 = getelementptr i8, ptr %scevgep, i64 %i.it
  %scevgep659 = getelementptr i8, ptr %scevgep658, i64 %i.it
  %i.iu = shl nsw i64 %i.is, 3                    ; 2 uses
  %scevgep660 = getelementptr i8, ptr %4, i64 %i.iu
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.iu
  %bound0 = icmp ult ptr %scevgep656, %scevgep663
  %bound1 = icmp ult ptr %scevgep660, %scevgep659
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph664.preheader, label %vector.ph666

vector.ph666:                                     ; preds = %vector.memcheck655
  %i.iv = add nsw i64 %n.vec668, %i.is            ; 2 uses
  %i.iw = add nsw i64 %n.vec668, %i.ir            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.is
  %invariant.gep697 = getelementptr [8 x i8], ptr %i.gk, i64 %i.ir
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %vector.ph666
  %index670 = phi i64 [ 0, %vector.ph666 ], [ %index.next675, %vector.body669 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index670 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load671 = load <2 x double>, ptr %gep, align 8, !tbaa !53, !alias.scope !75
  %wide.load672 = load <2 x double>, ptr %i.ix, align 8, !tbaa !53, !alias.scope !75
  %gep698 = getelementptr [8 x i8], ptr %invariant.gep697, i64 %index670 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %gep698, i64 16 ; 2 uses
  %wide.load673 = load <2 x double>, ptr %gep698, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  %wide.load674 = load <2 x double>, ptr %i.iy, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  %i.iz = fadd <2 x double> %wide.load671, %wide.load673
  %i.ja = fadd <2 x double> %wide.load672, %wide.load674
  store <2 x double> %i.iz, ptr %gep698, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  store <2 x double> %i.ja, ptr %i.iy, align 8, !tbaa !53, !alias.scope !78, !noalias !75
  %index.next675 = add nuw i64 %index670, 4       ; 2 uses
  %i.jb = icmp eq i64 %index.next675, %n.vec668
  br i1 %i.jb, label %middle.block676, label %vector.body669, !llvm.loop !80

middle.block676:                                  ; preds = %vector.body669
  br i1 %cmp.n677, label %._crit_edge500.us.us.us, label %scalar.ph664.preheader

scalar.ph664.preheader:                           ; preds = %vector.memcheck655, %.preheader486.us.us.us, %middle.block676
  %indvars.iv589.ph = phi i64 [ %i.is, %vector.memcheck655 ], [ %i.is, %.preheader486.us.us.us ], [ %i.iv, %middle.block676 ] ; 3 uses
  %indvars.iv587.ph = phi i64 [ %i.ir, %vector.memcheck655 ], [ %i.ir, %.preheader486.us.us.us ], [ %i.iw, %middle.block676 ] ; 3 uses
  %.1410496.us.us.us.ph = phi i32 [ 0, %vector.memcheck655 ], [ 0, %.preheader486.us.us.us ], [ %i.iq, %middle.block676 ] ; 4 uses
  %i.jc = sub i32 %i.hu, %.1410496.us.us.us.ph
  %.neg = add i32 %.1410496.us.us.us.ph, 1
  %xtraiter = and i32 %i.jc, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph664.prol.loopexit, label %scalar.ph664.prol

scalar.ph664.prol:                                ; preds = %scalar.ph664.preheader
  %i.jd = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv589.ph
  %i.je = load double, ptr %i.jd, align 8, !tbaa !53
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %indvars.iv587.ph ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !53
  %i.jh = fadd double %i.je, %i.jg
  store double %i.jh, ptr %i.jf, align 8, !tbaa !53
  %indvars.iv.next588.prol = add nsw i64 %indvars.iv587.ph, 1 ; 2 uses
  %indvars.iv.next590.prol = add nsw i64 %indvars.iv589.ph, %i.bj ; 2 uses
  %i.ji = add nuw nsw i32 %.1410496.us.us.us.ph, 1
  br label %scalar.ph664.prol.loopexit

scalar.ph664.prol.loopexit:                       ; preds = %scalar.ph664.prol, %scalar.ph664.preheader
  %indvars.iv.next588.lcssa685.unr = phi i64 [ poison, %scalar.ph664.preheader ], [ %indvars.iv.next588.prol, %scalar.ph664.prol ]
  %indvars.iv.next590.lcssa684.unr = phi i64 [ poison, %scalar.ph664.preheader ], [ %indvars.iv.next590.prol, %scalar.ph664.prol ]
  %indvars.iv589.unr = phi i64 [ %indvars.iv589.ph, %scalar.ph664.preheader ], [ %indvars.iv.next590.prol, %scalar.ph664.prol ]
  %indvars.iv587.unr = phi i64 [ %indvars.iv587.ph, %scalar.ph664.preheader ], [ %indvars.iv.next588.prol, %scalar.ph664.prol ]
  %.1410496.us.us.us.unr = phi i32 [ %.1410496.us.us.us.ph, %scalar.ph664.preheader ], [ %i.ji, %scalar.ph664.prol ]
  %i.jj = icmp eq i32 %i.hu, %.neg
  br i1 %i.jj, label %._crit_edge500.us.us.us, label %scalar.ph664

scalar.ph664:                                     ; preds = %scalar.ph664.prol.loopexit, %scalar.ph664
  %indvars.iv589 = phi i64 [ %indvars.iv.next590.1, %scalar.ph664 ], [ %indvars.iv589.unr, %scalar.ph664.prol.loopexit ] ; 2 uses
  %indvars.iv587 = phi i64 [ %indvars.iv.next588.1, %scalar.ph664 ], [ %indvars.iv587.unr, %scalar.ph664.prol.loopexit ] ; 3 uses
  %.1410496.us.us.us = phi i32 [ %i.jv, %scalar.ph664 ], [ %.1410496.us.us.us.unr, %scalar.ph664.prol.loopexit ]
  %i.jk = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv589
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !53
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %indvars.iv587 ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !53
  %i.jo = fadd double %i.jl, %i.jn
  store double %i.jo, ptr %i.jm, align 8, !tbaa !53
  %indvars.iv.next590 = add nsw i64 %indvars.iv589, %i.bj ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %4, i64 %indvars.iv.next590
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !53
  %i.jr = getelementptr [8 x i8], ptr %i.gk, i64 %indvars.iv587
  %i.js = getelementptr i8, ptr %i.jr, i64 8      ; 2 uses
  %i.jt = load double, ptr %i.js, align 8, !tbaa !53
  %i.ju = fadd double %i.jq, %i.jt
  store double %i.ju, ptr %i.js, align 8, !tbaa !53
  %indvars.iv.next588.1 = add nsw i64 %indvars.iv587, 2 ; 2 uses
  %indvars.iv.next590.1 = add nsw i64 %indvars.iv.next590, %i.bj ; 2 uses
  %i.jv = add nuw nsw i32 %.1410496.us.us.us, 2   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.jv, %i.hu
  br i1 %exitcond.not.1, label %._crit_edge500.us.us.us, label %scalar.ph664, !llvm.loop !81

._crit_edge500.us.us.us:                          ; preds = %scalar.ph664.prol.loopexit, %scalar.ph664, %middle.block676
  %indvars.iv.next588.lcssa = phi i64 [ %i.iw, %middle.block676 ], [ %indvars.iv.next588.lcssa685.unr, %scalar.ph664.prol.loopexit ], [ %indvars.iv.next588.1, %scalar.ph664 ]
  %indvars.iv.next590.lcssa = phi i64 [ %i.iv, %middle.block676 ], [ %indvars.iv.next590.lcssa684.unr, %scalar.ph664.prol.loopexit ], [ %indvars.iv.next590.1, %scalar.ph664 ]
  %36 = trunc nsw i64 %indvars.iv.next590.lcssa to i32
  %37 = trunc nsw i64 %indvars.iv.next588.lcssa to i32
  %i.jw = add nsw i32 %29, %37                    ; 2 uses
  %i.jx = add nsw i32 %30, %36                    ; 2 uses
  %i.jy = add nuw nsw i32 %.1414502.us.us.us, 1   ; 2 uses
  %exitcond594.not = icmp eq i32 %i.jy, %i.hv
  br i1 %exitcond594.not, label %._crit_edge505.split.us.us.us, label %.preheader486.us.us.us, !llvm.loop !82

._crit_edge505.split.us.us.us:                    ; preds = %._crit_edge500.us.us.us
  %i.jz = add nsw i32 %31, %i.jw
  %i.ka = add nsw i32 %32, %i.jx
  %i.kb = add nuw nsw i32 %.1418512.us.us, 1      ; 2 uses
  %exitcond595.not = icmp eq i32 %i.kb, %i.hw
  br i1 %exitcond595.not, label %.loopexit493, label %.preheader488.us.us, !llvm.loop !83

.loopexit493:                                     ; preds = %._crit_edge505.split.us.us.us, %.preheader490.lr.ph, %bb.l
  %i.kc = add nsw i32 %.sroa.0212.0555, 1
  %indvars.iv.next597 = add nuw nsw i64 %indvars.iv596, 1 ; 2 uses
  %exitcond599.not = icmp eq i64 %indvars.iv.next597, %wide.trip.count
  br i1 %exitcond599.not, label %.loopexit494, label %.lr.ph557.split, !llvm.loop !69

.loopexit494:                                     ; preds = %.loopexit493, %.loopexit492.us, %bb.d, %.lr.ph563.split
  %indvars.iv.next617 = add nuw nsw i64 %indvars.iv616, 1 ; 2 uses
  %i.kd = load i32, ptr %i.aw, align 8, !tbaa !29
  %i.ke = sext i32 %i.kd to i64
  %i.kf = icmp slt i64 %indvars.iv.next617, %i.ke
  br i1 %i.kf, label %.lr.ph563.splitthread-pre-split, label %._crit_edge564, !llvm.loop !84

._crit_edge564:                                   ; preds = %.loopexit494, %.lr.ph563, %bb.c
  %i.kg = call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.ao) #11 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge564, %._crit_edge
  %i.kh = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #11 ; 0 uses
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

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.e, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 1, ptr %i.j, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = call i32 @hypre_CreateCommInfoFromNumGhost(ptr noundef %i.m, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !86
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28   ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !88
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !39
  %i.w = load i32, ptr %0, align 8, !tbaa !22
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = call ptr @hypre_CommPkgCreate(ptr noundef %i.o, ptr noundef %i.p, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.r, ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t, i32 noundef %i.v, i32 noundef %i.w, ptr noundef nonnull %i.y) #11 ; 2 uses
  store ptr %i.z, ptr %i.g, align 8, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.h, %bb.a ], [ %i.z, %bb.b ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 2 uses
  %i.ac = call i32 @hypre_InitializeCommunication(ptr noundef %.0, ptr noundef %i.ab, ptr noundef %i.ab, ptr noundef nonnull %i.f) #11 ; 0 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.ae = call i32 @hypre_FinalizeCommunication(ptr noundef %i.ad) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

declare i32 @hypre_CreateCommInfoFromNumGhost(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_CommPkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeCommunication(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeCommunication(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_StructMatrixSetNumGhost(ptr nofree noundef writeonly captures(none) initializes((88, 112)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.b, ptr %i.a, align 4, !tbaa !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.d, ptr %i.e, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.g, ptr %i.h, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.j, ptr %i.k, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.m, ptr %i.n, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %i.p, ptr %i.q, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructMatrixPrint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i32, ptr %1, align 8, !tbaa !22
  %i.d = call i32 @hypre_MPI_Comm_rank(i32 noundef %i.c, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !4
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %0, i32 noundef %i.e) #11 ; 0 uses
  %i.g = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1) ; 12 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %i.a) ; 0 uses
  call void @exit(i32 noundef 1) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = call i64 @fwrite(ptr nonnull @.str.3, i64 13, i64 1, ptr nonnull %i.g) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.4, i32 noundef %i.l) #11 ; 0 uses
  %i.n = call i64 @fwrite(ptr nonnull @.str.5, i64 7, i64 1, ptr nonnull %i.g) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35   ; 2 uses
  %i.q = call i32 @hypre_StructGridPrint(ptr noundef nonnull %i.g, ptr noundef %i.p) #11 ; 0 uses
  %i.r = call i64 @fwrite(ptr nonnull @.str.6, i64 10, i64 1, ptr nonnull %i.g) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !39   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.7, i32 noundef %i.w) #11 ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !37 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.ad = phi i32 [ %i.ap, %bb.e ], [ %i.ab, %bb.c ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.045 = phi i32 [ %.1, %bb.e ], [ 0, %bb.c ]    ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ah = add nsw i32 %.045, 1
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.8, i32 noundef %.045, i32 noundef %i.aj, i32 noundef %i.al, i32 noundef %i.an) #11 ; 0 uses
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.ap = phi i32 [ %.pre, %bb.d ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.ah, %bb.d ], [ %.045, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
end_hunk_1
