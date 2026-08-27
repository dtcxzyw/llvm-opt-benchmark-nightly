Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/susan?download=true
inline.NumInlined: 12
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@int_to_uchar:bb.a
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
  %i.o = mul nuw nsw i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
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
  %i.l = mul nuw nsw i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
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
  %i.a = load i32, ptr %3, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader81

.lr.ph:                                           ; preds = %bb.a
  %i.c = shl nsw i32 %4, 1
  %i.d = sext i32 %4 to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.d
  br label %bb.b

.preheader81:                                     ; preds = %bb.b, %bb.a
  %i.e = icmp sgt i32 %4, 0
  %i.f = shl nsw i32 %4, 1                        ; 3 uses
  br i1 %i.e, label %.lr.ph84, label %._crit_edge92

.lr.ph84:                                         ; preds = %.preheader81
  %i.g = zext nneg i32 %4 to i64
  %invariant.gep85 = getelementptr i8, ptr %1, i64 %i.g ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07782 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.b ] ; 3 uses
  %i.h = add nsw i32 %.07782, %4
  %i.i = load i32, ptr %2, align 4, !tbaa !4      ; 3 uses
  %i.j = add nsw i32 %i.i, %i.c
  %i.k = mul nsw i32 %i.j, %i.h
  %i.l = sext i32 %i.k to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.l
  %i.m = load ptr, ptr %0, align 8, !tbaa !11
  %i.n = mul nsw i32 %i.i, %.07782
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep, ptr align 1 %i.p, i64 %i.q, i1 false)
  %i.r = add nuw nsw i32 %.07782, 1               ; 2 uses
  %i.s = load i32, ptr %3, align 4, !tbaa !4
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.preheader81, !llvm.loop !25

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.u = shl nuw nsw i32 %4, 1                    ; 6 uses
  %invariant.op = sub nsw i32 0, %i.u             ; 2 uses
  %.pre = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %5 = icmp sgt i32 %.pre, %invariant.op
  br i1 %5, label %.preheader, label %._crit_edge92

bb.c:                                             ; preds = %.lr.ph84, %bb.c
  %.183 = phi i32 [ 0, %.lr.ph84 ], [ %i.at, %bb.c ] ; 4 uses
  %i.v = xor i32 %.183, -1                        ; 2 uses
  %i.w = add nsw i32 %4, %i.v
  %i.x = load i32, ptr %2, align 4, !tbaa !4      ; 3 uses
  %i.y = add nsw i32 %i.x, %i.f
  %i.z = mul nsw i32 %i.y, %i.w
  %i.aa = sext i32 %i.z to i64
  %gep86 = getelementptr i8, ptr %invariant.gep85, i64 %i.aa
  %i.ab = load ptr, ptr %0, align 8, !tbaa !11
  %i.ac = mul nsw i32 %i.x, %.183
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 %i.ad
  %i.af = sext i32 %i.x to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep86, ptr align 1 %i.ae, i64 %i.af, i1 false)
  %i.ag = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.ah = add nuw i32 %.183, %4
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = load i32, ptr %2, align 4, !tbaa !4     ; 3 uses
  %i.ak = add nsw i32 %i.aj, %i.f
  %i.al = mul nsw i32 %i.ai, %i.ak
  %i.am = sext i32 %i.al to i64
  %gep88 = getelementptr i8, ptr %invariant.gep85, i64 %i.am
  %i.an = load ptr, ptr %0, align 8, !tbaa !11
  %i.ao = add i32 %i.ag, %i.v
  %i.ap = mul nsw i32 %i.ao, %i.aj
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep88, ptr align 1 %i.ar, i64 %i.as, i1 false)
  %i.at = add nuw nsw i32 %.183, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %4
  br i1 %exitcond.not, label %.preheader.lr.ph, label %bb.c, !llvm.loop !26

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.au = phi i32 [ %i.by, %._crit_edge ], [ %.pre, %.preheader.lr.ph ] ; 2 uses
  %.291 = phi i32 [ %i.bz, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.av = icmp sgt i32 %i.au, %invariant.op
  br i1 %i.av, label %.lr.ph90, label %._crit_edge

.lr.ph90:                                         ; preds = %.preheader
  %i.aw = xor i32 %.291, -1                       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph90, %bb.d
  %.089 = phi i32 [ 0, %.lr.ph90 ], [ %i.bu, %bb.d ] ; 3 uses
  %i.ax = load i32, ptr %2, align 4, !tbaa !4
  %i.ay = add nsw i32 %i.ax, %i.u
  %i.az = mul nsw i32 %i.ay, %.089
  %i.ba = add nsw i32 %i.az, %4                   ; 2 uses
  %i.bb = add nsw i32 %i.ba, %.291
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18
  %i.bf = add i32 %i.ba, %i.aw
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds i8, ptr %1, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !18
  %i.bi = load i32, ptr %2, align 4, !tbaa !4     ; 2 uses
  %i.bj = add nsw i32 %i.bi, %i.u
  %i.bk = mul nsw i32 %i.bj, %.089
  %i.bl = add i32 %i.bi, %4
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.aw
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds i8, ptr %1, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = add nsw i32 %i.bm, %.291
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %1, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1, !tbaa !18
  %i.bu = add nuw nsw i32 %.089, 1                ; 2 uses
  %i.bv = load i32, ptr %3, align 4, !tbaa !4     ; 2 uses
  %i.bw = add nsw i32 %i.bv, %i.u
  %i.bx = icmp slt i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.d, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.by = phi i32 [ %i.au, %.preheader ], [ %i.bv, %bb.d ]
  %i.bz = add nuw nsw i32 %.291, 1                ; 2 uses
  %exitcond93.not = icmp eq i32 %i.bz, %4
  br i1 %exitcond93.not, label %._crit_edge92, label %.preheader, !llvm.loop !28

._crit_edge92:                                    ; preds = %._crit_edge, %.preheader81, %.preheader.lr.ph
  %.pre-phi = phi i32 [ %i.f, %.preheader81 ], [ %i.u, %.preheader.lr.ph ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.ca = load i32, ptr %2, align 4, !tbaa !4
  %i.cb = add nsw i32 %i.ca, %.pre-phi
  store i32 %i.cb, ptr %2, align 4, !tbaa !4
  %i.cc = load i32, ptr %3, align 4, !tbaa !4
  %i.cd = add nsw i32 %i.cc, %.pre-phi
  store i32 %i.cd, ptr %3, align 4, !tbaa !4
  store ptr %1, ptr %0, align 8, !tbaa !11
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @susan_smoothing(i32 noundef %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = fptrunc double %2 to float               ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !11
  store i32 %3, ptr %i.b, align 4, !tbaa !4
  store i32 %4, ptr %i.c, align 4, !tbaa !4
  %i.e = icmp eq i32 %0, 0                        ; 2 uses
  %i.f = fpext float %i.d to double               ; 2 uses
  %i.g = fmul double %i.f, 1.500000e+00
  %i.h = fptosi double %i.g to i32                ; 4 uses
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %.0191 = select i1 %i.e, i32 %i.i, i32 1        ; 18 uses
  %i.j = fcmp ogt double %2, f0x402E000010000000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %i.f) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %puts206 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  tail call void @exit(i32 noundef 0) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = shl nsw i32 %.0191, 1                    ; 5 uses
  %i.m = or disjoint i32 %i.l, 1                  ; 3 uses
  %.not = icmp slt i32 %i.l, %3
  %.not199 = icmp slt i32 %i.l, %4
  %or.cond = and i1 %.not, %.not199
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.0191, i32 noundef %3, i32 noundef %4) ; 0 uses
  tail call void @exit(i32 noundef 0) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.l, %3
  %i.p = add nsw i32 %i.l, %4
  %i.q = mul nsw i32 %i.o, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #23
  %i.t = call i32 @enlarge(ptr noundef nonnull %i.a, ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef %.0191) ; 0 uses
  br i1 %i.e, label %bb.f, label %.preheader261

.preheader261:                                    ; preds = %bb.e
  %i.u = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.v = icmp sgt i32 %i.u, 2
  %i.w = load i32, ptr %i.b, align 4              ; 2 uses
  %i.x = icmp sgt i32 %i.w, 2
  %or.cond346 = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond346, label %.preheader260, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.z = sub nsw i32 %i.y, %i.m
  %i.aa = mul nsw i32 %i.m, %i.m
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #23 ; 2 uses
  %i.ad = fneg float %i.d
  %i.ae = fmul float %i.d, %i.ad
  %i.af = xor i32 %i.h, -1                        ; 5 uses
  %.not200273 = icmp slt i32 %i.i, %i.af          ; 2 uses
  br i1 %.not200273, label %.preheader258, label %.preheader259

.preheader259:                                    ; preds = %bb.f, %._crit_edge271
  %.0175275 = phi ptr [ %i.bc, %._crit_edge271 ], [ %i.ac, %bb.f ]
  %.0188274 = phi i32 [ %i.be, %._crit_edge271 ], [ %i.af, %bb.f ] ; 4 uses
  %i.ag = mul nsw i32 %.0188274, %.0188274
  br label %bb.g

.preheader258:                                    ; preds = %._crit_edge271, %bb.f
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %.0191
  %i.aj = icmp slt i32 %.0191, %i.ai
  br i1 %i.aj, label %.preheader257.lr.ph, label %.loopexit

.preheader257.lr.ph:                              ; preds = %.preheader258
  %narrow = sub nsw i32 0, %.0191
  %i.ak = sext i32 %narrow to i64
  %i.al = sext i32 %i.z to i64
  %i.am = add i32 %.0191, %i.h                    ; 2 uses
  %i.an = add i32 %i.am, 1                        ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %i.aq = sext i32 %.0191 to i64
  %xtraiter = and i32 %i.am, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.ar = sub i32 0, %i.h
  %i.as = icmp eq i32 %i.an, 0
  br label %.preheader257

bb.g:                                             ; preds = %.preheader259, %bb.g
  %.1176269 = phi ptr [ %.0175275, %.preheader259 ], [ %i.bc, %bb.g ] ; 2 uses
  %.0185268 = phi i32 [ %i.af, %.preheader259 ], [ %i.bd, %bb.g ] ; 4 uses
  %i.at = mul nsw i32 %.0185268, %.0185268
  %i.au = add nuw nsw i32 %i.at, %i.ag
  %i.av = uitofp nneg i32 %i.au to float
  %i.aw = fdiv float %i.av, %i.ae
  %i.ax = fpext float %i.aw to double
  %i.ay = tail call double @exp(double noundef %i.ax) #21, !tbaa !4
  %i.az = fmul double %i.ay, 1.000000e+02
  %i.ba = fptosi double %i.az to i32
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.1176269, i64 1 ; 2 uses
  store i8 %i.bb, ptr %.1176269, align 1, !tbaa !18
  %i.bd = add i32 %.0185268, 1
  %exitcond.not = icmp eq i32 %.0185268, %.0191
  br i1 %exitcond.not, label %._crit_edge271, label %bb.g, !llvm.loop !30

._crit_edge271:                                   ; preds = %bb.g
  %i.be = add i32 %.0188274, 1
  %exitcond312.not = icmp eq i32 %.0188274, %.0191
  br i1 %exitcond312.not, label %.preheader258, label %.preheader259, !llvm.loop !31

.preheader257:                                    ; preds = %.preheader257.lr.ph, %._crit_edge301
  %i.bf = phi i32 [ %i.ah, %.preheader257.lr.ph ], [ %i.fh, %._crit_edge301 ]
  %i.bg = phi i32 [ %i.y, %.preheader257.lr.ph ], [ %i.fi, %._crit_edge301 ] ; 3 uses
  %.0173304 = phi ptr [ %1, %.preheader257.lr.ph ], [ %.1174.lcssa, %._crit_edge301 ] ; 2 uses
  %.1189303 = phi i32 [ %.0191, %.preheader257.lr.ph ], [ %.pre-phi, %._crit_edge301 ] ; 5 uses
  %i.bh = sub nsw i32 %i.bg, %.0191
  %i.bi = icmp slt i32 %.0191, %i.bh
  br i1 %i.bi, label %.lr.ph300, label %.preheader257.._crit_edge301_crit_edge

.preheader257.._crit_edge301_crit_edge:           ; preds = %.preheader257
  %.pre320 = add nsw i32 %.1189303, 1
  br label %._crit_edge301

.lr.ph300:                                        ; preds = %.preheader257
  %i.bj = sub nsw i32 %.1189303, %.0191
  %i.bk = add nsw i32 %.1189303, -1
  %i.bl = add nsw i32 %.1189303, 1                ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph300, %bb.j
  %indvars.iv316 = phi i64 [ %i.aq, %.lr.ph300 ], [ %indvars.iv.next317, %bb.j ] ; 5 uses
  %i.bm = phi i32 [ %i.bg, %.lr.ph300 ], [ %i.fd, %bb.j ] ; 4 uses
  %.1174299 = phi ptr [ %.0173304, %.lr.ph300 ], [ %.2, %bb.j ] ; 2 uses
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.bo = mul nsw i32 %i.bm, %.1189303
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %i.bn, i64 %indvars.iv316
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp  ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18  ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = zext i8 %i.bs to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bu ; 3 uses
  br i1 %.not200273, label %._crit_edge294.split.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.h
  %i.bw = mul nsw i32 %i.bm, %i.bj
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %indvars.iv316
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.ak
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge283
  %.0293 = phi i32 [ %.lcssa, %._crit_edge283 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.2177292 = phi ptr [ %scevgep313, %._crit_edge283 ], [ %i.ac, %.preheader.preheader ] ; 4 uses
  %.0179291 = phi ptr [ %i.dw, %._crit_edge283 ], [ %i.ca, %.preheader.preheader ] ; 4 uses
  %.0181290 = phi i32 [ %.lcssa352, %._crit_edge283 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0183289 = phi i32 [ %i.dx, %._crit_edge283 ], [ %i.af, %.preheader.preheader ] ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %.0179291, i64 1
  %i.cc = load i8, ptr %.0179291, align 1, !tbaa !18 ; 2 uses
  %i.cd = zext i8 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %.2177292, i64 1
  %i.cf = load i8, ptr %.2177292, align 1, !tbaa !18
  %i.cg = zext i8 %i.cf to i32
  %i.ch = zext i8 %i.cc to i64
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.bv, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = zext i8 %i.ck to i32
  %i.cm = mul nuw nsw i32 %i.cl, %i.cg            ; 2 uses
  %i.cn = add nsw i32 %i.cm, %.0181290            ; 2 uses
  %i.co = mul nuw nsw i32 %i.cm, %i.cd
  %i.cp = add nsw i32 %i.co, %.0293               ; 2 uses
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader
  %.lcssa352.unr = phi i32 [ poison, %.preheader ], [ %i.cn, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i32 [ poison, %.preheader ], [ %i.cp, %.prol.loopexit.unr-lcssa ]
  %.1281.unr = phi i32 [ %.0293, %.preheader ], [ %i.cp, %.prol.loopexit.unr-lcssa ]
  %.3178280.unr = phi ptr [ %.2177292, %.preheader ], [ %i.ce, %.prol.loopexit.unr-lcssa ]
  %.1180279.unr = phi ptr [ %.0179291, %.preheader ], [ %i.cb, %.prol.loopexit.unr-lcssa ]
  %.1182278.unr = phi i32 [ %.0181290, %.preheader ], [ %i.cn, %.prol.loopexit.unr-lcssa ]
  %.0184277.unr = phi i32 [ %i.af, %.preheader ], [ %i.ar, %.prol.loopexit.unr-lcssa ]
  br i1 %i.as, label %._crit_edge283, label %.preheader.new

.preheader.new:                                   ; preds = %.prol.loopexit, %.preheader.new
  %.1281 = phi i32 [ %i.du, %.preheader.new ], [ %.1281.unr, %.prol.loopexit ]
  %.3178280 = phi ptr [ %i.dj, %.preheader.new ], [ %.3178280.unr, %.prol.loopexit ] ; 3 uses
  %.1180279 = phi ptr [ %i.dg, %.preheader.new ], [ %.1180279.unr, %.prol.loopexit ] ; 3 uses
  %.1182278 = phi i32 [ %i.ds, %.preheader.new ], [ %.1182278.unr, %.prol.loopexit ]
  %.0184277 = phi i32 [ %i.dv, %.preheader.new ], [ %.0184277.unr, %.prol.loopexit ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1180279, i64 1
  %i.cr = load i8, ptr %.1180279, align 1, !tbaa !18 ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %.3178280, i64 1
  %i.cu = load i8, ptr %.3178280, align 1, !tbaa !18
  %i.cv = zext i8 %i.cu to i32
  %i.cw = zext i8 %i.cr to i64
  %i.cx = sub nsw i64 0, %i.cw
  %i.cy = getelementptr inbounds i8, ptr %i.bv, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !18
  %i.da = zext i8 %i.cz to i32
  %i.db = mul nuw nsw i32 %i.da, %i.cv            ; 2 uses
  %i.dc = add nsw i32 %i.db, %.1182278
  %i.dd = mul nuw nsw i32 %i.db, %i.cs
  %i.de = add nsw i32 %i.dd, %.1281
  %i.df = add i32 %.0184277, 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.1180279, i64 2
  %i.dh = load i8, ptr %i.cq, align 1, !tbaa !18  ; 2 uses
  %i.di = zext i8 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %.3178280, i64 2
  %i.dk = load i8, ptr %i.ct, align 1, !tbaa !18
  %i.dl = zext i8 %i.dk to i32
  %i.dm = zext i8 %i.dh to i64
  %i.dn = sub nsw i64 0, %i.dm
  %i.do = getelementptr inbounds i8, ptr %i.bv, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !18
  %i.dq = zext i8 %i.dp to i32
  %i.dr = mul nuw nsw i32 %i.dq, %i.dl            ; 2 uses
  %i.ds = add nsw i32 %i.dr, %i.dc                ; 2 uses
  %i.dt = mul nuw nsw i32 %i.dr, %i.di
  %i.du = add nsw i32 %i.dt, %i.de                ; 2 uses
  %i.dv = add i32 %.0184277, 2
  %exitcond314.not.1 = icmp eq i32 %i.df, %.0191
  br i1 %exitcond314.not.1, label %._crit_edge283, label %.preheader.new, !llvm.loop !32

._crit_edge283:                                   ; preds = %.preheader.new, %.prol.loopexit
  %.lcssa352 = phi i32 [ %.lcssa352.unr, %.prol.loopexit ], [ %i.ds, %.preheader.new ] ; 2 uses
  %.lcssa = phi i32 [ %.lcssa.unr, %.prol.loopexit ], [ %i.du, %.preheader.new ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.0179291, i64 %i.ap
  %scevgep313 = getelementptr i8, ptr %.2177292, i64 %i.ap
  %i.dw = getelementptr inbounds i8, ptr %scevgep, i64 %i.al
  %i.dx = add i32 %.0183289, 1
  %exitcond315.not = icmp eq i32 %.0183289, %.0191
  br i1 %exitcond315.not, label %._crit_edge294.split, label %.preheader, !llvm.loop !33

._crit_edge294.split:                             ; preds = %._crit_edge283
  %i.dy = add nsw i32 %.lcssa352, -10000          ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.i, label %._crit_edge294.split.thread

bb.i:                                             ; preds = %._crit_edge294.split
  %i.ea = mul nsw i32 %i.bm, %i.bk
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr i8, ptr %i.bn, i64 %indvars.iv316
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.eb  ; 3 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !18  ; 2 uses
  %i.eg = load i8, ptr %i.ed, align 1, !tbaa !18  ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ed, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !18  ; 3 uses
  %i.ej = getelementptr i8, ptr %i.br, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !18  ; 2 uses
  %i.el = getelementptr i8, ptr %i.br, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !18  ; 2 uses
  %i.en = mul nsw i32 %i.bm, %i.bl
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr i8, ptr %i.bn, i64 %indvars.iv316
  %i.eq = getelementptr i8, ptr %i.ep, i64 %i.eo  ; 3 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 -1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !18  ; 2 uses
  %i.et = load i8, ptr %i.eq, align 1, !tbaa !18  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.eq, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !18
  %spec.select125.i = tail call i8 @llvm.umax.i8(i8 %i.ef, i8 %i.eg) ; 2 uses
  %spec.select124.v.i = tail call i8 @llvm.umin.i8(i8 %i.ef, i8 %i.eg) ; 2 uses
  %spec.select124.i = zext i8 %spec.select124.v.i to i32 ; 2 uses
  %.sroa.44.13126.i = tail call i8 @llvm.umax.i8(i8 %spec.select125.i, i8 %i.ei) ; 2 uses
  %.sroa.17.17.v.i = tail call i8 @llvm.umin.i8(i8 %spec.select125.i, i8 %i.ei)
  %.sroa.17.17.i = zext i8 %.sroa.17.17.v.i to i32 ; 2 uses
  %.sroa.67.12127.i = tail call i8 @llvm.umax.i8(i8 %.sroa.44.13126.i, i8 %i.ek) ; 2 uses
  %.sroa.44.14.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.44.13126.i, i8 %i.ek)
  %.sroa.44.14.i = zext i8 %.sroa.44.14.v.i to i32 ; 2 uses
  %.sroa.87.9128.i = tail call i8 @llvm.umax.i8(i8 %.sroa.67.12127.i, i8 %i.em) ; 2 uses
  %.sroa.67.13.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.67.12127.i, i8 %i.em)
  %.sroa.67.13.i = zext i8 %.sroa.67.13.v.i to i32 ; 2 uses
  %.sroa.103.4129.i = tail call i8 @llvm.umax.i8(i8 %.sroa.87.9128.i, i8 %i.es) ; 2 uses
  %.sroa.87.10.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.87.9128.i, i8 %i.es)
  %.sroa.87.10.i = zext i8 %.sroa.87.10.v.i to i32 ; 2 uses
  %.sroa.114.1130.i = tail call i8 @llvm.umax.i8(i8 %.sroa.103.4129.i, i8 %i.et)
  %.sroa.103.5.v.i = tail call i8 @llvm.umin.i8(i8 %.sroa.103.4129.i, i8 %i.et)
  %.sroa.103.5.i = zext i8 %.sroa.103.5.v.i to i32 ; 2 uses
  %i.ew = tail call i8 @llvm.umin.i8(i8 %.sroa.114.1130.i, i8 %i.ev)
  %.sroa.114.2.i = zext i8 %i.ew to i32
  %i.ex = icmp ult i8 %i.ei, %spec.select124.v.i  ; 2 uses
  %.sroa.17.2.i = select i1 %i.ex, i32 %spec.select124.i, i32 %.sroa.17.17.i ; 2 uses
  %.sroa.0.2.i = select i1 %i.ex, i32 %.sroa.17.17.i, i32 %spec.select124.i ; 2 uses
  %.sroa.44.11.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.2.i, i32 %.sroa.44.14.i) ; 2 uses
  %.sroa.17.16.i = tail call i32 @llvm.umin.i32(i32 %.sroa.17.2.i, i32 %.sroa.44.14.i) ; 2 uses
  %.sroa.67.10.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.11.i, i32 %.sroa.67.13.i) ; 2 uses
  %.sroa.44.12.i = tail call i32 @llvm.umin.i32(i32 %.sroa.44.11.i, i32 %.sroa.67.13.i) ; 3 uses
  %.sroa.87.7.i = tail call i32 @llvm.umax.i32(i32 %.sroa.67.10.i, i32 %.sroa.87.10.i) ; 2 uses
  %.sroa.67.11.i = tail call i32 @llvm.umin.i32(i32 %.sroa.67.10.i, i32 %.sroa.87.10.i) ; 2 uses
  %.sroa.103.2.i = tail call i32 @llvm.umax.i32(i32 %.sroa.87.7.i, i32 %.sroa.103.5.i)
  %.sroa.87.8.i = tail call i32 @llvm.umin.i32(i32 %.sroa.87.7.i, i32 %.sroa.103.5.i) ; 2 uses
  %.sroa.103.3.i = tail call i32 @llvm.umin.i32(i32 %.sroa.103.2.i, i32 %.sroa.114.2.i)
  %.sroa.17.4.i = tail call i32 @llvm.umax.i32(i32 %.sroa.0.2.i, i32 %.sroa.17.16.i) ; 2 uses
  %.sroa.0.4.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.2.i, i32 %.sroa.17.16.i) ; 3 uses
  %.sroa.44.9.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.4.i, i32 %.sroa.44.12.i) ; 2 uses
  %.sroa.17.15.i = tail call i32 @llvm.umin.i32(i32 %.sroa.17.4.i, i32 %.sroa.44.12.i) ; 2 uses
  %.sroa.67.8.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.9.i, i32 %.sroa.67.11.i) ; 2 uses
  %.sroa.44.10.i = tail call i32 @llvm.umin.i32(i32 %.sroa.44.9.i, i32 %.sroa.67.11.i) ; 2 uses
  %.sroa.87.5.i = tail call i32 @llvm.umax.i32(i32 %.sroa.67.8.i, i32 %.sroa.87.8.i)
  %.sroa.67.9.i = tail call i32 @llvm.umin.i32(i32 %.sroa.67.8.i, i32 %.sroa.87.8.i) ; 2 uses
  %.sroa.87.6.i = tail call i32 @llvm.umin.i32(i32 %.sroa.87.5.i, i32 %.sroa.103.3.i) ; 2 uses
  %i.ey = icmp samesign ult i32 %.sroa.44.12.i, %.sroa.0.4.i ; 2 uses
  %.sroa.17.6.i = select i1 %i.ey, i32 %.sroa.0.4.i, i32 %.sroa.17.15.i ; 2 uses
  %.sroa.0.6.i = select i1 %i.ey, i32 %.sroa.17.15.i, i32 %.sroa.0.4.i
  %.sroa.44.7.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.6.i, i32 %.sroa.44.10.i) ; 2 uses
  %.sroa.17.14.i = tail call i32 @llvm.umin.i32(i32 %.sroa.17.6.i, i32 %.sroa.44.10.i)
  %.sroa.67.6.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.7.i, i32 %.sroa.67.9.i) ; 2 uses
  %.sroa.44.8.i = tail call i32 @llvm.umin.i32(i32 %.sroa.44.7.i, i32 %.sroa.67.9.i)
  %.sroa.87.4.i = tail call i32 @llvm.umax.i32(i32 %.sroa.67.6.i, i32 %.sroa.87.6.i)
  %.sroa.67.7.i = tail call i32 @llvm.umin.i32(i32 %.sroa.67.6.i, i32 %.sroa.87.6.i)
  %.sroa.17.8.i = tail call i32 @llvm.umax.i32(i32 %.sroa.0.6.i, i32 %.sroa.17.14.i)
  %.sroa.44.5.i = tail call i32 @llvm.umax.i32(i32 %.sroa.17.8.i, i32 %.sroa.44.8.i)
  %.sroa.67.5.i = tail call i32 @llvm.umax.i32(i32 %.sroa.44.5.i, i32 %.sroa.67.7.i)
  %i.ez = add nuw nsw i32 %.sroa.67.5.i, %.sroa.87.4.i
  %i.fa = lshr i32 %i.ez, 1
  br label %bb.j

._crit_edge294.split.thread:                      ; preds = %bb.h, %._crit_edge294.split
  %.0.lcssa339 = phi i32 [ %.lcssa, %._crit_edge294.split ], [ 0, %bb.h ]
  %.0181.lcssa338 = phi i32 [ %i.dy, %._crit_edge294.split ], [ -10000, %bb.h ]
  %.neg202 = mul nsw i32 %i.bt, -10000
  %i.fb = add i32 %.0.lcssa339, %.neg202
  %i.fc = sdiv i32 %i.fb, %.0181.lcssa338
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge294.split.thread
  %storemerge203.in = phi i32 [ %i.fc, %._crit_edge294.split.thread ], [ %i.fa, %bb.i ]
  %storemerge203 = trunc i32 %storemerge203.in to i8
  %.2 = getelementptr inbounds nuw i8, ptr %.1174299, i64 1 ; 2 uses
  store i8 %storemerge203, ptr %.1174299, align 1, !tbaa !18
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.fd = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.fe = sub nsw i32 %i.fd, %.0191
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next317, %i.ff
  br i1 %i.fg, label %bb.h, label %._crit_edge301.loopexit, !llvm.loop !34

._crit_edge301.loopexit:                          ; preds = %bb.j
  %.pre319 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %._crit_edge301

._crit_edge301:                                   ; preds = %.preheader257.._crit_edge301_crit_edge, %._crit_edge301.loopexit
  %.pre-phi = phi i32 [ %.pre320, %.preheader257.._crit_edge301_crit_edge ], [ %i.bl, %._crit_edge301.loopexit ] ; 2 uses
  %i.fh = phi i32 [ %i.bf, %.preheader257.._crit_edge301_crit_edge ], [ %.pre319, %._crit_edge301.loopexit ] ; 2 uses
  %i.fi = phi i32 [ %i.bg, %.preheader257.._crit_edge301_crit_edge ], [ %i.fd, %._crit_edge301.loopexit ]
  %.1174.lcssa = phi ptr [ %.0173304, %.preheader257.._crit_edge301_crit_edge ], [ %.2, %._crit_edge301.loopexit ]
  %i.fj = sub nsw i32 %i.fh, %.0191
  %i.fk = icmp slt i32 %.pre-phi, %i.fj
  br i1 %i.fk, label %.preheader257, label %.loopexit, !llvm.loop !35

.preheader260:                                    ; preds = %.preheader261, %._crit_edge
  %i.fl = phi i32 [ %i.lh, %._crit_edge ], [ %i.u, %.preheader261 ]
  %i.fm = phi i32 [ %i.li, %._crit_edge ], [ %i.w, %.preheader261 ] ; 3 uses
  %.3266 = phi ptr [ %.4.lcssa, %._crit_edge ], [ %1, %.preheader261 ] ; 2 uses
  %.2190265 = phi i32 [ %.pre-phi322, %._crit_edge ], [ 1, %.preheader261 ] ; 4 uses
  %i.fn = icmp sgt i32 %i.fm, 2
  br i1 %i.fn, label %.lr.ph, label %.preheader260.._crit_edge_crit_edge

.preheader260.._crit_edge_crit_edge:              ; preds = %.preheader260
  %.pre321 = add nuw nsw i32 %.2190265, 1
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader260
  %i.fo = add nsw i32 %.2190265, -1
  %i.fp = add nuw nsw i32 %.2190265, 1            ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.fq = phi i32 [ %i.fm, %.lr.ph ], [ %i.ld, %bb.n ] ; 4 uses
  %.4264 = phi ptr [ %.3266, %.lr.ph ], [ %.5, %bb.n ] ; 2 uses
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !11  ; 4 uses
  %i.fs = mul nuw nsw i32 %i.fq, %i.fo            ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fr, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -1
  %i.fx = mul nuw nsw i32 %i.fq, %.2190265
  %i.fy = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.fz = add nsw i32 %i.fx, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.fr, i64 %i.ga ; 3 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !18  ; 2 uses
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 %i.gd ; 9 uses
  %i.gf = load i8, ptr %i.fw, align 1, !tbaa !18  ; 2 uses
  %i.gg = zext i8 %i.gf to i64
  %i.gh = sub nsw i64 0, %i.gg
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !18
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fv, i64 1 ; 2 uses
  %i.gm = load i8, ptr %i.fv, align 1, !tbaa !18  ; 2 uses
  %i.gn = zext i8 %i.gm to i64
  %i.go = sub nsw i64 0, %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.ge, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !18
  %i.gr = zext i8 %i.gq to i32                    ; 2 uses
  %i.gs = load i8, ptr %i.gl, align 1, !tbaa !18  ; 2 uses
  %i.gt = zext i8 %i.gs to i64
  %i.gu = sub nsw i64 0, %i.gt
  %i.gv = getelementptr inbounds i8, ptr %i.ge, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !18
  %i.gx = zext i8 %i.gw to i32                    ; 2 uses
  %i.gy = add nsw i32 %i.fq, -2
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gl, i64 %i.gz ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  %i.hc = load i8, ptr %i.ha, align 1, !tbaa !18  ; 2 uses
  %i.hd = zext i8 %i.hc to i64
  %i.he = sub nsw i64 0, %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.ge, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !18
  %i.hh = zext i8 %i.hg to i32                    ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 2 ; 2 uses
  %i.hj = load i8, ptr %i.hb, align 1, !tbaa !18  ; 2 uses
  %i.hk = zext i8 %i.hj to i64
  %i.hl = sub nsw i64 0, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.ge, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !18
  %i.ho = zext i8 %i.hn to i32                    ; 2 uses
  %i.hp = load i8, ptr %i.hi, align 1, !tbaa !18  ; 2 uses
  %i.hq = zext i8 %i.hp to i64
  %i.hr = sub nsw i64 0, %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.ge, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !18
  %i.hu = zext i8 %i.ht to i32                    ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %i.hi, i64 %i.gz ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hx = load i8, ptr %i.hv, align 1, !tbaa !18  ; 2 uses
  %i.hy = zext i8 %i.hx to i64
  %i.hz = sub nsw i64 0, %i.hy
  %i.ia = getelementptr inbounds i8, ptr %i.ge, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !18
  %i.ic = zext i8 %i.ib to i32                    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  %i.ie = load i8, ptr %i.hw, align 1, !tbaa !18  ; 2 uses
  %i.if = zext i8 %i.ie to i64
  %i.ig = sub nsw i64 0, %i.if
  %i.ih = getelementptr inbounds i8, ptr %i.ge, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !18
  %i.ij = zext i8 %i.ii to i32                    ; 2 uses
  %i.ik = load i8, ptr %i.id, align 1, !tbaa !18  ; 2 uses
  %i.il = zext i8 %i.ik to i64
  %i.im = sub nsw i64 0, %i.il
  %i.in = getelementptr inbounds i8, ptr %i.ge, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !18
  %i.ip = zext i8 %i.io to i32                    ; 2 uses
  %i.iq = add nsw i32 %i.gk, -100
  %i.ir = add nsw i32 %i.iq, %i.gr
  %i.is = add nsw i32 %i.ir, %i.gx
  %i.it = add nsw i32 %i.is, %i.hh
  %i.iu = add nsw i32 %i.it, %i.ho
  %i.iv = add nsw i32 %i.iu, %i.hu
  %i.iw = add nsw i32 %i.iv, %i.ic
  %i.ix = add nsw i32 %i.iw, %i.ij
  %i.iy = add nsw i32 %i.ix, %i.ip                ; 2 uses
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ja = add nsw i32 %i.fs, %i.fy
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr i8, ptr %i.fr, i64 %i.jb  ; 3 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 -1
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !18  ; 2 uses
  %i.jf = load i8, ptr %i.jc, align 1, !tbaa !18  ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jc, i64 1
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !18  ; 3 uses
  %i.ji = getelementptr i8, ptr %i.gb, i64 -1
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !18  ; 2 uses
  %i.jk = getelementptr i8, ptr %i.gb, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !18  ; 2 uses
  %i.jm = mul nuw nsw i32 %i.fq, %i.fp
  %i.jn = add nsw i32 %i.jm, %i.fy
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr i8, ptr %i.fr, i64 %i.jo  ; 3 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 -1
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !18  ; 2 uses
  %i.js = load i8, ptr %i.jp, align 1, !tbaa !18  ; 2 uses
  %i.jt = getelementptr i8, ptr %i.jp, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !18
  %spec.select125.i207 = tail call i8 @llvm.umax.i8(i8 %i.je, i8 %i.jf) ; 2 uses
  %spec.select124.v.i208 = tail call i8 @llvm.umin.i8(i8 %i.je, i8 %i.jf) ; 2 uses
  %spec.select124.i209 = zext i8 %spec.select124.v.i208 to i32 ; 2 uses
  %.sroa.44.13126.i210 = tail call i8 @llvm.umax.i8(i8 %spec.select125.i207, i8 %i.jh) ; 2 uses
  %.sroa.17.17.v.i211 = tail call i8 @llvm.umin.i8(i8 %spec.select125.i207, i8 %i.jh)
  %.sroa.17.17.i212 = zext i8 %.sroa.17.17.v.i211 to i32 ; 2 uses
  %.sroa.67.12127.i213 = tail call i8 @llvm.umax.i8(i8 %.sroa.44.13126.i210, i8 %i.jj) ; 2 uses
  %.sroa.44.14.v.i214 = tail call i8 @llvm.umin.i8(i8 %.sroa.44.13126.i210, i8 %i.jj)
  %.sroa.44.14.i215 = zext i8 %.sroa.44.14.v.i214 to i32 ; 2 uses
  %.sroa.87.9128.i216 = tail call i8 @llvm.umax.i8(i8 %.sroa.67.12127.i213, i8 %i.jl) ; 2 uses
  %.sroa.67.13.v.i217 = tail call i8 @llvm.umin.i8(i8 %.sroa.67.12127.i213, i8 %i.jl)
  %.sroa.67.13.i218 = zext i8 %.sroa.67.13.v.i217 to i32 ; 2 uses
  %.sroa.103.4129.i219 = tail call i8 @llvm.umax.i8(i8 %.sroa.87.9128.i216, i8 %i.jr) ; 2 uses
  %.sroa.87.10.v.i220 = tail call i8 @llvm.umin.i8(i8 %.sroa.87.9128.i216, i8 %i.jr)
  %.sroa.87.10.i221 = zext i8 %.sroa.87.10.v.i220 to i32 ; 2 uses
  %.sroa.114.1130.i222 = tail call i8 @llvm.umax.i8(i8 %.sroa.103.4129.i219, i8 %i.js)
  %.sroa.103.5.v.i223 = tail call i8 @llvm.umin.i8(i8 %.sroa.103.4129.i219, i8 %i.js)
  %.sroa.103.5.i224 = zext i8 %.sroa.103.5.v.i223 to i32 ; 2 uses
  %i.jv = tail call i8 @llvm.umin.i8(i8 %.sroa.114.1130.i222, i8 %i.ju)
  %.sroa.114.2.i225 = zext i8 %i.jv to i32
  %i.jw = icmp ult i8 %i.jh, %spec.select124.v.i208 ; 2 uses
  %.sroa.17.2.i226 = select i1 %i.jw, i32 %spec.select124.i209, i32 %.sroa.17.17.i212 ; 2 uses
  %.sroa.0.2.i227 = select i1 %i.jw, i32 %.sroa.17.17.i212, i32 %spec.select124.i209 ; 2 uses
  %.sroa.44.11.i228 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.2.i226, i32 %.sroa.44.14.i215) ; 2 uses
  %.sroa.17.16.i229 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.2.i226, i32 %.sroa.44.14.i215) ; 2 uses
  %.sroa.67.10.i230 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.11.i228, i32 %.sroa.67.13.i218) ; 2 uses
  %.sroa.44.12.i231 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.11.i228, i32 %.sroa.67.13.i218) ; 3 uses
  %.sroa.87.7.i232 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.10.i230, i32 %.sroa.87.10.i221) ; 2 uses
  %.sroa.67.11.i233 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.10.i230, i32 %.sroa.87.10.i221) ; 2 uses
  %.sroa.103.2.i234 = tail call i32 @llvm.umax.i32(i32 %.sroa.87.7.i232, i32 %.sroa.103.5.i224)
  %.sroa.87.8.i235 = tail call i32 @llvm.umin.i32(i32 %.sroa.87.7.i232, i32 %.sroa.103.5.i224) ; 2 uses
  %.sroa.103.3.i236 = tail call i32 @llvm.umin.i32(i32 %.sroa.103.2.i234, i32 %.sroa.114.2.i225)
  %.sroa.17.4.i237 = tail call i32 @llvm.umax.i32(i32 %.sroa.0.2.i227, i32 %.sroa.17.16.i229) ; 2 uses
  %.sroa.0.4.i238 = tail call i32 @llvm.umin.i32(i32 %.sroa.0.2.i227, i32 %.sroa.17.16.i229) ; 3 uses
  %.sroa.44.9.i239 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.4.i237, i32 %.sroa.44.12.i231) ; 2 uses
  %.sroa.17.15.i240 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.4.i237, i32 %.sroa.44.12.i231) ; 2 uses
  %.sroa.67.8.i241 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.9.i239, i32 %.sroa.67.11.i233) ; 2 uses
  %.sroa.44.10.i242 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.9.i239, i32 %.sroa.67.11.i233) ; 2 uses
  %.sroa.87.5.i243 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.8.i241, i32 %.sroa.87.8.i235)
  %.sroa.67.9.i244 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.8.i241, i32 %.sroa.87.8.i235) ; 2 uses
  %.sroa.87.6.i245 = tail call i32 @llvm.umin.i32(i32 %.sroa.87.5.i243, i32 %.sroa.103.3.i236) ; 2 uses
  %i.jx = icmp samesign ult i32 %.sroa.44.12.i231, %.sroa.0.4.i238 ; 2 uses
  %.sroa.17.6.i246 = select i1 %i.jx, i32 %.sroa.0.4.i238, i32 %.sroa.17.15.i240 ; 2 uses
  %.sroa.0.6.i247 = select i1 %i.jx, i32 %.sroa.17.15.i240, i32 %.sroa.0.4.i238
  %.sroa.44.7.i248 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.6.i246, i32 %.sroa.44.10.i242) ; 2 uses
  %.sroa.17.14.i249 = tail call i32 @llvm.umin.i32(i32 %.sroa.17.6.i246, i32 %.sroa.44.10.i242)
  %.sroa.67.6.i250 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.7.i248, i32 %.sroa.67.9.i244) ; 2 uses
  %.sroa.44.8.i251 = tail call i32 @llvm.umin.i32(i32 %.sroa.44.7.i248, i32 %.sroa.67.9.i244)
  %.sroa.87.4.i252 = tail call i32 @llvm.umax.i32(i32 %.sroa.67.6.i250, i32 %.sroa.87.6.i245)
  %.sroa.67.7.i253 = tail call i32 @llvm.umin.i32(i32 %.sroa.67.6.i250, i32 %.sroa.87.6.i245)
  %.sroa.17.8.i254 = tail call i32 @llvm.umax.i32(i32 %.sroa.0.6.i247, i32 %.sroa.17.14.i249)
  %.sroa.44.5.i255 = tail call i32 @llvm.umax.i32(i32 %.sroa.17.8.i254, i32 %.sroa.44.8.i251)
  %.sroa.67.5.i256 = tail call i32 @llvm.umax.i32(i32 %.sroa.44.5.i255, i32 %.sroa.67.7.i253)
  %i.jy = add nuw nsw i32 %.sroa.67.5.i256, %.sroa.87.4.i252
  %i.jz = lshr i32 %i.jy, 1
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ka = zext i8 %i.gf to i32
  %i.kb = mul nuw nsw i32 %i.gk, %i.ka
  %i.kc = zext i8 %i.gm to i32
  %i.kd = mul nuw nsw i32 %i.gr, %i.kc
  %i.ke = zext i8 %i.gs to i32
  %i.kf = mul nuw nsw i32 %i.gx, %i.ke
  %i.kg = zext i8 %i.hc to i32
  %i.kh = mul nuw nsw i32 %i.hh, %i.kg
  %i.ki = zext i8 %i.hj to i32
  %i.kj = mul nuw nsw i32 %i.ho, %i.ki
  %i.kk = zext i8 %i.hp to i32
  %i.kl = mul nuw nsw i32 %i.hu, %i.kk
  %i.km = zext i8 %i.hx to i32
  %i.kn = mul nuw nsw i32 %i.ic, %i.km
  %i.ko = zext i8 %i.ie to i32
  %i.kp = mul nuw nsw i32 %i.ij, %i.ko
  %i.kq = zext i8 %i.ik to i32
  %i.kr = mul nuw nsw i32 %i.ip, %i.kq
  %i.ks = zext i8 %i.gc to i32
  %.neg = mul nsw i32 %i.ks, -100
  %i.kt = add nsw i32 %i.kb, %.neg
  %i.ku = add nsw i32 %i.kt, %i.kd
  %i.kv = add nsw i32 %i.ku, %i.kf
  %i.kw = add nsw i32 %i.kv, %i.kh
  %i.kx = add nsw i32 %i.kw, %i.kj
  %i.ky = add nsw i32 %i.kx, %i.kl
  %i.kz = add nsw i32 %i.ky, %i.kn
  %i.la = add nsw i32 %i.kz, %i.kp
  %i.lb = add nsw i32 %i.la, %i.kr
  %i.lc = sdiv i32 %i.lb, %i.iy
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %storemerge.in = phi i32 [ %i.lc, %bb.m ], [ %i.jz, %bb.l ]
  %storemerge = trunc i32 %storemerge.in to i8
  %.5 = getelementptr inbounds nuw i8, ptr %.4264, i64 1 ; 2 uses
  store i8 %storemerge, ptr %.4264, align 1, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ld = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.le = add nsw i32 %i.ld, -1
  %i.lf = sext i32 %i.le to i64
  %i.lg = icmp slt i64 %indvars.iv.next, %i.lf
  br i1 %i.lg, label %bb.k, label %._crit_edge.loopexit, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %bb.n
  %.pre = load i32, ptr %i.c, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader260.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.pre-phi322 = phi i32 [ %.pre321, %.preheader260.._crit_edge_crit_edge ], [ %i.fp, %._crit_edge.loopexit ] ; 2 uses
  %i.lh = phi i32 [ %i.fl, %.preheader260.._crit_edge_crit_edge ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.li = phi i32 [ %i.fm, %.preheader260.._crit_edge_crit_edge ], [ %i.ld, %._crit_edge.loopexit ]
  %.4.lcssa = phi ptr [ %.3266, %.preheader260.._crit_edge_crit_edge ], [ %.5, %._crit_edge.loopexit ]
  %i.lj = add nsw i32 %i.lh, -1
  %i.lk = icmp slt i32 %.pre-phi322, %i.lj
  br i1 %i.lk, label %.preheader260, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge301, %.preheader261, %.preheader258
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @edge_draw(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = icmp eq i32 %4, 0
  %i.c = mul i32 %3, %2                           ; 9 uses
  br i1 %i.b, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sext i32 %2 to i64
  %i.g = sub nsw i64 0, %i.f
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.g
  %i.h = add nsw i32 %2, -2
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.038 = phi ptr [ %1, %.lr.ph ], [ %i.u, %bb.d ] ; 3 uses
  %.03537 = phi i32 [ 0, %.lr.ph ], [ %i.v, %bb.d ]
  %i.j = load i8, ptr %.038, align 1, !tbaa !18
  %i.k = icmp ult i8 %i.j, 8
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %.038 to i64
  %i.m = sub i64 %i.l, %i.e
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.m ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %gep, i64 -1
  store i8 -1, ptr %i.n, align 1, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %gep, i64 1 ; 2 uses
  store i8 -1, ptr %gep, align 1, !tbaa !18
  store i8 -1, ptr %i.o, align 1, !tbaa !18
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 %i.i ; 2 uses
  store i8 -1, ptr %i.p, align 1, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 2 uses
  store i8 -1, ptr %i.q, align 1, !tbaa !18
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 -1, ptr %i.r, align 1, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 -1, ptr %i.s, align 1, !tbaa !18
  store i8 -1, ptr %i.t, align 1, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.038, i64 1
  %i.v = add nuw nsw i32 %.03537, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.v, %i.c
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !38

.loopexit:                                        ; preds = %bb.d, %bb.a
  %i.w = icmp sgt i32 %i.c, 0
  br i1 %i.w, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.loopexit
  %i.x = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.y = zext nneg i32 %i.c to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  %i.z = sub i64 %i.x, %i.a
  %diff.check = icmp ugt i64 %i.z, -16
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check46 = icmp ult i32 %i.c, 16
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.y, 12
  %n.vec = and i64 %i.y, 2147483632               ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 %n.vec
  %i.ac = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue91, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue91 ] ; 18 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !18
  %i.ad = icmp ult <16 x i8> %wide.load, splat (i8 8) ; 16 uses
  %i.ae = extractelement <16 x i1> %i.ad, i64 0
  br i1 %i.ae, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.af = getelementptr inbounds i8, ptr %0, i64 %index
  store i8 0, ptr %i.af, align 1, !tbaa !18
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ag = extractelement <16 x i1> %i.ad, i64 1
  br i1 %i.ag, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue
  %i.ah = getelementptr i8, ptr %0, i64 %index
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !18
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue
  %i.aj = extractelement <16 x i1> %i.ad, i64 2
  br i1 %i.aj, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.ak = getelementptr i8, ptr %0, i64 %index
  %i.al = getelementptr i8, ptr %i.ak, i64 2
  store i8 0, ptr %i.al, align 1, !tbaa !18
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.am = extractelement <16 x i1> %i.ad, i64 3
  br i1 %i.am, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.an = getelementptr i8, ptr %0, i64 %index
  %i.ao = getelementptr i8, ptr %i.an, i64 3
  store i8 0, ptr %i.ao, align 1, !tbaa !18
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.ap = extractelement <16 x i1> %i.ad, i64 4
  br i1 %i.ap, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.aq = getelementptr i8, ptr %0, i64 %index
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  store i8 0, ptr %i.ar, align 1, !tbaa !18
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.as = extractelement <16 x i1> %i.ad, i64 5
  br i1 %i.as, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.at = getelementptr i8, ptr %0, i64 %index
  %i.au = getelementptr i8, ptr %i.at, i64 5
  store i8 0, ptr %i.au, align 1, !tbaa !18
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %i.av = extractelement <16 x i1> %i.ad, i64 6
  br i1 %i.av, label %pred.store.if72, label %pred.store.continue73

pred.store.if72:                                  ; preds = %pred.store.continue71
  %i.aw = getelementptr i8, ptr %0, i64 %index
  %i.ax = getelementptr i8, ptr %i.aw, i64 6
  store i8 0, ptr %i.ax, align 1, !tbaa !18
  br label %pred.store.continue73

pred.store.continue73:                            ; preds = %pred.store.if72, %pred.store.continue71
  %i.ay = extractelement <16 x i1> %i.ad, i64 7
  br i1 %i.ay, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue73
  %i.az = getelementptr i8, ptr %0, i64 %index
  %i.ba = getelementptr i8, ptr %i.az, i64 7
  store i8 0, ptr %i.ba, align 1, !tbaa !18
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue73
  %i.bb = extractelement <16 x i1> %i.ad, i64 8
  br i1 %i.bb, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.bc = getelementptr i8, ptr %0, i64 %index
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  store i8 0, ptr %i.bd, align 1, !tbaa !18
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.be = extractelement <16 x i1> %i.ad, i64 9
  br i1 %i.be, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.bf = getelementptr i8, ptr %0, i64 %index
  %i.bg = getelementptr i8, ptr %i.bf, i64 9
  store i8 0, ptr %i.bg, align 1, !tbaa !18
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.bh = extractelement <16 x i1> %i.ad, i64 10
  br i1 %i.bh, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.bi = getelementptr i8, ptr %0, i64 %index
  %i.bj = getelementptr i8, ptr %i.bi, i64 10
  store i8 0, ptr %i.bj, align 1, !tbaa !18
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.bk = extractelement <16 x i1> %i.ad, i64 11
  br i1 %i.bk, label %pred.store.if82, label %pred.store.continue83
end_hunk_0
begin_hunk_1_@susan_thin:bb.a
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
  %i.o = mul nuw nsw i64 %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
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
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !18
  %i.hs = zext i8 %i.hr to i32
  %i.ht = add nuw nsw i32 %i.hl, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.hv = load i8, ptr %i.hm, align 1, !tbaa !18
  %i.hw = zext i8 %i.hv to i64
  %i.hx = sub nsw i64 0, %i.hw
  %i.hy = getelementptr inbounds i8, ptr %i.ak, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !18
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nuw nsw i32 %i.ht, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gv, i64 5
  %i.id = load i8, ptr %i.hu, align 1, !tbaa !18
  %i.ie = zext i8 %i.id to i64
  %i.if = sub nsw i64 0, %i.ie
  %i.ig = getelementptr inbounds i8, ptr %i.ak, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !18
  %i.ii = zext i8 %i.ih to i32
  %i.ij = add nuw nsw i32 %i.ib, %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gv, i64 6 ; 2 uses
  %i.il = load i8, ptr %i.ic, align 1, !tbaa !18
  %i.im = zext i8 %i.il to i64
  %i.in = sub nsw i64 0, %i.im
  %i.io = getelementptr inbounds i8, ptr %i.ak, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !18
  %i.iq = zext i8 %i.ip to i32
  %i.ir = add nuw nsw i32 %i.ij, %i.iq
  %i.is = load i8, ptr %i.ik, align 1, !tbaa !18
  %i.it = zext i8 %i.is to i64
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.ak, i64 %i.iu
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !18
  %i.ix = zext i8 %i.iw to i32
  %i.iy = add nuw nsw i32 %i.ir, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %i.ik, i64 %i.j ; 5 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  %i.jb = load i8, ptr %i.iz, align 1, !tbaa !18
  %i.jc = zext i8 %i.jb to i64
  %i.jd = sub nsw i64 0, %i.jc
  %i.je = getelementptr inbounds i8, ptr %i.ak, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !18
  %i.jg = zext i8 %i.jf to i32
  %i.jh = add nuw nsw i32 %i.iy, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jj = load i8, ptr %i.ja, align 1, !tbaa !18
  %i.jk = zext i8 %i.jj to i64
  %i.jl = sub nsw i64 0, %i.jk
  %i.jm = getelementptr inbounds i8, ptr %i.ak, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !18
  %i.jo = zext i8 %i.jn to i32
  %i.jp = add nuw nsw i32 %i.jh, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iz, i64 3
  %i.jr = load i8, ptr %i.ji, align 1, !tbaa !18
  %i.js = zext i8 %i.jr to i64
  %i.jt = sub nsw i64 0, %i.js
  %i.ju = getelementptr inbounds i8, ptr %i.ak, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !18
  %i.jw = zext i8 %i.jv to i32
  %i.jx = add nuw nsw i32 %i.jp, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %i.jz = load i8, ptr %i.jq, align 1, !tbaa !18
  %i.ka = zext i8 %i.jz to i64
  %i.kb = sub nsw i64 0, %i.ka
  %i.kc = getelementptr inbounds i8, ptr %i.ak, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !18
  %i.ke = zext i8 %i.kd to i32
  %i.kf = add nuw nsw i32 %i.jx, %i.ke
  %i.kg = load i8, ptr %i.jy, align 1, !tbaa !18
  %i.kh = zext i8 %i.kg to i64
  %i.ki = sub nsw i64 0, %i.kh
  %i.kj = getelementptr inbounds i8, ptr %i.ak, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !18
  %i.kl = zext i8 %i.kk to i32
  %i.km = add nuw nsw i32 %i.kf, %i.kl
  %i.kn = getelementptr inbounds i8, ptr %i.jy, i64 %i.h ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1
  %i.kp = load i8, ptr %i.kn, align 1, !tbaa !18
  %i.kq = zext i8 %i.kp to i64
  %i.kr = sub nsw i64 0, %i.kq
  %i.ks = getelementptr inbounds i8, ptr %i.ak, i64 %i.kr
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !18
  %i.ku = zext i8 %i.kt to i32
  %i.kv = add nuw nsw i32 %i.km, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kn, i64 2
  %i.kx = load i8, ptr %i.ko, align 1, !tbaa !18
  %i.ky = zext i8 %i.kx to i64
  %i.kz = sub nsw i64 0, %i.ky
  %i.la = getelementptr inbounds i8, ptr %i.ak, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !18
  %i.lc = zext i8 %i.lb to i32
  %i.ld = add nuw nsw i32 %i.kv, %i.lc
  %i.le = load i8, ptr %i.kw, align 1, !tbaa !18
  %i.lf = zext i8 %i.le to i64
  %i.lg = sub nsw i64 0, %i.lf
  %i.lh = getelementptr inbounds i8, ptr %i.ak, i64 %i.lg
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !18
  %i.lj = zext i8 %i.li to i32
  %i.lk = add nuw nsw i32 %i.ld, %i.lj            ; 2 uses
  %.not751 = icmp sgt i32 %i.lk, %4
  br i1 %.not751, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ll = sub nsw i32 %4, %i.lk
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ag
  store i32 %i.ll, ptr %i.lm, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.d
  %indvars.iv.next881 = add nuw nsw i64 %indvars.iv880, 1 ; 2 uses
  %exitcond884.not = icmp eq i64 %indvars.iv.next881, %wide.trip.count883
  br i1 %exitcond884.not, label %.preheader871, label %.preheader872, !llvm.loop !45

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge876
  %indvars.iv890 = phi i64 [ 4, %.preheader.preheader ], [ %indvars.iv.next891, %._crit_edge876 ] ; 5 uses
  %i.ln = add nsw i64 %indvars.iv890, -3
  %i.lo = mul nuw nsw i64 %i.ln, %i.ad
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 %i.lo ; 2 uses
  %i.lq = trunc i64 %indvars.iv890 to i32
  %i.lr = mul i32 %5, %i.lq
  %i.ls = zext i32 %i.lr to i64
  %i.lt = trunc nuw nsw i64 %indvars.iv890 to i32 ; 4 uses
  %i.lu = trunc nuw nsw i64 %indvars.iv890 to i32 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %.critedge
  %indvars.iv885 = phi i64 [ 4, %.preheader ], [ %indvars.iv.next886, %.critedge ] ; 6 uses
  %i.lv = add nuw nsw i64 %indvars.iv885, %i.ls   ; 3 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !4  ; 10 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.lz = sub nsw i32 %4, %i.lx                   ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 %i.lv
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !18
  %i.mc = zext i8 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 %i.mc ; 72 uses
  %i.me = icmp sgt i32 %i.lz, 600
  br i1 %i.me, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lp, i64 %indvars.iv885 ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %i.mf, i64 -1
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !18
  %i.mi = zext i8 %i.mh to i64
  %i.mj = sub nsw i64 0, %i.mi
  %i.mk = getelementptr inbounds i8, ptr %i.md, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !18
  %i.mm = zext i8 %i.ml to i32                    ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 1 ; 2 uses
  %i.mo = load i8, ptr %i.mf, align 1, !tbaa !18
  %i.mp = zext i8 %i.mo to i64
  %i.mq = sub nsw i64 0, %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.md, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !18
  %i.mt = zext i8 %i.ms to i32
  %.neg739740 = add nuw nsw i32 %i.mt, %i.mm
  %i.mu = load i8, ptr %i.mn, align 1, !tbaa !18
  %i.mv = zext i8 %i.mu to i64
  %i.mw = sub nsw i64 0, %i.mv
  %i.mx = getelementptr inbounds i8, ptr %i.md, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !18
  %i.mz = zext i8 %i.my to i32                    ; 2 uses
  %.neg741 = add nuw nsw i32 %.neg739740, %i.mz
  %i.na = getelementptr inbounds i8, ptr %i.mn, i64 %i.x ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 1
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !18
  %i.nd = zext i8 %i.nc to i64
  %i.ne = sub nsw i64 0, %i.nd
  %i.nf = getelementptr inbounds i8, ptr %i.md, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !18
  %i.nh = zext i8 %i.ng to i32                    ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 2
  %i.nj = load i8, ptr %i.nb, align 1, !tbaa !18
  %i.nk = zext i8 %i.nj to i64
  %i.nl = sub nsw i64 0, %i.nk
  %i.nm = getelementptr inbounds i8, ptr %i.md, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !18
  %i.no = zext i8 %i.nn to i32                    ; 2 uses
  %i.np = add nuw nsw i32 %i.no, %i.nh
  %i.nq = getelementptr inbounds nuw i8, ptr %i.na, i64 3
  %i.nr = load i8, ptr %i.ni, align 1, !tbaa !18
  %i.ns = zext i8 %i.nr to i64
  %i.nt = sub nsw i64 0, %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.md, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !18
  %i.nw = zext i8 %i.nv to i32
  %i.nx = add nuw nsw i32 %i.np, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %i.nz = load i8, ptr %i.nq, align 1, !tbaa !18
  %i.oa = zext i8 %i.nz to i64
  %i.ob = sub nsw i64 0, %i.oa
  %i.oc = getelementptr inbounds i8, ptr %i.md, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !18
  %i.oe = zext i8 %i.od to i32                    ; 2 uses
  %i.of = add nuw nsw i32 %i.nx, %i.oe
  %i.og = load i8, ptr %i.ny, align 1, !tbaa !18
  %i.oh = zext i8 %i.og to i64
  %i.oi = sub nsw i64 0, %i.oh
  %i.oj = getelementptr inbounds i8, ptr %i.md, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !18
  %i.ol = zext i8 %i.ok to i32                    ; 2 uses
  %i.om = add nuw nsw i32 %i.of, %i.ol
  %i.on = getelementptr inbounds i8, ptr %i.ny, i64 %i.z ; 7 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  %i.op = load i8, ptr %i.on, align 1, !tbaa !18
  %i.oq = zext i8 %i.op to i64
  %i.or = sub nsw i64 0, %i.oq
  %i.os = getelementptr inbounds i8, ptr %i.md, i64 %i.or
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !18
  %i.ou = zext i8 %i.ot to i32                    ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.ow = load i8, ptr %i.oo, align 1, !tbaa !18
  %i.ox = zext i8 %i.ow to i64
  %i.oy = sub nsw i64 0, %i.ox
  %i.oz = getelementptr inbounds i8, ptr %i.md, i64 %i.oy
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !18
  %i.pb = zext i8 %i.pa to i32                    ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.on, i64 3
  %i.pd = load i8, ptr %i.ov, align 1, !tbaa !18
  %i.pe = zext i8 %i.pd to i64
  %i.pf = sub nsw i64 0, %i.pe
  %i.pg = getelementptr inbounds i8, ptr %i.md, i64 %i.pf
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !18
  %i.pi = zext i8 %i.ph to i32                    ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.pk = load i8, ptr %i.pc, align 1, !tbaa !18
  %i.pl = zext i8 %i.pk to i64
  %i.pm = sub nsw i64 0, %i.pl
  %i.pn = getelementptr inbounds i8, ptr %i.md, i64 %i.pm
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !18
  %i.pp = zext i8 %i.po to i32
  %i.pq = getelementptr inbounds nuw i8, ptr %i.on, i64 5
  %i.pr = load i8, ptr %i.pj, align 1, !tbaa !18
  %i.ps = zext i8 %i.pr to i64
  %i.pt = sub nsw i64 0, %i.ps
  %i.pu = getelementptr inbounds i8, ptr %i.md, i64 %i.pt
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !18
  %i.pw = zext i8 %i.pv to i32                    ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.on, i64 6 ; 2 uses
  %i.py = load i8, ptr %i.pq, align 1, !tbaa !18
  %i.pz = zext i8 %i.py to i64
  %i.qa = sub nsw i64 0, %i.pz
  %i.qb = getelementptr inbounds i8, ptr %i.md, i64 %i.qa
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !18
  %i.qd = zext i8 %i.qc to i32                    ; 2 uses
  %i.qe = load i8, ptr %i.px, align 1, !tbaa !18
  %i.qf = zext i8 %i.qe to i64
  %i.qg = sub nsw i64 0, %i.qf
  %i.qh = getelementptr inbounds i8, ptr %i.md, i64 %i.qg
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !18
  %i.qj = zext i8 %i.qi to i32                    ; 2 uses
  %i.qk = getelementptr inbounds i8, ptr %i.px, i64 %i.ab ; 6 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 1
  %i.qm = load i8, ptr %i.qk, align 1, !tbaa !18
  %i.qn = zext i8 %i.qm to i64
  %i.qo = sub nsw i64 0, %i.qn
  %i.qp = getelementptr inbounds i8, ptr %i.md, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !18
  %i.qr = zext i8 %i.qq to i32
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.qt = load i8, ptr %i.ql, align 1, !tbaa !18
  %i.qu = zext i8 %i.qt to i64
  %i.qv = sub nsw i64 0, %i.qu
  %i.qw = getelementptr inbounds i8, ptr %i.md, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !18
  %i.qy = zext i8 %i.qx to i32
  %i.qz = load i8, ptr %i.qs, align 1, !tbaa !18
  %i.ra = zext i8 %i.qz to i64
  %i.rb = sub nsw i64 0, %i.ra
  %i.rc = getelementptr inbounds i8, ptr %i.md, i64 %i.rb
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !18
  %i.re = zext i8 %i.rd to i32
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qk, i64 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qk, i64 5
  %i.rh = load i8, ptr %i.rf, align 1, !tbaa !18
  %i.ri = zext i8 %i.rh to i64
  %i.rj = sub nsw i64 0, %i.ri
  %i.rk = getelementptr inbounds i8, ptr %i.md, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !18
  %i.rm = zext i8 %i.rl to i32
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qk, i64 6 ; 2 uses
  %i.ro = load i8, ptr %i.rg, align 1, !tbaa !18
  %i.rp = zext i8 %i.ro to i64
  %i.rq = sub nsw i64 0, %i.rp
  %i.rr = getelementptr inbounds i8, ptr %i.md, i64 %i.rq
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !18
  %i.rt = zext i8 %i.rs to i32
  %i.ru = load i8, ptr %i.rn, align 1, !tbaa !18
  %i.rv = zext i8 %i.ru to i64
  %i.rw = sub nsw i64 0, %i.rv
  %i.rx = getelementptr inbounds i8, ptr %i.md, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !18
  %i.rz = zext i8 %i.ry to i32
  %i.sa = getelementptr inbounds i8, ptr %i.rn, i64 %i.ab ; 7 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 1
  %i.sc = load i8, ptr %i.sa, align 1, !tbaa !18
  %i.sd = zext i8 %i.sc to i64
  %i.se = sub nsw i64 0, %i.sd
  %i.sf = getelementptr inbounds i8, ptr %i.md, i64 %i.se
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !18
  %i.sh = zext i8 %i.sg to i32                    ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sa, i64 2
  %i.sj = load i8, ptr %i.sb, align 1, !tbaa !18
  %i.sk = zext i8 %i.sj to i64
  %i.sl = sub nsw i64 0, %i.sk
  %i.sm = getelementptr inbounds i8, ptr %i.md, i64 %i.sl
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !18
  %i.so = zext i8 %i.sn to i32                    ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sa, i64 3
  %i.sq = load i8, ptr %i.si, align 1, !tbaa !18
  %i.sr = zext i8 %i.sq to i64
  %i.ss = sub nsw i64 0, %i.sr
  %i.st = getelementptr inbounds i8, ptr %i.md, i64 %i.ss
  %i.su = load i8, ptr %i.st, align 1, !tbaa !18
  %i.sv = zext i8 %i.su to i32                    ; 2 uses
end_hunk_1
begin_hunk_2_@susan_edges:bb.a
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
  %i.l = mul nuw nsw i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
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
  %i.cr = mul nuw nsw i64 %i.cq, %i.v
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr ; 3 uses
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
  %i.fe = zext i8 %i.fd to i64
  %i.ff = sub nsw i64 0, %i.fe                    ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.df, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !18
  %i.fi = zext i8 %i.fh to i32
  %i.fj = add nsw i32 %i.fb, %i.fi
  %i.fk = load i8, ptr %i.fc, align 1, !tbaa !18
  %i.fl = zext i8 %i.fk to i64
  %i.fm = sub nsw i64 0, %i.fl                    ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.df, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !18
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = add nuw nsw i32 %i.dp, %i.ej
  %i.fr = add nuw nsw i32 %i.ec, %i.eq
  %i.fs = add nuw nsw i32 %i.fq, %i.ey
  %i.ft = sub nsw i32 %i.fr, %i.fs
  %i.fu = add nsw i32 %i.ft, %i.fp                ; 4 uses
  %i.fv = add nsw i32 %i.fj, %i.fp                ; 3 uses
  %i.fw = mul nsw i32 %i.fu, %i.fu
  %i.fx = mul nsw i32 %i.fv, %i.fv
  %i.fy = add nuw nsw i32 %i.fw, %i.fx
  %i.fz = uitofp nneg i32 %i.fy to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.fz)
  %i.ga = fpext float %sqrt to double
  %i.gb = uitofp nneg i32 %i.dh to double
  %i.gc = fmul nnan double %i.gb, 4.000000e-01
  %i.gd = fcmp olt double %i.gc, %i.ga
  br i1 %i.gd, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ge = icmp eq i32 %i.fu, 0
  %i.gf = sitofp i32 %i.fv to float
  %i.gg = sitofp i32 %i.fu to float
  %i.gh = fdiv float %i.gf, %i.gg
  %.0248 = select i1 %i.ge, float 1.000000e+06, float %i.gh ; 3 uses
  %i.gi = fcmp uge float %.0248, 0.000000e+00     ; 2 uses
  %i.gj = fneg float %.0248
  %.1249 = select i1 %i.gi, float %.0248, float %i.gj ; 2 uses
  %i.gk = fcmp olt float %.1249, 5.000000e-01
  br i1 %i.gk, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gl = fcmp ogt float %.1249, 2.000000e+00
  br i1 %i.gl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %. = select i1 %i.gi, i32 1, i32 -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0241 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ %., %bb.j ] ; 2 uses
  %.0240 = phi i32 [ 0, %bb.i ], [ 1, %bb.h ], [ 1, %bb.j ] ; 2 uses
  %i.gm = add nsw i32 %.0241, %i.cx
  %i.gn = mul nsw i32 %i.gm, %5
  %i.go = trunc nuw nsw i64 %indvars.iv289 to i32 ; 2 uses
  %i.gp = add nuw nsw i32 %.0240, %i.go
  %i.gq = add i32 %i.gp, %i.gn
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %i.gu = icmp sgt i32 %i.da, %i.gt
  br i1 %i.gu, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.gv = sub nsw i32 %i.cx, %.0241
  %i.gw = mul nsw i32 %i.gv, %5
  %i.gx = sub nsw i32 %i.go, %.0240
  %i.gy = add i32 %i.gx, %i.gw
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !4
  %.not = icmp slt i32 %i.da, %i.hb
  br i1 %.not, label %.critedge, label %.critedge.sink.split

bb.m:                                             ; preds = %._crit_edge299, %bb.g
  %.pre-phi348 = phi i64 [ %.pre347, %._crit_edge299 ], [ %i.fm, %bb.g ]
  %.pre-phi344 = phi i64 [ %.pre343, %._crit_edge299 ], [ %i.ff, %bb.g ]
  %.pre-phi340 = phi i64 [ %.pre339, %._crit_edge299 ], [ %i.ev, %bb.g ]
  %.pre-phi336 = phi i64 [ %.pre335, %._crit_edge299 ], [ %i.dz, %bb.g ]
  %.pre-phi332 = phi i64 [ %.pre331, %._crit_edge299 ], [ %i.dt, %bb.g ]
  %.pre-phi328 = phi i64 [ %.pre327, %._crit_edge299 ], [ %i.dm, %bb.g ]
  %i.hc = getelementptr inbounds i8, ptr %i.df, i64 %.pre-phi328
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !18
  %i.he = zext i8 %i.hd to i32                    ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.df, i64 %.pre-phi332
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !18
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
  %i.f = add nsw i32 %6, -5                       ; 2 uses
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
  %i.q = mul nuw nsw i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
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
  %.0768912.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.us, %._crit_edge910.us ]
  %i.z = mul nuw nsw i64 %indvars.iv928, %i.y
  %i.aa = add nsw i64 %indvars.iv928, -3
  %i.ab = mul nuw nsw i64 %i.aa, %i.y
  %i.ac = add nsw i64 %indvars.iv928, -2
  %i.ad = mul nuw nsw i64 %i.ac, %i.y
  %i.ae = add nsw i64 %indvars.iv928, -1
  %i.af = mul nuw nsw i64 %i.ae, %i.y
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
  %.1769908.us = phi i32 [ %.0768912.us, %.preheader.us ], [ %.2.us, %bb.az ] ; 51 uses
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
  %gep961 = getelementptr [4 x i8], ptr %invariant.gep960, i64 %indvars.iv923 ; 7 uses
  %i.dn = getelementptr i8, ptr %gep961, i64 -12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %.not808.us = icmp slt i32 %i.ao, %i.do
  br i1 %.not808.us, label %bb.az, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dp = getelementptr i8, ptr %gep961, i64 -8
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %.not809.us = icmp slt i32 %i.ao, %i.dq
  br i1 %.not809.us, label %bb.az, label %bb.af

bb.af:                                            ; preds = %bb.ae
end_hunk_2
begin_hunk_3_@susan_corners:bb.a
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
  %i.xx = sub nuw nsw i32 %3, %i.rp
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
  %.0768.lcssa = phi i64 [ 0, %.preheader902.lr.ph ], [ %i.yh, %._crit_edge914.loopexit ], [ 0, %bb.a ]
  %i.yi = getelementptr inbounds [24 x i8], ptr %4, i64 %.0768.lcssa
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
  %i.d = add nsw i32 %6, -7                       ; 2 uses
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
  %i.p = mul nuw nsw i64 %i.o, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
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
  %.0721814.us = phi i32 [ 0, %.preheader.us.preheader ], [ %.2.us, %._crit_edge812.us ]
  %i.w = mul nuw nsw i64 %indvars.iv830, %i.v
  %i.x = add nsw i64 %indvars.iv830, -3
  %i.y = mul nuw nsw i64 %i.x, %i.v
  %i.z = add nsw i64 %indvars.iv830, -2
  %i.aa = mul nuw nsw i64 %i.z, %i.v
  %i.ab = add nsw i64 %indvars.iv830, -1
  %i.ac = mul nuw nsw i64 %i.ab, %i.v
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
  %.1722810.us = phi i32 [ %.0721814.us, %.preheader.us ], [ %.2.us, %bb.az ] ; 51 uses
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
  %.not746.us = icmp slt i32 %i.al, %i.dx
  br i1 %.not746.us, label %bb.az, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dy = getelementptr i8, ptr %i.ak, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %.not747.us = icmp slt i32 %i.al, %i.dz
  br i1 %.not747.us, label %bb.az, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = add nuw nsw i64 %indvars.iv825, %i.ad   ; 6 uses
  %i.eb = getelementptr [4 x i8], ptr %1, i64 %i.ea ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 -12
end_hunk_3
begin_hunk_4_@main:bb.a
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 -1
  store i8 -1, ptr %i.nm, align 1, !tbaa !18
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 1 ; 2 uses
  store i8 -1, ptr %i.nl, align 1, !tbaa !18
  store i8 -1, ptr %i.nn, align 1, !tbaa !18
  %i.no = getelementptr inbounds i8, ptr %i.nn, i64 %i.nb ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 1
  store i8 -1, ptr %i.no, align 1, !tbaa !18
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 2 ; 2 uses
  store i8 0, ptr %i.np, align 1, !tbaa !18
  store i8 -1, ptr %i.nq, align 1, !tbaa !18
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 %i.nb ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 1
  store i8 -1, ptr %i.nr, align 1, !tbaa !18
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  store i8 -1, ptr %i.ns, align 1, !tbaa !18
  store i8 -1, ptr %i.nt, align 1, !tbaa !18
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.nu = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next36.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !52
  %.not.us.i = icmp eq i32 %i.nw, 7
  br i1 %.not.us.i, label %int_to_uchar.exit, label %.lr.ph.split.us.i, !llvm.loop !56

.lr.ph.split.i:                                   ; preds = %.lr.ph.i120, %.lr.ph.split.i
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i122, %.lr.ph.split.i ], [ 0, %.lr.ph.i120 ] ; 2 uses
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.i121 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 4
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !54
  %i.oa = mul nsw i32 %i.nz, %i.kw
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds i8, ptr %i.lr, i64 %i.ob
  %i.od = load i32, ptr %i.nx, align 8, !tbaa !55
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds i8, ptr %i.oc, i64 %i.oe
  store i8 0, ptr %i.of, align 1, !tbaa !18
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next.i122
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !52
  %.not.i = icmp eq i32 %i.oi, 7
  br i1 %.not.i, label %int_to_uchar.exit, label %.lr.ph.split.i, !llvm.loop !56

default.unreachable193:                           ; preds = %._crit_edge
  unreachable

int_to_uchar.exit.loopexit308.unr-lcssa:          ; preds = %.lr.ph39.i
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %int_to_uchar.exit, label %.lr.ph39.i.epil.preheader

.lr.ph39.i.epil.preheader:                        ; preds = %int_to_uchar.exit.loopexit308.unr-lcssa, %.lr.ph39.preheader.i
  %indvars.iv42.i.epil.init = phi i64 [ 0, %.lr.ph39.preheader.i ], [ %indvars.iv.next43.i.1, %int_to_uchar.exit.loopexit308.unr-lcssa ] ; 2 uses
  %lcmp.mod326 = trunc i32 %i.bd to i1
  tail call void @llvm.assume(i1 %lcmp.mod326)
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv42.i.epil.init
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !4
  %i.ol = sub nsw i32 %i.ok, %.1.i.lcssa
  %i.om = mul nsw i32 %i.ol, 255
  %i.on = sdiv i32 %i.om, %i.fs
  %i.oo = trunc i32 %i.on to i8
  %i.op = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv42.i.epil.init
  store i8 %i.oo, ptr %i.op, align 1, !tbaa !18
  br label %int_to_uchar.exit

int_to_uchar.exit.loopexit316.unr-lcssa:          ; preds = %.lr.ph39.i115
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %int_to_uchar.exit, label %.lr.ph39.i115.epil.preheader

.lr.ph39.i115.epil.preheader:                     ; preds = %int_to_uchar.exit.loopexit316.unr-lcssa, %.lr.ph39.preheader.i113
  %indvars.iv42.i116.epil.init = phi i64 [ 0, %.lr.ph39.preheader.i113 ], [ %indvars.iv.next43.i117.1, %int_to_uchar.exit.loopexit316.unr-lcssa ] ; 2 uses
  %lcmp.mod323 = trunc i32 %i.ky to i1
  tail call void @llvm.assume(i1 %lcmp.mod323)
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv42.i116.epil.init
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !4
  %i.os = sub nsw i32 %i.or, %.1.i110.lcssa
  %i.ot = mul nsw i32 %i.os, 255
  %i.ou = sdiv i32 %i.ot, %i.mg
  %i.ov = trunc i32 %i.ou to i8
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lr, i64 %indvars.iv42.i116.epil.init
  store i8 %i.ov, ptr %i.ow, align 1, !tbaa !18
  br label %int_to_uchar.exit

int_to_uchar.exit:                                ; preds = %.lr.ph39.i115.epil.preheader, %int_to_uchar.exit.loopexit316.unr-lcssa, %.lr.ph.split.i, %.lr.ph.split.us.i, %.lr.ph39.i.epil.preheader, %int_to_uchar.exit.loopexit308.unr-lcssa, %vec.epilog.scalar.ph.prol.loopexit, %bb.ap, %middle.block284, %vec.epilog.middle.block, %bb.av, %bb.ar, %.loopexit.i, %.preheader.i95, %susan_principle_small.exit, %setup_brightness_lut.exit
  %i.ox = phi i32 [ %i.bc, %.lr.ph39.i.epil.preheader ], [ %i.bc, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.kx, %.lr.ph.split.i ], [ %i.bc, %middle.block284 ], [ %i.ba, %setup_brightness_lut.exit ], [ %i.kx, %bb.av ], [ %i.kx, %bb.ar ], [ %i.bc, %.loopexit.i ], [ %i.bc, %.preheader.i95 ], [ %i.bc, %susan_principle_small.exit ], [ %i.kx, %.lr.ph.split.us.i ], [ %i.bc, %vec.epilog.middle.block ], [ %i.bc, %bb.ap ], [ %i.bc, %int_to_uchar.exit.loopexit308.unr-lcssa ], [ %i.kx, %int_to_uchar.exit.loopexit316.unr-lcssa ], [ %i.kx, %.lr.ph39.i115.epil.preheader ]
  %i.oy = phi i32 [ %i.bb, %.lr.ph39.i.epil.preheader ], [ %i.bb, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.kw, %.lr.ph.split.i ], [ %i.bb, %middle.block284 ], [ %i.az, %setup_brightness_lut.exit ], [ %i.kw, %bb.av ], [ %i.kw, %bb.ar ], [ %i.bb, %.loopexit.i ], [ %i.bb, %.preheader.i95 ], [ %i.bb, %susan_principle_small.exit ], [ %i.kw, %.lr.ph.split.us.i ], [ %i.bb, %vec.epilog.middle.block ], [ %i.bb, %bb.ap ], [ %i.bb, %int_to_uchar.exit.loopexit308.unr-lcssa ], [ %i.kw, %int_to_uchar.exit.loopexit316.unr-lcssa ], [ %i.kw, %.lr.ph39.i115.epil.preheader ]
  %i.oz = phi ptr [ %i.bw, %.lr.ph39.i.epil.preheader ], [ %i.gj, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.lr, %.lr.ph.split.i ], [ %i.gj, %middle.block284 ], [ %i.ay, %setup_brightness_lut.exit ], [ %i.lr, %bb.av ], [ %i.lr, %bb.ar ], [ %i.gj, %.loopexit.i ], [ %i.gj, %.preheader.i95 ], [ %i.bw, %susan_principle_small.exit ], [ %i.lr, %.lr.ph.split.us.i ], [ %i.gj, %vec.epilog.middle.block ], [ %i.gj, %bb.ap ], [ %i.bw, %int_to_uchar.exit.loopexit308.unr-lcssa ], [ %i.lr, %int_to_uchar.exit.loopexit316.unr-lcssa ], [ %i.lr, %.lr.ph39.i115.epil.preheader ]
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !11
  %i.pc = tail call i32 @put_image(ptr noundef %i.pb, ptr noundef %i.oz, i32 noundef %i.oy, i32 noundef %i.ox) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold }
attributes #25 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !16, !15}
!18 = !{!6, !6, i64 0}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14, !29}
!29 = !{!"llvm.loop.unswitch.partial.disable"}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14, !29}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14, !15, !16}
!40 = !{!"branch_weights", i32 4, i32 12}
!41 = distinct !{!41, !14, !15, !16}
!42 = distinct !{!42, !14, !15}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = !{!53, !5, i64 8}
!53 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!54 = !{!53, !5, i64 4}
!55 = !{!53, !5, i64 0}
!56 = distinct !{!56, !14}
!57 = !{!53, !5, i64 12}
!58 = !{!53, !5, i64 16}
!59 = !{!53, !5, i64 20}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14, !15, !16}
!72 = distinct !{!72, !14, !16, !15}
!73 = distinct !{!73, !14, !15, !16}
!74 = distinct !{!74, !14, !15, !16}
!75 = distinct !{!75, !14, !15}
!76 = distinct !{!76, !14, !15, !16}
!77 = distinct !{!77, !14, !16, !15}
end_hunk_4
