Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/unicode?download=true
inline.NumInlined: 780
inline.NumDeleted: 449
begin_hunk_0_@_ZN5Catch10Generators10GeneratorsIRA16_KcE4nextEv:bb.a
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add i64 %.pre, 1                         ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %i.q, %bb.c ], [ %.pre, %bb.b ]
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = icmp ult i64 %i.r, %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.y, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(16) ptr @_ZNK5Catch10Generators10GeneratorsIRA16_KcE3getEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 1 dereferenceable(16) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !233
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEOSI_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.Catch::Generators::Generators") align 8 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(26) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 1 dereferenceable(22) %7, ptr noundef nonnull align 1 dereferenceable(21) %8, ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(21) %10, ptr noundef nonnull align 1 dereferenceable(22) %11) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.Catch::Generators::GeneratorWrapper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !241 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA16_KcEE, i64 16), ptr %i.a, align 8, !tbaa !39, !noalias !241
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !41, !noalias !241
  %i.c = ptrtoint ptr %i.a to i64
  store i64 %i.c, ptr %12, align 8, !tbaa !76, !alias.scope !240
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators10GeneratorsIRA16_KcEE, i64 16), ptr %0, align 8, !tbaa !39, !alias.scope !242
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !alias.scope !242
  %i.e = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
          to label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i unwind label %.body, !noalias !242 ; 3 uses

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.d, align 8, !tbaa !73, !alias.scope !242
  store ptr %i.e, ptr %i.f, align 8, !tbaa !74, !alias.scope !242
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.h, ptr %i.g, align 8, !tbaa !61, !alias.scope !242
  invoke void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_SC_SK_SC_SK_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(26) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 1 dereferenceable(22) %7, ptr noundef nonnull align 1 dereferenceable(21) %8, ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(21) %10, ptr noundef nonnull align 1 dereferenceable(22) %11)
          to label %_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit unwind label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #19
  %i.j = load ptr, ptr %12, align 8, !tbaa !76    ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.j, null
  br i1 %.not.i.i12, label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit14, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i13

_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i
  %i.k = load ptr, ptr %12, align 8, !tbaa !76    ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #19, !inline_history !2
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA16_KcJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_S8_SG_S8_SG_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISI_EEDpOT0_.exit, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret void

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i13: ; preds = %.body
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19, !inline_history !2
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit14

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit14: ; preds = %.body, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA24_S2_RA21_S2_RA18_S2_RA26_S2_RA15_S2_RA22_S2_SC_SK_SC_SK_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(21) %3, ptr noundef nonnull align 1 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(26) %5, ptr noundef nonnull align 1 dereferenceable(15) %6, ptr noundef nonnull align 1 dereferenceable(22) %7, ptr noundef nonnull align 1 dereferenceable(21) %8, ptr noundef nonnull align 1 dereferenceable(22) %9, ptr noundef nonnull align 1 dereferenceable(21) %10, ptr noundef nonnull align 1 dereferenceable(22) %11) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !76
  store i64 %i.e, ptr %i.b, align 8, !tbaa !76
  store ptr null, ptr %1, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !74
  br label %_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(24) %2)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(21) %3)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(18) %4)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(26) %5)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(16) %6)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(22) %7)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(21) %8)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(22) %9)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(21) %10)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(22) %11)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !243
  br label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i

_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA16_KcEEEclEPS6_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA16_KcEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !73
  br label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA16_KcEES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !76
  store i64 %i.r, ptr %i.q, align 8, !tbaa !76
  store ptr null, ptr %2, align 8, !tbaa !76
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !76, !alias.scope !262, !noalias !260
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !76, !alias.scope !262, !noalias !260
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !263, !noalias !262
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !76, !alias.scope !263, !noalias !262
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !76, !alias.scope !262, !noalias !260
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !76, !alias.scope !262, !noalias !260
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !76, !alias.scope !261, !noalias !260
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !76, !alias.scope !260, !noalias !261
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !76, !alias.scope !261, !noalias !260
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !251

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ak = add i64 %i.d, -8
  %i.al = sub i64 %i.ak, %i.m                     ; 3 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.al, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ao = and i64 %i.al, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !76, !alias.scope !266, !noalias !264
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !76, !alias.scope !266, !noalias !264
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !76, !alias.scope !267, !noalias !266
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !76, !alias.scope !267, !noalias !266
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !76, !alias.scope !266, !noalias !264
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !76, !alias.scope !266, !noalias !264
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !258

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.an, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !76, !alias.scope !265, !noalias !264
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !76, !alias.scope !264, !noalias !265
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !76, !alias.scope !265, !noalias !264
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !259

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !61
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !73
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !74
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA16_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !280 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA16_KcEE, i64 16), ptr %i.b, align 8, !tbaa !39, !noalias !280
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !41, !noalias !280
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.f, align 8, !tbaa !76
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !74
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !73   ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc7 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit5

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %.noexc8 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit5 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i64 %i.d, ptr %i.v, align 8, !tbaa !76
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = and i64 %i.x, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ab
  %scevgep13 = getelementptr i8, ptr %i.j, i64 %i.ab
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !76, !alias.scope !283, !noalias !281
  %wide.load15 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !76, !alias.scope !283, !noalias !281
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !76, !alias.scope !284, !noalias !283
  store <2 x i64> %wide.load15, ptr %i.ah, align 8, !tbaa !76, !alias.scope !284, !noalias !283
  %i.ai = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !76, !alias.scope !283, !noalias !281
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !76, !alias.scope !283, !noalias !281
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !282, !noalias !281
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !tbaa !76, !alias.scope !281, !noalias !282
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !76, !alias.scope !282, !noalias !281
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !279

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc8 ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aq) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !73
  store ptr %i.an, ptr %i.e, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !61
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit: ; preds = %bb.b, %.noexc
  ret void

_ZN5Catch10Generators16GeneratorWrapperIRA16_KcED2Ev.exit5: ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA16_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #19, !inline_history !2
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators20SingleValueGeneratorIRA16_KcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Catch10Generators20SingleValueGeneratorIRA16_KcE4nextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(16) ptr @_ZNK5Catch10Generators20SingleValueGeneratorIRA16_KcE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286, !nonnull !50
  ret ptr %i.b
}

; Function Attrs: nounwind
declare void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Catch10BinaryExprIRKPKcRA1_S1_E29streamReconstructedExpressionERSo(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290, !nonnull !50, !align !52
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41, !noalias !291
  call void @_ZN5Catch11StringMakerIPKcvE7convertB5cxx11ES2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !292, !nonnull !50
  invoke void @_ZN5Catch11StringMakerIA1_cvE7convertB5cxx11EPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit unwind label %bb.c

_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN5Catch29formatReconstructedExpressionERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefES8_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.g = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !23
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.l = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !23
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

bb.d:                                             ; preds = %_ZN5Catch6Detail9stringifyIA1_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.r, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.x = load ptr, ptr %2, align 8, !tbaa !24     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !23
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
end_hunk_0
begin_hunk_1_@_ZN5Catch10Generators10GeneratorsIRA2_KcE4nextEv:bb.a
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l), !inline_history !295
  %.pre = load i64, ptr %i.a, align 8, !tbaa !88  ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = add i64 %.pre, 1                         ; 2 uses
  store i64 %i.q, ptr %i.a, align 8, !tbaa !88
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %i.q, %bb.c ], [ %.pre, %bb.b ]
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !89
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = icmp ult i64 %i.r, %i.x
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.y, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(2) ptr @_ZNK5Catch10Generators10GeneratorsIRA2_KcE3getEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !88
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef nonnull align 1 dereferenceable(2) ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f), !inline_history !296
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEOSE_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.Catch::Generators::Generators.53") align 8 %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(2) %11) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.Catch::Generators::GeneratorWrapper.60", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !304 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA2_KcEE, i64 16), ptr %i.a, align 8, !tbaa !39, !noalias !304
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !41, !noalias !304
  %i.c = ptrtoint ptr %i.a to i64
  store i64 %i.c, ptr %12, align 8, !tbaa !92, !alias.scope !303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators10GeneratorsIRA2_KcEE, i64 16), ptr %0, align 8, !tbaa !39, !alias.scope !305
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !alias.scope !305
  %i.e = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24
          to label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i unwind label %.body, !noalias !305 ; 3 uses

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.d, align 8, !tbaa !89, !alias.scope !305
  store ptr %i.e, ptr %i.f, align 8, !tbaa !90, !alias.scope !305
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %i.h, ptr %i.g, align 8, !tbaa !82, !alias.scope !305
  invoke void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA5_S2_S4_RA3_S2_RA7_S2_S4_SC_S4_RA4_S2_SC_S4_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(2) %11)
          to label %_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit unwind label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #19
  call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #19
  %i.j = load ptr, ptr %12, align 8, !tbaa !92    ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.j, null
  br i1 %.not.i.i12, label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit14, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i13

_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit: ; preds = %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit.i.i.i
  %i.k = load ptr, ptr %12, align 8, !tbaa !92    ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #19, !inline_history !3
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit: ; preds = %_ZN5Catch10Generators14makeGeneratorsIRA2_KcJRA5_S2_S4_RA3_S2_RA7_S2_S4_S8_S4_RA4_S2_S8_S4_EEENS0_10GeneratorsIT_EEONS0_16GeneratorWrapperISE_EEDpOT0_.exit, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  ret void

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i13: ; preds = %.body
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.j) #19, !inline_history !3
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit14

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit14: ; preds = %.body, %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateINS0_16GeneratorWrapperIS4_EEJRA5_S2_S4_RA3_S2_RA7_S2_S4_SC_S4_RA4_S2_SC_S4_EEEvOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 1 dereferenceable(3) %4, ptr noundef nonnull align 1 dereferenceable(7) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(3) %7, ptr noundef nonnull align 1 dereferenceable(2) %8, ptr noundef nonnull align 1 dereferenceable(4) %9, ptr noundef nonnull align 1 dereferenceable(3) %10, ptr noundef nonnull align 1 dereferenceable(2) %11) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !92
  store i64 %i.e, ptr %i.b, align 8, !tbaa !92
  store ptr null, ptr %1, align 8, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !90
  br label %_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit

_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateEONS0_16GeneratorWrapperIS4_EE.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(5) %2)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %3)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(3) %4)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(7) %5)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %6)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(3) %7)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %8)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(4) %9)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(3) %10)
  tail call void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %11)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #19, !inline_history !306
  br label %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i

_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5Catch10Generators10IGeneratorIRA2_KcEEEclEPS6_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5Catch10Generators16GeneratorWrapperIRA2_KcEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5Catch10Generators16GeneratorWrapperIRA2_KcEES6_EvT_S8_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !89     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !92
  store i64 %i.r, ptr %i.q, align 8, !tbaa !92
  store ptr null, ptr %2, align 8, !tbaa !92
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 3 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader61, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.w = and i64 %i.t, -8
  %i.x = add i64 %i.w, 8                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.x
  %scevgep35 = getelementptr i8, ptr %i.c, i64 %i.x
  %bound0 = icmp ult ptr %i.p, %scevgep35
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader61, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.c, i64 %i.ab ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ac = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !tbaa !92, !alias.scope !325, !noalias !323
  %wide.load37 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !92, !alias.scope !325, !noalias !323
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !92, !alias.scope !326, !noalias !325
  store <2 x i64> %wide.load37, ptr %i.ad, align 8, !tbaa !92, !alias.scope !326, !noalias !325
  %i.ae = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !tbaa !92, !alias.scope !325, !noalias !323
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !92, !alias.scope !325, !noalias !323
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !313

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i.preheader61

.lr.ph.i.i.i.preheader61:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader61, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader61 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ag = load i64, ptr %.0911.i.i.i, align 8, !tbaa !92, !alias.scope !324, !noalias !323
  store i64 %i.ag, ptr %.012.i.i.i, align 8, !tbaa !92, !alias.scope !323, !noalias !324
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !92, !alias.scope !324, !noalias !323
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ah, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit, label %.lr.ph.i.i.i, !llvm.loop !314

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit ], [ %i.z, %middle.block ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %i.aj = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %i.ak = add i64 %i.d, -8
  %i.al = sub i64 %i.ak, %i.m                     ; 3 uses
  %i.am = lshr i64 %i.al, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check46 = icmp ult i64 %i.al, 152
  br i1 %min.iters.check46, label %.lr.ph.i.i.i17.preheader60, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i.i.i17.preheader
  %i.ao = and i64 %i.al, -8                       ; 2 uses
  %i.ap = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.ao
  %scevgep40 = getelementptr i8, ptr %i.ap, i64 16
  %i.aq = getelementptr i8, ptr %1, i64 %i.ao
  %scevgep41 = getelementptr i8, ptr %i.aq, i64 8
  %bound042 = icmp ult ptr %i.aj, %scevgep41
  %bound143 = icmp ult ptr %1, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %.lr.ph.i.i.i17.preheader60, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %i.an, 4611686018427387900   ; 3 uses
  %i.ar = shl i64 %n.vec48, 3                     ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %1, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.au = shl i64 %index50, 3                     ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.au ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.av = getelementptr i8, ptr %next.gep52, i64 16
  %wide.load53 = load <2 x i64>, ptr %next.gep52, align 8, !tbaa !92, !alias.scope !329, !noalias !327
  %wide.load54 = load <2 x i64>, ptr %i.av, align 8, !tbaa !92, !alias.scope !329, !noalias !327
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %wide.load53, ptr %next.gep51, align 8, !tbaa !92, !alias.scope !330, !noalias !329
  store <2 x i64> %wide.load54, ptr %i.aw, align 8, !tbaa !92, !alias.scope !330, !noalias !329
  %i.ax = getelementptr i8, ptr %next.gep52, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep52, align 8, !tbaa !92, !alias.scope !329, !noalias !327
  store <2 x ptr> splat (ptr null), ptr %i.ax, align 8, !tbaa !92, !alias.scope !329, !noalias !327
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ay, label %middle.block56, label %vector.body49, !llvm.loop !321

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.an, %n.vec48
  br i1 %cmp.n57, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader60

.lr.ph.i.i.i17.preheader60:                       ; preds = %vector.memcheck39, %.lr.ph.i.i.i17.preheader, %middle.block56
  %.012.i.i.i18.ph = phi ptr [ %i.aj, %vector.memcheck39 ], [ %i.aj, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block56 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck39 ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.at, %middle.block56 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader60, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.bb, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader60 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ba, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader60 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.az = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !92, !alias.scope !328, !noalias !327
  store i64 %i.az, ptr %.012.i.i.i18, align 8, !tbaa !92, !alias.scope !327, !noalias !328
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !92, !alias.scope !328, !noalias !327
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !322

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block56, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.aj, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.as, %middle.block56 ], [ %i.bb, %.lr.ph.i.i.i17 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !82
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #20
  br label %_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !89
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !90
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators10GeneratorsIRA2_KcE8populateES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(2) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24, !noalias !343 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Catch10Generators20SingleValueGeneratorIRA2_KcEE, i64 16), ptr %i.b, align 8, !tbaa !39, !noalias !343
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !41, !noalias !343
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.f, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.e, align 8, !tbaa !90
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !89   ; 10 uses
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc7 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit5

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %.noexc8 unwind label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit5 ; 10 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i64 %i.d, ptr %i.v, align 8, !tbaa !92
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc8
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader17, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = and i64 %i.x, -8
  %i.ab = add i64 %i.aa, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ab
  %scevgep13 = getelementptr i8, ptr %i.j, i64 %i.ab
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader17, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, 4611686018427387900      ; 3 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %i.af ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep14, align 8, !tbaa !92, !alias.scope !346, !noalias !344
  %wide.load15 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !92, !alias.scope !346, !noalias !344
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !92, !alias.scope !347, !noalias !346
  store <2 x i64> %wide.load15, ptr %i.ah, align 8, !tbaa !92, !alias.scope !347, !noalias !346
  %i.ai = getelementptr i8, ptr %next.gep14, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !92, !alias.scope !346, !noalias !344
  store <2 x ptr> splat (ptr null), ptr %i.ai, align 8, !tbaa !92, !alias.scope !346, !noalias !344
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader17

.lr.ph.i.i.i.i.preheader17:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader17, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader17 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.ak = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !92, !alias.scope !345, !noalias !344
  store i64 %i.ak, ptr %.012.i.i.i.i, align 8, !tbaa !92, !alias.scope !344, !noalias !345
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !92, !alias.scope !345, !noalias !344
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, %i.f
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !342

_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc8 ], [ %i.ad, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = sub i64 %i.ap, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.aq) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  store ptr %i.u, ptr %i.a, align 8, !tbaa !89
  store ptr %i.an, ptr %i.e, align 8, !tbaa !90
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !82
  br label %_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit: ; preds = %bb.b, %.noexc
  ret void

_ZN5Catch10Generators16GeneratorWrapperIRA2_KcED2Ev.exit5: ; preds = %_ZNKSt6vectorIN5Catch10Generators16GeneratorWrapperIRA2_KcEESaIS6_EE12_M_check_lenEmPS3_.exit.i, %bb.d
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #19, !inline_history !3
  resume { ptr, i32 } %i.as
}

; Function Attrs: nounwind
declare void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10Generators20SingleValueGeneratorIRA2_KcED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch10Generators20GeneratorUntypedBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN5Catch10Generators20SingleValueGeneratorIRA2_KcE4nextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(2) ptr @_ZNK5Catch10Generators20SingleValueGeneratorIRA2_KcE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !349, !nonnull !50
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_unicode.cpp() #14 section ".text.startup" {
bb.a:
  %0 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %5 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %7 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %8 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 4 uses
  %10 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %11 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %12 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %13 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %14 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %15 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %16 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %17 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %19 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %20 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %21 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %22 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %23 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %24 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %26 = alloca %"class.Catch::StringRef", align 8 ; 5 uses
  %27 = alloca %"struct.Catch::NameAndTags", align 8 ; 4 uses
  %28 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %29 = alloca %"class.Catch::StringRef", align 8 ; 4 uses
  %i.a = tail call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_0v) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  store ptr @.str, ptr %25, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 9, ptr %i.b, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store ptr @.str.13, ptr %26, align 8, !tbaa !350
  %i.c = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull @.str.1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.2) #19
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %29) #19
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar1E, ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(32) %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.d = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_114autoRegistrar1E, ptr nonnull @__dso_handle) #19 ; 0 uses
  %i.e = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_6v) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr @.str, ptr %20, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 78, ptr %i.f, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store ptr @.str.13, ptr %21, align 8, !tbaa !350
  %i.g = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !351
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull @.str.4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.2) #19
  call void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24) #19
  call void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8) @_ZN12_GLOBAL__N_114autoRegistrar7E, ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(32) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.h = call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch7AutoRegD1Ev, ptr nonnull @_ZN12_GLOBAL__N_114autoRegistrar7E, ptr nonnull @__dso_handle) #19 ; 0 uses
  %i.i = call noundef ptr @_ZN5Catch15makeTestInvokerEPFvvE(ptr noundef nonnull @_ZL19C_A_T_C_H_T_E_S_T_8v) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  store ptr @.str, ptr %15, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 87, ptr %i.j, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr @.str.13, ptr %16, align 8, !tbaa !350
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 8
end_hunk_1
