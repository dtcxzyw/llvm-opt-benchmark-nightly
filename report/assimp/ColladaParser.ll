Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ColladaParser?download=true
inline.NumInlined: 6573
inline.NumDeleted: 2480
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEEixERSC_:bb.a
bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Collada20SemanticMappingTableD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada21InputSemanticMapEntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada21InputSemanticMapEntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp7Collada12MeshInstanceD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6Assimp7Collada20SemanticMappingTableEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #33
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6Assimp7Collada20SemanticMappingTableESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA43_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(38) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA38_KcERA43_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(43) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(38) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %4, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %4, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.aiMatrix4x4t) align 4 captures(none) initializes((0, 64)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(772) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #17 align 2 {
bb.a:
  store float 1.000000e+00, ptr %0, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 4
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not158 = icmp eq ptr %i.g, %i.i
  br i1 %.not158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted = load <4 x float>, ptr %0, align 1
  %.promoted207 = load <4 x float>, ptr %i.j, align 1
  %.promoted209 = load <4 x float>, ptr %i.k, align 1
  %.promoted211 = load float, ptr %i.l, align 1
  %.promoted213 = load float, ptr %i.m, align 1
  %.promoted215 = load float, ptr %i.n, align 1
  %.promoted217 = load float, ptr %i.f, align 1
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.h
  store <4 x float> %i.ln, ptr %0, align 1
  store <4 x float> %i.lm, ptr %i.j, align 1
  store <4 x float> %i.ll, ptr %i.k, align 1
  store float %i.lk, ptr %i.l, align 1
  store float %i.lj, ptr %i.m, align 1
  store float %i.li, ptr %i.n, align 1
  store float %i.lh, ptr %i.f, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.o = phi float [ %.promoted217, %.lr.ph ], [ %i.lh, %bb.h ]
  %i.p = phi float [ %.promoted215, %.lr.ph ], [ %i.li, %bb.h ]
  %i.q = phi float [ %.promoted213, %.lr.ph ], [ %i.lj, %bb.h ]
  %i.r = phi float [ %.promoted211, %.lr.ph ], [ %i.lk, %bb.h ]
  %i.s = phi <4 x float> [ %.promoted209, %.lr.ph ], [ %i.ll, %bb.h ]
  %i.t = phi <4 x float> [ %.promoted207, %.lr.ph ], [ %i.lm, %bb.h ]
  %i.u = phi <4 x float> [ %.promoted, %.lr.ph ], [ %i.ln, %bb.h ]
  %.sroa.0149.0159 = phi ptr [ %i.g, %.lr.ph ], [ %i.ls, %bb.h ] ; 33 uses
  %i.v = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lo, %bb.h ] ; 21 uses
  %i.w = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lp, %bb.h ] ; 21 uses
  %i.x = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.lq, %bb.h ] ; 20 uses
  %i.y = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lr, %bb.h ] ; 18 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 32
  %i.aa = load i32, ptr %i.z, align 8
  switch i32 %i.aa, label %bb.h [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.ad = load float, ptr %i.ac, align 4          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.af = load <2 x float>, ptr %i.ab, align 4    ; 3 uses
  %i.ag = load <2 x float>, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.ai = load float, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %i.al = load float, ptr %i.ak, align 8          ; 2 uses
  %3 = load <3 x float>, ptr %i.aj, align 4       ; 4 uses
  %4 = fmul float %i.al, %i.al
  %i.am = extractelement <3 x float> %3, i64 0    ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %4)
  %i.ao = extractelement <3 x float> %3, i64 2    ; 2 uses
  %i.ap = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.an) ; 2 uses
  %i.aq = fcmp oeq float %i.ap, 0.000000e+00
  br i1 %i.aq, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ap)
  %i.ar = fdiv float 1.000000e+00, %sqrt.i.i
  %5 = insertelement <3 x float> poison, float %i.ar, i64 0
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <3 x i32> zeroinitializer
  %7 = fmul <3 x float> %3, %6
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.c, %_ZN10aiVector3tIfEdVEf.exit.i
  %8 = phi <3 x float> [ %3, %bb.c ], [ %7, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 7 uses
  %i.as = fsub <2 x float> %i.ag, %i.af           ; 5 uses
  %i.at = fsub float %i.ai, %i.ad                 ; 4 uses
  %foldExtExtBinop.a = fmul <2 x float> %i.as, %i.as
  %i.au = extractelement <2 x float> %foldExtExtBinop.a, i64 1
  %i.av = extractelement <2 x float> %i.as, i64 0 ; 2 uses
  %i.aw = tail call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.au)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.aw) ; 2 uses
  %i.ay = fcmp oeq float %i.ax, 0.000000e+00
  br i1 %i.ay, label %_ZN10aiVector3tIfE9NormalizeEv.exit46, label %_ZN10aiVector3tIfEdVEf.exit.i44

_ZN10aiVector3tIfEdVEf.exit.i44:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i45 = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  %i.az = fdiv float 1.000000e+00, %sqrt.i.i45    ; 2 uses
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.as, %i.bb
  %i.bd = fmul float %i.at, %i.az
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit46

_ZN10aiVector3tIfE9NormalizeEv.exit46:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i44
  %.sroa.0120.0 = phi <2 x float> [ %i.as, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bc, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 4 uses
  %.sroa.8123.0 = phi float [ %i.at, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bd, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.0124.4.vec.extract128 = extractelement <2 x float> %.sroa.0120.0, i64 1
  %i.be = extractelement <3 x float> %8, i64 1
  %.sroa.0124.0.vec.extract126 = extractelement <2 x float> %.sroa.0120.0, i64 0
  %i.bf = extractelement <3 x float> %8, i64 0
  %9 = fneg <3 x float> %8
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.bg = shufflevector <2 x float> %.sroa.0120.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.8123.0, i64 0
  %i.bi = fmul <2 x float> %i.bh, %10
  %i.bj = insertelement <2 x float> %i.bg, float %.sroa.8123.0, i64 1
  %11 = shufflevector <3 x float> %8, <3 x float> poison, <2 x i32> <i32 2, i32 0>
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %11, <2 x float> %i.bi) ; 5 uses
  %i.bk = fneg float %i.bf
  %i.bl = fmul float %.sroa.0124.4.vec.extract128, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract126, float %i.be, float %i.bl) ; 4 uses
  %foldExtExtBinop205 = fmul <2 x float> %12, %12
  %i.bn = extractelement <2 x float> %foldExtExtBinop205, i64 1
  %i.bo = extractelement <2 x float> %12, i64 0   ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bn)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bp) ; 2 uses
  %i.br = fcmp oeq float %i.bq, 0.000000e+00
  br i1 %i.br, label %_ZN10aiVector3tIfE9NormalizeEv.exit53, label %_ZN10aiVector3tIfEdVEf.exit.i51

_ZN10aiVector3tIfEdVEf.exit.i51:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46
  %sqrt.i.i52 = tail call noundef float @llvm.sqrt.f32(float %i.bq)
  %i.bs = fdiv float 1.000000e+00, %sqrt.i.i52    ; 2 uses
  %i.bt = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x float> %12, %i.bu
  %i.bw = fmul float %i.bm, %i.bs
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit53

_ZN10aiVector3tIfE9NormalizeEv.exit53:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46, %_ZN10aiVector3tIfEdVEf.exit.i51
  %.sroa.0112.0 = phi <2 x float> [ %12, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.bv, %_ZN10aiVector3tIfEdVEf.exit.i51 ] ; 2 uses
  %.sroa.9119.0 = phi float [ %i.bm, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.bw, %_ZN10aiVector3tIfEdVEf.exit.i51 ]
  %i.bx = shufflevector <2 x float> %.sroa.0120.0, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.by = insertelement <3 x float> %i.bx, float %.sroa.8123.0, i64 2
  %i.bz = fneg <3 x float> %i.by                  ; 3 uses
  %13 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ca = fmul <4 x float> %13, %i.y
  %i.cb = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cc = fmul <4 x float> %i.cb, %i.y
  %i.cd = shufflevector <2 x float> %.sroa.0112.0, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ce = fmul <4 x float> %i.cd, %i.y
  %i.cf = shufflevector <2 x float> %.sroa.0112.0, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.x, <4 x float> %i.ce)
  %i.ch = insertelement <4 x float> poison, float %.sroa.9119.0, i64 0
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.w, <4 x float> %i.cg)
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.cj)
  %14 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %14, <4 x float> %i.x, <4 x float> %i.ca)
  %15 = shufflevector <3 x float> %8, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %15, <4 x float> %i.w, <4 x float> %i.cl)
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.cm)
  %i.co = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cp = fmul <4 x float> %i.y, %i.co
  %i.cq = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> zeroinitializer
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> %i.x, <4 x float> %i.cp)
  %i.cs = shufflevector <3 x float> %i.bz, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.w, <4 x float> %i.cr)
  %i.cu = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.x, <4 x float> %i.cc)
  %i.cw = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> %i.w, <4 x float> %i.cv)
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.ct)
  %i.da = fadd <4 x float> %i.v, %i.cy
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.dd = load float, ptr %i.dc, align 8
  %i.de = fmul float %i.dd, f0x40490FDB
  %i.df = fdiv float %i.de, 1.800000e+02          ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.dh = fmul <4 x float> %i.y, zeroinitializer
  %i.di = load float, ptr %i.dg, align 8          ; 3 uses
  %i.dj = load <3 x float>, ptr %i.db, align 4    ; 6 uses
  %i.dk = tail call noundef float @cosf(float noundef %i.df) #28 ; 4 uses
  %i.dl = tail call noundef float @sinf(float noundef %i.df) #28 ; 3 uses
  %i.dm = fsub float 1.000000e+00, %i.dk
  %i.dn = insertelement <3 x float> poison, float %i.dm, i64 0
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dp = fmul <3 x float> %i.dj, %i.do           ; 3 uses
  %i.dq = extractelement <3 x float> %i.dj, i64 0
  %i.dr = extractelement <3 x float> %i.dj, i64 2
  %i.ds = fmul float %i.dr, %i.dl                 ; 2 uses
  %i.dt = fneg float %i.ds
  %i.du = fmul float %i.di, %i.dl                 ; 2 uses
  %i.dv = fmul float %i.dq, %i.dl                 ; 2 uses
  %i.dw = fneg float %i.dv
  %i.dx = fneg float %i.du
  %i.dy = shufflevector <3 x float> %i.dj, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.dz = insertelement <3 x float> poison, float %i.du, i64 0
  %i.ea = insertelement <3 x float> %i.dz, float %i.dw, i64 1
  %i.eb = insertelement <3 x float> %i.ea, float %i.dk, i64 2
  %i.ec = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dp, <3 x float> %i.dy, <3 x float> %i.eb) ; 3 uses
  %i.ed = shufflevector <3 x float> %i.ec, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ee = fmul <4 x float> %i.y, %i.ed
  %i.ef = shufflevector <3 x float> %i.ec, <3 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> %i.x, <4 x float> %i.ee)
  %i.eh = shufflevector <3 x float> %i.ec, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ei = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> %i.w, <4 x float> %i.eg)
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.dh)
  %i.ek = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.ej)
  %i.el = shufflevector <3 x float> %i.dp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.em = shufflevector <3 x float> %i.dj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 poison>
  %i.en = insertelement <3 x float> %i.em, float %i.di, i64 2
  %i.eo = insertelement <3 x float> poison, float %i.dx, i64 0
  %i.ep = insertelement <3 x float> %i.eo, float %i.dk, i64 1
  %i.eq = insertelement <3 x float> %i.ep, float %i.ds, i64 2
  %i.er = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.el, <3 x float> %i.en, <3 x float> %i.eq) ; 3 uses
  %i.es = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.et = fmul <4 x float> %i.es, %i.y
  %i.eu = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %i.x, <4 x float> %i.et)
  %i.ew = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ew, <4 x float> %i.w, <4 x float> %i.ev)
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.ex)
  %i.ez = shufflevector <3 x float> %i.dp, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.fa = insertelement <3 x float> poison, float %i.di, i64 0
  %i.fb = shufflevector <3 x float> %i.fa, <3 x float> %i.dj, <3 x i32> <i32 0, i32 0, i32 5>
  %i.fc = insertelement <3 x float> poison, float %i.dt, i64 0
  %i.fd = insertelement <3 x float> %i.fc, float %i.dk, i64 1
  %i.fe = insertelement <3 x float> %i.fd, float %i.dv, i64 2
  %i.ff = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ez, <3 x float> %i.fb, <3 x float> %i.fe) ; 3 uses
  %i.fg = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fh = fmul <4 x float> %i.y, %i.fg
  %i.fi = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fi, <4 x float> %i.x, <4 x float> %i.fh)
  %i.fk = shufflevector <3 x float> %i.ff, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.w, <4 x float> %i.fj)
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.fl)
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.ei)
  %i.fo = fadd <4 x float> %i.v, %i.ek
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.fq = load float, ptr %i.fp, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.fs = load float, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.fu = load float, ptr %i.ft, align 4
  %i.fv = fmul <4 x float> %i.y, zeroinitializer  ; 2 uses
  %i.fw = fadd <4 x float> %i.x, %i.fv
  %i.fx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.fw)
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.fx)
  %i.fz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.y)
  %i.ga = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.fz)
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.ga)
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.fv)
  %i.gd = fadd <4 x float> %i.w, %i.gc
  %i.ge = insertelement <4 x float> poison, float %i.fs, i64 0
  %i.gf = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gg = fmul <4 x float> %i.gf, %i.y
  %i.gh = insertelement <4 x float> poison, float %i.fq, i64 0
  %i.gi = shufflevector <4 x float> %i.gh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gi, <4 x float> %i.x, <4 x float> %i.gg)
  %i.gk = insertelement <4 x float> poison, float %i.fu, i64 0
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gl, <4 x float> %i.w, <4 x float> %i.gj)
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.gd)
  %i.go = fadd <4 x float> %i.v, %i.gm
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.gq = load float, ptr %i.gp, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.gs = load float, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.gu = load float, ptr %i.gt, align 4
  %i.gv = fmul <4 x float> %i.y, zeroinitializer  ; 2 uses
  %i.gw = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gx, <4 x float> %i.x, <4 x float> %i.gv)
  %i.gz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.gy)
  %i.ha = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.gz)
  %i.hb = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hd = fmul <4 x float> %i.hc, %i.y
  %i.he = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.hd)
  %i.hf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.he)
  %i.hg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.hf)
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> zeroinitializer, <4 x float> %i.gv) ; 2 uses
  %i.hi = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hj, <4 x float> %i.w, <4 x float> %i.hh)
  %i.hl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> zeroinitializer, <4 x float> %i.hh)
  %i.hm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.v, <4 x float> zeroinitializer, <4 x float> %i.hk)
  %i.hn = fadd <4 x float> %i.v, %i.hl
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 36
  %i.hp = load float, ptr %i.ho, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 40
  %i.hr = load float, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 44
  %i.ht = load float, ptr %i.hs, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 48
  %i.hv = load float, ptr %i.hu, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 52
  %i.hx = load float, ptr %i.hw, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.hz = load float, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.ib = load float, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %i.id = load float, ptr %i.ic, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 68
  %i.if = load float, ptr %i.ie, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 72
  %i.ih = load float, ptr %i.ig, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 76
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 80
  %i.il = load float, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 84
  %i.in = load float, ptr %i.im, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 88
  %i.ip = load float, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 92
  %i.ir = load float, ptr %i.iq, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 96
  %i.it = load float, ptr %i.is, align 8
  %i.iu = insertelement <4 x float> poison, float %i.hx, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = fmul <4 x float> %i.iv, %i.y
  %i.ix = insertelement <4 x float> poison, float %i.hp, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.iy, <4 x float> %i.x, <4 x float> %i.iw)
  %i.ja = insertelement <4 x float> poison, float %i.if, i64 0
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jb, <4 x float> %i.w, <4 x float> %i.iz)
  %i.jd = insertelement <4 x float> poison, float %i.in, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.v, <4 x float> %i.jc)
  %i.jg = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul <4 x float> %i.jh, %i.y
  %i.jj = insertelement <4 x float> poison, float %i.hr, i64 0
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jk, <4 x float> %i.x, <4 x float> %i.ji)
  %i.jm = insertelement <4 x float> poison, float %i.ih, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.w, <4 x float> %i.jl)
  %i.jp = insertelement <4 x float> poison, float %i.ip, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jq, <4 x float> %i.v, <4 x float> %i.jo)
  %i.js = insertelement <4 x float> poison, float %i.ib, i64 0
end_hunk_0
