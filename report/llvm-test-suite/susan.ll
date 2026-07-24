inline.NumInlined: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@int_to_uchar
define dso_local i32 @int_to_uchar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge40

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !4      ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader57, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi52 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.e, %vector.body ]
  %vec.phi53 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.f, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <4 x i32>, ptr %i.c, align 4, !tbaa !4 ; 2 uses
  %wide.load54 = load <4 x i32>, ptr %i.d, align 4, !tbaa !4 ; 2 uses
  %i.e = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi52) ; 2 uses
  %i.f = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load54, <4 x i32> %vec.phi53) ; 2 uses
  %i.g = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.h = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load54, <4 x i32> %vec.phi51) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.g, <4 x i32> %i.h)
  %i.j = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax55 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.e, <4 x i32> %i.f)
  %i.k = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax55) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph39.preheader, label %.lr.ph.preheader57

.lr.ph.preheader57:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.035.ph = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.02634.ph = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader57, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader57 ] ; 2 uses
  %.035 = phi i32 [ %.1, %.lr.ph ], [ %.035.ph, %.lr.ph.preheader57 ]
  %.02634 = phi i32 [ %spec.select, %.lr.ph ], [ %.02634.ph, %.lr.ph.preheader57 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4    ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %.02634) ; 2 uses
  %.1 = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %.035) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph39.preheader, label %.lr.ph, !llvm.loop !17

.lr.ph39.preheader:                               ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.k, %middle.block ], [ %spec.select, %.lr.ph ]
  %.1.lcssa = phi i32 [ %i.j, %middle.block ], [ %.1, %.lr.ph ] ; 4 uses
  %i.n = sub nsw i32 %spec.select.lcssa, %.1.lcssa ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.o = icmp eq i32 %2, 1
  br i1 %i.o, label %.lr.ph39.epil.preheader, label %.lr.ph39.preheader.new

.lr.ph39.preheader.new:                           ; preds = %.lr.ph39.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph39

.lr.ph39:                                         ; preds = %.lr.ph39, %.lr.ph39.preheader.new
  %indvars.iv42 = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %indvars.iv.next43.1, %.lr.ph39 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph39.preheader.new ], [ %niter.next.1, %.lr.ph39 ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sub nsw i32 %i.q, %.1.lcssa
  %i.s = mul nsw i32 %i.r, 255
  %i.t = sdiv i32 %i.s, %i.n
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv42
  store i8 %i.u, ptr %i.v, align 1, !tbaa !18
  %indvars.iv.next43 = or disjoint i64 %indvars.iv42, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next43
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sub nsw i32 %i.x, %.1.lcssa
  %i.z = mul nsw i32 %i.y, 255
  %i.aa = sdiv i32 %i.z, %i.n
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next43
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !18
  %indvars.iv.next43.1 = add nuw nsw i64 %indvars.iv42, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge40.loopexit.unr-lcssa, label %.lr.ph39, !llvm.loop !19

._crit_edge40.loopexit.unr-lcssa:                 ; preds = %.lr.ph39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge40, label %.lr.ph39.epil.preheader

.lr.ph39.epil.preheader:                          ; preds = %._crit_edge40.loopexit.unr-lcssa, %.lr.ph39.preheader
  %indvars.iv42.epil.init = phi i64 [ 0, %.lr.ph39.preheader ], [ %indvars.iv.next43.1, %._crit_edge40.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod63 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42.epil.init
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sub nsw i32 %i.ae, %.1.lcssa
  %i.ag = mul nsw i32 %i.af, 255
  %i.ah = sdiv i32 %i.ag, %i.n
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv42.epil.init
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !18
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %.lr.ph39.epil.preheader, %._crit_edge40.loopexit.unr-lcssa, %bb.a
  ret i32 undef
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local void @setup_brightness_lut(ptr nofree noundef captures(none) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 258
  store ptr %i.b, ptr %0, align 8, !tbaa !11
  %i.c = sitofp i32 %1 to float                   ; 2 uses
  %i.d = icmp eq i32 %2, 6
  br i1 %i.d, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %.split.us ], [ -256, %bb.a ] ; 3 uses
  %i.e = trunc nsw i64 %indvars.iv22 to i32
  %i.f = sitofp i32 %i.e to float
  %i.g = fdiv float %i.f, %i.c                    ; 2 uses
  %i.h = fmul float %i.g, %i.g                    ; 3 uses
  %i.i = fneg float %i.h
  %i.j = fmul float %i.h, %i.i
  %i.k = fmul float %i.h, %i.j
  %i.l = fpext float %i.k to double
  %i.m = tail call double @exp(double noundef %i.l) #21, !tbaa !4
  %i.n = fmul double %i.m, 1.000000e+02
  %i.o = fptrunc double %i.n to float
  %i.p = fptoui float %i.o to i8
  %i.q = load ptr, ptr %0, align 8, !tbaa !11
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %indvars.iv22
  store i8 %i.p, ptr %i.r, align 1, !tbaa !18
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1 ; 2 uses
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 257
  br i1 %exitcond25.not, label %.split19.us, label %.split.us, !llvm.loop !20

.split:                                           ; preds = %bb.a, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split ], [ -256, %bb.a ] ; 3 uses
  %i.s = trunc nsw i64 %indvars.iv to i32
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv float %i.t, %i.c                    ; 2 uses
  %i.v = fneg float %i.u
  %i.w = fmul float %i.u, %i.v
  %i.x = fpext float %i.w to double
  %i.y = tail call double @exp(double noundef %i.x) #21, !tbaa !4
  %i.z = fmul double %i.y, 1.000000e+02
  %i.aa = fptrunc double %i.z to float
  %i.ab = fptoui float %i.aa to i8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !11
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %indvars.iv
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 257
  br i1 %exitcond.not, label %.split19.us, label %.split, !llvm.loop !20

.split19.us:                                      ; preds = %.split, %.split.us
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @susan_principle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = mul nsw i32 %5, %4
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false)
  %i.d = add nsw i32 %5, -3
  %i.e = icmp sgt i32 %5, 6
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge153.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = add i32 %4, -3                           ; 2 uses
  %i.g = icmp sgt i32 %4, 6
  %i.h = sext i32 %i.f to i64                     ; 2 uses
  %i.i = add nsw i32 %4, -5
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = add nsw i32 %4, -6
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  br i1 %i.g, label %.preheader.preheader, label %._crit_edge153.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.m = zext nneg i32 %4 to i64
  %wide.trip.count158 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.f to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv155 = phi i64 [ 3, %.preheader.preheader ], [ %indvars.iv.next156, %._crit_edge ] ; 3 uses
  %i.n = add nsw i64 %indvars.iv155, -3
  %i.o = mul nsw i64 %i.n, %i.m
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = trunc i64 %indvars.iv155 to i32
  %i.r = mul i32 %4, %i.q
  %i.s = zext i32 %i.r to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 3, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  %i.v = add nuw nsw i64 %indvars.iv, %i.s        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %i.y ; 36 uses
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !18
  %i.ab = zext i8 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !18
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.af, 100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.t, align 1, !tbaa !18
  %i.aj = zext i8 %i.ai to i64
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.z, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
  %i.an = zext i8 %i.am to i32
  %i.ao = add nuw nsw i32 %i.ag, %i.an
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !18
  %i.aq = zext i8 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.z, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %i.au = zext i8 %i.at to i32
  %i.av = add nuw nsw i32 %i.ao, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.ah, i64 %i.h ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.az = zext i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  %i.bb = getelementptr inbounds i8, ptr %i.z, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nuw nsw i32 %i.av, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.bg = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.bh = zext i8 %i.bg to i64
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.z, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !18
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.be, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 3
  %i.bo = load i8, ptr %i.bf, align 1, !tbaa !18
  %i.bp = zext i8 %i.bo to i64
  %i.bq = sub nsw i64 0, %i.bp
  %i.br = getelementptr inbounds i8, ptr %i.z, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bm, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.bw = load i8, ptr %i.bn, align 1, !tbaa !18
  %i.bx = zext i8 %i.bw to i64
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.z, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !18
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nuw nsw i32 %i.bu, %i.cb
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !18
  %i.ce = zext i8 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.z, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !18
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nuw nsw i32 %i.cc, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.bv, i64 %i.j ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = load i8, ptr %i.ck, align 1, !tbaa !18
  %i.cn = zext i8 %i.cm to i64
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.z, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !18
  %i.cr = zext i8 %i.cq to i32
  %i.cs = add nuw nsw i32 %i.cj, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cu = load i8, ptr %i.cl, align 1, !tbaa !18
  %i.cv = zext i8 %i.cu to i64
  %i.cw = sub nsw i64 0, %i.cv
  %i.cx = getelementptr inbounds i8, ptr %i.z, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !18
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cs, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.dc = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.dd = zext i8 %i.dc to i64
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds i8, ptr %i.z, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !18
  %i.dh = zext i8 %i.dg to i32
  %i.di = add nuw nsw i32 %i.da, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.dk = load i8, ptr %i.db, align 1, !tbaa !18
  %i.dl = zext i8 %i.dk to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.z, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nuw nsw i32 %i.di, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ck, i64 5
  %i.ds = load i8, ptr %i.dj, align 1, !tbaa !18
  %i.dt = zext i8 %i.ds to i64
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.z, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !18
  %i.dx = zext i8 %i.dw to i32
  %i.dy = add nuw nsw i32 %i.dq, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ck, i64 6 ; 2 uses
  %i.ea = load i8, ptr %i.dr, align 1, !tbaa !18
  %i.eb = zext i8 %i.ea to i64
  %i.ec = sub nsw i64 0, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.z, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nuw nsw i32 %i.dy, %i.ef
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !18
  %i.ei = zext i8 %i.eh to i64
  %i.ej = sub nsw i64 0, %i.ei
  %i.ek = getelementptr inbounds i8, ptr %i.z, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !18
  %i.em = zext i8 %i.el to i32
  %i.en = add nuw nsw i32 %i.eg, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.dz, i64 %i.l ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.eq = load i8, ptr %i.eo, align 1, !tbaa !18
  %i.er = zext i8 %i.eq to i64
  %i.es = sub nsw i64 0, %i.er
  %i.et = getelementptr inbounds i8, ptr %i.z, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !18
  %i.ev = zext i8 %i.eu to i32
  %i.ew = add nuw nsw i32 %i.en, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.ey = load i8, ptr %i.ep, align 1, !tbaa !18
  %i.ez = zext i8 %i.ey to i64
  %i.fa = sub nsw i64 0, %i.ez
  %i.fb = getelementptr inbounds i8, ptr %i.z, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fd = zext i8 %i.fc to i32
  %i.fe = add nuw nsw i32 %i.ew, %i.fd
  %i.ff = load i8, ptr %i.ex, align 1, !tbaa !18
  %i.fg = zext i8 %i.ff to i64
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = getelementptr inbounds i8, ptr %i.z, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !18
  %i.fk = zext i8 %i.fj to i32
  %i.fl = add nuw nsw i32 %i.fe, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eo, i64 5
  %i.fo = load i8, ptr %i.fm, align 1, !tbaa !18
  %i.fp = zext i8 %i.fo to i64
  %i.fq = sub nsw i64 0, %i.fp
  %i.fr = getelementptr inbounds i8, ptr %i.z, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !18
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nuw nsw i32 %i.fl, %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eo, i64 6 ; 2 uses
  %i.fw = load i8, ptr %i.fn, align 1, !tbaa !18
  %i.fx = zext i8 %i.fw to i64
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %i.z, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !18
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nuw nsw i32 %i.fu, %i.gb
  %i.gd = load i8, ptr %i.fv, align 1, !tbaa !18
  %i.ge = zext i8 %i.gd to i64
  %i.gf = sub nsw i64 0, %i.ge
  %i.gg = getelementptr inbounds i8, ptr %i.z, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !18
  %i.gi = zext i8 %i.gh to i32
  %i.gj = add nuw nsw i32 %i.gc, %i.gi
  %i.gk = getelementptr inbounds i8, ptr %i.fv, i64 %i.l ; 7 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  %i.gm = load i8, ptr %i.gk, align 1, !tbaa !18
  %i.gn = zext i8 %i.gm to i64
  %i.go = sub nsw i64 0, %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.z, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.gr = zext i8 %i.gq to i32
  %i.gs = add nuw nsw i32 %i.gj, %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.gu = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gv = zext i8 %i.gu to i64
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.z, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !18
  %i.gz = zext i8 %i.gy to i32
  %i.ha = add nuw nsw i32 %i.gs, %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gk, i64 3
  %i.hc = load i8, ptr %i.gt, align 1, !tbaa !18
  %i.hd = zext i8 %i.hc to i64
  %i.he = sub nsw i64 0, %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.z, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !18
  %i.hh = zext i8 %i.hg to i32
  %i.hi = add nuw nsw i32 %i.ha, %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.hk = load i8, ptr %i.hb, align 1, !tbaa !18
  %i.hl = zext i8 %i.hk to i64
  %i.hm = sub nsw i64 0, %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.z, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !18
  %i.hp = zext i8 %i.ho to i32
  %i.hq = add nuw nsw i32 %i.hi, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gk, i64 5
  %i.hs = load i8, ptr %i.hj, align 1, !tbaa !18
  %i.ht = zext i8 %i.hs to i64
  %i.hu = sub nsw i64 0, %i.ht
  %i.hv = getelementptr inbounds i8, ptr %i.z, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !18
  %i.hx = zext i8 %i.hw to i32
  %i.hy = add nuw nsw i32 %i.hq, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gk, i64 6 ; 2 uses
  %i.ia = load i8, ptr %i.hr, align 1, !tbaa !18
  %i.ib = zext i8 %i.ia to i64
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.z, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !18
  %i.if = zext i8 %i.ie to i32
  %i.ig = add nuw nsw i32 %i.hy, %i.if
  %i.ih = load i8, ptr %i.hz, align 1, !tbaa !18
  %i.ii = zext i8 %i.ih to i64
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = getelementptr inbounds i8, ptr %i.z, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !18
  %i.im = zext i8 %i.il to i32
  %i.in = add nuw nsw i32 %i.ig, %i.im
  %i.io = getelementptr inbounds i8, ptr %i.hz, i64 %i.j ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.iq = load i8, ptr %i.io, align 1, !tbaa !18
  %i.ir = zext i8 %i.iq to i64
  %i.is = sub nsw i64 0, %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.z, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !18
  %i.iv = zext i8 %i.iu to i32
  %i.iw = add nuw nsw i32 %i.in, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.io, i64 2
  %i.iy = load i8, ptr %i.ip, align 1, !tbaa !18
  %i.iz = zext i8 %i.iy to i64
  %i.ja = sub nsw i64 0, %i.iz
  %i.jb = getelementptr inbounds i8, ptr %i.z, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !18
  %i.jd = zext i8 %i.jc to i32
  %i.je = add nuw nsw i32 %i.iw, %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.io, i64 3
  %i.jg = load i8, ptr %i.ix, align 1, !tbaa !18
  %i.jh = zext i8 %i.jg to i64
  %i.ji = sub nsw i64 0, %i.jh
  %i.jj = getelementptr inbounds i8, ptr %i.z, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !18
  %i.jl = zext i8 %i.jk to i32
  %i.jm = add nuw nsw i32 %i.je, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.io, i64 4 ; 2 uses
  %i.jo = load i8, ptr %i.jf, align 1, !tbaa !18
  %i.jp = zext i8 %i.jo to i64
  %i.jq = sub nsw i64 0, %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.z, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !18
  %i.jt = zext i8 %i.js to i32
  %i.ju = add nuw nsw i32 %i.jm, %i.jt
  %i.jv = load i8, ptr %i.jn, align 1, !tbaa !18
  %i.jw = zext i8 %i.jv to i64
  %i.jx = sub nsw i64 0, %i.jw
  %i.jy = getelementptr inbounds i8, ptr %i.z, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !18
  %i.ka = zext i8 %i.jz to i32
  %i.kb = add nuw nsw i32 %i.ju, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.jn, i64 %i.h ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 1
  %i.ke = load i8, ptr %i.kc, align 1, !tbaa !18
  %i.kf = zext i8 %i.ke to i64
  %i.kg = sub nsw i64 0, %i.kf
  %i.kh = getelementptr inbounds i8, ptr %i.z, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !18
  %i.kj = zext i8 %i.ki to i32
  %i.kk = add nuw nsw i32 %i.kb, %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.km = load i8, ptr %i.kd, align 1, !tbaa !18
  %i.kn = zext i8 %i.km to i64
  %i.ko = sub nsw i64 0, %i.kn
  %i.kp = getelementptr inbounds i8, ptr %i.z, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !18
  %i.kr = zext i8 %i.kq to i32
  %i.ks = add nuw nsw i32 %i.kk, %i.kr
  %i.kt = load i8, ptr %i.kl, align 1, !tbaa !18
  %i.ku = zext i8 %i.kt to i64
  %i.kv = sub nsw i64 0, %i.ku
  %i.kw = getelementptr inbounds i8, ptr %i.z, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !18
  %i.ky = zext i8 %i.kx to i32
  %i.kz = add nuw nsw i32 %i.ks, %i.ky            ; 2 uses
  %.not = icmp sgt i32 %i.kz, %3
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.la = sub nsw i32 %3, %i.kz
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge153.split, label %.preheader, !llvm.loop !22

._crit_edge153.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @susan_principle_small(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = mul nsw i32 %5, %4
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false)
  %i.d = add nsw i32 %5, -1
  %i.e = icmp sgt i32 %5, 2
  br i1 %i.e, label %.preheader.lr.ph, label %._crit_edge59.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.f = icmp sgt i32 %4, 2
  %i.g = add nsw i32 %4, -2
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  br i1 %i.f, label %.preheader.preheader, label %._crit_edge59.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.i = add nsw i32 %4, -1
  %i.j = zext nneg i32 %4 to i64
  %wide.trip.count64 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.i to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv61 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next62, %._crit_edge ] ; 3 uses
  %i.k = add nsw i64 %indvars.iv61, -1
  %i.l = mul nsw i64 %i.k, %i.j
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = trunc i64 %indvars.iv61 to i32
  %i.o = mul i32 %4, %i.n
  %i.p = zext i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.s = add nuw nsw i64 %indvars.iv, %i.p        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 8 uses
  %i.x = load i8, ptr %i.r, align 1, !tbaa !18
  %i.y = zext i8 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.q, align 1, !tbaa !18
  %i.ag = zext i8 %i.af to i64
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ad, %i.ak
  %i.am = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.an = zext i8 %i.am to i64
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.w, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %i.al, %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.ae, i64 %i.h ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !18
  %i.av = zext i8 %i.au to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.w, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nuw nsw i32 %i.as, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 2 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !18
  %i.bd = zext i8 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.w, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !18
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nuw nsw i32 %i.ba, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %i.bb, i64 %i.h ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !18
  %i.bm = zext i8 %i.bl to i64
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds i8, ptr %i.w, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bi, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bt = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bu = zext i8 %i.bt to i64
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.w, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nuw nsw i32 %i.br, %i.by
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !18
  %i.cb = zext i8 %i.ca to i64
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.w, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nuw nsw i32 %i.bz, %i.cf            ; 2 uses
  %i.ch = icmp samesign ult i32 %i.cg, 731
  br i1 %i.ch, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ci = sub nuw nsw i32 730, %i.cg
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.s
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge59.split, label %.preheader, !llvm.loop !24

._crit_edge59.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 undef
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @median(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #11 {
.lr.ph.preheader:
  %i.a = add nsw i32 %1, -1
  %i.b = mul nsw i32 %3, %i.a
  %i.c = add nsw i32 %i.b, %2
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr i8, ptr %0, i64 %i.d       ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 2 uses
  %i.h = load i8, ptr %i.e, align 1, !tbaa !18    ; 2 uses
  %i.i = getelementptr i8, ptr %i.e, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18    ; 3 uses
  %i.k = mul nsw i32 %3, %1
  %i.l = add nsw i32 %i.k, %2
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr i8, ptr %0, i64 %i.m       ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !18    ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18    ; 2 uses
  %i.s = add nsw i32 %1, 1
  %i.t = mul nsw i32 %3, %i.s
  %i.u = add nsw i32 %i.t, %2
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr i8, ptr %0, i64 %i.v       ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18    ; 2 uses
  %i.z = load i8, ptr %i.w, align 1, !tbaa !18    ; 2 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !18
  %spec.select125 = tail call i8 @llvm.umax.i8(i8 %i.g, i8 %i.h) ; 2 uses
  %spec.select124.v = tail call i8 @llvm.umin.i8(i8 %i.g, i8 %i.h) ; 2 uses
  %spec.select124 = zext i8 %spec.select124.v to i32 ; 2 uses
  %.sroa.44.13126 = tail call i8 @llvm.umax.i8(i8 %spec.select125, i8 %i.j) ; 2 uses
  %.sroa.17.17.v = tail call i8 @llvm.umin.i8(i8 %spec.select125, i8 %i.j)
  %.sroa.17.17 = zext i8 %.sroa.17.17.v to i32    ; 2 uses
  %.sroa.67.12127 = tail call i8 @llvm.umax.i8(i8 %.sroa.44.13126, i8 %i.p) ; 2 uses
  %.sroa.44.14.v = tail call i8 @llvm.umin.i8(i8 %.sroa.44.13126, i8 %i.p)
  %.sroa.44.14 = zext i8 %.sroa.44.14.v to i32    ; 2 uses
  %.sroa.87.9128 = tail call i8 @llvm.umax.i8(i8 %.sroa.67.12127, i8 %i.r) ; 2 uses
  %.sroa.67.13.v = tail call i8 @llvm.umin.i8(i8 %.sroa.67.12127, i8 %i.r)
  %.sroa.67.13 = zext i8 %.sroa.67.13.v to i32    ; 2 uses
  %.sroa.103.4129 = tail call i8 @llvm.umax.i8(i8 %.sroa.87.9128, i8 %i.y) ; 2 uses
  %.sroa.87.10.v = tail call i8 @llvm.umin.i8(i8 %.sroa.87.9128, i8 %i.y)
  %.sroa.87.10 = zext i8 %.sroa.87.10.v to i32    ; 2 uses
  %.sroa.114.1130 = tail call i8 @llvm.umax.i8(i8 %.sroa.103.4129, i8 %i.z)
  %.sroa.103.5.v = tail call i8 @llvm.umin.i8(i8 %.sroa.103.4129, i8 %i.z)
  %.sroa.103.5 = zext i8 %.sroa.103.5.v to i32    ; 2 uses
  %i.ac = tail call i8 @llvm.umin.i8(i8 %.sroa.114.1130, i8 %i.ab)
  %.sroa.114.2 = zext i8 %i.ac to i32
  %i.ad = icmp ult i8 %i.j, %spec.select124.v     ; 2 uses
  %.sroa.17.2 = select i1 %i.ad, i32 %spec.select124, i32 %.sroa.17.17 ; 2 uses
  %.sroa.0.2 = select i1 %i.ad, i32 %.sroa.17.17, i32 %spec.select124 ; 2 uses
  %.sroa.44.11 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.2, i32 %.sroa.44.14) ; 2 uses
  %.sroa.17.16 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.2, i32 %.sroa.44.14) ; 2 uses
  %.sroa.67.10 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.11, i32 %.sroa.67.13) ; 2 uses
  %.sroa.44.12 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.11, i32 %.sroa.67.13) ; 3 uses
  %.sroa.87.7 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.10, i32 %.sroa.87.10) ; 2 uses
  %.sroa.67.11 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.10, i32 %.sroa.87.10) ; 2 uses
  %.sroa.103.2 = tail call i32 @llvm.umax.i32(i32 %.sroa.87.7, i32 %.sroa.103.5)
  %.sroa.87.8 = tail call i32 @llvm.umin.i32(i32 %.sroa.87.7, i32 %.sroa.103.5) ; 2 uses
  %.sroa.103.3 = tail call i32 @llvm.umin.i32(i32 %.sroa.103.2, i32 %.sroa.114.2)
  %.sroa.17.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.0.2, i32 %.sroa.17.16) ; 2 uses
  %.sroa.0.4 = tail call i32 @llvm.umin.i32(i32 %.sroa.0.2, i32 %.sroa.17.16) ; 3 uses
  %.sroa.44.9 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.4, i32 %.sroa.44.12) ; 2 uses
  %.sroa.17.15 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.4, i32 %.sroa.44.12) ; 2 uses
  %.sroa.67.8 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.9, i32 %.sroa.67.11) ; 2 uses
  %.sroa.44.10 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.9, i32 %.sroa.67.11) ; 2 uses
  %.sroa.87.5 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.8, i32 %.sroa.87.8)
  %.sroa.67.9 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.8, i32 %.sroa.87.8) ; 2 uses
  %.sroa.87.6 = tail call i32 @llvm.umin.i32(i32 %.sroa.87.5, i32 %.sroa.103.3) ; 2 uses
  %i.ae = icmp samesign ult i32 %.sroa.44.12, %.sroa.0.4 ; 2 uses
  %.sroa.17.6 = select i1 %i.ae, i32 %.sroa.0.4, i32 %.sroa.17.15 ; 2 uses
  %.sroa.0.6 = select i1 %i.ae, i32 %.sroa.17.15, i32 %.sroa.0.4
  %.sroa.44.7 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.6, i32 %.sroa.44.10) ; 2 uses
  %.sroa.17.14 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.6, i32 %.sroa.44.10)
  %.sroa.67.6 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.7, i32 %.sroa.67.9) ; 2 uses
  %.sroa.44.8 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.7, i32 %.sroa.67.9)
  %.sroa.87.4 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.6, i32 %.sroa.87.6)
  %.sroa.67.7 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.6, i32 %.sroa.87.6)
  %.sroa.17.8 = tail call i32 @llvm.umax.i32(i32 %.sroa.0.6, i32 %.sroa.17.14)
  %.sroa.44.5 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.8, i32 %.sroa.44.8)
  %.sroa.67.5 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.5, i32 %.sroa.67.7)
  %i.af = add nuw nsw i32 %.sroa.87.4, %.sroa.67.5
  %i.ag = lshr i32 %i.af, 1
  %i.ah = trunc nuw i32 %i.ag to i8
  ret i8 %i.ah
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @enlarge(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) local_unnamed_addr #12 {
bb.a:
end_hunk_0
begin_hunk_1_@susan_thin:bb.a
  %i.kj = shl nsw i32 %.1373.us, 1
  %i.kk = add nsw i32 %i.kj, %.1369435.us
  %i.kl = mul nsw i32 %i.kk, %2
  %i.km = add nuw nsw i32 %i.kl, %.0436.us
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 %i.kn ; 3 uses
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !18
  %i.kq = icmp ugt i8 %i.kp, 7
  br i1 %i.kq, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.kr = getelementptr i8, ptr %i.ko, i64 -1
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !18
  %i.kt = icmp ugt i8 %i.ks, 7
  br i1 %i.kt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ku = getelementptr i8, ptr %i.ko, i64 1
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !18
  %i.kw = icmp ugt i8 %i.kv, 7
  br i1 %i.kw, label %._crit_edge, label %bb.aj

._crit_edge:                                      ; preds = %bb.ai
  %.pre = mul nsw i32 %.1369435.us, %2
  %.pre452 = add nuw nsw i32 %.pre, %.0436.us
  br label %bb.an

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  br i1 %i.jw, label %bb.ak, label %.thread410.us

bb.ak:                                            ; preds = %bb.aj
  %i.kx = mul nsw i32 %.1369435.us, %2
  %i.ky = add nuw nsw i32 %i.kx, %.0436.us        ; 2 uses
  %i.kz = shl nsw i32 %.1375.us, 1                ; 3 uses
  %i.la = add nsw i32 %i.ky, %i.kz
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !18
  %i.le = icmp ugt i8 %i.ld, 7
  br i1 %i.le, label %bb.al, label %.thread410.us

bb.al:                                            ; preds = %bb.ak
  %i.lf = add nsw i32 %i.kz, %i.jd
  %i.lg = zext nneg i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !18
  %i.lj = icmp ugt i8 %i.li, 7
  br i1 %i.lj, label %bb.am, label %.thread410.us

bb.am:                                            ; preds = %bb.al
  %i.lk = add nsw i32 %i.kz, %i.iq
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !18
  %i.lo = icmp ugt i8 %i.ln, 7
  br i1 %i.lo, label %bb.an, label %.thread410.us

bb.an:                                            ; preds = %._crit_edge, %bb.am
  %.pre-phi453 = phi i32 [ %.pre452, %._crit_edge ], [ %i.ky, %bb.am ]
  %i.lp = zext nneg i32 %.pre-phi453 to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 %i.lp
  store i8 100, ptr %i.lq, align 1, !tbaa !18
  %i.lr = getelementptr inbounds i8, ptr %1, i64 %i.kb
  store i8 3, ptr %i.lr, align 1, !tbaa !18
  br label %.thread410.us

bb.ao:                                            ; preds = %bb.aa, %bb.z
  %i.ls = load i8, ptr %i.is, align 1, !tbaa !18
  %i.lt = icmp ult i8 %i.ls, 8                    ; 2 uses
  %i.lu = zext i1 %i.lt to i32                    ; 2 uses
  %i.lv = mul nsw i32 %.1369435.us, %2
  %i.lw = add nuw nsw i32 %i.lv, %.0436.us
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr i8, ptr %1, i64 %i.lx     ; 3 uses
  %i.lz = getelementptr i8, ptr %i.ly, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !18
  %i.mb = icmp ult i8 %i.ma, 8                    ; 2 uses
  %i.mc = zext i1 %i.mb to i32                    ; 2 uses
  %i.md = load i8, ptr %i.jf, align 1, !tbaa !18
  %i.me = icmp ult i8 %i.md, 8                    ; 2 uses
  %i.mf = zext i1 %i.me to i32                    ; 2 uses
  %i.mg = getelementptr i8, ptr %i.ly, i64 -1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !18
  %i.mi = icmp ult i8 %i.mh, 8                    ; 2 uses
  %i.mj = zext i1 %i.mi to i32                    ; 2 uses
  %i.mk = add nuw nsw i32 %i.mc, %i.lu
  %i.ml = add nuw nsw i32 %i.mk, %i.mf
  %i.mm = add nuw nsw i32 %i.ml, %i.mj
  %i.mn = icmp eq i32 %i.mm, 2
  br i1 %i.mn, label %bb.ap, label %.thread410.us

bb.ap:                                            ; preds = %bb.ao
  %i.mo = or i32 %i.mj, %i.mc
  %i.mp = or i32 %i.mf, %i.lu
  %i.mq = and i32 %i.mo, %i.mp
  %.not393.us = icmp eq i32 %i.mq, 0
  br i1 %.not393.us, label %.thread410.us, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.mr = add nsw i32 %.1369435.us, -2
  %i.ms = mul nsw i32 %i.mr, %2
  %i.mt = add nuw nsw i32 %i.ms, %.0436.us
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = getelementptr i8, ptr %1, i64 %i.mu     ; 2 uses
  %i.mw = getelementptr i8, ptr %i.mv, i64 -1
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !18
  %i.my = icmp ult i8 %i.mx, 8
  %i.mz = getelementptr i8, ptr %i.mv, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !18
  %i.nb = icmp ult i8 %i.na, 8
  %i.nc = or i1 %i.my, %i.nb
  %i.nd = and i1 %i.lt, %i.nc
  %i.ne = getelementptr i8, ptr %i.is, i64 -2
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !18
  %i.ng = icmp ult i8 %i.nf, 8
  %i.nh = getelementptr i8, ptr %i.jf, i64 -2
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !18
  %i.nj = icmp ult i8 %i.ni, 8
  %i.nk = or i1 %i.ng, %i.nj
  %i.nl = and i1 %i.mi, %i.nk
  %i.nm = or i1 %i.nd, %i.nl
  %i.nn = getelementptr i8, ptr %i.is, i64 2
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !18
  %i.np = icmp ult i8 %i.no, 8
  %i.nq = getelementptr i8, ptr %i.jf, i64 2
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !18
  %i.ns = icmp ult i8 %i.nr, 8
  %i.nt = or i1 %i.np, %i.ns
  %i.nu = and i1 %i.mb, %i.nt
  %i.nv = or i1 %i.nm, %i.nu
  %i.nw = add nuw nsw i32 %.1369435.us, 2
  %i.nx = mul nsw i32 %i.nw, %2
  %i.ny = add nuw nsw i32 %i.nx, %.0436.us
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = getelementptr i8, ptr %1, i64 %i.nz     ; 2 uses
  %i.ob = getelementptr i8, ptr %i.oa, i64 -1
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !18
  %i.od = icmp ult i8 %i.oc, 8
  %i.oe = getelementptr i8, ptr %i.oa, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !18
  %i.og = icmp ult i8 %i.of, 8
  %i.oh = or i1 %i.od, %i.og
  %i.oi = and i1 %i.me, %i.oh
  %i.oj = or i1 %i.nv, %i.oi
  br i1 %i.oj, label %bb.ar, label %.thread410.us

bb.ar:                                            ; preds = %bb.aq
  store i8 100, ptr %i.ly, align 1, !tbaa !18
  %i.ok = tail call i32 @llvm.smax.i32(i32 %.1369435.us, i32 5)
  %spec.store.select1.us = add nsw i32 %i.ok, -1
  %i.ol = tail call i32 @llvm.smax.i32(i32 %.0436.us, i32 6)
  %spec.store.select4.us = add nsw i32 %i.ol, -2
  br label %.thread410.us

.thread410.us:                                    ; preds = %.preheader.us, %bb.t, %bb.u, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ae, %bb.y, %bb.x, %bb.w, %bb.v, %bb.c, %.preheader424.us
  %.6387.us = phi i32 [ %.1382433.us, %bb.y ], [ %.1382433.us, %bb.x ], [ %.1382433.us, %bb.w ], [ %.1382433.us, %bb.c ], [ %.1382433.us, %.preheader424.us ], [ %.1382433.us, %bb.an ], [ %.1382433.us, %bb.ao ], [ %.1382433.us, %bb.ap ], [ %.1382433.us, %bb.aq ], [ %.1382433.us, %bb.ar ], [ %.1382433.us, %bb.ae ], [ %.1382433.us, %bb.aj ], [ %.1382433.us, %bb.ak ], [ %.1382433.us, %bb.al ], [ %.1382433.us, %bb.am ], [ %.1382433.us, %bb.v ], [ %.4385.us.2.2, %bb.u ], [ %.4385.us.2.2, %bb.t ], [ %.4385.us.2.2, %.preheader.us ]
  %.6.us = phi i32 [ %.1377434.us, %bb.y ], [ %.1377434.us, %bb.x ], [ %.1377434.us, %bb.w ], [ %.1377434.us, %bb.c ], [ %.1377434.us, %.preheader424.us ], [ %.1377434.us, %bb.an ], [ %.1377434.us, %bb.ao ], [ %.1377434.us, %bb.ap ], [ %.1377434.us, %bb.aq ], [ %.1377434.us, %bb.ar ], [ %.1377434.us, %bb.ae ], [ %.1377434.us, %bb.aj ], [ %.1377434.us, %bb.ak ], [ %.1377434.us, %bb.al ], [ %.1377434.us, %bb.am ], [ %.1377434.us, %bb.v ], [ %.4380.us.2.2, %bb.u ], [ %.4380.us.2.2, %bb.t ], [ %.4380.us.2.2, %.preheader.us ]
  %.4.us = phi i32 [ %spec.store.select2.us, %bb.y ], [ %.1369435.us, %bb.x ], [ %.1369435.us, %bb.w ], [ %.1369435.us, %bb.c ], [ %.1369435.us, %.preheader424.us ], [ %.1369435.us, %bb.an ], [ %.1369435.us, %bb.ao ], [ %.1369435.us, %bb.ap ], [ %.1369435.us, %bb.aq ], [ %spec.store.select1.us, %bb.ar ], [ %.1369435.us, %bb.ae ], [ %.1369435.us, %bb.aj ], [ %.1369435.us, %bb.ak ], [ %.1369435.us, %bb.al ], [ %.1369435.us, %bb.am ], [ %.1369435.us, %bb.v ], [ %spec.store.select.us, %bb.u ], [ %.1369435.us, %bb.t ], [ %.1369435.us, %.preheader.us ] ; 2 uses
  %.3.us = phi i32 [ %spec.store.select5.us, %bb.y ], [ %.0436.us, %bb.x ], [ %.0436.us, %bb.w ], [ %.0436.us, %bb.c ], [ %.0436.us, %.preheader424.us ], [ %.0436.us, %bb.an ], [ %.0436.us, %bb.ao ], [ %.0436.us, %bb.ap ], [ %.0436.us, %bb.aq ], [ %spec.store.select4.us, %bb.ar ], [ %.0436.us, %bb.ae ], [ %.0436.us, %bb.aj ], [ %.0436.us, %bb.ak ], [ %.0436.us, %bb.al ], [ %.0436.us, %bb.am ], [ %.0436.us, %bb.v ], [ %spec.store.select3.us, %bb.u ], [ %.0436.us, %bb.t ], [ %.0436.us, %.preheader.us ]
  %i.om = add nuw nsw i32 %.3.us, 1               ; 2 uses
  %i.on = icmp slt i32 %i.om, %i.c
  br i1 %i.on, label %.preheader424.us.backedge, label %._crit_edge.us

.preheader424.us.backedge:                        ; preds = %.thread410.us, %._crit_edge.us
  %.0436.us.be = phi i32 [ %i.om, %.thread410.us ], [ 4, %._crit_edge.us ]
  %.1369435.us.be = phi i32 [ %.4.us, %.thread410.us ], [ %i.oo, %._crit_edge.us ]
  br label %.preheader424.us, !llvm.loop !43

._crit_edge.us:                                   ; preds = %.thread410.us
  %i.oo = add nuw nsw i32 %.4.us, 1               ; 2 uses
  %i.op = icmp slt i32 %i.oo, %i.a
  br i1 %i.op, label %.preheader424.us.backedge, label %._crit_edge442

._crit_edge442:                                   ; preds = %._crit_edge.us, %.preheader424.lr.ph, %bb.a
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @susan_edges(ptr nofree noundef readonly %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #9 {
bb.a:
  %i.a = mul nsw i32 %6, %5
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false)
  %i.d = add nsw i32 %6, -3
  %i.e = icmp sgt i32 %6, 6
  br i1 %i.e, label %.preheader872.lr.ph, label %._crit_edge878.split

.preheader872.lr.ph:                              ; preds = %bb.a
  %i.f = add i32 %5, -3                           ; 2 uses
  %i.g = icmp sgt i32 %5, 6
  %i.h = sext i32 %i.f to i64                     ; 2 uses
  %i.i = add nsw i32 %5, -5
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = add nsw i32 %5, -6
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  br i1 %i.g, label %.preheader872.preheader, label %.preheader871

.preheader872.preheader:                          ; preds = %.preheader872.lr.ph
  %i.m = zext nneg i32 %5 to i64
  %wide.trip.count883 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.f to i64
  br label %.preheader872

.preheader872:                                    ; preds = %.preheader872.preheader, %._crit_edge
  %indvars.iv880 = phi i64 [ 3, %.preheader872.preheader ], [ %indvars.iv.next881, %._crit_edge ] ; 3 uses
  %i.n = add nsw i64 %indvars.iv880, -3
  %i.o = mul nsw i64 %i.n, %i.m
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = trunc i64 %indvars.iv880 to i32
  %i.r = mul i32 %5, %i.q
  %i.s = zext i32 %i.r to i64
  br label %bb.b

.preheader871:                                    ; preds = %._crit_edge, %.preheader872.lr.ph
  %i.t = add nsw i32 %6, -4
  %i.u = icmp sgt i32 %6, 8
  br i1 %i.u, label %.preheader.lr.ph, label %._crit_edge878.split

.preheader.lr.ph:                                 ; preds = %.preheader871
  %i.v = icmp sgt i32 %5, 8
  %i.w = add nsw i32 %5, -3
  %i.x = sext i32 %i.w to i64                     ; 4 uses
  %i.y = add nsw i32 %5, -5
  %i.z = sext i32 %i.y to i64                     ; 4 uses
  %i.aa = add nsw i32 %5, -6
  %i.ab = sext i32 %i.aa to i64                   ; 4 uses
  br i1 %i.v, label %.preheader.preheader, label %._crit_edge878.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ac = add nsw i32 %5, -4
  %i.ad = zext nneg i32 %5 to i64
  %wide.trip.count893 = zext nneg i32 %i.t to i64
  %wide.trip.count888 = zext i32 %i.ac to i64
  br label %.preheader

bb.b:                                             ; preds = %.preheader872, %bb.d
  %indvars.iv = phi i64 [ 3, %.preheader872 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  %i.ag = add nuw nsw i64 %indvars.iv, %i.s       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !18
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %i.aj ; 36 uses
  %i.al = load i8, ptr %i.af, align 1, !tbaa !18
  %i.am = zext i8 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ak, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aq, 100
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.au = zext i8 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.ak, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %i.ar, %i.ay
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !18
  %i.bb = zext i8 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.ak, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %i.az, %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.as, i64 %i.h ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bk = zext i8 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %i.ak, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !18
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bg, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.br = load i8, ptr %i.bi, align 1, !tbaa !18
  %i.bs = zext i8 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.ak, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bp, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bz = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.ca = zext i8 %i.bz to i64
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.ak, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.bx, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.ch = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ci = zext i8 %i.ch to i64
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr inbounds i8, ptr %i.ak, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.cf, %i.cm
  %i.co = load i8, ptr %i.cg, align 1, !tbaa !18
  %i.cp = zext i8 %i.co to i64
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds i8, ptr %i.ak, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.cn, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cg, i64 %i.j ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cv, align 1, !tbaa !18
  %i.cy = zext i8 %i.cx to i64
  %i.cz = sub nsw i64 0, %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.ak, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !18
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %i.cu, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  %i.df = load i8, ptr %i.cw, align 1, !tbaa !18
  %i.dg = zext i8 %i.df to i64
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds i8, ptr %i.ak, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !18
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nuw nsw i32 %i.dd, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 3
  %i.dn = load i8, ptr %i.de, align 1, !tbaa !18
  %i.do = zext i8 %i.dn to i64
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.ak, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nuw nsw i32 %i.dl, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.dv = load i8, ptr %i.dm, align 1, !tbaa !18
  %i.dw = zext i8 %i.dv to i64
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.ak, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !18
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nuw nsw i32 %i.dt, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cv, i64 5
  %i.ed = load i8, ptr %i.du, align 1, !tbaa !18
  %i.ee = zext i8 %i.ed to i64
  %i.ef = sub nsw i64 0, %i.ee
  %i.eg = getelementptr inbounds i8, ptr %i.ak, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !18
  %i.ei = zext i8 %i.eh to i32
  %i.ej = add nuw nsw i32 %i.eb, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cv, i64 6 ; 2 uses
  %i.el = load i8, ptr %i.ec, align 1, !tbaa !18
  %i.em = zext i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.ak, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !18
  %i.eq = zext i8 %i.ep to i32
  %i.er = add nuw nsw i32 %i.ej, %i.eq
  %i.es = load i8, ptr %i.ek, align 1, !tbaa !18
  %i.et = zext i8 %i.es to i64
  %i.eu = sub nsw i64 0, %i.et
  %i.ev = getelementptr inbounds i8, ptr %i.ak, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !18
  %i.ex = zext i8 %i.ew to i32
  %i.ey = add nuw nsw i32 %i.er, %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ek, i64 %i.l ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !18
  %i.fc = zext i8 %i.fb to i64
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.ak, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !18
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.ey, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  %i.fj = load i8, ptr %i.fa, align 1, !tbaa !18
  %i.fk = zext i8 %i.fj to i64
  %i.fl = sub nsw i64 0, %i.fk
  %i.fm = getelementptr inbounds i8, ptr %i.ak, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !18
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nuw nsw i32 %i.fh, %i.fo
  %i.fq = load i8, ptr %i.fi, align 1, !tbaa !18
  %i.fr = zext i8 %i.fq to i64
  %i.fs = sub nsw i64 0, %i.fr
  %i.ft = getelementptr inbounds i8, ptr %i.ak, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !18
  %i.fv = zext i8 %i.fu to i32
  %i.fw = add nuw nsw i32 %i.fp, %i.fv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ez, i64 5
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !18
  %i.ga = zext i8 %i.fz to i64
  %i.gb = sub nsw i64 0, %i.ga
  %i.gc = getelementptr inbounds i8, ptr %i.ak, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !18
  %i.ge = zext i8 %i.gd to i32
  %i.gf = add nuw nsw i32 %i.fw, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 6 ; 2 uses
  %i.gh = load i8, ptr %i.fy, align 1, !tbaa !18
  %i.gi = zext i8 %i.gh to i64
  %i.gj = sub nsw i64 0, %i.gi
  %i.gk = getelementptr inbounds i8, ptr %i.ak, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !18
  %i.gm = zext i8 %i.gl to i32
  %i.gn = add nuw nsw i32 %i.gf, %i.gm
  %i.go = load i8, ptr %i.gg, align 1, !tbaa !18
  %i.gp = zext i8 %i.go to i64
  %i.gq = sub nsw i64 0, %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.ak, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !18
  %i.gt = zext i8 %i.gs to i32
  %i.gu = add nuw nsw i32 %i.gn, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %i.gg, i64 %i.l ; 7 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gx = load i8, ptr %i.gv, align 1, !tbaa !18
  %i.gy = zext i8 %i.gx to i64
  %i.gz = sub nsw i64 0, %i.gy
  %i.ha = getelementptr inbounds i8, ptr %i.ak, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !18
  %i.hc = zext i8 %i.hb to i32
  %i.hd = add nuw nsw i32 %i.gu, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  %i.hf = load i8, ptr %i.gw, align 1, !tbaa !18
  %i.hg = zext i8 %i.hf to i64
  %i.hh = sub nsw i64 0, %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.ak, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !18
  %i.hk = zext i8 %i.hj to i32
  %i.hl = add nuw nsw i32 %i.hd, %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  %i.hn = load i8, ptr %i.he, align 1, !tbaa !18
  %i.ho = zext i8 %i.hn to i64
  %i.hp = sub nsw i64 0, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %i.ak, i64 %i.hp
end_hunk_1
begin_hunk_2_@susan_edges:bb.a
  %i.aje = add nuw nsw i32 %i.ajc, %i.ahn
  %reass.add842 = sub nsw i32 %i.ajd, %i.aje
  %reass.add843 = add nsw i32 %reass.add842, %i.aia
  %reass.mul844 = mul nsw i32 %reass.add843, 3
  %i.ajf = add nuw nsw i32 %i.abd, %i.acn
  %i.ajg = add nuw nsw i32 %i.abr, %i.adp
  %i.ajh = add nuw nsw i32 %i.ajg, %i.aem
  %i.aji = add nuw nsw i32 %i.ajf, %i.afo
  %i.ajj = add nuw nsw i32 %i.ajh, %i.agk
  %reass.add855 = sub nsw i32 %i.aji, %i.ajj
  %reass.add856 = add nsw i32 %reass.add855, %i.agy
  %reass.mul857 = shl nsw i32 %reass.add856, 1
  %i.ajk = add nuw nsw i32 %i.aaw, %i.acu
  %i.ajl = add nuw nsw i32 %i.aby, %i.adi
  %i.ajm = add nuw nsw i32 %i.ajl, %i.aet
  %i.ajn = add nuw nsw i32 %i.ajk, %i.afh
  %i.ajo = add nuw nsw i32 %i.ajm, %i.agd
  %i.ajp = sub nsw i32 %i.ajn, %i.ajo
  %i.ajq = add nsw i32 %i.ajp, %i.ahf
  %i.ajr = add nsw i32 %i.ajq, %reass.mul857
  %i.ajs = add nsw i32 %i.ajr, %reass.mul844
  %i.ajt = icmp eq i32 %i.aiz, 0
  br i1 %i.ajt, label %.thread755, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aju = load i8, ptr %i.adw, align 1, !tbaa !18
  %i.ajv = zext i8 %i.aju to i64
  %i.ajw = sub nsw i64 0, %i.ajv
  %i.ajx = getelementptr inbounds i8, ptr %i.md, i64 %i.ajw
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !18
  %i.ajz = zext i8 %i.ajy to i32
  %i.aka = getelementptr inbounds nuw i8, ptr %i.adw, i64 1
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !18
  %i.akc = zext i8 %i.akb to i64
  %i.akd = sub nsw i64 0, %i.akc
  %i.ake = getelementptr inbounds i8, ptr %i.md, i64 %i.akd
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !18
  %i.akg = zext i8 %i.akf to i32
  %i.akh = getelementptr inbounds nuw i8, ptr %i.adw, i64 2
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !18
  %i.akj = zext i8 %i.aki to i64
  %i.akk = sub nsw i64 0, %i.akj
  %i.akl = getelementptr inbounds i8, ptr %i.md, i64 %i.akk
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !18
  %i.akn = zext i8 %i.akm to i32
  %i.ako = getelementptr inbounds nuw i8, ptr %i.adw, i64 4
  %i.akp = load i8, ptr %i.ako, align 1, !tbaa !18
  %i.akq = zext i8 %i.akp to i64
  %i.akr = sub nsw i64 0, %i.akq
  %i.aks = getelementptr inbounds i8, ptr %i.md, i64 %i.akr
  %i.akt = load i8, ptr %i.aks, align 1, !tbaa !18
  %i.aku = zext i8 %i.akt to i32
  %i.akv = getelementptr inbounds nuw i8, ptr %i.adw, i64 5
  %i.akw = load i8, ptr %i.akv, align 1, !tbaa !18
  %i.akx = zext i8 %i.akw to i64
  %i.aky = sub nsw i64 0, %i.akx
  %i.akz = getelementptr inbounds i8, ptr %i.md, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i32
  %i.alc = load i8, ptr %i.adx, align 1, !tbaa !18
  %i.ald = zext i8 %i.alc to i64
  %i.ale = sub nsw i64 0, %i.ald
  %i.alf = getelementptr inbounds i8, ptr %i.md, i64 %i.ale
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !18
  %i.alh = zext i8 %i.alg to i32
  %reass.add858 = add nuw nsw i32 %i.adp, %i.acn
  %reass.add859 = add nuw nsw i32 %reass.add858, %i.aem
  %reass.add860 = add nuw nsw i32 %reass.add859, %i.afo
  %reass.add861 = add nuw nsw i32 %reass.add860, %i.akg
  %reass.add862 = add nuw nsw i32 %reass.add861, %i.alb
  %reass.mul863 = shl nuw nsw i32 %reass.add862, 2
  %reass.add864 = add nuw nsw i32 %i.adv, %i.acg
  %reass.add865 = add nuw nsw i32 %reass.add864, %i.aef
  %reass.add866 = add nuw nsw i32 %reass.add865, %i.afu
  %reass.add867 = add nuw nsw i32 %reass.add866, %i.ajz
  %reass.add868 = add nuw nsw i32 %reass.add867, %i.alh
  %reass.mul869 = mul nuw nsw i32 %reass.add868, 9
  %i.ali = add nuw nsw i32 %i.aan, %i.aaa
  %i.alj = add nuw nsw i32 %i.ali, %i.aaw
  %i.alk = add nuw nsw i32 %i.alj, %i.abd
  %i.all = add nuw nsw i32 %i.alk, %i.abr
  %i.alm = add nuw nsw i32 %i.all, %i.aby
  %i.aln = add nuw nsw i32 %i.alm, %i.acu
  %i.alo = add nuw nsw i32 %i.aln, %i.adi
  %i.alp = add nuw nsw i32 %i.alo, %i.aet
  %i.alq = add nuw nsw i32 %i.alp, %i.afh
  %i.alr = add nuw nsw i32 %i.alq, %i.agd
  %i.als = add nuw nsw i32 %i.alr, %i.agk
  %i.alt = add nuw nsw i32 %i.als, %i.agy
  %i.alu = add nuw nsw i32 %i.alt, %i.ahf
  %i.alv = add nuw nsw i32 %i.alu, %i.ahn
  %i.alw = add nuw nsw i32 %i.alv, %i.aia
  %i.alx = add nuw nsw i32 %i.alw, %i.akn
  %i.aly = add nuw nsw i32 %i.alx, %i.aku
  %i.alz = add nuw nsw i32 %i.aly, %reass.mul863
  %i.ama = add nuw nsw i32 %i.alz, %reass.mul869
  %i.amb = uitofp nneg i32 %i.ama to float
  %i.amc = uitofp nneg i32 %i.aiz to float
  %i.amd = fdiv float %i.amb, %i.amc              ; 2 uses
  %i.ame = fcmp olt float %i.amd, 5.000000e-01
  br i1 %i.ame, label %.thread755, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.amf = fcmp ogt float %i.amd, 2.000000e+00
  br i1 %i.amf, label %.thread755, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.inv = icmp slt i32 %i.ajs, 1
  %.752 = select i1 %.inv, i32 1, i32 -1
  br label %.thread755

.thread755:                                       ; preds = %bb.o, %bb.r, %bb.q, %bb.p
  %.1722 = phi i32 [ 1, %bb.q ], [ 0, %bb.p ], [ %.752, %bb.r ], [ 1, %bb.o ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.q ], [ 1, %bb.p ], [ 1, %bb.r ], [ 0, %bb.o ] ; 3 uses
  %i.amg = add nsw i32 %.1722, %i.lt
  %i.amh = mul nsw i32 %i.amg, %5
  %i.ami = trunc nuw nsw i64 %indvars.iv885 to i32 ; 4 uses
  %i.amj = add nuw nsw i32 %.1, %i.ami
  %i.amk = add i32 %i.amj, %i.amh
  %i.aml = sext i32 %i.amk to i64
  %i.amm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.aml
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !4
  %i.amo = icmp sgt i32 %i.lx, %i.amn
  br i1 %i.amo, label %bb.s, label %.critedge

bb.s:                                             ; preds = %.thread755
  %i.amp = sub nsw i32 %i.lt, %.1722
  %i.amq = mul nsw i32 %i.amp, %5
  %i.amr = sub nsw i32 %i.ami, %.1
  %i.ams = add i32 %i.amr, %i.amq
  %i.amt = sext i32 %i.ams to i64
  %i.amu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.amt
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !4
  %.not749 = icmp slt i32 %i.lx, %i.amv
  br i1 %.not749, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.amw = shl nsw i32 %.1722, 1                  ; 2 uses
  %i.amx = add nsw i32 %i.amw, %i.lt
  %i.amy = mul nsw i32 %i.amx, %5
  %i.amz = shl nuw nsw i32 %.1, 1                 ; 2 uses
  %i.ana = add nuw i32 %i.amz, %i.ami
  %i.anb = add i32 %i.ana, %i.amy
  %i.anc = sext i32 %i.anb to i64
  %i.and = getelementptr inbounds [4 x i8], ptr %1, i64 %i.anc
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !4
  %i.anf = icmp sgt i32 %i.lx, %i.ane
  br i1 %i.anf, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.ang = sub nsw i32 %i.lt, %i.amw
  %i.anh = mul nsw i32 %i.ang, %5
  %i.ani = sub nsw i32 %i.ami, %i.amz
  %i.anj = add i32 %i.ani, %i.anh
  %i.ank = sext i32 %i.anj to i64
  %i.anl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ank
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !4
  %.not750 = icmp slt i32 %i.lx, %i.anm
  br i1 %.not750, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.u, %bb.n
  %.sink = phi i8 [ 1, %bb.n ], [ 2, %bb.u ]
  %i.ann = getelementptr inbounds nuw i8, ptr %2, i64 %i.lv
  store i8 %.sink, ptr %i.ann, align 1, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.n, %bb.m, %bb.l, %bb.k, %bb.e, %.thread755, %bb.s, %bb.t, %bb.u
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1 ; 2 uses
  %exitcond889.not = icmp eq i64 %indvars.iv.next886, %wide.trip.count888
  br i1 %exitcond889.not, label %._crit_edge876, label %bb.e, !llvm.loop !46

._crit_edge876:                                   ; preds = %.critedge
  %indvars.iv.next891 = add nuw nsw i64 %indvars.iv890, 1 ; 2 uses
  %exitcond894.not = icmp eq i64 %indvars.iv.next891, %wide.trip.count893
  br i1 %exitcond894.not, label %._crit_edge878.split, label %.preheader, !llvm.loop !47

._crit_edge878.split:                             ; preds = %._crit_edge876, %bb.a, %.preheader.lr.ph, %.preheader871
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @susan_edges_small(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #6 {
bb.a:
  %i.a = mul nsw i32 %6, %5
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false)
  %i.d = add nsw i32 %6, -1
  %i.e = icmp sgt i32 %6, 2
  br i1 %i.e, label %.preheader276.lr.ph, label %._crit_edge282.split

.preheader276.lr.ph:                              ; preds = %bb.a
  %i.f = icmp sgt i32 %5, 2
  %i.g = add nsw i32 %5, -2
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  br i1 %i.f, label %.preheader276.preheader, label %.preheader275

.preheader276.preheader:                          ; preds = %.preheader276.lr.ph
  %i.i = add nsw i32 %5, -1
  %i.j = zext nneg i32 %5 to i64
  %wide.trip.count287 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.i to i64
  br label %.preheader276

.preheader276:                                    ; preds = %.preheader276.preheader, %._crit_edge
  %indvars.iv284 = phi i64 [ 1, %.preheader276.preheader ], [ %indvars.iv.next285, %._crit_edge ] ; 3 uses
  %i.k = add nsw i64 %indvars.iv284, -1
  %i.l = mul nsw i64 %i.k, %i.j
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = trunc i64 %indvars.iv284 to i32
  %i.o = mul i32 %5, %i.n
  %i.p = zext i32 %i.o to i64
  br label %bb.b

.preheader275:                                    ; preds = %._crit_edge, %.preheader276.lr.ph
  %i.q = add nsw i32 %6, -2
  %i.r = icmp sgt i32 %6, 4
  br i1 %i.r, label %.preheader.lr.ph, label %._crit_edge282.split

.preheader.lr.ph:                                 ; preds = %.preheader275
  %i.s = add i32 %5, -2                           ; 2 uses
  %i.t = icmp sgt i32 %5, 4
  %i.u = sext i32 %i.s to i64                     ; 5 uses
  br i1 %i.t, label %.preheader.preheader, label %._crit_edge282.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.v = zext nneg i32 %5 to i64
  %wide.trip.count297 = zext nneg i32 %i.q to i64
  %wide.trip.count292 = zext i32 %i.s to i64
  br label %.preheader

bb.b:                                             ; preds = %.preheader276, %bb.d
  %indvars.iv = phi i64 [ 1, %.preheader276 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = add nuw nsw i64 %indvars.iv, %i.p        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab ; 8 uses
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !18
  %i.ae = zext i8 %i.ad to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nuw nsw i32 %i.ai, 100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.w, align 1, !tbaa !18
  %i.am = zext i8 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nuw nsw i32 %i.aj, %i.aq
  %i.as = load i8, ptr %i.ak, align 1, !tbaa !18
  %i.at = zext i8 %i.as to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.ac, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !18
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ar, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ak, i64 %i.h ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = zext i8 %i.ba to i64
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds i8, ptr %i.ac, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %i.ay, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 2 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !18
  %i.bj = zext i8 %i.bi to i64
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.ac, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !18
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nuw nsw i32 %i.bg, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.bh, i64 %i.h ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.bs = zext i8 %i.br to i64
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.ac, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !18
  %i.bw = zext i8 %i.bv to i32
  %i.bx = add nuw nsw i32 %i.bo, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  %i.bz = load i8, ptr %i.bq, align 1, !tbaa !18
  %i.ca = zext i8 %i.bz to i64
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.ac, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !18
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.bx, %i.ce
  %i.cg = load i8, ptr %i.by, align 1, !tbaa !18
  %i.ch = zext i8 %i.cg to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ac, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = zext i8 %i.ck to i32
  %i.cm = add nuw nsw i32 %i.cf, %i.cl            ; 2 uses
  %i.cn = icmp samesign ult i32 %i.cm, 731
  br i1 %i.cn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.co = sub nuw nsw i32 730, %i.cm
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.y
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !48

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %.preheader275, label %.preheader276, !llvm.loop !49

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge280
  %indvars.iv294 = phi i64 [ 2, %.preheader.preheader ], [ %indvars.iv.next295, %._crit_edge280 ] ; 5 uses
  %i.cq = add nsw i64 %indvars.iv294, -1
  %i.cr = mul nsw i64 %i.cq, %i.v
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %i.cr ; 3 uses
  %i.ct = trunc i64 %indvars.iv294 to i32
  %i.cu = mul i32 %5, %i.ct
  %i.cv = zext i32 %i.cu to i64
  %i.cw = trunc nuw nsw i64 %indvars.iv294 to i32 ; 2 uses
  %i.cx = trunc nuw nsw i64 %indvars.iv294 to i32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge
  %indvars.iv289 = phi i64 [ 2, %.preheader ], [ %indvars.iv.next290, %.critedge ] ; 7 uses
  %i.cy = add nuw nsw i64 %indvars.iv289, %i.cv   ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4  ; 7 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cy
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !18
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 %i.de ; 16 uses
  %i.dg = icmp samesign ult i32 %i.da, 480
  br i1 %i.dg, label %bb.g, label %._crit_edge299

._crit_edge299:                                   ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv289 ; 3 uses
  %.phi.trans.insert300 = getelementptr inbounds i8, ptr %.phi.trans.insert, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert300, align 1, !tbaa !18
  %.pre302 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !18
  %.phi.trans.insert304 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 1 ; 2 uses
  %.pre305 = load i8, ptr %.phi.trans.insert304, align 1, !tbaa !18
  %.phi.trans.insert308 = getelementptr inbounds i8, ptr %.phi.trans.insert304, i64 %i.u
  %.phi.trans.insert309 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert308, i64 2
  %.phi.trans.insert310 = getelementptr inbounds i8, ptr %.phi.trans.insert309, i64 %i.u ; 3 uses
  %.pre311 = load i8, ptr %.phi.trans.insert310, align 1, !tbaa !18
  %.phi.trans.insert317 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert310, i64 1
  %.pre318 = load i8, ptr %.phi.trans.insert317, align 1, !tbaa !18
  %.phi.trans.insert324 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert310, i64 2
  %.pre325 = load i8, ptr %.phi.trans.insert324, align 1, !tbaa !18
  %.pre326 = zext i8 %.pre to i64
  %.pre327 = sub nsw i64 0, %.pre326
  %.pre329 = zext i8 %.pre302 to i64
  %.pre331 = sub nsw i64 0, %.pre329
  %.pre333 = zext i8 %.pre305 to i64
  %.pre335 = sub nsw i64 0, %.pre333
  %.pre337 = zext i8 %.pre311 to i64
  %.pre339 = sub nsw i64 0, %.pre337
  %.pre341 = zext i8 %.pre318 to i64
  %.pre343 = sub nsw i64 0, %.pre341
  %.pre345 = zext i8 %.pre325 to i64
  %.pre347 = sub nsw i64 0, %.pre345
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.dh = sub nuw nsw i32 730, %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv289 ; 3 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  %i.dl = zext i8 %i.dk to i64
  %i.dm = sub nsw i64 0, %i.dl                    ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.df, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 1 ; 2 uses
  %i.dr = load i8, ptr %i.di, align 1, !tbaa !18
  %i.ds = zext i8 %i.dr to i64
  %i.dt = sub nsw i64 0, %i.ds                    ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.df, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !18
  %i.dw = zext i8 %i.dv to i32
  %i.dx = load i8, ptr %i.dq, align 1, !tbaa !18
  %i.dy = zext i8 %i.dx to i64
  %i.dz = sub nsw i64 0, %i.dy                    ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.df, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = zext i8 %i.eb to i32                    ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dq, i64 %i.u ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !18
  %i.ef = zext i8 %i.ee to i64
  %i.eg = sub nsw i64 0, %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.df, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !18
  %i.ej = zext i8 %i.ei to i32
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 2 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !18
  %i.em = zext i8 %i.el to i64
  %i.en = sub nsw i64 0, %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.df, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !18
  %i.eq = zext i8 %i.ep to i32
  %i.er = getelementptr inbounds i8, ptr %i.ek, i64 %i.u ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  %i.et = load i8, ptr %i.er, align 1, !tbaa !18
  %i.eu = zext i8 %i.et to i64
  %i.ev = sub nsw i64 0, %i.eu                    ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.df, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !18
  %i.ey = zext i8 %i.ex to i32                    ; 2 uses
  %i.ez = add nuw nsw i32 %i.dw, %i.dp
  %i.fa = add nuw nsw i32 %i.ez, %i.ec
  %i.fb = sub nsw i32 %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.er, i64 2
  %i.fd = load i8, ptr %i.es, align 1, !tbaa !18
end_hunk_2
begin_hunk_3_@susan_edges_small:bb.a
  %i.hh = zext i8 %i.hg to i32
  %i.hi = getelementptr inbounds i8, ptr %i.df, i64 %.pre-phi336
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !18
  %i.hk = zext i8 %i.hj to i32
  %i.hl = getelementptr inbounds i8, ptr %i.df, i64 %.pre-phi340
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !18
  %i.hn = zext i8 %i.hm to i32
  %i.ho = getelementptr inbounds i8, ptr %i.df, i64 %.pre-phi344
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !18
  %i.hq = zext i8 %i.hp to i32
  %i.hr = getelementptr inbounds i8, ptr %i.df, i64 %.pre-phi348
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !18
  %i.ht = zext i8 %i.hs to i32                    ; 3 uses
  %i.hu = add nuw nsw i32 %i.hn, %i.hk            ; 2 uses
  %i.hv = add nuw nsw i32 %i.hu, %i.he            ; 2 uses
  %i.hw = add nuw nsw i32 %i.hv, %i.hh
  %i.hx = add nuw nsw i32 %i.hw, %i.hq
  %i.hy = add nuw nsw i32 %i.hx, %i.ht            ; 2 uses
  %.neg274 = add nuw nsw i32 %i.ht, %i.he
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %.thread262, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ia = getelementptr inbounds nuw i8, ptr %i.cs, i64 %indvars.iv289
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 %i.u ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.ie = load i8, ptr %i.ic, align 1, !tbaa !18
  %i.if = zext i8 %i.ie to i64
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds i8, ptr %i.df, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !18
  %i.ij = zext i8 %i.ii to i32
  %i.ik = load i8, ptr %i.id, align 1, !tbaa !18
  %i.il = zext i8 %i.ik to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.df, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !18
  %i.ip = zext i8 %i.io to i32
  %i.iq = add nuw nsw i32 %i.hv, %i.ht
  %i.ir = add nuw nsw i32 %i.iq, %i.ij
  %i.is = add nuw nsw i32 %i.ir, %i.ip
  %i.it = uitofp nneg i32 %i.is to float
  %i.iu = uitofp nneg i32 %i.hy to float
  %i.iv = fdiv float %i.it, %i.iu                 ; 2 uses
  %i.iw = fcmp olt float %i.iv, 5.000000e-01
  br i1 %i.iw, label %.thread262, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ix = fcmp ogt float %i.iv, 2.000000e+00
  br i1 %i.ix, label %.thread262, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.inv.not = icmp samesign ugt i32 %.neg274, %i.hu
  %.259 = select i1 %.inv.not, i32 -1, i32 1
  br label %.thread262

.thread262:                                       ; preds = %bb.m, %bb.p, %bb.o, %bb.n
  %.1242 = phi i32 [ 1, %bb.o ], [ 0, %bb.n ], [ %.259, %bb.p ], [ 1, %bb.m ] ; 2 uses
  %.1 = phi i32 [ 0, %bb.o ], [ 1, %bb.n ], [ 1, %bb.p ], [ 0, %bb.m ] ; 2 uses
  %i.iy = add nsw i32 %.1242, %i.cw
  %i.iz = mul nsw i32 %i.iy, %5
  %i.ja = trunc nuw nsw i64 %indvars.iv289 to i32 ; 2 uses
  %i.jb = add nuw nsw i32 %.1, %i.ja
  %i.jc = add i32 %i.jb, %i.iz
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jd
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !4
  %i.jg = icmp sgt i32 %i.da, %i.jf
  br i1 %i.jg, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.thread262
  %i.jh = sub nsw i32 %i.cw, %.1242
  %i.ji = mul nsw i32 %i.jh, %5
  %i.jj = sub nsw i32 %i.ja, %.1
  %i.jk = add i32 %i.jj, %i.ji
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !4
  %.not258 = icmp slt i32 %i.da, %i.jn
  br i1 %.not258, label %.critedge, label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.q, %bb.l
  %.sink = phi i8 [ 1, %bb.l ], [ 2, %bb.q ]
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy
  store i8 %.sink, ptr %i.jo, align 1, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.l, %bb.k, %bb.e, %.thread262, %bb.q
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %._crit_edge280, label %bb.e, !llvm.loop !50

._crit_edge280:                                   ; preds = %.critedge
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %._crit_edge282.split, label %.preheader, !llvm.loop !51

._crit_edge282.split:                             ; preds = %._crit_edge280, %bb.a, %.preheader.lr.ph, %.preheader275
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @corner_draw(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !52
  %.not31 = icmp eq i32 %i.b, 7
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  %i.d = add nsw i32 %2, -2
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv35 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = add nsw i32 %i.h, -1
  %i.j = mul nsw i32 %i.i, %2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.f, align 4, !tbaa !55
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -1
  store i8 -1, ptr %i.p, align 1, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  store i8 -1, ptr %i.o, align 1, !tbaa !18
  store i8 -1, ptr %i.q, align 1, !tbaa !18
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.e ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 -1, ptr %i.r, align 1, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 2 uses
  store i8 0, ptr %i.s, align 1, !tbaa !18
  store i8 -1, ptr %i.t, align 1, !tbaa !18
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.e ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 -1, ptr %i.u, align 1, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  store i8 -1, ptr %i.v, align 1, !tbaa !18
  store i8 -1, ptr %i.w, align 1, !tbaa !18
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !52
  %.not.us = icmp eq i32 %i.z, 7
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !56

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = mul nsw i32 %i.ac, %2
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.ag = load i32, ptr %i.aa, align 4, !tbaa !55
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  store i8 0, ptr %i.ai, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.next
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !52
  %.not = icmp eq i32 %i.al, 7
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !56

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @susan_corners(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #13 {
bb.a:
  %i.a = mul nsw i32 %6, %5
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2                      ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false)
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #23 ; 3 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.c) #23 ; 3 uses
  %i.f = add i32 %6, -5                           ; 2 uses
  %i.g = icmp sgt i32 %6, 10
  br i1 %i.g, label %.preheader902.lr.ph, label %._crit_edge914

.preheader902.lr.ph:                              ; preds = %bb.a
  %i.h = add i32 %5, -5                           ; 2 uses
  %i.i = icmp sgt i32 %5, 10
  %i.j = add nsw i32 %5, -3
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = sext i32 %i.h to i64                     ; 2 uses
  %i.m = add nsw i32 %5, -6
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  br i1 %i.i, label %.preheader902.preheader, label %._crit_edge914

.preheader902.preheader:                          ; preds = %.preheader902.lr.ph
  %i.o = zext nneg i32 %5 to i64
  %wide.trip.count921 = zext nneg i32 %i.f to i64
  %wide.trip.count = zext i32 %i.h to i64
  br label %.preheader902

.preheader902:                                    ; preds = %.preheader902.preheader, %._crit_edge
  %indvars.iv918 = phi i64 [ 5, %.preheader902.preheader ], [ %indvars.iv.next919, %._crit_edge ] ; 5 uses
  %i.p = add nsw i64 %indvars.iv918, -3
  %i.q = mul nsw i64 %i.p, %i.o
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = trunc i64 %indvars.iv918 to i32
  %i.t = mul i32 %5, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = trunc nuw nsw i64 %indvars.iv918 to i32  ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv918 to i32  ; 3 uses
  br label %bb.ba

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.x = add nsw i32 %5, -5
  %i.y = zext nneg i32 %5 to i64                  ; 7 uses
  %wide.trip.count931 = zext nneg i32 %i.f to i64
  %wide.trip.count926 = zext i32 %i.x to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge910.us
  %indvars.iv928 = phi i64 [ 5, %.preheader.us.preheader ], [ %indvars.iv.next929, %._crit_edge910.us ] ; 8 uses
  %.0913.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.us, %._crit_edge910.us ]
  %i.z = mul nuw nsw i64 %indvars.iv928, %i.y
  %i.aa = add nsw i64 %indvars.iv928, -3
  %i.ab = mul nsw i64 %i.aa, %i.y
  %i.ac = add nsw i64 %indvars.iv928, -2
  %i.ad = mul nsw i64 %i.ac, %i.y
  %i.ae = add nsw i64 %indvars.iv928, -1
  %i.af = mul nsw i64 %i.ae, %i.y
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv928, 1 ; 3 uses
  %i.ag = mul nuw nsw i64 %indvars.iv.next929, %i.y
  %i.ah = add nuw nsw i64 %indvars.iv928, 2
  %i.ai = mul nuw nsw i64 %i.ah, %i.y
  %i.aj = add nuw nsw i64 %indvars.iv928, 3
  %i.ak = mul nuw nsw i64 %i.aj, %i.y
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ab
  %invariant.gep956 = getelementptr [4 x i8], ptr %1, i64 %i.ad
  %invariant.gep958 = getelementptr [4 x i8], ptr %1, i64 %i.af
  %invariant.gep960 = getelementptr [4 x i8], ptr %1, i64 %i.ag
  %invariant.gep962 = getelementptr [4 x i8], ptr %1, i64 %i.ai
  %invariant.gep964 = getelementptr [4 x i8], ptr %1, i64 %i.ak
  %i.al = trunc nuw nsw i64 %indvars.iv928 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.az
  %indvars.iv923 = phi i64 [ 5, %.preheader.us ], [ %indvars.iv.next924, %bb.az ] ; 9 uses
  %.1909.us = phi i32 [ %.0913.us, %.preheader.us ], [ %.2.us, %bb.az ] ; 51 uses
  %i.am = add nuw nsw i64 %indvars.iv923, %i.z    ; 4 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am ; 7 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4  ; 49 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %bb.c, label %bb.az

bb.c:                                             ; preds = %bb.b
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv923 ; 7 uses
  %i.aq = getelementptr i8, ptr %gep, i64 -12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = icmp sgt i32 %i.ao, %i.ar
  br i1 %i.as, label %bb.d, label %bb.az

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr i8, ptr %gep, i64 -8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp sgt i32 %i.ao, %i.au
  br i1 %i.av, label %bb.e, label %bb.az

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr i8, ptr %gep, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = icmp sgt i32 %i.ao, %i.ax
  br i1 %i.ay, label %bb.f, label %bb.az

bb.f:                                             ; preds = %bb.e
  %i.az = load i32, ptr %gep, align 4, !tbaa !4
  %i.ba = icmp sgt i32 %i.ao, %i.az
  br i1 %i.ba, label %bb.g, label %bb.az

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr i8, ptr %gep, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = icmp sgt i32 %i.ao, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr i8, ptr %gep, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = icmp sgt i32 %i.ao, %i.bf
  br i1 %i.bg, label %bb.i, label %bb.az

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr i8, ptr %gep, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bj = icmp sgt i32 %i.ao, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.az

bb.j:                                             ; preds = %bb.i
  %gep957 = getelementptr [4 x i8], ptr %invariant.gep956, i64 %indvars.iv923 ; 7 uses
  %i.bk = getelementptr i8, ptr %gep957, i64 -12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = icmp sgt i32 %i.ao, %i.bl
  br i1 %i.bm, label %bb.k, label %bb.az

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr i8, ptr %gep957, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = icmp sgt i32 %i.ao, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.az

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr i8, ptr %gep957, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = icmp sgt i32 %i.ao, %i.br
  br i1 %i.bs, label %bb.m, label %bb.az

bb.m:                                             ; preds = %bb.l
  %i.bt = load i32, ptr %gep957, align 4, !tbaa !4
  %i.bu = icmp sgt i32 %i.ao, %i.bt
  br i1 %i.bu, label %bb.n, label %bb.az

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr i8, ptr %gep957, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = icmp sgt i32 %i.ao, %i.bw
  br i1 %i.bx, label %bb.o, label %bb.az

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr i8, ptr %gep957, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = icmp sgt i32 %i.ao, %i.bz
  br i1 %i.ca, label %bb.p, label %bb.az

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr i8, ptr %gep957, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = icmp sgt i32 %i.ao, %i.cc
  br i1 %i.cd, label %bb.q, label %bb.az

bb.q:                                             ; preds = %bb.p
  %gep959 = getelementptr [4 x i8], ptr %invariant.gep958, i64 %indvars.iv923 ; 7 uses
  %i.ce = getelementptr i8, ptr %gep959, i64 -12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = icmp sgt i32 %i.ao, %i.cf
  br i1 %i.cg, label %bb.r, label %bb.az

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr i8, ptr %gep959, i64 -8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4
  %i.cj = icmp sgt i32 %i.ao, %i.ci
  br i1 %i.cj, label %bb.s, label %bb.az

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr i8, ptr %gep959, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = icmp sgt i32 %i.ao, %i.cl
  br i1 %i.cm, label %bb.t, label %bb.az

bb.t:                                             ; preds = %bb.s
  %i.cn = load i32, ptr %gep959, align 4, !tbaa !4
  %i.co = icmp sgt i32 %i.ao, %i.cn
  br i1 %i.co, label %bb.u, label %bb.az

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr i8, ptr %gep959, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = icmp sgt i32 %i.ao, %i.cq
  br i1 %i.cr, label %bb.v, label %bb.az

bb.v:                                             ; preds = %bb.u
  %i.cs = getelementptr i8, ptr %gep959, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cu = icmp sgt i32 %i.ao, %i.ct
  br i1 %i.cu, label %bb.w, label %bb.az

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr i8, ptr %gep959, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = icmp sgt i32 %i.ao, %i.cw
  br i1 %i.cx, label %bb.x, label %bb.az

bb.x:                                             ; preds = %bb.w
  %i.cy = getelementptr i8, ptr %i.an, i64 -12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = icmp sgt i32 %i.ao, %i.cz
  br i1 %i.da, label %bb.y, label %bb.az

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr i8, ptr %i.an, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = icmp sgt i32 %i.ao, %i.dc
  br i1 %i.dd, label %bb.z, label %bb.az

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr i8, ptr %i.an, i64 -4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = icmp sgt i32 %i.ao, %i.df
  br i1 %i.dg, label %bb.aa, label %bb.az

bb.aa:                                            ; preds = %bb.z
  %i.dh = getelementptr i8, ptr %i.an, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %.not.us = icmp slt i32 %i.ao, %i.di
  br i1 %.not.us, label %bb.az, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = getelementptr i8, ptr %i.an, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %.not806.us = icmp slt i32 %i.ao, %i.dk
  br i1 %.not806.us, label %bb.az, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr i8, ptr %i.an, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %.not807.us = icmp slt i32 %i.ao, %i.dm
  br i1 %.not807.us, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
end_hunk_3
begin_hunk_4_@susan_corners:bb.a
  %i.ub = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.ub to i32                  ; 3 uses
  %i.uc = fcmp olt float %i.ua, 0.000000e+00
  %i.ud = fpext float %i.ua to double
  %.in836.v = select i1 %i.uc, double -5.000000e-01, double 5.000000e-01
  %.in836 = fadd double %.in836.v, %i.ud
  %i.ue = fptosi double %.in836 to i32
  %i.uf = add nsw i32 %i.w, %i.ue
  %i.ug = mul nsw i32 %i.uf, %5
  %i.uh = add nsw i32 %i.ug, %i.tw
  %i.ui = add nsw i32 %i.uh, %.sext
  %i.uj = sext i32 %i.ui to i64
  %i.uk = getelementptr inbounds i8, ptr %0, i64 %i.uj
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !18
  %i.um = zext i8 %i.ul to i64
  %i.un = sub nsw i64 0, %i.um
  %i.uo = getelementptr inbounds i8, ptr %i.fx, i64 %i.un
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !18
  %i.uq = zext i8 %i.up to i32
  %i.ur = fmul float %i.ua, 2.000000e+00          ; 2 uses
  %i.us = fcmp olt float %i.ur, 0.000000e+00
  %i.ut = fpext float %i.ur to double
  %.in837.v = select i1 %i.us, double -5.000000e-01, double 5.000000e-01
  %.in837 = fadd double %.in837.v, %i.ut
  %i.uu = fptosi double %.in837 to i32
  %i.uv = add nsw i32 %i.w, %i.uu
  %i.uw = mul nsw i32 %i.uv, %5
  %i.ux = add nsw i32 %i.uw, %i.tw
  %i.uy = shl nsw i32 %.sext, 1
  %i.uz = add nsw i32 %i.ux, %i.uy
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds i8, ptr %0, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !18
  %i.vd = zext i8 %i.vc to i64
  %i.ve = sub nsw i64 0, %i.vd
  %i.vf = getelementptr inbounds i8, ptr %i.fx, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !18
  %i.vh = zext i8 %i.vg to i32
  %i.vi = add nuw nsw i32 %i.vh, %i.uq
  %i.vj = fmul float %i.ua, 3.000000e+00          ; 2 uses
  %i.vk = fcmp olt float %i.vj, 0.000000e+00
  %i.vl = fpext float %i.vj to double
  %.in838.v = select i1 %i.vk, double -5.000000e-01, double 5.000000e-01
  %.in838 = fadd double %.in838.v, %i.vl
  %i.vm = fptosi double %.in838 to i32
  %i.vn = add nsw i32 %i.w, %i.vm
  %i.vo = mul nsw i32 %i.vn, %5
  %i.vp = add nsw i32 %i.vo, %i.tw
  %i.vq = mul nsw i32 %.sext, 3
  %i.vr = add nsw i32 %i.vp, %i.vq
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.vs = sitofp i32 %i.sv to float
  %i.vt = tail call i32 @llvm.abs.i32(i32 %i.to, i1 true) ; 2 uses
  %i.vu = uitofp nneg i32 %i.vt to float
  %i.vv = fdiv float %i.vs, %i.vu                 ; 4 uses
  %.lhs.trunc839 = trunc nuw nsw i32 %i.vt to i16
  %.rhs.trunc840 = trunc nsw i32 %i.to to i16
  %i.vw = sdiv i16 %.lhs.trunc839, %.rhs.trunc840
  %.sext841 = sext i16 %i.vw to i32               ; 3 uses
  %i.vx = add nsw i32 %i.v, %.sext841
  %i.vy = mul nsw i32 %i.vx, %5
  %i.vz = fcmp olt float %i.vv, 0.000000e+00
  %i.wa = fpext float %i.vv to double
  %.in.v = select i1 %i.vz, double -5.000000e-01, double 5.000000e-01
  %.in = fadd double %.in.v, %i.wa
  %i.wb = fptosi double %.in to i32
  %i.wc = add i32 %i.tw, %i.wb
  %i.wd = add i32 %i.wc, %i.vy
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds i8, ptr %0, i64 %i.we
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !18
  %i.wh = zext i8 %i.wg to i64
  %i.wi = sub nsw i64 0, %i.wh
  %i.wj = getelementptr inbounds i8, ptr %i.fx, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !18
  %i.wl = zext i8 %i.wk to i32
  %i.wm = shl nsw i32 %.sext841, 1
  %i.wn = add nsw i32 %i.wm, %i.v
  %i.wo = mul nsw i32 %i.wn, %5
  %i.wp = fmul float %i.vv, 2.000000e+00          ; 2 uses
  %i.wq = fcmp olt float %i.wp, 0.000000e+00
  %i.wr = fpext float %i.wp to double
  %.in834.v = select i1 %i.wq, double -5.000000e-01, double 5.000000e-01
  %.in834 = fadd double %.in834.v, %i.wr
  %i.ws = fptosi double %.in834 to i32
  %i.wt = add i32 %i.tw, %i.ws
  %i.wu = add i32 %i.wt, %i.wo
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds i8, ptr %0, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !18
  %i.wy = zext i8 %i.wx to i64
  %i.wz = sub nsw i64 0, %i.wy
  %i.xa = getelementptr inbounds i8, ptr %i.fx, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !18
  %i.xc = zext i8 %i.xb to i32
  %i.xd = add nuw nsw i32 %i.xc, %i.wl
  %i.xe = mul nsw i32 %.sext841, 3
  %i.xf = add nsw i32 %i.xe, %i.v
  %i.xg = mul nsw i32 %i.xf, %5
  %i.xh = fmul float %i.vv, 3.000000e+00          ; 2 uses
  %i.xi = fcmp olt float %i.xh, 0.000000e+00
  %i.xj = fpext float %i.xh to double
  %.in835.v = select i1 %i.xi, double -5.000000e-01, double 5.000000e-01
  %.in835 = fadd double %.in835.v, %i.xj
  %i.xk = fptosi double %.in835 to i32
  %i.xl = add i32 %i.tw, %i.xk
  %i.xm = add i32 %i.xl, %i.xg
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sink974 = phi i32 [ %i.xm, %bb.bw ], [ %i.vr, %bb.bv ]
  %.sink = phi i32 [ %i.xd, %bb.bw ], [ %i.vi, %bb.bv ]
  %i.xn = sext i32 %.sink974 to i64
  %i.xo = getelementptr inbounds i8, ptr %0, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !18
  %i.xq = zext i8 %i.xp to i64
  %i.xr = sub nsw i64 0, %i.xq
  %i.xs = getelementptr inbounds i8, ptr %i.fx, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !18
  %i.xu = zext i8 %i.xt to i32
  %i.xv = add nuw nsw i32 %.sink, %i.xu
  %i.xw = icmp samesign ugt i32 %i.xv, 290
  br i1 %i.xw, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.xx = sub nsw i32 %3, %i.rp
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ft
  store i32 %i.xx, ptr %i.xy, align 4, !tbaa !4
  %i.xz = mul nsw i32 %i.sv, 51
  %i.ya = sdiv i32 %i.xz, %i.rp
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ft
  store i32 %i.ya, ptr %i.yb, align 4, !tbaa !4
  %i.yc = mul nsw i32 %i.to, 51
  %i.yd = sdiv i32 %i.yc, %i.rp
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ft
  store i32 %i.yd, ptr %i.ye, align 4, !tbaa !4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ba, %bb.bc, %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %bb.bq, %bb.bs, %bb.bx, %bb.by, %bb.bt, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.ba, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.bz
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1 ; 2 uses
  %exitcond922.not = icmp eq i64 %indvars.iv.next919, %wide.trip.count921
  br i1 %exitcond922.not, label %.preheader.us.preheader, label %.preheader902, !llvm.loop !63

.split.us:                                        ; preds = %bb.ay
  %i.yf = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.yg = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %i.yf) #24 ; 0 uses
  tail call void @exit(i32 noundef 1) #25
  unreachable

._crit_edge914.loopexit:                          ; preds = %._crit_edge910.us
  %i.yh = sext i32 %.2.us to i64
  br label %._crit_edge914

._crit_edge914:                                   ; preds = %.preheader902.lr.ph, %bb.a, %._crit_edge914.loopexit
  %.0.lcssa = phi i64 [ 0, %.preheader902.lr.ph ], [ %i.yh, %._crit_edge914.loopexit ], [ 0, %bb.a ]
  %i.yi = getelementptr inbounds [24 x i8], ptr %4, i64 %.0.lcssa
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  store i32 7, ptr %i.yj, align 4, !tbaa !52
  tail call void @free(ptr noundef %i.d) #21
  tail call void @free(ptr noundef %i.e) #21
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @susan_corners_quick(ptr nofree noundef readonly %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #3 {
bb.a:
  %i.a = mul nsw i32 %6, %5
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.c, i1 false)
  %i.d = add i32 %6, -7                           ; 2 uses
  %i.e = icmp sgt i32 %6, 14
  br i1 %i.e, label %.preheader805.lr.ph, label %._crit_edge816

.preheader805.lr.ph:                              ; preds = %bb.a
  %i.f = icmp sgt i32 %5, 14
  %i.g = add nsw i32 %5, -3
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = add nsw i32 %5, -5
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = add nsw i32 %5, -6
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  br i1 %i.f, label %.preheader805.preheader, label %._crit_edge816

.preheader805.preheader:                          ; preds = %.preheader805.lr.ph
  %i.m = add nsw i32 %5, -7
  %i.n = zext nneg i32 %5 to i64
  %wide.trip.count823 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext i32 %i.m to i64
  br label %.preheader805

.preheader805:                                    ; preds = %.preheader805.preheader, %._crit_edge
  %indvars.iv820 = phi i64 [ 7, %.preheader805.preheader ], [ %indvars.iv.next821, %._crit_edge ] ; 3 uses
  %i.o = add nsw i64 %indvars.iv820, -3
  %i.p = mul nsw i64 %i.o, %i.n
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = trunc i64 %indvars.iv820 to i32
  %i.s = mul i32 %5, %i.r
  %i.t = zext i32 %i.s to i64
  br label %bb.ba

.preheader.us.preheader:                          ; preds = %._crit_edge
  %i.u = add nsw i32 %5, -7
  %i.v = zext nneg i32 %5 to i64                  ; 7 uses
  %wide.trip.count833 = zext nneg i32 %i.d to i64
  %wide.trip.count828 = zext i32 %i.u to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge812.us
  %indvars.iv830 = phi i64 [ 7, %.preheader.us.preheader ], [ %indvars.iv.next831, %._crit_edge812.us ] ; 8 uses
  %.0815.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.us, %._crit_edge812.us ]
  %i.w = mul nuw nsw i64 %indvars.iv830, %i.v
  %i.x = add nsw i64 %indvars.iv830, -3
  %i.y = mul nsw i64 %i.x, %i.v
  %i.z = add nsw i64 %indvars.iv830, -2
  %i.aa = mul nsw i64 %i.z, %i.v
  %i.ab = add nsw i64 %indvars.iv830, -1
  %i.ac = mul nsw i64 %i.ab, %i.v
  %indvars.iv.next831 = add nuw nsw i64 %indvars.iv830, 1 ; 3 uses
  %i.ad = mul nuw nsw i64 %indvars.iv.next831, %i.v
  %i.ae = add nuw nsw i64 %indvars.iv830, 2
  %i.af = mul nuw nsw i64 %i.ae, %i.v
  %i.ag = add nuw nsw i64 %indvars.iv830, 3
  %i.ah = mul nuw nsw i64 %i.ag, %i.v
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.y
  %invariant.gep858 = getelementptr [4 x i8], ptr %1, i64 %i.ah
  %i.ai = trunc nuw nsw i64 %indvars.iv830 to i32
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.az
  %indvars.iv825 = phi i64 [ 7, %.preheader.us ], [ %indvars.iv.next826, %bb.az ] ; 9 uses
  %.1811.us = phi i32 [ %.0815.us, %.preheader.us ], [ %.2.us, %bb.az ] ; 51 uses
  %i.aj = add nuw nsw i64 %indvars.iv825, %i.w    ; 6 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.aj ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4  ; 49 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.az

bb.c:                                             ; preds = %bb.b
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv825 ; 7 uses
  %i.an = getelementptr i8, ptr %gep, i64 -12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = icmp sgt i32 %i.al, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.az

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr i8, ptr %gep, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = icmp sgt i32 %i.al, %i.ar
  br i1 %i.as, label %bb.e, label %bb.az

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr i8, ptr %gep, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp sgt i32 %i.al, %i.au
  br i1 %i.av, label %bb.f, label %bb.az

bb.f:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %gep, align 4, !tbaa !4
  %i.ax = icmp sgt i32 %i.al, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.az

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr i8, ptr %gep, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = icmp sgt i32 %i.al, %i.az
  br i1 %i.ba, label %bb.h, label %bb.az

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr i8, ptr %gep, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = icmp sgt i32 %i.al, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.az

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr i8, ptr %gep, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = icmp sgt i32 %i.al, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.az

bb.j:                                             ; preds = %bb.i
  %i.bh = add nsw i64 %indvars.iv825, %i.aa       ; 6 uses
  %i.bi = getelementptr [4 x i8], ptr %1, i64 %i.bh ; 3 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = icmp sgt i32 %i.al, %i.bk
  br i1 %i.bl, label %bb.k, label %bb.az

bb.k:                                             ; preds = %bb.j
  %i.bm = add nsw i64 %i.bh, -2                   ; 2 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !4
  %i.bp = icmp sgt i32 %i.al, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.az

bb.l:                                             ; preds = %bb.k
  %i.bq = add nsw i64 %i.bh, -1                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = icmp sgt i32 %i.al, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.az

bb.m:                                             ; preds = %bb.l
  %i.bu = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bv = icmp sgt i32 %i.al, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.az

bb.n:                                             ; preds = %bb.m
  %i.bw = add nsw i64 %i.bh, 1                    ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = icmp sgt i32 %i.al, %i.by
  br i1 %i.bz, label %bb.o, label %bb.az

bb.o:                                             ; preds = %bb.n
  %i.ca = add nsw i64 %i.bh, 2                    ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = icmp sgt i32 %i.al, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.az

bb.p:                                             ; preds = %bb.o
  %i.ce = getelementptr i8, ptr %i.bi, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %i.cg = icmp sgt i32 %i.al, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.az

bb.q:                                             ; preds = %bb.p
  %i.ch = add nsw i64 %indvars.iv825, %i.ac       ; 6 uses
  %i.ci = getelementptr [4 x i8], ptr %1, i64 %i.ch ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = icmp sgt i32 %i.al, %i.ck
  br i1 %i.cl, label %bb.r, label %bb.az

bb.r:                                             ; preds = %bb.q
  %i.cm = add nsw i64 %i.ch, -2                   ; 2 uses
  %i.cn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = icmp sgt i32 %i.al, %i.co
  br i1 %i.cp, label %bb.s, label %bb.az

bb.s:                                             ; preds = %bb.r
  %i.cq = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = icmp sgt i32 %i.al, %i.cs
  br i1 %i.ct, label %bb.t, label %bb.az

bb.t:                                             ; preds = %bb.s
  %i.cu = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.cv = icmp sgt i32 %i.al, %i.cu
  br i1 %i.cv, label %bb.u, label %bb.az

bb.u:                                             ; preds = %bb.t
  %i.cw = add nsw i64 %i.ch, 1                    ; 2 uses
  %i.cx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = icmp sgt i32 %i.al, %i.cy
  br i1 %i.cz, label %bb.v, label %bb.az

bb.v:                                             ; preds = %bb.u
  %i.da = add nsw i64 %i.ch, 2                    ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %1, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = icmp sgt i32 %i.al, %i.dc
  br i1 %i.dd, label %bb.w, label %bb.az

bb.w:                                             ; preds = %bb.v
  %i.de = getelementptr i8, ptr %i.ci, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = icmp sgt i32 %i.al, %i.df
  br i1 %i.dg, label %bb.x, label %bb.az

bb.x:                                             ; preds = %bb.w
  %i.dh = getelementptr i8, ptr %i.ak, i64 -12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4
  %i.dj = icmp sgt i32 %i.al, %i.di
  br i1 %i.dj, label %bb.y, label %bb.az

bb.y:                                             ; preds = %bb.x
  %i.dk = add nsw i64 %i.aj, -2                   ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = icmp sgt i32 %i.al, %i.dm
  br i1 %i.dn, label %bb.z, label %bb.az

bb.z:                                             ; preds = %bb.y
  %i.do = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = icmp sgt i32 %i.al, %i.dq
  br i1 %i.dr, label %bb.aa, label %bb.az

bb.aa:                                            ; preds = %bb.z
  %i.ds = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %.not.us = icmp slt i32 %i.al, %i.du
  br i1 %.not.us, label %bb.az, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = add nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4
end_hunk_4
begin_hunk_5_@main:bb.a
    i8 51, label %bb.k
    i8 113, label %bb.l
    i8 100, label %bb.m
    i8 116, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  br label %bb.u

bb.h:                                             ; preds = %bb.d
  br label %bb.u

bb.i:                                             ; preds = %bb.d
  br label %bb.u

bb.j:                                             ; preds = %bb.d
  br label %bb.u

bb.k:                                             ; preds = %bb.d
  br label %bb.u

bb.l:                                             ; preds = %bb.d
  br label %bb.u

bb.m:                                             ; preds = %bb.d
  %i.o = add nsw i32 %.071162, 1                  ; 4 uses
  %.not84 = icmp slt i32 %i.o, %0
  br i1 %.not84, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %puts85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16) ; 0 uses
  tail call void @exit(i32 noundef 0) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call double @strtod(ptr noundef nonnull captures(none) %i.r, ptr noundef null) #21, !inline_history !68 ; 2 uses
  %i.t = fptrunc double %i.s to float             ; 2 uses
  %i.u = fcmp olt double %i.s, f0xB690000000000000
  br i1 %i.u, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br label %bb.u

bb.q:                                             ; preds = %bb.d
  %i.v = add nsw i32 %.071162, 1                  ; 3 uses
  %.not83 = icmp slt i32 %i.v, %0
  br i1 %.not83, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  tail call void @exit(i32 noundef 0) #20
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %1, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.y, ptr noundef null, i32 noundef 10) #21, !inline_history !69
  %i.aa = trunc i64 %i.z to i32
  br label %bb.u

bb.t:                                             ; preds = %.lr.ph
  %i.ab = tail call i32 @usage()                  ; 0 uses
  unreachable

bb.u:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.s, %bb.p, %bb.o
  %.172 = phi i32 [ %.071162, %bb.d ], [ %.071162, %bb.e ], [ %.071162, %bb.f ], [ %.071162, %bb.g ], [ %.071162, %bb.h ], [ %.071162, %bb.i ], [ %.071162, %bb.j ], [ %.071162, %bb.k ], [ %.071162, %bb.l ], [ %i.o, %bb.p ], [ %i.o, %bb.o ], [ %i.v, %bb.s ]
  %.170 = phi i32 [ %.069163, %bb.d ], [ %.069163, %bb.e ], [ %.069163, %bb.f ], [ %.069163, %bb.g ], [ %.069163, %bb.h ], [ %.069163, %bb.i ], [ %.069163, %bb.j ], [ %.069163, %bb.k ], [ %.069163, %bb.l ], [ %.069163, %bb.p ], [ %.069163, %bb.o ], [ %i.aa, %bb.s ] ; 2 uses
  %.168 = phi i32 [ %.067164, %bb.d ], [ %.067164, %bb.e ], [ %.067164, %bb.f ], [ %.067164, %bb.g ], [ 1, %bb.h ], [ %.067164, %bb.i ], [ %.067164, %bb.j ], [ %.067164, %bb.k ], [ %.067164, %bb.l ], [ %.067164, %bb.p ], [ %.067164, %bb.o ], [ %.067164, %bb.s ] ; 2 uses
  %.166 = phi i32 [ %.065165, %bb.d ], [ %.065165, %bb.e ], [ %.065165, %bb.f ], [ %.065165, %bb.g ], [ %.065165, %bb.h ], [ 0, %bb.i ], [ %.065165, %bb.j ], [ %.065165, %bb.k ], [ %.065165, %bb.l ], [ %.065165, %bb.p ], [ %.065165, %bb.o ], [ %.065165, %bb.s ] ; 2 uses
  %.164 = phi i32 [ %.063166, %bb.d ], [ %.063166, %bb.e ], [ %.063166, %bb.f ], [ %.063166, %bb.g ], [ %.063166, %bb.h ], [ %.063166, %bb.i ], [ %.063166, %bb.j ], [ 1, %bb.k ], [ %.063166, %bb.l ], [ 1, %bb.p ], [ %.063166, %bb.o ], [ %.063166, %bb.s ] ; 2 uses
  %.162 = phi i32 [ %.061167, %bb.d ], [ %.061167, %bb.e ], [ %.061167, %bb.f ], [ %.061167, %bb.g ], [ %.061167, %bb.h ], [ %.061167, %bb.i ], [ 1, %bb.j ], [ %.061167, %bb.k ], [ %.061167, %bb.l ], [ %.061167, %bb.p ], [ %.061167, %bb.o ], [ %.061167, %bb.s ] ; 2 uses
  %.160 = phi i32 [ %.059168, %bb.d ], [ %.059168, %bb.e ], [ %.059168, %bb.f ], [ %.059168, %bb.g ], [ %.059168, %bb.h ], [ %.059168, %bb.i ], [ %.059168, %bb.j ], [ %.059168, %bb.k ], [ 1, %bb.l ], [ %.059168, %bb.p ], [ %.059168, %bb.o ], [ %.059168, %bb.s ] ; 2 uses
  %.158 = phi float [ %.057169, %bb.d ], [ %.057169, %bb.e ], [ %.057169, %bb.f ], [ %.057169, %bb.g ], [ %.057169, %bb.h ], [ %.057169, %bb.i ], [ %.057169, %bb.j ], [ %.057169, %bb.k ], [ %.057169, %bb.l ], [ %i.t, %bb.p ], [ %i.t, %bb.o ], [ %.057169, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %.0170, %bb.d ], [ 0, %bb.e ], [ 1, %bb.f ], [ 2, %bb.g ], [ %.0170, %bb.h ], [ %.0170, %bb.i ], [ %.0170, %bb.j ], [ %.0170, %bb.k ], [ %.0170, %bb.l ], [ %.0170, %bb.p ], [ %.0170, %bb.o ], [ %.0170, %bb.s ] ; 2 uses
  %i.ac = add nsw i32 %.172, 1                    ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !70

._crit_edge.loopexit:                             ; preds = %bb.u
  %i.ae = sitofp i32 %.170 to float
  %i.af = icmp eq i32 %.160, 0
  %i.ag = icmp eq i32 %.162, 0
  %i.ah = icmp eq i32 %.166, 0
  %i.ai = fpext float %.158 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.069.lcssa = phi float [ 2.000000e+01, %bb.c ], [ %i.ae, %._crit_edge.loopexit ] ; 3 uses
  %.067.lcssa = phi i32 [ 0, %bb.c ], [ %.168, %._crit_edge.loopexit ] ; 3 uses
  %.065.lcssa = phi i1 [ false, %bb.c ], [ %i.ah, %._crit_edge.loopexit ]
  %.063.lcssa = phi i32 [ 0, %bb.c ], [ %.164, %._crit_edge.loopexit ] ; 3 uses
  %.061.lcssa = phi i1 [ true, %bb.c ], [ %i.ag, %._crit_edge.loopexit ] ; 2 uses
  %.059.lcssa = phi i1 [ true, %bb.c ], [ %i.af, %._crit_edge.loopexit ]
  %.057.lcssa = phi double [ 4.000000e+00, %bb.c ], [ %i.ai, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.c ], [ %.1, %._crit_edge.loopexit ] ; 2 uses
  %i.aj = icmp eq i32 %.067.lcssa, 1
  %i.ak = icmp eq i32 %.0.lcssa, 0
  %or.cond = select i1 %i.aj, i1 %i.ak, i1 false
  %spec.store.select = select i1 %or.cond, i32 1, i32 %.0.lcssa
  switch i32 %spec.store.select, label %default.unreachable193 [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.aq
  ]

bb.v:                                             ; preds = %._crit_edge
  %i.al = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 258 ; 2 uses
  br label %.split.i

.split.i:                                         ; preds = %.split.i, %bb.v
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.i ], [ -256, %bb.v ] ; 3 uses
  %i.an = trunc nsw i64 %indvars.iv.i to i32
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fdiv float %i.ao, %.069.lcssa           ; 2 uses
  %i.aq = fneg float %i.ap
  %i.ar = fmul float %i.ap, %i.aq
  %i.as = fpext float %i.ar to double
  %i.at = tail call double @exp(double noundef %i.as) #21, !tbaa !4
  %i.au = fmul double %i.at, 1.000000e+02
  %i.av = fptrunc double %i.au to float
  %i.aw = fptoui float %i.av to i8
  %i.ax = getelementptr inbounds i8, ptr %i.am, i64 %indvars.iv.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !18
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 257
  br i1 %exitcond.not.i, label %setup_brightness_lut.exit, label %.split.i, !llvm.loop !20

setup_brightness_lut.exit:                        ; preds = %.split.i
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %i.az = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  tail call void @susan_smoothing(i32 noundef %.063.lcssa, ptr noundef %i.ay, double noundef %.057.lcssa, i32 noundef %i.az, i32 noundef %i.ba, ptr noundef nonnull %i.am)
  br label %int_to_uchar.exit

bb.w:                                             ; preds = %._crit_edge
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !4   ; 21 uses
  %i.bc = load i32, ptr %i.c, align 4, !tbaa !4   ; 16 uses
  %i.bd = mul nsw i32 %i.bc, %i.bb                ; 15 uses
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = shl nsw i64 %i.be, 2                    ; 2 uses
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bf) #23 ; 12 uses
  %i.bh = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 258 ; 5 uses
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.w
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i, %.split.us.i ], [ -256, %bb.w ] ; 3 uses
  %i.bj = trunc nsw i64 %indvars.iv22.i to i32
  %i.bk = sitofp i32 %i.bj to float
  %i.bl = fdiv float %i.bk, %.069.lcssa           ; 2 uses
  %i.bm = fmul float %i.bl, %i.bl                 ; 3 uses
  %i.bn = fneg float %i.bm
  %i.bo = fmul float %i.bm, %i.bn
  %i.bp = fmul float %i.bm, %i.bo
  %i.bq = fpext float %i.bp to double
  %i.br = tail call double @exp(double noundef %i.bq) #21, !tbaa !4
  %i.bs = fmul double %i.br, 1.000000e+02
  %i.bt = fptrunc double %i.bs to float
  %i.bu = fptoui float %i.bt to i8
  %i.bv = getelementptr inbounds i8, ptr %i.bi, i64 %indvars.iv22.i
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !18
  %indvars.iv.next23.i = add nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next23.i, 257
  br i1 %exitcond25.not.i, label %setup_brightness_lut.exit86, label %.split.us.i, !llvm.loop !20

setup_brightness_lut.exit86:                      ; preds = %.split.us.i
  %.not79 = icmp eq i32 %.067.lcssa, 0
  br i1 %.not79, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %setup_brightness_lut.exit86
  %.not82 = icmp eq i32 %.063.lcssa, 0
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !11  ; 9 uses
  br i1 %.not82, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bg, i8 0, i64 %i.bf, i1 false)
  %i.bx = add nsw i32 %i.bc, -1
  %i.by = icmp sgt i32 %i.bc, 2
  br i1 %i.by, label %.preheader.lr.ph.i, label %susan_principle_small.exit

.preheader.lr.ph.i:                               ; preds = %bb.y
  %i.bz = icmp sgt i32 %i.bb, 2
  %i.ca = add nsw i32 %i.bb, -2
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  br i1 %i.bz, label %.preheader.preheader.i, label %susan_principle_small.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.cc = add nsw i32 %i.bb, -1
  %i.cd = zext nneg i32 %i.bb to i64
  %wide.trip.count64.i = zext nneg i32 %i.bx to i64
  %wide.trip.count.i = zext nneg i32 %i.cc to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv61.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next62.i, %._crit_edge.i ] ; 3 uses
  %i.ce = add nsw i64 %indvars.iv61.i, -1
  %i.cf = mul nuw nsw i64 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cf
  %i.ch = trunc i64 %indvars.iv61.i to i32
  %i.ci = mul i32 %i.bb, %i.ch
  %i.cj = zext i32 %i.ci to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %.preheader.i
  %indvars.iv.i87 = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i88, %bb.ab ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.i87 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -1
  %i.cm = add nuw nsw i64 %indvars.iv.i87, %i.cj  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.cp ; 8 uses
  %i.cr = load i8, ptr %i.cl, align 1, !tbaa !18
  %i.cs = zext i8 %i.cr to i64
  %i.ct = sub nsw i64 0, %i.cs
  %i.cu = getelementptr inbounds i8, ptr %i.cq, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !18
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nuw nsw i32 %i.cw, 100
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ck, i64 1 ; 2 uses
  %i.cz = load i8, ptr %i.ck, align 1, !tbaa !18
  %i.da = zext i8 %i.cz to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds i8, ptr %i.cq, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !18
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.cx, %i.de
  %i.dg = load i8, ptr %i.cy, align 1, !tbaa !18
  %i.dh = zext i8 %i.dg to i64
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.cq, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add nuw nsw i32 %i.df, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.cy, i64 %i.cb ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !18
  %i.dp = zext i8 %i.do to i64
  %i.dq = sub nsw i64 0, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.cq, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !18
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dm, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !18
  %i.dx = zext i8 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.cq, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !18
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nuw nsw i32 %i.du, %i.eb
  %i.ed = getelementptr inbounds i8, ptr %i.dv, i64 %i.cb ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.ef = load i8, ptr %i.ed, align 1, !tbaa !18
  %i.eg = zext i8 %i.ef to i64
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = getelementptr inbounds i8, ptr %i.cq, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !18
  %i.ek = zext i8 %i.ej to i32
  %i.el = add nuw nsw i32 %i.ec, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.en = load i8, ptr %i.ee, align 1, !tbaa !18
  %i.eo = zext i8 %i.en to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %i.cq, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !18
  %i.es = zext i8 %i.er to i32
  %i.et = add nuw nsw i32 %i.el, %i.es
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !18
  %i.ev = zext i8 %i.eu to i64
  %i.ew = sub nsw i64 0, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %i.cq, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !18
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.et, %i.ez            ; 2 uses
  %i.fb = icmp samesign ult i32 %i.fa, 731
  br i1 %i.fb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fc = sub nuw nsw i32 730, %i.fa
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cm
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i
  br i1 %exitcond.not.i89, label %._crit_edge.i, label %bb.z, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.ab
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %susan_principle_small.exit, label %.preheader.i, !llvm.loop !24

bb.ac:                                            ; preds = %bb.x
  %i.fe = tail call i32 @susan_principle(ptr noundef %i.bw, ptr noundef %i.bg, ptr noundef nonnull %i.bi, i32 noundef 2650, i32 noundef %i.bb, i32 noundef %i.bc) ; 0 uses
  br label %susan_principle_small.exit

susan_principle_small.exit:                       ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.y, %bb.ac
  %i.ff = icmp sgt i32 %i.bd, 0
  br i1 %i.ff, label %.lr.ph.preheader.i, label %int_to_uchar.exit

.lr.ph.preheader.i:                               ; preds = %susan_principle_small.exit
  %i.fg = load i32, ptr %i.bg, align 4, !tbaa !4  ; 3 uses
  %wide.trip.count.i90 = zext nneg i32 %i.bd to i64 ; 5 uses
  %min.iters.check209 = icmp ult i32 %i.bd, 8
  br i1 %min.iters.check209, label %.lr.ph.i.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %.lr.ph.preheader.i
  %n.vec212 = and i64 %wide.trip.count.i90, 2147483640 ; 3 uses
  %broadcast.splatinsert213 = insertelement <4 x i32> poison, i32 %i.fg, i64 0
  %broadcast.splat214 = shufflevector <4 x i32> %broadcast.splatinsert213, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph210
  %index216 = phi i64 [ 0, %vector.ph210 ], [ %index.next223, %vector.body215 ] ; 2 uses
  %vec.phi217 = phi <4 x i32> [ %broadcast.splat214, %vector.ph210 ], [ %i.fl, %vector.body215 ]
  %vec.phi218 = phi <4 x i32> [ %broadcast.splat214, %vector.ph210 ], [ %i.fm, %vector.body215 ]
  %vec.phi219 = phi <4 x i32> [ %broadcast.splat214, %vector.ph210 ], [ %i.fj, %vector.body215 ]
  %vec.phi220 = phi <4 x i32> [ %broadcast.splat214, %vector.ph210 ], [ %i.fk, %vector.body215 ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index216 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load221 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !4 ; 2 uses
  %wide.load222 = load <4 x i32>, ptr %i.fi, align 4, !tbaa !4 ; 2 uses
  %i.fj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load221, <4 x i32> %vec.phi219) ; 2 uses
  %i.fk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load222, <4 x i32> %vec.phi220) ; 2 uses
  %i.fl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load221, <4 x i32> %vec.phi217) ; 2 uses
  %i.fm = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load222, <4 x i32> %vec.phi218) ; 2 uses
  %index.next223 = add nuw i64 %index216, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next223, %n.vec212
  br i1 %i.fn, label %middle.block224, label %vector.body215, !llvm.loop !71

middle.block224:                                  ; preds = %vector.body215
  %rdx.minmax225 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fl, <4 x i32> %i.fm)
  %i.fo = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax225) ; 2 uses
  %rdx.minmax226 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fj, <4 x i32> %i.fk)
  %i.fp = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax226) ; 2 uses
  %cmp.n227 = icmp eq i64 %n.vec212, %wide.trip.count.i90
  br i1 %cmp.n227, label %.lr.ph39.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block224
  %indvars.iv.i91.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec212, %middle.block224 ]
  %.035.i.ph = phi i32 [ %i.fg, %.lr.ph.preheader.i ], [ %i.fo, %middle.block224 ]
  %.02634.i.ph = phi i32 [ %i.fg, %.lr.ph.preheader.i ], [ %i.fp, %middle.block224 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i91 = phi i64 [ %indvars.iv.next.i92, %.lr.ph.i ], [ %indvars.iv.i91.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.035.i = phi i32 [ %.1.i, %.lr.ph.i ], [ %.035.i.ph, %.lr.ph.i.preheader ]
  %.02634.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.02634.i.ph, %.lr.ph.i.preheader ]
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i91
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4  ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.fr, i32 %.02634.i) ; 2 uses
  %.1.i = tail call i32 @llvm.smin.i32(i32 %i.fr, i32 %.035.i) ; 2 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i90
  br i1 %exitcond.not.i93, label %.lr.ph39.preheader.i, label %.lr.ph.i, !llvm.loop !72

.lr.ph39.preheader.i:                             ; preds = %.lr.ph.i, %middle.block224
  %spec.select.i.lcssa = phi i32 [ %i.fp, %middle.block224 ], [ %spec.select.i, %.lr.ph.i ]
  %.1.i.lcssa = phi i32 [ %i.fo, %middle.block224 ], [ %.1.i, %.lr.ph.i ] ; 4 uses
  %i.fs = sub nsw i32 %spec.select.i.lcssa, %.1.i.lcssa ; 3 uses
  %xtraiter327 = and i64 %wide.trip.count.i90, 1
  %i.ft = icmp eq i32 %i.bd, 1
  br i1 %i.ft, label %.lr.ph39.i.epil.preheader, label %.lr.ph39.preheader.i.new

.lr.ph39.preheader.i.new:                         ; preds = %.lr.ph39.preheader.i
  %unroll_iter330 = and i64 %wide.trip.count.i90, 2147483646
  br label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.lr.ph39.i, %.lr.ph39.preheader.i.new
  %indvars.iv42.i = phi i64 [ 0, %.lr.ph39.preheader.i.new ], [ %indvars.iv.next43.i.1, %.lr.ph39.i ] ; 4 uses
  %niter331 = phi i64 [ 0, %.lr.ph39.preheader.i.new ], [ %niter331.next.1, %.lr.ph39.i ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv42.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !4
  %i.fw = sub nsw i32 %i.fv, %.1.i.lcssa
  %i.fx = mul nsw i32 %i.fw, 255
  %i.fy = sdiv i32 %i.fx, %i.fs
  %i.fz = trunc i32 %i.fy to i8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv42.i
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !18
  %indvars.iv.next43.i = or disjoint i64 %indvars.iv42.i, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next43.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4
  %i.gd = sub nsw i32 %i.gc, %.1.i.lcssa
  %i.ge = mul nsw i32 %i.gd, 255
  %i.gf = sdiv i32 %i.ge, %i.fs
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.next43.i
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !18
  %indvars.iv.next43.i.1 = add nuw nsw i64 %indvars.iv42.i, 2 ; 2 uses
end_hunk_5
