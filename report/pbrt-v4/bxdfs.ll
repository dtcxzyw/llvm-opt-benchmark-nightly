Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZN4pbrt8LogFatalIJRA18_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_:bb.a
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA18_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA27_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(27) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !36, !alias.scope !319
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !39, !alias.scope !319
  store i8 0, ptr %i.a, align 8, !tbaa !21, !alias.scope !319
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA27_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %5, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(27) %4)
          to label %_ZN4pbrt12StringPrintfIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %5, align 8, !tbaa !40, !alias.scope !319 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21, !alias.scope !319
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !40
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #32
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(76) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.064.0.vec.extract = extractelement <2 x float> %1, i64 0 ; 8 uses
  %.sroa.064.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.a = tail call noundef float @atan2f(float noundef %2, float noundef %.sroa.064.4.vec.extract) #31
  %i.b = load float, ptr %0, align 4, !tbaa !84   ; 5 uses
  %i.c = fcmp olt float %i.b, -1.000000e+00
  %i.d = fcmp ogt float %i.b, 1.000000e+00
  %..i.i = select i1 %i.d, float 1.000000e+00, float %i.b
  %.0.i.i = select i1 %i.c, float -1.000000e+00, float %..i.i
  %i.e = tail call noundef float @asinf(float noundef %.0.i.i) #31
  %.sroa.059.0.vec.extract = extractelement <2 x float> %3, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %3, %3
  %i.f = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.g = fsub float 1.000000e+00, %i.f            ; 2 uses
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  %.sroa.speculated.i67 = select i1 %i.h, float %i.g, float 0.000000e+00
  %sqrt.i68 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i67) ; 4 uses
  %.sroa.059.4.vec.extract = extractelement <2 x float> %3, i64 1
  %i.i = tail call noundef float @atan2f(float noundef %4, float noundef %.sroa.059.4.vec.extract) #31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !85 ; 5 uses
  %i.l = fdiv float %.sroa.064.0.vec.extract, %i.k ; 2 uses
  %i.m = fmul float %i.l, %i.l
  %i.n = fsub float 1.000000e+00, %i.m            ; 2 uses
  %i.o = fcmp ogt float %i.n, 0.000000e+00
  %.sroa.speculated.i69 = select i1 %i.o, float %i.n, float 0.000000e+00
  %sqrt.i70 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i69)
  %i.p = fmul float %i.k, %i.k                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = fsub float %i.i, %i.a                    ; 3 uses
  %i.s = insertelement <2 x float> %1, float %i.b, i64 1 ; 2 uses
  %i.t = fmul <2 x float> %i.s, %i.s              ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fsub float %i.p, %i.u                    ; 2 uses
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  %.sroa.speculated.i71 = select i1 %i.w, float %i.v, float 0.000000e+00
  %sqrt.i72 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i71)
  %i.x = fsub <2 x float> splat (float 1.000000e+00), %i.t ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.z) ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 8 uses
  %i.ac = fdiv float %sqrt.i72, %i.ab
  %i.ad = fdiv float %i.b, %i.ac                  ; 5 uses
  %i.ae = fmul float %i.ad, %i.ad
  %i.af = fsub float 1.000000e+00, %i.ae          ; 2 uses
  %i.ag = fcmp ogt float %i.af, 0.000000e+00
  %.sroa.speculated.i73 = select i1 %i.ag, float %i.af, float 0.000000e+00
  %sqrt.i74 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i73)
  %i.ah = fcmp olt float %i.ad, -1.000000e+00
  %i.ai = fcmp ogt float %i.ad, 1.000000e+00
  %..i.i75 = select i1 %i.ai, float 1.000000e+00, float %i.ad
  %.0.i.i76 = select i1 %i.ah, float -1.000000e+00, float %..i.i75
  %i.aj = tail call noundef float @asinf(float noundef %.0.i.i76) #31 ; 3 uses
  %i.ak = fmul float %sqrt.i74, 2.000000e+00
  %i.al = fdiv float %i.ak, %sqrt.i70
  %i.am = load <4 x float>, ptr %i.q, align 4, !tbaa !20
  %i.an = fneg <4 x float> %i.am
  %i.ao = insertelement <4 x float> poison, float %i.al, i64 0
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aq = fmul <4 x float> %i.ap, %i.an           ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 0
  %i.as = tail call noundef float @expf(float noundef %i.ar) #31
  %i.at = extractelement <4 x float> %i.aq, i64 1
  %i.au = tail call noundef float @expf(float noundef %i.at) #31
  %i.av = extractelement <4 x float> %i.aq, i64 2
  %i.aw = tail call noundef float @expf(float noundef %i.av) #31
  %i.ax = extractelement <4 x float> %i.aq, i64 3
  %i.ay = tail call noundef float @expf(float noundef %i.ax) #31
  %shift = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop208 = fmul <2 x float> %i.aa, %shift
  %i.az = extractelement <2 x float> %foldExtExtBinop208, i64 0 ; 2 uses
  %i.ba = fcmp ogt float %i.az, 1.000000e+00
  %..i.i.i = select i1 %i.ba, float 1.000000e+00, float %i.az ; 5 uses
  %i.bb = fmul float %..i.i.i, %..i.i.i
  %i.bc = fsub float 1.000000e+00, %i.bb
  %i.bd = fdiv float %i.bc, %i.p                  ; 2 uses
  %i.be = fcmp ult float %i.bd, 1.000000e+00
  br i1 %i.be, label %bb.b, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.b:                                             ; preds = %bb.a
  %i.bf = fsub float 1.000000e+00, %i.bd          ; 2 uses
  %i.bg = fcmp ogt float %i.bf, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.bg, float %i.bf, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.bh = fmul float %i.k, %..i.i.i               ; 2 uses
  %i.bi = fsub float %i.bh, %sqrt.i.i.i
  %i.bj = fadd float %i.bh, %sqrt.i.i.i
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.k, %sqrt.i.i.i            ; 2 uses
  %i.bm = fsub float %..i.i.i, %i.bl
  %i.bn = fadd float %..i.i.i, %i.bl
  %i.bo = fdiv float %i.bm, %i.bn                 ; 2 uses
  %i.bp = fmul float %i.bk, %i.bk
  %i.bq = fmul float %i.bo, %i.bo
  %i.br = fadd float %i.bp, %i.bq
  %i.bs = fmul float %i.br, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.b, %bb.a
  %.0.i.i87 = phi float [ %i.bs, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.bt = insertelement <4 x float> poison, float %.0.i.i87, i64 0 ; 3 uses
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.bv = fsub float 1.000000e+00, %.0.i.i87      ; 2 uses
  %i.bw = fmul float %i.bv, %i.bv
  %i.bx = insertelement <4 x float> poison, float %i.as, i64 0
  %i.by = insertelement <4 x float> %i.bx, float %i.au, i64 1
  %i.bz = insertelement <4 x float> %i.by, float %i.aw, i64 2
  %i.ca = insertelement <4 x float> %i.bz, float %i.ay, i64 3 ; 4 uses
  %i.cb = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = fmul <4 x float> %i.ca, %i.cc           ; 3 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cf = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.cg = fmul <4 x float> %i.ca, %i.cd
  %i.ch = fmul <4 x float> %i.bu, %i.cg           ; 3 uses
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cj = shufflevector <4 x float> %i.ch, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ck = fmul <4 x float> %i.ca, %i.bu
  %.fr213 = freeze <4 x float> %i.ck
  %6 = fsub <4 x float> splat (float 1.000000e+00), %.fr213 ; 2 uses
  %7 = fcmp une <4 x float> %6, zeroinitializer
  %8 = bitcast <4 x i1> %7 to i4
  %.not = icmp eq i4 %8, 0                        ; 2 uses
  %i.cl = fmul <4 x float> %i.bu, %i.ch
  %i.cm = fmul <4 x float> %i.ca, %i.cl
  %i.cn = fdiv <4 x float> %i.cm, %6              ; 2 uses
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.6.0.copyload.i.i = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.cp
  %.sroa.0.0.copyload.i.i = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cy = fmul float %i.e, 2.000000e+00           ; 3 uses
  %i.cz = load float, ptr %i.cu, align 4, !tbaa !20 ; 2 uses
  %i.da = fmul float %.sroa.064.0.vec.extract, %i.cz
  %i.db = load float, ptr %i.cv, align 4, !tbaa !20 ; 2 uses
  %i.dc = fmul float %i.ab, %i.db
  %i.dd = fsub float %i.da, %i.dc
  %i.de = fmul float %i.ab, %i.cz
  %i.df = fmul float %.sroa.064.0.vec.extract, %i.db
  %i.dg = fadd float %i.de, %i.df
  %i.dh = tail call float @llvm.fabs.f32(float %i.dg)
  %i.di = load float, ptr %i.cw, align 4, !tbaa !20
  %i.dj = tail call noundef float @_ZN4pbrt8HairBxDF2MpEfffff(float noundef %sqrt.i68, float noundef %i.dh, float noundef %.sroa.059.0.vec.extract, float noundef %i.dd, float noundef %i.di)
  %.sroa.0.0.vec.extract = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.8.vec.extract = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dk = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = fmul <2 x float> %i.dl, %.sroa.0.0.vec.extract
  %i.dn = fmul <2 x float> %i.dl, %.sroa.0.8.vec.extract
  %i.do = load float, ptr %i.cx, align 4, !tbaa !86 ; 3 uses
  %i.dp = fmul float %i.aj, 0.000000e+00
  %i.dq = fsub float %i.dp, %i.cy
  %i.dr = fadd float %i.dq, 0.000000e+00
  %i.ds = fsub float %i.r, %i.dr                  ; 3 uses
  %i.dt = fcmp ogt float %i.ds, f0x40490FDB
  br i1 %i.dt, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %_ZN4pbrt12FrDielectricEff.exit.i
  %.0.lcssa.i = phi float [ %i.ds, %_ZN4pbrt12FrDielectricEff.exit.i ], [ %i.dv, %.lr.ph.i ] ; 3 uses
  %i.du = fcmp olt float %.0.lcssa.i, f0xC0490FDB
  br i1 %i.du, label %.lr.ph11.i, label %_ZN4pbrt8HairBxDF2NpEfifff.exit

.lr.ph.i:                                         ; preds = %_ZN4pbrt12FrDielectricEff.exit.i, %.lr.ph.i
  %.09.i = phi float [ %i.dv, %.lr.ph.i ], [ %i.ds, %_ZN4pbrt12FrDielectricEff.exit.i ]
  %i.dv = fadd float %.09.i, f0xC0C90FDB          ; 3 uses
  %i.dw = fcmp ogt float %i.dv, f0x40490FDB
  br i1 %i.dw, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.lr.ph11.i:                                       ; preds = %.preheader.i, %.lr.ph11.i
  %.110.i = phi float [ %i.dx, %.lr.ph11.i ], [ %.0.lcssa.i, %.preheader.i ]
  %i.dx = fadd float %.110.i, f0x40C90FDB         ; 3 uses
  %i.dy = fcmp olt float %i.dx, f0xC0490FDB
  br i1 %i.dy, label %.lr.ph11.i, label %_ZN4pbrt8HairBxDF2NpEfifff.exit, !llvm.loop !1

_ZN4pbrt8HairBxDF2NpEfifff.exit:                  ; preds = %.lr.ph11.i, %.preheader.i
  %.1.lcssa.i = phi float [ %.0.lcssa.i, %.preheader.i ], [ %i.dx, %.lr.ph11.i ]
  %i.dz = tail call noundef float @llvm.fabs.f32(float %.1.lcssa.i)
  %i.ea = fneg float %i.dz
  %i.eb = fdiv float %i.ea, %i.do
  %i.ec = tail call noundef float @expf(float noundef %i.eb) #31 ; 2 uses
  %i.ed = fadd float %i.ec, 1.000000e+00          ; 2 uses
  %i.ee = fmul float %i.ed, %i.ed
  %i.ef = fmul float %i.do, %i.ee
  %i.eg = fdiv float %i.ec, %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.do, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fdiv <2 x float> <float f0xC0490FDB, float f0x40490FDB>, %i.ei ; 2 uses
  %i.ek = extractelement <2 x float> %i.ej, i64 0
  %i.el = tail call noundef float @expf(float noundef %i.ek) #31
  %i.em = extractelement <2 x float> %i.ej, i64 1
  %i.en = tail call noundef float @expf(float noundef %i.em) #31
  %i.eo = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.en, i64 1
  %i.eq = fadd <2 x float> %i.ep, splat (float 1.000000e+00)
  %i.er = fdiv <2 x float> splat (float 1.000000e+00), %i.eq ; 2 uses
  %shift210 = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop211 = fsub <2 x float> %i.er, %shift210
  %i.es = extractelement <2 x float> %foldExtExtBinop211, i64 0
  %i.et = fdiv float %i.eg, %i.es
  %i.eu = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ew = fmul <2 x float> %i.dm, %i.ev
  %i.ex = fadd <2 x float> %i.ew, zeroinitializer
  %i.ey = fmul <2 x float> %i.dn, %i.ev
  %i.ez = fadd <2 x float> %i.ey, zeroinitializer
  %i.fa = load float, ptr %i.cs, align 4, !tbaa !20 ; 2 uses
  %i.fb = fmul float %.sroa.064.0.vec.extract, %i.fa
  %i.fc = load float, ptr %i.ct, align 4, !tbaa !20 ; 2 uses
  %i.fd = fmul float %i.ab, %i.fc
  %i.fe = fadd float %i.fb, %i.fd
  %i.ff = fmul float %i.ab, %i.fa
  %i.fg = fmul float %.sroa.064.0.vec.extract, %i.fc
  %i.fh = fsub float %i.ff, %i.fg
  %i.fi = tail call float @llvm.fabs.f32(float %i.fh)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !20
  %i.fl = tail call noundef float @_ZN4pbrt8HairBxDF2MpEfffff(float noundef %sqrt.i68, float noundef %i.fi, float noundef %.sroa.059.0.vec.extract, float noundef %i.fe, float noundef %i.fk)
  %i.fm = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = fmul <2 x float> %i.fn, %i.ce
  %i.fp = fmul <2 x float> %i.fn, %i.cf
  %i.fq = load float, ptr %i.cx, align 4, !tbaa !86 ; 3 uses
  %i.fr = fmul float %i.aj, 2.000000e+00
  %i.fs = fsub float %i.fr, %i.cy
  %i.ft = fadd float %i.fs, f0x40490FDB
  %i.fu = fsub float %i.r, %i.ft                  ; 3 uses
  %i.fv = fcmp ogt float %i.fu, f0x40490FDB
  br i1 %i.fv, label %.lr.ph.i.1, label %.preheader.i.1

.lr.ph.i.1:                                       ; preds = %_ZN4pbrt8HairBxDF2NpEfifff.exit, %.lr.ph.i.1
  %.09.i.1 = phi float [ %i.fw, %.lr.ph.i.1 ], [ %i.fu, %_ZN4pbrt8HairBxDF2NpEfifff.exit ]
  %i.fw = fadd float %.09.i.1, f0xC0C90FDB        ; 3 uses
  %i.fx = fcmp ogt float %i.fw, f0x40490FDB
  br i1 %i.fx, label %.lr.ph.i.1, label %.preheader.i.1, !llvm.loop !0

.preheader.i.1:                                   ; preds = %.lr.ph.i.1, %_ZN4pbrt8HairBxDF2NpEfifff.exit
  %.0.lcssa.i.1 = phi float [ %i.fu, %_ZN4pbrt8HairBxDF2NpEfifff.exit ], [ %i.fw, %.lr.ph.i.1 ] ; 3 uses
  %i.fy = fcmp olt float %.0.lcssa.i.1, f0xC0490FDB
  br i1 %i.fy, label %.lr.ph11.i.1, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.1

.lr.ph11.i.1:                                     ; preds = %.preheader.i.1, %.lr.ph11.i.1
  %.110.i.1 = phi float [ %i.fz, %.lr.ph11.i.1 ], [ %.0.lcssa.i.1, %.preheader.i.1 ]
  %i.fz = fadd float %.110.i.1, f0x40C90FDB       ; 3 uses
  %i.ga = fcmp olt float %i.fz, f0xC0490FDB
  br i1 %i.ga, label %.lr.ph11.i.1, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.1, !llvm.loop !1

_ZN4pbrt8HairBxDF2NpEfifff.exit.1:                ; preds = %.lr.ph11.i.1, %.preheader.i.1
  %.1.lcssa.i.1 = phi float [ %.0.lcssa.i.1, %.preheader.i.1 ], [ %i.fz, %.lr.ph11.i.1 ]
  %i.gb = tail call noundef float @llvm.fabs.f32(float %.1.lcssa.i.1)
  %i.gc = fneg float %i.gb
  %i.gd = fdiv float %i.gc, %i.fq
  %i.ge = tail call noundef float @expf(float noundef %i.gd) #31 ; 2 uses
  %i.gf = fadd float %i.ge, 1.000000e+00          ; 2 uses
  %i.gg = fmul float %i.gf, %i.gf
  %i.gh = fmul float %i.fq, %i.gg
  %i.gi = fdiv float %i.ge, %i.gh
  %i.gj = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fdiv <2 x float> <float f0xC0490FDB, float f0x40490FDB>, %i.gk ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0
  %i.gn = tail call noundef float @expf(float noundef %i.gm) #31
  %i.go = extractelement <2 x float> %i.gl, i64 1
  %i.gp = tail call noundef float @expf(float noundef %i.go) #31
  %i.gq = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gr = insertelement <2 x float> %i.gq, float %i.gp, i64 1
  %i.gs = fadd <2 x float> %i.gr, splat (float 1.000000e+00)
  %i.gt = fdiv <2 x float> splat (float 1.000000e+00), %i.gs ; 2 uses
  %shift210.1 = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop211.1 = fsub <2 x float> %i.gt, %shift210.1
  %i.gu = extractelement <2 x float> %foldExtExtBinop211.1, i64 0
  %i.gv = fdiv float %i.gi, %i.gu
  %i.gw = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gy = fmul <2 x float> %i.fo, %i.gx
  %i.gz = fadd <2 x float> %i.ex, %i.gy
  %i.ha = fmul <2 x float> %i.fp, %i.gx
  %i.hb = fadd <2 x float> %i.ez, %i.ha
  %i.hc = load float, ptr %i.cq, align 4, !tbaa !20 ; 2 uses
  %i.hd = fmul float %.sroa.064.0.vec.extract, %i.hc
  %i.he = load float, ptr %i.cr, align 4, !tbaa !20 ; 2 uses
  %i.hf = fmul float %i.ab, %i.he
  %i.hg = fadd float %i.hd, %i.hf
  %i.hh = fmul float %i.ab, %i.hc
  %i.hi = fmul float %.sroa.064.0.vec.extract, %i.he
  %i.hj = fsub float %i.hh, %i.hi
  %i.hk = tail call float @llvm.fabs.f32(float %i.hj)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !20
  %i.hn = tail call noundef float @_ZN4pbrt8HairBxDF2MpEfffff(float noundef %sqrt.i68, float noundef %i.hk, float noundef %.sroa.059.0.vec.extract, float noundef %i.hg, float noundef %i.hm)
  %i.ho = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hp = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hq = fmul <2 x float> %i.hp, %i.ci
  %i.hr = fmul <2 x float> %i.hp, %i.cj
  %i.hs = load float, ptr %i.cx, align 4, !tbaa !86 ; 3 uses
  %i.ht = fmul float %i.aj, 4.000000e+00
  %i.hu = fsub float %i.ht, %i.cy
  %i.hv = fadd float %i.hu, f0x40C90FDB
  %i.hw = fsub float %i.r, %i.hv                  ; 3 uses
  %i.hx = fcmp ogt float %i.hw, f0x40490FDB
  br i1 %i.hx, label %.lr.ph.i.2, label %.preheader.i.2

.lr.ph.i.2:                                       ; preds = %_ZN4pbrt8HairBxDF2NpEfifff.exit.1, %.lr.ph.i.2
  %.09.i.2 = phi float [ %i.hy, %.lr.ph.i.2 ], [ %i.hw, %_ZN4pbrt8HairBxDF2NpEfifff.exit.1 ]
  %i.hy = fadd float %.09.i.2, f0xC0C90FDB        ; 3 uses
  %i.hz = fcmp ogt float %i.hy, f0x40490FDB
  br i1 %i.hz, label %.lr.ph.i.2, label %.preheader.i.2, !llvm.loop !0

.preheader.i.2:                                   ; preds = %.lr.ph.i.2, %_ZN4pbrt8HairBxDF2NpEfifff.exit.1
  %.0.lcssa.i.2 = phi float [ %i.hw, %_ZN4pbrt8HairBxDF2NpEfifff.exit.1 ], [ %i.hy, %.lr.ph.i.2 ] ; 3 uses
  %i.ia = fcmp olt float %.0.lcssa.i.2, f0xC0490FDB
  br i1 %i.ia, label %.lr.ph11.i.2, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.2

.lr.ph11.i.2:                                     ; preds = %.preheader.i.2, %.lr.ph11.i.2
  %.110.i.2 = phi float [ %i.ib, %.lr.ph11.i.2 ], [ %.0.lcssa.i.2, %.preheader.i.2 ]
  %i.ib = fadd float %.110.i.2, f0x40C90FDB       ; 3 uses
  %i.ic = fcmp olt float %i.ib, f0xC0490FDB
  br i1 %i.ic, label %.lr.ph11.i.2, label %_ZN4pbrt8HairBxDF2NpEfifff.exit.2, !llvm.loop !1

_ZN4pbrt8HairBxDF2NpEfifff.exit.2:                ; preds = %.lr.ph11.i.2, %.preheader.i.2
  %.1.lcssa.i.2 = phi float [ %.0.lcssa.i.2, %.preheader.i.2 ], [ %i.ib, %.lr.ph11.i.2 ]
  %i.id = tail call noundef float @llvm.fabs.f32(float %.1.lcssa.i.2)
  %i.ie = fneg float %i.id
  %i.if = fdiv float %i.ie, %i.hs
end_hunk_0
begin_hunk_1_@_ZN4pbrt8HairBxDF2MpEfffff:bb.a
bb.f:                                             ; preds = %bb.e
  %i.bu = and i32 %i.bo, -2139095041
  %i.bv = shl nsw i32 %i.br, 23
  %i.bw = add nsw i32 %i.bv, 1065353216
  %i.bx = or i32 %i.bw, %i.bu
  %i.by = bitcast i32 %i.bx to float
  br label %_ZN4pbrt7FastExpEf.exit

bb.g:                                             ; preds = %bb.a
  %i.bz = fmul float %i.d, f0xBFB8AA3B            ; 2 uses
  %i.ca = tail call noundef float @llvm.floor.f32(float %i.bz) ; 2 uses
  %i.cb = fsub float %i.bz, %i.ca                 ; 3 uses
  %i.cc = fptosi float %i.ca to i32
  %i.cd = tail call noundef float @llvm.fma.f32(float %i.cb, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ce = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.cd, float f0x3F321004)
  %i.cf = tail call noundef float @llvm.fma.f32(float %i.cb, float %i.ce, float 1.000000e+00)
  %i.cg = bitcast float %i.cf to i32              ; 2 uses
  %i.ch = lshr i32 %i.cg, 23
  %i.ci = add i32 %i.cc, -127
  %i.cj = add i32 %i.ci, %i.ch                    ; 3 uses
  %i.ck = icmp slt i32 %i.cj, -126
  br i1 %i.ck, label %_ZN4pbrt7FastExpEf.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = icmp sgt i32 %i.cj, 127
  br i1 %i.cl, label %_ZN4pbrt7FastExpEf.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cm = and i32 %i.cg, -2139095041
  %i.cn = shl nsw i32 %i.cj, 23
  %i.co = add nsw i32 %i.cn, 1065353216
  %i.cp = or i32 %i.co, %i.cm
  %i.cq = bitcast i32 %i.cp to float
  br label %_ZN4pbrt7FastExpEf.exit18

_ZN4pbrt7FastExpEf.exit18:                        ; preds = %bb.g, %bb.h, %bb.i
  %.0.i17 = phi float [ %i.cq, %bb.i ], [ 0.000000e+00, %bb.g ], [ +inf, %bb.h ]
  %i.cr = fmul float %i.b, %i.b                   ; 10 uses
  %i.cs = fmul float %i.cr, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cs, 1.562500e-02
  %i.cu = fmul float %i.cr, %i.cs                 ; 2 uses
  %i.cv = fmul float %i.cr, %i.cu                 ; 2 uses
  %i.cw = fmul float %i.cr, %i.cv                 ; 2 uses
  %i.cx = fmul float %i.cr, %i.cw                 ; 2 uses
  %i.cy = fmul float %i.cr, %i.cx                 ; 2 uses
  %i.cz = fmul float %i.cr, %i.cy                 ; 2 uses
  %i.da = fmul float %i.cr, %i.cz
  %i.db = fmul float %i.cr, 2.500000e-01
  %i.dc = fadd float %i.db, 1.000000e+00
  %i.dd = fadd float %i.dc, %i.ct
  %i.de = insertelement <8 x float> poison, float %i.cu, i64 0
  %i.df = insertelement <8 x float> %i.de, float %i.cv, i64 1
  %i.dg = insertelement <8 x float> %i.df, float %i.cw, i64 2
  %i.dh = insertelement <8 x float> %i.dg, float %i.cx, i64 3
  %i.di = insertelement <8 x float> %i.dh, float %i.cy, i64 4
  %i.dj = insertelement <8 x float> %i.di, float %i.cz, i64 5
  %i.dk = insertelement <8 x float> %i.dj, float %i.da, i64 6
  %i.dl = fdiv <8 x float> %i.dk, <float 2.304000e+03, float 1.474560e+05, float 1.474560e+07, float f0x4EFD2000, float f0x52C1CC80, float f0x56C1CC80, float f0x5AF546D2, float poison> ; 7 uses
  %i.dm = extractelement <8 x float> %i.dl, i64 0
  %i.dn = fadd float %i.dd, %i.dm
  %i.do = extractelement <8 x float> %i.dl, i64 1
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = extractelement <8 x float> %i.dl, i64 2
  %i.dr = fadd float %i.dp, %i.dq
  %i.ds = extractelement <8 x float> %i.dl, i64 3
  %i.dt = fadd float %i.dr, %i.ds
  %i.du = extractelement <8 x float> %i.dl, i64 4
  %i.dv = fadd float %i.dt, %i.du
  %i.dw = extractelement <8 x float> %i.dl, i64 5
  %i.dx = fadd float %i.dv, %i.dw
  %i.dy = extractelement <8 x float> %i.dl, i64 6
  %i.dz = fadd float %i.dx, %i.dy
  %i.ea = fmul float %i.dz, %.0.i17
  %i.eb = fdiv float 1.000000e+00, %4
  %i.ec = tail call noundef float @sinhf(float noundef %i.eb) #31
  %i.ed = fmul float %i.ec, 2.000000e+00
  %i.ee = fmul float %4, %i.ed
  %i.ef = fdiv float %i.ea, %i.ee
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.f, %bb.e, %_ZN4pbrt5LogI0Ef.exit, %_ZN4pbrt7FastExpEf.exit18
  %i.eg = phi float [ %i.ef, %_ZN4pbrt7FastExpEf.exit18 ], [ %i.by, %bb.f ], [ 0.000000e+00, %_ZN4pbrt5LogI0Ef.exit ], [ +inf, %bb.e ]
  ret float %i.eg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF5ApPDFEf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(76) %0, float noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fmul float %1, %1
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.c, float %i.b, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !85 ; 5 uses
  %i.f = fdiv float %sqrt.i, %i.e                 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %.sroa.speculated.i27 = select i1 %i.i, float %i.h, float 0.000000e+00
  %sqrt.i28 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i27)
  %i.j = fmul float %i.e, %i.e
  %i.k = fmul float %sqrt.i, %sqrt.i
  %i.l = fsub float %i.j, %i.k                    ; 2 uses
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %.sroa.speculated.i29 = select i1 %i.m, float %i.l, float 0.000000e+00
  %sqrt.i30 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i29)
  %i.n = fdiv float %sqrt.i30, %1
  %i.o = load float, ptr %0, align 4, !tbaa !84   ; 3 uses
  %i.p = fdiv float %i.o, %i.n                    ; 5 uses
  %i.q = fmul float %i.p, %i.p
  %i.r = fsub float 1.000000e+00, %i.q            ; 2 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  %.sroa.speculated.i31 = select i1 %i.s, float %i.r, float 0.000000e+00
  %sqrt.i32 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i31)
  %i.t = fcmp olt float %i.p, -1.000000e+00
  %i.u = fcmp ogt float %i.p, 1.000000e+00
  %..i.i = select i1 %i.u, float 1.000000e+00, float %i.p
  %.0.i.i = select i1 %i.t, float -1.000000e+00, float %..i.i ; 2 uses
  %i.v = fcmp olt float %.0.i.i, -1.000000e+00
  br i1 %i.v, label %cdce.call, label %cdce.end, !prof !70

cdce.call:                                        ; preds = %bb.a
  %i.w = tail call noundef float @asinf(float noundef %.0.i.i) #31 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = fmul float %sqrt.i32, 2.000000e+00
  %i.z = fdiv float %i.y, %sqrt.i28
  %i.aa = load <4 x float>, ptr %i.x, align 4, !tbaa !20
  %i.ab = fneg <4 x float> %i.aa
  %i.ac = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = fmul <4 x float> %i.ad, %i.ab           ; 4 uses
  %i.af = extractelement <4 x float> %i.ae, i64 0
  %i.ag = tail call noundef float @expf(float noundef %i.af) #31
  %i.ah = extractelement <4 x float> %i.ae, i64 1
  %i.ai = tail call noundef float @expf(float noundef %i.ah) #31
  %i.aj = extractelement <4 x float> %i.ae, i64 2
  %i.ak = tail call noundef float @expf(float noundef %i.aj) #31
  %i.al = extractelement <4 x float> %i.ae, i64 3
  %i.am = tail call noundef float @expf(float noundef %i.al) #31
  %i.an = fmul float %i.o, %i.o
  %i.ao = fsub float 1.000000e+00, %i.an          ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ap, float %i.ao, float 0.000000e+00
  %sqrt.i.i = tail call nnan float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.aq = fmul float %1, %sqrt.i.i                ; 3 uses
  %i.ar = fcmp olt float %i.aq, -1.000000e+00
  %i.as = fcmp ogt float %i.aq, 1.000000e+00
  %..i.i.i = select i1 %i.as, float 1.000000e+00, float %i.aq
  %.0.i.i.i = select i1 %i.ar, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.at = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.au = fdiv float 1.000000e+00, %i.e
  %i.av = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.at, float %i.au, float %i.e ; 4 uses
  %.024.i.i = select i1 %i.at, float %i.av, float %.0.i.i.i ; 5 uses
  %i.aw = fmul float %.024.i.i, %.024.i.i
  %i.ax = fsub float 1.000000e+00, %i.aw
  %i.ay = fmul float %.025.i.i, %.025.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fcmp ult float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.b, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.b:                                             ; preds = %cdce.end
  %i.bb = fsub float 1.000000e+00, %i.az          ; 2 uses
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.bc, float %i.bb, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.bd = fmul float %.025.i.i, %.024.i.i         ; 2 uses
  %i.be = fsub float %i.bd, %sqrt.i.i.i
  %i.bf = fadd float %i.bd, %sqrt.i.i.i
  %i.bg = fdiv float %i.be, %i.bf                 ; 2 uses
  %i.bh = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bi = fsub float %.024.i.i, %i.bh
  %i.bj = fadd float %.024.i.i, %i.bh
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bg, %i.bg
  %i.bm = fmul float %i.bk, %i.bk
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fmul float %i.bn, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.b, %cdce.end
  %.0.i.i43 = phi float [ %i.bo, %bb.b ], [ 1.000000e+00, %cdce.end ] ; 6 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.i43      ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.ai, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.ak, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.am, i64 3 ; 4 uses
  %i.bv = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.bu, %i.bw           ; 5 uses
  %i.by = fmul <4 x float> %i.bu, %i.bx
  %i.bz = insertelement <4 x float> poison, float %.0.i.i43, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cb = fmul <4 x float> %i.ca, %i.by           ; 5 uses
  %i.cc = fmul <4 x float> %i.bu, %i.ca
  %i.cd = fsub <4 x float> splat (float 1.000000e+00), %i.cc ; 2 uses
  %2 = fcmp une <4 x float> %i.cd, zeroinitializer
  %3 = bitcast <4 x i1> %2 to i4
  %.not = icmp eq i4 %3, 0                        ; 2 uses
  %i.ce = fmul <4 x float> %i.ca, %i.cb
  %i.cf = fmul <4 x float> %i.bu, %i.ce
  %i.cg = fdiv <4 x float> %i.cf, %i.cd           ; 2 uses
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.40.0 = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.ci ; 2 uses
  %.sroa.34.0 = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.ch ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.34.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %.sroa.34.0, %shift
  %shift82 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop83 = fadd <4 x float> %i.cb, %shift82
  %shift85 = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop86 = fadd <4 x float> %i.bx, %shift85
  %i.cj = fadd float %.0.i.i43, %.0.i.i43
  %foldExtExtBinop88 = fadd <2 x float> %foldExtExtBinop, %.sroa.40.0
  %i.ck = shufflevector <2 x float> %foldExtExtBinop88, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %shift90 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop91 = fadd <4 x float> %foldExtExtBinop83, %shift90
  %shift93 = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop94 = fadd <4 x float> %foldExtExtBinop86, %shift93
  %i.cl = fadd float %i.cj, %.0.i.i43
  %i.cm = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %foldExtExtBinop94, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> %foldExtExtBinop91, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cq = shufflevector <2 x float> %.sroa.40.0, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.cr = insertelement <4 x float> %i.cq, float %.0.i.i43, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> %i.cb, <4 x i32> <i32 0, i32 poison, i32 7, i32 3>
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> %i.bx, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  %i.cu = fadd <4 x float> %i.cp, %i.ct
  %i.cv = fmul <4 x float> %i.cu, splat (float 2.500000e-01) ; 5 uses
  %i.cw = extractelement <4 x float> %i.cv, i64 0
  %i.cx = fadd float %i.cw, 0.000000e+00
  %i.cy = extractelement <4 x float> %i.cv, i64 1
  %i.cz = fadd float %i.cx, %i.cy
  %i.da = extractelement <4 x float> %i.cv, i64 2
  %i.db = fadd float %i.cz, %i.da
  %i.dc = extractelement <4 x float> %i.cv, i64 3
  %i.dd = fadd float %i.db, %i.dc
  %i.de = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = fdiv <4 x float> %i.cv, %i.df           ; 2 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.di = shufflevector <4 x float> %i.dg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dh, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.di, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(76) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 %6, i32 %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i:
  %8 = alloca %"class.pstd::array", align 8       ; 5 uses
  %.sroa.098.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 14 uses
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.c, float %i.b, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 16 uses
  %.sroa.098.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.d = tail call noundef float @atan2f(float noundef %3, float noundef %.sroa.098.4.vec.extract) #31
  %i.e = load float, ptr %1, align 4, !tbaa !84   ; 4 uses
  %i.f = fcmp olt float %i.e, -1.000000e+00
  %i.g = fcmp ogt float %i.e, 1.000000e+00
  %..i.i = select i1 %i.g, float 1.000000e+00, float %i.e
  %.0.i.i = select i1 %i.f, float -1.000000e+00, float %..i.i
  %i.h = tail call noundef float @asinf(float noundef %.0.i.i) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.i = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF5ApPDFEf(ptr noundef nonnull align 4 dereferenceable(76) %1, float noundef %sqrt.i) ; 2 uses
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.i, 0 ; 3 uses
  store <2 x float> %i.j, ptr %8, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.i, 1 ; 3 uses
  store <2 x float> %i.l, ptr %i.k, align 8
  %i.m = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.n = fadd float %i.m, 0.000000e+00
  %i.o = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.p = fadd float %i.n, %i.o
  %i.q = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.r = fadd float %i.p, %i.q
  %i.s = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.t = fadd float %i.r, %i.s                    ; 2 uses
  %i.u = fmul float %4, %i.t                      ; 5 uses
  %i.v = fcmp oeq float %i.u, %i.t
  br i1 %i.v, label %bb.a, label %_ZN4pbrt13NextFloatDownEf.exit.i

bb.a:                                             ; preds = %.lr.ph.i
  %or.cond.i.i = fcmp oeq float %i.u, -inf
  br i1 %or.cond.i.i, label %_ZN4pbrt13NextFloatDownEf.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = fcmp oeq float %i.u, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.w, float -0.000000e+00, float %i.u ; 2 uses
  %i.x = bitcast float %spec.store.select.i.i to i32
  %i.y = fcmp ogt float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.y, i32 -1, i32 1
  %.0.i.i108 = add i32 %.0.v.i.i, %i.x
  %i.z = bitcast i32 %.0.i.i108 to float
  br label %_ZN4pbrt13NextFloatDownEf.exit.i

_ZN4pbrt13NextFloatDownEf.exit.i:                 ; preds = %bb.b, %bb.a, %.lr.ph.i
  %.031.i = phi float [ %i.u, %.lr.ph.i ], [ %i.z, %bb.b ], [ -inf, %bb.a ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4pbrt13NextFloatDownEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 5 uses
  %.0.i = phi float [ %i.ac, %bb.c ], [ 0.000000e+00, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = fadd float %.0.i, %i.ab                 ; 2 uses
  %i.ad = fcmp ugt float %i.ac, %.031.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ad, label %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit, label %bb.c, !llvm.loop !320

_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit: ; preds = %bb.c
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.af = fsub float %.031.i, %.0.i
  %i.ag = fdiv float %i.af, %i.ab                 ; 2 uses
  %i.ah = fcmp ogt float %i.ag, f0x3F7FFFFF
  %.sroa.speculated.i107 = select i1 %i.ah, float f0x3F7FFFFF, float %i.ag ; 3 uses
  switch i32 %i.ae, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !20 ; 2 uses
  %i.ak = fmul float %.sroa.098.0.vec.extract, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load float, ptr %i.al, align 4, !tbaa !20 ; 2 uses
  %i.an = fmul float %sqrt.i, %i.am
  %i.ao = fsub float %i.ak, %i.an
  %i.ap = fmul float %sqrt.i, %i.aj
  %i.aq = fmul float %.sroa.098.0.vec.extract, %i.am
  %i.ar = fadd float %i.ap, %i.aq
  br label %bb.g

bb.e:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load float, ptr %i.as, align 4, !tbaa !20 ; 2 uses
  %i.au = fmul float %.sroa.098.0.vec.extract, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20 ; 2 uses
  %i.ax = fmul float %sqrt.i, %i.aw
  %i.ay = fadd float %i.au, %i.ax
  %i.az = fmul float %sqrt.i, %i.at
  %i.ba = fmul float %.sroa.098.0.vec.extract, %i.aw
  %i.bb = fsub float %i.az, %i.ba
  br label %bb.g

bb.f:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !20 ; 2 uses
  %i.be = fmul float %.sroa.098.0.vec.extract, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !20 ; 2 uses
  %i.bh = fmul float %sqrt.i, %i.bg
  %i.bi = fadd float %i.be, %i.bh
  %i.bj = fmul float %sqrt.i, %i.bd
  %i.bk = fmul float %.sroa.098.0.vec.extract, %i.bg
  %i.bl = fsub float %i.bj, %i.bk
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit, %bb.e, %bb.f, %bb.d
  %.0100 = phi float [ %i.ar, %bb.d ], [ %i.bb, %bb.e ], [ %i.bl, %bb.f ], [ %sqrt.i, %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit ]
  %.0 = phi float [ %i.ao, %bb.d ], [ %i.ay, %bb.e ], [ %i.bi, %bb.f ], [ %.sroa.098.0.vec.extract, %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit ]
  %i.bm = tail call noundef float @llvm.fabs.f32(float %.0100)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !20 ; 2 uses
  %.sroa.0131.0.vec.extract = extractelement <2 x float> %5, i64 0 ; 3 uses
  %i.bq = fcmp olt float %.sroa.0131.0.vec.extract, f0x3727C5AC
  %.sroa.speculated = select i1 %i.bq, float f0x3727C5AC, float %.sroa.0131.0.vec.extract
  %i.br = fsub float 1.000000e+00, %.sroa.0131.0.vec.extract
  %i.bs = fdiv float -2.000000e+00, %i.bp
  %i.bt = fmul float %i.bs, f0x3FB8AA3B           ; 2 uses
  %i.bu = tail call noundef float @llvm.floor.f32(float %i.bt) ; 2 uses
  %i.bv = fsub float %i.bt, %i.bu                 ; 3 uses
  %i.bw = fptosi float %i.bu to i32
  %i.bx = tail call noundef float @llvm.fma.f32(float %i.bv, float f0x3DA00AC9, float f0x3E679A0B)
  %i.by = tail call noundef float @llvm.fma.f32(float %i.bv, float %i.bx, float f0x3F321004)
  %i.bz = tail call noundef float @llvm.fma.f32(float %i.bv, float %i.by, float 1.000000e+00)
  %i.ca = bitcast float %i.bz to i32              ; 2 uses
  %i.cb = lshr i32 %i.ca, 23
  %i.cc = add i32 %i.bw, -127
  %i.cd = add i32 %i.cc, %i.cb                    ; 3 uses
  %i.ce = icmp slt i32 %i.cd, -126
  br i1 %i.ce, label %_ZN4pbrt7FastExpEf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = icmp sgt i32 %i.cd, 127
  br i1 %i.cf, label %_ZN4pbrt7FastExpEf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cg = and i32 %i.ca, -2139095041
  %i.ch = shl nsw i32 %i.cd, 23
  %i.ci = add nsw i32 %i.ch, 1065353216
  %i.cj = or i32 %i.ci, %i.cg
  %i.ck = bitcast i32 %i.cj to float
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.g, %bb.h, %bb.i
  %.0.i109 = phi float [ %i.ck, %bb.i ], [ 0.000000e+00, %bb.g ], [ +inf, %bb.h ]
  %i.cl = fmul float %i.br, %.0.i109
end_hunk_1
