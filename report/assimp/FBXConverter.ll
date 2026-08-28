Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXConverter?download=true
inline.NumInlined: 7596
inline.NumDeleted: 2895
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE:bb.a
  %.sroa.12.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.12.0.copyload43 = load float, ptr %.sroa.12.0..sroa_idx42, align 4
  %.sroa.14.0.copyload45 = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.16.0.copyload47 = load float, ptr %.sroa.6158.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.18.0.copyload49 = load float, ptr %.sroa.18.0..sroa_idx48, align 4
  %.sroa.20.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.20.0.copyload51 = load float, ptr %.sroa.20.0..sroa_idx50, align 4
  %.sroa.22.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.22.0.copyload53 = load float, ptr %.sroa.22.0..sroa_idx52, align 4
  %.sroa.24.0.copyload55 = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.26.0.copyload57 = load float, ptr %.sroa.8159.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.28.0.copyload59 = load float, ptr %.sroa.28.0..sroa_idx58, align 4
  %.sroa.30.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.30.0.copyload61 = load float, ptr %.sroa.30.0..sroa_idx60, align 4
  %.sroa.32.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.32.0.copyload63 = load float, ptr %.sroa.32.0..sroa_idx62, align 4
  %.sroa.34.0.copyload65 = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 48
  %i.dl = load <4 x float>, ptr %.sroa.19.0.sroa.phi, align 4 ; 4 uses
  %i.dm = load <4 x float>, ptr %i.di, align 4    ; 4 uses
  %i.dn = insertelement <4 x float> poison, float %.sroa.6.0.copyload37, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul <4 x float> %i.do, %i.dm
  %i.dq = insertelement <4 x float> poison, float %.sroa.0.0.copyload35, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dr, <4 x float> %i.dp)
  %i.dt = load <4 x float>, ptr %i.dj, align 4    ; 4 uses
  %i.du = insertelement <4 x float> poison, float %.sroa.8.0.copyload39, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.dv, <4 x float> %i.ds)
  %i.dx = load <4 x float>, ptr %i.dk, align 4    ; 4 uses
  %i.dy = insertelement <4 x float> poison, float %.sroa.10.0.copyload41, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dz, <4 x float> %i.dw)
  store <4 x float> %i.ea, ptr %3, align 4
  %i.eb = insertelement <4 x float> poison, float %.sroa.14.0.copyload45, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fmul <4 x float> %i.ec, %i.dm
  %i.ee = insertelement <4 x float> poison, float %.sroa.12.0.copyload43, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = insertelement <4 x float> poison, float %.sroa.16.0.copyload47, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.ei, <4 x float> %i.eg)
  %i.ek = insertelement <4 x float> poison, float %.sroa.18.0.copyload49, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.el, <4 x float> %i.ej)
  store <4 x float> %i.em, ptr %.sroa.12.0..sroa_idx42, align 4
  %i.en = insertelement <4 x float> poison, float %.sroa.22.0.copyload53, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = fmul <4 x float> %i.eo, %i.dm
  %i.eq = insertelement <4 x float> poison, float %.sroa.20.0.copyload51, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.er, <4 x float> %i.ep)
  %i.et = insertelement <4 x float> poison, float %.sroa.24.0.copyload55, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.eu, <4 x float> %i.es)
  %i.ew = insertelement <4 x float> poison, float %.sroa.26.0.copyload57, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.ex, <4 x float> %i.ev)
  store <4 x float> %i.ey, ptr %.sroa.20.0..sroa_idx50, align 4
  %i.ez = insertelement <4 x float> poison, float %.sroa.30.0.copyload61, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fmul <4 x float> %i.fa, %i.dm
  %i.fc = insertelement <4 x float> poison, float %.sroa.28.0.copyload59, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.fd, <4 x float> %i.fb)
  %i.ff = insertelement <4 x float> poison, float %.sroa.32.0.copyload63, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.fg, <4 x float> %i.fe)
  %i.fi = insertelement <4 x float> poison, float %.sroa.34.0.copyload65, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.fj, <4 x float> %i.fh)
  store <4 x float> %i.fk, ptr %.sroa.28.0..sroa_idx58, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0155)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10156)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.03062 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.m ] ; 5 uses
  %i.f = icmp eq i64 %.03062, 12
  %i.g = and i64 %.03062, 27
  %i.h = icmp eq i64 %i.g, 3
  %or.cond3 = or i1 %i.f, %i.h
  br i1 %or.cond3, label %bb.m, label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.i = icmp eq i64 %.03062, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE, i64 %.03062
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  store ptr %i.d, ptr %2, align 8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %switch.lookup
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %2, align 8
  %i.m = load i64, ptr %i.a, align 8
  store i64 %i.m, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %switch.lookup
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.d, %switch.lookup ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %switch.load, align 1
  store i8 %i.o, ptr %i.n, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %switch.load, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.s = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc39 unwind label %bb.j   ; 2 uses

.noexc39:                                         ; preds = %bb.e
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc39
  %i.u = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.s, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload31.i = load <2 x float>, ptr %i.w, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc39, %bb.f
  %.0 = phi i1 [ true, %bb.g ], [ false, %.noexc39 ], [ false, %bb.f ] ; 2 uses
  %.sroa.10.0.i = phi float [ %.sroa.10.0.copyload.i, %bb.g ], [ 0.000000e+00, %.noexc39 ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.copyload31.i, %bb.g ], [ zeroinitializer, %.noexc39 ], [ zeroinitializer, %bb.f ] ; 5 uses
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.d, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %or.cond5 = and i1 %i.i, %.0
  br i1 %or.cond5, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.046.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.ab = fadd float %.sroa.046.0.vec.extract, -1.000000e+00 ; 2 uses
  %.sroa.046.4.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.ac = fadd float %.sroa.046.4.vec.extract, -1.000000e+00 ; 2 uses
  %i.ad = fadd float %.sroa.10.0.i, -1.000000e+00 ; 2 uses
  %i.ae = fmul float %i.ac, %i.ac
  %i.af = call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ae)
  %i.ag = call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.af)
  %i.ah = fcmp ogt float %i.ag, f0x34000000
  br label %.critedge

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.j
  %i.al = load i64, ptr %i.d, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.ai

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.046.0.vec.extract48 = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i
  %i.an = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ao = call float @llvm.fmuladd.f32(float %.sroa.046.0.vec.extract48, float %.sroa.046.0.vec.extract48, float %i.an)
  %i.ap = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0.i, float %.sroa.10.0.i, float %i.ao)
  %i.aq = fcmp ogt float %i.ap, f0x34000000
  br i1 %i.aq, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %i.ar = add nuw nsw i64 %.03062, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, 17
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !121

.critedge:                                        ; preds = %bb.l, %bb.m, %bb.i
  %.lcssa59 = phi i1 [ %i.ah, %bb.i ], [ true, %bb.l ], [ false, %bb.m ]
  ret i1 %.lcssa59
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.33, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 12, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.c, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !122
  %i.f = load ptr, ptr %2, align 8, !noalias !122
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.e)
          to label %.noexc10 unwind label %bb.g   ; 8 uses

.noexc10:                                         ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !alias.scope !122
  %i.i = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.thread, label %bb.a

.thread:                                          ; preds = %.noexc10
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.q, align 8, !alias.scope !122
  store ptr %i.j, ptr %i.g, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.j, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %.noexc10
  store ptr %i.i, ptr %5, align 8, !alias.scope !122
  %i.r = load i64, ptr %i.j, align 8
  store i64 %i.r, ptr %i.h, align 8, !alias.scope !122
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.pre.i, ptr %i.t, align 8, !alias.scope !122
  store ptr %i.j, ptr %i.g, align 8
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.j, align 8
  %i.u = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.u, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.noexc14 unwind label %bb.h

.noexc14:                                         ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread, %bb.a
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.34, i64 noundef 1)
          to label %.noexc15 unwind label %bb.h   ; 6 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.w, ptr %4, align 8, !alias.scope !125
  %i.x = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.c:                                             ; preds = %.noexc15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false)
  br label %switch.lookup

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %.noexc15
  store ptr %i.x, ptr %4, align 8, !alias.scope !125
  %i.ae = load i64, ptr %i.y, align 8
  store i64 %i.ae, ptr %i.w, align 8, !alias.scope !125
  %.phi.trans.insert.i12 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre.i13 = load i64, ptr %.phi.trans.insert.i12, align 8
  br label %switch.lookup

switch.lookup:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.c
  %i.af = phi i64 [ %i.ab, %bb.c ], [ %.pre.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ah, align 8, !alias.scope !125
  store ptr %i.y, ptr %i.v, align 8
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.y, align 8
  %i.ai = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE, i64 %i.ai
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #27, !noalias !128 ; 2 uses
  %i.ak = load i64, ptr %i.ah, align 8, !noalias !128
  %i.al = sub i64 4611686018427387903, %i.ak
  %i.am = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16

bb.d:                                             ; preds = %switch.lookup
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.noexc20 unwind label %bb.i

.noexc20:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16: ; preds = %switch.lookup
  %i.an = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %switch.load, i64 noundef %i.aj)
          to label %.noexc21 unwind label %bb.i   ; 6 uses

.noexc21:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ao, ptr %0, align 8, !alias.scope !128
  %i.ap = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

bb.e:                                             ; preds = %.noexc21
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.at = load i64, ptr %i.as, align 8            ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %.noexc21
  store ptr %i.ap, ptr %0, align 8, !alias.scope !128
  %i.aw = load i64, ptr %i.aq, align 8
  store i64 %i.aw, ptr %i.ao, align 8, !alias.scope !128
  %.phi.trans.insert.i18 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.pre.i19 = load i64, ptr %.phi.trans.insert.i18, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17, %bb.e
  %i.ax = phi i64 [ %i.at, %bb.e ], [ %.pre.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ax, ptr %i.az, align 8, !alias.scope !128
  store ptr %i.aq, ptr %i.an, align 8
  store i64 0, ptr %i.ay, align 8
  store i8 0, ptr %i.aq, align 8
  %i.ba = load ptr, ptr %4, align 8               ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.w
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.f
  %i.bc = load i64, ptr %i.w, align 8
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %i.be = load ptr, ptr %5, align 8               ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.h
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.h, align 8
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.bi = load ptr, ptr %6, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.a
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bk = load i64, ptr %i.a, align 8
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void

end_hunk_0
