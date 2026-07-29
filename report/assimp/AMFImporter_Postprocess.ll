inline.NumInlined: 1393
inline.NumDeleted: 732
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp11AMFImporter25Postprocess_BuildMaterialERK11AMFMaterial:bb.a
_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev.exit:   ; preds = %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void

.body:                                            ; preds = %bb.b, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SPP_MaterialEEEED2Ev.exit9.i.i.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.p, %bb.b ], [ %i.o, %_ZNSt15__allocated_ptrISaISt10_List_nodeIN6Assimp11AMFImporter12SPP_MaterialEEEED2Ev.exit9.i.i.i ]
  call void @_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp11AMFImporter12SPP_MaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.c, %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 40 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #23
  br label %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i

_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 56) #23
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !87

_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp11AMFImporter13SPP_CompositeD2Ev.exit.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not8.i.i1 = icmp eq ptr %i.k, %i.j
  br i1 %.not8.i.i1, label %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit, %.lr.ph.i.i2
  %.09.i.i3 = phi ptr [ %i.l, %.lr.ph.i.i2 ], [ %i.k, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit ] ; 2 uses
  %i.l = load ptr, ptr %.09.i.i3, align 8         ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i3, i64 noundef 24) #23
  %.not.i.i4 = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i4, label %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit, label %.lr.ph.i.i2, !llvm.loop !88

_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i2, %_ZNSt7__cxx1110_List_baseIN6Assimp11AMFImporter13SPP_CompositeESaIS3_EED2Ev.exit
  %i.m = load ptr, ptr %0, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1110_List_baseIP11AMFMetadataSaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp11AMFImporter30Postprocess_BuildConstellationER16AMFConstellationRSt6vectorIP6aiNodeSaIS5_EE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::list.84", align 8 ; 18 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %3, ptr %i.b, align 8
  store ptr %3, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.d = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.d)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.f, 1023
  br i1 %i.g, label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = trunc nuw nsw i64 %i.f to i32
  store i32 %i.i, ptr %i.d, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %i.k, i64 %i.f, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  store i8 0, ptr %i.l, align 1
  br label %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %.sroa.0124.0137 = load ptr, ptr %i.m, align 8  ; 2 uses
  %.not138 = icmp eq ptr %.sroa.0124.0137, %i.m
  br i1 %.not138, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.n = load ptr, ptr %3, align 8                ; 2 uses
  %i.o = icmp eq ptr %i.n, %3
  br i1 %i.o, label %bb.w, label %bb.z

bb.e:                                             ; preds = %bb.x, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1144) #23
  br label %bb.ag

.lr.ph:                                           ; preds = %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.t
  %.sroa.0124.0139 = phi ptr [ %.sroa.0124.0, %bb.t ], [ %.sroa.0124.0137, %_ZN8aiStringaSERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0124.0139, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  switch i32 %i.u, label %bb.g [
    i32 6, label %bb.t
    i32 4, label %bb.k
  ]

bb.g:                                             ; preds = %.lr.ph
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.7)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ah unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #21
  br label %bb.v

bb.j:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 2 uses
  %i.z = invoke noundef zeroext i1 @_ZNK6Assimp11AMFImporter18Find_ConvertedNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIP6aiNodeSaISB_EEPSB_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.a)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  br i1 %i.z, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK6Assimp11AMFImporter17Throw_ID_NotFoundERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #22
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  unreachable

.loopexit:                                        ; preds = %bb.k, %bb.o, %bb.q, %bb.r, %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.o:                                             ; preds = %bb.l
  %i.aa = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #24
          to label %bb.p unwind label %.loopexit  ; 23 uses

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.aa)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1096
  store ptr %i.d, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.ad = load float, ptr %i.ac, align 8          ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 116
  %i.af = load float, ptr %i.ae, align 4          ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.ah = load float, ptr %i.ag, align 8          ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 1028 ; 5 uses
  %4 = load float, ptr %i.ai, align 4             ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 1032
  %5 = load float, ptr %i.aj, align 8             ; 3 uses
  %6 = fmul float %5, 0.000000e+00                ; 2 uses
  %7 = fadd float %4, %6
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 1036 ; 5 uses
  %i.al = load float, ptr %i.ak, align 4          ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 1040 ; 5 uses
  %i.an = load float, ptr %i.am, align 8          ; 3 uses
  %8 = call float @llvm.fmuladd.f32(float %4, float 0.000000e+00, float %5)
  %9 = call float @llvm.fmuladd.f32(float %4, float 0.000000e+00, float %6)
  %10 = fadd float %i.al, %9
  %11 = call float @llvm.fmuladd.f32(float %i.an, float 0.000000e+00, float %10) ; 4 uses
  %12 = fmul float %i.af, %5
  %13 = call float @llvm.fmuladd.f32(float %i.ad, float %4, float %12)
  %14 = call float @llvm.fmuladd.f32(float %i.ah, float %i.al, float %13)
  %15 = fadd float %i.an, %14                     ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 1044 ; 5 uses
  %i.ap = load float, ptr %i.ao, align 4          ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 1048
  %i.ar = load float, ptr %i.aq, align 8          ; 3 uses
  %16 = fmul float %i.ar, 0.000000e+00            ; 2 uses
  %17 = fadd float %i.ap, %16
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 1052 ; 5 uses
  %i.at = load float, ptr %i.as, align 4          ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 1056 ; 5 uses
  %i.av = load float, ptr %i.au, align 8          ; 3 uses
  %18 = call float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %i.ar)
  %19 = call float @llvm.fmuladd.f32(float %i.ap, float 0.000000e+00, float %16)
  %20 = fadd float %i.at, %19
  %21 = call float @llvm.fmuladd.f32(float %i.av, float 0.000000e+00, float %20) ; 4 uses
  %22 = fmul float %i.af, %i.ar
  %i.aw = call float @llvm.fmuladd.f32(float %i.ad, float %i.ap, float %22)
  %23 = call float @llvm.fmuladd.f32(float %i.ah, float %i.at, float %i.aw)
  %24 = fadd float %i.av, %23                     ; 4 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1060 ; 5 uses
  %26 = load float, ptr %25, align 4              ; 4 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1064
  %28 = load float, ptr %27, align 8              ; 3 uses
  %29 = fmul float %28, 0.000000e+00              ; 2 uses
  %30 = fadd float %26, %29
  %31 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1068 ; 5 uses
  %32 = load float, ptr %31, align 4              ; 3 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1072 ; 5 uses
  %34 = load float, ptr %33, align 8              ; 3 uses
  %i.ax = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %28)
  %i.ay = call float @llvm.fmuladd.f32(float %26, float 0.000000e+00, float %29)
  %i.az = fadd float %32, %i.ay
  %35 = call float @llvm.fmuladd.f32(float %34, float 0.000000e+00, float %i.az) ; 4 uses
  %36 = fmul float %i.af, %28
  %37 = call float @llvm.fmuladd.f32(float %i.ad, float %26, float %36)
  %38 = call float @llvm.fmuladd.f32(float %i.ah, float %32, float %37)
  %39 = fadd float %34, %38                       ; 4 uses
  %40 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1076 ; 5 uses
  %41 = load float, ptr %40, align 4              ; 4 uses
  %42 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1080
  %43 = load float, ptr %42, align 8              ; 3 uses
  %44 = fmul float %43, 0.000000e+00              ; 2 uses
  %45 = fadd float %41, %44
  %46 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1084 ; 5 uses
  %47 = load float, ptr %46, align 4              ; 3 uses
  %48 = getelementptr inbounds nuw i8, ptr %i.aa, i64 1088 ; 5 uses
  %49 = load float, ptr %48, align 8              ; 3 uses
  %50 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %43)
  %i.ba = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %44)
  %i.bb = fadd float %47, %i.ba
  %i.bc = call float @llvm.fmuladd.f32(float %49, float 0.000000e+00, float %i.bb) ; 4 uses
  %i.bd = fmul float %i.af, %43
  %i.be = call float @llvm.fmuladd.f32(float %i.ad, float %41, float %i.bd)
  %i.bf = call float @llvm.fmuladd.f32(float %i.ah, float %47, float %i.be)
  %i.bg = fadd float %49, %i.bf                   ; 4 uses
  %51 = insertelement <2 x float> poison, float %i.al, i64 0
  %52 = shufflevector <2 x float> %51, <2 x float> poison, <2 x i32> zeroinitializer
  %53 = insertelement <2 x float> poison, float %7, i64 0
  %54 = insertelement <2 x float> %53, float %8, i64 1
  %55 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %52, <2 x float> zeroinitializer, <2 x float> %54)
  %56 = insertelement <2 x float> poison, float %i.an, i64 0
  %57 = shufflevector <2 x float> %56, <2 x float> poison, <2 x i32> zeroinitializer
  %58 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %57, <2 x float> zeroinitializer, <2 x float> %55) ; 3 uses
  store <2 x float> %58, ptr %i.ai, align 4
  store float %11, ptr %i.ak, align 4
  store float %15, ptr %i.am, align 8
  %i.bh = insertelement <2 x float> poison, float %i.at, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %17, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %18, i64 1
  %i.bl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> zeroinitializer, <2 x float> %i.bk)
  %i.bm = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> zeroinitializer, <2 x float> %i.bl) ; 3 uses
  store <2 x float> %i.bo, ptr %i.ao, align 4
  store float %21, ptr %i.as, align 4
  store float %24, ptr %i.au, align 8
  %59 = insertelement <2 x float> poison, float %32, i64 0
  %60 = shufflevector <2 x float> %59, <2 x float> poison, <2 x i32> zeroinitializer
  %61 = insertelement <2 x float> poison, float %30, i64 0
  %62 = insertelement <2 x float> %61, float %i.ax, i64 1
  %63 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %60, <2 x float> zeroinitializer, <2 x float> %62)
  %64 = insertelement <2 x float> poison, float %34, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  %66 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> zeroinitializer, <2 x float> %63) ; 3 uses
  store <2 x float> %66, ptr %25, align 4
  store float %35, ptr %31, align 4
  store float %39, ptr %33, align 8
  %i.bp = insertelement <2 x float> poison, float %47, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = insertelement <2 x float> poison, float %45, i64 0
  %i.bs = insertelement <2 x float> %i.br, float %50, i64 1
  %i.bt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> zeroinitializer, <2 x float> %i.bs)
  %i.bu = insertelement <2 x float> poison, float %49, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> zeroinitializer, <2 x float> %i.bt) ; 3 uses
  store <2 x float> %i.bw, ptr %40, align 4
  store float %i.bc, ptr %46, align 4
  store float %i.bg, ptr %48, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 124
  %i.by = load float, ptr %i.bx, align 4          ; 2 uses
  %i.bz = call noundef float @cosf(float noundef %i.by) #21 ; 8 uses
  %i.ca = call noundef float @sinf(float noundef %i.by) #21 ; 2 uses
  %i.cb = fneg float %i.ca                        ; 4 uses
  %i.cc = extractelement <2 x float> %58, i64 1   ; 3 uses
  %i.cd = fmul float %i.cc, 0.000000e+00          ; 2 uses
  %i.ce = extractelement <2 x float> %58, i64 0   ; 4 uses
  %i.cf = fadd float %i.ce, %i.cd
  %i.cg = fmul float %i.cc, %i.bz
  %i.ch = call float @llvm.fmuladd.f32(float %i.ce, float 0.000000e+00, float %i.cg)
  %i.ci = fmul float %i.cc, %i.cb
  %i.cj = call float @llvm.fmuladd.f32(float %i.ce, float 0.000000e+00, float %i.ci)
  %i.ck = call float @llvm.fmuladd.f32(float %i.bz, float %11, float %i.cj)
  %i.cl = call float @llvm.fmuladd.f32(float %15, float 0.000000e+00, float %i.ck) ; 4 uses
  %i.cm = call float @llvm.fmuladd.f32(float %i.ce, float 0.000000e+00, float %i.cd)
  %i.cn = call float @llvm.fmuladd.f32(float %11, float 0.000000e+00, float %i.cm)
  %i.co = fadd float %15, %i.cn                   ; 4 uses
  %i.cp = extractelement <2 x float> %i.bo, i64 1 ; 3 uses
  %i.cq = fmul float %i.cp, 0.000000e+00          ; 2 uses
  %i.cr = extractelement <2 x float> %i.bo, i64 0 ; 4 uses
  %i.cs = fadd float %i.cr, %i.cq
  %i.ct = fmul float %i.cp, %i.bz
  %i.cu = call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.ct)
  %i.cv = fmul float %i.cp, %i.cb
  %i.cw = call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.cv)
  %i.cx = call float @llvm.fmuladd.f32(float %i.bz, float %21, float %i.cw)
  %i.cy = call float @llvm.fmuladd.f32(float %24, float 0.000000e+00, float %i.cx) ; 4 uses
  %i.cz = call float @llvm.fmuladd.f32(float %i.cr, float 0.000000e+00, float %i.cq)
  %i.da = call float @llvm.fmuladd.f32(float %21, float 0.000000e+00, float %i.cz)
  %i.db = fadd float %24, %i.da                   ; 4 uses
  %i.dc = extractelement <2 x float> %66, i64 1   ; 3 uses
  %i.dd = fmul float %i.dc, 0.000000e+00          ; 2 uses
  %i.de = extractelement <2 x float> %66, i64 0   ; 4 uses
  %i.df = fadd float %i.de, %i.dd
  %i.dg = fmul float %i.dc, %i.bz
  %i.dh = call float @llvm.fmuladd.f32(float %i.de, float 0.000000e+00, float %i.dg)
  %i.di = fmul float %i.dc, %i.cb
  %i.dj = call float @llvm.fmuladd.f32(float %i.de, float 0.000000e+00, float %i.di)
  %i.dk = call float @llvm.fmuladd.f32(float %i.bz, float %35, float %i.dj)
  %i.dl = call float @llvm.fmuladd.f32(float %39, float 0.000000e+00, float %i.dk) ; 4 uses
  %i.dm = call float @llvm.fmuladd.f32(float %i.de, float 0.000000e+00, float %i.dd)
  %i.dn = call float @llvm.fmuladd.f32(float %35, float 0.000000e+00, float %i.dm)
  %i.do = fadd float %39, %i.dn                   ; 4 uses
  %i.dp = extractelement <2 x float> %i.bw, i64 1 ; 3 uses
  %i.dq = fmul float %i.dp, 0.000000e+00          ; 2 uses
  %i.dr = extractelement <2 x float> %i.bw, i64 0 ; 4 uses
  %i.ds = fadd float %i.dr, %i.dq
  %i.dt = fmul float %i.dp, %i.bz
  %i.du = call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.dt)
  %i.dv = fmul float %i.dp, %i.cb
  %i.dw = call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.dv)
  %i.dx = call float @llvm.fmuladd.f32(float %i.bz, float %i.bc, float %i.dw)
  %i.dy = call float @llvm.fmuladd.f32(float %i.bg, float 0.000000e+00, float %i.dx) ; 4 uses
  %i.dz = call float @llvm.fmuladd.f32(float %i.dr, float 0.000000e+00, float %i.dq)
  %i.ea = call float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.dz)
  %i.eb = fadd float %i.bg, %i.ea                 ; 4 uses
  store float %i.cl, ptr %i.ak, align 4
  store float %i.co, ptr %i.am, align 8
  store float %i.cy, ptr %i.as, align 4
  store float %i.db, ptr %i.au, align 8
  store float %i.dl, ptr %31, align 4
  store float %i.do, ptr %33, align 8
  store float %i.dy, ptr %46, align 4
  store float %i.eb, ptr %48, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ed = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ca, i64 1 ; 4 uses
  %i.ee = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.du, i64 1
  %i.ei = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ef, <2 x float> %i.eh)
  %i.ej = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> zeroinitializer, <2 x float> %i.ei) ; 4 uses
  store <2 x float> %i.el, ptr %40, align 4
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = fmul <2 x float> %i.em, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ep = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = extractelement <2 x float> %i.en, i64 0 ; 2 uses
  %i.eu = extractelement <2 x float> %i.el, i64 0 ; 2 uses
  %i.ev = call float @llvm.fmuladd.f32(float %i.eu, float 0.000000e+00, float %i.et)
  %i.ew = call float @llvm.fmuladd.f32(float %i.dy, float 0.000000e+00, float %i.ev)
  %i.ex = fadd float %i.eb, %i.ew                 ; 4 uses
  %i.ey = insertelement <2 x float> poison, float %35, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x float> poison, float %i.df, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.dh, i64 1
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ez, <2 x float> %i.fb)
  %i.fd = insertelement <2 x float> poison, float %39, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> zeroinitializer, <2 x float> %i.fc) ; 4 uses
  store <2 x float> %i.ff, ptr %25, align 4
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = fmul <2 x float> %i.fg, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.fi = extractelement <2 x float> %i.fh, i64 0 ; 2 uses
  %i.fj = extractelement <2 x float> %i.ff, i64 0 ; 2 uses
  %i.fk = call float @llvm.fmuladd.f32(float %i.fj, float 0.000000e+00, float %i.fi)
  %i.fl = call float @llvm.fmuladd.f32(float %i.dl, float 0.000000e+00, float %i.fk)
  %i.fm = fadd float %i.do, %i.fl                 ; 4 uses
  %i.fn = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = insertelement <2 x float> poison, float %i.do, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = insertelement <2 x float> poison, float %21, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.cu, i64 1
  %i.fw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ft, <2 x float> %i.fv)
  %i.fx = insertelement <2 x float> poison, float %24, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> zeroinitializer, <2 x float> %i.fw) ; 4 uses
  store <2 x float> %i.fz, ptr %i.ao, align 4
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gb = fmul <2 x float> %i.ga, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.gc = extractelement <2 x float> %i.gb, i64 0 ; 2 uses
  %i.gd = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  %i.ge = call float @llvm.fmuladd.f32(float %i.gd, float 0.000000e+00, float %i.gc)
  %i.gf = call float @llvm.fmuladd.f32(float %i.cy, float 0.000000e+00, float %i.ge)
  %i.gg = fadd float %i.db, %i.gf                 ; 4 uses
  %i.gh = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = insertelement <2 x float> poison, float %i.db, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = insertelement <2 x float> poison, float %11, i64 0
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.go = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.ch, i64 1
  %i.gq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.gn, <2 x float> %i.gp)
  %i.gr = insertelement <2 x float> poison, float %15, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> zeroinitializer, <2 x float> %i.gq) ; 4 uses
  store <2 x float> %i.gt, ptr %i.ai, align 4
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = fmul <2 x float> %i.gu, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 0 ; 2 uses
  %i.gx = extractelement <2 x float> %i.gt, i64 0 ; 2 uses
  %i.gy = call float @llvm.fmuladd.f32(float %i.gx, float 0.000000e+00, float %i.gw)
  %i.gz = call float @llvm.fmuladd.f32(float %i.cl, float 0.000000e+00, float %i.gy)
  %i.ha = fadd float %i.co, %i.gz                 ; 4 uses
  %i.hb = load float, ptr %i.ec, align 8          ; 2 uses
  %i.hc = call noundef float @cosf(float noundef %i.hb) #21 ; 5 uses
  %i.hd = call noundef float @sinf(float noundef %i.hb) #21 ; 5 uses
  %i.he = fneg float %i.hd
  %i.hf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hc, i64 0 ; 4 uses
  %i.hg = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hg, <2 x float> %i.gv)
  %i.hi = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0 ; 4 uses
  %i.hj = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.hk, <2 x float> %i.hh)
  %i.hm = insertelement <2 x float> poison, float %i.co, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> zeroinitializer, <2 x float> %i.hl) ; 5 uses
  %i.hp = call float @llvm.fmuladd.f32(float %i.hd, float %i.gx, float %i.gw)
  %i.hq = call float @llvm.fmuladd.f32(float %i.hc, float %i.cl, float %i.hp)
  %i.hr = call float @llvm.fmuladd.f32(float %i.co, float 0.000000e+00, float %i.hq) ; 4 uses
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.gh, <2 x float> %i.gb)
  %i.ht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.gj, <2 x float> %i.hs)
  %i.hu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gl, <2 x float> zeroinitializer, <2 x float> %i.ht) ; 5 uses
  %i.hv = call float @llvm.fmuladd.f32(float %i.hd, float %i.gd, float %i.gc)
  %i.hw = call float @llvm.fmuladd.f32(float %i.hc, float %i.cy, float %i.hv)
  %i.hx = call float @llvm.fmuladd.f32(float %i.db, float 0.000000e+00, float %i.hw) ; 4 uses
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.fn, <2 x float> %i.fh)
  %i.hz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.fp, <2 x float> %i.hy)
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> zeroinitializer, <2 x float> %i.hz) ; 5 uses
  %i.ib = call float @llvm.fmuladd.f32(float %i.hd, float %i.fj, float %i.fi)
  %i.ic = call float @llvm.fmuladd.f32(float %i.hc, float %i.dl, float %i.ib)
  %i.id = call float @llvm.fmuladd.f32(float %i.do, float 0.000000e+00, float %i.ic) ; 4 uses
  %i.ie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.eo, <2 x float> %i.en)
  %i.if = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.eq, <2 x float> %i.ie)
  %i.ig = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> zeroinitializer, <2 x float> %i.if) ; 5 uses
  %i.ih = call float @llvm.fmuladd.f32(float %i.hd, float %i.eu, float %i.et)
  %i.ii = call float @llvm.fmuladd.f32(float %i.hc, float %i.dy, float %i.ih)
  %i.ij = call float @llvm.fmuladd.f32(float %i.eb, float 0.000000e+00, float %i.ii) ; 3 uses
  store <2 x float> %i.ho, ptr %i.ai, align 4
  store float %i.hr, ptr %i.ak, align 4
  store float %i.ha, ptr %i.am, align 8
  store <2 x float> %i.hu, ptr %i.ao, align 4
  store float %i.hx, ptr %i.as, align 4
  store float %i.gg, ptr %i.au, align 8
  store <2 x float> %i.ia, ptr %25, align 4
  store float %i.id, ptr %31, align 4
  store float %i.fm, ptr %33, align 8
  store <2 x float> %i.ig, ptr %40, align 4
  store float %i.ij, ptr %46, align 4
  store float %i.ex, ptr %48, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.s, i64 132
  %i.il = load float, ptr %i.ik, align 4          ; 2 uses
  %i.im = call noundef float @cosf(float noundef %i.il) #21 ; 2 uses
  %i.in = call noundef float @sinf(float noundef %i.il) #21 ; 2 uses
  %i.io = fneg float %i.in
  %i.ip = extractelement <2 x float> %i.ho, i64 1
  %i.iq = fmul float %i.ip, 0.000000e+00
  %i.ir = extractelement <2 x float> %i.ho, i64 0
  %i.is = call float @llvm.fmuladd.f32(float %i.ir, float 0.000000e+00, float %i.iq) ; 2 uses
  %i.it = fadd float %i.hr, %i.is
  %i.iu = call float @llvm.fmuladd.f32(float %i.ha, float 0.000000e+00, float %i.it)
  %i.iv = call float @llvm.fmuladd.f32(float %i.hr, float 0.000000e+00, float %i.is)
  %i.iw = fadd float %i.ha, %i.iv
  %i.ix = extractelement <2 x float> %i.hu, i64 1
  %i.iy = fmul float %i.ix, 0.000000e+00
  %i.iz = extractelement <2 x float> %i.hu, i64 0
  %i.ja = call float @llvm.fmuladd.f32(float %i.iz, float 0.000000e+00, float %i.iy) ; 2 uses
  %i.jb = fadd float %i.hx, %i.ja
  %i.jc = call float @llvm.fmuladd.f32(float %i.gg, float 0.000000e+00, float %i.jb)
  %i.jd = call float @llvm.fmuladd.f32(float %i.hx, float 0.000000e+00, float %i.ja)
  %i.je = fadd float %i.gg, %i.jd
  %i.jf = extractelement <2 x float> %i.ia, i64 1
  %i.jg = fmul float %i.jf, 0.000000e+00
  %i.jh = extractelement <2 x float> %i.ia, i64 0
  %i.ji = call float @llvm.fmuladd.f32(float %i.jh, float 0.000000e+00, float %i.jg) ; 2 uses
  %i.jj = fadd float %i.id, %i.ji
  %i.jk = call float @llvm.fmuladd.f32(float %i.fm, float 0.000000e+00, float %i.jj)
  %i.jl = call float @llvm.fmuladd.f32(float %i.id, float 0.000000e+00, float %i.ji)
  %i.jm = fadd float %i.fm, %i.jl
  %i.jn = extractelement <2 x float> %i.ig, i64 1
  %i.jo = fmul float %i.jn, 0.000000e+00
  %i.jp = extractelement <2 x float> %i.ig, i64 0
  %i.jq = call float @llvm.fmuladd.f32(float %i.jp, float 0.000000e+00, float %i.jo) ; 2 uses
  %i.jr = fadd float %i.ij, %i.jq
  %i.js = insertelement <2 x float> poison, float %i.ij, i64 0 ; 2 uses
  %i.jt = insertelement <2 x float> %i.js, float %i.ex, i64 1
  %i.ju = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jv = insertelement <2 x float> %i.ju, float %i.jr, i64 1
  %i.jw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> zeroinitializer, <2 x float> %i.jv) ; 2 uses
  %i.jx = extractelement <2 x float> %i.jw, i64 0
  %i.jy = fadd float %i.ex, %i.jx
  %i.jz = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ka = insertelement <2 x float> poison, float %i.in, i64 0
  %i.kb = insertelement <2 x float> %i.ka, float %i.im, i64 1 ; 4 uses
  %i.kc = fmul <2 x float> %i.jz, %i.kb
  %i.kd = insertelement <2 x float> poison, float %i.im, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %i.io, i64 1 ; 4 uses
  %i.kf = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kf, <2 x float> %i.kc)
  %i.kh = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ki, <2 x float> zeroinitializer, <2 x float> %i.kg)
  %i.kk = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.kl = shufflevector <2 x float> %i.kk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.km = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> zeroinitializer, <2 x float> %i.kj)
  store <2 x float> %i.km, ptr %i.ai, align 4
  store float %i.iu, ptr %i.ak, align 4
  store float %i.iw, ptr %i.am, align 8
  %i.kn = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ko = fmul <2 x float> %i.kn, %i.kb
  %i.kp = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kp, <2 x float> %i.ko)
  %i.kr = insertelement <2 x float> poison, float %i.hx, i64 0
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> zeroinitializer, <2 x float> %i.kq)
  %i.ku = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> zeroinitializer, <2 x float> %i.kt)
  store <2 x float> %i.kw, ptr %i.ao, align 4
  store float %i.jc, ptr %i.as, align 4
  store float %i.je, ptr %i.au, align 8
  %i.kx = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ky = fmul <2 x float> %i.kx, %i.kb
  %i.kz = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.kz, <2 x float> %i.ky)
  %i.lb = insertelement <2 x float> poison, float %i.id, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> zeroinitializer, <2 x float> %i.la)
  %i.le = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.lf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lf, <2 x float> zeroinitializer, <2 x float> %i.ld)
  store <2 x float> %i.lg, ptr %25, align 4
  store float %i.jk, ptr %31, align 4
  store float %i.jm, ptr %33, align 8
  %i.lh = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.li = fmul <2 x float> %i.lh, %i.kb
  %i.lj = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.lj, <2 x float> %i.li)
  %i.ll = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> zeroinitializer, <2 x float> %i.lk)
  %i.ln = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> zeroinitializer, <2 x float> %i.lm)
  store <2 x float> %i.lp, ptr %40, align 4
  %i.lq = extractelement <2 x float> %i.jw, i64 1
  store float %i.lq, ptr %46, align 4
  store float %i.jy, ptr %48, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.aa, i64 1104
  store i32 1, ptr %i.lr, align 8
  %i.ls = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #24
          to label %bb.r unwind label %.loopexit  ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.lt = getelementptr inbounds nuw i8, ptr %i.aa, i64 1112 ; 2 uses
  store ptr %i.ls, ptr %i.lt, align 8
  %i.lu = load ptr, ptr %i.a, align 8
  invoke void @_ZN6Assimp13SceneCombiner4CopyEPP6aiNodePKS1_(ptr noundef nonnull %i.ls, ptr noundef %i.lu)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.lv = load ptr, ptr %i.lt, align 8
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 1096
  store ptr %i.aa, ptr %i.lx, align 8
  %i.ly = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit unwind label %.loopexit ; 2 uses

_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.s
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store ptr %i.aa, ptr %i.lz, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ly, ptr noundef nonnull align 8 dereferenceable(24) %3) #21
  %i.ma = load i64, ptr %i.c, align 8
  %i.mb = add i64 %i.ma, 1
  store i64 %i.mb, ptr %i.c, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx114listIP6aiNodeSaIS2_EE9push_backERKS2_.exit, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.sroa.0124.0 = load ptr, ptr %.sroa.0124.0139, align 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0124.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %bb.p
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 1144) #23
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.u, %bb.j, %bb.i
  %.pn29 = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.w, %bb.i ], [ %i.mc, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ag

bb.w:                                             ; preds = %._crit_edge
  %i.md = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.md, ptr noundef nonnull @.str.8)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.md, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.ah unwind label %bb.e

bb.y:                                             ; preds = %bb.w
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.md) #21
  br label %bb.ag

bb.z:                                             ; preds = %._crit_edge
  %i.mf = load i64, ptr %i.c, align 8             ; 2 uses
  %i.mg = trunc i64 %i.mf to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.d, i64 1104
  store i32 %i.mg, ptr %i.mh, align 8
  %i.mi = shl i64 %i.mf, 3
  %i.mj = and i64 %i.mi, 34359738360
  %i.mk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mj) #24
          to label %.lr.ph144.preheader unwind label %bb.af

.lr.ph144.preheader:                              ; preds = %bb.z
  %i.ml = getelementptr inbounds nuw i8, ptr %i.d, i64 1112 ; 2 uses
  store ptr %i.mk, ptr %i.ml, align 8
  br label %.lr.ph144

._crit_edge145:                                   ; preds = %.lr.ph144
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.mn = load ptr, ptr %i.mm, align 8            ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8
  %.not.i = icmp eq ptr %i.mn, %i.mp
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge145
  store ptr %i.d, ptr %i.mn, align 8
  %i.mq = load ptr, ptr %i.mm, align 8
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  store ptr %i.mr, ptr %i.mm, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.ab:                                            ; preds = %._crit_edge145
  %i.ms = load ptr, ptr %2, align 8               ; 4 uses
  %i.mt = ptrtoint ptr %i.mn to i64
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = sub i64 %i.mt, %i.mu                    ; 6 uses
  %i.mw = icmp eq i64 %i.mv, 9223372036854775800
  br i1 %i.mw, label %bb.ac, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #22
          to label %.noexc unwind label %bb.af

.noexc:                                           ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.mx = ashr exact i64 %i.mv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.mx, i64 1)
  %i.my = add nsw i64 %.sroa.speculated.i.i.i, %i.mx ; 2 uses
  %i.mz = icmp ult i64 %i.my, %i.mx
  %i.na = call i64 @llvm.umin.i64(i64 %i.my, i64 1152921504606846975)
  %i.nb = select i1 %i.mz, i64 1152921504606846975, i64 %i.na ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.nb, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.nc = shl nuw nsw i64 %i.nb, 3
  %i.nd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #24
          to label %.noexc50 unwind label %bb.af  ; 4 uses

.noexc50:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ne = getelementptr inbounds i8, ptr %i.nd, i64 %i.mv ; 2 uses
  store ptr %i.d, ptr %i.ne, align 8
  %i.nf = icmp sgt i64 %i.mv, 0
  br i1 %i.nf, label %bb.ad, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.ad:                                            ; preds = %.noexc50
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nd, ptr align 8 %i.ms, i64 %i.mv, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.ad, %.noexc50
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mv) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.nd, ptr %2, align 8
  store ptr %i.ng, ptr %i.mm, align 8
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nb
  store ptr %i.nh, ptr %i.mo, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.af:                                            ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.ac, %bb.z
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %.lr.ph144
  %.025142 = phi i64 [ %i.nm, %.lr.ph144 ], [ 0, %.lr.ph144.preheader ] ; 2 uses
  %.sroa.056.0141 = phi ptr [ %i.no, %.lr.ph144 ], [ %i.n, %.lr.ph144.preheader ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.056.0141, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8
  %i.nl = load ptr, ptr %i.ml, align 8
  %i.nm = add i64 %.025142, 1
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.nl, i64 %.025142
  store ptr %i.nk, ptr %i.nn, align 8
  %i.no = load ptr, ptr %.sroa.056.0141, align 8  ; 2 uses
  %.not133 = icmp eq ptr %i.no, %3
  br i1 %.not133, label %._crit_edge145, label %.lr.ph144

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.aa
  %i.np = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i = icmp eq ptr %i.np, %3
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.nq, %.lr.ph.i.i ], [ %i.np, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.nq = load ptr, ptr %.09.i.i, align 8         ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #23
  %.not.i.i = icmp eq ptr %i.nq, %3
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !89

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void

bb.ag:                                            ; preds = %bb.af, %bb.y, %bb.v, %bb.f, %bb.e
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.v ], [ %i.p, %bb.e ], [ %i.me, %bb.y ], [ %i.ni, %bb.af ], [ %i.q, %bb.f ]
  %i.nr = load ptr, ptr %3, align 8               ; 2 uses
  %.not8.i.i51 = icmp eq ptr %i.nr, %3
  br i1 %.not8.i.i51, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit55, label %.lr.ph.i.i52

.lr.ph.i.i52:                                     ; preds = %bb.ag, %.lr.ph.i.i52
  %.09.i.i53 = phi ptr [ %i.ns, %.lr.ph.i.i52 ], [ %i.nr, %bb.ag ] ; 2 uses
  %i.ns = load ptr, ptr %.09.i.i53, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i53, i64 noundef 24) #23
  %.not.i.i54 = icmp eq ptr %i.ns, %3
  br i1 %.not.i.i54, label %_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit55, label %.lr.ph.i.i52, !llvm.loop !89

_ZNSt7__cxx1110_List_baseIP6aiNodeSaIS2_EED2Ev.exit55: ; preds = %.lr.ph.i.i52, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn29.pn

bb.ah:                                            ; preds = %bb.x, %bb.h
  unreachable
}

end_hunk_0
