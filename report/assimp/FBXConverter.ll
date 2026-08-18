inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP11aiVectorKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_:bb.a
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3                 ; 4 uses
  %.not.i.i84.us = icmp ugt i64 %i.bm, %i.ao
  br i1 %.not.i.i84.us, label %bb.j, label %.split121.us

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ao
  %i.bo = load i64, ptr %i.bn, align 8            ; 3 uses
  %.not.i.i87.us = icmp ult i64 %i.ar, %i.bm
  br i1 %.not.i.i87.us, label %bb.k, label %.split125.us

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ar
  %i.bq = load i64, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.bo
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = sub nsw i64 %i.p, %i.bo
  %i.bt = sitofp i64 %i.bs to float
  %i.bu = sub nsw i64 %i.bq, %i.bo
  %i.bv = sitofp i64 %i.bu to float
  %i.bw = fdiv float %i.bt, %i.bv
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bx = phi float [ %i.bw, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.by = fsub float %i.be, %i.bc
  %i.bz = call float @llvm.fmuladd.f32(float %i.by, float %i.bx, float %i.bc)
  %i.ca = load i32, ptr %i.t, align 8
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cb
  store float %i.bz, ptr %i.cc, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c
  %i.cd = add nuw i64 %.067109.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %i.i
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !392

._crit_edge.us:                                   ; preds = %bb.n
  %i.ce = sitofp i64 %i.p to double
  %i.cf = fdiv nnan double %i.ce, f0x422581D1AF600000
  %i.cg = load double, ptr %i.o, align 8
  %i.ch = fmul double %i.cf, %i.cg                ; 3 uses
  store double %i.ch, ptr %.0112.us, align 8
  %i.ci = load double, ptr %6, align 8            ; 2 uses
  %i.cj = fcmp olt double %i.ch, %i.ci
  %i.ck = select i1 %i.cj, double %i.ch, double %i.ci
  store double %i.ck, ptr %6, align 8
  %i.cl = load double, ptr %5, align 8            ; 2 uses
  %i.cm = load double, ptr %.0112.us, align 8     ; 2 uses
  %i.cn = fcmp olt double %i.cl, %i.cm
  %i.co = select i1 %i.cn, double %i.cm, double %i.cl
  store double %i.co, ptr %5, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0112.us, i64 8
  %i.cq = load <2 x float>, ptr %i.b, align 8
  store <2 x float> %i.cq, ptr %i.cp, align 8
  %i.cr = load float, ptr %i.m, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.0112.us, i64 16
  store float %i.cr, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0112.us, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.092.0111.us, i64 8 ; 2 uses
  %.not95.us = icmp eq ptr %i.cu, %i.l
  br i1 %.not95.us, label %._crit_edge114, label %.lr.ph.us

._crit_edge114:                                   ; preds = %._crit_edge.us, %.lr.ph113.split, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.cv = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge114
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge114, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.p:                                             ; preds = %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.v

.lr.ph113.split:                                  ; preds = %.lr.ph113, %.lr.ph113.split
  %.0112 = phi ptr [ %i.ds, %.lr.ph113.split ], [ %1, %.lr.ph113 ] ; 5 uses
  %.sroa.092.0111 = phi ptr [ %i.dt, %.lr.ph113.split ], [ %i.j, %.lr.ph113 ] ; 2 uses
  %i.dc = load i64, ptr %.sroa.092.0111, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.dd = load float, ptr %i.n, align 4
  %i.de = sitofp i64 %i.dc to double
  %i.df = fdiv nnan double %i.de, f0x422581D1AF600000
  %i.dg = load double, ptr %i.o, align 8
  %i.dh = fmul double %i.df, %i.dg                ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0112, i64 8
  %i.dj = load <2 x float>, ptr %4, align 4
  store double %i.dh, ptr %.0112, align 8
  %i.dk = load double, ptr %6, align 8            ; 2 uses
  %i.dl = fcmp olt double %i.dh, %i.dk
  %i.dm = select i1 %i.dl, double %i.dh, double %i.dk
  store double %i.dm, ptr %6, align 8
  %i.dn = load double, ptr %5, align 8            ; 2 uses
  %i.do = load double, ptr %.0112, align 8        ; 2 uses
  %i.dp = fcmp olt double %i.dn, %i.do
  %i.dq = select i1 %i.dp, double %i.do, double %i.dn
  store double %i.dq, ptr %5, align 8
  store <2 x float> %i.dj, ptr %i.di, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0112, i64 16
  store float %i.dd, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0112, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.092.0111, i64 8 ; 2 uses
  %.not95 = icmp eq ptr %i.dt, %i.l
  br i1 %.not95, label %._crit_edge114, label %.lr.ph113.split

.split.us:                                        ; preds = %bb.g
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ao, i64 noundef %i.ba) #31
          to label %.noexc80 unwind label %bb.q

.noexc80:                                         ; preds = %.split.us
  unreachable

.split117.us:                                     ; preds = %bb.h
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ar, i64 noundef %i.ba) #31
          to label %.noexc82 unwind label %bb.r

.noexc82:                                         ; preds = %.split117.us
  unreachable

.split121.us:                                     ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ao, i64 noundef %i.bm) #31
          to label %.noexc85 unwind label %bb.s

.noexc85:                                         ; preds = %.split121.us
  unreachable

.split125.us:                                     ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.229, i64 noundef %i.ar, i64 noundef %i.bm) #31
          to label %.noexc88 unwind label %bb.t

.noexc88:                                         ; preds = %.split125.us
  unreachable

bb.q:                                             ; preds = %.split.us
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %.split117.us
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.s:                                             ; preds = %.split121.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %.split125.us
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.s, %bb.t, %bb.r
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dw, %bb.s ], [ %i.du, %bb.q ], [ %i.dv, %bb.r ], [ %i.dx, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.u ], [ %i.db, %bb.p ]
  %i.dy = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorIjSaIjEED2Ev.exit91, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit91

_ZNSt6vectorIjSaIjEED2Ev.exit91:                  ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP9aiQuatKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_NS0_5Model8RotOrderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.aiMatrix4x4t, align 4        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.g, i64 24) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #30 ; 6 uses
  %i.m = icmp eq ptr %i.b, %i.c
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds [24 x i8], ptr %i.l, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 20, i1 false)
  store i32 1, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.n
  br i1 %i.r, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %bb.a
  invoke void @_ZN6Assimp3FBX12FBXConverter15InterpolateKeysEP11aiVectorKeyRKSt6vectorIlSaIlEERKS4_ISt5tupleIJSt10shared_ptrIS6_ESA_IS4_IfSaIfEEEjEESaISF_EERK10aiVector3tIfERdSO_(ptr noundef nonnull align 8 dereferenceable(529) %0, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store float 1.000000e+00, ptr %8, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.x, align 4
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.y, %i.z
  br i1 %.not, label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 36
  br label %bb.f

_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  ret void

bb.e:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25

bb.f:                                             ; preds = %.lr.ph, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit
  %.01967 = phi i64 [ 0, %.lr.ph ], [ %i.dm, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ] ; 3 uses
  %.sroa.12.066 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dq, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %.sroa.957.065 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dp, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %.sroa.6.064 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.do, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %.sroa.056.063 = phi float [ 1.000000e+00, %.lr.ph ], [ %i.dn, %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit ]
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.01967 ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.01967 ; 2 uses
  store double %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  invoke void @_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE(ptr nonnull align 8 poison, i32 noundef %7, ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(64) %8)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.al = load float, ptr %8, align 4             ; 6 uses
  %i.am = load float, ptr %9, align 4             ; 4 uses
  %i.an = load float, ptr %i.t, align 4           ; 6 uses
  %i.ao = load float, ptr %i.u, align 4           ; 4 uses
  %i.ap = load <2 x float>, ptr %i.s, align 4     ; 7 uses
  %10 = load float, ptr %i.af, align 4            ; 4 uses
  %11 = load float, ptr %i.ae, align 4            ; 4 uses
  %i.aq = load float, ptr %i.v, align 4           ; 6 uses
  %i.ar = fadd float %i.al, %i.an
  %i.as = fadd float %i.ar, %i.aq                 ; 2 uses
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = fadd float %i.as, 1.000000e+00
  %i.av = tail call noundef float @sqrtf(float noundef %i.au) #27
  %i.aw = extractelement <2 x float> %i.ap, i64 0
  %i.ax = fsub float %i.am, %i.aw
  %i.ay = extractelement <2 x float> %i.ap, i64 1
  %12 = fsub float %i.ay, %11
  %i.az = fsub float %10, %i.ao
  %i.ba = fmul float %i.av, 2.000000e+00
  %i.bb = insertelement <4 x float> poison, float %i.ba, i64 0 ; 2 uses
  %i.bc = insertelement <4 x float> %i.bb, float %i.az, i64 1
  %i.bd = insertelement <4 x float> %i.bc, float %12, i64 2
  %i.be = insertelement <4 x float> %i.bd, float %i.ax, i64 3 ; 2 uses
  %i.bf = shufflevector <4 x float> %i.bb, <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %i.bg = fmul <4 x float> %i.be, %i.bf
  %i.bh = fdiv <4 x float> %i.be, %i.bf
  %i.bi = shufflevector <4 x float> %i.bg, <4 x float> %i.bh, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = fcmp ogt float %i.al, %i.an
  %i.bk = fcmp ogt float %i.al, %i.aq
  %or.cond.i = and i1 %i.bj, %i.bk
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = fadd float %i.al, 1.000000e+00
  %i.bm = fsub float %i.bl, %i.an
  %i.bn = fsub float %i.bm, %i.aq
  %i.bo = tail call noundef float @sqrtf(float noundef %i.bn) #27
  %.scalar = fmul float %i.bo, 2.000000e+00
  %i.bp = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.br = insertelement <2 x float> poison, float %i.am, i64 0
  %13 = insertelement <2 x float> %i.br, float %11, i64 1
  %14 = fadd <2 x float> %i.ap, %13
  %i.bs = fsub float %10, %i.ao
  %i.bt = insertelement <4 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> %i.bq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bv = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bu, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.bx = fdiv <4 x float> %i.bw, %i.bq
  %i.by = fmul <4 x float> %i.bw, %i.bq
  %i.bz = shufflevector <4 x float> %i.bx, <4 x float> %i.by, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.k:                                             ; preds = %bb.i
  %i.ca = fcmp ogt float %i.an, %i.aq
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cb = fadd float %i.an, 1.000000e+00
  %i.cc = fsub float %i.cb, %i.al
  %i.cd = fsub float %i.cc, %i.aq
  %i.ce = tail call noundef float @sqrtf(float noundef %i.cd) #27
  %i.cf = fmul float %i.ce, 2.000000e+00
  %15 = insertelement <2 x float> %i.ap, float %i.ao, i64 1
  %16 = insertelement <2 x float> poison, float %i.am, i64 0
  %17 = insertelement <2 x float> %16, float %10, i64 1
  %18 = fadd <2 x float> %15, %17
  %19 = extractelement <2 x float> %i.ap, i64 1
  %20 = fsub float %19, %11
  %i.cg = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %20, i64 0
  %21 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %22 = shufflevector <4 x float> %i.cg, <4 x float> %21, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.ch = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cj = fdiv <4 x float> %22, %i.ci
  %i.ck = fmul <4 x float> %22, %i.ci
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.m:                                             ; preds = %bb.k
  %i.cm = fadd float %i.aq, 1.000000e+00
  %i.cn = fsub float %i.cm, %i.al
  %i.co = fsub float %i.cn, %i.an
  %i.cp = tail call noundef float @sqrtf(float noundef %i.co) #27
  %i.cq = fmul float %i.cp, 2.000000e+00
  %23 = extractelement <2 x float> %i.ap, i64 1
  %24 = fadd float %23, %11
  %25 = fadd float %i.ao, %10
  %i.cr = extractelement <2 x float> %i.ap, i64 0
  %i.cs = fsub float %i.am, %i.cr
  %i.ct = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.cs, i64 0
  %26 = insertelement <4 x float> %i.ct, float %24, i64 1
  %27 = insertelement <4 x float> %26, float %25, i64 2 ; 2 uses
  %i.cu = insertelement <4 x float> poison, float %i.cq, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cw = fdiv <4 x float> %27, %i.cv
  %i.cx = fmul <4 x float> %27, %i.cv
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %i.cz = phi <4 x float> [ %i.bi, %bb.h ], [ %i.bz, %bb.j ], [ %i.cl, %bb.l ], [ %i.cy, %bb.m ] ; 6 uses
  %i.da = extractelement <4 x float> %i.cz, i64 2
  %i.db = fmul float %.sroa.957.065, %i.da
  %i.dc = extractelement <4 x float> %i.cz, i64 1
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %.sroa.6.064, float %i.db)
  %i.de = extractelement <4 x float> %i.cz, i64 3
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %.sroa.12.066, float %i.dd)
  %i.dg = extractelement <4 x float> %i.cz, i64 0
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %.sroa.056.063, float %i.df)
  %i.di = fcmp olt float %i.dh, 0.000000e+00
  %i.dj = fneg <4 x float> %i.cz
  %i.dk = select i1 %i.di, <4 x float> %i.dj, <4 x float> %i.cz ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store <4 x float> %i.dk, ptr %i.dl, align 8
  %i.dm = add nuw i64 %.01967, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, %i.ad
  %i.dn = extractelement <4 x float> %i.dk, i64 0
  %i.do = extractelement <4 x float> %i.dk, i64 1
  %i.dp = extractelement <4 x float> %i.dk, i64 2
  %i.dq = extractelement <4 x float> %i.dk, i64 3
  br i1 %exitcond.not, label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit, label %bb.f, !llvm.loop !393

bb.n:                                             ; preds = %bb.f
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25

_ZNSt10unique_ptrIA_11aiVectorKeySt14default_deleteIS1_EED2Ev.exit25: ; preds = %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %i.ag, %bb.e ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden { <2 x float>, <2 x float> } @_ZN6Assimp3FBX12FBXConverter17EulerToQuaternionERK10aiVector3tIfENS0_5Model8RotOrderE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(529) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix4x4t, align 4        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE(ptr nonnull align 8 poison, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(64) %3)
  %i.e = load float, ptr %3, align 4              ; 6 uses
  %i.f = load <2 x float>, ptr %i.a, align 4      ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load float, ptr %i.g, align 4            ; 4 uses
  %i.i = load float, ptr %i.b, align 4            ; 6 uses
  %i.j = load float, ptr %i.c, align 4            ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.m = load float, ptr %i.k, align 4            ; 4 uses
  %i.n = load float, ptr %i.l, align 4            ; 4 uses
  %i.o = load float, ptr %i.d, align 4            ; 6 uses
  %i.p = fadd float %i.e, %i.i
  %i.q = fadd float %i.p, %i.o                    ; 2 uses
  %i.r = fcmp ogt float %i.q, 0.000000e+00
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fadd float %i.q, 1.000000e+00
  %i.t = tail call noundef float @sqrtf(float noundef %i.s) #27
  %i.u = fmul float %i.t, 2.000000e+00            ; 3 uses
  %i.v = fsub float %i.n, %i.j
  %i.w = fdiv float %i.v, %i.u
  %.sroa.020.4.vec.insert27 = insertelement <2 x float> <float undef, float poison>, float %i.w, i64 1
  %i.x = extractelement <2 x float> %i.f, i64 1
  %i.y = fsub float %i.x, %i.m
  %i.z = extractelement <2 x float> %i.f, i64 0
  %i.aa = fsub float %i.h, %i.z
  %i.ab = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fdiv <2 x float> %i.ac, %i.ae
  %i.ag = fmul float %i.u, 2.500000e-01
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.c:                                             ; preds = %bb.a
  %i.ah = fcmp ogt float %i.e, %i.i
  %i.ai = fcmp ogt float %i.e, %i.o
  %or.cond.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = fadd float %i.e, 1.000000e+00
  %i.ak = fsub float %i.aj, %i.i
  %i.al = fsub float %i.ak, %i.o
  %i.am = tail call noundef float @sqrtf(float noundef %i.al) #27
  %i.an = fmul float %i.am, 2.000000e+00          ; 3 uses
  %i.ao = fmul float %i.an, 2.500000e-01
  %.sroa.020.4.vec.insert25 = insertelement <2 x float> <float undef, float poison>, float %i.ao, i64 1
  %i.ap = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aq = insertelement <2 x float> %i.ap, float %i.m, i64 1
  %i.ar = fadd <2 x float> %i.f, %i.aq
  %i.as = insertelement <2 x float> poison, float %i.an, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.ar, %i.at
  %i.av = fsub float %i.n, %i.j
  %i.aw = fdiv float %i.av, %i.an
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.ax = fcmp ogt float %i.i, %i.o
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = fadd float %i.i, 1.000000e+00
  %i.az = fsub float %i.ay, %i.e
  %i.ba = fsub float %i.az, %i.o
  %i.bb = tail call noundef float @sqrtf(float noundef %i.ba) #27
  %i.bc = fmul float %i.bb, 2.000000e+00          ; 3 uses
  %i.bd = extractelement <2 x float> %i.f, i64 0
  %i.be = fadd float %i.bd, %i.h
  %i.bf = fdiv float %i.be, %i.bc
  %.sroa.020.4.vec.insert23 = insertelement <2 x float> <float undef, float poison>, float %i.bf, i64 1
  %i.bg = fmul float %i.bc, 2.500000e-01
  %i.bh = extractelement <2 x float> %i.f, i64 1
  %i.bi = fsub float %i.bh, %i.m
  %i.bj = fadd float %i.j, %i.n
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = insertelement <2 x float> %i.bo, float %i.bg, i64 0
  %i.bq = extractelement <2 x float> %i.bo, i64 0
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.br = fadd float %i.o, 1.000000e+00
  %i.bs = fsub float %i.br, %i.e
  %i.bt = fsub float %i.bs, %i.i
  %i.bu = tail call noundef float @sqrtf(float noundef %i.bt) #27
  %i.bv = fmul float %i.bu, 2.000000e+00          ; 3 uses
  %i.bw = extractelement <2 x float> %i.f, i64 1
  %i.bx = fadd float %i.bw, %i.m
  %i.by = fdiv float %i.bx, %i.bv
  %.sroa.020.4.vec.insert = insertelement <2 x float> <float undef, float poison>, float %i.by, i64 1
  %i.bz = fmul float %i.bv, 2.500000e-01
  %i.ca = extractelement <2 x float> %i.f, i64 0
  %i.cb = fsub float %i.h, %i.ca
  %i.cc = fadd float %i.j, %i.n
  %i.cd = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.cb, i64 1
  %i.cf = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fdiv <2 x float> %i.ce, %i.cg           ; 2 uses
  %.sroa.6.12.vec.insert = insertelement <2 x float> %i.ch, float %i.bz, i64 1
  %i.ci = extractelement <2 x float> %i.ch, i64 1
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.sroa.020.0 = phi <2 x float> [ %.sroa.020.4.vec.insert27, %bb.b ], [ %.sroa.020.4.vec.insert25, %bb.d ], [ %.sroa.020.4.vec.insert23, %bb.f ], [ %.sroa.020.4.vec.insert, %bb.g ]
  %.sroa.6.0 = phi <2 x float> [ %i.af, %bb.b ], [ %i.au, %bb.d ], [ %i.bp, %bb.f ], [ %.sroa.6.12.vec.insert, %bb.g ]
  %.sink.i = phi float [ %i.ag, %bb.b ], [ %i.aw, %bb.d ], [ %i.bq, %bb.f ], [ %i.ci, %bb.g ]
  %.sroa.020.0.vec.insert = insertelement <2 x float> %.sroa.020.0, float %.sink.i, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.020.0.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <4 x float>, ptr %i.n, align 4
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison> ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load float, ptr %i.q, align 4            ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load float, ptr %i.s, align 4            ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load float, ptr %i.k, align 4            ; 4 uses
  %i.w = load float, ptr %0, align 4              ; 3 uses
  %i.x = load float, ptr %i.l, align 4            ; 4 uses
  %i.y = load float, ptr %i.c, align 4            ; 2 uses
  %i.z = load float, ptr %i.m, align 4            ; 4 uses
end_hunk_0
