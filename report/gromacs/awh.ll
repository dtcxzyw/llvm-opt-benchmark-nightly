Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/awh?download=true
inline.NumInlined: 1383
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx9GridPointESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_:bb.a
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %bb.f ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.loopexit.split-lp.loopexit.split-lp
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ab

bb.j:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #27
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN3gmx9GridPointEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx9GridPointEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i

_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i:       ; preds = %bb.b, %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx9GridPointEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !1

_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx9GridPointEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN3gmx9GridPointEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN3gmx18AwhOutputEntryTypeESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !333
  tail call void @_ZNSt8_Rb_treeIN3gmx18AwhOutputEntryTypeESt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !334  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !332

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx17CorrelationTensorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !339    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !340  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gmx17CorrelationTensorEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ab, %_ZSt8_DestroyIN3gmx17CorrelationTensorEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !343 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !344  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i.i.i.i.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i.i.i.i.i:  ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !347  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !348
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #25
  br label %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIdSaIdEED2Ev.exit.i.i.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !335

_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN3gmx20CorrelationBlockDataEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !343
  br label %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.v = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx17CorrelationTensorEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !349
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZSt8_DestroyIN3gmx17CorrelationTensorEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx17CorrelationTensorEEvPT_.exit.i.i: ; preds = %bb.d, %_ZSt8_DestroyIPN3gmx20CorrelationBlockDataES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !336

_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gmx17CorrelationTensorEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.ac = phi ptr [ %.pr, %_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !350
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #25
  br label %_ZNSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx17CorrelationTensorES1_EvT_S3_RSaIT0_E.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 36), (40, 80)) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %7, i32 noundef %8, i32 noundef %9) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.gmx::Bias", align 8        ; 6 uses
  %11 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %12 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %13 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %14 = alloca %"class.std::vector.27", align 8   ; 12 uses
  %15 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %16 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %17 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %18 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %19 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %20 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %21 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %22 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %24 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %25 = alloca %"class.gmx::Bias", align 8        ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !368
  store i64 %i.c, ptr %i.a, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !369
  store i32 %i.f, ptr %i.d, align 8, !tbaa !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %3, ptr %i.g, align 8, !tbaa !370
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  store ptr null, ptr %i.h, align 8, !tbaa !371
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %7, ptr %i.i, align 8, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double 0.000000e+00, ptr %i.j, align 8, !tbaa !95
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 %8, ptr %i.k, align 8, !tbaa !372
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %9, ptr %i.l, align 4, !tbaa !96
  %.val158 = load ptr, ptr %5, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  %.val159 = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.n = tail call fastcc noundef zeroext i1 @_ZN3gmxL18anyDimUsesProviderERKNS_9AwhParamsENS_25AwhCoordinateProviderTypeE(ptr %.val158, ptr %.val159, i32 noundef 0)
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !373
  %.not336 = icmp eq ptr %i.p, null
  br i1 %.not336, label %.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.invoke, label %bb.d

.invoke:                                          ; preds = %._crit_edge433, %bb.c, %bb.b
  %i.q = phi ptr [ @.str.12, %bb.b ], [ @.str.14, %bb.c ], [ @.str.80, %._crit_edge433 ]
  %i.r = phi ptr [ @.str.13, %bb.b ], [ @.str.15, %bb.c ], [ @.str.81, %._crit_edge433 ]
  %i.s = phi ptr [ @"__PRETTY_FUNCTION__._ZZN3gmx3AwhC1EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tiiENK3$_0clEv", %bb.b ], [ @"__PRETTY_FUNCTION__._ZZN3gmx3AwhC1EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tiiENK3$_0clEv", %bb.c ], [ @"__PRETTY_FUNCTION__._ZZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_tENK3$_0clEv", %._crit_edge433 ]
  %i.t = phi i32 [ 190, %bb.b ], [ 192, %bb.c ], [ 510, %._crit_edge433 ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull @.str.2, i32 noundef %i.t) #23
          to label %.cont unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.a
  %.not126 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not126, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.3)
          to label %bb.f unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %5, align 8, !tbaa !97    ; 2 uses
  %.val157 = load ptr, ptr %i.m, align 8, !tbaa !98 ; 2 uses
  %i.u = tail call fastcc noundef zeroext i1 @_ZN3gmxL18anyDimUsesProviderERKNS_9AwhParamsENS_25AwhCoordinateProviderTypeE(ptr %.val, ptr %.val157, i32 noundef 1)
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.4)
          to label %._crit_edge498 unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge498:                                   ; preds = %bb.g
  %.val160.pre = load ptr, ptr %5, align 8, !tbaa !97
  %.val161.pre = load ptr, ptr %i.m, align 8, !tbaa !98
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge498, %bb.f
  %.val161 = phi ptr [ %.val161.pre, %._crit_edge498 ], [ %.val157, %bb.f ] ; 2 uses
  %.val160 = phi ptr [ %.val160.pre, %._crit_edge498 ], [ %.val, %bb.f ] ; 5 uses
  %i.v = ptrtoint ptr %.val161 to i64             ; 2 uses
  %i.w = ptrtoint ptr %.val160 to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val160, i64 %i.x ; 2 uses
  %i.z = sdiv exact i64 %i.x, 104
  %i.aa = ashr i64 %i.z, 2                        ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.h
  %i.ac = mul nuw nsw i64 %i.aa, 416
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.val160, i64 %i.ac ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %.lr.ph.preheader.i.i.i.i.i.i
  %.051.i.i.i.i.i.i = phi i64 [ %i.am, %bb.l ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.033.050.i.i.i.i.i.i = phi ptr [ %i.al, %bb.l ], [ %.val160, %.lr.ph.preheader.i.i.i.i.i.i ] ; 9 uses
  %i.ad = getelementptr i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 65
  %.val.i.i.i.i.i.i.i = load i8, ptr %i.ad, align 1, !tbaa !379, !range !60, !noundef !61
  %i.ae = trunc nuw i8 %.val.i.i.i.i.i.i.i to i1
  br i1 %i.ae, label %.loopexit357, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.af = getelementptr i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 169
  %.val.i18.i.i.i.i.i.i = load i8, ptr %i.af, align 1, !tbaa !379, !range !60, !noundef !61
  %i.ag = trunc nuw i8 %.val.i18.i.i.i.i.i.i to i1
  br i1 %i.ag, label %.loopexit.split.loop.exit41.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 273
  %.val.i19.i.i.i.i.i.i = load i8, ptr %i.ah, align 1, !tbaa !379, !range !60, !noundef !61
  %i.ai = trunc nuw i8 %.val.i19.i.i.i.i.i.i to i1
  br i1 %i.ai, label %.loopexit.split.loop.exit43.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 377
  %.val.i20.i.i.i.i.i.i = load i8, ptr %i.aj, align 1, !tbaa !379, !range !60, !noundef !61
  %i.ak = trunc nuw i8 %.val.i20.i.i.i.i.i.i to i1
  br i1 %i.ak, label %.loopexit.split.loop.exit45.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 416
  %i.am = add nsw i64 %.051.i.i.i.i.i.i, -1
  %i.an = icmp sgt i64 %.051.i.i.i.i.i.i, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !351

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.l
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre56.i.i.i.i.i.i = sub i64 %i.v, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.h
  %.pre-phi57.i.i.i.i.i.i = phi i64 [ %.pre56.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.x, %bb.h ]
  %.sroa.033.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val160, %bb.h ] ; 5 uses
  %i.ao = sdiv exact i64 %.pre-phi57.i.i.i.i.i.i, 104
  switch i64 %i.ao, label %.loopexit357 [
    i64 3, label %bb.m
    i64 2, label %bb.o
    i64 1, label %bb.q
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ap = getelementptr i8, ptr %.sroa.033.0.lcssa.i.i.i.i.i.i, i64 65
  %.val.i21.i.i.i.i.i.i = load i8, ptr %i.ap, align 1, !tbaa !379, !range !60, !noundef !61
  %i.aq = trunc nuw i8 %.val.i21.i.i.i.i.i.i to i1
  br i1 %i.aq, label %.loopexit357, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.033.0.lcssa.i.i.i.i.i.i, i64 104
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i
  %.sroa.033.1.i.i.i.i.i.i = phi ptr [ %i.ar, %bb.n ], [ %.sroa.033.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.as = getelementptr i8, ptr %.sroa.033.1.i.i.i.i.i.i, i64 65
  %.val.i22.i.i.i.i.i.i = load i8, ptr %i.as, align 1, !tbaa !379, !range !60, !noundef !61
  %i.at = trunc nuw i8 %.val.i22.i.i.i.i.i.i to i1
  br i1 %i.at, label %.loopexit357, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.033.1.i.i.i.i.i.i, i64 104
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i.i.i.i
  %.sroa.033.2.i.i.i.i.i.i = phi ptr [ %i.au, %bb.p ], [ %.sroa.033.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr i8, ptr %.sroa.033.2.i.i.i.i.i.i, i64 65
  %.val.i23.i.i.i.i.i.i = load i8, ptr %i.av, align 1, !tbaa !379, !range !60, !noundef !61
  %i.aw = trunc nuw i8 %.val.i23.i.i.i.i.i.i to i1
  %spec.select.i.i.i.i.i.i = select i1 %i.aw, ptr %.sroa.033.2.i.i.i.i.i.i, ptr %i.y
  br label %.loopexit357

.loopexit.split.loop.exit41.i.i.i.i.i.i:          ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 104
  br label %.loopexit357

.loopexit.split.loop.exit43.i.i.i.i.i.i:          ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 208
  br label %.loopexit357

.loopexit.split.loop.exit45.i.i.i.i.i.i:          ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 312
  br label %.loopexit357

.loopexit357:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.split.loop.exit45.i.i.i.i.i.i, %.loopexit.split.loop.exit43.i.i.i.i.i.i, %.loopexit.split.loop.exit41.i.i.i.i.i.i, %bb.q, %bb.o, %bb.m, %._crit_edge.i.i.i.i.i.i
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.033.1.i.i.i.i.i.i, %bb.o ], [ %spec.select.i.i.i.i.i.i, %bb.q ], [ %i.y, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.033.0.lcssa.i.i.i.i.i.i, %bb.m ], [ %i.ay, %.loopexit.split.loop.exit43.i.i.i.i.i.i ], [ %i.ax, %.loopexit.split.loop.exit41.i.i.i.i.i.i ], [ %i.az, %.loopexit.split.loop.exit45.i.i.i.i.i.i ], [ %.sroa.033.050.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not337 = icmp eq ptr %.val161, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %.not337, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit357
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.5)
          to label %bb.s unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.loopexit357, %bb.r, %bb.d
  %i.ba = invoke noundef zeroext i1 @_ZN3gmx31haveBiasSharingWithinSimulationERKNS_9AwhParamsE(ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %bb.t unwind label %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  br i1 %i.ba, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.bb = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull @.str.6)
          to label %bb.v unwind label %.thread

end_hunk_0
begin_hunk_1_@_ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii:bb.a
  %.sroa.4268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr @.str.2, ptr %.sroa.4268.0..sroa_idx, align 8, !tbaa !105
  %.sroa.5269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 259, ptr %.sroa.5269.0..sroa_idx, align 8, !tbaa !22
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.eo, ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @__cxa_throw(ptr %i.eo, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.cv unwind label %bb.an

.thread306:                                       ; preds = %bb.aj
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split586

.thread310:                                       ; preds = %bb.ak
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #26
  br label %.sink.split586

bb.an:                                            ; preds = %bb.al, %bb.am
  %.087 = phi i1 [ false, %bb.am ], [ true, %bb.al ]
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br i1 %.087, label %bb.ao, label %.loopexit.split-lp349

.sink.split586:                                   ; preds = %.thread306, %.thread310
  %.pn143.pn309.ph = phi { ptr, i32 } [ %i.er, %.thread310 ], [ %i.eq, %.thread306 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split586, %bb.an
  %.pn143.pn309 = phi { ptr, i32 } [ %i.es, %bb.an ], [ %.pn143.pn309.ph, %.sink.split586 ]
  call void @__cxa_free_exception(ptr %i.eo) #26
  br label %.loopexit.split-lp349

bb.ap:                                            ; preds = %.lr.ph427
  %i.et = load ptr, ptr %i.df, align 8, !tbaa !373
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0271.0426, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !113
  %i.ex = sext i32 %i.ew to i64
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !387
  %i.ez = getelementptr inbounds nuw [176 x i8], ptr %i.ey, i64 %i.ex ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !394
  %i.fc = icmp eq i32 %i.fb, 3
  br i1 %i.fc, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %bb.ap
  %i.fd = call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull @.str.10)
          to label %bb.ar unwind label %.thread314

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(56) %19)
          to label %bb.as unwind label %.thread318

bb.as:                                            ; preds = %bb.ar
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %18, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %20, align 8, !tbaa !103
  %i.fe = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii, ptr %i.fe, align 8, !tbaa !105
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.2, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !105
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 267, ptr %.sroa.5265.0..sroa_idx, align 8, !tbaa !22
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.fd, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %bb.as
  invoke void @__cxa_throw(ptr %i.fd, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.cv unwind label %bb.au

.thread314:                                       ; preds = %bb.aq
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split587

.thread318:                                       ; preds = %bb.ar
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #26
  br label %.sink.split587

bb.au:                                            ; preds = %bb.as, %bb.at
  %.084 = phi i1 [ false, %bb.at ], [ true, %bb.as ]
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br i1 %.084, label %bb.av, label %.loopexit.split-lp349

.sink.split587:                                   ; preds = %.thread314, %.thread318
  %.pn139.pn317.ph = phi { ptr, i32 } [ %i.fg, %.thread318 ], [ %i.ff, %.thread314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.av

bb.av:                                            ; preds = %.sink.split587, %bb.au
  %.pn139.pn317 = phi { ptr, i32 } [ %i.fh, %bb.au ], [ %.pn139.pn317.ph, %.sink.split587 ]
  call void @__cxa_free_exception(ptr %i.fd) #26
  br label %.loopexit.split-lp349

bb.aw:                                            ; preds = %bb.ap
  %i.fi = invoke noundef double @_Z41pull_conversion_factor_userinput2internalRK12t_pull_coord(ptr noundef nonnull align 8 dereferenceable(176) %i.ez)
          to label %bb.ax unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ax:                                            ; preds = %bb.aw
  %i.fj = load i32, ptr %2, align 8, !tbaa !395
  %i.fk = icmp slt i32 %i.fj, 127
  %i.fl = fcmp une double %i.fi, 1.000000e+00
  %or.cond3 = and i1 %i.fl, %i.fk
  br i1 %or.cond3, label %bb.ay, label %bb.bi

bb.ay:                                            ; preds = %bb.ax
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0271.0426, i64 56
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !396
  %i.fo = fcmp une double %i.fn, 0.000000e+00
  br i1 %i.fo, label %bb.az, label %bb.bi

bb.az:                                            ; preds = %bb.ay
  %i.fp = trunc nuw nsw i64 %indvars.iv495 to i32
  %i.fq = call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.fr = add nuw nsw i32 %i.fp, 1
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull @.str.11, i32 noundef %i.fr)
          to label %bb.ba unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.bb unwind label %.thread324

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %bb.bb
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %21, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %24, align 8, !tbaa !103
  %i.fs = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii, ptr %i.fs, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !105
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 24
  store i32 277, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !22
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.fq, ptr noundef nonnull align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  invoke void @__cxa_throw(ptr %i.fq, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.cv unwind label %bb.bf

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.az
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split588

bb.be:                                            ; preds = %bb.bb
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.0 = phi i1 [ false, %bb.bd ], [ true, %bb.bc ]
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #26
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.pn134 = phi { ptr, i32 } [ %i.fv, %bb.bf ], [ %i.fu, %bb.be ] ; 4 uses
  %.1 = phi i1 [ %.0, %bb.bf ], [ true, %bb.be ]  ; 2 uses
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %22) #26
  %i.fw = load ptr, ptr %23, align 8, !tbaa !220  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

.thread324:                                       ; preds = %bb.ba
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %23, align 8, !tbaa !220  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.thread324
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !39
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #25
  br label %.sink.split588

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread331: ; preds = %.thread324
  %26 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !221
  %28 = icmp ult i64 %27, 16
  call void @llvm.assume(i1 %28)
  br label %.sink.split588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  %i.gf = load i64, ptr %i.fx, align 8, !tbaa !39
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.gg) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br i1 %.1, label %bb.bh, label %.loopexit.split-lp349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br i1 %.1, label %bb.bh, label %.loopexit.split-lp349

.sink.split588:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread
  %.pn134.pn.pn323.ph = phi { ptr, i32 } [ %i.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.fz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread331 ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split588, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn134.pn.pn323 = phi { ptr, i32 } [ %.pn134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn134.pn.pn323.ph, %.sink.split588 ]
  call void @__cxa_free_exception(ptr %i.fq) #26
  br label %.loopexit.split-lp349

bb.bi:                                            ; preds = %bb.ay, %bb.ax
  %i.gh = load i32, ptr %i.ev, align 4, !tbaa !113 ; 2 uses
  %i.gi = load ptr, ptr %i.dg, align 8, !tbaa !16 ; 4 uses
  %i.gj = load ptr, ptr %i.dh, align 8, !tbaa !19
  %.not.i.i = icmp eq ptr %i.gi, %i.gj
  br i1 %.not.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !22
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store ptr %i.gk, ptr %i.dg, align 8, !tbaa !16
  br label %bb.bn

bb.bk:                                            ; preds = %bb.bi
  %i.gl = load ptr, ptr %14, align 8, !tbaa !17   ; 4 uses
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn                    ; 5 uses
  %i.gp = icmp eq i64 %i.go, 9223372036854775804
  br i1 %i.gp, label %.invoke641, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bk
  %i.gq = ashr exact i64 %i.go, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gq, i64 1)
  %i.gr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gq ; 2 uses
  %i.gs = icmp ult i64 %i.gr, %i.gq
  %i.gt = call i64 @llvm.umin.i64(i64 %i.gr, i64 2305843009213693951)
  %i.gu = select i1 %i.gs, i64 2305843009213693951, i64 %i.gt ; 3 uses
  %.not.i.i.i.i177 = icmp ne i64 %i.gu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i177)
  %i.gv = shl nuw nsw i64 %i.gu, 2
  %i.gw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gv) #24
          to label %.noexc179 unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %i.go ; 2 uses
  store i32 %i.gh, ptr %i.gx, align 4, !tbaa !22
  %i.gy = icmp sgt i64 %i.go, 0
  br i1 %i.gy, label %bb.bl, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.bl:                                            ; preds = %.noexc179
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gw, ptr align 4 %i.gl, i64 %i.go, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bl, %.noexc179
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.ha = load ptr, ptr %i.dh, align 8, !tbaa !19
  %i.hb = ptrtoint ptr %i.ha to i64
  %i.hc = sub i64 %i.hb, %i.gn
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.hc) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bm, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.gw, ptr %14, align 8, !tbaa !17
  store ptr %i.gz, ptr %i.dg, align 8, !tbaa !16
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.gu
  store ptr %i.hd, ptr %i.dh, align 8, !tbaa !19
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0271.0426, i64 32
  %i.hf = load double, ptr %i.he, align 8, !tbaa !397 ; 3 uses
  %i.hg = fmul double %i.cx, %i.hf                ; 2 uses
  %.not.i180 = icmp eq ptr %.sroa.11.0424, %.sroa.20.0425
  br i1 %.not.i180, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store double %i.hf, ptr %.sroa.11.0424, align 8
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0424, i64 8
  store double %i.hg, ptr %.sroa.6246.0..sroa_idx, align 8
  %.sroa.7249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0424, i64 16
  store double 0.000000e+00, ptr %.sroa.7249.0..sroa_idx, align 8
  %.sroa.8252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0424, i64 24
  store i8 0, ptr %.sroa.8252.0..sroa_idx, align 8
  %.sroa.9256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0424, i64 32
  store double %i.fi, ptr %.sroa.9256.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.bp:                                            ; preds = %bb.bn
  %i.hh = ptrtoint ptr %.sroa.20.0425 to i64
  %i.hi = ptrtoint ptr %.sroa.0275.0423 to i64
  %i.hj = sub i64 %i.hh, %i.hi                    ; 4 uses
  %i.hk = icmp eq i64 %i.hj, 9223372036854775800
  br i1 %i.hk, label %.invoke641, label %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bp
  %i.hl = sdiv exact i64 %i.hj, 40                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.hl, i64 1)
  %i.hm = add nsw i64 %.sroa.speculated.i.i.i, %i.hl ; 2 uses
  %i.hn = icmp ult i64 %i.hm, %i.hl
  %i.ho = call i64 @llvm.umin.i64(i64 %i.hm, i64 230584300921369395)
  %i.hp = select i1 %i.hn, i64 230584300921369395, i64 %i.ho ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hq = mul nuw nsw i64 %i.hp, 40
  %i.hr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hq) #24
          to label %.noexc182 unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc182:                                        ; preds = %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hj ; 5 uses
  store double %i.hf, ptr %i.hs, align 8
  %.sroa.6246.0..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store double %i.hg, ptr %.sroa.6246.0..sroa_idx247, align 8
  %.sroa.7249.0..sroa_idx250 = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store double 0.000000e+00, ptr %.sroa.7249.0..sroa_idx250, align 8
  %.sroa.8252.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  store i8 0, ptr %.sroa.8252.0..sroa_idx253, align 8
  %.sroa.9256.0..sroa_idx257 = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  store double %i.fi, ptr %.sroa.9256.0..sroa_idx257, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0275.0423, %.sroa.20.0425
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc182, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i ], [ %i.hr, %.noexc182 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i ], [ %.sroa.0275.0423, %.noexc182 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i, i64 40, i1 false), !alias.scope !398
  %i.ht = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ht, %.sroa.20.0425
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !358

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc182
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hr, %.noexc182 ], [ %i.hu, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0275.0423, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0275.0423, i64 noundef %i.hj) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.bq, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.hv = getelementptr inbounds nuw [40 x i8], ptr %i.hr, i64 %i.hp
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.br:                                            ; preds = %.lr.ph427
  %i.hw = load i32, ptr %i.k, align 8, !tbaa !372 ; 2 uses
  %.not.i.i183 = icmp eq ptr %.sroa.11.0424, %.sroa.20.0425
  br i1 %.not.i.i183, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store double %i.cx, ptr %.sroa.11.0424, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0424, i64 8
  store i32 %i.hw, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0424, i64 24
  store i8 1, ptr %.sroa.7237.0..sroa_idx, align 8
  %.sroa.8241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.0424, i64 32
  store double 1.000000e+00, ptr %.sroa.8241.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.bt:                                            ; preds = %bb.br
  %i.hx = ptrtoint ptr %.sroa.20.0425 to i64
  %i.hy = ptrtoint ptr %.sroa.0275.0423 to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 4 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775800
  br i1 %i.ia, label %.invoke641, label %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke641:                                       ; preds = %bb.bt, %bb.bp, %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %.cont642 unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp

.cont642:                                         ; preds = %.invoke641
  unreachable

_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bt
  %i.ib = sdiv exact i64 %i.hz, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i184 = call i64 @llvm.umax.i64(i64 %i.ib, i64 1)
  %i.ic = add nsw i64 %.sroa.speculated.i.i.i.i184, %i.ib ; 2 uses
  %i.id = icmp ult i64 %i.ic, %i.ib
  %i.ie = call i64 @llvm.umin.i64(i64 %i.ic, i64 230584300921369395)
  %i.if = select i1 %i.id, i64 230584300921369395, i64 %i.ie ; 3 uses
  %.not.i.i.i.i185 = icmp ne i64 %i.if, 0
  call void @llvm.assume(i1 %.not.i.i.i.i185)
  %i.ig = mul nuw nsw i64 %i.if, 40
  %i.ih = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ig) #24
          to label %.noexc188 unwind label %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.hz ; 4 uses
  store double %i.cx, ptr %i.ii, align 8
  %.sroa.6.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i32 %i.hw, ptr %.sroa.6.0..sroa_idx234, align 8
  %.sroa.7237.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  store i8 1, ptr %.sroa.7237.0..sroa_idx238, align 8
  %.sroa.8241.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  store double 1.000000e+00, ptr %.sroa.8241.0..sroa_idx242, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0275.0423, %.sroa.20.0425
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i186

.lr.ph.i.i.i.i.i.i186:                            ; preds = %.noexc188, %.lr.ph.i.i.i.i.i.i186
  %.012.i.i.i.i.i.i = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.i186 ], [ %i.ih, %.noexc188 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i186 ], [ %.sroa.0275.0423, %.noexc188 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !399
  %i.ij = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ij, %.sroa.20.0425
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i186, !llvm.loop !358

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i186, %.noexc188
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ih, %.noexc188 ], [ %i.ik, %.lr.ph.i.i.i.i.i.i186 ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0275.0423, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0275.0423, i64 noundef %i.hz) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.bu, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.il = getelementptr inbounds nuw [40 x i8], ptr %i.ih, i64 %i.if
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.bs, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.bo, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.0275.1 = phi ptr [ %.sroa.0275.0423, %bb.bo ], [ %i.hr, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ih, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0275.0423, %bb.bs ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn.pn = phi ptr [ %.sroa.11.0424, %bb.bo ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11.0424, %bb.bs ]
  %.sroa.20.1 = phi ptr [ %.sroa.20.0425, %bb.bo ], [ %i.hv, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.il, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.0425, %bb.bs ] ; 2 uses
  %.sroa.11.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.pn, i64 40 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0271.0426, i64 64 ; 2 uses
  %.not342 = icmp eq ptr %i.im, %i.ea
  br i1 %.not342, label %._crit_edge.loopexit, label %.lr.ph427

bb.bv:                                            ; preds = %._crit_edge
  %i.in = load ptr, ptr %i.dj, align 8, !tbaa !222 ; 3 uses
  %i.io = load ptr, ptr %i.dk, align 8, !tbaa !223
  %.not.i189 = icmp eq ptr %i.in, %i.io
  br i1 %.not.i189, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  invoke void @_ZN3gmx4BiasC2EOS0_(ptr noundef nonnull align 8 dereferenceable(588) %10, ptr noundef nonnull align 8 dereferenceable(588) %25)
          to label %.noexc190 unwind label %bb.cd

.noexc190:                                        ; preds = %bb.bw
  invoke void @_ZN3gmx19BiasCoupledToSystemC1ENS_4BiasERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(616) %i.in, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZNSt15__new_allocatorIN3gmx19BiasCoupledToSystemEE9constructIS1_JNS0_4BiasERSt6vectorIiSaIiEEEEEvPT_DpOT0_.exit.i unwind label %bb.bx

bb.bx:                                            ; preds = %.noexc190
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %10) #26
  br label %.body191

_ZNSt15__new_allocatorIN3gmx19BiasCoupledToSystemEE9constructIS1_JNS0_4BiasERSt6vectorIiSaIiEEEEEvPT_DpOT0_.exit.i: ; preds = %.noexc190
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.iq = load ptr, ptr %i.dj, align 8, !tbaa !222
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 616
  store ptr %i.ir, ptr %i.dj, align 8, !tbaa !222
  br label %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit

bb.by:                                            ; preds = %bb.bv
  invoke void @_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE17_M_realloc_insertIJNS0_4BiasERS_IiSaIiEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.in, ptr noundef nonnull align 8 dereferenceable(588) %25, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit unwind label %bb.cd

_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit: ; preds = %bb.by, %_ZNSt15__new_allocatorIN3gmx19BiasCoupledToSystemEE9constructIS1_JNS0_4BiasERSt6vectorIiSaIiEEEEEvPT_DpOT0_.exit.i
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.is = load ptr, ptr %i.dj, align 8, !tbaa !224
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -616
  invoke void @_ZNK3gmx4Bias24printInitializationToLogEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(588) %i.it, ptr noundef %1)
          to label %bb.bz unwind label %.loopexit.split-lp349.loopexit

bb.bz:                                            ; preds = %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit
  %.not.i.i.i194 = icmp eq ptr %.sroa.0275.0.lcssa, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iu = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.iv = sub i64 %i.iu, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0275.0.lcssa, i64 noundef %i.iv) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit:   ; preds = %bb.bz, %bb.ca
  %i.iw = load ptr, ptr %14, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit
  %i.ix = load ptr, ptr %i.dh, align 8, !tbaa !19
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iw to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iw, i64 noundef %i.ja) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %indvars.iv.next496 = add nuw nsw i64 %indvars.iv495, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next496, %i.de
  br i1 %exitcond.not, label %._crit_edge433.loopexit, label %bb.ai, !llvm.loop !362

.loopexit.split-lp349.loopexit:                   ; preds = %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit
  %lpad.loopexit353 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp349

.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.aw, %.invoke641
  %lpad.loopexit.split-lp653 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp349

bb.cc:                                            ; preds = %._crit_edge
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.by, %bb.bw
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.body191:                                         ; preds = %bb.bx, %bb.cd
  %eh.lpad-body192 = phi { ptr, i32 } [ %i.jc, %bb.cd ], [ %i.ip, %bb.bx ]
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %25) #26
  br label %bb.ce

bb.ce:                                            ; preds = %.body191, %bb.cc
  %.pn128 = phi { ptr, i32 } [ %eh.lpad-body192, %.body191 ], [ %i.jb, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %.loopexit.split-lp349

.loopexit.split-lp349:                            ; preds = %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp349.loopexit, %bb.ao, %bb.an, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.au, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ce
  %.sroa.0275.0397 = phi ptr [ %.sroa.0275.0.lcssa, %bb.ce ], [ %.sroa.0275.0423, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0275.0423, %bb.ao ], [ %.sroa.0275.0423, %bb.an ], [ %.sroa.0275.0423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.0275.0423, %bb.av ], [ %.sroa.0275.0423, %bb.au ], [ %.sroa.0275.0423, %bb.bh ], [ %.sroa.0275.0423, %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0275.0.lcssa, %.loopexit.split-lp349.loopexit ] ; 3 uses
  %.sroa.20.0374 = phi ptr [ %.sroa.20.0.lcssa, %bb.ce ], [ %.sroa.20.0425, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.20.0425, %bb.ao ], [ %.sroa.20.0425, %bb.an ], [ %.sroa.20.0425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.20.0425, %bb.av ], [ %.sroa.20.0425, %bb.au ], [ %.sroa.20.0425, %bb.bh ], [ %.sroa.20.0425, %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.20.0.lcssa, %.loopexit.split-lp349.loopexit ]
  %.pn143.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn128, %bb.ce ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn143.pn309, %bb.ao ], [ %i.es, %bb.an ], [ %.pn134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn139.pn317, %bb.av ], [ %i.fh, %bb.au ], [ %.pn134.pn.pn323, %bb.bh ], [ %lpad.loopexit.split-lp653, %.loopexit.split-lp349.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit353, %.loopexit.split-lp349.loopexit ]
  %.not.i.i.i196 = icmp eq ptr %.sroa.0275.0397, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197, label %bb.cf

bb.cf:                                            ; preds = %.loopexit.split-lp349
  %i.jd = ptrtoint ptr %.sroa.20.0374 to i64
  %i.je = ptrtoint ptr %.sroa.0275.0397 to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0275.0397, i64 noundef %i.jf) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197: ; preds = %.loopexit.split-lp349, %bb.cf
  %i.jg = load ptr, ptr %14, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIiSaIiEED2Ev.exit199, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197
  %i.jh = load ptr, ptr %i.dh, align 8, !tbaa !19
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jg to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jk) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit199

_ZNSt6vectorIiSaIiEED2Ev.exit199:                 ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body

_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t.exit: ; preds = %._crit_edge.i, %.preheader.i
  %i.jl = load ptr, ptr %i.h, align 8, !tbaa !107
  %.not338 = icmp eq ptr %i.jl, null
  br i1 %.not338, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t.exit
  %i.jm = load ptr, ptr %i.g, align 8, !tbaa !114, !nonnull !61, !align !115
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !124
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.ci, label %_ZNSt6vectorImSaImEED2Ev.exit

bb.ci:                                            ; preds = %bb.ch
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !222 ; 3 uses
  %i.js = load ptr, ptr %0, align 8, !tbaa !225   ; 3 uses
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = sdiv exact i64 %i.jv, 616               ; 3 uses
  %i.jx = icmp ugt i64 %i.jw, 1152921504606846975
  br i1 %i.jx, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
          to label %.noexc200 unwind label %bb.cl

.noexc200:                                        ; preds = %bb.cj
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %.not339 = icmp eq ptr %i.jr, %i.js
  br i1 %.not339, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.ck
  %i.jy = shl nuw nsw i64 %i.jw, 3
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #24
          to label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i unwind label %bb.cl ; 2 uses

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jw
  %.pre = load ptr, ptr %0, align 8, !tbaa !224
  %.pre503 = load ptr, ptr %i.jq, align 8, !tbaa !224
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.ck
  %i.kb = phi ptr [ %.pre503, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.jr, %bb.ck ] ; 2 uses
  %i.kc = phi ptr [ %.pre, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.js, %bb.ck ] ; 2 uses
  %.sroa.0216.3 = phi ptr [ %i.jz, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.ck ] ; 4 uses
  %.sroa.19.3 = phi ptr [ %i.ka, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ null, %bb.ck ] ; 2 uses
  %.not340434 = icmp eq ptr %i.kc, %i.kb
  br i1 %.not340434, label %._crit_edge440, label %.lr.ph439

._crit_edge440:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %.sroa.0216.0.lcssa = phi ptr [ %.sroa.0216.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.0216.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.0216.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.12.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %.sroa.19.0.lcssa = phi ptr [ %.sroa.19.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ], [ %.sroa.19.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 2 uses
  %i.kd = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.ke = ptrtoint ptr %.sroa.0216.0.lcssa to i64 ; 2 uses
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0216.0.lcssa, i64 %i.kf
  %i.kh = load ptr, ptr %i.h, align 8, !tbaa !107
  invoke void @_ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr %.sroa.0216.0.lcssa, ptr %i.kg, ptr noundef nonnull align 8 dereferenceable(104) %i.kh)
          to label %bb.cr unwind label %bb.cl

bb.cl:                                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.cj, %._crit_edge440
  %.sroa.0216.1 = phi ptr [ null, %bb.cj ], [ %.sroa.0216.0.lcssa, %._crit_edge440 ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %.sroa.19.1 = phi ptr [ null, %bb.cj ], [ %.sroa.19.0.lcssa, %._crit_edge440 ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph439:                                        ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.sroa.0213.0438 = phi ptr [ %i.lf, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.kc, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %.sroa.19.0437 = phi ptr [ %.sroa.19.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.19.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 4 uses
  %.sroa.12.0436 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.0216.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 3 uses
  %.sroa.0216.0435 = phi ptr [ %.sroa.0216.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %.sroa.0216.3, %_ZNSt6vectorImSaImEE7reserveEm.exit ] ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.0213.0438, i64 256
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0213.0438, i64 264
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !400
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !70
  %i.kn = ptrtoint ptr %i.kl to i64
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = sub i64 %i.kn, %i.ko
  %i.kq = sdiv exact i64 %i.kp, 96                ; 2 uses
  %.not.i.i202 = icmp eq ptr %.sroa.12.0436, %.sroa.19.0437
  br i1 %.not.i.i202, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph439
  store i64 %i.kq, ptr %.sroa.12.0436, align 8, !tbaa !35
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.cn:                                            ; preds = %.lr.ph439
  %i.kr = ptrtoint ptr %.sroa.19.0437 to i64
  %i.ks = ptrtoint ptr %.sroa.0216.0435 to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 6 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775800
  br i1 %i.ku, label %bb.co, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %bb.co
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cn
  %i.kv = ashr exact i64 %i.kt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i203 = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i.i.i203, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 1152921504606846975)
  %i.kz = select i1 %i.kx, i64 1152921504606846975, i64 %i.ky ; 3 uses
  %.not.i.i.i.i204 = icmp ne i64 %i.kz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i204)
  %i.la = shl nuw nsw i64 %i.kz, 3
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #24
          to label %.noexc207 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %i.kt ; 2 uses
  store i64 %i.kq, ptr %i.lc, align 8, !tbaa !35
  %i.ld = icmp sgt i64 %i.kt, 0
  br i1 %i.ld, label %bb.cp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.cp:                                            ; preds = %.noexc207
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lb, ptr align 8 %.sroa.0216.0435, i64 %i.kt, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cp, %.noexc207
  %.not.i17.i.i.i205 = icmp eq ptr %.sroa.0216.0435, null
  br i1 %.not.i17.i.i.i205, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.0435, i64 noundef %i.kt) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.cq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.kz
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.cm
  %.sroa.0216.4 = phi ptr [ %i.lb, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0216.0435, %bb.cm ] ; 2 uses
  %.pn341 = phi ptr [ %i.lc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.12.0436, %bb.cm ]
  %.sroa.19.4 = phi ptr [ %i.le, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.19.0437, %bb.cm ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn341, i64 8 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0213.0438, i64 616 ; 2 uses
  %.not340 = icmp eq ptr %i.lf, %i.kb
  br i1 %.not340, label %._crit_edge440, label %.lr.ph439

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i, %bb.co
  %lpad.loopexit.split-lp643 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %._crit_edge440
  %.not.i.i.i208 = icmp eq ptr %.sroa.0216.0.lcssa, null
  br i1 %.not.i.i.i208, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lg = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.lh = sub i64 %i.lg, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.0.lcssa, i64 noundef %i.lh) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.ct:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.cl
  %.sroa.0216.2 = phi ptr [ %.sroa.0216.1, %bb.cl ], [ %.sroa.0216.0435, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.1, %bb.cl ], [ %.sroa.19.0437, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.ki, %bb.cl ], [ %lpad.loopexit.split-lp643, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i209 = icmp eq ptr %.sroa.0216.2, null
  br i1 %.not.i.i.i209, label %.body, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.li = ptrtoint ptr %.sroa.19.2 to i64
  %i.lj = ptrtoint ptr %.sroa.0216.2 to i64
  %i.lk = sub i64 %i.li, %i.lj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.2, i64 noundef %i.lk) #25
  br label %.body

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.cs, %bb.cr, %bb.ch, %_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t.exit
  ret void

.body:                                            ; preds = %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIiSaIiEED2Ev.exit199, %bb.ct, %bb.cu, %bb.ac, %bb.y, %bb.z
  %.pn153.pn.pn = phi { ptr, i32 } [ %.pn153.pn302, %bb.z ], [ %i.bf, %bb.y ], [ %.pn, %bb.cu ], [ %i.bn, %bb.ac ], [ %.pn143.pn.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit199 ], [ %.pn, %bb.ct ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp344.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #26
  call void @_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #26
  resume { ptr, i32 } %.pn153.pn.pn

bb.cv:                                            ; preds = %bb.bd, %bb.at, %bb.am, %bb.x
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN3gmxL18anyDimUsesProviderERKNS_9AwhParamsENS_25AwhCoordinateProviderTypeE(ptr %.0.val, ptr %.8.val, i32 noundef range(i32 0, 2) %0) unnamed_addr #11 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.c ; 2 uses
  %i.e = sdiv exact i64 %i.c, 104
  %i.f = ashr i64 %i.e, 2                         ; 3 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = mul nuw nsw i64 %i.f, 416
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.0.val, i64 %i.h ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.al, %.lr.ph.i.i.i.i.i
  %.0257.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i ], [ %i.dq, %bb.al ] ; 2 uses
  %.sroa.0201.0256.i.i.i.i.i = phi ptr [ %.0.val, %.lr.ph.i.i.i.i.i ], [ %i.dp, %bb.al ] ; 13 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.0201.0256.i.i.i.i.i, align 8, !tbaa !108 ; 5 uses
  %i.i = getelementptr i8, ptr %.sroa.0201.0256.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !109 ; 2 uses
  %i.j = ptrtoint ptr %.val2.i.i.i.i.i.i to i64   ; 2 uses
  %i.k = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.l ; 2 uses
  %i.n = ashr i64 %i.l, 8                         ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.b
  %i.p = and i64 %i.l, -256
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 %i.p ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.058.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.g ] ; 2 uses
  %.sroa.040.057.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.x, %bb.g ] ; 9 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.040.057.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !112
  %i.q = icmp eq i32 %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %0
  br i1 %i.q, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %.val1.i24.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.r, align 8, !tbaa !112
  %i.s = icmp eq i32 %.val1.i24.i.i.i.i.i.i.i.i.i.i.i.i.i, %0
  br i1 %i.s, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit.i.i.i.i.i.loopexit.split.loop.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 128
end_hunk_1
begin_hunk_2_@_ZN3gmxL18anyDimUsesProviderERKNS_9AwhParamsENS_25AwhCoordinateProviderTypeE:bb.a
"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i.loopexit.split.loop.exit156": ; preds = %bb.az
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i157.i.i.i.i.i, i64 192
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i": ; preds = %bb.aw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i.loopexit.split.loop.exit154", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i.loopexit.split.loop.exit156", %._crit_edge._crit_edge64.i.i.i.i.i.i.i.i145.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i150.i.i.i.i.i, %bb.bb, %._crit_edge.i.i.i.i.i.i.i.i142.i.i.i.i.i
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i.i.i149.i.i.i.i.i = phi ptr [ %.sroa.040.1.i.i.i.i.i.i.i.i151.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i150.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i.i148.i.i.i.i.i, %._crit_edge._crit_edge64.i.i.i.i.i.i.i.i145.i.i.i.i.i ], [ %i.ez, %._crit_edge.i.i.i.i.i.i.i.i142.i.i.i.i.i ], [ %.sroa.040.0.lcssa.i.i.i.i.i.i.i.i144.i.i.i.i.i, %bb.bb ], [ %i.fv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i.loopexit.split.loop.exit156" ], [ %i.fu, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i.loopexit.split.loop.exit154" ], [ %i.ft, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.sroa.040.057.i.i.i.i.i.i.i.i157.i.i.i.i.i, %bb.aw ]
  %.not208.i.i.i.i.i = icmp eq ptr %.val2.i141.i.i.i.i.i, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i.i.i149.i.i.i.i.i
  br i1 %.not208.i.i.i.i.i, label %bb.be, label %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit"

bb.be:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i"
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0201.1.i.i.i.i.i, i64 104
  br label %._crit_edge._crit_edge315.i.i.i.i.i

._crit_edge._crit_edge315.i.i.i.i.i:              ; preds = %bb.be, %._crit_edge.i.i.i.i.i
  %.sroa.0201.2.i.i.i.i.i = phi ptr [ %i.fw, %bb.be ], [ %.sroa.0201.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.val1.i169.i.i.i.i.i = load ptr, ptr %.sroa.0201.2.i.i.i.i.i, align 8, !tbaa !108 ; 5 uses
  %i.fx = getelementptr i8, ptr %.sroa.0201.2.i.i.i.i.i, i64 8
  %.val2.i170.i.i.i.i.i = load ptr, ptr %i.fx, align 8, !tbaa !109 ; 2 uses
  %i.fy = ptrtoint ptr %.val2.i170.i.i.i.i.i to i64 ; 2 uses
  %i.fz = ptrtoint ptr %.val1.i169.i.i.i.i.i to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1.i169.i.i.i.i.i, i64 %i.ga ; 2 uses
  %i.gc = ashr i64 %i.ga, 8                       ; 2 uses
  %i.gd = icmp sgt i64 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i.i.i.i183.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i183.i.i.i.i.i:              ; preds = %._crit_edge._crit_edge315.i.i.i.i.i
  %i.ge = and i64 %i.ga, -256
  %scevgep.i.i.i.i.i.i.i.i184.i.i.i.i.i = getelementptr i8, ptr %.val1.i169.i.i.i.i.i, i64 %i.ge ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bj, %.lr.ph.i.i.i.i.i.i.i.i183.i.i.i.i.i
  %.058.i.i.i.i.i.i.i.i185.i.i.i.i.i = phi i64 [ %i.gc, %.lr.ph.i.i.i.i.i.i.i.i183.i.i.i.i.i ], [ %i.gn, %bb.bj ] ; 2 uses
  %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i = phi ptr [ %.val1.i169.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i183.i.i.i.i.i ], [ %i.gm, %bb.bj ] ; 9 uses
  %.val1.i.i.i.i.i.i.i.i.i187.i.i.i.i.i = load i32, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, align 8, !tbaa !112
  %i.gf = icmp eq i32 %.val1.i.i.i.i.i.i.i.i.i187.i.i.i.i.i, %0
  br i1 %i.gf, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, i64 64
  %.val1.i24.i.i.i.i.i.i.i.i188.i.i.i.i.i = load i32, ptr %i.gg, align 8, !tbaa !112
  %i.gh = icmp eq i32 %.val1.i24.i.i.i.i.i.i.i.i188.i.i.i.i.i, %0
  br i1 %i.gh, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit", label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, i64 128
  %.val1.i25.i.i.i.i.i.i.i.i189.i.i.i.i.i = load i32, ptr %i.gi, align 8, !tbaa !112
  %i.gj = icmp eq i32 %.val1.i25.i.i.i.i.i.i.i.i189.i.i.i.i.i, %0
  br i1 %i.gj, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit162", label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, i64 192
  %.val1.i26.i.i.i.i.i.i.i.i190.i.i.i.i.i = load i32, ptr %i.gk, align 8, !tbaa !112
  %i.gl = icmp eq i32 %.val1.i26.i.i.i.i.i.i.i.i190.i.i.i.i.i, %0
  br i1 %i.gl, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit164", label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, i64 256
  %i.gn = add nsw i64 %.058.i.i.i.i.i.i.i.i185.i.i.i.i.i, -1
  %i.go = icmp sgt i64 %.058.i.i.i.i.i.i.i.i185.i.i.i.i.i, 1
  br i1 %i.go, label %bb.bf, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i191.i.i.i.i.i, !llvm.loop !401

._crit_edge.loopexit.i.i.i.i.i.i.i.i191.i.i.i.i.i: ; preds = %bb.bj
  %.pre.i.i.i.i.i.i.i.i192.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i184.i.i.i.i.i to i64
  %.pre66.i.i.i.i.i.i.i.i193.i.i.i.i.i = sub i64 %i.fy, %.pre.i.i.i.i.i.i.i.i192.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i:         ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i191.i.i.i.i.i, %._crit_edge._crit_edge315.i.i.i.i.i
  %.pre-phi67.i.i.i.i.i.i.i.i172.i.i.i.i.i = phi i64 [ %.pre66.i.i.i.i.i.i.i.i193.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i191.i.i.i.i.i ], [ %i.ga, %._crit_edge._crit_edge315.i.i.i.i.i ]
  %.sroa.040.0.lcssa.i.i.i.i.i.i.i.i173.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i184.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i191.i.i.i.i.i ], [ %.val1.i169.i.i.i.i.i, %._crit_edge._crit_edge315.i.i.i.i.i ] ; 5 uses
  %i.gp = ashr exact i64 %.pre-phi67.i.i.i.i.i.i.i.i172.i.i.i.i.i, 6
  switch i64 %i.gp, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i" [
    i64 3, label %bb.bk
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i179.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge64.i.i.i.i.i.i.i.i174.i.i.i.i.i
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i
  %.val1.i27.i.i.i.i.i.i.i.i182.i.i.i.i.i = load i32, ptr %.sroa.040.0.lcssa.i.i.i.i.i.i.i.i173.i.i.i.i.i, align 8, !tbaa !112
  %i.gq = icmp eq i32 %.val1.i27.i.i.i.i.i.i.i.i182.i.i.i.i.i, %0
  br i1 %i.gq, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.040.0.lcssa.i.i.i.i.i.i.i.i173.i.i.i.i.i, i64 64
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i179.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i179.i.i.i.i.i: ; preds = %bb.bl, %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i
  %.sroa.040.1.i.i.i.i.i.i.i.i180.i.i.i.i.i = phi ptr [ %i.gr, %bb.bl ], [ %.sroa.040.0.lcssa.i.i.i.i.i.i.i.i173.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i ] ; 3 uses
  %.val1.i28.i.i.i.i.i.i.i.i181.i.i.i.i.i = load i32, ptr %.sroa.040.1.i.i.i.i.i.i.i.i180.i.i.i.i.i, align 8, !tbaa !112
  %i.gs = icmp eq i32 %.val1.i28.i.i.i.i.i.i.i.i181.i.i.i.i.i, %0
  br i1 %i.gs, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i", label %bb.bm

bb.bm:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i179.i.i.i.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.040.1.i.i.i.i.i.i.i.i180.i.i.i.i.i, i64 64
  br label %._crit_edge._crit_edge64.i.i.i.i.i.i.i.i174.i.i.i.i.i

._crit_edge._crit_edge64.i.i.i.i.i.i.i.i174.i.i.i.i.i: ; preds = %bb.bm, %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i
  %.sroa.040.2.i.i.i.i.i.i.i.i175.i.i.i.i.i = phi ptr [ %i.gt, %bb.bm ], [ %.sroa.040.0.lcssa.i.i.i.i.i.i.i.i173.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i ] ; 2 uses
  %.val1.i29.i.i.i.i.i.i.i.i176.i.i.i.i.i = load i32, ptr %.sroa.040.2.i.i.i.i.i.i.i.i175.i.i.i.i.i, align 8, !tbaa !112
  %i.gu = icmp eq i32 %.val1.i29.i.i.i.i.i.i.i.i176.i.i.i.i.i, %0
  %spec.select.i.i.i.i.i.i.i.i177.i.i.i.i.i = select i1 %i.gu, ptr %.sroa.040.2.i.i.i.i.i.i.i.i175.i.i.i.i.i, ptr %i.gb
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit": ; preds = %bb.bg
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, i64 64
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit162": ; preds = %bb.bh
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, i64 128
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit164": ; preds = %bb.bi
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, i64 192
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i": ; preds = %bb.bf, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit162", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit164", %._crit_edge._crit_edge64.i.i.i.i.i.i.i.i174.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i179.i.i.i.i.i, %bb.bk, %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i.i.i178.i.i.i.i.i = phi ptr [ %.sroa.040.1.i.i.i.i.i.i.i.i180.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i179.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i.i.i177.i.i.i.i.i, %._crit_edge._crit_edge64.i.i.i.i.i.i.i.i174.i.i.i.i.i ], [ %i.gb, %._crit_edge.i.i.i.i.i.i.i.i171.i.i.i.i.i ], [ %.sroa.040.0.lcssa.i.i.i.i.i.i.i.i173.i.i.i.i.i, %bb.bk ], [ %i.gx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit164" ], [ %i.gw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit162" ], [ %i.gv, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i.loopexit.split.loop.exit" ], [ %.sroa.040.057.i.i.i.i.i.i.i.i186.i.i.i.i.i, %bb.bf ]
  %.not209.i.i.i.i.i = icmp eq ptr %.val2.i170.i.i.i.i.i, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i.i.i178.i.i.i.i.i
  %spec.select.i.i.i.i.i = select i1 %.not209.i.i.i.i.i, ptr %i.d, ptr %.sroa.0201.2.i.i.i.i.i
  br label %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit"

"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit52.i.i.i.i.i"
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0201.0256.i.i.i.i.i, i64 104
  br label %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit"

"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit138": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit81.i.i.i.i.i"
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0201.0256.i.i.i.i.i, i64 208
  br label %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit"

"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit140": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit110.i.i.i.i.i"
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0201.0256.i.i.i.i.i, i64 312
  br label %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit"

"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit.i.i.i.i.i", %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit", %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit138", %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit140", %._crit_edge.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit139.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i"
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.0201.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit168.i.i.i.i.i" ], [ %spec.select.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit197.i.i.i.i.i" ], [ %i.d, %._crit_edge.i.i.i.i.i ], [ %.sroa.0201.0.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit139.i.i.i.i.i" ], [ %i.ha, %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit140" ], [ %i.gz, %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit138" ], [ %i.gy, %"_ZSt6any_ofIN3gmx12ArrayRefIterIKNS0_13AwhBiasParamsEEEZNS0_L18anyDimUsesProviderERKNS0_9AwhParamsENS0_25AwhCoordinateProviderTypeEE3$_0EbT_SA_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.0201.0256.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN3gmxL18anyDimUsesProviderERKNS2_9AwhParamsENS2_25AwhCoordinateProviderTypeEE3$_0EclINS2_12ArrayRefIterIKNS2_13AwhBiasParamsEEEEEbT_.exit.i.i.i.i.i" ]
  %i.hb = icmp ne ptr %.8.val, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i
  ret i1 %i.hb
}

declare void @_Z11please_citeP8_IO_FILEPKc(ptr noundef, ptr noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN3gmx31haveBiasSharingWithinSimulationERKNS_9AwhParamsE(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InvalidInputError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.239", align 8 ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !404
  store ptr %i.a, ptr %3, align 8, !tbaa !406
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !409
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.d = load ptr, ptr %3, align 8, !tbaa !406    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #26, !inline_history !403
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.i = load ptr, ptr %3, align 8, !tbaa !406    ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #26, !inline_history !403
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !62
  store ptr null, ptr %i.o, align 8, !tbaa !228
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !62
  store ptr null, ptr %i.n, align 8, !tbaa !412
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %0, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !229
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #23
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.d, ptr %i.a, align 8, !tbaa !35
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !220
  %i.g = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.g, ptr %i.b, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.i, ptr %i.h, align 1, !tbaa !39
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !221
  %i.l = load ptr, ptr %0, align 8, !tbaa !220
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !103
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !232
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !413
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !413
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !417  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !418  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !420
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i) #26
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !414

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !417
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !421
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #25
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !220    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !39
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit

_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN3gmx11BiasSharingD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #25
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

declare noundef float @_Z27constantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #10

declare noundef double @_Z41pull_conversion_factor_userinput2internalRK12t_pull_coord(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #10

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !229
  %i.c = load ptr, ptr %1, align 8, !tbaa !220    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.e, ptr %i.a, align 8, !tbaa !35
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !220
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.h, ptr %i.b, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !39
  store i8 %i.j, ptr %i.i, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !221
  %i.m = load ptr, ptr %0, align 8, !tbaa !220
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN3gmx4BiasC1EiRKNS_9AwhParamsERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEEddPKNS_11BiasSharingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_16ThisRankWillDoIOENS_10BiasParams18DisableUpdateSkipsE(ptr noundef nonnull align 8 dereferenceable(588), i32 noundef, ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(104), ptr, ptr, double noundef, double noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #10

declare void @_ZNK3gmx4Bias24printInitializationToLogEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(588), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !97    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !98 ; 3 uses
  %i.b = tail call fastcc noundef zeroext i1 @_ZN3gmxL18anyDimUsesProviderERKNS_9AwhParamsENS_25AwhCoordinateProviderTypeE(ptr %.val, ptr %.val18, i32 noundef 0)
  %i.c = icmp eq ptr %1, null
  %or.cond.not = and i1 %i.c, %i.b
  br i1 %or.cond.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not34 = icmp eq ptr %.val, %.val18
  br i1 %.not34, label %._crit_edge37, label %.lr.ph36

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_tENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 510) #23
  unreachable

._crit_edge37:                                    ; preds = %._crit_edge, %.preheader
  ret void

.lr.ph36:                                         ; preds = %.preheader, %._crit_edge
  %.sroa.026.035 = phi ptr [ %i.g, %._crit_edge ], [ %.val, %.preheader ] ; 3 uses
  %i.d = load ptr, ptr %.sroa.026.035, align 8, !tbaa !108 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.026.035, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %.not3132 = icmp eq ptr %i.d, %i.f
  br i1 %.not3132, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %.lr.ph36
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.026.035, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.g, %.val18
  br i1 %.not, label %._crit_edge37, label %.lr.ph36

.lr.ph:                                           ; preds = %.lr.ph36, %bb.d
  %.sroa.0.033 = phi ptr [ %i.l, %bb.d ], [ %i.d, %.lr.ph36 ] ; 3 uses
  %i.h = load i32, ptr %.sroa.0.033, align 8, !tbaa !112
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !113
  tail call void @_Z32register_external_pull_potentialP6pull_tiPKc(ptr noundef %1, i32 noundef %i.k, ptr noundef nonnull @.str.60)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 64 ; 2 uses
  %.not31 = icmp eq ptr %i.l, %i.f
  br i1 %.not31, label %._crit_edge, label %.lr.ph
}

declare void @_ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE(ptr noundef nonnull align 8 dereferenceable(49), ptr, ptr, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 608
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  tail call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(616) %.05.i.i) #26
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 616 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !225
  br label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.l = phi ptr [ %.pr, %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !223
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !422
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !22   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !103
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #26, !inline_history !422
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

declare void @_ZN3gmx11BiasSharingC1ERKNS_9AwhParamsERKNS_7MpiCommEP10tmpi_comm_(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN3gmx11BiasSharingD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104)) unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE17_M_realloc_insertIJNS0_4BiasERS_IiSaIiEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(588) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::Bias", align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !225    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
  unreachable

_ZNKSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 616                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 14973006553335675)
  %i.l = select i1 %i.j, i64 14973006553335675, i64 %i.k ; 4 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 616
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24
  br label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12_M_check_lenEmPKc.exit ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN3gmx4BiasC2EOS0_(ptr noundef nonnull align 8 dereferenceable(588) %4, ptr noundef nonnull align 8 dereferenceable(588) %2)
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE11_M_allocateEm.exit
  invoke void @_ZN3gmx19BiasCoupledToSystemC1ENS_4BiasERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(616) %i.r, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %.body.thread

.body.thread:                                     ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %4) #26
  br label %.sink.split

bb.d:                                             ; preds = %.noexc
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.t = invoke noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN3gmx19BiasCoupledToSystemEES3_ET0_T_S6_S5_(ptr %i.c, ptr %1, ptr noundef nonnull %i.q)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %.body.thread43

.body.thread43:                                   ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = call ptr @__cxa_begin_catch(ptr %i.v) #26 ; 0 uses
  br label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.thread

_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 616 ; 2 uses
  %i.y = invoke noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN3gmx19BiasCoupledToSystemEES3_ET0_T_S6_S5_(ptr %1, ptr %i.b, ptr noundef nonnull %i.x)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit32 unwind label %.body.thread46

.body.thread46:                                   ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %.sink.split

_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit32: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit32, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit32 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 592
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 608
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #25
  br label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(616) %.05.i.i) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 616 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx19BiasCoupledToSystemES2_SaIS1_EET0_T_S5_S4_RT1_.exit32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i33 = icmp eq ptr %i.c, null
  br i1 %.not.i33, label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !223
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #25
  br label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_.exit, %bb.f
  store ptr %i.q, ptr %0, align 8, !tbaa !225
  store ptr %i.y, ptr %i.a, align 8, !tbaa !222
  %i.am = getelementptr inbounds nuw [616 x i8], ptr %i.q, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !223
  ret void

.body:                                            ; preds = %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE11_M_allocateEm.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = call ptr @__cxa_begin_catch(ptr %i.ao) #26 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.thread, label %bb.g

_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %.body, %.body.thread43
  call void @_ZN3gmx19BiasCoupledToSystemD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %i.r) #26
  br label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit35

.sink.split:                                      ; preds = %.body.thread, %.body.thread46
  %.sink56 = phi { ptr, i32 } [ %i.z, %.body.thread46 ], [ %i.s, %.body.thread ]
  %.0.lpad-body42.ph = phi ptr [ %i.x, %.body.thread46 ], [ %i.q, %.body.thread ]
  %i.aq = extractvalue { ptr, i32 } %.sink56, 0
  %i.ar = call ptr @__cxa_begin_catch(ptr %i.aq) #26 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %.body
  %.0.lpad-body42 = phi ptr [ %i.q, %.body ], [ %.0.lpad-body42.ph, %.sink.split ]
  invoke void @_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_(ptr noundef nonnull %i.q, ptr noundef nonnull %.0.lpad-body42)
          to label %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit35 unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit35
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit35: ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.thread, %bb.g
  %i.at = mul nuw nsw i64 %i.l, 616
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.at) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.k unwind label %bb.h

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.as

bb.j:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #27
  unreachable

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE13_M_deallocateEPS1_m.exit35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN3gmx19BiasCoupledToSystemEES3_ET0_T_S6_S5_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.018 = phi ptr [ %i.y, %bb.f ], [ %2, %bb.a ]  ; 7 uses
  %.sroa.08.017 = phi ptr [ %i.x, %bb.f ], [ %0, %bb.a ] ; 4 uses
  invoke void @_ZN3gmx4BiasC2EOS0_(ptr noundef nonnull align 8 dereferenceable(616) %.018, ptr noundef nonnull align 8 dereferenceable(616) %.sroa.08.017)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.018, i64 592 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.08.017, i64 592 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.017, i64 600 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %.noexc4.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !18

.noexc.i.i.i.i:                                   ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #23
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc.i.i:                                       ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc
  %i.k = phi ptr [ null, %.noexc ], [ %i.j, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 600 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.018, i64 608
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.c, label %bb.d, !prof !21

bb.c:                                             ; preds = %.noexc4.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc4.i.i
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.o, align 4, !tbaa !22
  store i32 %i.v, ptr %i.k, align 4, !tbaa !22
  br label %bb.f

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(616) %.018) #26
  br label %.body

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.017, i64 616 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 616 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !423

bb.g:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.g ], [ %lpad.loopexit.split-lp38, %.loopexit.split-lp.loopexit.split-lp ]
  %i.aa = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #26 ; 0 uses
  invoke void @_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.i

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %bb.f ]
  ret ptr %.0.lcssa

bb.i:                                             ; preds = %bb.h, %.body
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ac

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #27
  unreachable

bb.l:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx19BiasCoupledToSystemEEEvT_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i
  %.05.i = phi ptr [ %i.h, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i

_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  tail call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(616) %.05.i) #26
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i, i64 616 ; 2 uses
  %.not.i = icmp eq ptr %i.h, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx19BiasCoupledToSystemEEEvT_S5_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx19BiasCoupledToSystemEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx19BiasCoupledToSystemD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx3AwhD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN3gmx11BiasSharingD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.b) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 104) #25
  br label %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !225    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i.i ], [ %i.c, %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 592
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 608
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #25
  br label %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  tail call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(616) %.05.i.i.i) #26
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 616 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN3gmx19BiasCoupledToSystemEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !225
  br label %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit
  %i.n = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !223
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25
  br label %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx19BiasCoupledToSystemES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK3gmx3Awh12isOutputStepEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = srem i64 %1, %i.d
  %i.f = icmp eq i64 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef float @_ZN3gmx3Awh28applyBiasForcesAndUpdateBiasE7PbcTypeNS_8ArrayRefIKdEES4_PA3_KfdlP13gmx_wallcycleP8_IO_FILE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr noundef %6, double noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %struct.t_pbc, align 4             ; 4 uses
  %i.a = alloca [4 x double], align 16            ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = icmp eq ptr %9, null                     ; 2 uses
  br i1 %i.d, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %9)
  %i.e = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !426 ; 2 uses
  %i.f = extractvalue { i32, i32 } %i.e, 0
  %i.g = extractvalue { i32, i32 } %i.e, 1
  %i.h = zext i32 %i.f to i64
  %i.i = zext i32 %i.g to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = or disjoint i64 %i.j, %i.h               ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 1120
  store i64 %i.k, ptr %i.l, align 8, !tbaa !429
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 2584
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !431  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 2592
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !431
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 2608 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !448
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !448
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.d, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 2612
  %i.w = load i32, ptr %i.v, align 4, !tbaa !449
  %i.x = mul nsw i32 %i.w, 60
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [24 x i8], ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1104    ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !450
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !450
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 2616
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !451
  %i.af = sub i64 %i.k, %i.ae
  %i.ag = getelementptr i8, ptr %i.z, i64 1112    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !452
  %i.ai = add i64 %i.af, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !452
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %11, i32 noundef %1, ptr noundef %6)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !224   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !224 ; 2 uses
  %.not66 = icmp eq ptr %i.al, %i.an
  br i1 %.not66, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = ptrtoint ptr %3 to i64
  %i.ar = ptrtoint ptr %2 to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 %i.as
  %i.au = ptrtoint ptr %5 to i64
  %i.av = ptrtoint ptr %4 to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.k

._crit_edge70:                                    ; preds = %_ZNK3gmx3Awh12isOutputStepEl.exit.thread, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit
  %.0.lcssa = phi double [ %i.ak, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit ], [ %i.cx, %_ZNK3gmx3Awh12isOutputStepEl.exit.thread ]
  br i1 %i.d, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge70
  call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %9)
  %i.ba = call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !426 ; 2 uses
  %i.bb = extractvalue { i32, i32 } %i.ba, 0
  %i.bc = extractvalue { i32, i32 } %i.ba, 1
  %i.bd = zext i32 %i.bb to i64
  %i.be = zext i32 %i.bc to i64
  %i.bf = shl nuw i64 %i.be, 32
  %i.bg = or disjoint i64 %i.bf, %i.bd            ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 1104 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 1120
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !429 ; 2 uses
  %.not.i = icmp ult i64 %i.bg, %i.bj
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = sub nuw i64 %i.bg, %i.bj
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 2624
  store i8 1, ptr %i.bl, align 8, !tbaa !453
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i64 [ %i.bk, %bb.f ], [ 0, %bb.g ]
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 1112 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !452
  %i.bo = add i64 %i.bn, %.0.i
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !452
  %i.bp = load i32, ptr %i.bh, align 8, !tbaa !450
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bh, align 8, !tbaa !450
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 2584
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !431
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 2592
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !431
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 2608 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !448
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.bw, align 8, !tbaa !448
  %i.bz = icmp eq i32 %i.by, 2
  br i1 %i.bz, label %bb.j, label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 2612
  store i32 46, ptr %i.ca, align 4, !tbaa !449
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 2616
  store i64 %i.bg, ptr %i.cb, align 8, !tbaa !451
  br label %_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit

_Z14wallcycle_stopP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.h, %bb.i, %bb.j, %._crit_edge70
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !114, !nonnull !61, !align !115
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !124
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = fptrunc double %.0.lcssa to float
  %i.ci = select i1 %i.cg, float %i.ch, float 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  ret float %i.ci

bb.k:                                             ; preds = %.lr.ph69, %_ZNK3gmx3Awh12isOutputStepEl.exit.thread
  %.068 = phi double [ %i.ak, %.lr.ph69 ], [ %i.cx, %_ZNK3gmx3Awh12isOutputStepEl.exit.thread ]
  %.sroa.052.067 = phi ptr [ %i.al, %.lr.ph69 ], [ %i.fy, %_ZNK3gmx3Awh12isOutputStepEl.exit.thread ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.052.067, i64 8 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25 ; 2 uses
  %i.cl = load ptr, ptr %.sroa.052.067, align 8, !tbaa !26 ; 2 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 40
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.052.067, i64 592
  br label %bb.l

._crit_edge:                                      ; preds = %bb.o, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.ct = load i64, ptr %i.ay, align 8, !tbaa !92
  %i.cu = call { ptr, ptr } @_ZN3gmx4Bias22calcForceAndUpdateBiasEPKdNS_8ArrayRefIS1_EES4_PdS5_dllP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(588) %.sroa.052.067, ptr noundef nonnull %i.a, ptr %2, ptr %i.at, ptr %4, ptr %i.ax, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, double noundef %7, i64 noundef %8, i64 noundef %i.ct, ptr noundef %10)
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0
  %i.cw = load double, ptr %i.b, align 8, !tbaa !33
  %i.cx = fadd double %.068, %i.cw                ; 2 uses
  %i.cy = load double, ptr %i.c, align 8, !tbaa !33
  %i.cz = load double, ptr %i.aj, align 8, !tbaa !95
  %i.da = fsub double %i.cz, %i.cy
  store double %i.da, ptr %i.aj, align 8, !tbaa !95
  %i.db = load ptr, ptr %i.cj, align 8, !tbaa !25 ; 2 uses
  %i.dc = load ptr, ptr %.sroa.052.067, align 8, !tbaa !26 ; 2 uses
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = sdiv exact i64 %i.df, 40
  %i.dh = trunc i64 %i.dg to i32
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.052.067, i64 252
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.052.067, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.052.067, i64 592
  br label %bb.p

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %i.dm = phi ptr [ %i.cl, %.lr.ph ], [ %i.ed, %bb.o ] ; 2 uses
  %i.dn = phi ptr [ %i.ck, %.lr.ph ], [ %i.ee, %bb.o ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.04159 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.o ] ; 3 uses
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dm, i64 %indvars.iv
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !28
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ds = load ptr, ptr %i.ap, align 8, !tbaa !94
  %i.dt = trunc nuw nsw i64 %indvars.iv to i32
  %i.du = sub nsw i32 %i.dt, %.04159
  %i.dv = sext i32 %i.du to i64
  %i.dw = load ptr, ptr %i.cs, align 8, !tbaa !17
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22
  %i.dz = call noundef double @_Z20get_pull_coord_valueP6pull_tiRK5t_pbc(ptr noundef %i.ds, i32 noundef %i.dy, ptr noundef nonnull align 4 dereferenceable(384) %11)
  %.pre = load ptr, ptr %i.cj, align 8, !tbaa !25
  %.pre75 = load ptr, ptr %.sroa.052.067, align 8, !tbaa !26
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ea = load i32, ptr %i.ao, align 4, !tbaa !96
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = add nsw i32 %.04159, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ed = phi ptr [ %.pre75, %bb.m ], [ %i.dm, %bb.n ] ; 2 uses
  %i.ee = phi ptr [ %.pre, %bb.m ], [ %i.dn, %bb.n ] ; 2 uses
  %.sink = phi double [ %i.dz, %bb.m ], [ %i.eb, %bb.n ]
  %.1 = phi i32 [ %.04159, %bb.m ], [ %i.ec, %bb.n ]
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store double %.sink, ptr %i.ef, align 8, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ed to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = sdiv exact i64 %i.ei, 40
  %i.ek = shl i64 %i.ej, 32
  %i.el = ashr exact i64 %i.ek, 32
  %i.em = icmp slt i64 %indvars.iv.next, %i.el
  br i1 %i.em, label %bb.l, label %._crit_edge, !llvm.loop !424

._crit_edge65:                                    ; preds = %bb.s, %._crit_edge
  %i.en = load i32, ptr %i.az, align 8, !tbaa !93 ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %_ZNK3gmx3Awh12isOutputStepEl.exit, label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread

_ZNK3gmx3Awh12isOutputStepEl.exit:                ; preds = %._crit_edge65
  %i.ep = zext nneg i32 %i.en to i64
  %i.eq = srem i64 %8, %i.ep
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.t, label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread

bb.p:                                             ; preds = %.lr.ph64, %bb.s
  %i.es = phi ptr [ %i.dc, %.lr.ph64 ], [ %i.fp, %bb.s ] ; 2 uses
  %i.et = phi ptr [ %i.db, %.lr.ph64 ], [ %i.fq, %bb.s ]
  %indvars.iv72 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next73, %bb.s ] ; 5 uses
  %.261 = phi i32 [ 0, %.lr.ph64 ], [ %.3, %bb.s ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.es, i64 %indvars.iv72
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !28
  %i.ex = icmp eq i8 %i.ew, 0
  br i1 %i.ex, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ey = load ptr, ptr %i.ap, align 8, !tbaa !94
  %i.ez = trunc nuw nsw i64 %indvars.iv72 to i32
  %i.fa = sub nsw i32 %i.ez, %.261
  %i.fb = sext i32 %i.fa to i64
  %i.fc = load ptr, ptr %i.dl, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !22
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv72
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !33
  call void @_Z31apply_external_pull_coord_forceP6pull_tid(ptr noundef %i.ey, i32 noundef %i.fe, double noundef %i.fg)
  %.pre76 = load ptr, ptr %i.cj, align 8, !tbaa !25
  %.pre77 = load ptr, ptr %.sroa.052.067, align 8, !tbaa !26
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.fh = load i32, ptr %i.dj, align 4, !tbaa !454
  %i.fi = sext i32 %i.fh to i64
  %i.fj = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.fk = getelementptr inbounds nuw [72 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv72
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !33
  %i.fn = fptosi double %i.fm to i32
  store i32 %i.fn, ptr %i.ao, align 4, !tbaa !96
  %i.fo = add nsw i32 %.261, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.fp = phi ptr [ %.pre77, %bb.q ], [ %i.es, %bb.r ] ; 2 uses
  %i.fq = phi ptr [ %.pre76, %bb.q ], [ %i.et, %bb.r ] ; 2 uses
  %.3 = phi i32 [ %.261, %bb.q ], [ %i.fo, %bb.r ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = sdiv exact i64 %i.ft, 40
  %i.fv = shl i64 %i.fu, 32
  %i.fw = ashr exact i64 %i.fv, 32
  %i.fx = icmp slt i64 %indvars.iv.next73, %i.fw
  br i1 %i.fx, label %bb.p, label %._crit_edge65, !llvm.loop !425

bb.t:                                             ; preds = %_ZNK3gmx3Awh12isOutputStepEl.exit
  call void @_ZN3gmx4Bias28doSkippedUpdatesForAllPointsEv(ptr noundef nonnull align 8 dereferenceable(588) %.sroa.052.067)
  br label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread

_ZNK3gmx3Awh12isOutputStepEl.exit.thread:         ; preds = %._crit_edge65, %bb.t, %_ZNK3gmx3Awh12isOutputStepEl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.052.067, i64 616 ; 2 uses
  %.not = icmp eq ptr %i.fy, %i.an
  br i1 %.not, label %._crit_edge70, label %bb.k
}

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare noundef double @_Z20get_pull_coord_valueP6pull_tiRK5t_pbc(ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(384)) local_unnamed_addr #10

declare { ptr, ptr } @_ZN3gmx4Bias22calcForceAndUpdateBiasEPKdNS_8ArrayRefIS1_EES4_PdS5_dllP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(588), ptr noundef, ptr, ptr, ptr, ptr, ptr noundef, ptr noundef, double noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

declare void @_Z31apply_external_pull_coord_forceP6pull_tid(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #10

declare void @_ZN3gmx4Bias28doSkippedUpdatesForAllPointsEv(ptr noundef nonnull align 8 dereferenceable(588)) local_unnamed_addr #10

declare void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx3Awh20initHistoryFromStateEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.270") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !61, !align !115
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !124
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  store ptr %i.f, ptr %0, align 8, !tbaa !235
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN3gmx10AwhHistoryEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.f)
  %i.h = load ptr, ptr %0, align 8, !tbaa !235    ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !238  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !239  ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i ], [ %i.i, %bb.b ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !242  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !243
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #25
  br label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i

_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.s = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !246 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !247
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25
  br label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i
  store ptr %i.i, ptr %i.j, align 8, !tbaa !239
  %.pre = load ptr, ptr %0, align 8, !tbaa !235   ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre22 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !239
  %.pre23 = load ptr, ptr %.pre, align 8, !tbaa !238
  br label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE5clearEv.exit

_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE5clearEv.exit: ; preds = %bb.b, %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.z = phi ptr [ %i.i, %bb.b ], [ %.pre23, %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.aa = phi ptr [ %i.i, %bb.b ], [ %.pre22, %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.ab = phi ptr [ %i.h, %bb.b ], [ %.pre, %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !222
  %i.ae = load ptr, ptr %1, align 8, !tbaa !225
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 616               ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ak = ptrtoint ptr %i.aa to i64
  %i.al = ptrtoint ptr %i.z to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 112               ; 3 uses
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE5clearEv.exit
  %i.ap = sub nuw nsw i64 %i.ai, %i.an
  invoke void @_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 noundef %i.ap)
          to label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE5clearEv.exit
  %i.aq = icmp ult i64 %i.ai, %i.an
  br i1 %i.aq, label %bb.g, label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [112 x i8], ptr %i.z, i64 %i.ai ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.aa, %i.ar
  br i1 %.not.i.i10, label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %bb.g, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i16
  %.05.i.i.i.i12 = phi ptr [ %i.bf, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i16 ], [ %i.ar, %bb.g ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !242 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i13 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i13, label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i14, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !243
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #25
  br label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i14

_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i14: ; preds = %bb.h, %.lr.ph.i.i.i.i11
  %i.az = load ptr, ptr %.05.i.i.i.i12, align 8, !tbaa !246 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i.i.i15, label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i16, label %bb.i

bb.i:                                             ; preds = %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i14
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !247
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #25
  br label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i16

_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i16: ; preds = %bb.i, %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i14
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i12, i64 112 ; 2 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.bf, %i.aa
  br i1 %.not.i.i.i.i17, label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i18, label %.lr.ph.i.i.i.i11, !llvm.loop !3

_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i18: ; preds = %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i16
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !239
  br label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i18
  %i.bg = load ptr, ptr %0, align 8, !tbaa !235   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !239
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !238 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.bj
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit, %bb.j
  %i.bk = phi ptr [ %i.bs, %bb.j ], [ %i.bj, %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit ]
  %.020 = phi i64 [ %i.bo, %bb.j ], [ 0, %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit ] ; 3 uses
  %i.bl = load ptr, ptr %1, align 8, !tbaa !225
  %i.bm = getelementptr inbounds nuw [616 x i8], ptr %i.bl, i64 %.020
  %i.bn = getelementptr inbounds nuw [112 x i8], ptr %i.bk, i64 %.020
  invoke void @_ZNK3gmx4Bias20initHistoryFromStateEPNS_14AwhBiasHistoryE(ptr noundef nonnull align 8 dereferenceable(588) %i.bm, ptr noundef nonnull %i.bn)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %.lr.ph
  %i.bo = add nuw i64 %.020, 1                    ; 2 uses
  %i.bp = load ptr, ptr %0, align 8, !tbaa !235   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !239
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !238 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 112
  %i.bx = icmp ult i64 %i.bo, %i.bw
  br i1 %i.bx, label %.lr.ph, label %.loopexit, !llvm.loop !455

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.e
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  resume { ptr, i32 } %lpad.loopexit.split-lp39

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE6resizeEm.exit, %bb.k
  ret void
}

declare void @_ZNK3gmx4Bias20initHistoryFromStateEPNS_14AwhBiasHistoryE(ptr noundef nonnull align 8 dereferenceable(588), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN3gmx10AwhHistoryEEET_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !228
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.b unwind label %bb.c       ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !232
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !249
  store ptr %i.a, ptr %0, align 8, !tbaa !228
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #26 ; 0 uses
  %i.h = icmp eq ptr %1, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx10AwhHistoryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %1) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 32) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #27
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx10AwhHistoryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !238    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !239  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !242  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !243
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #25
  br label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i

_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !246 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !247
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i: ; preds = %bb.c, %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !250
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #25
  br label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !249  ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !238  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !239  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !242  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !243
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #25
  br label %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i

_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.n = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !246 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !247
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #25
  br label %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i: ; preds = %bb.d, %_ZN3gmx22CorrelationGridHistoryD2Ev.exit.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3gmx14AwhBiasHistoryEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !238
  br label %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.u = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i, label %_ZN3gmx10AwhHistoryD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !250
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #25
  br label %_ZN3gmx10AwhHistoryD2Ev.exit

_ZN3gmx10AwhHistoryD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN3gmx14AwhBiasHistoryES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZN3gmx10AwhHistoryD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !238    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 112                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 112                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 82351536043346213
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 82351536043346212, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN3gmx14AwhBiasHistoryEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN3gmx14AwhBiasHistoryEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 112                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !239
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #23
  unreachable

_ZNKSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 82351536043346212) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 112
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 112
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !462, !alias.scope !461
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !462, !alias.scope !460
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !247, !alias.scope !461
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !247, !alias.scope !460
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !461
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false), !tbaa.struct !463, !alias.scope !464
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 12, i1 false), !alias.scope !464
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !465, !alias.scope !461
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !465, !alias.scope !460
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !243, !alias.scope !461
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !243, !alias.scope !460
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !461
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %.not.i.i.i = icmp eq ptr %i.al, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !459

_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN3gmx14AwhBiasHistoryESaIS1_EE13_M_deallocateEPS1_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !250
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #25
  br label %_ZNSt12_Vector_baseIN3gmx14AwhBiasHistoryESaIS1_EE13_M_deallocateEPS1_m.exit37

_ZNSt12_Vector_baseIN3gmx14AwhBiasHistoryESaIS1_EE13_M_deallocateEPS1_m.exit37: ; preds = %_ZNSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !238
  %i.aq = getelementptr inbounds nuw [112 x i8], ptr %i.v, i64 %1
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !239
  %i.ar = getelementptr inbounds nuw [112 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ar, ptr %i.h, align 8, !tbaa !250
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN3gmx14AwhBiasHistoryEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN3gmx14AwhBiasHistoryESaIS1_EE13_M_deallocateEPS1_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx3Awh23restoreStateFromHistoryEPKNS_10AwhHistoryE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !61, !align !115 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !124
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx3Awh23restoreStateFromHistoryEPKNS_10AwhHistoryEENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 460) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.h = load ptr, ptr %1, align 8, !tbaa !238
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !222
  %i.o = load ptr, ptr %0, align 8, !tbaa !225
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 616
  %.not18 = icmp eq i64 %i.l, %i.s
  br i1 %.not18, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.75)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.g unwind label %.thread27

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx3Awh23restoreStateFromHistoryEPKNS_10AwhHistoryE, ptr %i.u, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !105
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 466, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !22
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.t, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.p unwind label %bb.i

.thread:                                          ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread27:                                        ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #26
  br label %.sink.split

bb.i:                                             ; preds = %bb.g, %bb.h
  %.012 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.012, label %bb.j, label %bb.o

.sink.split:                                      ; preds = %.thread, %.thread27
  %.pn.pn26.ph = phi { ptr, i32 } [ %i.w, %.thread27 ], [ %i.v, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %.pn.pn26 = phi { ptr, i32 } [ %i.x, %bb.i ], [ %.pn.pn26.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #26
  br label %bb.o

bb.k:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !255
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.z, ptr %i.aa, align 8, !tbaa !95
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !467
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !468
  tail call void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef 8, ptr noundef nonnull %i.ae, ptr noundef %i.af)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !222
  %i.ai = load ptr, ptr %0, align 8, !tbaa !225   ; 3 uses
  %.not31 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.aj = phi ptr [ %i.ao, %.lr.ph.split.us ], [ %i.ai, %.lr.ph ]
  %.030.us = phi i64 [ %i.am, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [616 x i8], ptr %i.aj, i64 %.030.us
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !61, !align !115
  tail call void @_ZN3gmx4Bias23restoreStateFromHistoryEPKNS_14AwhBiasHistoryERKNS_7MpiCommE(ptr noundef nonnull align 8 dereferenceable(588) %i.ak, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
  %i.am = add nuw i64 %.030.us, 1                 ; 2 uses
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !222
  %i.ao = load ptr, ptr %0, align 8, !tbaa !225   ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = sdiv exact i64 %i.ar, 616
  %i.at = icmp ult i64 %i.am, %i.as
  br i1 %i.at, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !466

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.n
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.au = phi ptr [ %i.bb, %.lr.ph.split ], [ %i.ai, %.lr.ph ]
  %.030 = phi i64 [ %i.az, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.av = getelementptr inbounds nuw [616 x i8], ptr %i.au, i64 %.030
  %i.aw = load ptr, ptr %1, align 8, !tbaa !238
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %i.aw, i64 %.030
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !61, !align !115
  tail call void @_ZN3gmx4Bias23restoreStateFromHistoryEPKNS_14AwhBiasHistoryERKNS_7MpiCommE(ptr noundef nonnull align 8 dereferenceable(588) %i.av, ptr noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  %i.az = add nuw i64 %.030, 1                    ; 2 uses
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !222
  %i.bb = load ptr, ptr %0, align 8, !tbaa !225   ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 616
  %i.bg = icmp ult i64 %i.az, %i.bf
  br i1 %i.bg, label %.lr.ph.split, label %._crit_edge, !llvm.loop !466

bb.o:                                             ; preds = %bb.i, %bb.j
  %.pn.pn25 = phi { ptr, i32 } [ %i.x, %bb.i ], [ %.pn.pn26, %bb.j ]
  resume { ptr, i32 } %.pn.pn25

bb.p:                                             ; preds = %bb.h
  unreachable
}

declare void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @_ZN3gmx4Bias23restoreStateFromHistoryEPKNS_14AwhBiasHistoryERKNS_7MpiCommE(ptr noundef nonnull align 8 dereferenceable(588), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx3Awh13updateHistoryEPNS_10AwhHistoryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114, !nonnull !61, !align !115
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !124
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239  ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !238    ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 112
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !222
  %i.o = load ptr, ptr %0, align 8, !tbaa !225
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 616
  %i.t = icmp eq i64 %i.l, %i.s
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx3Awh13updateHistoryEPNS_10AwhHistoryEENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 492) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load double, ptr %i.u, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.v, ptr %i.w, align 8, !tbaa !255
  %.not = icmp eq ptr %i.g, %i.h
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.x = phi ptr [ %i.ad, %.lr.ph ], [ %i.h, %bb.d ]
  %.08 = phi i64 [ %i.ab, %.lr.ph ], [ 0, %bb.d ] ; 3 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !225
  %i.z = getelementptr inbounds nuw [616 x i8], ptr %i.y, i64 %.08
  %i.aa = getelementptr inbounds nuw [112 x i8], ptr %i.x, i64 %.08
  tail call void @_ZNK3gmx4Bias13updateHistoryEPNS_14AwhBiasHistoryE(ptr noundef nonnull align 8 dereferenceable(588) %i.z, ptr noundef nonnull %i.aa)
  %i.ab = add nuw i64 %.08, 1                     ; 2 uses
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.ad = load ptr, ptr %1, align 8, !tbaa !238   ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 112
  %i.ai = icmp ult i64 %i.ab, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.loopexit, !llvm.loop !469

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.a
  ret void
}

declare void @_ZNK3gmx4Bias13updateHistoryEPNS_14AwhBiasHistoryE(ptr noundef nonnull align 8 dereferenceable(588), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN3gmx3Awh23externalPotentialStringEv() local_unnamed_addr #19 align 2 {
bb.a:
  ret ptr @.str.60
}

declare void @_Z32register_external_pull_potentialP6pull_tiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx3Awh18writeToEnergyFrameElP10t_enxframe(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %_ZNK3gmx3Awh12isOutputStepEl.exit, label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread

_ZNK3gmx3Awh12isOutputStepEl.exit:                ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = srem i64 %1, %i.d
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread

bb.b:                                             ; preds = %_ZNK3gmx3Awh12isOutputStepEl.exit
  %i.g = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !224  ; 2 uses
  %.not35 = icmp eq ptr %i.g, %i.i
  br i1 %.not35, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %i.v, %.lr.ph ]
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !473
  %i.l = add nsw i32 %i.k, 1
  tail call void @_Z19add_blocks_enxframeP10t_enxframei(ptr noundef %2, i32 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !474
  %i.o = load i32, ptr %i.j, align 8, !tbaa !473
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [24 x i8], ptr %i.n, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -24      ; 2 uses
  tail call void @_Z22add_subblocks_enxblockP10t_enxblocki(ptr noundef %i.r, i32 noundef %.0.lcssa)
  store i32 7, ptr %i.r, align 8, !tbaa !477
  %i.s = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !224  ; 2 uses
  %.not3338 = icmp eq ptr %i.s, %i.t
  br i1 %.not3338, label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread, label %.lr.ph41

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.037 = phi i32 [ %i.v, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.030.036 = phi ptr [ %i.w, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.u = tail call noundef i32 @_ZNK3gmx4Bias25numEnergySubblocksToWriteEv(ptr noundef nonnull align 8 dereferenceable(588) %.sroa.030.036)
  %i.v = add nsw i32 %i.u, %.037                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.030.036, i64 616 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge42:                                    ; preds = %.lr.ph41
  %.pre = load ptr, ptr %0, align 8, !tbaa !224   ; 2 uses
  %.pre48 = load ptr, ptr %i.h, align 8, !tbaa !224 ; 2 uses
  %.not3443 = icmp eq ptr %.pre, %.pre48
  br i1 %.not3443, label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread, label %.lr.ph47

.lr.ph47:                                         ; preds = %._crit_edge42
  %i.x = getelementptr i8, ptr %i.q, i64 -16
  br label %bb.c

.lr.ph41:                                         ; preds = %._crit_edge, %.lr.ph41
  %.sroa.026.039 = phi ptr [ %i.y, %.lr.ph41 ], [ %i.s, %._crit_edge ] ; 2 uses
  tail call void @_ZN3gmx4Bias50updateBiasStateSharedCorrelationTensorTimeIntegralEv(ptr noundef nonnull align 8 dereferenceable(588) %.sroa.026.039)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.026.039, i64 616 ; 2 uses
  %.not33 = icmp eq ptr %i.y, %i.t
  br i1 %.not33, label %._crit_edge42, label %.lr.ph41

bb.c:                                             ; preds = %.lr.ph47, %bb.c
  %.02145 = phi i32 [ 0, %.lr.ph47 ], [ %i.ad, %bb.c ] ; 2 uses
  %.sroa.022.044 = phi ptr [ %.pre, %.lr.ph47 ], [ %i.ae, %bb.c ] ; 2 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !478
  %i.aa = sext i32 %.02145 to i64
  %i.ab = getelementptr inbounds [80 x i8], ptr %i.z, i64 %i.aa
  %i.ac = tail call noundef i32 @_ZNK3gmx4Bias22writeToEnergySubblocksEP13t_enxsubblock(ptr noundef nonnull align 8 dereferenceable(588) %.sroa.022.044, ptr noundef %i.ab)
  %i.ad = add nsw i32 %i.ac, %.02145
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.022.044, i64 616 ; 2 uses
  %.not34 = icmp eq ptr %i.ae, %.pre48
  br i1 %.not34, label %_ZNK3gmx3Awh12isOutputStepEl.exit.thread, label %bb.c

_ZNK3gmx3Awh12isOutputStepEl.exit.thread:         ; preds = %bb.c, %._crit_edge, %._crit_edge42, %bb.a, %_ZNK3gmx3Awh12isOutputStepEl.exit
  ret void
}

declare noundef i32 @_ZNK3gmx4Bias25numEnergySubblocksToWriteEv(ptr noundef nonnull align 8 dereferenceable(588)) local_unnamed_addr #10

declare void @_Z19add_blocks_enxframeP10t_enxframei(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_Z22add_subblocks_enxblockP10t_enxblocki(ptr noundef, i32 noundef) local_unnamed_addr #10

declare void @_ZN3gmx4Bias50updateBiasStateSharedCorrelationTensorTimeIntegralEv(ptr noundef nonnull align 8 dereferenceable(588)) local_unnamed_addr #10

declare noundef i32 @_ZNK3gmx4Bias22writeToEnergySubblocksEP13t_enxsubblock(ptr noundef nonnull align 8 dereferenceable(588), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx3Awh21hasFepLambdaDimensionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !224    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224  ; 4 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 616
  %i.h = ashr i64 %i.g, 2                         ; 3 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.a
  %i.j = mul nuw nsw i64 %i.h, 2464
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.a, i64 %i.j ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit78.thread.i.i.i.i.i", %.lr.ph.preheader.i.i.i.i.i
  %.0205.i.i.i.i.i = phi i64 [ %i.fk, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit78.thread.i.i.i.i.i" ], [ %i.h, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0144.0204.i.i.i.i.i = phi ptr [ %i.fj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit78.thread.i.i.i.i.i" ], [ %i.a, %.lr.ph.preheader.i.i.i.i.i ] ; 13 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0144.0204.i.i.i.i.i, align 8, !tbaa !31 ; 4 uses
  %i.k = getelementptr i8, ptr %.sroa.0144.0204.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !31 ; 3 uses
  %i.l = ptrtoint ptr %.val1.i.i.i.i.i.i to i64   ; 2 uses
  %i.m = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = sdiv exact i64 %i.n, 40
  %i.p = ashr i64 %i.o, 2                         ; 3 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i
  %i.r = mul nuw nsw i64 %i.p, 160
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 %i.r ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.af, %bb.e ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %bb.e ], [ %.val.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.t = load i8, ptr %i.s, align 8, !tbaa !28
  %i.u = icmp eq i8 %i.t, 1
  br i1 %i.u, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.w = load i8, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 104
  %i.z = load i8, ptr %i.y, align 8, !tbaa !28
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 144
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !28
  %i.ad = icmp eq i8 %i.ac, 1
  br i1 %i.ad, label %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %i.af = add nsw i64 %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ag = icmp sgt i64 %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.e
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i.i.i.i.i.i.i.i = sub i64 %i.l, %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.pre-phi51.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.ah = sdiv exact i64 %.pre-phi51.i.i.i.i.i.i.i.i.i.i.i.i.i, 40
  switch i64 %i.ah, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i" [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !28
  %i.ak = icmp eq i8 %i.aj, 1
  br i1 %i.ak, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %bb.g ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.an = load i8, ptr %i.am, align 8, !tbaa !28
  %i.ao = icmp eq i8 %i.an, 1
  br i1 %i.ao, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !28
  %i.as = icmp eq i8 %i.ar, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.as, ptr %.sroa.025.2.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i"

.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i"

.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 80
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i"

.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 120
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %i.av, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %i.au, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.at, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not162.i.i.i.i.i = icmp eq ptr %.val1.i.i.i.i.i.i, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not162.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i", label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0144.0204.i.i.i.i.i, i64 616
  %.val.i16.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !31 ; 4 uses
  %i.ax = getelementptr i8, ptr %.sroa.0144.0204.i.i.i.i.i, i64 624
  %.val1.i17.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 3 uses
  %i.ay = ptrtoint ptr %.val1.i17.i.i.i.i.i to i64 ; 2 uses
  %i.az = ptrtoint ptr %.val.i16.i.i.i.i.i to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = sdiv exact i64 %i.ba, 40
  %i.bc = ashr i64 %i.bb, 2                       ; 3 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i.i.i.i.i25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i18.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i25.i.i.i.i.i:     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %i.be = mul nuw nsw i64 %i.bc, 160
  %scevgep.i.i.i.i.i.i.i.i26.i.i.i.i.i = getelementptr i8, ptr %.val.i16.i.i.i.i.i, i64 %i.be ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i27.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i27.i.i.i.i.i:               ; preds = %bb.n, %.lr.ph.preheader.i.i.i.i.i.i.i.i25.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i28.i.i.i.i.i = phi i64 [ %i.bs, %bb.n ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i.i.i.i25.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i.i.i29.i.i.i.i.i = phi ptr [ %i.br, %bb.n ], [ %.val.i16.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i25.i.i.i.i.i ] ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i29.i.i.i.i.i, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !28
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit36.i.i.i.i.i", label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i27.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i29.i.i.i.i.i, i64 64
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !28
  %i.bk = icmp eq i8 %i.bj, 1
  br i1 %i.bk, label %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i35.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i29.i.i.i.i.i, i64 104
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !28
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i34.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i29.i.i.i.i.i, i64 144
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !28
  %i.bq = icmp eq i8 %i.bp, 1
  br i1 %i.bq, label %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i33.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i29.i.i.i.i.i, i64 160
  %i.bs = add nsw i64 %.045.i.i.i.i.i.i.i.i28.i.i.i.i.i, -1
  %i.bt = icmp sgt i64 %.045.i.i.i.i.i.i.i.i28.i.i.i.i.i, 1
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i27.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i30.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i.i.i.i30.i.i.i.i.i: ; preds = %bb.n
  %.pre.i.i.i.i.i.i.i.i31.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i26.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i.i.i32.i.i.i.i.i = sub i64 %i.ay, %.pre.i.i.i.i.i.i.i.i31.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i18.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i18.i.i.i.i.i:          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i30.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %.pre-phi51.i.i.i.i.i.i.i.i19.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i.i.i32.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i30.i.i.i.i.i ], [ %i.ba, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i" ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i20.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i26.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i30.i.i.i.i.i ], [ %.val.i16.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i" ] ; 5 uses
  %i.bu = sdiv exact i64 %.pre-phi51.i.i.i.i.i.i.i.i19.i.i.i.i.i, 40
  switch i64 %i.bu, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit36.thread.i.i.i.i.i" [
    i64 3, label %bb.o
    i64 2, label %bb.q
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i18.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i20.i.i.i.i.i, i64 24
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !28
  %i.bx = icmp eq i8 %i.bw, 1
  br i1 %i.bx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit36.i.i.i.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i20.i.i.i.i.i, i64 40
  br label %bb.q

end_hunk_2
begin_hunk_3_@_ZNK3gmx3Awh21hasFepLambdaDimensionEv:bb.a
  %i.hx = sdiv exact i64 %.pre-phi51.i.i.i.i.i.i.i.i103.i.i.i.i.i, 40
  switch i64 %i.hx, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.thread.i.i.i.i.i" [
    i64 3, label %bb.ba
    i64 2, label %bb.bc
    i64 1, label %bb.be
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i102.i.i.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i104.i.i.i.i.i, i64 24
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !28
  %i.ia = icmp eq i8 %i.hz, 1
  br i1 %i.ia, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i", label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i104.i.i.i.i.i, i64 40
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %._crit_edge.i.i.i.i.i.i.i.i102.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i.i.i108.i.i.i.i.i = phi ptr [ %i.ib, %bb.bb ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i104.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i102.i.i.i.i.i ] ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i108.i.i.i.i.i, i64 24
  %i.id = load i8, ptr %i.ic, align 8, !tbaa !28
  %i.ie = icmp eq i8 %i.id, 1
  br i1 %i.ie, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i", label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i108.i.i.i.i.i, i64 40
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i.i.i.i.i.i.i.i102.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i.i.i105.i.i.i.i.i = phi ptr [ %i.if, %bb.bd ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i104.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i102.i.i.i.i.i ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i.i.i.i.i.i105.i.i.i.i.i, i64 24
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !28
  %i.ii = icmp eq i8 %i.ih, 1
  %spec.select.i.i.i.i.i.i.i.i106.i.i.i.i.i = select i1 %i.ii, ptr %.sroa.025.2.i.i.i.i.i.i.i.i105.i.i.i.i.i, ptr %.val1.i101.i.i.i.i.i
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i"

.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i119.i.i.i.i.i: ; preds = %bb.aw
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i113.i.i.i.i.i, i64 40
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i"

.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i118.i.i.i.i.i: ; preds = %bb.ax
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i113.i.i.i.i.i, i64 80
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i"

.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i117.i.i.i.i.i: ; preds = %bb.ay
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i113.i.i.i.i.i, i64 120
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i111.i.i.i.i.i, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i117.i.i.i.i.i, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i118.i.i.i.i.i, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i119.i.i.i.i.i, %bb.be, %bb.bc, %bb.ba
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i107.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i.i.i108.i.i.i.i.i, %bb.bc ], [ %spec.select.i.i.i.i.i.i.i.i106.i.i.i.i.i, %bb.be ], [ %i.il, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i117.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i104.i.i.i.i.i, %bb.ba ], [ %i.ik, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i118.i.i.i.i.i ], [ %i.ij, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i119.i.i.i.i.i ], [ %.sroa.025.044.i.i.i.i.i.i.i.i113.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i111.i.i.i.i.i ]
  %.not160.i.i.i.i.i = icmp eq ptr %.val1.i101.i.i.i.i.i, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i107.i.i.i.i.i
  br i1 %.not160.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.thread.i.i.i.i.i", label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i102.i.i.i.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0144.1.i.i.i.i.i, i64 616
  br label %bb.bf

bb.bf:                                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.thread.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.sroa.0144.2.i.i.i.i.i = phi ptr [ %i.im, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.thread.i.i.i.i.i" ], [ %.sroa.0144.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.val.i121.i.i.i.i.i = load ptr, ptr %.sroa.0144.2.i.i.i.i.i, align 8, !tbaa !31 ; 4 uses
  %i.in = getelementptr i8, ptr %.sroa.0144.2.i.i.i.i.i, i64 8
  %.val1.i122.i.i.i.i.i = load ptr, ptr %i.in, align 8, !tbaa !31 ; 3 uses
  %i.io = ptrtoint ptr %.val1.i122.i.i.i.i.i to i64 ; 2 uses
  %i.ip = ptrtoint ptr %.val.i121.i.i.i.i.i to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 2 uses
  %i.ir = sdiv exact i64 %i.iq, 40
  %i.is = ashr i64 %i.ir, 2                       ; 3 uses
  %i.it = icmp sgt i64 %i.is, 0
  br i1 %i.it, label %.lr.ph.preheader.i.i.i.i.i.i.i.i130.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i130.i.i.i.i.i:    ; preds = %bb.bf
  %i.iu = mul nuw nsw i64 %i.is, 160
  %scevgep.i.i.i.i.i.i.i.i131.i.i.i.i.i = getelementptr i8, ptr %.val.i121.i.i.i.i.i, i64 %i.iu ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i132.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i132.i.i.i.i.i:              ; preds = %bb.bj, %.lr.ph.preheader.i.i.i.i.i.i.i.i130.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i133.i.i.i.i.i = phi i64 [ %i.ji, %bb.bj ], [ %i.is, %.lr.ph.preheader.i.i.i.i.i.i.i.i130.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i = phi ptr [ %i.jh, %bb.bj ], [ %.val.i121.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i130.i.i.i.i.i ] ; 9 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 24
  %i.iw = load i8, ptr %i.iv, align 8, !tbaa !28
  %i.ix = icmp eq i8 %i.iw, 1
  br i1 %i.ix, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i", label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i132.i.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 64
  %i.iz = load i8, ptr %i.iy, align 8, !tbaa !28
  %i.ja = icmp eq i8 %i.iz, 1
  br i1 %i.ja, label %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i140.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 104
  %i.jc = load i8, ptr %i.jb, align 8, !tbaa !28
  %i.jd = icmp eq i8 %i.jc, 1
  br i1 %i.jd, label %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i139.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 144
  %i.jf = load i8, ptr %i.je, align 8, !tbaa !28
  %i.jg = icmp eq i8 %i.jf, 1
  br i1 %i.jg, label %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i138.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 160
  %i.ji = add nsw i64 %.045.i.i.i.i.i.i.i.i133.i.i.i.i.i, -1
  %i.jj = icmp sgt i64 %.045.i.i.i.i.i.i.i.i133.i.i.i.i.i, 1
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i.i.i132.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i135.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i.i.i.i135.i.i.i.i.i: ; preds = %bb.bj
  %.pre.i.i.i.i.i.i.i.i136.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i131.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i.i.i137.i.i.i.i.i = sub i64 %i.io, %.pre.i.i.i.i.i.i.i.i136.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i:         ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i135.i.i.i.i.i, %bb.bf
  %.pre-phi51.i.i.i.i.i.i.i.i124.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i.i.i137.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i135.i.i.i.i.i ], [ %i.iq, %bb.bf ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i125.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i131.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i135.i.i.i.i.i ], [ %.val.i121.i.i.i.i.i, %bb.bf ] ; 5 uses
  %i.jk = sdiv exact i64 %.pre-phi51.i.i.i.i.i.i.i.i124.i.i.i.i.i, 40
  switch i64 %i.jk, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.thread.i.i.i.i.i" [
    i64 3, label %bb.bk
    i64 2, label %bb.bm
    i64 1, label %bb.bo
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i125.i.i.i.i.i, i64 24
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !28
  %i.jn = icmp eq i8 %i.jm, 1
  br i1 %i.jn, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i", label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i125.i.i.i.i.i, i64 40
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i.i.i129.i.i.i.i.i = phi ptr [ %i.jo, %bb.bl ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i125.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i ] ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i129.i.i.i.i.i, i64 24
  %i.jq = load i8, ptr %i.jp, align 8, !tbaa !28
  %i.jr = icmp eq i8 %i.jq, 1
  br i1 %i.jr, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i129.i.i.i.i.i, i64 40
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i.i.i126.i.i.i.i.i = phi ptr [ %i.js, %bb.bn ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i125.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i.i.i.i.i.i126.i.i.i.i.i, i64 24
  %i.ju = load i8, ptr %i.jt, align 8, !tbaa !28
  %i.jv = icmp eq i8 %i.ju, 1
  %spec.select.i.i.i.i.i.i.i.i127.i.i.i.i.i = select i1 %i.jv, ptr %.sroa.025.2.i.i.i.i.i.i.i.i126.i.i.i.i.i, ptr %.val1.i122.i.i.i.i.i
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i"

.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i140.i.i.i.i.i: ; preds = %bb.bg
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 40
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i"

.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i139.i.i.i.i.i: ; preds = %bb.bh
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 80
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i"

.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i138.i.i.i.i.i: ; preds = %bb.bi
  %i.jy = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, i64 120
  br label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i132.i.i.i.i.i, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i138.i.i.i.i.i, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i139.i.i.i.i.i, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i140.i.i.i.i.i, %bb.bo, %bb.bm, %bb.bk
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i128.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i.i.i129.i.i.i.i.i, %bb.bm ], [ %spec.select.i.i.i.i.i.i.i.i127.i.i.i.i.i, %bb.bo ], [ %i.jy, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i138.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i125.i.i.i.i.i, %bb.bk ], [ %i.jx, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i139.i.i.i.i.i ], [ %i.jw, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i140.i.i.i.i.i ], [ %.sroa.025.044.i.i.i.i.i.i.i.i134.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i132.i.i.i.i.i ]
  %.not161.i.i.i.i.i = icmp eq ptr %.val1.i122.i.i.i.i.i, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i128.i.i.i.i.i
  br i1 %.not161.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.thread.i.i.i.i.i", label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i123.i.i.i.i.i
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit"

"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit36.i.i.i.i.i"
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0144.0204.i.i.i.i.i, i64 616
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit"

"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit105": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit57.i.i.i.i.i"
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0144.0204.i.i.i.i.i, i64 1232
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit"

"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit107": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit78.i.i.i.i.i"
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0144.0204.i.i.i.i.i, i64 1848
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit"

"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i", %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit", %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit105", %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit107", %._crit_edge.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit99.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.thread.i.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.0144.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit120.i.i.i.i.i" ], [ %i.c, %._crit_edge.i.i.i.i.i ], [ %.sroa.0144.0.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit99.i.i.i.i.i" ], [ %i.c, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.thread.i.i.i.i.i" ], [ %.sroa.0144.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit141.i.i.i.i.i" ], [ %i.kb, %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit107" ], [ %i.ka, %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit105" ], [ %i.jz, %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh21hasFepLambdaDimensionEvE3$_0EbT_SC_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.0144.0204.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh21hasFepLambdaDimensionEvE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i" ]
  %i.kc = icmp ne ptr %i.c, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  ret i1 %i.kc
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK3gmx3Awh28needForeignEnergyDifferencesEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK3gmx3Awh21hasFepLambdaDimensionEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.a, label %bb.b, label %bb.br

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %bb.br, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !224    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !224  ; 4 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 616
  %i.j = ashr i64 %i.i, 2                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit84.thread.i.i.i.i.i"
  %.0196.i.i.i.i.i = phi i64 [ %i.fx, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit84.thread.i.i.i.i.i" ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.0157.0195.i.i.i.i.i = phi ptr [ %i.fw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit84.thread.i.i.i.i.i" ], [ %i.c, %bb.c ] ; 11 uses
  %i.l = load ptr, ptr %.sroa.0157.0195.i.i.i.i.i, align 8, !tbaa !31 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0157.0195.i.i.i.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = sdiv exact i64 %i.q, 40
  %i.s = ashr i64 %i.r, 2                         ; 3 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i
  %i.u = mul nuw nsw i64 %i.s, 160
  %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.l, i64 %i.u ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.g ], [ %i.s, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.g ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.z = load i8, ptr %i.y, align 8, !tbaa !28
  %i.aa = icmp eq i8 %i.z, 1
  br i1 %i.aa, label %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 104
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !28
  %i.ad = icmp eq i8 %i.ac, 1
  br i1 %i.ad, label %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 144
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !28
  %i.ag = icmp eq i8 %i.af, 1
  br i1 %i.ag, label %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 160
  %i.ai = add nsw i64 %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.045.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %bb.g
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i.i.i.i.i.i.i.i = sub i64 %i.o, %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.pre-phi51.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.l, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %i.ak = sdiv exact i64 %.pre-phi51.i.i.i.i.i.i.i.i.i.i.i.i.i, 40
  switch i64 %i.ak, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i" [
    i64 3, label %bb.h
    i64 2, label %bb.j
    i64 1, label %bb.l
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.am = load i8, ptr %i.al, align 8, !tbaa !28
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %bb.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !28
  %i.ar = icmp eq i8 %i.aq, 1
  br i1 %i.ar, label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.as, %bb.k ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %i.au = load i8, ptr %i.at, align 8, !tbaa !28
  %i.av = icmp eq i8 %i.au, 1
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.av, ptr %.sroa.025.2.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.n
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i

.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i

.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 80
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i

.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 120
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i

_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l, %bb.j, %bb.h
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %i.ay, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ %i.ax, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aw, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.025.044.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.n, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i": ; preds = %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i
  %i.az = tail call noundef zeroext i1 @_ZNK3gmx4Bias17isSampleCoordStepEl(ptr noundef nonnull align 8 dereferenceable(616) %.sroa.0157.0195.i.i.i.i.i, i64 noundef range(i64 1, 0) %1)
  br i1 %i.az, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh28needForeignEnergyDifferencesElE3$_0EbT_SC_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i", %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0157.0195.i.i.i.i.i, i64 616 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0157.0195.i.i.i.i.i, i64 624
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 3 uses
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = sdiv exact i64 %i.bg, 40
  %i.bi = ashr i64 %i.bh, 2                       ; 3 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.preheader.i.i.i.i.i.i.i.i31.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i22.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i31.i.i.i.i.i:     ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %i.bk = mul nuw nsw i64 %i.bi, 160
  %scevgep.i.i.i.i.i.i.i.i32.i.i.i.i.i = getelementptr i8, ptr %i.bb, i64 %i.bk ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i33.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i33.i.i.i.i.i:               ; preds = %bb.p, %.lr.ph.preheader.i.i.i.i.i.i.i.i31.i.i.i.i.i
  %.045.i.i.i.i.i.i.i.i34.i.i.i.i.i = phi i64 [ %i.by, %bb.p ], [ %i.bi, %.lr.ph.preheader.i.i.i.i.i.i.i.i31.i.i.i.i.i ] ; 2 uses
  %.sroa.025.044.i.i.i.i.i.i.i.i35.i.i.i.i.i = phi ptr [ %i.bx, %bb.p ], [ %i.bb, %.lr.ph.preheader.i.i.i.i.i.i.i.i31.i.i.i.i.i ] ; 9 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i35.i.i.i.i.i, i64 24
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !28
  %i.bn = icmp eq i8 %i.bm, 1
  br i1 %i.bn, label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i27.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i33.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i35.i.i.i.i.i, i64 64
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !28
  %i.bq = icmp eq i8 %i.bp, 1
  br i1 %i.bq, label %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i41.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i35.i.i.i.i.i, i64 104
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !28
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i40.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i35.i.i.i.i.i, i64 144
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !28
  %i.bw = icmp eq i8 %i.bv, 1
  br i1 %i.bw, label %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i39.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i35.i.i.i.i.i, i64 160
  %i.by = add nsw i64 %.045.i.i.i.i.i.i.i.i34.i.i.i.i.i, -1
  %i.bz = icmp sgt i64 %.045.i.i.i.i.i.i.i.i34.i.i.i.i.i, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i.i.i33.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i36.i.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i.i.i.i.i36.i.i.i.i.i: ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i.i37.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i32.i.i.i.i.i to i64
  %.pre50.i.i.i.i.i.i.i.i38.i.i.i.i.i = sub i64 %i.be, %.pre.i.i.i.i.i.i.i.i37.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i22.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i22.i.i.i.i.i:          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i36.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i"
  %.pre-phi51.i.i.i.i.i.i.i.i23.i.i.i.i.i = phi i64 [ %.pre50.i.i.i.i.i.i.i.i38.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i36.i.i.i.i.i ], [ %i.bg, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i" ]
  %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i24.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i32.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i36.i.i.i.i.i ], [ %i.bb, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i.i" ] ; 5 uses
  %i.ca = sdiv exact i64 %.pre-phi51.i.i.i.i.i.i.i.i23.i.i.i.i.i, 40
  switch i64 %i.ca, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit42.thread.i.i.i.i.i" [
    i64 3, label %bb.q
    i64 2, label %bb.s
    i64 1, label %bb.u
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i22.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i24.i.i.i.i.i, i64 24
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !28
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i27.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i24.i.i.i.i.i, i64 40
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i.i.i.i22.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZNK3gmx3Awh28needForeignEnergyDifferencesEl:bb.a
bb.bn:                                            ; preds = %bb.bm
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i129.i.i.i.i.i, i64 40
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %._crit_edge.i.i.i.i.i.i.i.i127.i.i.i.i.i
  %.sroa.025.1.i.i.i.i.i.i.i.i135.i.i.i.i.i = phi ptr [ %i.kj, %bb.bn ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i129.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i127.i.i.i.i.i ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i135.i.i.i.i.i, i64 24
  %i.kl = load i8, ptr %i.kk, align 8, !tbaa !28
  %i.km = icmp eq i8 %i.kl, 1
  br i1 %i.km, label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.025.1.i.i.i.i.i.i.i.i135.i.i.i.i.i, i64 40
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge.i.i.i.i.i.i.i.i127.i.i.i.i.i
  %.sroa.025.2.i.i.i.i.i.i.i.i130.i.i.i.i.i = phi ptr [ %i.kn, %bb.bp ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i129.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i127.i.i.i.i.i ] ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.025.2.i.i.i.i.i.i.i.i130.i.i.i.i.i, i64 24
  %i.kp = load i8, ptr %i.ko, align 8, !tbaa !28
  %i.kq = icmp eq i8 %i.kp, 1
  %spec.select.i.i.i.i.i.i.i.i131.i.i.i.i.i = select i1 %i.kq, ptr %.sroa.025.2.i.i.i.i.i.i.i.i130.i.i.i.i.i, ptr %i.ji
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i

.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i146.i.i.i.i.i: ; preds = %bb.bi
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i140.i.i.i.i.i, i64 40
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i

.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i145.i.i.i.i.i: ; preds = %bb.bj
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i140.i.i.i.i.i, i64 80
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i

.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i144.i.i.i.i.i: ; preds = %bb.bk
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.025.044.i.i.i.i.i.i.i.i140.i.i.i.i.i, i64 120
  br label %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i

_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i138.i.i.i.i.i, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i144.i.i.i.i.i, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i145.i.i.i.i.i, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i146.i.i.i.i.i, %bb.bq, %bb.bo, %bb.bm
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i133.i.i.i.i.i = phi ptr [ %.sroa.025.1.i.i.i.i.i.i.i.i135.i.i.i.i.i, %bb.bo ], [ %spec.select.i.i.i.i.i.i.i.i131.i.i.i.i.i, %bb.bq ], [ %i.kt, %.loopexit.split.loop.exit39.i.i.i.i.i.i.i.i144.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i.i.i.i.i.i.i.i129.i.i.i.i.i, %bb.bm ], [ %i.ks, %.loopexit.split.loop.exit37.i.i.i.i.i.i.i.i145.i.i.i.i.i ], [ %i.kr, %.loopexit.split.loop.exit35.i.i.i.i.i.i.i.i146.i.i.i.i.i ], [ %.sroa.025.044.i.i.i.i.i.i.i.i140.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i138.i.i.i.i.i ]
  %.not.i.i134.i.i.i.i.i = icmp eq ptr %i.ji, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i133.i.i.i.i.i
  br i1 %.not.i.i134.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.thread.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.i.i.i.i.i": ; preds = %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i
  %i.ku = tail call noundef zeroext i1 @_ZNK3gmx4Bias17isSampleCoordStepEl(ptr noundef nonnull align 8 dereferenceable(616) %.sroa.0157.2.i.i.i.i.i, i64 noundef range(i64 1, 0) %1)
  br i1 %i.ku, label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh28needForeignEnergyDifferencesElE3$_0EbT_SC_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.i.i.i.i.i", %_ZNK3gmx4Bias21hasFepLambdaDimensionEv.exit.i.i132.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i127.i.i.i.i.i
  br label %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh28needForeignEnergyDifferencesElE3$_0EbT_SC_T0_.exit"

"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh28needForeignEnergyDifferencesElE3$_0EbT_SC_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit42.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit63.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit84.i.i.i.i.i", %._crit_edge.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit105.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit126.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.thread.i.i.i.i.i"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.0157.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit126.i.i.i.i.i" ], [ %i.e, %._crit_edge.i.i.i.i.i ], [ %.sroa.0157.0.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit105.i.i.i.i.i" ], [ %i.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.thread.i.i.i.i.i" ], [ %.sroa.0157.2.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit147.i.i.i.i.i" ], [ %.sroa.0157.0195.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i" ], [ %i.ba, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit42.i.i.i.i.i" ], [ %i.cq, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit63.i.i.i.i.i" ], [ %i.eg, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK3gmx3Awh28needForeignEnergyDifferencesElE3$_0EclINS_17__normal_iteratorIPKNS2_19BiasCoupledToSystemESt6vectorIS8_SaIS8_EEEEEEbT_.exit84.i.i.i.i.i" ]
  %i.kv = icmp ne ptr %i.e, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i
  br label %bb.br

bb.br:                                            ; preds = %bb.b, %bb.a, %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh28needForeignEnergyDifferencesElE3$_0EbT_SC_T0_.exit"
  %.0 = phi i1 [ false, %bb.a ], [ %i.kv, %"_ZSt6any_ofIN9__gnu_cxx17__normal_iteratorIPKN3gmx19BiasCoupledToSystemESt6vectorIS3_SaIS3_EEEEZNKS2_3Awh28needForeignEnergyDifferencesElE3$_0EbT_SC_T0_.exit" ], [ true, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK3gmx4Bias17isSampleCoordStepEl(ptr noundef nonnull align 8 dereferenceable(588), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16prepareAwhModuleEP8_IO_FILERK10t_inputrecP7t_stateRKNS_7MpiCommEPK14gmx_multisim_tbbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_t(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.300") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr nofree noundef captures(none) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %11 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %12 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %13 = alloca %"class.std::shared_ptr.270", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.b = load i8, ptr %i.a, align 8, !tbaa !485, !range !60, !noundef !61
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !488
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  br i1 %7, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull @.str.82)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.f unwind label %.thread33

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %10, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %12, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx16prepareAwhModuleEP8_IO_FILERK10t_inputrecP7t_stateRKNS_7MpiCommEPK14gmx_multisim_tbbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_t, ptr %i.e, align 8, !tbaa !105
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !105
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 617, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !22
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.d, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.d, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.ag unwind label %bb.h

.thread:                                          ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread33:                                        ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #26
  br label %.sink.split

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br i1 %.0, label %bb.i, label %common.resume

.sink.split:                                      ; preds = %.thread, %.thread33
  %.pn24.pn32.ph = phi { ptr, i32 } [ %i.g, %.thread33 ], [ %i.f, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h
  %.pn24.pn32 = phi { ptr, i32 } [ %i.h, %bb.h ], [ %.pn24.pn32.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #26
  br label %common.resume

bb.j:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !489
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !490  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.o = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24, !noalias !491 ; 7 uses
  %i.p = load i32, ptr %i.m, align 4, !tbaa !22, !noalias !491
  %i.q = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !491
  invoke void @_ZN3gmx3AwhC1EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(888) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(49) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9, i32 noundef %i.p, i32 noundef %i.q)
          to label %_ZSt11make_uniqueIN3gmx3AwhEJRP8_IO_FILERK10t_inputrecRKNS0_7MpiCommERPK14gmx_multisim_tRNS0_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP6pull_tRiSS_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.k, !noalias !491

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN3gmx3AwhESt14default_deleteIS1_EED2Ev.exit, %bb.i, %bb.h, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.k ], [ %.pn24.pn32, %bb.i ], [ %i.h, %bb.h ], [ %.pn, %_ZNSt10unique_ptrIN3gmx3AwhESt14default_deleteIS1_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 80) #25, !noalias !491
  br label %common.resume

_ZSt11make_uniqueIN3gmx3AwhEJRP8_IO_FILERK10t_inputrecRKNS0_7MpiCommERPK14gmx_multisim_tRNS0_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP6pull_tRiSS_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.j
  store ptr %i.o, ptr %0, align 8, !tbaa !492, !alias.scope !491
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !124
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %6, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZSt11make_uniqueIN3gmx3AwhEJRP8_IO_FILERK10t_inputrecRKNS0_7MpiCommERPK14gmx_multisim_tRNS0_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP6pull_tRiSS_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !235
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.x = phi ptr [ %i.w, %bb.m ], [ null, %bb.l ]
  invoke void @_ZN3gmx3Awh23restoreStateFromHistoryEPKNS_10AwhHistoryE(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef %i.x)
          to label %bb.af unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx3AwhESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %_ZSt11make_uniqueIN3gmx3AwhEJRP8_IO_FILERK10t_inputrecRKNS0_7MpiCommERPK14gmx_multisim_tRNS0_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP6pull_tRiSS_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  br i1 %i.u, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZNK3gmx3Awh20initHistoryFromStateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.270") align 8 %13, ptr noundef nonnull align 8 dereferenceable(80) %i.o)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 768
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 776
  %i.ac = load <2 x ptr>, ptr %13, align 16, !tbaa !62
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !228 ; 8 uses
  store <2 x ptr> %i.ac, ptr %i.z, align 8, !tbaa !62
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN3gmx10AwhHistoryEEaSEOS2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ae, align 8, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !232
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !103
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !483
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !103
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !483
  br label %_ZNSt10shared_ptrIN3gmx10AwhHistoryEEaSEOS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.v ], [ %i.ar, %bb.w ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.x, label %_ZNSt10shared_ptrIN3gmx10AwhHistoryEEaSEOS2_.exit, !prof !18

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26
  br label %_ZNSt10shared_ptrIN3gmx10AwhHistoryEEaSEOS2_.exit

_ZNSt10shared_ptrIN3gmx10AwhHistoryEEaSEOS2_.exit: ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.x
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !228 ; 8 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN3gmx10AwhHistoryEEaSEOS2_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.au, align 8, !tbaa !231
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !232
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !103
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !inline_history !484
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26, !inline_history !484
  br label %_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.ax, %bb.ab ], [ %i.bh, %bb.ac ]
  %i.bi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bi, label %bb.ad, label %_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #26
  br label %_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN3gmx10AwhHistoryEEaSEOS2_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.af

bb.ae:                                            ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %_ZNSt10unique_ptrIN3gmx3AwhESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx3AwhESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ae, %bb.o
  %.pn = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.bj, %bb.ae ]
  call void @_ZN3gmx3AwhD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.o) #26
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 80) #25
  br label %common.resume

bb.af:                                            ; preds = %bb.n, %_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %bb.b
  ret void

bb.ag:                                            ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !231
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !232
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !493
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !493
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !22
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { cold noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { noreturn }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = distinct !{!3, !29}
!4 = !{i32 7, !"openmp", i32 51}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!15, !14, i64 16}
!20 = !{!14, !14, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!10, !10, i64 0}
!23 = !{!"p1 _ZTSN3gmx9DimParamsE", !13, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN3gmx9DimParamsESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 8}
!26 = !{!24, !23, i64 0}
!27 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN3gmx9DimParams13PullDimParamsENS3_12FepDimParamsEEEE", !9, i64 0, !9, i64 24}
!28 = !{!27, !9, i64 24}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!24, !23, i64 16}
!31 = !{!23, !23, i64 0}
!32 = !{!"double", !9, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"long", !9, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTSN3gmx13AwhTargetTypeE", !9, i64 0}
!37 = !{!"bool", !9, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!9, !9, i64 0}
!40 = !{!"p1 _ZTSN3gmx10PointStateE", !13, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN3gmx10PointStateESaIS1_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 16}
!43 = !{!"p1 double", !13, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!45 = !{!44, !43, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!47 = !{!46, !43, i64 16}
!48 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !13, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!49, !48, i64 16}
!51 = !{!"p1 _ZTSN3gmx9GridPointE", !13, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN3gmx9GridPointESaIS1_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"p1 _ZTSN3gmx8GridAxisE", !13, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN3gmx8GridAxisESaIS1_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSN3gmx10CoordStateE", !9, i64 0, !10, i64 32, !10, i64 36}
!56 = !{!"p1 _ZTSN3gmx11BiasSharingE", !13, i64 0}
!57 = !{!"p1 _ZTSN3gmx15CorrelationGridE", !13, i64 0}
!58 = !{!"p1 _ZTSN3gmx10BiasWriterE", !13, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !43, i64 0, !43, i64 8, !43, i64 16}
!60 = !{i8 0, i8 2}
!61 = !{}
!62 = !{!13, !13, i64 0}
!63 = !{!57, !57, i64 0}
!64 = !{!58, !58, i64 0}
!65 = !{!44, !43, i64 0}
!66 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!67 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!68 = !{!"_ZTSSt18_Rb_tree_node_base", !66, i64 0, !67, i64 8, !67, i64 16, !67, i64 24}
!69 = !{!"p1 float", !13, i64 0}
!70 = !{!41, !40, i64 0}
!71 = !{!54, !53, i64 0}
!72 = !{!54, !53, i64 16}
!73 = !{!52, !51, i64 0}
!74 = !{!52, !51, i64 8}
!75 = !{!52, !51, i64 16}
!76 = !{!"p1 _ZTSN3gmx13AwhBiasParamsE", !13, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseIN3gmx13AwhBiasParamsESaIS1_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"p1 _ZTSN3gmx19BiasCoupledToSystemE", !13, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE17_Vector_impl_dataE", !78, i64 0, !78, i64 8, !78, i64 16}
!80 = !{!"_ZTSNSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE12_Vector_implE", !79, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIN3gmx19BiasCoupledToSystemESaIS1_EE", !80, i64 0}
!82 = !{!"_ZTSSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE", !81, i64 0}
!83 = !{!"p1 _ZTSN3gmx7MpiCommE", !13, i64 0}
!84 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx11BiasSharingELb0EE", !56, i64 0}
!85 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx11BiasSharingESt14default_deleteIS1_EEE", !84, i64 0}
!86 = !{!"_ZTSSt5tupleIJPN3gmx11BiasSharingESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx11BiasSharingESt14default_deleteIS1_EE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx11BiasSharingESt14default_deleteIS1_ELb1ELb1EE", !87, i64 0}
!89 = !{!"_ZTSSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EE", !88, i64 0}
!90 = !{!"p1 _ZTS6pull_t", !13, i64 0}
!91 = !{!"_ZTSN3gmx3AwhE", !82, i64 0, !34, i64 24, !10, i64 32, !83, i64 40, !89, i64 48, !90, i64 56, !32, i64 64, !10, i64 72, !10, i64 76}
!92 = !{!91, !34, i64 24}
!93 = !{!91, !10, i64 32}
!94 = !{!91, !90, i64 56}
!95 = !{!91, !32, i64 64}
!96 = !{!91, !10, i64 76}
!97 = !{!77, !76, i64 0}
!98 = !{!77, !76, i64 8}
!99 = !{!"p1 _ZTS13pull_params_t", !13, i64 0}
!100 = !{!"p1 _ZTSN3gmx12AwhDimParamsE", !13, i64 0}
!101 = !{!"_ZTSNSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE17_Vector_impl_dataE", !100, i64 0, !100, i64 8, !100, i64 16}
!102 = !{!"vtable pointer", !8, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!"p1 omnipotent char", !13, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"p1 _ZTS10tmpi_comm_", !13, i64 0}
!107 = !{!56, !56, i64 0}
!108 = !{!101, !100, i64 0}
!109 = !{!101, !100, i64 8}
!110 = !{!"_ZTSN3gmx25AwhCoordinateProviderTypeE", !9, i64 0}
!111 = !{!"_ZTSN3gmx12AwhDimParamsE", !110, i64 0, !10, i64 4, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56}
!112 = !{!111, !110, i64 0}
!113 = !{!111, !10, i64 4}
!114 = !{!91, !83, i64 40}
!115 = !{i64 8}
!116 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !13, i64 0}
!117 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !116, i64 0}
!118 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !117, i64 0}
!119 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !118, i64 0}
!120 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !119, i64 0}
!121 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !120, i64 0}
!122 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !121, i64 0}
!123 = !{!"_ZTSN3gmx7MpiCommE", !106, i64 0, !10, i64 8, !10, i64 12, !122, i64 16}
!124 = !{!123, !10, i64 12}
!125 = !{!"_ZTS20IntegrationAlgorithm", !9, i64 0}
!126 = !{!"_ZTS12CutoffScheme", !9, i64 0}
!127 = !{!"_ZTS19ComRemovalAlgorithm", !9, i64 0}
!128 = !{!"p1 _ZTSN3gmx8MtsLevelE", !13, i64 0}
!129 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !128, i64 0, !128, i64 8, !128, i64 16}
!130 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !129, i64 0}
!131 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !130, i64 0}
!132 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !131, i64 0}
!133 = !{!"float", !9, i64 0}
!134 = !{!"_ZTS13EwaldGeometry", !9, i64 0}
!135 = !{!"_ZTS12LongRangeVdW", !9, i64 0}
!136 = !{!"_ZTS7PbcType", !9, i64 0}
!137 = !{!"_ZTS26EnsembleTemperatureSetting", !9, i64 0}
!138 = !{!"_ZTS19TemperatureCoupling", !9, i64 0}
!139 = !{!"_ZTS16PressureCoupling", !9, i64 0}
!140 = !{!"_ZTS20PressureCouplingType", !9, i64 0}
!141 = !{!"_ZTS15RefCoordScaling", !9, i64 0}
!142 = !{!"_ZTS23PressureCouplingOptions", !139, i64 0, !140, i64 4, !10, i64 8, !133, i64 12, !9, i64 16, !9, i64 52, !141, i64 88}
!143 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !13, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !143, i64 0, !143, i64 8, !143, i64 16}
!145 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !144, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !145, i64 0}
!147 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !146, i64 0}
!148 = !{!"_ZTS22CoulombInteractionType", !9, i64 0}
!149 = !{!"_ZTS20InteractionModifiers", !9, i64 0}
!150 = !{!"_ZTS15VanDerWaalsType", !9, i64 0}
!151 = !{!"_ZTS24DispersionCorrectionType", !9, i64 0}
!152 = !{!"_ZTS26FreeEnergyPerturbationType", !9, i64 0}
!153 = !{!"p1 _ZTS8t_lambda", !13, i64 0}
!154 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !153, i64 0}
!155 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !154, i64 0}
!156 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !155, i64 0}
!157 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !156, i64 0}
!158 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !157, i64 0}
!159 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !158, i64 0}
!160 = !{!"p1 _ZTS9t_simtemp", !13, i64 0}
!161 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !160, i64 0}
!162 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !161, i64 0}
!163 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !162, i64 0}
!164 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !163, i64 0}
!165 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !164, i64 0}
!166 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !165, i64 0}
!167 = !{!"p1 _ZTS10t_expanded", !13, i64 0}
!168 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !167, i64 0}
!169 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !168, i64 0}
!170 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !169, i64 0}
!171 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !170, i64 0}
!172 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !171, i64 0}
!173 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !172, i64 0}
!174 = !{!"_ZTS27DistanceRestraintRefinement", !9, i64 0}
!175 = !{!"_ZTS26DistanceRestraintWeighting", !9, i64 0}
!176 = !{!"_ZTS19ConstraintAlgorithm", !9, i64 0}
!177 = !{!"_ZTS8WallType", !9, i64 0}
!178 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !99, i64 0}
!179 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !178, i64 0}
!180 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !179, i64 0}
!181 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !180, i64 0}
!182 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !181, i64 0}
!183 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !182, i64 0}
!184 = !{!"p1 _ZTSN3gmx9AwhParamsE", !13, i64 0}
!185 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !184, i64 0}
!186 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !185, i64 0}
!187 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !186, i64 0}
!188 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !187, i64 0}
!189 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !188, i64 0}
!190 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !189, i64 0}
!191 = !{!"p1 _ZTS5t_rot", !13, i64 0}
!192 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !191, i64 0}
!193 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !192, i64 0}
!194 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !193, i64 0}
!195 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !194, i64 0}
!196 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !195, i64 0}
!197 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !196, i64 0}
!198 = !{!"_ZTS8SwapType", !9, i64 0}
!199 = !{!"p1 _ZTS12t_swapcoords", !13, i64 0}
!200 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !199, i64 0}
!201 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !200, i64 0}
!202 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !201, i64 0}
!203 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !202, i64 0}
!204 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !203, i64 0}
!205 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !204, i64 0}
!206 = !{!"p1 _ZTS5t_IMD", !13, i64 0}
!207 = !{!"any p2 pointer", !13, i64 0}
!208 = !{!"p2 float", !207, i64 0}
!209 = !{!"_ZTS9t_grpopts", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !69, i64 16, !69, i64 24, !13, i64 32, !14, i64 40, !208, i64 48, !208, i64 56, !69, i64 64, !147, i64 72, !14, i64 96, !14, i64 104, !10, i64 112}
!210 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !13, i64 0}
!211 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !210, i64 0}
!212 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !211, i64 0}
!213 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !212, i64 0}
!214 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !213, i64 0}
!215 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !214, i64 0}
!216 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !215, i64 0}
!217 = !{!"_ZTS10t_inputrec", !10, i64 0, !125, i64 4, !34, i64 8, !10, i64 16, !34, i64 24, !10, i64 32, !126, i64 36, !10, i64 40, !10, i64 44, !127, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !32, i64 80, !32, i64 88, !37, i64 96, !132, i64 104, !133, i64 128, !133, i64 132, !133, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !10, i64 152, !133, i64 156, !133, i64 160, !134, i64 164, !133, i64 168, !135, i64 172, !136, i64 176, !37, i64 180, !37, i64 181, !137, i64 184, !133, i64 188, !138, i64 192, !10, i64 196, !37, i64 200, !142, i64 204, !147, i64 296, !147, i64 320, !10, i64 344, !133, i64 348, !133, i64 352, !133, i64 356, !133, i64 360, !148, i64 364, !149, i64 368, !133, i64 372, !133, i64 376, !133, i64 380, !133, i64 384, !37, i64 388, !150, i64 392, !149, i64 396, !133, i64 400, !133, i64 404, !151, i64 408, !133, i64 412, !133, i64 416, !152, i64 420, !159, i64 424, !37, i64 432, !166, i64 440, !37, i64 448, !173, i64 456, !174, i64 464, !133, i64 468, !175, i64 472, !37, i64 476, !10, i64 480, !133, i64 484, !133, i64 488, !133, i64 492, !10, i64 496, !133, i64 500, !133, i64 504, !10, i64 508, !133, i64 512, !10, i64 516, !10, i64 520, !176, i64 524, !10, i64 528, !133, i64 532, !10, i64 536, !37, i64 540, !133, i64 544, !34, i64 552, !10, i64 560, !177, i64 564, !133, i64 568, !9, i64 572, !9, i64 580, !133, i64 588, !37, i64 592, !183, i64 600, !37, i64 608, !190, i64 616, !37, i64 624, !197, i64 632, !198, i64 640, !205, i64 648, !37, i64 656, !206, i64 664, !133, i64 672, !9, i64 676, !10, i64 712, !10, i64 716, !10, i64 720, !10, i64 724, !133, i64 728, !133, i64 732, !133, i64 736, !133, i64 740, !209, i64 744, !37, i64 864, !37, i64 865, !37, i64 866, !37, i64 867, !210, i64 872, !216, i64 880}
!218 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !104, i64 0}
!219 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !218, i64 0, !34, i64 8, !9, i64 16}
!220 = !{!219, !104, i64 0}
!221 = !{!219, !34, i64 8}
!222 = !{!79, !78, i64 8}
!223 = !{!79, !78, i64 16}
!224 = !{!78, !78, i64 0}
!225 = !{!79, !78, i64 0}
!226 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!227 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !226, i64 0}
!228 = !{!227, !226, i64 0}
!229 = !{!218, !104, i64 0}
!230 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!231 = !{!230, !10, i64 8}
!232 = !{!230, !10, i64 12}
!233 = !{!"p1 _ZTSN3gmx10AwhHistoryE", !13, i64 0}
!234 = !{!"_ZTSSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE", !233, i64 0, !227, i64 8}
!235 = !{!234, !233, i64 0}
!236 = !{!"p1 _ZTSN3gmx14AwhBiasHistoryE", !13, i64 0}
!237 = !{!"_ZTSNSt12_Vector_baseIN3gmx14AwhBiasHistoryESaIS1_EE17_Vector_impl_dataE", !236, i64 0, !236, i64 8, !236, i64 16}
!238 = !{!237, !236, i64 0}
!239 = !{!237, !236, i64 8}
!240 = !{!"p1 _ZTSN3gmx27CorrelationBlockDataHistoryE", !13, i64 0}
!241 = !{!"_ZTSNSt12_Vector_baseIN3gmx27CorrelationBlockDataHistoryESaIS1_EE17_Vector_impl_dataE", !240, i64 0, !240, i64 8, !240, i64 16}
!242 = !{!241, !240, i64 0}
!243 = !{!241, !240, i64 16}
!244 = !{!"p1 _ZTSN3gmx20AwhPointStateHistoryE", !13, i64 0}
!245 = !{!"_ZTSNSt12_Vector_baseIN3gmx20AwhPointStateHistoryESaIS1_EE17_Vector_impl_dataE", !244, i64 0, !244, i64 8, !244, i64 16}
!246 = !{!245, !244, i64 0}
!247 = !{!245, !244, i64 16}
!248 = !{!"_ZTSSt15_Sp_counted_ptrIPN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EE", !230, i64 0, !233, i64 16}
!249 = !{!248, !233, i64 16}
!250 = !{!237, !236, i64 16}
!251 = !{!"_ZTSNSt12_Vector_baseIN3gmx14AwhBiasHistoryESaIS1_EE12_Vector_implE", !237, i64 0}
!252 = !{!"_ZTSSt12_Vector_baseIN3gmx14AwhBiasHistoryESaIS1_EE", !251, i64 0}
!253 = !{!"_ZTSSt6vectorIN3gmx14AwhBiasHistoryESaIS1_EE", !252, i64 0}
!254 = !{!"_ZTSN3gmx10AwhHistoryE", !253, i64 0, !32, i64 24}
!255 = !{!254, !32, i64 24}
!256 = distinct !{!256, !29}
!257 = !{!36, !36, i64 0}
!258 = !{i64 0, i64 8, !33, i64 8, i64 8, !35, i64 16, i64 4, !22, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 4, !257, i64 44, i64 1, !38, i64 48, i64 8, !33, i64 56, i64 8, !33, i64 64, i64 8, !33, i64 72, i64 1, !38, i64 76, i64 4, !22, i64 80, i64 8, !33, i64 88, i64 8, !33, i64 96, i64 8, !33, i64 104, i64 8, !33, i64 112, i64 16, !39, i64 128, i64 1, !38, i64 132, i64 4, !22, i64 136, i64 1, !38}
!259 = !{i64 0, i64 32, !39, i64 32, i64 4, !22, i64 36, i64 4, !22}
!260 = !{!40, !40, i64 0}
!261 = !{!43, !43, i64 0}
!262 = !{!48, !48, i64 0}
!263 = !{!"_ZTSNSt12_Vector_baseIN3gmx9DimParamsESaIS1_EE12_Vector_implE", !24, i64 0}
!264 = !{!"_ZTSSt12_Vector_baseIN3gmx9DimParamsESaIS1_EE", !263, i64 0}
!265 = !{!"_ZTSSt6vectorIN3gmx9DimParamsESaIS1_EE", !264, i64 0}
!266 = !{!"_ZTSNSt12_Vector_baseIN3gmx9GridPointESaIS1_EE12_Vector_implE", !52, i64 0}
!267 = !{!"_ZTSSt12_Vector_baseIN3gmx9GridPointESaIS1_EE", !266, i64 0}
!268 = !{!"_ZTSSt6vectorIN3gmx9GridPointESaIS1_EE", !267, i64 0}
!269 = !{!"_ZTSNSt12_Vector_baseIN3gmx8GridAxisESaIS1_EE12_Vector_implE", !54, i64 0}
!270 = !{!"_ZTSSt12_Vector_baseIN3gmx8GridAxisESaIS1_EE", !269, i64 0}
!271 = !{!"_ZTSSt6vectorIN3gmx8GridAxisESaIS1_EE", !270, i64 0}
!272 = !{!"_ZTSN3gmx8BiasGridE", !268, i64 0, !271, i64 24}
!273 = !{!"_ZTSN3gmx10BiasParamsE", !32, i64 0, !34, i64 8, !10, i64 16, !34, i64 24, !34, i64 32, !36, i64 40, !37, i64 44, !32, i64 48, !32, i64 56, !32, i64 64, !37, i64 72, !10, i64 76, !32, i64 80, !32, i64 88, !32, i64 96, !32, i64 104, !9, i64 112, !37, i64 128, !10, i64 132, !37, i64 136}
!274 = !{!"_ZTSNSt12_Vector_baseIN3gmx10PointStateESaIS1_EE12_Vector_implE", !41, i64 0}
!275 = !{!"_ZTSSt12_Vector_baseIN3gmx10PointStateESaIS1_EE", !274, i64 0}
!276 = !{!"_ZTSSt6vectorIN3gmx10PointStateESaIS1_EE", !275, i64 0}
!277 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !44, i64 0}
!278 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !277, i64 0}
!279 = !{!"_ZTSSt6vectorIdSaIdEE", !278, i64 0}
!280 = !{!"_ZTSN3gmx13HistogramSizeE", !34, i64 0, !32, i64 8, !37, i64 16, !32, i64 24, !37, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !37, i64 64}
!281 = !{!"_ZTSNSt12_Vector_baseIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE12_Vector_implE", !46, i64 0}
!282 = !{!"_ZTSSt12_Vector_baseIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE", !281, i64 0}
!283 = !{!"_ZTSSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE", !282, i64 0}
!284 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !49, i64 0}
!285 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !284, i64 0}
!286 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !285, i64 0}
!287 = !{!"_ZTSN3gmx9BiasStateE", !55, i64 0, !276, i64 40, !279, i64 64, !280, i64 88, !9, i64 160, !9, i64 176, !56, i64 192, !283, i64 200, !286, i64 224}
!288 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !15, i64 0}
!289 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !288, i64 0}
!290 = !{!"_ZTSSt6vectorIiSaIiEE", !289, i64 0}
!291 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx15CorrelationGridELb0EE", !57, i64 0}
!292 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx15CorrelationGridESt14default_deleteIS1_EEE", !291, i64 0}
!293 = !{!"_ZTSSt5tupleIJPN3gmx15CorrelationGridESt14default_deleteIS1_EEE", !292, i64 0}
!294 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx15CorrelationGridESt14default_deleteIS1_EE", !293, i64 0}
!295 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx15CorrelationGridESt14default_deleteIS1_ELb1ELb1EE", !294, i64 0}
!296 = !{!"_ZTSSt10unique_ptrIN3gmx15CorrelationGridESt14default_deleteIS1_EE", !295, i64 0}
!297 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx10BiasWriterELb0EE", !58, i64 0}
!298 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx10BiasWriterESt14default_deleteIS1_EEE", !297, i64 0}
!299 = !{!"_ZTSSt5tupleIJPN3gmx10BiasWriterESt14default_deleteIS1_EEE", !298, i64 0}
!300 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx10BiasWriterESt14default_deleteIS1_EE", !299, i64 0}
!301 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx10BiasWriterESt14default_deleteIS1_ELb1ELb1EE", !300, i64 0}
!302 = !{!"_ZTSSt10unique_ptrIN3gmx10BiasWriterESt14default_deleteIS1_EE", !301, i64 0}
!303 = !{!"_ZTSNSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !59, i64 0}
!304 = !{!"_ZTSSt12_Vector_baseIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE", !303, i64 0}
!305 = !{!"_ZTSSt6vectorIdN3gmx9AllocatorIdNS0_23AlignedAllocationPolicyEEEE", !304, i64 0}
!306 = !{!"_ZTSN3gmx4BiasE", !265, i64 0, !272, i64 24, !273, i64 72, !287, i64 216, !290, i64 464, !37, i64 488, !279, i64 496, !296, i64 520, !302, i64 528, !305, i64 536, !279, i64 560, !10, i64 584}
!307 = !{!306, !37, i64 488}
!308 = !{!59, !43, i64 16}
!309 = !{!306, !10, i64 584}
!310 = distinct !{!310, !29}
!311 = distinct !{!311, !29}
!312 = !{!59, !43, i64 0}
!313 = !{!"_ZTSSt15_Rb_tree_header", !68, i64 0, !34, i64 32}
!314 = !{!313, !67, i64 8}
!315 = !{!"p1 _ZTSN3gmx14AwhEnergyBlockE", !13, i64 0}
!316 = !{!"_ZTSNSt12_Vector_baseIN3gmx14AwhEnergyBlockESaIS1_EE17_Vector_impl_dataE", !315, i64 0, !315, i64 8, !315, i64 16}
!317 = !{!316, !315, i64 0}
!318 = !{!316, !315, i64 8}
!319 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !69, i64 0, !69, i64 8, !69, i64 16}
!320 = !{!319, !69, i64 0}
!321 = !{!319, !69, i64 16}
!322 = !{!316, !315, i64 16}
!323 = !{!49, !48, i64 0}
!324 = !{!49, !48, i64 8}
!325 = !{!46, !43, i64 0}
!326 = distinct !{!326, !29}
!327 = !{!51, !51, i64 0}
!328 = !{!54, !53, i64 8}
!329 = !{!53, !53, i64 0}
!330 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 4, !22, i64 36, i64 4, !22, i64 40, i64 1, !38}
!331 = distinct !{!331, !29}
!332 = distinct !{!332, !29}
!333 = !{!68, !67, i64 24}
!334 = !{!68, !67, i64 16}
!335 = distinct !{!335, !29}
!336 = distinct !{!336, !29}
!337 = !{!"p1 _ZTSN3gmx17CorrelationTensorE", !13, i64 0}
!338 = !{!"_ZTSNSt12_Vector_baseIN3gmx17CorrelationTensorESaIS1_EE17_Vector_impl_dataE", !337, i64 0, !337, i64 8, !337, i64 16}
!339 = !{!338, !337, i64 0}
!340 = !{!338, !337, i64 8}
!341 = !{!"p1 _ZTSN3gmx20CorrelationBlockDataE", !13, i64 0}
!342 = !{!"_ZTSNSt12_Vector_baseIN3gmx20CorrelationBlockDataESaIS1_EE17_Vector_impl_dataE", !341, i64 0, !341, i64 8, !341, i64 16}
!343 = !{!342, !341, i64 0}
!344 = !{!342, !341, i64 8}
!345 = !{!"p1 _ZTSN3gmx20CorrelationBlockData9CoordDataE", !13, i64 0}
!346 = !{!"_ZTSNSt12_Vector_baseIN3gmx20CorrelationBlockData9CoordDataESaIS2_EE17_Vector_impl_dataE", !345, i64 0, !345, i64 8, !345, i64 16}
!347 = !{!346, !345, i64 0}
!348 = !{!346, !345, i64 16}
!349 = !{!342, !341, i64 16}
!350 = !{!338, !337, i64 16}
!351 = distinct !{!351, !29}
!352 = distinct !{!352, i1 true, !"_ZSt11make_uniqueIN3gmx11BiasSharingEJRKNS0_9AwhParamsERKNS0_7MpiCommERKP10tmpi_comm_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!353 = distinct !{!353, !352, !"_ZSt11make_uniqueIN3gmx11BiasSharingEJRKNS0_9AwhParamsERKNS0_7MpiCommERKP10tmpi_comm_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!354 = distinct !{!354, !29}
!355 = distinct !{!355, i1 true, !"_ZSt19__relocate_object_aIN3gmx9DimParamsES1_SaIS1_EEvPT_PT0_RT1_"}
!356 = distinct !{!356, !355, !"_ZSt19__relocate_object_aIN3gmx9DimParamsES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!357 = distinct !{!357, !355, !"_ZSt19__relocate_object_aIN3gmx9DimParamsES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!358 = distinct !{!358, !29}
!359 = distinct !{!359, i1 true, !"_ZSt19__relocate_object_aIN3gmx9DimParamsES1_SaIS1_EEvPT_PT0_RT1_"}
!360 = distinct !{!360, !359, !"_ZSt19__relocate_object_aIN3gmx9DimParamsES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!361 = distinct !{!361, !359, !"_ZSt19__relocate_object_aIN3gmx9DimParamsES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!362 = distinct !{!362, !29}
!363 = !{!"_ZTSNSt12_Vector_baseIN3gmx13AwhBiasParamsESaIS1_EE12_Vector_implE", !77, i64 0}
!364 = !{!"_ZTSSt12_Vector_baseIN3gmx13AwhBiasParamsESaIS1_EE", !363, i64 0}
!365 = !{!"_ZTSSt6vectorIN3gmx13AwhBiasParamsESaIS1_EE", !364, i64 0}
!366 = !{!"_ZTSN3gmx16AwhPotentialTypeE", !9, i64 0}
!367 = !{!"_ZTSN3gmx9AwhParamsE", !365, i64 0, !34, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !366, i64 44, !37, i64 48}
!368 = !{!367, !34, i64 24}
!369 = !{!367, !10, i64 32}
!370 = !{!83, !83, i64 0}
!371 = !{!84, !56, i64 0}
!372 = !{!91, !10, i64 72}
!373 = !{!99, !99, i64 0}
!374 = !{!"_ZTSNSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE12_Vector_implE", !101, i64 0}
!375 = !{!"_ZTSSt12_Vector_baseIN3gmx12AwhDimParamsESaIS1_EE", !374, i64 0}
!376 = !{!"_ZTSSt6vectorIN3gmx12AwhDimParamsESaIS1_EE", !375, i64 0}
!377 = !{!"_ZTSN3gmx22AwhHistogramGrowthTypeE", !9, i64 0}
!378 = !{!"_ZTSN3gmx13AwhBiasParamsE", !376, i64 0, !36, i64 24, !32, i64 32, !32, i64 40, !377, i64 48, !32, i64 56, !37, i64 64, !37, i64 65, !32, i64 72, !32, i64 80, !10, i64 88, !37, i64 92, !32, i64 96}
!379 = !{!378, !37, i64 65}
!380 = !{!367, !37, i64 48}
!381 = !{!106, !106, i64 0}
!382 = !{!353}
!383 = !{!378, !10, i64 88}
!384 = !{!217, !32, i64 88}
!385 = !{!"p1 _ZTS12t_pull_coord", !13, i64 0}
!386 = !{!"_ZTSNSt12_Vector_baseI12t_pull_coordSaIS0_EE17_Vector_impl_dataE", !385, i64 0, !385, i64 8, !385, i64 16}
!387 = !{!386, !385, i64 0}
!388 = !{!"_ZTS16PullingAlgorithm", !9, i64 0}
!389 = !{!"_ZTS17PullGroupGeometry", !9, i64 0}
!390 = !{!"_ZTSSt5arrayIiLm6EE", !9, i64 0}
!391 = !{!"_ZTSN3gmx11BasicVectorIiEE", !9, i64 0}
!392 = !{!"_ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!393 = !{!"_ZTS12t_pull_coord", !388, i64 0, !219, i64 8, !389, i64 40, !219, i64 48, !32, i64 80, !10, i64 88, !390, i64 92, !391, i64 116, !392, i64 128, !392, i64 140, !37, i64 152, !133, i64 156, !133, i64 160, !133, i64 164, !133, i64 168, !10, i64 172}
!394 = !{!393, !389, i64 40}
!395 = !{!217, !10, i64 0}
!396 = !{!111, !32, i64 56}
!397 = !{!111, !32, i64 32}
!398 = !{!357, !356}
!399 = !{!361, !360}
!400 = !{!41, !40, i64 8}
!401 = distinct !{!401, !29}
!402 = distinct !{!402, !29}
!403 = distinct !{null, null, null}
!404 = !{i64 0, i64 8, !105, i64 8, i64 8, !105, i64 16, i64 4, !22}
!405 = !{!"p1 _ZTSN3gmx8internal14IExceptionInfoE", !13, i64 0}
!406 = !{!405, !405, i64 0}
!407 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!408 = !{!"_ZTSSt10type_index", !407, i64 0}
!409 = !{!408, !407, i64 0}
!410 = !{!"p1 _ZTSN3gmx8internal13ExceptionDataE", !13, i64 0}
!411 = !{!"_ZTSSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EE", !410, i64 0, !227, i64 8}
!412 = !{!411, !410, i64 0}
!413 = distinct !{null, null, null}
!414 = distinct !{!414, !29}
!415 = !{!"p1 _ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!416 = !{!"_ZTSNSt12_Vector_baseINSt15__exception_ptr13exception_ptrESaIS1_EE17_Vector_impl_dataE", !415, i64 0, !415, i64 8, !415, i64 16}
!417 = !{!416, !415, i64 0}
!418 = !{!416, !415, i64 8}
!419 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !13, i64 0}
!420 = !{!419, !13, i64 0}
!421 = !{!416, !415, i64 16}
!422 = distinct !{null}
!423 = distinct !{!423, !29}
!424 = distinct !{!424, !29}
!425 = distinct !{!425, !29}
!426 = !{i64 6118460}
!427 = !{!"long long", !9, i64 0}
!428 = !{!"_ZTS8wallcc_t", !10, i64 0, !427, i64 8, !427, i64 16}
!429 = !{!428, !427, i64 16}
!430 = !{!"p1 _ZTS8wallcc_t", !13, i64 0}
!431 = !{!430, !430, i64 0}
!432 = !{!"_ZTSN3gmx16EnumerationArrayI16WallCycleCounter8wallcc_tLS1_60EEE", !9, i64 0}
!433 = !{!"_ZTSN3gmx16EnumerationArrayI19WallCycleSubCounter8wallcc_tLS1_46EEE", !9, i64 0}
!434 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!435 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !434, i64 0, !434, i64 8, !434, i64 16}
!436 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !435, i64 0}
!437 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !436, i64 0}
!438 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !437, i64 0}
!439 = !{!"p1 _ZTS9t_commrec", !13, i64 0}
!440 = !{!"_ZTSNSt12_Vector_baseI8wallcc_tSaIS0_EE17_Vector_impl_dataE", !430, i64 0, !430, i64 8, !430, i64 16}
!441 = !{!"_ZTSNSt12_Vector_baseI8wallcc_tSaIS0_EE12_Vector_implE", !440, i64 0}
!442 = !{!"_ZTSSt12_Vector_baseI8wallcc_tSaIS0_EE", !441, i64 0}
!443 = !{!"_ZTSSt6vectorI8wallcc_tSaIS0_EE", !442, i64 0}
!444 = !{!"_ZTS16WallCycleCounter", !9, i64 0}
!445 = !{!"_ZTSNSt14__array_traitsI16WallCycleCounterLm0EE5_TypeE"}
!446 = !{!"_ZTSSt5arrayI16WallCycleCounterLm0EE", !445, i64 0}
!447 = !{!"_ZTS13gmx_wallcycle", !432, i64 0, !34, i64 1440, !433, i64 1448, !438, i64 2552, !439, i64 2576, !443, i64 2584, !10, i64 2608, !444, i64 2612, !427, i64 2616, !37, i64 2624, !37, i64 2625, !446, i64 2626, !10, i64 2628, !37, i64 2632}
!448 = !{!447, !10, i64 2608}
!449 = !{!447, !444, i64 2612}
!450 = !{!428, !10, i64 0}
!451 = !{!447, !427, i64 2616}
!452 = !{!428, !427, i64 8}
!453 = !{!447, !37, i64 2624}
!454 = !{!55, !10, i64 36}
!455 = distinct !{!455, !29}
!456 = distinct !{!456, i1 true, !"_ZSt19__relocate_object_aIN3gmx14AwhBiasHistoryES1_SaIS1_EEvPT_PT0_RT1_"}
!457 = distinct !{!457, !456, !"_ZSt19__relocate_object_aIN3gmx14AwhBiasHistoryES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!458 = distinct !{!458, !456, !"_ZSt19__relocate_object_aIN3gmx14AwhBiasHistoryES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!459 = distinct !{!459, !29}
!460 = !{!457}
!461 = !{!458}
!462 = !{!244, !244, i64 0}
!463 = !{i64 0, i64 4, !22, i64 4, i64 4, !22, i64 8, i64 4, !22, i64 12, i64 1, !38, i64 13, i64 1, !38, i64 16, i64 8, !33, i64 24, i64 8, !33, i64 32, i64 8, !33, i64 40, i64 8, !35}
!464 = !{!457, !458}
!465 = !{!240, !240, i64 0}
!466 = distinct !{!466, !29}
!467 = !{!123, !10, i64 8}
!468 = !{!123, !106, i64 0}
!469 = distinct !{!469, !29}
!470 = !{!"p1 _ZTS8t_energy", !13, i64 0}
!471 = !{!"p1 _ZTS10t_enxblock", !13, i64 0}
!472 = !{!"_ZTS10t_enxframe", !32, i64 0, !34, i64 8, !34, i64 16, !32, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !470, i64 48, !10, i64 56, !471, i64 64, !10, i64 72}
!473 = !{!472, !10, i64 56}
!474 = !{!472, !471, i64 64}
!475 = !{!"p1 _ZTS13t_enxsubblock", !13, i64 0}
!476 = !{!"_ZTS10t_enxblock", !10, i64 0, !10, i64 4, !475, i64 8, !10, i64 16}
!477 = !{!476, !10, i64 0}
!478 = !{!476, !475, i64 8}
!479 = distinct !{!479, !29}
!480 = distinct !{!480, !29}
!481 = distinct !{!481, i1 true, !"_ZSt11make_uniqueIN3gmx3AwhEJRP8_IO_FILERK10t_inputrecRKNS0_7MpiCommERPK14gmx_multisim_tRNS0_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP6pull_tRiSS_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!482 = distinct !{!482, !481, !"_ZSt11make_uniqueIN3gmx3AwhEJRP8_IO_FILERK10t_inputrecRKNS0_7MpiCommERPK14gmx_multisim_tRNS0_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERP6pull_tRiSS_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!483 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!484 = distinct !{ptr @_ZNSt12__shared_ptrIN3gmx10AwhHistoryELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!485 = !{!217, !37, i64 608}
!486 = !{!"p1 _ZTSN3gmx3AwhE", !13, i64 0}
!487 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx3AwhELb0EE", !486, i64 0}
!488 = !{!487, !486, i64 0}
!489 = !{!184, !184, i64 0}
!490 = !{!153, !153, i64 0}
!491 = !{!482}
!492 = !{!486, !486, i64 0}
!493 = distinct !{null, null}
end_hunk_4
