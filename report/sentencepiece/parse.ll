Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/parse?download=true
inline.NumInlined: 1795
inline.NumDeleted: 747
begin_hunk_0_@_ZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterE:bb.a

bb.g:                                             ; preds = %_ZZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterEENKUlPcmE_clESL_m.exit.i.i.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i64 noundef %.013.lcssa, i64 noundef %i.z) #26
          to label %.noexc15 unwind label %bb.h

.noexc15:                                         ; preds = %bb.g
  unreachable

_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_16strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKS7_St6vectorIS7_SaIS7_EEEEvEES7_T_SI_St17basic_string_viewIcS5_ENS8_11NoFormatterEEUlPcmE_EEvRSI_NSI_9size_typeET0_.exit: ; preds = %_ZZN4absl12lts_2026052616strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterEENKUlPcmE_clESL_m.exit.i.i.i
  %i.ab = load ptr, ptr %0, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.013.lcssa
  store i64 %.013.lcssa, ptr %i.b, align 8, !tbaa !36
  store i8 0, ptr %i.ac, align 1, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.a
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !29
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad

bb.i:                                             ; preds = %_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_16strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKS7_St6vectorIS7_SaIS7_EEEEvEES7_T_SI_St17basic_string_viewIcS5_ENS8_11NoFormatterEEUlPcmE_EEvRSI_NSI_9size_typeET0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2026052619ThrowStdLengthErrorEPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPPcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.019 = phi ptr [ %i.p, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.01218 = phi ptr [ %i.o, %bb.e ], [ %0, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %.01218, align 8, !tbaa !35 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 3 uses
  store ptr %i.c, ptr %.019, align 8, !tbaa !49
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %.lr.ph
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.46) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.e, ptr %i.a, align 8, !tbaa !34
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.019, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc13:                                         ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.019, align 8, !tbaa !28
  %i.h = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.h, ptr %i.c, align 8, !tbaa !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc13, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc13 ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !29
  store i8 %i.j, ptr %i.i, align 1, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !36
  %i.m = load ptr, ptr %.019, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.01218, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc.i.i, %.noexc.i
  %lpad.loopexit.split-lp32 = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %lpad.loopexit.split-lp32, 0
  %i.r = call ptr @__cxa_begin_catch(ptr %i.q) #27 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.e ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.loopexit.split-lp.loopexit.split-lp
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #28
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.d = load i64, ptr %i.b, align 8, !tbaa !29
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_116ReadFlagsFromEnvERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EERS3_INS2_8ArgsListESaISE_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.15", align 8    ; 15 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %13 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %17 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  %18 = alloca %"class.absl::lts_20260526::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA1_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr null, ptr noundef nonnull align 1 dereferenceable(1) @.str.38)
          to label %.noexc46 unwind label %bb.b

.noexc46:                                         ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33   ; 2 uses
  %.not113 = icmp eq ptr %i.b, %i.d
  br i1 %.not113, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc46
  %19 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.w
  br i1 %.3, label %._crit_edge.thread, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit

bb.b:                                             ; preds = %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.af, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %.lr.ph, %bb.w
  %.0115 = phi i1 [ true, %.lr.ph ], [ %.3, %bb.w ] ; 2 uses
  %.sroa.087.0114 = phi ptr [ %i.b, %.lr.ph ], [ %i.dg, %bb.w ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.087.0114, i64 8 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36
  switch i64 %i.aa, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread91 [
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.ab = load ptr, ptr %.sroa.087.0114, align 8, !tbaa !28 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = xor i32 %i.ac, 1836020326
  %i.ae = getelementptr i8, ptr %i.ab, i64 3
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = xor i32 %i.af, 1986946413
  %i.ah = or i32 %i.ad, %i.ag
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread91

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48: ; preds = %bb.c
  %i.al = load ptr, ptr %.sroa.087.0114, align 8, !tbaa !28 ; 2 uses
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 7308620307428373108
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i64
  %i.ar = xor i64 %i.aq, 30318
  %i.as = or i64 %i.an, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread91

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store i64 27, ptr %5, align 8
  store ptr @.str.47, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.aw = load ptr, ptr %.sroa.087.0114, align 8, !tbaa !28
  %i.ax = load i64, ptr %i.z, align 8, !tbaa !36
  store i64 %i.ax, ptr %6, align 8
  store ptr %i.aw, ptr %i.e, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ay = load ptr, ptr %4, align 8, !tbaa !28
  %i.az = load i64, ptr %i.f, align 8, !tbaa !36
  invoke void @_ZN4absl12lts_2026052614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.az, ptr %i.ay, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.g
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !29
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.w

bb.f:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

bb.g:                                             ; preds = %bb.d
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.g
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.g
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !29
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %bb.f
  %.pn41 = phi { ptr, i32 } [ %i.be, %bb.f ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bf, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread91: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  store i64 6, ptr %8, align 8
  store ptr @.str.48, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.bk = load ptr, ptr %.sroa.087.0114, align 8, !tbaa !28
  %i.bl = load i64, ptr %i.z, align 8, !tbaa !36
  store i64 %i.bl, ptr %9, align 8
  store ptr %i.bk, ptr %i.i, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %i.j, ptr %10, align 8, !tbaa !49
  store i64 0, ptr %i.k, align 8, !tbaa !36
  store i8 0, ptr %i.j, align 8, !tbaa !29
  %i.bm = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.bn = call ptr @getenv(ptr noundef readonly %i.bm) #27 ; 3 uses
  %.not92 = icmp eq ptr %i.bn, null
  br i1 %.not92, label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19GetEnvVarEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #27
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.bn, i64 noundef %i.bo)
          to label %bb.q unwind label %bb.n       ; 0 uses

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19GetEnvVarEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.h
  br i1 %2, label %bb.j, label %bb.v

bb.j:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19GetEnvVarEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bq = load i64, ptr %i.s, align 8, !tbaa !36
  store i64 %i.bq, ptr %12, align 8
  store ptr %i.bm, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  store i64 25, ptr %13, align 8
  store ptr @.str.49, ptr %i.u, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %11, align 8, !tbaa !28
  %i.bs = load i64, ptr %i.v, align 8, !tbaa !36
  invoke void @_ZN4absl12lts_2026052614flags_internal16ReportUsageErrorESt17basic_string_viewIcSt11char_traitsIcEEb(i64 %i.bs, ptr %i.br, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.w
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.l
  %i.bv = load i64, ptr %i.w, align 8, !tbaa !29
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.v

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit48.thread91
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.n:                                             ; preds = %bb.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.o:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.p:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.w
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.p
  %i.cd = load i64, ptr %i.w, align 8, !tbaa !29
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.o
  %.pn33 = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.ca, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.z

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store i64 2, ptr %15, align 8
  store ptr @.str.39, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.cf = load ptr, ptr %.sroa.087.0114, align 8, !tbaa !28
  %i.cg = load i64, ptr %i.z, align 8, !tbaa !36
  store i64 %i.cg, ptr %16, align 8
  store ptr %i.cf, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  store i64 1, ptr %17, align 8
  store ptr @.str.50, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.ch = load ptr, ptr %10, align 8, !tbaa !28
  %i.ci = load i64, ptr %i.k, align 8, !tbaa !36
  store i64 %i.ci, ptr %18, align 8
  store ptr %i.ch, ptr %i.o, align 8
  invoke void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(48) %18)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !23  ; 7 uses
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !31
  %.not.i.i = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 3 uses
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !49
  %i.cm = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.q
  br i1 %i.cn, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.co = load i64, ptr %i.r, align 8, !tbaa !36  ; 3 uses
  %i.cp = icmp ult i64 %i.co, 16
  call void @llvm.assume(i1 %i.cp)
  %i.cq = add nuw nsw i64 %i.co, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cl, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !28
  %i.cr = load i64, ptr %i.q, align 8, !tbaa !29
  store i64 %i.cr, ptr %i.cl, align 8, !tbaa !29
  %.pre = load i64, ptr %i.r, align 8, !tbaa !36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cs = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.co, %bb.t ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !36
  store ptr %i.q, ptr %14, align 8, !tbaa !28
  store i64 0, ptr %i.r, align 8, !tbaa !36
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store ptr %i.cu, ptr %i.a, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.u:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.y

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.u
  %.pre116 = load ptr, ptr %14, align 8, !tbaa !28 ; 2 uses
  %i.cv = icmp eq ptr %.pre116, %i.q
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.cw = load i64, ptr %i.q, align 8, !tbaa !29
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %.pre116, i64 noundef %i.cx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19GetEnvVarEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.2 = phi i1 [ %.0115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %.0115, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_19GetEnvVarEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %i.cy = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.j
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.v
  %i.da = load i64, ptr %i.j, align 8, !tbaa !29
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.dc = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.x
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.de = load i64, ptr %i.x, align 8, !tbaa !29
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.087.0114, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.d
  br i1 %.not, label %._crit_edge, label %bb.c

bb.x:                                             ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.y:                                             ; preds = %bb.u
  %i.di = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dj = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.q
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.y
  %i.dl = load i64, ptr %i.q, align 8, !tbaa !29
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.x
  %.pn35 = phi { ptr, i32 } [ %i.dh, %bb.x ], [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.di, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %bb.n
  %.pn35.pn.pn.pn = phi { ptr, i32 } [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60 ], [ %i.by, %bb.n ] ; 2 uses
  %i.dn = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.j
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %bb.z
  %i.dp = load i64, ptr %i.j, align 8, !tbaa !29
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.dr = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.x
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.dt = load i64, ptr %i.x, align 8, !tbaa !29
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.m
  %.pn35.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.m ], [ %.pn35.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn35.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.body

._crit_edge.thread:                               ; preds = %.noexc46, %._crit_edge
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !74 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !75
  %.not.i80 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not.i80, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.thread
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %i.ea = load ptr, ptr %3, align 8, !tbaa !22    ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i.i.i.i.i.i, label %.noexc83, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = icmp ugt i64 %i.ed, 9223372036854775776
  br i1 %i.ee, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !32

.noexc.i.i.i.i:                                   ; preds = %bb.ab
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc82 unwind label %bb.b

.noexc82:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.ab
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #24
          to label %.noexc83 unwind label %bb.b

.noexc83:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.aa
  %i.eg = phi ptr [ null, %bb.aa ], [ %i.ef, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.eg, ptr %i.dw, align 8, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ed
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 2 uses
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !31
  %i.ek = load ptr, ptr %3, align 8, !tbaa !33
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.em = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ek, ptr %i.el, ptr noundef %i.eg)
          to label %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %.noexc83
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %i.dw, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ep = load ptr, ptr %i.ej, align 8, !tbaa !31
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.es) #25
  br label %.body

_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE.exit.i: ; preds = %.noexc83
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store i64 0, ptr %i.et, align 8, !tbaa !70
  %i.eu = load ptr, ptr %i.dv, align 8, !tbaa !74
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store ptr %i.ev, ptr %i.dv, align 8, !tbaa !74
  br label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit

bb.ae:                                            ; preds = %._crit_edge.thread
  %.val4.i = load ptr, ptr %3, align 8            ; 3 uses
  %.val5.i = load ptr, ptr %i.a, align 8          ; 3 uses
  %.val.i.i = load ptr, ptr %1, align 8, !tbaa !73 ; 5 uses
  %i.ew = ptrtoint ptr %i.dw to i64
  %i.ex = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex                    ; 3 uses
  %i.ez = icmp eq i64 %i.ey, 9223372036854775776
  br i1 %i.ez, label %bb.af, label %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #26
          to label %.noexc84 unwind label %bb.b

.noexc84:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ae
  %i.fa = ashr exact i64 %i.ey, 5                 ; 3 uses
  %i.fb = icmp eq ptr %i.dw, %.val.i.i            ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.fb, i64 1, i64 %i.fa
  %i.fc = add nsw i64 %.sroa.speculated.i.i.i, %i.fa ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.fa
  %i.fe = call i64 @llvm.umin.i64(i64 %i.fc, i64 288230376151711743)
  %i.ff = select i1 %i.fd, i64 288230376151711743, i64 %i.fe ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ff, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fg = shl nuw nsw i64 %i.ff, 5                ; 2 uses
  %i.fh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fg) #24
          to label %.noexc85 unwind label %bb.b   ; 6 uses

.noexc85:                                         ; preds = %_ZNKSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.ey ; 6 uses
  %i.fj = ptrtoint ptr %.val5.i to i64
  %i.fk = ptrtoint ptr %.val4.i to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fi, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val5.i, %.val4.i
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc30.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc85
  %i.fm = icmp ugt i64 %i.fl, 9223372036854775776
  br i1 %i.fm, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !32

.noexc.i.i.i.i.i:                                 ; preds = %bb.ag
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i.i81 unwind label %bb.al

.noexc.i.i81:                                     ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  %i.fn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #24
          to label %.noexc30.i.i unwind label %bb.al

.noexc30.i.i:                                     ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc85
  %i.fo = phi ptr [ null, %.noexc85 ], [ %i.fn, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.fo, ptr %i.fi, align 8, !tbaa !22
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !23
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !31
  %i.fs = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %.val4.i, ptr %.val5.i, ptr noundef %i.fo)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %.noexc30.i.i
  %i.ft = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.fu = load ptr, ptr %i.fi, align 8, !tbaa !22 ; 3 uses
  %.not.i.i.i.i.i6.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i.i6.i, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !31
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fy) #25
  br label %bb.an

bb.aj:                                            ; preds = %.noexc30.i.i
  store ptr %i.fs, ptr %i.fp, align 8, !tbaa !23
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store i64 0, ptr %i.fz, align 8, !tbaa !70
  br i1 %i.fb, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aj, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i ], [ %i.fh, %bb.aj ] ; 4 uses
  %.092.i.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %bb.aj ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.ga = load <2 x ptr>, ptr %.092.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !176
  store <2 x ptr> %i.ga, ptr %.03.i.i.i.i.i, align 8, !tbaa !33, !alias.scope !175
  %i.gb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !31, !alias.scope !176
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !31, !alias.scope !175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.092.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !176
  %i.ge = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24
  %i.gf = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !70, !alias.scope !176
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !70, !alias.scope !175
  %i.gh = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 32 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i7.i = icmp eq ptr %i.gh, %i.dw
  br i1 %.not.i.i.i.i7.i, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.aj
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fh, %bb.aj ], [ %i.gi, %.lr.ph.i.i.i.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i38.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i38.i.i, label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i
  %i.gk = load ptr, ptr %i.dx, align 8, !tbaa !75
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.gl, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.gm) #25
  br label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

bb.al:                                            ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.an

bb.am:                                            ; preds = %bb.an
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.ai, %bb.ah
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.gn, %bb.al ], [ %i.ft, %bb.ai ], [ %i.ft, %bb.ah ]
  %i.gp = extractvalue { ptr, i32 } %eh.lpad-body.i.i, 0
  %i.gq = call ptr @__cxa_begin_catch(ptr %i.gp) #27 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fg) #25
  invoke void @__cxa_rethrow() #26
          to label %bb.ap unwind label %bb.am

bb.ao:                                            ; preds = %bb.am
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #28
  unreachable

bb.ap:                                            ; preds = %bb.an
  unreachable

_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit37.i.i
  store ptr %i.fh, ptr %1, align 8, !tbaa !73
  store ptr %i.gj, ptr %i.dv, align 8, !tbaa !74
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.fh, i64 %i.ff
  store ptr %i.gt, ptr %i.dx, align 8, !tbaa !75
  br label %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit

_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE.exit.i, %._crit_edge
  %.0.lcssa159 = phi i1 [ true, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE17_M_realloc_insertIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ true, %_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EE.exit.i ], [ false, %._crit_edge ]
  %i.gu = load ptr, ptr %3, align 8, !tbaa !22    ; 3 uses
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !23  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gu, %i.gv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gu, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit ] ; 3 uses
  %i.gw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !29
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.hb, %i.gv
  br i1 %.not.i.i.i86, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit
  %i.hc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gu, %_ZNSt6vectorIN4absl12lts_2026052614flags_internal12_GLOBAL__N_18ArgsListESaIS4_EE12emplace_backIJRS_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISD_EEEEERS4_DpOT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hd = load ptr, ptr %20, align 8, !tbaa !31
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.hc to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hg) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %.0.lcssa159

.body:                                            ; preds = %bb.ac, %bb.ad, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.b
  %.pn41.pn.pn.pn = phi { ptr, i32 } [ %.pn35.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.y, %bb.b ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %i.en, %bb.ac ], [ %i.en, %bb.ad ], [ %i.go, %bb.am ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn41.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEvSC_T_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not100 = icmp eq ptr %2, %3
  br i1 %.not100, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 5                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.h, %bb.d ] ; 5 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %bb.d ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.q, ptr %.013.i.i.i.i.i, align 8, !tbaa !49
  %i.r = load ptr, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.r, ptr %.013.i.i.i.i.i, align 8, !tbaa !28
  %i.y = load i64, ptr %i.s, align 8, !tbaa !29
  store i64 %i.y, ptr %i.q, align 8, !tbaa !29
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !36
  store ptr %i.s, ptr %.sroa.08.012.i.i.i.i.i, align 8, !tbaa !28
  store i64 0, ptr %i.z, align 8, !tbaa !36
  store i8 0, ptr %i.s, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !177

_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.c
  store ptr %i.af, ptr %i.g, align 8, !tbaa !23
  %i.ag = ptrtoint ptr %i.p to i64
  %i.ah = sub i64 %i.ag, %i.l
  %i.ai = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i51:                               ; preds = %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ai, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.h, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.p, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit ] ; 7 uses
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28 ; 6 uses
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !28 ; 6 uses
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  br i1 %i.ar, label %bb.f, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i51
  br i1 %i.ar, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !36 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  tail call void @llvm.assume(i1 %i.au)
  %.not21.i.i.i.i.i.i = icmp eq ptr %.078.i.i.i.i.i, %.069.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, label %bb.g, !prof !32

bb.g:                                             ; preds = %bb.f
  switch i64 %i.at, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !29
  store i8 %i.av, ptr %i.am, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !36
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !29
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ba = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !28
  %i.bb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !36
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !36
  %i.bd = load i64, ptr %i.aq, align 8, !tbaa !29
  store i64 %i.bd, ptr %i.an, align 8, !tbaa !29
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.be = load i64, ptr %i.an, align 8, !tbaa !29
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !28
  %i.bf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !36
  %i.bi = load i64, ptr %i.aq, align 8, !tbaa !29
  store i64 %i.bi, ptr %i.an, align 8, !tbaa !29
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !28
  store i64 %i.be, ptr %i.aq, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i, %bb.f
  %i.bj = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.am, %bb.j ], [ %i.aq, %bb.k ], [ %i.ap, %bb.f ]
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.bk, align 8, !tbaa !36
  store i8 0, ptr %i.bj, align 1, !tbaa !29
  %i.bl = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bm = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, !llvm.loop !178

_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_SaIS5_EET0_T_S9_S8_RT1_.exit
  %i.bn = icmp sgt i64 %i.d, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i52:                               ; preds = %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i52 ], [ %i.d, %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i52 ], [ %1, %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i52 ], [ %2, %_ZSt13move_backwardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
end_hunk_0
