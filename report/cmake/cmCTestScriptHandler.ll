Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCTestScriptHandler?download=true
inline.NumInlined: 1450
inline.NumDeleted: 651
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN20cmCTestScriptHandlerD2Ev:bb.a
  br i1 %.not.i1, label %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i

_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI5cmakeSt14default_deleteIS0_EED2Ev.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(2202) %i.d) #21, !inline_history !128
  br label %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI5cmakeSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteI17cmGlobalGeneratorEclEPS0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !56   ; 3 uses
  %.not.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrI10cmMakefileSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteI10cmMakefileEclEPS0_.exit.i

_ZNKSt14default_deleteI10cmMakefileEclEPS0_.exit.i: ; preds = %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit
  tail call void @_ZN10cmMakefileD1Ev(ptr noundef nonnull align 8 dead_on_return(2952) dereferenceable(2952) %i.i) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 2952) #22
  br label %_ZNSt10unique_ptrI10cmMakefileSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI10cmMakefileSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrI17cmGlobalGeneratorSt14default_deleteIS0_EED2Ev.exit, %_ZNKSt14default_deleteI10cmMakefileEclEPS0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrI10cmMakefileSt14default_deleteIS0_EED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.p) #22
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt10unique_ptrI10cmMakefileSt14default_deleteIS0_EED2Ev.exit, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.u, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %i.x = load ptr, ptr %.05.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !65
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.w
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.t, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.ad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.u, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !67
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #22
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !58     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !65
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #22
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN20cmCTestScriptHandler22AddConfigurationScriptERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !68
  %i.g = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !69   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.i, ptr %i.a, align 8, !tbaa !70
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !64
  %i.l = load i64, ptr %i.a, align 8, !tbaa !70
  store i64 %i.l, ptr %i.f, align 8, !tbaa !65
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.b
  %i.m = phi ptr [ %i.k, %.noexc.i.i ], [ %i.f, %bb.b ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !65
  store i8 %i.n, ptr %i.m, align 1, !tbaa !65
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !69
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.t, ptr %i.b, align 8, !tbaa !59
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !57
  %.not.i2 = icmp eq ptr %i.w, %i.y
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i2, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.z = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.z, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !51
  %i.aa = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.aa, label %bb.g, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !50
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.g, %bb.f
  %i.ac = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.ad = shl nuw i64 1, %i.ac                    ; 2 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !70
  %i.af = or i64 %i.ae, %i.ad
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.i:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.ag = xor i64 %i.ad, -1
  %i.ah = load i64, ptr %i.w, align 8, !tbaa !70
  %i.ai = and i64 %i.ah, %i.ag
  br label %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.aj, ptr %i.w, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %2)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt14_Bit_referenceaSEb.exit.sink.split.i:      ; preds = %bb.i, %bb.h
  %.sink.i = phi i64 [ %i.af, %bb.h ], [ %i.ai, %bb.i ]
  store i64 %.sink.i, ptr %i.w, align 8, !tbaa !70
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.j, %_ZNSt14_Bit_referenceaSEb.exit.sink.split.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20cmCTestScriptHandler14ProcessHandlerEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %i.s, %bb.b ]
  ret i32 %.06.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.f = phi ptr [ %i.d, %.lr.ph ], [ %i.v, %bb.b ]
  %.08 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.b ]  ; 5 uses
  %.067 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.b ]
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.08
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.i = sdiv i64 %.08, 64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = and i64 %.08, -9223372036854775745
  %i.l = icmp ugt i64 %i.k, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.l, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.j, i64 %storemerge.idx.i.i.i.i.i
  %i.m = and i64 %.08, 63
  %i.n = shl nuw i64 1, %i.m
  %i.o = load i64, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !70
  %i.p = and i64 %i.o, %i.n
  %i.q = icmp ne i64 %i.p, 0
  %i.r = tail call noundef i32 @_ZN20cmCTestScriptHandler22RunConfigurationScriptERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i1 noundef zeroext %i.q)
  %i.s = or i32 %i.r, %.067                       ; 2 uses
  %i.t = add nuw i64 %.08, 1                      ; 2 uses
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !59
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 5
  %i.aa = icmp ult i64 %i.t, %i.z
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN20cmCTestScriptHandler22RunConfigurationScriptERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cmSystemTools::SaveRestoreEnvironment", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN13cmSystemTools22SaveRestoreEnvironmentC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %2, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.33, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.b = load ptr, ptr %1, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !69
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %i.b, i64 noundef %i.d)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !86   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #23
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !92
  %.not.i1.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.o = load i8, ptr %i.n, align 1, !tbaa !65
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
          to label %.noexc46 unwind label %bb.l

.noexc46:                                         ; preds = %bb.f
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.l, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc46, %bb.e
  %.0.i.i.i = phi i8 [ %i.o, %bb.e ], [ %i.s, %.noexc46 ]
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %.0.i.i.i)
          to label %.noexc48 unwind label %bb.l

.noexc48:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.l ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc48
  %i.v = load ptr, ptr %0, align 8, !tbaa !49
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.w, ptr %5, align 8, !tbaa !68, !alias.scope !139
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !69, !alias.scope !139
  store i8 0, ptr %i.w, align 8, !tbaa !65, !alias.scope !139
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94, !noalias !139 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !139 ; 2 uses
  %i.ac = icmp ugt ptr %i.z, %i.ab
  %.08.i.i.i = select i1 %i.ac, ptr %i.z, ptr %i.ab ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !95, !noalias !139 ; 2 uses
  %i.af = ptrtoint ptr %.08.i.i.i to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.ae, i64 noundef %i.ah)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !64, !alias.scope !139 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.w
  br i1 %i.al, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.am = load i64, ptr %i.w, align 8, !tbaa !65, !alias.scope !139
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #22
  br label %.body

bb.i:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  invoke void @_ZN7cmCTest3LogENS_7LogTypeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i32 noundef 5, ptr noundef nonnull align 8 %5, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ap = load ptr, ptr %5, align 8, !tbaa !64    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.w
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !65
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.at = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.at, ptr %4, align 8, !tbaa !55
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %4, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ay, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 80
end_hunk_0
