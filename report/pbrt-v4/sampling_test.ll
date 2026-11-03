Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/sampling_test?download=true
inline.NumInlined: 5175
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN39PiecewiseConstant2D_InverseUniform_Test8TestBodyEv:bb.a
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !50
  %i.jy = shl i64 %i.jx, 2
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !51 ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !41
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  invoke void %i.kc(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef nonnull %i.ju, i64 noundef %i.jy, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i unwind label %bb.go, !inline_history !2

bb.go:                                            ; preds = %bb.gn
  %i.kd = landingpad { ptr, i32 }
          catch ptr null
  %i.ke = extractvalue { ptr, i32 } %i.kd, 0
  call void @__clang_call_terminate(ptr %i.ke) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i: ; preds = %bb.gn, %_ZN7testing15AssertionResultD2Ev.exit235
  %i.kf = getelementptr inbounds nuw i8, ptr %22, i64 72
  store i64 0, ptr %i.kf, align 8, !tbaa !48
  %i.kg = getelementptr inbounds nuw i8, ptr %22, i64 56
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !50
  %i.kk = shl i64 %i.kj, 2
  %i.kl = load ptr, ptr %i.jr, align 8, !tbaa !51 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !41
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8
  invoke void %i.ko(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull %i.kh, i64 noundef %i.kk, i64 noundef 4)
          to label %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit unwind label %bb.gq, !inline_history !2

bb.gq:                                            ; preds = %bb.gp
  %i.kp = landingpad { ptr, i32 }
          catch ptr null
  %i.kq = extractvalue { ptr, i32 } %i.kp, 0
  call void @__clang_call_terminate(ptr %i.kq) #31
  unreachable

_ZN4pbrt19PiecewiseConstant2DD2Ev.exit:           ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i, %bb.gp
  %i.kr = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.kr) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.kt, align 8, !tbaa !48
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i.i.i236 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i.i.i236, label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i237, label %bb.gr

bb.gr:                                            ; preds = %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.kx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !50
  %i.kz = shl i64 %i.ky, 2
  %i.la = load ptr, ptr %i.kw, align 8, !tbaa !51 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !41
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8
  invoke void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %i.la, ptr noundef nonnull %i.kv, i64 noundef %i.kz, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i237 unwind label %bb.gs, !inline_history !2

bb.gs:                                            ; preds = %bb.gr
  %i.le = landingpad { ptr, i32 }
          catch ptr null
  %i.lf = extractvalue { ptr, i32 } %i.le, 0
  call void @__clang_call_terminate(ptr %i.lf) #31
  unreachable

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i237: ; preds = %bb.gr, %_ZN4pbrt19PiecewiseConstant2DD2Ev.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.lg, align 8, !tbaa !48
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !49 ; 2 uses
  %.not.i.i.i.i1.i.i238 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i1.i.i238, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.gt

bb.gt:                                            ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i237
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !50
  %i.ll = shl i64 %i.lk, 2
  %i.lm = load ptr, ptr %i.ks, align 8, !tbaa !51 ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !41
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8
  invoke void %i.lp(ptr noundef nonnull align 8 dereferenceable(8) %i.lm, ptr noundef nonnull %i.li, i64 noundef %i.ll, i64 noundef 4)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.gu, !inline_history !2

bb.gu:                                            ; preds = %bb.gt
  %i.lq = landingpad { ptr, i32 }
          catch ptr null
  %i.lr = extractvalue { ptr, i32 } %i.lq, 0
  call void @__clang_call_terminate(ptr %i.lr) #31
  unreachable

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEED2Ev.exit.i.i237, %bb.gt
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ls) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #32
  ret void

bb.gv:                                            ; preds = %bb.gh, %bb.ft
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %bb.gh ], [ %i.io, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #30
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.fs, %bb.eu, %bb.dw
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %bb.gv ], [ %.pn99.pn.pn, %bb.fs ], [ %.pn92.pn.pn, %bb.eu ], [ %.pn85.pn.pn, %bb.dw ]
  call void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %22) #30
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.cy
  %.pn106.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn, %bb.gw ], [ %i.ep, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.cx, %bb.by, %bb.ba, %bb.ac
  %.pn106.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn57.pn.pn, %bb.ac ], [ %.pn78.pn.pn, %bb.cx ], [ %.pn71.pn.pn, %bb.by ], [ %.pn64.pn.pn, %bb.ba ], [ %.pn106.pn.pn.pn.pn, %bb.gx ]
  call void @_ZN4pbrt19PiecewiseConstant2DD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %1) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit244

_ZNSt6vectorIfSaIfEED2Ev.exit244:                 ; preds = %bb.gy, %bb.e
  %.pn106.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn.pn.pn.pn.pn, %bb.gy ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #32
  resume { ptr, i32 } %.pn106.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt19PiecewiseConstant2D6InvertENS_6Point2IfEE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.32") align 4 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, <2 x float> %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.025.4.vec.extract = extractelement <2 x float> %2, i64 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load float, ptr %i.a, align 8, !tbaa !55, !noalias !250 ; 3 uses
  %i.c = fcmp olt float %.sroa.025.4.vec.extract, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.e = load float, ptr %i.d, align 4, !tbaa !56, !noalias !250 ; 2 uses
  %i.f = fcmp ogt float %.sroa.025.4.vec.extract, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false)
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.g = fsub float %.sroa.025.4.vec.extract, %i.b
  %i.h = fsub float %i.e, %i.b
  %i.i = fdiv float %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48, !noalias !250 ; 2 uses
  %i.l = uitofp i64 %i.k to float
  %i.m = fmul float %i.i, %i.l                    ; 2 uses
  %i.n = fptosi float %i.m to i32                 ; 2 uses
  %i.o = add i64 %i.k, -1
  %i.p = icmp slt i32 %i.n, 0
  %i.q = sext i32 %i.n to i64
  %spec.select11.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.q)
  %spec.select.i.i = trunc i64 %spec.select11.i.i to i32
  %.0.i.i = select i1 %i.p, i32 0, i32 %spec.select.i.i ; 2 uses
  %i.r = sitofp i32 %.0.i.i to float
  %i.s = fsub float %i.m, %i.r                    ; 2 uses
  %i.t = sext i32 %.0.i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !49, !noalias !250
  %i.w = getelementptr [4 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !22, !noalias !250
  %i.y = getelementptr i8, ptr %i.w, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !22, !noalias !250
  %i.aa = fsub float 1.000000e+00, %i.s
  %i.ab = fmul float %i.x, %i.aa
  %i.ac = fmul float %i.z, %i.s
  %i.ad = fadd float %i.ac, %i.ab
  %.in.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load float, ptr %.in.i, align 4, !tbaa !22 ; 2 uses
  %i.af = fsub float %.sroa.025.4.vec.extract, %i.ae
  %.in.i10 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load float, ptr %.in.i10, align 4, !tbaa !22
  %i.ah = fsub float %i.ag, %i.ae
  %i.ai = fdiv float %i.af, %i.ah                 ; 3 uses
  %i.aj = fcmp olt float %i.ai, 0.000000e+00
  %i.ak = fcmp ogt float %i.ai, 1.000000e+00
  %or.cond = or i1 %i.aj, %i.ak
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false)
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !81 ; 2 uses
  %i.an = uitofp i64 %i.am to float
  %i.ao = fmul float %i.ai, %i.an                 ; 3 uses
  %i.ap = add i64 %i.am, -1
  %3 = fcmp olt float %i.ao, 0.000000e+00
  %i.aq = uitofp i64 %i.ap to float               ; 2 uses
  %i.ar = fcmp ogt float %i.ao, %i.aq
  %..i = select i1 %i.ar, float %i.aq, float %i.ao
  %.0.i = select i1 %3, float 0.000000e+00, float %..i
  %i.as = fptosi float %.0.i to i32
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw [80 x i8], ptr %i.av, i64 %i.at ; 4 uses
  %.sroa.025.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !55, !noalias !251 ; 3 uses
  %i.az = fcmp olt float %.sroa.025.0.vec.extract, %i.ay
  br i1 %i.az, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !56, !noalias !251 ; 2 uses
  %i.bc = fcmp ogt float %.sroa.025.0.vec.extract, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, i8 0, i64 12, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bd = fsub float %.sroa.025.0.vec.extract, %i.ay
  %i.be = fsub float %i.bb, %i.ay
  %i.bf = fdiv float %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !48, !noalias !251 ; 2 uses
  %i.bi = uitofp i64 %i.bh to float
  %i.bj = fmul float %i.bf, %i.bi                 ; 2 uses
  %i.bk = fptosi float %i.bj to i32               ; 2 uses
  %i.bl = add i64 %i.bh, -1
  %i.bm = icmp slt i32 %i.bk, 0
  %i.bn = sext i32 %i.bk to i64
  %spec.select11.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bn)
  %spec.select.i.i13 = trunc i64 %spec.select11.i.i12 to i32
  %.0.i.i14 = select i1 %i.bm, i32 0, i32 %spec.select.i.i13 ; 2 uses
  %i.bo = sitofp i32 %.0.i.i14 to float
  %i.bp = fsub float %i.bj, %i.bo                 ; 2 uses
  %i.bq = sext i32 %.0.i.i14 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49, !noalias !251
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %i.bq ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !22, !noalias !251
  %i.bv = getelementptr i8, ptr %i.bt, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !22, !noalias !251
  %i.bx = fsub float 1.000000e+00, %i.bp
  %i.by = fmul float %i.bu, %i.bx
  %i.bz = fmul float %i.bw, %i.bp
  %i.ca = fadd float %i.bz, %i.by
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cb, align 4, !tbaa !77
  store float %i.ca, ptr %0, align 4
  %.sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ad, ptr %.sroa_idx18, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt19PiecewiseConstant2DC2EN4pstd4spanIKfEEiiNS_7Bounds2IfEENS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr %1, i64 %2, i32 noundef %3, i32 noundef %4, <2 x float> %5, <2 x float> %6, ptr %7) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.pstd::vector", align 8      ; 9 uses
  %9 = alloca %"class.pbrt::PiecewiseConstant1D", align 8 ; 19 uses
  store <2 x float> %5, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %6, ptr %.sroa.4.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = ptrtoint ptr %7 to i64                   ; 3 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i64 %i.d, ptr %i.f, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 %i.d, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %2, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.k = sext i32 %3 to i64                       ; 3 uses
  %i.l = sext i32 %4 to i64                       ; 5 uses
  %i.m = mul nsw i64 %i.l, %i.k                   ; 2 uses
  store i64 %i.m, ptr %i.b, align 8, !tbaa !61
  %i.n = icmp eq i64 %2, %i.m
  br i1 %i.n, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4pbrt8LogFatalIJRA12_KcRA24_S1_S3_RmS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.361, i32 noundef 740, ptr noundef nonnull @.str.378, ptr noundef nonnull align 1 dereferenceable(12) @.str.379, ptr noundef nonnull align 1 dereferenceable(24) @.str.380, ptr noundef nonnull align 1 dereferenceable(12) @.str.379, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(24) @.str.380, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %.loopexit.split-lp73

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.l)
          to label %.preheader unwind label %.loopexit.split-lp73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.e
  %i.p = icmp sgt i32 %4, 0                       ; 2 uses
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.068.0.vec.extract = extractelement <2 x float> %5, i64 0
  %.sroa.4.8.vec.extract = extractelement <2 x float> %6, i64 0
  %wide.trip.count = zext nneg i32 %4 to i64
  %.pre = load i64, ptr %i.r, align 8, !tbaa !81
  br label %bb.g

._crit_edge:                                      ; preds = %bb.j, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.s = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #30 ; 7 uses
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %8, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %.not.i.not = icmp eq i32 %4, 0
  br i1 %.not.i.not, label %._crit_edge80, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.w = shl nsw i64 %i.l, 2
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef ptr %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef %i.w, i64 noundef 4)
          to label %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !252 ; 3 uses

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit: ; preds = %bb.f
  store i64 %i.l, ptr %i.v, align 8, !tbaa !50
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !49
  br i1 %i.p, label %.lr.ph79, label %._crit_edge80

.lr.ph79:                                         ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %wide.trip.count88 = zext nneg i32 %4 to i64
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %i.ac = phi i64 [ %.pre, %.lr.ph ], [ %i.ao, %bb.j ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ad = mul nsw i64 %indvars.iv, %i.k           ; 2 uses
  %i.ae = sub i64 %2, %i.ad
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.ae)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ad
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !83
  %i.ah = icmp eq i64 %i.ag, %i.ac
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ac, 0
  %i.aj = shl i64 %i.ac, 1
  %spec.select.i31 = select i1 %i.ai, i64 4, i64 %i.aj
  invoke void @_ZN4pstd6vectorIN4pbrt19PiecewiseConstant1DENS_3pmr21polymorphic_allocatorIS2_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %spec.select.i31)
          to label %.noexc33 unwind label %.loopexit.split-lp73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc33:                                         ; preds = %bb.h
  %.pre.i32 = load i64, ptr %i.r, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %.noexc33, %bb.g
  %i.ak = phi i64 [ %.pre.i32, %.noexc33 ], [ %i.ac, %bb.g ]
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.al, i64 %i.ak
  invoke void @_ZN4pbrt19PiecewiseConstant1DC2EN4pstd4spanIKfEEffNS1_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(76) %i.am, ptr %i.af, i64 %spec.select.i, float noundef %.sroa.068.0.vec.extract, float noundef %.sroa.4.8.vec.extract, ptr %7)
          to label %bb.j unwind label %.loopexit.split-lp73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.an = load i64, ptr %i.r, align 8, !tbaa !81
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.r, align 8, !tbaa !81
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !253

.loopexit.split-lp73.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %bb.h, %bb.e
  %lpad.loopexit.split-lp200 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp73

._crit_edge80:                                    ; preds = %bb.o, %._crit_edge, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit
end_hunk_0
