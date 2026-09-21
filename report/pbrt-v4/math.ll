Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/math?download=true
inline.NumInlined: 930
inline.NumDeleted: 219
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f:bb.a
bb.n:                                             ; preds = %bb.o, %bb.m
  %.044.i = phi float [ 1.000000e+00, %bb.m ], [ %.145.i, %bb.o ] ; 3 uses
  %.042.i = phi float [ 0.000000e+00, %bb.m ], [ %.143.i, %bb.o ] ; 3 uses
  %.0.i = phi float [ %i.cd, %bb.m ], [ %i.dy, %bb.o ] ; 3 uses
  %i.ce = fcmp olt float %.042.i, %.0.i
  %i.cf = fcmp olt float %.0.i, %.044.i
  %or.cond.i = and i1 %i.ce, %i.cf
  %i.cg = fadd float %.044.i, %.042.i
  %i.ch = fmul float %i.cg, 5.000000e-01
  %.1.i = select i1 %or.cond.i, float %.0.i, float %i.ch ; 11 uses
  %i.ci = fmul float %.1.i, %.1.i                 ; 5 uses
  %i.cj = fmul float %.1.i, %i.ci                 ; 3 uses
  %i.ck = fmul float %i.cj, 2.000000e+00          ; 2 uses
  %i.cl = fmul float %i.ci, 3.000000e+00          ; 4 uses
  %i.cm = fsub float %i.ck, %i.cl
  %i.cn = fadd float %i.cm, 1.000000e+00
  %i.co = fmul float %i.ah, %i.cn
  %i.cp = fsub float %i.cl, %i.ck
  %i.cq = fmul float %i.aj, %i.cp
  %i.cr = fadd float %i.cq, %i.co
  %i.cs = fmul float %i.ci, 2.000000e+00
  %i.ct = fsub float %i.cj, %i.cs
  %i.cu = fadd float %.1.i, %i.ct
  %i.cv = fmul float %i.ax, %i.cu
  %i.cw = fadd float %i.cv, %i.cr
  %i.cx = fsub float %i.cj, %i.ci
  %i.cy = fmul float %i.bj, %i.cx
  %i.cz = fadd float %i.cy, %i.cw
  %i.da = fsub float %i.cz, %4                    ; 3 uses
  %i.db = fcmp uge float %i.da, 0.000000e+00
  %i.dc = xor i1 %i.ca, %i.db                     ; 2 uses
  %.145.i = select i1 %i.dc, float %.044.i, float %.1.i ; 2 uses
  %.143.i = select i1 %i.dc, float %.1.i, float %.042.i ; 2 uses
  %i.dd = fsub float %.145.i, %.143.i
  %i.de = fcmp olt float %i.dd, f0x358637BD
  %i.df = tail call float @llvm.fabs.f32(float %i.da)
  %i.dg = fcmp olt float %i.df, f0x358637BD
  %or.cond55.i = or i1 %i.dg, %i.de
  br i1 %or.cond55.i, label %"_ZN4pbrt15NewtonBisectionIZNS_16InvertCatmullRomEN4pstd4spanIKfEES4_fE3$_1EEfffT_ff.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dh = fmul float %i.ci, 6.000000e+00          ; 2 uses
  %i.di = fmul float %.1.i, 6.000000e+00          ; 2 uses
  %i.dj = fsub float %i.dh, %i.di
  %i.dk = fmul float %i.ah, %i.dj
  %i.dl = fsub float %i.di, %i.dh
  %i.dm = fmul float %i.aj, %i.dl
  %i.dn = fadd float %i.dk, %i.dm
  %i.do = fmul float %.1.i, 4.000000e+00
  %i.dp = fsub float %i.cl, %i.do
  %i.dq = fadd float %i.dp, 1.000000e+00
  %i.dr = fmul float %i.ax, %i.dq
  %i.ds = fadd float %i.dn, %i.dr
  %i.dt = fmul float %.1.i, 2.000000e+00
  %i.du = fsub float %i.cl, %i.dt
  %i.dv = fmul float %i.bj, %i.du
  %i.dw = fadd float %i.dv, %i.ds
  %i.dx = fdiv float %i.da, %i.dw
  %i.dy = fsub float %.1.i, %i.dx
  br label %bb.n, !llvm.loop !67

"_ZN4pbrt15NewtonBisectionIZNS_16InvertCatmullRomEN4pstd4spanIKfEES4_fE3$_1EEfffT_ff.exit": ; preds = %bb.n, %bb.k, %bb.l
  %.241.i = phi float [ 1.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ], [ %.1.i, %bb.n ]
  %i.dz = fmul float %i.ak, %.241.i
  %i.ea = fadd float %i.ac, %i.dz
  br label %bb.p

bb.p:                                             ; preds = %"_ZN4pbrt15NewtonBisectionIZNS_16InvertCatmullRomEN4pstd4spanIKfEES4_fE3$_1EEfffT_ff.exit", %bb.d, %bb.b
  %.0 = phi float [ %i.ea, %"_ZN4pbrt15NewtonBisectionIZNS_16InvertCatmullRomEN4pstd4spanIKfEES4_fE3$_1EEfffT_ff.exit" ], [ %i.j, %bb.d ], [ %i.c, %bb.b ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN4pbrt19IntegrateCatmullRomEN4pstd4spanIKfEES3_NS1_IfEE(ptr nofree readonly captures(none) %0, i64 %1, ptr nofree readonly captures(none) %2, i64 %3, ptr nofree writeonly captures(none) %4, i64 %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %3, ptr %i.b, align 8, !tbaa !13
  %i.c = icmp eq i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt8LogFatalIJRA13_KcRA9_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 269, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(13) @.str.14, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, ptr noundef nonnull align 1 dereferenceable(13) @.str.14, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.15, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  store float 0.000000e+00, ptr %4, align 4, !tbaa !10
  %i.d = add i64 %1, -1                           ; 3 uses
  %.not49 = icmp eq i64 %i.d, 0
  br i1 %.not49, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load float, ptr %0, align 4, !tbaa !10   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !10
  %i.h = load float, ptr %2, align 4, !tbaa !10   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !10 ; 3 uses
  %i.k = fsub float %i.g, %i.e                    ; 2 uses
  %i.l = fsub float %i.j, %i.h
  %i.m = icmp ugt i64 %1, 2
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = fsub float %i.j, %i.h
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = fsub float %i.p, %i.h
  %i.r = fmul float %i.k, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 4, !tbaa !10
  %i.u = fsub float %i.t, %i.e
  %i.v = fdiv float %i.r, %i.u
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = phi float [ %i.v, %bb.f ], [ %i.n, %bb.e ]
  %i.x = fadd float %i.h, %i.j
  %i.y = fmul float %i.x, 5.000000e-01
  %i.z = fsub float %i.l, %i.w
  %i.aa = fdiv float %i.z, 1.200000e+01
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = fmul float %i.k, %i.ab
  %i.ad = fadd float %i.ac, 0.000000e+00          ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !10
  %exitcond.peel.not = icmp eq i64 %i.d, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.lr.ph.peel.next

._crit_edge:                                      ; preds = %bb.j, %bb.g, %bb.c
  %.032.lcssa = phi float [ 0.000000e+00, %bb.c ], [ %i.ad, %bb.g ], [ %i.bp, %bb.j ]
  ret float %.032.lcssa

.lr.ph.peel.next:                                 ; preds = %bb.g, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 1, %bb.g ] ; 5 uses
  %.03247 = phi float [ %i.bp, %bb.j ], [ %i.ad, %bb.g ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !10 ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.am = load float, ptr %i.al, align 4, !tbaa !10 ; 3 uses
  %i.an = fsub float %i.ai, %i.ag                 ; 3 uses
  %i.ao = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !10
  %i.ar = fsub float %i.am, %i.aq
  %i.as = fmul float %i.an, %i.ar
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ao
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = fsub float %i.ai, %i.au
  %i.aw = fdiv float %i.as, %i.av
  %i.ax = add nuw nsw i64 %indvars.iv, 2          ; 3 uses
  %i.ay = icmp ugt i64 %1, %i.ax
  br i1 %i.ay, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.peel.next
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !10
  %i.bb = fsub float %i.ba, %i.ak
  %i.bc = fmul float %i.an, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10
  %i.bf = fsub float %i.be, %i.ag
  %i.bg = fdiv float %i.bc, %i.bf
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.peel.next
  %i.bh = fsub float %i.am, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = phi float [ %i.bg, %bb.h ], [ %i.bh, %bb.i ]
  %i.bj = fadd float %i.ak, %i.am
  %i.bk = fmul float %i.bj, 5.000000e-01
  %i.bl = fsub float %i.aw, %i.bi
  %i.bm = fdiv float %i.bl, 1.200000e+01
  %i.bn = fadd float %i.bk, %i.bm
  %i.bo = fmul float %i.an, %i.bn
  %i.bp = fadd float %.03247, %i.bo               ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.bp, ptr %i.bq, align 4, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.peel.next, !llvm.loop !68
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, float } @_ZN4pbrt23EqualAreaSquareToSphereENS_6Point2IfEE(<2 x float> %0) local_unnamed_addr #8 {
bb.a:
  %1 = shufflevector <2 x float> %0, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %2 = fcmp ole <4 x float> %1, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %3 = fcmp oge <4 x float> %1, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %4 = shufflevector <4 x i1> %2, <4 x i1> %3, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %5 = freeze <4 x i1> %4
  %6 = bitcast <4 x i1> %5 to i4
  %7 = icmp eq i4 %6, -1
  br i1 %7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalIJRA45_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef 293, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(45) @.str.17) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.031.4.vec.extract37 = extractelement <2 x float> %0, i64 1
  %.sroa.031.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = fmul nnan float %.sroa.031.0.vec.extract, 2.000000e+00
  %i.b = fadd float %i.a, -1.000000e+00           ; 2 uses
  %i.c = fmul nnan float %.sroa.031.4.vec.extract37, 2.000000e+00
  %i.d = fadd float %i.c, -1.000000e+00           ; 2 uses
  %i.e = tail call noundef float @llvm.fabs.f32(float %i.b) ; 2 uses
  %i.f = tail call noundef float @llvm.fabs.f32(float %i.d) ; 2 uses
  %i.g = fadd float %i.e, %i.f
  %i.h = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fsub float 1.000000e+00, %i.i            ; 6 uses
  %i.k = fcmp oeq float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fsub float %i.f, %i.e
  %i.m = fdiv float %i.l, %i.j
  %i.n = fadd float %i.m, 1.000000e+00
  %i.o = fmul float %i.n, f0x40490FDB
  %i.p = fmul float %i.o, 2.500000e-01
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.q = phi float [ %i.p, %bb.d ], [ f0x3F490FDB, %bb.c ] ; 2 uses
  %i.r = fmul float %i.j, %i.j                    ; 2 uses
  %i.s = fsub float 1.000000e+00, %i.r
  %i.t = tail call noundef float @llvm.copysign.f32(float %i.s, float %i.h)
  %i.u = tail call noundef float @cosf(float noundef %i.q) #23
  %i.v = tail call noundef float @llvm.copysign.f32(float %i.u, float %i.b)
  %i.w = tail call noundef float @sinf(float noundef %i.q) #23
  %i.x = tail call noundef float @llvm.copysign.f32(float %i.w, float %i.d)
  %i.y = fmul float %i.j, %i.v
  %i.z = fsub float 2.000000e+00, %i.r            ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.aa, float %i.z, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.ab = fmul float %sqrt.i, %i.y
  %i.ac = fmul float %i.j, %i.x
  %i.ad = fmul float %sqrt.i, %i.ac
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.ad, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.t, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA45_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(45) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !17, !alias.scope !72
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !72
  store i8 0, ptr %i.a, align 8, !tbaa !20, !alias.scope !72
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA45_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(45) %4)
          to label %_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !21, !alias.scope !72 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20, !alias.scope !72
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !21
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA45_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !20
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %common.resume
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %0, float %1) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %0) ; 2 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %1)
  %i.c = fsub float 1.000000e+00, %i.b            ; 2 uses
  %i.d = fcmp ogt float %i.c, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.d, float %i.c, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 2 uses
  %i.e = extractelement <2 x float> %i.a, i64 0   ; 4 uses
  %i.f = extractelement <2 x float> %i.a, i64 1   ; 4 uses
  %i.g = fcmp olt float %i.e, %i.f                ; 2 uses
  %.sroa.speculated27 = select i1 %i.g, float %i.f, float %i.e ; 2 uses
  %i.h = fcmp olt float %i.f, %i.e
  %.sroa.speculated = select i1 %i.h, float %i.f, float %i.e
  %i.i = fcmp oeq float %.sroa.speculated27, 0.000000e+00
  %i.j = fdiv float %.sroa.speculated, %.sroa.speculated27
  %i.k = select i1 %i.i, float 0.000000e+00, float %i.j ; 6 uses
  %i.l = tail call noundef float @llvm.fma.f32(float %i.k, float f0xBCCDF082, float f0x3D2BA368)
  %i.m = tail call noundef float @llvm.fma.f32(float %i.k, float %i.l, float f0x3DB4962E)
  %i.n = tail call noundef float @llvm.fma.f32(float %i.k, float %i.m, float f0xBE7D450E)
  %i.o = tail call noundef float @llvm.fma.f32(float %i.k, float %i.n, float f0x3BC9C25A)
  %i.p = tail call noundef float @llvm.fma.f32(float %i.k, float %i.o, float f0x3F22DFBE)
  %i.q = tail call noundef float @llvm.fma.f32(float %i.k, float %i.p, float f0x36887C4B) ; 2 uses
  %i.r = fsub float 1.000000e+00, %i.q
  %spec.select = select i1 %i.g, float %i.r, float %i.q
  %i.s = fmul float %sqrt.i, %spec.select         ; 3 uses
  %i.t = fsub float %sqrt.i, %i.s                 ; 2 uses
  %i.u = fcmp olt float %1, 0.000000e+00          ; 2 uses
  %i.v = fsub float 1.000000e+00, %i.t
  %i.w = fsub float 1.000000e+00, %i.s
  %.032 = select i1 %i.u, float %i.v, float %i.s
  %.0 = select i1 %i.u, float %i.w, float %i.t
  %i.x = insertelement <2 x float> poison, float %.0, i64 0
  %i.y = insertelement <2 x float> %i.x, float %.032, i64 1
  %i.z = tail call <2 x float> @llvm.copysign.v2f32(<2 x float> %i.y, <2 x float> %0)
  %i.aa = fadd <2 x float> %i.z, splat (float 1.000000e+00)
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  ret <2 x float> %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local <2 x float> @_ZN4pbrt19WrapEqualAreaSquareENS_6Point2IfEE(<2 x float> %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.a = fcmp olt float %.sroa.0.0.vec.extract, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fneg float %.sroa.0.0.vec.extract
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.b, i64 0
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.c = fsub float 1.000000e+00, %.sroa.0.4.vec.extract
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.c, i64 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp ogt float %.sroa.0.0.vec.extract, 1.000000e+00
  %i.e = fsub <2 x float> <float 2.000000e+00, float 1.000000e+00>, %0
  %spec.select = select i1 %i.d, <2 x float> %i.e, <2 x float> %0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert, %bb.b ], [ %spec.select, %bb.c ] ; 5 uses
  %.sroa.0.4.vec.extract25 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 2 uses
  %i.f = fcmp olt float %.sroa.0.4.vec.extract25, 0.000000e+00
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.vec.extract12 = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.g = fsub float 1.000000e+00, %.sroa.0.0.vec.extract12
  %i.h = fneg <2 x float> %.sroa.0.0
  %.sroa.0.4.vec.insert29 = insertelement <2 x float> %i.h, float %i.g, i64 0
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = fcmp ogt float %.sroa.0.4.vec.extract25, 1.000000e+00
  %i.j = fsub <2 x float> <float 1.000000e+00, float 2.000000e+00>, %.sroa.0.0
  %spec.select36 = select i1 %i.i, <2 x float> %i.j, <2 x float> %.sroa.0.0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.1 = phi <2 x float> [ %.sroa.0.4.vec.insert29, %bb.e ], [ %spec.select36, %bb.f ]
  ret <2 x float> %.sroa.0.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #10
end_hunk_0
