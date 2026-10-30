Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDbvt?download=true
inline.NumInlined: 281
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6btDbvt15optimizeTopDownEi:bb.a
bb.i:                                             ; preds = %bb.d, %bb.c, %bb.e, %_ZN20btAlignedObjectArrayIP10btDbvtNodeE7reserveEi.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.ay

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIP10btDbvtNodeED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL7topdownP6btDbvtPP10btDbvtNodeii(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !85

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis) #18
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 1.000000e+00, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, align 16, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 4), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 20), align 4, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 24), i8 0, i64 16, i1 false)
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 40), align 8, !tbaa !43
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 48, ptr nonnull @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %bb.e, label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.f = icmp sgt i32 %2, %3
  br i1 %i.f, label %bb.f, label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !36, !noalias !86 ; 6 uses
  %i.h = load <2 x float>, ptr %i.g, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.13.0.copyload = load float, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !27
  %.sroa.1390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load <2 x float>, ptr %.sroa.1390.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.19.0.copyload = load float, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !27
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ 1, %bb.f ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.sink28.i1418.i = phi float [ %.sroa.10.0.copyload, %bb.f ], [ %.sink28.i.i, %bb.g ] ; 2 uses
  %.sink42.i1617.i = phi float [ %.sroa.19.0.copyload, %bb.f ], [ %.sink42.i.i, %bb.g ] ; 2 uses
  %i.j = phi <2 x float> [ %i.h, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %i.k = phi <2 x float> [ %i.i, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36, !noalias !86 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load <2 x float>, ptr %i.m, align 4, !tbaa !43, !noalias !86 ; 2 uses
  %i.p = fcmp olt <2 x float> %i.j, %i.o
  %i.q = select <2 x i1> %i.p, <2 x float> %i.j, <2 x float> %i.o ; 3 uses
  %i.r = load <2 x float>, ptr %i.n, align 4, !tbaa !43, !noalias !86 ; 2 uses
  %i.s = fcmp ogt <2 x float> %i.k, %i.r
  %i.t = select <2 x i1> %i.s, <2 x float> %i.k, <2 x float> %i.r ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !43, !noalias !86 ; 2 uses
  %i.w = fcmp olt float %.sink28.i1418.i, %i.v
  %.sink28.i.i = select i1 %i.w, float %.sink28.i1418.i, float %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !43, !noalias !86 ; 2 uses
  %i.z = fcmp ogt float %.sink42.i1617.i, %i.y
  %.sink42.i.i = select i1 %i.z, float %.sink42.i1617.i, float %i.y ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.preheader, label %bb.g, !llvm.loop !80

.lr.ph.preheader:                                 ; preds = %bb.g
  %.pre156 = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 8), align 8, !tbaa !43
  %i.aa = shufflevector <2 x float> %i.q, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ab = insertelement <3 x float> %i.aa, float %.sink28.i.i, i64 0
  %i.ac = shufflevector <2 x float> %i.t, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.ad = insertelement <3 x float> %i.ac, float %.sink42.i.i, i64 0
  %i.ae = fadd <3 x float> %i.ab, %i.ad
  %i.af = fmul <3 x float> %i.ae, splat (float 5.000000e-01) ; 3 uses
  %i.ag = load <2 x float>, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, align 16, !tbaa !43 ; 2 uses
  %i.ah = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 16), align 16, !tbaa !43 ; 2 uses
  %i.ai = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 24), align 8
  %i.aj = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 32), align 16, !tbaa !43
  %i.ak = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 36), align 4, !tbaa !43
  %i.al = load float, ptr getelementptr inbounds nuw (i8, ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 40), align 8, !tbaa !43
  %i.am = insertelement <2 x float> %i.ai, float %.pre156, i64 1
  %i.an = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <2 x i32> <i32 0, i32 2>
  %i.ao = shufflevector <2 x float> %i.ah, <2 x float> %i.ag, <2 x i32> <i32 1, i32 3>
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.ap = icmp sgt i32 %spec.select176, 0
  %i.aq = icmp sgt i32 %spec.select177, 0
  %or.cond = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.h, label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select176, %.lr.ph ] ; 2 uses
  %.sroa.5.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select177, %.lr.ph ] ; 2 uses
  %.sroa.7.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.7.2, %.lr.ph ] ; 2 uses
  %.sroa.9.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.9.2, %.lr.ph ] ; 2 uses
  %.sroa.11.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.11.2, %.lr.ph ] ; 2 uses
  %.sroa.13.1 = phi i32 [ 0, %.lr.ph.preheader ], [ %.sroa.13.2, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load <3 x float>, ptr %i.as, align 4, !tbaa !43
  %i.av = load <3 x float>, ptr %i.at, align 4, !tbaa !43
  %i.aw = fadd <3 x float> %i.au, %i.av
  %i.ax = fmul <3 x float> %i.aw, splat (float 5.000000e-01)
  %i.ay = shufflevector <3 x float> %i.ax, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.az = fsub <3 x float> %i.ay, %i.af           ; 6 uses
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bb = fmul <2 x float> %i.ba, %i.ao
  %i.bc = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.an, <2 x float> %i.bb)
  %i.be = shufflevector <3 x float> %i.az, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> %i.am, <2 x float> %i.bd)
  %i.bg = fcmp ogt <2 x float> %i.bf, zeroinitializer ; 2 uses
  %i.bh = extractelement <2 x i1> %i.bg, i64 1    ; 3 uses
  %.sroa.speculated152 = select i1 %i.bh, i32 %.sroa.5.1, i32 %.sroa.0.1
  %i.bi = add nsw i32 %.sroa.speculated152, 1     ; 2 uses
  %spec.select176 = select i1 %i.bh, i32 %.sroa.0.1, i32 %i.bi ; 3 uses
  %spec.select177 = select i1 %i.bh, i32 %i.bi, i32 %.sroa.5.1 ; 3 uses
  %i.bj = extractelement <2 x i1> %i.bg, i64 0    ; 3 uses
  %.sroa.speculated143 = select i1 %i.bj, i32 %.sroa.9.1, i32 %.sroa.7.1
  %i.bk = add nsw i32 %.sroa.speculated143, 1     ; 2 uses
  %.sroa.7.2 = select i1 %i.bj, i32 %.sroa.7.1, i32 %i.bk ; 3 uses
  %.sroa.9.2 = select i1 %i.bj, i32 %i.bk, i32 %.sroa.9.1 ; 3 uses
  %i.bl = extractelement <3 x float> %i.az, i64 2
  %i.bm = fmul float %i.bl, %i.ak
  %i.bn = extractelement <3 x float> %i.az, i64 1
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.aj, float %i.bm)
  %i.bp = extractelement <3 x float> %i.az, i64 0
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bp, float %i.al, float %i.bo)
  %i.br = fcmp ogt float %i.bq, 0.000000e+00      ; 3 uses
  %.sroa.speculated = select i1 %i.br, i32 %.sroa.13.1, i32 %.sroa.11.1
  %i.bs = add nsw i32 %.sroa.speculated, 1        ; 2 uses
  %.sroa.11.2 = select i1 %i.br, i32 %.sroa.11.1, i32 %i.bs ; 3 uses
  %.sroa.13.2 = select i1 %i.br, i32 %i.bs, i32 %.sroa.13.1 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count.i
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !81

bb.h:                                             ; preds = %.preheader
  %i.bt = sub nsw i32 %spec.select176, %spec.select177
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = tail call noundef float @llvm.fabs.f32(float %i.bu)
  %i.bw = fptosi float %i.bv to i32               ; 2 uses
  %i.bx = icmp sle i32 %2, %i.bw
  %spec.select = sext i1 %i.bx to i32
  %spec.select66 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.bw)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.h
  %.259 = phi i32 [ %spec.select, %bb.h ], [ -1, %.preheader ] ; 2 uses
  %.2 = phi i32 [ %spec.select66, %bb.h ], [ %2, %.preheader ] ; 3 uses
  %i.by = icmp sgt i32 %.sroa.7.2, 0
  %i.bz = icmp sgt i32 %.sroa.9.2, 0
  %or.cond178 = select i1 %i.by, i1 %i.bz, i1 false
  br i1 %or.cond178, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ca = sub nsw i32 %.sroa.7.2, %.sroa.9.2
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = tail call noundef float @llvm.fabs.f32(float %i.cb)
  %i.cd = fptosi float %i.cc to i32               ; 2 uses
  %i.ce = icmp sgt i32 %.2, %i.cd
  %spec.select.1 = select i1 %i.ce, i32 1, i32 %.259
  %spec.select66.1 = tail call i32 @llvm.smin.i32(i32 %.2, i32 %i.cd)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.259.1 = phi i32 [ %spec.select.1, %bb.j ], [ %.259, %bb.i ] ; 2 uses
  %.2.1 = phi i32 [ %spec.select66.1, %bb.j ], [ %.2, %bb.i ]
  %i.cf = icmp sgt i32 %.sroa.11.2, 0
  %i.cg = icmp sgt i32 %.sroa.13.2, 0
  %or.cond179 = select i1 %i.cf, i1 %i.cg, i1 false
  br i1 %or.cond179, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = sub nsw i32 %.sroa.11.2, %.sroa.13.2
  %i.ci = sitofp i32 %i.ch to float
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = fptosi float %i.cj to i32
  %i.cl = icmp sgt i32 %.2.1, %i.ck
  br i1 %i.cl, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cm = icmp sgt i32 %.259.1, -1
  br i1 %i.cm, label %.thread, label %bb.p

.thread:                                          ; preds = %bb.l, %bb.m
  %.259.2163 = phi i32 [ %.259.1, %bb.m ], [ 2, %bb.l ]
  %i.cn = zext nneg i32 %.259.2163 to i64
  %i.co = getelementptr inbounds nuw [16 x i8], ptr @_ZZL7topdownP6btDbvtPP10btDbvtNodeiiE4axis, i64 %i.cn ; 3 uses
  %i.cp = load float, ptr %i.co, align 16, !tbaa !43 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !43 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !43 ; 2 uses
  %i.cu = extractelement <3 x float> %i.af, i64 1 ; 2 uses
  %i.cv = shufflevector <3 x float> %i.af, <3 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.thread
  %.049.i = phi i32 [ 0, %.thread ], [ %i.ew, %.critedge2.i ]
  %.03248.i = phi i32 [ %2, %.thread ], [ %i.es, %.critedge2.i ] ; 5 uses
  %i.cw = sext i32 %.049.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i72 = phi i64 [ %i.cw, %.lr.ph.i ], [ %indvars.iv.next.i73, %bb.o ] ; 5 uses
  %i.cx = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.i72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load float, ptr %i.cy, align 4, !tbaa !43
  %i.db = load float, ptr %i.cz, align 4, !tbaa !43
  %i.dc = fadd float %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 20
  %i.df = load <2 x float>, ptr %i.dd, align 4, !tbaa !43
  %i.dg = load <2 x float>, ptr %i.de, align 4, !tbaa !43
  %i.dh = fadd <2 x float> %i.df, %i.dg
  %i.di = fmul float %i.dc, 5.000000e-01
  %i.dj = fsub float %i.di, %i.cu
  %i.dk = fmul <2 x float> %i.dh, splat (float 5.000000e-01)
  %i.dl = fsub <2 x float> %i.dk, %i.cv           ; 2 uses
  %i.dm = extractelement <2 x float> %i.dl, i64 0
  %i.dn = fmul float %i.cr, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.dj, float %i.dn)
  %i.dp = extractelement <2 x float> %i.dl, i64 1
  %i.dq = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.dp, float %i.do)
  %i.dr = fcmp ugt float %i.dq, 0.000000e+00
  br i1 %i.dr, label %.critedge.preheader.i, label %bb.o

.critedge.preheader.i:                            ; preds = %bb.n
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv.i72
  %i.dt = trunc nsw i64 %indvars.iv.i72 to i32    ; 3 uses
  %.not3443.i = icmp eq i32 %.03248.i, %i.dt
  br i1 %.not3443.i, label %_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit, label %.lr.ph45.preheader.i

.lr.ph45.preheader.i:                             ; preds = %.critedge.preheader.i
  %i.du = sext i32 %.03248.i to i64
  br label %.lr.ph45.i

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i73 = add nsw i64 %indvars.iv.i72, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i73 to i32
  %exitcond135 = icmp eq i32 %.03248.i, %lftr.wideiv
  br i1 %exitcond135, label %_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit, label %bb.n, !llvm.loop !82

.lr.ph45.i:                                       ; preds = %.critedge.i, %.lr.ph45.preheader.i
  %indvars.iv56.i = phi i64 [ %i.du, %.lr.ph45.preheader.i ], [ %indvars.iv.next57.i, %.critedge.i ] ; 3 uses
  %i.dv = getelementptr [8 x i8], ptr %1, i64 %indvars.iv56.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !36 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load float, ptr %i.dx, align 4, !tbaa !43
  %i.ea = load float, ptr %i.dy, align 4, !tbaa !43
  %i.eb = fadd float %i.dz, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  %i.ee = load <2 x float>, ptr %i.ec, align 4, !tbaa !43
  %i.ef = load <2 x float>, ptr %i.ed, align 4, !tbaa !43
  %i.eg = fadd <2 x float> %i.ee, %i.ef
  %i.eh = fmul float %i.eb, 5.000000e-01
  %i.ei = fsub float %i.eh, %i.cu
  %i.ej = fmul <2 x float> %i.eg, splat (float 5.000000e-01)
  %i.ek = fsub <2 x float> %i.ej, %i.cv           ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = fmul float %i.cr, %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ei, float %i.em)
  %i.eo = extractelement <2 x float> %i.ek, i64 1
  %i.ep = tail call noundef float @llvm.fmuladd.f32(float %i.ct, float %i.eo, float %i.en)
  %i.eq = fcmp ugt float %i.ep, 0.000000e+00
  br i1 %i.eq, label %.critedge.i, label %.critedge2.i

.critedge.i:                                      ; preds = %.lr.ph45.i
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i, -1 ; 2 uses
  %.not34.i = icmp eq i64 %indvars.iv.i72, %indvars.iv.next57.i
  br i1 %.not34.i, label %_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit, label %.lr.ph45.i, !llvm.loop !83

.critedge2.i:                                     ; preds = %.lr.ph45.i
  %i.er = trunc nsw i64 %indvars.iv56.i to i32
  %i.es = add nsw i32 %i.er, -1                   ; 4 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.et ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !36
  store ptr %i.ev, ptr %i.ds, align 8, !tbaa !36
  store ptr %i.cy, ptr %i.eu, align 8, !tbaa !36
  %i.ew = add nsw i32 %i.dt, 1                    ; 2 uses
  %.not39.i = icmp eq i32 %i.ew, %i.es
  br i1 %.not39.i, label %_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit, label %.lr.ph.i, !llvm.loop !84

bb.p:                                             ; preds = %bb.m
  %i.ex = lshr i32 %2, 1
  %i.ey = add nuw nsw i32 %i.ex, 1
  br label %_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit

_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit:     ; preds = %.critedge2.i, %.critedge.preheader.i, %bb.o, %.critedge.i, %bb.p
  %.060 = phi i32 [ %i.ey, %bb.p ], [ %.03248.i, %bb.o ], [ %i.dt, %.critedge.i ], [ %i.es, %.critedge2.i ], [ %.03248.i, %.critedge.preheader.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit
  store ptr null, ptr %i.ez, align 8, !tbaa !25
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit

bb.r:                                             ; preds = %_ZL5splitPP10btDbvtNodeiRK9btVector3S4_.exit
  %i.fb = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fb, i8 0, i64 56, i1 false)
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit

common.ret209:                                    ; preds = %bb.t, %bb.s, %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit
  %common.ret209.op = phi ptr [ %.0.i.i, %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit ], [ %i.fo, %bb.s ], [ %i.fp, %bb.t ]
  ret ptr %common.ret209.op

_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmPv.exit: ; preds = %bb.q, %bb.r
  %.0.i.i = phi ptr [ %i.fa, %bb.q ], [ %i.fb, %bb.r ] ; 12 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fc, i8 0, i64 24, i1 false)
  store <2 x float> %i.q, ptr %.0.i.i, align 8
  %.sroa.10.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store float %.sink28.i.i, ptr %.sroa.10.0..0.i.i.sroa_idx, align 8
  %.sroa.13.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 12
  store float %.sroa.13.0.copyload, ptr %.sroa.13.0..0.i.i.sroa_idx, align 4, !tbaa !27
  %.sroa.1390.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  store <2 x float> %i.t, ptr %.sroa.1390.0..0.i.i.sroa_idx, align 8
  %.sroa.19.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store float %.sink42.i.i, ptr %.sroa.19.0..0.i.i.sroa_idx, align 8
  %.sroa.22.0..0.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  store float %.sroa.22.0.copyload, ptr %.sroa.22.0..0.i.i.sroa_idx, align 4, !tbaa !27
  %i.ff = tail call fastcc noundef ptr @_ZL7topdownP6btDbvtPP10btDbvtNodeii(ptr noundef %0, ptr noundef %1, i32 noundef %.060, i32 noundef %3)
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !27
  %i.fg = sext i32 %.060 to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fg
  %i.fi = sub nsw i32 %2, %.060
  %i.fj = tail call fastcc noundef ptr @_ZL7topdownP6btDbvtPP10btDbvtNodeii(ptr noundef %0, ptr noundef %i.fh, i32 noundef %i.fi, i32 noundef %3)
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !27
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !27
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store ptr %.0.i.i, ptr %i.fl, align 8, !tbaa !47
  %i.fm = load ptr, ptr %i.fe, align 8, !tbaa !27
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store ptr %.0.i.i, ptr %i.fn, align 8, !tbaa !47
  br label %common.ret209

bb.s:                                             ; preds = %bb.e
  tail call fastcc void @_ZL8bottomupP6btDbvtPP10btDbvtNodei(ptr noundef %0, ptr noundef %1, i32 noundef %2)
  %i.fo = load ptr, ptr %1, align 8, !tbaa !36
  br label %common.ret209

bb.t:                                             ; preds = %bb.d
  %i.fp = load ptr, ptr %1, align 8, !tbaa !36
  br label %common.ret209
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6btDbvt19optimizeIncrementalEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %struct.btDbvtAabbMm, align 4       ; 4 uses
  %i.a = icmp slt i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4
  %.010 = select i1 %i.a, i32 %i.c, i32 %1        ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !24
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp sgt i32 %.010, 0
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN6btDbvt6updateEP10btDbvtNodei.exit
  %.1 = phi i32 [ %i.bc, %_ZN6btDbvt6updateEP10btDbvtNodei.exit ], [ %.010, %.preheader ]
  %.0915 = load ptr, ptr %0, align 8, !tbaa !27   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0915, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %.not1416 = icmp eq ptr %i.i, null
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZL4sortP10btDbvtNodeRS0_.exit
  %i.j = phi ptr [ %i.aw, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ %i.h, %bb.b ] ; 2 uses
  %.0918 = phi ptr [ %.09, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ %.0915, %bb.b ] ; 11 uses
  %.017 = phi i32 [ %i.av, %_ZL4sortP10btDbvtNodeRS0_.exit ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0918, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 11 uses
  %i.m = icmp ugt ptr %i.l, %.0918
end_hunk_0
begin_hunk_1_@_ZL10insertleafP6btDbvtP10btDbvtNodeS2_:bb.a

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !43
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !43
  %i.i = fadd <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !43
  %i.n = fadd float %i.k, %i.m
  %i.o = insertelement <2 x float> poison, float %i.n, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %i.q = phi ptr [ %i.bf, %bb.d ], [ %i.d, %.preheader ] ; 4 uses
  %.045 = phi ptr [ %i.bd, %bb.d ], [ %1, %.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %.045, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.x = load float, ptr %i.w, align 4, !tbaa !43
  %i.y = load <2 x float>, ptr %i.s, align 4, !tbaa !43
  %i.z = load <2 x float>, ptr %i.t, align 4, !tbaa !43
  %i.aa = fadd <2 x float> %i.y, %i.z
  %i.ab = fsub <2 x float> %i.i, %i.aa
  %i.ac = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !43
  %i.ai = load <2 x float>, ptr %i.q, align 4, !tbaa !43
  %i.aj = load <2 x float>, ptr %i.ad, align 4, !tbaa !43
  %i.ak = fadd <2 x float> %i.ai, %i.aj
  %i.al = fsub <2 x float> %i.i, %i.ak
  %i.am = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.al) ; 2 uses
  %i.an = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.af, i64 1
  %i.ap = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.ah, i64 1
  %i.ar = fadd <2 x float> %i.ao, %i.aq
  %i.as = fsub <2 x float> %i.p, %i.ar
  %i.at = shufflevector <2 x float> %i.ac, <2 x float> %i.am, <2 x i32> <i32 0, i32 2>
  %i.au = shufflevector <2 x float> %i.ac, <2 x float> %i.am, <2 x i32> <i32 1, i32 3>
  %i.av = fadd <2 x float> %i.at, %i.au
  %i.aw = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.as)
  %i.ax = fadd <2 x float> %i.av, %i.aw           ; 2 uses
  %i.ay = extractelement <2 x float> %i.ax, i64 0
  %i.az = extractelement <2 x float> %i.ax, i64 1
  %i.ba = fcmp uge float %i.ay, %i.az
  %i.bb = zext i1 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !27 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.loopexit50, label %bb.d, !llvm.loop !90

.loopexit50:                                      ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %1, %bb.c ], [ %i.bd, %bb.d ]   ; 10 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1, i64 32 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit50
  store ptr null, ptr %i.bj, align 8, !tbaa !25
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit

bb.f:                                             ; preds = %.loopexit50
  %i.bl = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 56, i32 noundef 16) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, i8 0, i64 56, i1 false)
  br label %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit

_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.bk, %bb.e ], [ %i.bl, %bb.f ] ; 18 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !47
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false)
  %i.br = load float, ptr %2, align 4, !tbaa !43  ; 2 uses
  %i.bs = load float, ptr %.1, align 8, !tbaa !43 ; 2 uses
  %i.bt = fcmp olt float %i.br, %i.bs
  %.sink.i.i = select i1 %i.bt, float %i.br, float %i.bs
  store float %.sink.i.i, ptr %.0.i.i, align 8, !tbaa !43
  %i.bu = load float, ptr %i.bo, align 4, !tbaa !43 ; 2 uses
  %i.bv = load float, ptr %i.bp, align 8, !tbaa !43 ; 2 uses
  %i.bw = fcmp ogt float %i.bu, %i.bv
  %storemerge.i.i = select i1 %i.bw, float %i.bu, float %i.bv
  store float %storemerge.i.i, ptr %i.bq, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !43 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !43 ; 2 uses
  %i.cb = fcmp olt float %i.by, %i.ca
  %.sink27.i.i = select i1 %i.cb, float %i.by, float %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store float %.sink27.i.i, ptr %i.cc, align 4, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !43 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 20
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !43 ; 2 uses
  %i.ch = fcmp ogt float %i.ce, %i.cg
  %.sink40.i.i = select i1 %i.ch, float %i.ce, float %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  store float %.sink40.i.i, ptr %i.ci, align 4, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !43 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !43 ; 2 uses
  %i.cn = fcmp olt float %i.ck, %i.cm
  %.sink28.i.i = select i1 %i.cn, float %i.ck, float %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store float %.sink28.i.i, ptr %i.co, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !43 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1, i64 24
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !43 ; 2 uses
  %i.ct = fcmp ogt float %i.cq, %i.cs
  %.sink42.i.i = select i1 %i.ct, float %i.cq, float %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store float %.sink42.i.i, ptr %i.cu, align 8, !tbaa !43
  %.not48 = icmp eq ptr %i.bi, null
  br i1 %.not48, label %bb.m, label %bb.g

bb.g:                                             ; preds = %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = icmp eq ptr %i.cy, %.1
  %i.da = zext i1 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.da
  store ptr %.0.i.i, ptr %i.db, align 8, !tbaa !27
  store ptr %.1, ptr %i.bn, align 8, !tbaa !27
  store ptr %.0.i.i, ptr %i.bh, align 8, !tbaa !47
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store ptr %2, ptr %i.dc, align 8, !tbaa !27
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i, ptr %i.dd, align 8, !tbaa !47
  %.pre = load float, ptr %.0.i.i, align 8, !tbaa !43
  br label %bb.h

bb.h:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, %bb.g
  %i.de = phi float [ %.pre, %bb.g ], [ %.sink.i, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ]
  %.044 = phi ptr [ %i.bi, %bb.g ], [ %i.fs, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ] ; 16 uses
  %.0 = phi ptr [ %.0.i.i, %bb.g ], [ %.044, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ] ; 5 uses
  %i.df = load float, ptr %.044, align 4, !tbaa !43
  %i.dg = fcmp ugt float %i.df, %i.de
  br i1 %i.dg, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %.044, i64 4
  %i.di = load float, ptr %i.dh, align 4, !tbaa !43
  %i.dj = getelementptr inbounds nuw i8, ptr %.0, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !43
  %i.dl = fcmp ugt float %i.di, %i.dk
  br i1 %i.dl, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.044, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !43
  %i.do = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !43
  %i.dq = fcmp ugt float %i.dn, %i.dp
  br i1 %i.dq, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.du = load float, ptr %i.dt, align 4, !tbaa !43
  %i.dv = fcmp ult float %i.ds, %i.du
  br i1 %i.dv, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = getelementptr inbounds nuw i8, ptr %.044, i64 20
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !43
  %i.dy = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !43
  %i.ea = fcmp ult float %i.dx, %i.dz
  br i1 %i.ea, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a

_ZNK12btDbvtAabbMm7ContainERKS_.exit.a:           ; preds = %bb.l
  %i.eb = getelementptr inbounds nuw i8, ptr %.044, i64 24
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !43
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !43
  %i.ef = fcmp ult float %i.ec, %i.ee
  br i1 %i.ef, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %.loopexit

_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread:      ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a
  %i.eg = getelementptr inbounds nuw i8, ptr %.044, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !27 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.044, i64 48
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !27 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.en = load float, ptr %i.eh, align 4, !tbaa !43 ; 2 uses
  %i.eo = load float, ptr %i.ej, align 4, !tbaa !43 ; 2 uses
  %i.ep = fcmp olt float %i.en, %i.eo
  %.sink.i = select i1 %i.ep, float %i.en, float %i.eo ; 2 uses
  store float %.sink.i, ptr %.044, align 8, !tbaa !43
  %i.eq = load float, ptr %i.ek, align 4, !tbaa !43 ; 2 uses
  %i.er = load float, ptr %i.el, align 4, !tbaa !43 ; 2 uses
  %i.es = fcmp ogt float %i.eq, %i.er
  %storemerge.i = select i1 %i.es, float %i.eq, float %i.er
  store float %storemerge.i, ptr %i.em, align 8, !tbaa !43
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !43 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !43 ; 2 uses
  %i.ex = fcmp olt float %i.eu, %i.ew
  %.sink27.i = select i1 %i.ex, float %i.eu, float %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %.044, i64 4
  store float %.sink27.i, ptr %i.ey, align 4, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !43 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !43 ; 2 uses
  %i.fd = fcmp ogt float %i.fa, %i.fc
  %.sink40.i = select i1 %i.fd, float %i.fa, float %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %.044, i64 20
  store float %.sink40.i, ptr %i.fe, align 4, !tbaa !43
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !43 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !43 ; 2 uses
  %i.fj = fcmp olt float %i.fg, %i.fi
  %.sink28.i = select i1 %i.fj, float %i.fg, float %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %.044, i64 8
  store float %.sink28.i, ptr %i.fk, align 8, !tbaa !43
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !43 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !43 ; 2 uses
  %i.fp = fcmp ogt float %i.fm, %i.fo
  %.sink42.i = select i1 %i.fp, float %i.fm, float %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %.044, i64 24
  store float %.sink42.i, ptr %i.fq, align 8, !tbaa !43
  %i.fr = getelementptr inbounds nuw i8, ptr %.044, i64 32
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !47 ; 2 uses
  %.not49 = icmp eq ptr %i.fs, null
  br i1 %.not49, label %.loopexit, label %bb.h, !llvm.loop !91

bb.m:                                             ; preds = %_ZL10createnodeP6btDbvtP10btDbvtNodeRK12btDbvtAabbMmS5_Pv.exit
  store ptr %.1, ptr %i.bn, align 8, !tbaa !27
  store ptr %.0.i.i, ptr %i.bh, align 8, !tbaa !47
  %i.ft = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store ptr %2, ptr %i.ft, align 8, !tbaa !27
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %.0.i.i, ptr %i.fu, align 8, !tbaa !47
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, %bb.m, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !24
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !27
  %i.j = icmp ne ptr %i.i, %1
  %i.k = zext i1 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = icmp eq ptr %i.p, %i.d
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.r
  store ptr %i.m, ptr %i.s, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.f, ptr %i.t, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.v)
  store ptr %i.d, ptr %i.u, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_Z8NotEqualRK12btDbvtAabbMmS1_.exit.thread
  %.03250 = phi ptr [ %i.f, %bb.d ], [ %i.bj, %_Z8NotEqualRK12btDbvtAabbMmS1_.exit.thread ] ; 11 uses
  %.sroa.0.0.copyload = load float, ptr %.03250, align 8
  %.sroa.4.0..032.sroa_idx = getelementptr inbounds nuw i8, ptr %.03250, i64 4 ; 2 uses
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..032.sroa_idx, align 4
  %.sroa.5.0..032.sroa_idx = getelementptr inbounds nuw i8, ptr %.03250, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..032.sroa_idx, align 8
  %.sroa.639.0..032.sroa_idx = getelementptr inbounds nuw i8, ptr %.03250, i64 16 ; 2 uses
  %.sroa.639.0.copyload = load float, ptr %.sroa.639.0..032.sroa_idx, align 8
  %.sroa.7.0..032.sroa_idx = getelementptr inbounds nuw i8, ptr %.03250, i64 20 ; 2 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..032.sroa_idx, align 4
  %.sroa.8.0..032.sroa_idx = getelementptr inbounds nuw i8, ptr %.03250, i64 24 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..032.sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.03250, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03250, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = load float, ptr %i.x, align 4, !tbaa !43 ; 2 uses
  %i.ad = load float, ptr %i.z, align 4, !tbaa !43 ; 2 uses
  %i.ae = fcmp olt float %i.ac, %i.ad
  %.sink.i = select i1 %i.ae, float %i.ac, float %i.ad ; 2 uses
  store float %.sink.i, ptr %.03250, align 8, !tbaa !43
  %i.af = load float, ptr %i.aa, align 4, !tbaa !43 ; 2 uses
  %i.ag = load float, ptr %i.ab, align 4, !tbaa !43 ; 2 uses
  %i.ah = fcmp ogt float %i.af, %i.ag
  %storemerge.i = select i1 %i.ah, float %i.af, float %i.ag ; 2 uses
  store float %storemerge.i, ptr %.sroa.639.0..032.sroa_idx, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !43 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !43 ; 2 uses
  %i.am = fcmp olt float %i.aj, %i.al
  %.sink27.i = select i1 %i.am, float %i.aj, float %i.al ; 2 uses
  store float %.sink27.i, ptr %.sroa.4.0..032.sroa_idx, align 4, !tbaa !43
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ao = load float, ptr %i.an, align 4, !tbaa !43 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !43 ; 2 uses
  %i.ar = fcmp ogt float %i.ao, %i.aq
  %.sink40.i = select i1 %i.ar, float %i.ao, float %i.aq ; 2 uses
  store float %.sink40.i, ptr %.sroa.7.0..032.sroa_idx, align 4, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.at = load float, ptr %i.as, align 4, !tbaa !43 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !43 ; 2 uses
  %i.aw = fcmp olt float %i.at, %i.av
  %.sink28.i = select i1 %i.aw, float %i.at, float %i.av ; 2 uses
  store float %.sink28.i, ptr %.sroa.5.0..032.sroa_idx, align 8, !tbaa !43
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !43 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ba = load float, ptr %i.az, align 4, !tbaa !43 ; 2 uses
  %i.bb = fcmp ogt float %i.ay, %i.ba
  %.sink42.i = select i1 %i.bb, float %i.ay, float %i.ba ; 2 uses
  store float %.sink42.i, ptr %.sroa.8.0..032.sroa_idx, align 8, !tbaa !43
  %i.bc = fcmp une float %.sroa.0.0.copyload, %.sink.i
  %i.bd = fcmp une float %.sroa.4.0.copyload, %.sink27.i
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bd
  %i.be = fcmp une float %.sroa.5.0.copyload, %.sink28.i
  %or.cond45.a = select i1 %or.cond, i1 true, i1 %i.be
  %i.bf = fcmp une float %.sroa.639.0.copyload, %storemerge.i
  %or.cond46 = select i1 %or.cond45.a, i1 true, i1 %i.bf
  %i.bg = fcmp une float %.sroa.7.0.copyload, %.sink40.i
  %or.cond47 = select i1 %or.cond46, i1 true, i1 %i.bg
  %i.bh = fcmp une float %.sroa.8.0.copyload, %.sink42.i
  %or.cond48 = select i1 %or.cond47, i1 true, i1 %i.bh
  br i1 %or.cond48, label %_Z8NotEqualRK12btDbvtAabbMmS1_.exit.thread, label %.loopexit

_Z8NotEqualRK12btDbvtAabbMmS1_.exit.thread:       ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.03250, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !47 ; 2 uses
  %.not37 = icmp eq ptr %i.bj, null
  br i1 %.not37, label %bb.f, label %bb.e

bb.f:                                             ; preds = %_Z8NotEqualRK12btDbvtAabbMmS1_.exit.thread
  %i.bk = load ptr, ptr %0, align 8, !tbaa !24
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  store ptr %i.m, ptr %0, align 8, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %i.bl, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.bn)
  store ptr %i.d, ptr %i.bm, align 8, !tbaa !25
  %i.bo = load ptr, ptr %0, align 8, !tbaa !24
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.f, %bb.b
  %.134 = phi ptr [ null, %bb.b ], [ %i.bo, %bb.g ], [ %i.bk, %bb.f ], [ %.03250, %bb.e ]
  ret ptr %.134
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b
  %.not19 = icmp eq i32 %i.c, 0
  br i1 %.not19, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.e = add nuw nsw i32 %.016, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.e, %i.c
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !0

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.016 = phi i32 [ %i.e, %bb.c ], [ 0, %.preheader ]
  %.01015 = phi ptr [ %i.g, %bb.c ], [ %i.a, %.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01015, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %.critedge, label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !24
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.lr.ph, %.preheader, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.h, %bb.d ], [ %i.a, %.preheader ], [ %i.g, %bb.c ], [ %.01015, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !48
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef %0, ptr noundef %.1, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, float noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !43
  %i.b = load float, ptr %2, align 4, !tbaa !43   ; 2 uses
  %i.c = fcmp ugt float %i.a, %i.b
  br i1 %i.c, label %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge, label %bb.b

._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !43
  br label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !43 ; 6 uses
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !43
  %i.m = fcmp ugt float %i.j, %i.l
  br i1 %i.m, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !43
  %i.r = fcmp ult float %i.o, %i.q
  br i1 %i.r, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load float, ptr %i.s, align 4, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !43
  %i.w = fcmp ult float %i.t, %i.v
  br i1 %i.w, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a

_ZNK12btDbvtAabbMm7ContainERKS_.exit.a:           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load float, ptr %i.z, align 4, !tbaa !43
  %i.ab = fcmp ult float %i.y, %i.aa
  br i1 %i.ab, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.k

_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread:      ; preds = %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge, %bb.b, %bb.c, %bb.d, %bb.e, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a
  %i.ac = phi float [ %.pre, %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge ], [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a ]
  %i.ad = fsub float %i.b, %4                     ; 2 uses
  store float %i.ad, ptr %2, align 4, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = fsub float %i.ac, %4
  store float %i.af, ptr %i.ae, align 4, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !43
  %i.ai = fsub float %i.ah, %4
  store float %i.ai, ptr %i.ag, align 4, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !43
  %i.al = insertelement <2 x float> poison, float %4, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fadd <2 x float> %i.am, %i.ak           ; 2 uses
  store <2 x float> %i.an, ptr %i.aj, align 4, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !43
  %i.aq = fadd float %4, %i.ap
  store float %i.aq, ptr %i.ao, align 4, !tbaa !43
  %i.ar = load float, ptr %3, align 4, !tbaa !43  ; 3 uses
  %i.as = fcmp ogt float %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
  %i.at = extractelement <2 x float> %i.an, i64 0
  %i.au = fadd float %i.at, %i.ar
  store float %i.au, ptr %i.aj, align 4, !tbaa !43
  br label %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit

bb.g:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
  %i.av = fadd float %i.ad, %i.ar
  store float %i.av, ptr %2, align 4, !tbaa !43
  br label %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit

_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit: ; preds = %bb.f, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !43 ; 2 uses
  %i.ay = fcmp ogt float %i.ax, 0.000000e+00
  %..i = select i1 %i.ay, i64 20, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 %..i ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !43
  %i.bb = fadd float %i.ax, %i.ba
  store float %i.bb, ptr %i.az, align 4, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !43 ; 2 uses
  %i.be = fcmp ogt float %i.bd, 0.000000e+00
  %.sink19.i = select i1 %i.be, i64 24, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 %.sink19.i ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !43
  %i.bh = fadd float %i.bd, %i.bg
  store float %i.bh, ptr %i.bf, align 4, !tbaa !43
  %i.bi = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1) ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !21 ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.h
  %.not19.i = icmp eq i32 %i.bk, 0
  br i1 %.not19.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bm = add nuw nsw i32 %.016.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bm, %i.bk
  br i1 %exitcond.not.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.016.i = phi i32 [ %i.bm, %bb.i ], [ 0, %.preheader.i ]
  %.01015.i = phi ptr [ %i.bo, %bb.i ], [ %i.bi, %.preheader.i ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01015.i, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !47 ; 3 uses
  %.not14.i = icmp eq ptr %i.bo, null
  br i1 %.not14.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %bb.i

bb.j:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit

_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit: ; preds = %bb.i, %.lr.ph.i, %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit, %.preheader.i, %bb.j
  %.1.i = phi ptr [ null, %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit ], [ %i.bp, %bb.j ], [ %i.bi, %.preheader.i ], [ %.01015.i, %.lr.ph.i ], [ %i.bo, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !48
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %.1.i, ptr noundef nonnull %1)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit
  %.0 = phi i1 [ false, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a ], [ true, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !43
  %i.b = load float, ptr %2, align 4, !tbaa !43   ; 2 uses
  %i.c = fcmp ugt float %i.a, %i.b
  br i1 %i.c, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !43
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !43
  %i.m = fcmp ugt float %i.j, %i.l
  br i1 %i.m, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !43
  %i.r = fcmp ult float %i.o, %i.q
  br i1 %i.r, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load float, ptr %i.s, align 4, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !43
  %i.w = fcmp ult float %i.t, %i.v
  br i1 %i.w, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a

_ZNK12btDbvtAabbMm7ContainERKS_.exit.a:           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load float, ptr %i.z, align 4, !tbaa !43
  %i.ab = fcmp ult float %i.y, %i.aa
  br i1 %i.ab, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.k

_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a
  %i.ac = load float, ptr %3, align 4, !tbaa !43  ; 3 uses
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !43
  %i.ag = fadd float %i.ac, %i.af
  store float %i.ag, ptr %i.ae, align 4, !tbaa !43
  br label %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit

bb.g:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
  %i.ah = fadd float %i.b, %i.ac
  store float %i.ah, ptr %2, align 4, !tbaa !43
  br label %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit

_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit: ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !43 ; 2 uses
  %i.ak = fcmp ogt float %i.aj, 0.000000e+00
  %..i = select i1 %i.ak, i64 20, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %..i ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !43
  %i.an = fadd float %i.aj, %i.am
  store float %i.an, ptr %i.al, align 4, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !43 ; 2 uses
  %i.aq = fcmp ogt float %i.ap, 0.000000e+00
  %.sink19.i = select i1 %i.aq, i64 24, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %.sink19.i ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !43
  %i.at = fadd float %i.ap, %i.as
  store float %i.at, ptr %i.ar, align 4, !tbaa !43
  %i.au = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1) ; 3 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %bb.h

bb.h:                                             ; preds = %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !21 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, -1
  br i1 %i.ax, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.h
  %.not19.i = icmp eq i32 %i.aw, 0
  br i1 %.not19.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ay = add nuw nsw i32 %.016.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ay, %i.aw
  br i1 %exitcond.not.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.016.i = phi i32 [ %i.ay, %bb.i ], [ 0, %.preheader.i ]
  %.01015.i = phi ptr [ %i.ba, %bb.i ], [ %i.au, %.preheader.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01015.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47 ; 3 uses
  %.not14.i = icmp eq ptr %i.ba, null
  br i1 %.not14.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %bb.i

bb.j:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit

_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit: ; preds = %bb.i, %.lr.ph.i, %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit, %.preheader.i, %bb.j
  %.1.i = phi ptr [ null, %_ZN12btDbvtAabbMm12SignedExpandERK9btVector3.exit ], [ %i.bb, %bb.j ], [ %i.au, %.preheader.i ], [ %.01015.i, %.lr.ph.i ], [ %i.ba, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !48
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %.1.i, ptr noundef nonnull %1)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit
  %.0 = phi i1 [ false, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a ], [ true, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(32) %2, float noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !43
  %i.b = load float, ptr %2, align 4, !tbaa !43   ; 2 uses
  %i.c = fcmp ugt float %i.a, %i.b
  br i1 %i.c, label %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge, label %bb.b

._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !43
  br label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !43 ; 6 uses
  %i.h = fcmp ugt float %i.e, %i.g
  br i1 %i.h, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !43
  %i.m = fcmp ugt float %i.j, %i.l
  br i1 %i.m, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load float, ptr %i.n, align 4, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !43
  %i.r = fcmp ult float %i.o, %i.q
  br i1 %i.r, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.t = load float, ptr %i.s, align 4, !tbaa !43
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !43
  %i.w = fcmp ult float %i.t, %i.v
  br i1 %i.w, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a

_ZNK12btDbvtAabbMm7ContainERKS_.exit.a:           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load float, ptr %i.z, align 4, !tbaa !43
  %i.ab = fcmp ult float %i.y, %i.aa
  br i1 %i.ab, label %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, label %bb.i

_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread:      ; preds = %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge, %bb.b, %bb.c, %bb.d, %bb.e, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a
  %i.ac = phi float [ %.pre, %._ZNK12btDbvtAabbMm7ContainERKS_.exit.thread_crit_edge ], [ %i.g, %bb.b ], [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a ]
  %i.ad = fsub float %i.b, %3
  store float %i.ad, ptr %2, align 4, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.af = fsub float %i.ac, %3
  store float %i.af, ptr %i.ae, align 4, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !43
  %i.ai = fsub float %i.ah, %3
  store float %i.ai, ptr %i.ag, align 4, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !43
  %i.al = insertelement <2 x float> poison, float %3, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fadd <2 x float> %i.am, %i.ak
  store <2 x float> %i.an, ptr %i.aj, align 4, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !43
  %i.aq = fadd float %3, %i.ap
  store float %i.aq, ptr %i.ao, align 4, !tbaa !43
  %i.ar = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %1) ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !21 ; 3 uses
  %i.au = icmp sgt i32 %i.at, -1
  br i1 %i.au, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.f
  %.not19.i = icmp eq i32 %i.at, 0
  br i1 %.not19.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.av = add nuw nsw i32 %.016.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.av, %i.at
  br i1 %exitcond.not.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %.016.i = phi i32 [ %i.av, %bb.g ], [ 0, %.preheader.i ]
  %.01015.i = phi ptr [ %i.ax, %bb.g ], [ %i.ar, %.preheader.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01015.i, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 3 uses
  %.not14.i = icmp eq ptr %i.ax, null
  br i1 %.not14.i, label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit, label %bb.g

bb.h:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit

_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit: ; preds = %bb.g, %.lr.ph.i, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread, %.preheader.i, %bb.h
  %.1.i = phi ptr [ null, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.thread ], [ %i.ay, %bb.h ], [ %i.ar, %.preheader.i ], [ %.01015.i, %.lr.ph.i ], [ %i.ax, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull readonly align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !48
  tail call fastcc void @_ZL10insertleafP6btDbvtP10btDbvtNodeS2_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %.1.i, ptr noundef nonnull %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit
  %.0 = phi i1 [ false, %_ZNK12btDbvtAabbMm7ContainERKS_.exit.a ], [ true, %_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6btDbvt6removeEP10btDbvtNode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL10removeleafP6btDbvtP10btDbvtNode(ptr noundef %0, ptr noundef %1) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
  store ptr %1, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %i.f = add nsw i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6btDbvt5writeEPNS_7IWriterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.btDbvtNodeEnumerator, align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV20btDbvtNodeEnumerator, i64 16), ptr %2, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  store i8 1, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !22   ; 2 uses
  %i.g = shl nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i: ; preds = %bb.b
  %i.l = load i32, ptr %i.c, align 4, !tbaa !55   ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !54   ; 9 uses
  br i1 %i.m, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = ptrtoaddr ptr %i.k to i64
  %wide.trip.count.i.i = zext nneg i32 %i.l to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 8
  %i.q = sub i64 %i.o, %i.p
  %diff.check = icmp ugt i64 %i.q, -32
  %or.cond70 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond70, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !36
  %wide.load68 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !36
  store <2 x ptr> %wide.load68, ptr %i.u, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.prol
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i.prol
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  store ptr %i.y, ptr %i.w, align 8, !tbaa !36
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !93

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.z = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !36
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !36
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.1
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !36
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next.i.i.2
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !36
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i, label %scalar.ph, !llvm.loop !94

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i
  %.not.i5.i = icmp ne ptr %i.n, null
  %i.an = load i8, ptr %i.a, align 8, !range !26
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond = select i1 %.not.i5.i, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old = load i8, ptr %i.a, align 8, !tbaa !53, !range !26, !noundef !41
  %.old64 = trunc nuw i8 %.old to i1
  br i1 %.old64, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE10deallocateEv.exit.i
end_hunk_1
