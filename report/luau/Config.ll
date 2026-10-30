Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Config?download=true
inline.NumInlined: 954
inline.NumDeleted: 408
begin_hunk_0_@__cxx_global_var_init.55:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.56() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_12AstTypeGroupEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_12AstTypeGroupEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_12AstTypeGroupEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_12AstTypeGroupEE5valueE, align 4, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_12AstTypeGroupEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.57() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.58() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.59() #0 section ".text.startup" comdat($_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 8
  %i.c = load i32, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  %i.d = add nsw i32 %i.c, 1                      ; 2 uses
  store i32 %i.d, ptr @_ZN4Luau13gAstRttiIndexE, align 4, !tbaa !12
  store i32 %i.d, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !12
  %i.e = tail call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6ConfigC2Ev(ptr noundef nonnull align 8 dereferenceable(280) initializes((0, 4), (8, 10), (88, 89), (96, 98), (104, 122), (128, 176)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20:
  store i32 1, ptr %0, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.b, align 1, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 0, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.d, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.e, align 1, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 121
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store i8 1, ptr %i.g, align 1, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, i8 0, i64 24, i1 false)
  store ptr %i.k, ptr %i.j, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.l, align 8, !tbaa !45
  store i8 0, ptr %i.k, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 24, i1 false)
  store ptr %i.o, ptr %i.n, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.p, align 8, !tbaa !45
  store i8 0, ptr %i.o, align 8, !tbaa !46
  invoke void @_ZN4Luau11LintOptions11setDefaultsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  ret void

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(64) %i.m) #19
  tail call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(64) %i.i) #19
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #19
  tail call void @_ZN4Luau12ParseOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %i.a) #19
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4Luau11LintOptions11setDefaultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !49 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !46
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #20
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau12ParseOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !42, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !42
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN4Luau27FragmentParseResumeSettingsELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #20
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN4Luau27FragmentParseResumeSettingsELb0ELb0EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #19
  br label %_ZNSt14_Optional_baseIN4Luau27FragmentParseResumeSettingsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Luau27FragmentParseResumeSettingsELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau6ConfigC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(280) initializes((0, 4), (8, 10), (88, 89)) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = load i32, ptr %1, align 8, !tbaa !41
  store i32 %i.f, ptr %0, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i16, ptr %i.h, align 8
  store i16 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !42
  %i.l = load i8, ptr %i.j, align 8, !tbaa !42, !range !52, !noundef !53
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, label %_ZN4Luau12ParseOptionsC2ERKS0_.exit

_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN4Luau27FragmentParseResumeSettingsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.o)
  store i8 1, ptr %i.k, align 8, !tbaa !42
  br label %_ZN4Luau12ParseOptionsC2ERKS0_.exit

_ZN4Luau12ParseOptionsC2ERKS0_.exit:              ; preds = %bb.a, %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load i16, ptr %i.q, align 8
  store i16 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !65
  store i64 %i.u, ptr %i.s, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load i64, ptr %i.w, align 8, !tbaa !65
  store i64 %i.x, ptr %i.v, align 8, !tbaa !65
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !92, !range !52, !noundef !53
  store i8 %i.aa, ptr %i.y, align 8, !tbaa !92
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43, !range !52, !noundef !53
  store i8 %i.ad, ptr %i.ab, align 1, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !48 ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i.i.i.i, label %.noexc45, label %bb.b

bb.b:                                             ; preds = %_ZN4Luau12ParseOptionsC2ERKS0_.exit
  %i.am = icmp ugt i64 %i.al, 9223372036854775776
  br i1 %i.am, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !66

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #22
          to label %.noexc45 unwind label %bb.e

.noexc45:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZN4Luau12ParseOptionsC2ERKS0_.exit
  %i.ao = phi ptr [ null, %_ZN4Luau12ParseOptionsC2ERKS0_.exit ], [ %i.an, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ao, ptr %i.ae, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !51
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !67
  %i.at = load ptr, ptr %i.ag, align 8, !tbaa !67
  %i.au = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.as, ptr %i.at, ptr noundef %i.ao)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 unwind label %bb.c

bb.c:                                             ; preds = %.noexc45
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !51
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.ba) #20
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %.noexc45
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, i8 0, i64 24, i1 false)
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.be, align 8, !tbaa !45
  store i8 0, ptr %i.bd, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i8 0, i64 24, i1 false)
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.bi, align 8, !tbaa !45
  store i8 0, ptr %i.bh, align 8, !tbaa !46
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !68 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.not.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i, label %.loopexit124, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !45
  %.fr1.i = freeze i64 %i.bo                      ; 3 uses
  %i.bp = load ptr, ptr %i.bm, align 8
  %i.bq = icmp eq i64 %.fr1.i, 0
  br i1 %i.bq, label %.lr.ph.i.split.us.i, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i
  %.05.i.us.i = phi i64 [ %i.bv, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.br = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %.05.i.us.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !45
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i, label %.loopexit124

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.us.i: ; preds = %.lr.ph.i.split.us.i
  %i.bv = add nuw i64 %.05.i.us.i, 1              ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.bv, %.pre
  br i1 %exitcond.not.i.us.i, label %._crit_edge, label %.lr.ph.i.split.us.i, !llvm.loop !90

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i
  %.05.i.i = phi i64 [ %i.cc, %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [112 x i8], ptr %i.bl, i64 %.05.i.i ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !45
  %i.bz = icmp eq i64 %i.by, %.fr1.i
  br i1 %i.bz, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, label %.loopexit124

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %.lr.ph.i.split.i
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !49
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.ca, ptr %i.bp, i64 %.fr1.i)
  %i.cb = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cb, label %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i, label %.loopexit124

_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.thread.i.i: ; preds = %_ZNKSt8equal_toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.cc = add nuw i64 %.05.i.i, 1                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau6Config8setAliasENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RKS6_:bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !76
  %i.dm = mul i64 %i.dl, 3
  %i.dn = lshr i64 %i.dm, 2
  %.not.i.i29 = icmp ult i64 %i.dj, %i.dn
  br i1 %.not.i.i29, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSE_.exit.i31, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.do = invoke noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE4findERSE_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.noexc32 unwind label %bb.aa

.noexc32:                                         ; preds = %bb.u
  %.not2.i.i30 = icmp eq ptr %i.do, null
  br i1 %.not2.i.i30, label %bb.v, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSE_.exit.i31

bb.v:                                             ; preds = %.noexc32
  invoke void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(64) %i.br)
          to label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSE_.exit.i31 unwind label %bb.aa

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSE_.exit.i31: ; preds = %bb.v, %.noexc32, %bb.t
  %i.dp = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE13insert_unsafeERSE_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSE_.exit.i31
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !67 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !49
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !45
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !74
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !68
  %i.ea = mul i64 %i.dz, 3
  %i.eb = lshr i64 %i.ea, 2
  %.not.i.i36 = icmp ult i64 %i.dx, %i.eb
  br i1 %.not.i.i36, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSC_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ec = call noundef ptr @_ZNK4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE4findERSC_(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %.not2.i.i37 = icmp eq ptr %i.ec, null
  br i1 %.not2.i.i37, label %bb.y, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSC_.exit.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dv)
          to label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSC_.exit.i unwind label %bb.aa

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSC_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.ed = invoke noundef ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE13insert_unsafeERSC_(ptr noundef nonnull align 8 dereferenceable(64) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.z unwind label %bb.aa      ; 2 uses

bb.z:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSC_.exit.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  store i64 %i.du, ptr %i.ee, align 8, !tbaa !65
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 72
  store ptr %i.ds, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !70
  %i.ef = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.d
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.z
  %i.eh = load i64, ptr %i.d, align 8, !tbaa !46
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ei) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret void

bb.aa:                                            ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSC_.exit.i, %bb.y, %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE14rehash_if_fullERSE_.exit.i31, %bb.v, %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.aa, %.body
  %.pn9 = phi { ptr, i32 } [ %i.ej, %bb.aa ], [ %.pn, %.body ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ]
  %i.ek = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.d
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.em = load i64, ptr %i.d, align 8, !tbaa !46
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(280) ptr @_ZN4Luau6ConfigaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Luau::Config", align 8     ; 7 uses
  %3 = alloca %"struct.Luau::Config", align 8     ; 8 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZN4Luau6ConfigC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZN4Luau6ConfigC2EOS0_(ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(280) %0)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.a = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZN4Luau6ConfigaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %3)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.b = invoke noundef nonnull align 8 dereferenceable(280) ptr @_ZN4Luau6ConfigaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %3, ptr noundef nonnull align 8 dereferenceable(280) %2)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c, %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @_ZN4Luau6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN4Luau6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.f ], [ %i.c, %bb.d ]
  call void @_ZN4Luau6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.e, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(64) %i.a) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(64) %i.b) #19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !46
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.c, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.d, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !42, !range !52, !noundef !53
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8, !tbaa !42
  br i1 %i.v, label %bb.c, label %_ZN4Luau12ParseOptionsD2Ev.exit

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #20
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !64  ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4Luau12ParseOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #19
  br label %_ZN4Luau12ParseOptionsD2Ev.exit

_ZN4Luau12ParseOptionsD2Ev.exit:                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !tbaa !46
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau15parseModeStringERNS_4ModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable sret(%"class.std::optional.18") align 8 %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i1 noundef zeroext %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  %.pre31 = load ptr, ptr %2, align 8, !tbaa !49  ; 6 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load i32, ptr %.pre31, align 1
  %i.d = xor i32 %i.c, 1751347054
  %i.e = getelementptr i8, ptr %.pre31, i64 3
  %i.f = load i32, ptr %i.e, align 1
  %i.g = xor i32 %i.f, 1801676136
  %i.h = or i32 %i.d, %i.g
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13: ; preds = %bb.a
  %bcmp.i12 = tail call i32 @bcmp(ptr %.pre31, ptr nonnull @.str.61, i64 %i.b)
  %i.l = icmp eq i32 %bcmp.i12, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15: ; preds = %bb.a
  %bcmp.i14 = tail call i32 @bcmp(ptr %.pre31, ptr nonnull @.str.62, i64 %i.b)
  %i.m = icmp eq i32 %bcmp.i14, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i16 = tail call i32 @bcmp(ptr nonnull %.pre31, ptr nonnull @.str.63, i64 %i.b)
  %i.n = icmp eq i32 %bcmp.i16, 0
  %i.o = and i1 %3, %i.n
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit15, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !44, !alias.scope !116
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !45, !alias.scope !116
  store i8 0, ptr %i.p, align 8, !tbaa !46, !alias.scope !116
  %i.r = add i64 %i.b, 10
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.r)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread
  %i.s = load i64, ptr %i.q, align 8, !tbaa !45, !alias.scope !116
  %i.t = add i64 %i.s, -4611686018427387894
  %i.u = icmp ult i64 %i.t, 10
  br i1 %i.u, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.64, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.c ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.w = load i64, ptr %i.q, align 8, !tbaa !45, !alias.scope !116
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.b
  br i1 %i.y, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.cont.i.i unwind label %bb.c

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %.pre31, i64 noundef %i.b)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !49, !alias.scope !116 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.p
  br i1 %i.ac, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !46, !alias.scope !116
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aa, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.af = load i64, ptr %i.q, align 8, !tbaa !45, !noalias !117
  %i.ag = add i64 %i.af, -4611686018427387852
  %i.ah = icmp ult i64 %i.ag, 52
  br i1 %i.ah, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.65, i64 noundef 52)
          to label %.noexc18 unwind label %bb.g   ; 8 uses

.noexc18:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.aj, ptr %4, align 8, !tbaa !44, !alias.scope !117
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 7 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %.thread, label %bb.e

.thread:                                          ; preds = %.noexc18
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45 ; 4 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !45, !alias.scope !117
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !49
  store i64 0, ptr %i.ar, align 8, !tbaa !45
  store i8 0, ptr %i.al, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !44
  br label %bb.f

bb.e:                                             ; preds = %.noexc18
  %i.au = load i64, ptr %i.al, align 8, !tbaa !46
  store i64 %i.au, ptr %i.aj, align 8, !tbaa !46, !alias.scope !117
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !45 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN4Luau19parseLintRuleStringERNS_11LintOptionsES1_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b:bb.a

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !45, !alias.scope !144
  %i.n = add i64 %i.m, -4611686018427387897
  %i.o = icmp ult i64 %i.n, 7
  br i1 %i.o, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.67, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.q = load i64, ptr %i.k, align 8, !tbaa !45, !alias.scope !144
  %i.r = sub i64 4611686018427387903, %i.q
  %i.s = icmp ult i64 %i.r, %i.i
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.h, i64 noundef %i.i)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = load ptr, ptr %9, align 8, !tbaa !49, !alias.scope !144 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.j
  br i1 %i.w, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.x = load i64, ptr %i.k, align 8, !tbaa !45, !noalias !145
  %i.y = and i64 %i.x, -2
  %i.z = icmp eq i64 %i.y, 4611686018427387902
  br i1 %i.z, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.aa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.68, i64 noundef 2)
          to label %.noexc41 unwind label %bb.m   ; 6 uses

.noexc41:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.ab, ptr %8, align 8, !tbaa !44, !alias.scope !145
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 5 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc41
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !45 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ab, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.ai, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc41
  store ptr %i.ac, ptr %8, align 8, !tbaa !49, !alias.scope !145
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !46
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !46, !alias.scope !145
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !45
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ak = phi i64 [ %i.ag, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !45, !alias.scope !145
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !49
  store i64 0, ptr %i.al, align 8, !tbaa !45
  store i8 0, ptr %i.ad, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45, !noalias !146 ; 2 uses
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !45, !noalias !146
  %i.aq = sub i64 4611686018427387903, %i.ap
  %i.ar = icmp ult i64 %i.aq, %i.ao
  br i1 %i.ar, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.noexc45 unwind label %bb.n

.noexc45:                                         ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.h
  %i.as = load ptr, ptr %6, align 8, !tbaa !49, !noalias !146
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.as, i64 noundef %i.ao)
          to label %.noexc46 unwind label %bb.n   ; 8 uses

.noexc46:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.au, ptr %7, align 8, !tbaa !44, !alias.scope !146
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !49 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 7 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.thread189, label %bb.j

.thread189:                                       ; preds = %.noexc46
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !45 ; 4 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.az, ptr %i.bd, align 8, !tbaa !45, !alias.scope !146
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !49
  store i64 0, ptr %i.bc, align 8, !tbaa !45
  store i8 0, ptr %i.aw, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !44
  br label %bb.k

bb.j:                                             ; preds = %.noexc46
  %i.bf = load i64, ptr %i.aw, align 8, !tbaa !46
  store i64 %i.bf, ptr %i.au, align 8, !tbaa !46, !alias.scope !146
  %.phi.trans.insert.i43 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.pre.i44 = load i64, ptr %.phi.trans.insert.i43, align 8, !tbaa !45 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %.pre.i44, ptr %i.bh, align 8, !tbaa !45, !alias.scope !146
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !49
  store i64 0, ptr %i.bg, align 8, !tbaa !45
  store i8 0, ptr %i.aw, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bi, ptr %0, align 8, !tbaa !44
  %i.bj = icmp eq ptr %i.av, %i.au
  br i1 %i.bj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.thread189, %bb.j
  %i.bk = phi ptr [ %i.be, %.thread189 ], [ %i.bi, %bb.j ]
  %i.bl = phi ptr [ %i.bd, %.thread189 ], [ %i.bh, %bb.j ]
  %i.bm = phi i64 [ %i.az, %.thread189 ], [ %.pre.i44, %bb.j ] ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  store ptr %i.av, ptr %0, align 8, !tbaa !49
  %i.bp = load i64, ptr %i.au, align 8, !tbaa !46
  store i64 %i.bp, ptr %i.bi, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bq = phi ptr [ %i.bl, %bb.k ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.br = phi i64 [ %i.bm, %bb.k ], [ %.pre.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !45
  store ptr %i.au, ptr %7, align 8, !tbaa !49
  store i64 0, ptr %i.bq, align 8, !tbaa !45
  store i8 0, ptr %i.au, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bt, align 8, !tbaa !78
  %i.bu = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ab
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  %i.by = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.j
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.ca = load i64, ptr %i.j, align 8, !tbaa !46
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.cc = load i8, ptr %i.e, align 8, !tbaa !78, !range !52, !noundef !53
  %i.cd = trunc nuw i8 %i.cc to i1
  store i8 0, ptr %i.e, align 8, !tbaa !78
  br i1 %i.cd, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ce = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.l
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !46
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.i
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.ab
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.n
  %i.cn = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54, %bb.m
  %.pn37 = phi { ptr, i32 } [ %i.cj, %bb.m ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54 ], [ %i.ck, %bb.n ] ; 2 uses
  %i.cp = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.j
  br i1 %i.cq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.e
  %.sink = phi ptr [ %i.v, %bb.e ], [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  %.pn37.pn.ph = phi { ptr, i32 } [ %i.u, %bb.e ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ]
  %i.cr = load i64, ptr %i.j, align 8, !tbaa !46
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cs) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, %bb.e
  %.pn37.pn = phi { ptr, i32 } [ %i.u, %bb.e ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %.pn37.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ct = load i8, ptr %i.e, align 8, !tbaa !78, !range !52, !noundef !53
  %i.cu = trunc nuw i8 %i.ct to i1
  store i8 0, ptr %i.e, align 8, !tbaa !78
  br i1 %i.cu, label %bb.o, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit62

bb.o:                                             ; preds = %.body
  %i.cv = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i60: ; preds = %bb.o
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !46
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit62

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit62: ; preds = %bb.o, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.da = add nuw nsw i32 %.033131, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.da, 30
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ai

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a, %.split
  %i.db = tail call noundef i32 @_ZN4Luau11LintWarning9parseNameEPKc(ptr noundef %.pre) ; 2 uses
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.dd = load ptr, ptr %3, align 8, !tbaa !49, !noalias !147
  %i.de = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !147 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.df, ptr %10, align 8, !tbaa !44, !alias.scope !148
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 0, ptr %i.dg, align 8, !tbaa !45, !alias.scope !148
  store i8 0, ptr %i.df, align 8, !tbaa !46, !alias.scope !148
  %i.dh = add i64 %i.de, 13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.dh)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !45, !alias.scope !148
  %i.dj = add i64 %i.di, -4611686018427387891
  %i.dk = icmp ult i64 %i.dj, 13
  br i1 %i.dk, label %.invoke.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69: ; preds = %bb.q
  %i.dl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.69, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70 unwind label %bb.r ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69
  %i.dm = load i64, ptr %i.dg, align 8, !tbaa !45, !alias.scope !148
  %i.dn = sub i64 4611686018427387903, %i.dm
  %i.do = icmp ult i64 %i.dn, %i.de
  br i1 %i.do, label %.invoke.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i71

.invoke.i.i72:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70, %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.cont.i.i73 unwind label %bb.r

.cont.i.i73:                                      ; preds = %.invoke.i.i72
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i70
  %i.dp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.dd, i64 noundef %i.de)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit74 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i71, %.invoke.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i69, %bb.p
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %10, align 8, !tbaa !49, !alias.scope !148 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.df
  br i1 %i.ds, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66: ; preds = %bb.r
  %i.dt = load i64, ptr %i.df, align 8, !tbaa !46, !alias.scope !148
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #20
  br label %common.resume

common.resume:                                    ; preds = %bb.r, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit62, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit124 ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i66 ], [ %.pn37.pn, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit62 ], [ %i.dq, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit74: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i71
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dv, ptr %0, align 8, !tbaa !44
  %i.dw = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.df
  br i1 %i.dx, label %bb.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75

bb.s:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit74
  %i.dy = load i64, ptr %i.dg, align 8, !tbaa !45 ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  call void @llvm.assume(i1 %i.dz)
  %i.ea = add nuw nsw i64 %i.dy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.ea, i1 false)
  br label %.thread129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit74
  store ptr %i.dw, ptr %0, align 8, !tbaa !49
  %i.eb = load i64, ptr %i.df, align 8, !tbaa !46
  store i64 %i.eb, ptr %i.dv, align 8, !tbaa !46
  %.pre133 = load i64, ptr %i.dg, align 8, !tbaa !45
  br label %.thread129

.thread129:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75, %bb.s
  %i.ec = phi i64 [ %.pre133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i75 ], [ %i.dy, %bb.s ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !45
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ee, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %bb.ai

bb.t:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call fastcc void @_ZN4LuauL26parseLintRuleStringForCodeERNS_11LintOptionsES1_NS_11LintWarning4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5)
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 5 uses
  %i.eg = load i8, ptr %i.ef, align 8, !tbaa !78, !range !52, !noundef !53
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ei = load ptr, ptr %3, align 8, !tbaa !49, !noalias !149
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !45, !noalias !149 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.ek, ptr %14, align 8, !tbaa !44, !alias.scope !150
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.el, align 8, !tbaa !45, !alias.scope !150
  store i8 0, ptr %i.ek, align 8, !tbaa !46, !alias.scope !150
  %i.em = add i64 %i.ej, 7
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.em)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.en = load i64, ptr %i.el, align 8, !tbaa !45, !alias.scope !150
  %i.eo = add i64 %i.en, -4611686018427387897
  %i.ep = icmp ult i64 %i.eo, 7
  br i1 %i.ep, label %.invoke.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i83: ; preds = %bb.v
  %i.eq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.67, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i84 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i84: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i83
  %i.er = load i64, ptr %i.el, align 8, !tbaa !45, !alias.scope !150
  %i.es = sub i64 4611686018427387903, %i.er
  %i.et = icmp ult i64 %i.es, %i.ej
  br i1 %i.et, label %.invoke.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i85

.invoke.i.i86:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i84, %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.cont.i.i87 unwind label %bb.w

.cont.i.i87:                                      ; preds = %.invoke.i.i86
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i85: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i84
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.ei, i64 noundef %i.ej)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit90 unwind label %bb.w ; 0 uses

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i85, %.invoke.i.i86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i83, %bb.u
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ew = load ptr, ptr %14, align 8, !tbaa !49, !alias.scope !150 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.ek
  br i1 %i.ex, label %.body88, label %.body88.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit90: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i85
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.ey = load i64, ptr %i.el, align 8, !tbaa !45, !noalias !151
  %i.ez = and i64 %i.ey, -2
  %i.fa = icmp eq i64 %i.ez, 4611686018427387902
  br i1 %i.fa, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91

bb.x:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit90
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.noexc95 unwind label %bb.ad

.noexc95:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit90
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.68, i64 noundef 2)
          to label %.noexc96 unwind label %bb.ad  ; 6 uses

.noexc96:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  store ptr %i.fc, ptr %13, align 8, !tbaa !44, !alias.scope !151
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !49 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 5 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

bb.y:                                             ; preds = %.noexc96
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !45 ; 3 uses
  %i.fi = icmp ult i64 %i.fh, 16
  call void @llvm.assume(i1 %i.fi)
  %i.fj = add nuw nsw i64 %i.fh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fc, ptr noundef nonnull align 8 dereferenceable(1) %i.fe, i64 %i.fj, i1 false)
  br label %bb.z

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %.noexc96
  store ptr %i.fd, ptr %13, align 8, !tbaa !49, !alias.scope !151
  %i.fk = load i64, ptr %i.fe, align 8, !tbaa !46
  store i64 %i.fk, ptr %i.fc, align 8, !tbaa !46, !alias.scope !151
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %.pre.i94 = load i64, ptr %.phi.trans.insert.i93, align 8, !tbaa !45
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.y
  %i.fl = phi i64 [ %i.fh, %bb.y ], [ %.pre.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i64 %i.fl, ptr %i.fn, align 8, !tbaa !45, !alias.scope !151
  store ptr %i.fe, ptr %i.fb, align 8, !tbaa !49
  store i64 0, ptr %i.fm, align 8, !tbaa !45
  store i8 0, ptr %i.fe, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !45, !noalias !152 ; 2 uses
  %i.fq = load i64, ptr %i.fn, align 8, !tbaa !45, !noalias !152
  %i.fr = sub i64 4611686018427387903, %i.fq
  %i.fs = icmp ult i64 %i.fr, %i.fp
  br i1 %i.fs, label %bb.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i98

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #21
          to label %.noexc102 unwind label %bb.ae

.noexc102:                                        ; preds = %bb.aa
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i98: ; preds = %bb.z
  %i.ft = load ptr, ptr %11, align 8, !tbaa !49, !noalias !152
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.ft, i64 noundef %i.fp)
          to label %.noexc103 unwind label %bb.ae ; 8 uses

.noexc103:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i98
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.fv, ptr %12, align 8, !tbaa !44, !alias.scope !152
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !49 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 7 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %.thread190, label %bb.ab

.thread190:                                       ; preds = %.noexc103
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !45 ; 4 uses
  %i.gb = icmp ult i64 %i.ga, 16
  call void @llvm.assume(i1 %i.gb)
  %i.gc = add nuw nsw i64 %i.ga, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fv, ptr noundef nonnull align 8 dereferenceable(1) %i.fx, i64 %i.gc, i1 false)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.ga, ptr %i.ge, align 8, !tbaa !45, !alias.scope !152
  store ptr %i.fx, ptr %i.fu, align 8, !tbaa !49
  store i64 0, ptr %i.gd, align 8, !tbaa !45
  store i8 0, ptr %i.fx, align 8, !tbaa !46
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.gf, ptr %0, align 8, !tbaa !44
  br label %bb.ac

bb.ab:                                            ; preds = %.noexc103
  %i.gg = load i64, ptr %i.fx, align 8, !tbaa !46
  store i64 %i.gg, ptr %i.fv, align 8, !tbaa !46, !alias.scope !152
  %.phi.trans.insert.i100 = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.pre.i101 = load i64, ptr %.phi.trans.insert.i100, align 8, !tbaa !45 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 %.pre.i101, ptr %i.gi, align 8, !tbaa !45, !alias.scope !152
  store ptr %i.fx, ptr %i.fu, align 8, !tbaa !49
  store i64 0, ptr %i.gh, align 8, !tbaa !45
  store i8 0, ptr %i.fx, align 8, !tbaa !46
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.gj, ptr %0, align 8, !tbaa !44
  %i.gk = icmp eq ptr %i.fw, %i.fv
  br i1 %i.gk, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i105

bb.ac:                                            ; preds = %.thread190, %bb.ab
  %i.gl = phi ptr [ %i.gf, %.thread190 ], [ %i.gj, %bb.ab ]
  %i.gm = phi ptr [ %i.ge, %.thread190 ], [ %i.gi, %bb.ab ]
  %i.gn = phi i64 [ %i.ga, %.thread190 ], [ %.pre.i101, %bb.ab ] ; 3 uses
  %i.go = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nuw nsw i64 %i.gn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gl, ptr noundef nonnull align 8 dereferenceable(1) %i.fv, i64 %i.gp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i105: ; preds = %bb.ab
  store ptr %i.fw, ptr %0, align 8, !tbaa !49
  %i.gq = load i64, ptr %i.fv, align 8, !tbaa !46
  store i64 %i.gq, ptr %i.gj, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i105
  %i.gr = phi ptr [ %i.gm, %bb.ac ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i105 ]
  %i.gs = phi i64 [ %i.gn, %bb.ac ], [ %.pre.i101, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i105 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gs, ptr %i.gt, align 8, !tbaa !45
  store ptr %i.fv, ptr %12, align 8, !tbaa !49
  store i64 0, ptr %i.gr, align 8, !tbaa !45
  store i8 0, ptr %i.fv, align 8, !tbaa !46
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.gu, align 8, !tbaa !78
  %i.gv = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.fc
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.gx = load i64, ptr %i.fc, align 8, !tbaa !46
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  %i.gz = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.ek
  br i1 %i.ha, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.hb = load i64, ptr %i.ek, align 8, !tbaa !46
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i91, %bb.x
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i98, %bb.aa
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hf = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.fc
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %bb.ae
  %i.hh = load i64, ptr %i.fc, align 8, !tbaa !46
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.hd, %bb.ad ], [ %i.he, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %i.he, %bb.ae ] ; 2 uses
  %i.hj = load ptr, ptr %14, align 8, !tbaa !49   ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.ek
  br i1 %i.hk, label %.body88, label %.body88.sink.split

.body88.sink.split:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.w
  %.sink195 = phi ptr [ %i.ew, %bb.w ], [ %i.hj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  %.pn.pn.ph = phi { ptr, i32 } [ %i.ev, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ]
  %i.hl = load i64, ptr %i.ek, align 8, !tbaa !46
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %.sink195, i64 noundef %i.hm) #20
  br label %.body88

.body88:                                          ; preds = %.body88.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ev, %bb.w ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn.pn.ph, %.body88.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.hn = load i8, ptr %i.ef, align 8, !tbaa !78, !range !52, !noundef !53
  %i.ho = trunc nuw i8 %i.hn to i1
  store i8 0, ptr %i.ef, align 8, !tbaa !78
  br i1 %i.ho, label %bb.af, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit124

bb.af:                                            ; preds = %.body88
  %i.hp = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i122: ; preds = %bb.af
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !46
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #20
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit124

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit124: ; preds = %bb.af, %.body88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %.pre132 = load i8, ptr %i.ef, align 8, !tbaa !78, !range !52
  %i.hu = trunc nuw i8 %.pre132 to i1
  store i8 0, ptr %i.ef, align 8, !tbaa !78
  br i1 %i.hu, label %bb.ag, label %.thread192

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114
  %i.hv = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %.thread192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i125: ; preds = %bb.ag
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !46
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #20
  br label %.thread192

.thread192:                                       ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ai

bb.ah:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.thread

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.ah
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.ia, align 8, !tbaa !78
  br label %bb.ai

bb.ai:                                            ; preds = %.thread192, %.thread129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4LuauL26parseLintRuleStringForCodeERNS_11LintOptionsES1_NS_11LintWarning4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext %5) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 7 uses
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread55 [
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %4, align 8, !tbaa !49
  %i.d = load i32, ptr %i.c, align 1
  %i.e = icmp ne i32 %i.d, 1702195828
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread55

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = zext nneg i32 %3 to i64
  %i.i = shl nuw i64 1, %i.h
  %i.j = load i64, ptr %1, align 8, !tbaa !159
  %i.k = or i64 %i.j, %i.i
  store i64 %i.k, ptr %1, align 8, !tbaa !159
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %bb.a
  %i.l = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.m = load i32, ptr %i.l, align 1
  %i.n = xor i32 %i.m, 1936482662
  %i.o = getelementptr i8, ptr %i.l, i64 4
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = xor i32 %i.q, 101
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread55

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %i.w = zext nneg i32 %3 to i64
  %i.x = shl nuw i64 1, %i.w
  %i.y = xor i64 %i.x, -1
  %i.z = load i64, ptr %1, align 8, !tbaa !159
  %i.aa = and i64 %i.z, %i.y
  store i64 %i.aa, ptr %1, align 8, !tbaa !159
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread55: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  br i1 %5, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread55
  switch i64 %i.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread58 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30: ; preds = %bb.b
  %i.ab = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = xor i32 %i.ac, 1650552421
  %i.ae = getelementptr i8, ptr %i.ab, i64 3
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = xor i32 %i.af, 1684368482
  %i.ah = or i32 %i.ad, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  %i.al = zext nneg i32 %3 to i64
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  %i.an = load i64, ptr %1, align 8, !tbaa !159
  %i.ao = or i64 %i.an, %i.am
  store i64 %i.ao, ptr %1, align 8, !tbaa !159
  %i.ap = xor i64 %i.am, -1
  %i.aq = load i64, ptr %2, align 8, !tbaa !159
  %i.ar = and i64 %i.aq, %i.ap
  store i64 %i.ar, ptr %2, align 8, !tbaa !159
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32: ; preds = %bb.b
  %.pre = load ptr, ptr %4, align 8, !tbaa !49
  %bcmp.i31 = tail call i32 @bcmp(ptr %.pre, ptr nonnull @.str.78, i64 %i.b)
  %i.as = icmp eq i32 %bcmp.i31, 0
  br i1 %i.as, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32
  %i.at = zext nneg i32 %3 to i64
  %i.au = shl nuw i64 1, %i.at
  %i.av = xor i64 %i.au, -1                       ; 2 uses
  %i.aw = load i64, ptr %1, align 8, !tbaa !159
  %i.ax = and i64 %i.aw, %i.av
  store i64 %i.ax, ptr %1, align 8, !tbaa !159
  %i.ay = load i64, ptr %2, align 8, !tbaa !159
  %i.az = and i64 %i.ay, %i.av
  store i64 %i.az, ptr %2, align 8, !tbaa !159
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34: ; preds = %bb.b
  %.pre59 = load ptr, ptr %4, align 8, !tbaa !49
  %bcmp.i33 = tail call i32 @bcmp(ptr %.pre59, ptr nonnull @.str.79, i64 %i.b)
  %i.ba = icmp eq i32 %bcmp.i33, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  %i.bb = zext nneg i32 %3 to i64
  %i.bc = shl nuw i64 1, %i.bb                    ; 2 uses
  %i.bd = load i64, ptr %1, align 8, !tbaa !159
  %i.be = or i64 %i.bd, %i.bc
  store i64 %i.be, ptr %1, align 8, !tbaa !159
  %i.bf = load i64, ptr %2, align 8, !tbaa !159
  %i.bg = or i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %2, align 8, !tbaa !159
  br label %bb.m

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit32, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30, %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.80, ptr noundef nonnull align 8 dereferenceable(32) %4)
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.81)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit34.thread58
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bh, ptr %0, align 8, !tbaa !44
  %i.bi = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !45 ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.bi, ptr %0, align 8, !tbaa !49
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !46
  store i64 %i.bp, ptr %i.bh, align 8, !tbaa !46
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre60 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.bq = phi i64 [ %i.bm, %bb.d ], [ %.pre60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !45
  store ptr %i.bj, ptr %6, align 8, !tbaa !49
  store i64 0, ptr %i.br, align 8, !tbaa !45
  store i8 0, ptr %i.bj, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bt, align 8, !tbaa !78
  %i.bu = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !46
end_hunk_2
begin_hunk_3_@_ZN4Luau10parseAliasERNS_6ConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_RKSt8optionalINS_13ConfigOptions12AliasOptionsEE:bb.a

.noexc42:                                         ; preds = %.noexc.i41
  store ptr %i.dh, ptr %9, align 8, !tbaa !49
  %i.di = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.di, ptr %i.dc, align 8, !tbaa !46
  br label %._crit_edge.i.i40

._crit_edge.i.i40:                                ; preds = %.noexc42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit39
  %i.dj = phi ptr [ %i.dh, %.noexc42 ], [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit39 ] ; 2 uses
  switch i64 %i.df, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i40
  %i.dk = load i8, ptr %i.dd, align 1, !tbaa !46
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !46
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i40
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %i.dd, i64 %i.df, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i40
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !65  ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !45
  %i.dn = load ptr, ptr %9, align 8, !tbaa !49
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store i8 0, ptr %i.do, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  invoke void @_ZN4Luau6Config8setAliasENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 8 %9)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dp = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.dc
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.y
  %i.dr = load i64, ptr %i.dc, align 8, !tbaa !46
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  %i.dt = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cq
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  %i.dv = load i64, ptr %i.cq, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.sink.split

bb.z:                                             ; preds = %.noexc.i41
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.aa:                                            ; preds = %bb.x
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.dc
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.aa
  %i.ea = load i64, ptr %i.dc, align 8, !tbaa !46
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.z ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.ec = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cq
  br i1 %i.ed, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ee = load i64, ptr %i.cq, align 8, !tbaa !46
  br label %common.resume.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %.sink76 = phi i64 [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ]
  %.sink = phi ptr [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ]
  %i.ef = add i64 %.sink76, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ef) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %bb.h
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.eg, align 8, !tbaa !78
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %.noexc.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau11parseConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6ConfigERKNS_13ConfigOptionsE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.18") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(280) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.Luau::Allocator", align 8   ; 7 uses
  %5 = alloca %"class.Luau::AstNameTable", align 8 ; 7 uses
  %6 = alloca %"class.Luau::Lexer", align 8       ; 40 uses
  %7 = alloca %"class.std::vector.2", align 8     ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !182
  call void @_ZN4Luau9AllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !182
  invoke void @_ZN4Luau12AstNameTableC1ERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.d, !noalias !182

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !182
  %i.e = load ptr, ptr %1, align 8, !tbaa !49, !noalias !182
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45, !noalias !182
  invoke void @_ZN4Luau5LexerC1EPKcmRNS_12AstNameTableENS_8PositionE(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc.i unwind label %.loopexit.split-lp261.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc.i:                                         ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 35 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.k = icmp eq i32 %i.j, 265
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN4LuauL4nextERNS_5LexerE.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc.i, %.noexc88.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc88.i unwind label %.loopexit.split-lp261.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88.i:                                       ; preds = %.lr.ph.i.i
  %i.l = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.m = icmp eq i32 %i.l, 265
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN4LuauL4nextERNS_5LexerE.exit.i, !llvm.loop !180

_ZN4LuauL4nextERNS_5LexerE.exit.i:                ; preds = %.noexc88.i, %.noexc.i
  %i.n = phi i32 [ %i.j, %.noexc.i ], [ %i.l, %.noexc88.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !182
  %.not.i = icmp eq i32 %i.n, 123
  br i1 %.not.i, label %bb.f, label %.invoke.i

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12AstNameTableD2Ev.exit192.i

bb.e:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau5LexerD2Ev.exit190.i

.loopexit.split-lp261.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i, %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp261.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.v, %bb.j, %bb.i, %.lr.ph.i93.i, %.lr.ph.i97.i, %.lr.ph.i121.i, %.lr.ph.i114.i, %.lr.ph.i89.i, %.invoke.i, %bb.f
  %lpad.loopexit.split-lp274 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.f:                                             ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit.i
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc90.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc90.i:                                       ; preds = %bb.f
  %i.r = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.s = icmp eq i32 %i.r, 265
  br i1 %i.s, label %.lr.ph.i89.i, label %_ZN4LuauL4nextERNS_5LexerE.exit92.i

.lr.ph.i89.i:                                     ; preds = %.noexc90.i, %.noexc91.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc91.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91.i:                                       ; preds = %.lr.ph.i89.i
  %i.t = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.u = icmp eq i32 %i.t, 265
  br i1 %i.u, label %.lr.ph.i89.i, label %_ZN4LuauL4nextERNS_5LexerE.exit92.i, !llvm.loop !180

_ZN4LuauL4nextERNS_5LexerE.exit92.i:              ; preds = %.noexc91.i, %.noexc90.i
  %i.v = phi i32 [ %i.r, %.noexc90.i ], [ %i.t, %.noexc91.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit100.i, %_ZN4LuauL4nextERNS_5LexerE.exit92.i
  %i.ag = phi i32 [ %i.v, %_ZN4LuauL4nextERNS_5LexerE.exit92.i ], [ %.pre, %_ZN4LuauL4nextERNS_5LexerE.exit100.i ] ; 2 uses
  %.031.i = phi i1 [ false, %_ZN4LuauL4nextERNS_5LexerE.exit92.i ], [ %.334.i, %_ZN4LuauL4nextERNS_5LexerE.exit100.i ]
  br i1 %.031.i, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  switch i32 %i.ag, label %.invoke.i [
    i32 93, label %bb.i
    i32 279, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc94.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc94.i:                                       ; preds = %bb.i
  %i.ai = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 265
  br i1 %i.aj, label %.lr.ph.i93.i, label %_ZN4LuauL4nextERNS_5LexerE.exit96.i

.lr.ph.i93.i:                                     ; preds = %.noexc94.i, %.noexc95.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc95.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95.i:                                       ; preds = %.lr.ph.i93.i
  %i.ak = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 265
  br i1 %i.al, label %.lr.ph.i93.i, label %_ZN4LuauL4nextERNS_5LexerE.exit96.i, !llvm.loop !180

_ZN4LuauL4nextERNS_5LexerE.exit96.i:              ; preds = %.noexc95.i, %.noexc94.i
  %i.am = phi i32 [ %i.ai, %.noexc94.i ], [ %i.ak, %.noexc95.i ]
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !48, !noalias !182 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32 ; 2 uses
  store ptr %i.ao, ptr %i.z, align 8, !tbaa !48, !noalias !182
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit96.i
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !46
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #20
  %.pre326.i = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i: ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit96.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.au = phi i32 [ %.pre326.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.am, %_ZN4LuauL4nextERNS_5LexerE.exit96.i ]
  switch i32 %i.au, label %.invoke.i [
    i32 44, label %bb.j
    i32 125, label %_ZN4LuauL4nextERNS_5LexerE.exit100.i
  ]

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc98.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc98.i:                                       ; preds = %bb.j
  %i.aw = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.ax = icmp eq i32 %i.aw, 265
  br i1 %i.ax, label %.lr.ph.i97.i, label %_ZN4LuauL4nextERNS_5LexerE.exit100.i

.lr.ph.i97.i:                                     ; preds = %.noexc98.i, %.noexc99.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99.i:                                       ; preds = %.lr.ph.i97.i
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.az = icmp eq i32 %i.ay, 265
  br i1 %i.az, label %.lr.ph.i97.i, label %_ZN4LuauL4nextERNS_5LexerE.exit100.i, !llvm.loop !180

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !182
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !46, !noalias !182 ; 3 uses
  %i.bb = invoke noundef i32 @_ZNK4Luau6Lexeme9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.l unwind label %.loopexit.split-lp250.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.l:                                             ; preds = %bb.k
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  store ptr %i.ae, ptr %8, align 8, !tbaa !44, !noalias !182
  %i.bd = icmp eq ptr %i.ba, null
  %i.be = icmp ne i32 %i.bb, 0
  %or.cond.i.i = and i1 %i.bd, %i.be
  br i1 %or.cond.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.83) #21
          to label %.noexc101.i unwind label %.loopexit.split-lp250.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101.i:                                      ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19, !noalias !182
  store i64 %i.bc, ptr %i.d, align 8, !tbaa !65, !noalias !182
  %i.bf = icmp ugt i32 %i.bb, 15
  br i1 %i.bf, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.bg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc102.i unwind label %.loopexit.split-lp250.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc102.i:                                      ; preds = %.noexc.i.i
  store ptr %i.bg, ptr %8, align 8, !tbaa !49, !noalias !182
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !65, !noalias !182
  store i64 %i.bh, ptr %i.ae, align 8, !tbaa !46, !noalias !182
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc102.i, %bb.n
  %i.bi = phi ptr [ %i.bg, %.noexc102.i ], [ %i.ae, %bb.n ] ; 2 uses
  switch i32 %i.bb, label %bb.p [
    i32 1, label %bb.o
    i32 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bj = load i8, ptr %i.ba, align 1, !tbaa !46
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !46
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !65, !noalias !182 ; 2 uses
  store i64 %i.bk, ptr %i.af, align 8, !tbaa !45, !noalias !182
  %i.bl = load ptr, ptr %8, align 8, !tbaa !49, !noalias !182
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 0, ptr %i.bm, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19, !noalias !182
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc104.i unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc104.i:                                      ; preds = %bb.q
  %i.bo = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.bp = icmp eq i32 %i.bo, 265
  br i1 %i.bp, label %.lr.ph.i103.i, label %_ZN4LuauL4nextERNS_5LexerE.exit106.i

.lr.ph.i103.i:                                    ; preds = %.noexc104.i, %.noexc105.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc105.i unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105.i:                                      ; preds = %.lr.ph.i103.i
  %i.bq = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.br = icmp eq i32 %i.bq, 265
  br i1 %i.br, label %.lr.ph.i103.i, label %_ZN4LuauL4nextERNS_5LexerE.exit106.i, !llvm.loop !180

_ZN4LuauL4nextERNS_5LexerE.exit106.i:             ; preds = %.noexc105.i, %.noexc104.i
  %.val86.i = load ptr, ptr %7, align 8, !tbaa !47, !noalias !182
  %.val87.i = load ptr, ptr %i.z, align 8, !tbaa !48, !noalias !182
  invoke fastcc void @"_ZZN4Luau11parseConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6ConfigERKNS_13ConfigOptionsEENK3$_0clB5cxx11ERKSt6vectorIS5_SaIS5_EES7_"(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %2, ptr nonnull %3, ptr %.val86.i, ptr %.val87.i, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.r unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit106.i
  %i.bs = load i8, ptr %i.ad, align 8, !tbaa !78, !range !52, !alias.scope !182, !noundef !53
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.critedge69.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

.loopexit.split-lp250.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i.i, %bb.k, %bb.m
  %lpad.loopexit.split-lp264 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i103.i, %.lr.ph.i107.i, %bb.s, %_ZN4LuauL4nextERNS_5LexerE.exit106.i, %bb.q, %bb.t
  %lpad.loopexit.split-lp267 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %8, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ae
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bw = load i64, ptr %i.ae, align 8, !tbaa !46, !noalias !182
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.r
  store i8 0, ptr %i.ad, align 8, !tbaa !78, !alias.scope !182
  %i.by = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  switch i32 %i.by, label %bb.t [
    i32 44, label %bb.s
    i32 93, label %.critedge.i
  ]

bb.s:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc108.i unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc108.i:                                      ; preds = %bb.s
  %i.ca = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.cb = icmp eq i32 %i.ca, 265
  br i1 %i.cb, label %.lr.ph.i107.i, label %.critedge.i

.lr.ph.i107.i:                                    ; preds = %.noexc108.i, %.noexc109.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc109.i unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109.i:                                      ; preds = %.lr.ph.i107.i
  %i.cc = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.cd = icmp eq i32 %i.cc, 265
  br i1 %i.cd, label %.lr.ph.i107.i, label %.critedge.i, !llvm.loop !180

bb.t:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  invoke fastcc void @_ZN4LuauL4failB5cxx11ERNS_5LexerEPKc(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull @.str.87)
          to label %.critedge69.i unwind label %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge.i:                                      ; preds = %.noexc109.i, %.noexc108.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ce = load ptr, ptr %8, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.ae
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i: ; preds = %.critedge.i
  %i.cg = load i64, ptr %i.ae, align 8, !tbaa !46, !noalias !182
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i: ; preds = %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !182
  br label %_ZN4LuauL4nextERNS_5LexerE.exit100.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp250.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn61.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp267, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit.split-lp264, %.loopexit.split-lp250.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp267, %.loopexit.split-lp206.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !182
  br label %.loopexit.split-lp.i

bb.u:                                             ; preds = %bb.g
  switch i32 %i.ag, label %.invoke.i [
    i32 125, label %bb.v
    i32 279, label %bb.aa
  ]

bb.v:                                             ; preds = %bb.u
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc115.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc115.i:                                      ; preds = %bb.v
  %i.cj = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 265
  br i1 %i.ck, label %.lr.ph.i114.i, label %_ZN4LuauL4nextERNS_5LexerE.exit117.i

.lr.ph.i114.i:                                    ; preds = %.noexc115.i, %.noexc116.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc116.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116.i:                                      ; preds = %.lr.ph.i114.i
  %i.cl = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 265
  br i1 %i.cm, label %.lr.ph.i114.i, label %_ZN4LuauL4nextERNS_5LexerE.exit117.i, !llvm.loop !180

_ZN4LuauL4nextERNS_5LexerE.exit117.i:             ; preds = %.noexc116.i, %.noexc115.i
  %i.cn = phi i32 [ %i.cj, %.noexc115.i ], [ %i.cl, %.noexc116.i ] ; 2 uses
  %i.co = load ptr, ptr %7, align 8, !tbaa !67, !noalias !182
  %i.cp = load ptr, ptr %i.z, align 8, !tbaa !67, !noalias !182 ; 3 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit117.i
  %.not59.i = icmp eq i32 %i.cn, 0
  br i1 %.not59.i, label %bb.x, label %.invoke.i

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.ad, align 8, !tbaa !78, !alias.scope !182
  br label %.loopexit245.i

bb.y:                                             ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit117.i
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 -32 ; 2 uses
  store ptr %i.cr, ptr %i.z, align 8, !tbaa !48, !noalias !182
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !49 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 -16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118.i: ; preds = %bb.y
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !46
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #20
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118.i
  %i.cx = phi i32 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118.i ], [ %i.cn, %bb.y ]
  switch i32 %i.cx, label %.invoke.i [
    i32 44, label %bb.z
    i32 125, label %_ZN4LuauL4nextERNS_5LexerE.exit100.i
  ]

bb.z:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i
  %i.cy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc122.i:                                      ; preds = %bb.z
  %i.cz = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.da = icmp eq i32 %i.cz, 265
  br i1 %i.da, label %.lr.ph.i121.i, label %_ZN4LuauL4nextERNS_5LexerE.exit100.i

.lr.ph.i121.i:                                    ; preds = %.noexc122.i, %.noexc123.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc123.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc123.i:                                      ; preds = %.lr.ph.i121.i
  %i.db = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.dc = icmp eq i32 %i.db, 265
  br i1 %i.dc, label %.lr.ph.i121.i, label %_ZN4LuauL4nextERNS_5LexerE.exit100.i, !llvm.loop !180

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !182
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !46, !noalias !182 ; 3 uses
  %i.de = invoke noundef i32 @_ZNK4Luau6Lexeme9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.ab unwind label %.loopexit.split-lp236.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ab:                                            ; preds = %bb.aa
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  store ptr %i.x, ptr %9, align 8, !tbaa !44, !noalias !182
  %i.dg = icmp eq ptr %i.dd, null
  %i.dh = icmp ne i32 %i.de, 0
  %or.cond.i125.i = and i1 %i.dg, %i.dh
  br i1 %or.cond.i125.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.83) #21
          to label %.noexc128.i unwind label %.loopexit.split-lp236.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc128.i:                                      ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !182
  store i64 %i.df, ptr %i.c, align 8, !tbaa !65, !noalias !182
  %i.di = icmp ugt i32 %i.de, 15
  br i1 %i.di, label %.noexc.i127.i, label %._crit_edge.i.i126.i

.noexc.i127.i:                                    ; preds = %bb.ad
  %i.dj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc129.i unwind label %.loopexit.split-lp236.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc129.i:                                      ; preds = %.noexc.i127.i
  store ptr %i.dj, ptr %9, align 8, !tbaa !49, !noalias !182
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !65, !noalias !182
  store i64 %i.dk, ptr %i.x, align 8, !tbaa !46, !noalias !182
  br label %._crit_edge.i.i126.i

._crit_edge.i.i126.i:                             ; preds = %.noexc129.i, %bb.ad
  %i.dl = phi ptr [ %i.dj, %.noexc129.i ], [ %i.x, %bb.ad ] ; 2 uses
  switch i32 %i.de, label %bb.af [
    i32 1, label %bb.ae
    i32 0, label %bb.ag
  ]

bb.ae:                                            ; preds = %._crit_edge.i.i126.i
  %i.dm = load i8, ptr %i.dd, align 1, !tbaa !46
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !46
  br label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i126.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dd, i64 %i.df, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %._crit_edge.i.i126.i
  %i.dn = load i64, ptr %i.c, align 8, !tbaa !65, !noalias !182 ; 2 uses
  store i64 %i.dn, ptr %i.y, align 8, !tbaa !45, !noalias !182
  %i.do = load ptr, ptr %9, align 8, !tbaa !49, !noalias !182
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  store i8 0, ptr %i.dp, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !182
  %i.dq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc132.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc132.i:                                      ; preds = %bb.ag
  %i.dr = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.ds = icmp eq i32 %i.dr, 265
  br i1 %i.ds, label %.lr.ph.i131.i, label %_ZN4LuauL4nextERNS_5LexerE.exit134.i

.lr.ph.i131.i:                                    ; preds = %.noexc132.i, %.noexc133.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc133.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc133.i:                                      ; preds = %.lr.ph.i131.i
end_hunk_3
begin_hunk_4_@_ZN4Luau11parseConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6ConfigERKNS_13ConfigOptionsE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !182
  %i.ej = load ptr, ptr %i.z, align 8, !tbaa !48, !noalias !182
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store ptr %i.ek, ptr %i.z, align 8, !tbaa !48, !noalias !182
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i

bb.ak:                                            ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit134.i
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.el = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %.not49.i = icmp eq i32 %i.el, 58
  br i1 %.not49.i, label %bb.al, label %.invoke375.i

.invoke375.i:                                     ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit140.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  %i.em = phi ptr [ @.str.91, %_ZN4LuauL4nextERNS_5LexerE.exit140.i ], [ @.str.90, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i ]
  invoke fastcc void @_ZN4LuauL4failB5cxx11ERNS_5LexerEPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull %i.em)
          to label %_ZN4LuauL4nextERNS_5LexerE.exit144.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp236.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i127.i, %bb.aa, %bb.ac
  %lpad.loopexit.split-lp256 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182.i

.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i137.i, %.lr.ph.i141.i, %.lr.ph.i131.i, %bb.am, %bb.al, %.invoke375.i, %bb.ak, %.noexc.i.i.i, %bb.ag
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp219.i

bb.al:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  %i.en = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc138.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc138.i:                                      ; preds = %bb.al
  %i.eo = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 265
  br i1 %i.ep, label %.lr.ph.i137.i, label %_ZN4LuauL4nextERNS_5LexerE.exit140.i

.lr.ph.i137.i:                                    ; preds = %.noexc138.i, %.noexc139.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc139.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139.i:                                      ; preds = %.lr.ph.i137.i
  %i.eq = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182 ; 2 uses
  %i.er = icmp eq i32 %i.eq, 265
  br i1 %i.er, label %.lr.ph.i137.i, label %_ZN4LuauL4nextERNS_5LexerE.exit140.i, !llvm.loop !180

_ZN4LuauL4nextERNS_5LexerE.exit140.i:             ; preds = %.noexc139.i, %.noexc138.i
  %i.es = phi i32 [ %i.eo, %.noexc138.i ], [ %i.eq, %.noexc139.i ] ; 3 uses
  switch i32 %i.es, label %.invoke375.i [
    i32 123, label %bb.am
    i32 91, label %bb.am
    i32 279, label %bb.an
    i32 309, label %._crit_edge.i.i151.i
    i32 297, label %._crit_edge.i.i151.i
  ]

bb.am:                                            ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit140.i, %_ZN4LuauL4nextERNS_5LexerE.exit140.i
  %i.et = icmp eq i32 %i.es, 91                   ; 2 uses
  %i.eu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc142.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc142.i:                                      ; preds = %bb.am
  %i.ev = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.ew = icmp eq i32 %i.ev, 265
  br i1 %i.ew, label %.lr.ph.i141.i, label %_ZN4LuauL4nextERNS_5LexerE.exit144.i

.lr.ph.i141.i:                                    ; preds = %.noexc142.i, %.noexc143.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc143.i unwind label %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc143.i:                                      ; preds = %.lr.ph.i141.i
  %i.ex = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.ey = icmp eq i32 %i.ex, 265
  br i1 %i.ey, label %.lr.ph.i141.i, label %_ZN4LuauL4nextERNS_5LexerE.exit144.i, !llvm.loop !180

bb.an:                                            ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit140.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !182
  %i.ez = load ptr, ptr %i.w, align 8, !tbaa !46, !noalias !182 ; 3 uses
  %i.fa = invoke noundef i32 @_ZNK4Luau6Lexeme9getLengthEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %bb.ao unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.ao:                                            ; preds = %bb.an
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  store ptr %i.ab, ptr %10, align 8, !tbaa !44, !noalias !182
  %i.fc = icmp eq ptr %i.ez, null
  %i.fd = icmp ne i32 %i.fa, 0
  %or.cond.i145.i = and i1 %i.fc, %i.fd
  br i1 %or.cond.i145.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.83) #21
          to label %.noexc148.i unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc148.i:                                      ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !182
  store i64 %i.fb, ptr %i.a, align 8, !tbaa !65, !noalias !182
  %i.fe = icmp ugt i32 %i.fa, 15
  br i1 %i.fe, label %.noexc.i147.i, label %._crit_edge.i.i146.i

.noexc.i147.i:                                    ; preds = %bb.aq
  %i.ff = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc149.i unwind label %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc149.i:                                      ; preds = %.noexc.i147.i
  store ptr %i.ff, ptr %10, align 8, !tbaa !49, !noalias !182
  %i.fg = load i64, ptr %i.a, align 8, !tbaa !65, !noalias !182
  store i64 %i.fg, ptr %i.ab, align 8, !tbaa !46, !noalias !182
  br label %._crit_edge.i.i146.i

._crit_edge.i.i146.i:                             ; preds = %.noexc149.i, %bb.aq
  %i.fh = phi ptr [ %i.ff, %.noexc149.i ], [ %i.ab, %bb.aq ] ; 2 uses
  switch i32 %i.fa, label %bb.as [
    i32 1, label %bb.ar
    i32 0, label %.critedge80.i
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i146.i
  %i.fi = load i8, ptr %i.ez, align 1, !tbaa !46
  store i8 %i.fi, ptr %i.fh, align 1, !tbaa !46
  br label %.critedge80.i

bb.as:                                            ; preds = %._crit_edge.i.i146.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fh, ptr align 1 %i.ez, i64 %i.fb, i1 false)
  br label %.critedge80.i

._crit_edge.i.i151.i:                             ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit140.i, %_ZN4LuauL4nextERNS_5LexerE.exit140.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !182
  %i.fj = icmp eq i32 %i.es, 309                  ; 3 uses
  %i.fk = select i1 %i.fj, ptr @.str.75, ptr @.str.76
  store ptr %i.ab, ptr %10, align 8, !tbaa !44, !noalias !182
  %i.fl = select i1 %i.fj, i64 4, i64 5           ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.ab, ptr noundef nonnull align 1 dereferenceable(4) %i.fk, i64 %i.fl, i1 false), !noalias !182
  store i64 %i.fl, ptr %i.ac, align 8, !tbaa !45, !noalias !182
  %.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fj, i64 20, i64 21
  %.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %10, i64 %.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !46, !noalias !182
  br label %.critedge74.i

.critedge80.i:                                    ; preds = %bb.as, %bb.ar, %._crit_edge.i.i146.i
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !65, !noalias !182 ; 2 uses
  store i64 %i.fm, ptr %i.ac, align 8, !tbaa !45, !noalias !182
  %i.fn = load ptr, ptr %10, align 8, !tbaa !49, !noalias !182
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  store i8 0, ptr %i.fo, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !182
  br label %.critedge74.i

.critedge74.i:                                    ; preds = %.critedge80.i, %._crit_edge.i.i151.i
  %i.fp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc155.i unwind label %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc155.i:                                      ; preds = %.critedge74.i
  %i.fq = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.fr = icmp eq i32 %i.fq, 265
  br i1 %i.fr, label %.lr.ph.i154.i, label %_ZN4LuauL4nextERNS_5LexerE.exit157.i

.lr.ph.i154.i:                                    ; preds = %.noexc155.i, %.noexc156.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc156.i unwind label %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc156.i:                                      ; preds = %.lr.ph.i154.i
  %i.fs = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.ft = icmp eq i32 %i.fs, 265
  br i1 %i.ft, label %.lr.ph.i154.i, label %_ZN4LuauL4nextERNS_5LexerE.exit157.i, !llvm.loop !180

_ZN4LuauL4nextERNS_5LexerE.exit157.i:             ; preds = %.noexc156.i, %.noexc155.i
  %.val82.i = load ptr, ptr %7, align 8, !tbaa !47, !noalias !182
  %.val83.i = load ptr, ptr %i.z, align 8, !tbaa !48, !noalias !182
  invoke fastcc void @"_ZZN4Luau11parseConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6ConfigERKNS_13ConfigOptionsEENK3$_0clB5cxx11ERKSt6vectorIS5_SaIS5_EES7_"(ptr dead_on_unwind noalias writable align 8 %0, ptr nonnull %2, ptr nonnull %3, ptr %.val82.i, ptr %.val83.i, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.at unwind label %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit157.i
  %i.fu = load i8, ptr %i.ad, align 8, !tbaa !78, !range !52, !alias.scope !182, !noundef !53
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %.critedge79.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit163.i

.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i147.i, %bb.an, %bb.ap
  %lpad.loopexit.split-lp259 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge76.i

.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i167.i, %.lr.ph.i154.i, %bb.av, %bb.au, %_ZN4LuauL4nextERNS_5LexerE.exit157.i, %.critedge74.i
  %lpad.loopexit.split-lp247 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %10, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ab
  br i1 %i.fx, label %.critedge76.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158.i: ; preds = %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fy = load i64, ptr %i.ab, align 8, !tbaa !46, !noalias !182
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #20
  br label %.critedge76.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit163.i: ; preds = %bb.at
  store i8 0, ptr %i.ad, align 8, !tbaa !78, !alias.scope !182
  %i.ga = load ptr, ptr %i.z, align 8, !tbaa !48, !noalias !182 ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -32 ; 2 uses
  store ptr %i.gb, ptr %i.z, align 8, !tbaa !48, !noalias !182
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !49 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %i.ga, i64 -16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit166.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit163.i
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !46
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit166.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit166.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit163.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164.i
  %i.gh = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  switch i32 %i.gh, label %bb.av [
    i32 44, label %bb.au
    i32 125, label %.critedge78.i
  ]

bb.au:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit166.i
  %i.gi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4Luau5Lexer4nextEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc168.i unwind label %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc168.i:                                      ; preds = %bb.au
  %i.gj = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.gk = icmp eq i32 %i.gj, 265
  br i1 %i.gk, label %.lr.ph.i167.i, label %.critedge78.i

.lr.ph.i167.i:                                    ; preds = %.noexc168.i, %.noexc169.i
  invoke void @_ZN4Luau5Lexer8nextlineEv(ptr noundef nonnull align 8 dereferenceable(120) %6)
          to label %.noexc169.i unwind label %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc169.i:                                      ; preds = %.lr.ph.i167.i
  %i.gl = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  %i.gm = icmp eq i32 %i.gl, 265
  br i1 %i.gm, label %.lr.ph.i167.i, label %.critedge78.i, !llvm.loop !180

bb.av:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit166.i
  invoke fastcc void @_ZN4LuauL4failB5cxx11ERNS_5LexerEPKc(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull @.str.86)
          to label %.critedge79.i unwind label %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.critedge78.i:                                    ; preds = %.noexc169.i, %.noexc168.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit166.i
  %i.gn = load ptr, ptr %10, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.ab
  br i1 %i.go, label %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i, label %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i.sink.split

.critedge76.i:                                    ; preds = %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158.i
  %.pn53.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158.i ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp241.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp247, %.loopexit.split-lp223.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !182
  br label %.loopexit.split-lp219.i

.critedge79.i:                                    ; preds = %bb.av, %bb.at
  %i.gp = load ptr, ptr %10, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.ab
  br i1 %i.gq, label %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i, label %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i.sink.split

_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i.sink.split: ; preds = %.critedge79.i, %.critedge78.i
  %.sink = phi ptr [ %i.gn, %.critedge78.i ], [ %i.gp, %.critedge79.i ]
  %cond.ph.i.ph = phi i1 [ true, %.critedge78.i ], [ false, %.critedge79.i ]
  %i.gr = load i64, ptr %i.ab, align 8, !tbaa !46, !noalias !182
  %i.gs = add i64 %i.gr, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.gs) #20
  br label %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i

_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i:  ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i.sink.split, %.critedge79.i, %.critedge78.i
  %cond.ph.i = phi i1 [ true, %.critedge78.i ], [ false, %.critedge79.i ], [ %cond.ph.i.ph, %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !182
  br label %_ZN4LuauL4nextERNS_5LexerE.exit144.i

_ZN4LuauL4nextERNS_5LexerE.exit144.i:             ; preds = %.noexc143.i, %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i, %.noexc142.i, %.invoke375.i
  %.233.i = phi i1 [ false, %.invoke375.i ], [ %i.et, %.noexc142.i ], [ false, %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i ], [ %i.et, %.noexc143.i ]
  %cond.i = phi i1 [ false, %.invoke375.i ], [ true, %.noexc142.i ], [ %cond.ph.i, %_ZN4LuauL4nextERNS_5LexerE.exit144.sink.split.i ], [ true, %.noexc143.i ]
  %i.gt = load ptr, ptr %9, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.x
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.i: ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit144.i
  %i.gv = load i64, ptr %i.x, align 8, !tbaa !46, !noalias !182
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i: ; preds = %_ZN4LuauL4nextERNS_5LexerE.exit144.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !182
  br i1 %cond.i, label %_ZN4LuauL4nextERNS_5LexerE.exit100.i, label %.loopexit245.i

.loopexit.split-lp219.i:                          ; preds = %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.critedge76.i
  %.pn55.i = phi { ptr, i32 } [ %.pn53.i, %.critedge76.i ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp219.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.gx = load ptr, ptr %9, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.x
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180.i: ; preds = %.loopexit.split-lp219.i
  %i.gz = load i64, ptr %i.x, align 8, !tbaa !46, !noalias !182
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gx, i64 noundef %i.ha) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182.i: ; preds = %.loopexit.split-lp219.i, %.loopexit.split-lp236.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180.i
  %.pn55.pn.i = phi { ptr, i32 } [ %.pn55.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180.i ], [ %lpad.loopexit.split-lp256, %.loopexit.split-lp236.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn55.i, %.loopexit.split-lp219.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !182
  br label %.loopexit.split-lp.i

.invoke.i:                                        ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i, %bb.u, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i, %bb.h, %bb.w, %_ZN4LuauL4nextERNS_5LexerE.exit.i
  %i.hb = phi ptr [ @.str.85, %_ZN4LuauL4nextERNS_5LexerE.exit.i ], [ @.str.89, %bb.w ], [ @.str.92, %bb.u ], [ @.str.86, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i ], [ @.str.88, %bb.h ], [ @.str.86, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i ]
  invoke fastcc void @_ZN4LuauL4failB5cxx11ERNS_5LexerEPKc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef nonnull %i.hb)
          to label %.loopexit245.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4LuauL4nextERNS_5LexerE.exit100.i:             ; preds = %.noexc123.i, %.noexc99.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i, %.noexc122.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i, %.noexc98.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i
  %.334.i = phi i1 [ %.233.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.i ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113.i ], [ false, %.noexc99.i ], [ false, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit120.i ], [ false, %.noexc98.i ], [ false, %.noexc122.i ], [ false, %.noexc123.i ]
  %.pre = load i32, ptr %i.i, align 8, !tbaa !183, !noalias !182
  br label %bb.g, !llvm.loop !181

.critedge69.i:                                    ; preds = %bb.r, %bb.t
  %i.hc = load ptr, ptr %8, align 8, !tbaa !49, !noalias !182 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.ae
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183.i: ; preds = %.critedge69.i
  %i.he = load i64, ptr %i.ae, align 8, !tbaa !46, !noalias !182
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.i: ; preds = %.critedge69.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i183.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !182
  br label %.loopexit245.i

.loopexit245.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185.i, %.invoke.i, %bb.x
  %i.hg = load ptr, ptr %7, align 8, !tbaa !47, !noalias !182 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !48, !noalias !182 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hg, %i.hi
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit245.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ho, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.hg, %.loopexit245.i ] ; 3 uses
  %i.hj = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186.i: ; preds = %.lr.ph.i.i.i.i
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !46
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i186.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ho, %i.hi
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %7, align 8, !tbaa !47, !noalias !182
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %.loopexit245.i
  %i.hp = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.hg, %.loopexit245.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hp, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !51, !noalias !182
  %i.hs = ptrtoint ptr %i.hr to i64
  %i.ht = ptrtoint ptr %i.hp to i64
  %i.hu = sub i64 %i.hs, %i.ht
  call void @_ZdlPvm(ptr noundef nonnull %i.hp, i64 noundef %i.hu) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.aw, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !182
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !185, !noalias !182 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i, label %_ZN4Luau5LexerD2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !186, !noalias !182
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ib) #20
  br label %_ZN4Luau5LexerD2Ev.exit.i

_ZN4Luau5LexerD2Ev.exit.i:                        ; preds = %bb.ax, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !182
  %i.ic = load ptr, ptr %5, align 8, !tbaa !192, !noalias !182 ; 2 uses
  %.not.i.i.i188.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i188.i, label %"_ZN4LuauL9parseJsonIZNS_11parseConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6ConfigERKNS_13ConfigOptionsEE3$_0EESt8optionalIS6_ES8_T_.exit", label %bb.ay

bb.ay:                                            ; preds = %_ZN4Luau5LexerD2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ic) #19
  br label %"_ZN4LuauL9parseJsonIZNS_11parseConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_6ConfigERKNS_13ConfigOptionsEE3$_0EESt8optionalIS6_ES8_T_.exit"

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
end_hunk_4
begin_hunk_5_@_ZN4Luau6ConfigC2EOS0_:bb.a
  %i.cb = load ptr, ptr %i.bo, align 8, !tbaa !49
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz
  store i8 0, ptr %i.cc, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i8 0, i64 24, i1 false)
  ret void

bb.i:                                             ; preds = %.noexc.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i.i.i11
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(64) %i.an) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.j ], [ %i.cd, %bb.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #19
  call void @_ZN4Luau12ParseOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %i.d) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(280) ptr @_ZN4Luau6ConfigaSEOS0_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !41
  store i32 %i.a, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8
  store i16 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE14_M_move_assignEOS2_(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load i16, ptr %i.h, align 8
  store i16 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.j, ptr noundef nonnull align 8 dereferenceable(18) %i.k, i64 18, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !47   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.s = load <2 x ptr>, ptr %i.m, align 8, !tbaa !67
  store <2 x ptr> %i.s, ptr %i.l, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !51
  store ptr %i.u, ptr %i.q, align 8, !tbaa !51
  %.not4.i.i.i.i.i = icmp eq ptr %i.n, %i.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.n, %bb.a ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !46
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.p
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %bb.a
  %.not.i.i1.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ab = ptrtoint ptr %i.r to i64
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ad) #20
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ag = tail call noundef nonnull align 8 dereferenceable(58) ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EEaSEOSK_(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.af) ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aj = tail call noundef nonnull align 8 dereferenceable(58) ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EEaSEOSM_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %i.ai) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE14_M_move_assignEOS2_(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(73) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !42, !range !52, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i8, ptr %i.d, align 8, !range !52
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %0, %1
  br i1 %.not.i.i.i, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEaSEOS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %i.h, ptr %0, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load <2 x i64>, ptr %i.i, align 8, !tbaa !65
  store <2 x i64> %i.k, ptr %i.j, align 8, !tbaa !65
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.l, align 8, !tbaa !70
  store i64 %i.n, ptr %i.m, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 24, i1 false)
  br label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEaSEOS8_.exit.i

_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEaSEOS8_.exit.i: ; preds = %bb.e, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !57   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = load <2 x ptr>, ptr %i.p, align 8, !tbaa !85
  store <2 x ptr> %i.t, ptr %i.o, align 8, !tbaa !85
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  store ptr %i.v, ptr %i.r, align 8, !tbaa !58
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN4Luau27FragmentParseResumeSettingsaSEOS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEaSEOS8_.exit.i
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.y) #20
  br label %_ZN4Luau27FragmentParseResumeSettingsaSEOS0_.exit

_ZN4Luau27FragmentParseResumeSettingsaSEOS0_.exit: ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEaSEOS8_.exit.i, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !12
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !12
  br label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %i.ac, ptr %0, align 8, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !65
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !65
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !70
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !85
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !tbaa !85
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !12
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !12
  store i8 1, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.a, align 8, !tbaa !42
  br i1 %i.c, label %bb.j, label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE8_M_resetEv.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 3 uses
  %.not.i.i.i.i.i.i7 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i7, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.k, %bb.j
  %i.az = load ptr, ptr %0, align 8, !tbaa !64    ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE8_M_resetEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.az) #19
  br label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE8_M_resetEv.exit: ; preds = %bb.l, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i, %bb.i, %bb.h, %_ZN4Luau27FragmentParseResumeSettingsaSEOS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(58) ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EEaSEOSK_(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 dereferenceable(58) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !69     ; 3 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZN4Luau6Config9AliasInfoD2Ev.exit.i.i
  %.06.i.i = phi i64 [ %i.v, %_ZN4Luau6Config9AliasInfoD2Ev.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %i.a, i64 %.06.i.i ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !46
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !46
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN4Luau6Config9AliasInfoD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !46
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZN4Luau6Config9AliasInfoD2Ev.exit.i.i

_ZN4Luau6Config9AliasInfoD2Ev.exit.i.i:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.v = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.c
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Config9AliasInfoEE7destroyEPSt4pairIS7_S9_Em.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Config9AliasInfoEE7destroyEPSt4pairIS7_S9_Em.exit.loopexit.i: ; preds = %_ZN4Luau6Config9AliasInfoD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !69
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit: ; preds = %bb.c, %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Config9AliasInfoEE7destroyEPSt4pairIS7_S9_Em.exit.loopexit.i
  %i.w = phi ptr [ %.pre.i, %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_6Config9AliasInfoEE7destroyEPSt4pairIS7_S9_Em.exit.loopexit.i ], [ %i.a, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.w) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_NS_6Config9AliasInfoEES8_IKS7_SA_ENS0_16ItemInterfaceMapIS7_SA_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit, %bb.b
  %i.x = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.x, ptr %0, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !tbaa !65
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(58) ptr @_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EEaSEOSM_(ptr noundef nonnull align 8 dereferenceable(58) %0, ptr noundef nonnull align 8 dereferenceable(58) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 3 uses
  %.not10 = icmp eq ptr %i.a, null
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i
  %.06.i.i = phi i64 [ %i.q, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %.06.i.i ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !46
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !46
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 32) #20
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.q = add nuw i64 %.06.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.q, %i.c
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIS7_St14default_deleteIS7_EEE7destroyEPSt4pairIS7_SB_Em.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIS7_St14default_deleteIS7_EEE7destroyEPSt4pairIS7_SB_Em.exit.loopexit.i: ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !84
  br label %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit

_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit: ; preds = %bb.c, %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIS7_St14default_deleteIS7_EEE7destroyEPSt4pairIS7_SB_Em.exit.loopexit.i
  %i.r = phi ptr [ %.pre.i, %_ZN4Luau6detail16ItemInterfaceMapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIS7_St14default_deleteIS7_EEE7destroyEPSt4pairIS7_SB_Em.exit.loopexit.i ], [ %i.a, %bb.c ]
  tail call void @_ZdlPv(ptr noundef %i.r) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %0, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIS7_St10unique_ptrIS7_St14default_deleteIS7_EEES8_IKS7_SC_ENS0_16ItemInterfaceMapIS7_SC_EESt4hashIS7_ESt8equal_toIS7_EE7destroyEv.exit, %bb.b
  %i.s = load ptr, ptr %1, align 8, !tbaa !84
  store ptr %i.s, ptr %0, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load <2 x i64>, ptr %i.t, align 8, !tbaa !65
  store <2 x i64> %i.v, ptr %i.u, align 8, !tbaa !65
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
end_hunk_5
