inline.NumInlined: 40819
inline.NumDeleted: 11673
begin_hunk_0_@_ZN6duckdb15DatabaseManager11GetDatabaseERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.am:                                            ; preds = %bb.ak
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i17 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i17, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

bb.ao:                                            ; preds = %bb.am
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i19 = phi i32 [ %i.cl, %bb.an ], [ %i.cv, %bb.ao ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i19, 1
  br i1 %i.cw, label %bb.ap, label %_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EED2Ev.exit20, !prof !108

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #28
  br label %_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EED2Ev.exit20

_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EED2Ev.exit20: ; preds = %bb.aj, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i18, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cx = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #28 ; 0 uses
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ah, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.at, %bb.s ], [ %i.cd, %bb.ah ], [ %i.as, %bb.r ]
  call void @_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.cy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #28 ; 0 uses
  resume { ptr, i32 } %.pn

bb.ar:                                            ; preds = %bb.a, %_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EED2Ev.exit20
  %.sroa.021.1 = phi ptr [ %.sroa.021.0, %_ZN6duckdb10shared_ptrINS_16AttachedDatabaseELb1EED2Ev.exit20 ], [ %i.b, %bb.a ]
  ret ptr %.sroa.021.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21InvalidInputExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.2257", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !1223
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !101, !noalias !1223 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104, !noalias !1223 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #40
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !101, !noalias !1223
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #40
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1223
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1223
  invoke void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !62     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_S7_DpT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.2257", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1226
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !101, !noalias !1226 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104, !noalias !1226 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #40
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !101, !noalias !1226
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #40
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1226
  resume { ptr, i32 } %i.j

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1226
  ret void
}

declare void @_ZN6duckdb21StatementTypeToStringB5cxx11ENS_13StatementTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #1

declare void @_ZN6duckdb15MetaTransaction14ModifyDatabaseERNS_16AttachedDatabaseENS_24DatabaseModificationTypeE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(408), i64) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13ClientContext32PendingPreparedStatementInternalERNS_17ClientContextLockENS_10shared_ptrINS_21PreparedStatementDataELb1EEERKNS_22PendingQueryParametersE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1509") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(10) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.346", align 16 ; 11 uses
  %6 = alloca %"class.std::function", align 16    ; 14 uses
  %7 = alloca %"class.duckdb::unique_ptr.1040", align 8 ; 5 uses
  %8 = alloca %"class.std::function", align 16    ; 15 uses
  %9 = alloca %"class.std::function", align 8     ; 18 uses
  %10 = alloca %"class.duckdb::unique_ptr.1049", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %11 = alloca %"class.std::function.346", align 16 ; 14 uses
  %12 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %13 = alloca %"class.duckdb::shared_ptr.255", align 8 ; 7 uses
  %i.c = tail call noundef nonnull align 8 dereferenceable(266) ptr @_ZNK6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %3) ; 7 uses
  tail call void @_ZN6duckdb31BindPreparedStatementParametersERNS_21PreparedStatementDataERKNS_22PendingQueryParametersE(ptr noundef nonnull align 8 dereferenceable(266) %i.c, ptr noundef nonnull align 8 dereferenceable(10) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.d = tail call noalias noundef nonnull dereferenceable(424) ptr @_Znwm(i64 noundef 424) #41, !noalias !1229 ; 4 uses
  invoke void @_ZN6duckdb8ExecutorC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(424) %i.d, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %_ZN6duckdb9make_uniqINS_8ExecutorEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1229

common.resume:                                    ; preds = %bb.p, %_ZNSt14_Function_baseD2Ev.exit66, %_ZNSt14_Function_baseD2Ev.exit47, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.bh, %bb.p ], [ %.pn31.pn.pn.pn, %_ZNSt14_Function_baseD2Ev.exit66 ], [ %.pn27, %_ZNSt14_Function_baseD2Ev.exit47 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #40, !noalias !1229
  br label %common.resume

_ZN6duckdb9make_uniqINS_8ExecutorEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %7, align 8, !tbaa !957, !alias.scope !1229
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 6 uses
  %i.g = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ActiveQueryContextESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_8ExecutorEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !957  ; 3 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !957
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_8ExecutorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_8ExecutorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.c
  tail call void @_ZN6duckdb8ExecutorD1Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.i) #28
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #40
  br label %_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_8ExecutorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.j = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_18ActiveQueryContextESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = tail call noundef nonnull align 8 dereferenceable(424) ptr @_ZNK6duckdb10unique_ptrINS_8ExecutorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.n = load i8, ptr %i.m, align 8, !tbaa !1232, !range !262, !noundef !51
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 177
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1233, !range !262, !noundef !51
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !287  ; 2 uses
  %.not.i.i.not = icmp eq ptr %i.t, null
  br i1 %.not.i.i.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %i.w = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.u, i32 noundef 2)
          to label %bb.j unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !287  ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.y, null
  br i1 %.not.i.i38, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %.body unwind label %bb.i      ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #42
  unreachable

.thread:                                          ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ae, align 8
  store ptr @_ZN6duckdb11ProgressBar25DefaultProgressBarDisplayEv, ptr %9, align 8, !tbaa !246
  store ptr @_ZNSt17_Function_handlerIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEPS6_E9_M_invokeERKSt9_Any_data, ptr %i.ad, align 8, !tbaa !1234
  store ptr @_ZNSt17_Function_handlerIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, ptr %i.ac, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1234 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !1234
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !287 ; 3 uses
  store ptr %i.al, ptr %i.v, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.ao = phi ptr [ %i.ah, %.thread ], [ %i.an, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.af, %.thread ], [ %i.am, %bb.j ]
  %i.aq = phi ptr [ @_ZNSt17_Function_handlerIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEPS6_E9_M_invokeERKSt9_Any_data, %.thread ], [ %i.ak, %bb.j ]
  %i.ar = phi ptr [ @_ZNSt17_Function_handlerIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEPS6_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation, %.thread ], [ %i.al, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 16, i1 false), !tbaa.struct !1235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i

_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i: ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %i.ao, %bb.k ], [ %i.an, %bb.j ]
  %i.at = phi ptr [ %i.ap, %bb.k ], [ %i.am, %bb.j ]
  %i.au = phi ptr [ %i.aq, %bb.k ], [ %i.ak, %bb.j ]
  %i.av = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %8, i64 16, i1 false), !tbaa.struct !1235
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %8, align 16, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !246 ; 3 uses
  store ptr %i.ay, ptr %i.aw, align 16, !tbaa !246
  store ptr %i.av, ptr %i.ax, align 16, !tbaa !246
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !246
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !246
  store ptr %i.au, ptr %i.az, align 8, !tbaa !246
  %.not.i.i39 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i39, label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEaSEOS7_.exit.thread, label %bb.l

_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEaSEOS7_.exit.thread: ; preds = %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.l:                                             ; preds = %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2EOS7_.exit.i
  %i.bb = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEaSEOS7_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #42
  unreachable

_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEaSEOS7_.exit: ; preds = %bb.l
  %.pre = load ptr, ptr %i.as, align 8, !tbaa !287 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.not.i41 = icmp eq ptr %.pre, null
  br i1 %.not.i41, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEaSEOS7_.exit
  %i.be = invoke noundef zeroext i1 %.pre(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEaSEOS7_.exit.thread, %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEaSEOS7_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.q

bb.p:                                             ; preds = %_ZN6duckdb9make_uniqINS_8ExecutorEJRNS_13ClientContextEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %common.resume

.body:                                            ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.af

bb.q:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !1236
  %i.bk = invoke noundef i64 @_ZN6duckdb15NumericCastImplImiLb0EE7ConvertEi(i32 noundef %i.bj)
          to label %_ZN6duckdb11NumericCastImivEET_T0_.exit unwind label %bb.ab

_ZN6duckdb11NumericCastImivEET_T0_.exit:          ; preds = %bb.q
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !67
  invoke void @_ZN6duckdb9make_uniqINS_11ProgressBarEJRNS_8ExecutorEmRSt8functionIFNS_10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS6_ELb1EEEvEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.1049") align 8 %10, ptr noundef nonnull align 8 dereferenceable(424) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.r unwind label %bb.ab

bb.r:                                             ; preds = %_ZN6duckdb11NumericCastImivEET_T0_.exit
  %i.bl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ActiveQueryContextESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.s unwind label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 2 uses
  %i.bn = load ptr, ptr %10, align 8, !tbaa !959
  store ptr null, ptr %10, align 8, !tbaa !959
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !959 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !959
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i42, label %_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !961 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bq) #28, !inline_history !1237
  br label %_ZN6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #40
  %.pr68 = load ptr, ptr %10, align 8, !tbaa !959 ; 3 uses
  %.not.i43 = icmp eq ptr %.pr68, null
  br i1 %.not.i43, label %_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.pr68, i64 64
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !961 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i.i: ; preds = %bb.u
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #28, !inline_history !1238
  br label %_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i.i, %bb.u
  call void @_ZdlPv(ptr noundef nonnull %.pr68) #40
  br label %_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.s, %_ZN6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.bz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ActiveQueryContextESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.v unwind label %bb.ae

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.cb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ca)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN6duckdb11ProgressBar5StartEv(ptr noundef nonnull align 8 dereferenceable(74) %i.cb)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke void @_ZN6duckdb13QueryProgress7RestartEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !287 ; 2 uses
  %.not.i44 = icmp eq ptr %i.ce, null
  br i1 %.not.i44, label %_ZNSt14_Function_baseD2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit45 unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit45:                 ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ai

bb.ab:                                            ; preds = %bb.q, %_ZN6duckdb11NumericCastImivEET_T0_.exit
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.ac ], [ %i.ci, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.af

bb.ae:                                            ; preds = %bb.x, %bb.w, %bb.v, %_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev.exit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.body
  %.pn27 = phi { ptr, i32 } [ %i.ck, %bb.ae ], [ %.pn, %bb.ad ], [ %i.x, %.body ]
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.cm = load ptr, ptr %i.cl, align 16, !tbaa !287 ; 2 uses
  %.not.i46 = icmp eq ptr %i.cm, null
  br i1 %.not.i46, label %_ZNSt14_Function_baseD2Ev.exit47, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit47 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit47:                 ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

bb.ai:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit45, %_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !1239
  %i.cs = icmp eq i8 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 185
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = icmp eq i8 %i.cu, 1
  %narrow = select i1 %i.cs, i1 %i.cv, i1 false   ; 2 uses
  %i.cw = zext i1 %narrow to i8                   ; 2 uses
  store i8 %i.cw, ptr %i.b, align 1, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cz, align 8
  store ptr @_ZN6duckdb23PhysicalResultCollector18GetResultCollectorERNS_13ClientContextERNS_21PreparedStatementDataE, ptr %11, align 16, !tbaa !246
  store ptr @_ZNSt17_Function_handlerIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEPS7_E9_M_invokeERKSt9_Any_dataS4_S6_, ptr %i.cy, align 8, !tbaa !1242
  store ptr @_ZNSt17_Function_handlerIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.cx, align 16, !tbaa !287
  br i1 %narrow, label %.thread95, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !287 ; 2 uses
  %.not.i.i48.not = icmp eq ptr %i.db, null
  br i1 %.not.i.i48.not, label %.thread95, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 328
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.de = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dc, i32 noundef 2)
          to label %_ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEC2ERKS8_.exit.i unwind label %bb.al ; 0 uses

bb.al:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %i.dd, align 16, !tbaa !287 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %.body53, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %.body53 unwind label %bb.an   ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #42
  unreachable

_ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEC2ERKS8_.exit.i: ; preds = %bb.ak
  %.sroa.0.i.i.i49.sroa.0.0.copyload = load <2 x i64>, ptr %5, align 16, !tbaa !93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %11, i64 16, i1 false), !tbaa.struct !1235
  store <2 x i64> %.sroa.0.i.i.i49.sroa.0.0.copyload, ptr %11, align 16, !tbaa !93
  %i.dk = load <2 x ptr>, ptr %i.cx, align 16, !tbaa !246
  %i.dl = load ptr, ptr %i.cx, align 16, !tbaa !246 ; 2 uses
  store <2 x ptr> %i.dk, ptr %i.dd, align 16, !tbaa !246
  %i.dm = load <2 x ptr>, ptr %i.da, align 8, !tbaa !246
  %i.dn = load ptr, ptr %i.da, align 8, !tbaa !287
  store <2 x ptr> %i.dm, ptr %i.cx, align 16, !tbaa !246
  %.not.i.i51 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i51, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEC2ERKS8_.exit.i
  %i.do = invoke noundef zeroext i1 %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %._ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEaSERKS8_.exit_crit_edge unwind label %bb.ap ; 0 uses

._ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEaSERKS8_.exit_crit_edge: ; preds = %bb.ao
  %.pre71.pre = load ptr, ptr %i.cx, align 16, !tbaa !287
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #42
  unreachable

.thread95:                                        ; preds = %bb.aj, %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store i8 %i.cw, ptr %i.dr, align 8, !tbaa !1243
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !1244
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 265
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !1245
  br label %bb.as

bb.aq:                                            ; preds = %_ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEC2ERKS8_.exit.i, %._ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEaSERKS8_.exit_crit_edge
  %.pre71 = phi ptr [ %.pre71.pre, %._ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEaSERKS8_.exit_crit_edge ], [ %i.dn, %_ZNSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEC2ERKS8_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pre70 = load i8, ptr %i.b, align 1, !tbaa !828, !range !262
  %i.dv = icmp eq ptr %.pre71, null
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store i8 %.pre70, ptr %i.dw, align 8, !tbaa !1243
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !1244
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 265
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !1245
  br i1 %i.dv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt25__throw_bad_function_callv() #43
          to label %.noexc unwind label %bb.bq

.noexc:                                           ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %.thread95, %bb.aq
  %i.ea = load ptr, ptr %i.cy, align 8, !tbaa !1242
  %i.eb = invoke noundef nonnull align 8 dereferenceable(136) ptr %i.ea(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(266) %i.c)
          to label %_ZNKSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEclES4_S6_.exit unwind label %bb.bq, !inline_history !1246

_ZNKSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEclES4_S6_.exit: ; preds = %bb.as
  invoke void @_ZN6duckdb8Executor10InitializeERNS_16PhysicalOperatorE(ptr noundef nonnull align 8 dereferenceable(424) %i.l, ptr noundef nonnull align 8 dereferenceable(136) %i.eb)
          to label %bb.at unwind label %bb.bq

bb.at:                                            ; preds = %_ZNKSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEclES4_S6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN6duckdb8Executor8GetTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector") align 8 %12, ptr noundef nonnull align 8 dereferenceable(424) %i.l)
          to label %bb.au unwind label %bb.br

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN6duckdb23enable_shared_from_thisINS_13ClientContextEE16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.255") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.av unwind label %bb.bs

bb.av:                                            ; preds = %bb.au
  %i.ec = invoke noundef nonnull align 8 dereferenceable(266) ptr @_ZNK6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.aw unwind label %bb.bt

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN6duckdb9make_uniqINS_18PendingQueryResultEJNS_10shared_ptrINS_13ClientContextELb1EEERNS_21PreparedStatementDataENS_6vectorINS_11LogicalTypeELb1ESaIS8_EEERKbEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1509") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(266) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.ax unwind label %bb.bt

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !129 ; 8 uses
  %.not.i.i.i57 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i57, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 4 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  %i.ei = trunc i64 %i.eg to i32                  ; 2 uses
  br i1 %i.eh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.ef, align 8, !tbaa !130
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ej, align 4, !tbaa !132
  %i.ek = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #28, !inline_history !351
  %i.en = load ptr, ptr %i.ee, align 8, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #28, !inline_history !351
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.eq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i58 = icmp eq i8 %i.eq, 0
  br i1 %.not.i.i.i.i58, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.er = add nsw i32 %i.ei, -1
  store i32 %i.er, ptr %i.ef, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.es = atomicrmw volatile add ptr %i.ef, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i = phi i32 [ %i.ei, %bb.bb ], [ %i.es, %bb.bc ]
  %i.et = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.et, label %bb.bd, label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit, !prof !108

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #28
  br label %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit: ; preds = %bb.ax, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.eu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ActiveQueryContextESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.be unwind label %bb.bv     ; 2 uses

bb.be:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ex = load <2 x ptr>, ptr %3, align 8, !tbaa !246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !129 ; 8 uses
  store <2 x ptr> %i.ex, ptr %i.ev, align 8, !tbaa !246
  %.not.i.i.i.i59 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i59, label %_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEaSEOS2_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 4 uses
  %i.fa = load atomic i64, ptr %i.ez acquire, align 8 ; 2 uses
  %i.fb = icmp eq i64 %i.fa, 4294967297
  %i.fc = trunc i64 %i.fa to i32                  ; 2 uses
  br i1 %i.fb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.ez, align 8, !tbaa !130
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  store i32 0, ptr %i.fd, align 4, !tbaa !132
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !7
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28, !inline_history !1208
  %i.fh = load ptr, ptr %i.ey, align 8, !tbaa !7
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28, !inline_history !1208
  br label %_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEaSEOS2_.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !93
  %.not.i.i.i.i.i60 = icmp eq i8 %i.fk, 0
  br i1 %.not.i.i.i.i.i60, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fl = add nsw i32 %i.fc, -1
  store i32 %i.fl, ptr %i.ez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.fm = atomicrmw volatile add ptr %i.ez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i = phi i32 [ %i.fc, %bb.bi ], [ %i.fm, %bb.bj ]
  %i.fn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.fn, label %bb.bk, label %_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEaSEOS2_.exit, !prof !108

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ey) #28
  br label %_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEaSEOS2_.exit: ; preds = %bb.be, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bk
  %i.fo = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ActiveQueryContextESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.bl unwind label %bb.bv

bb.bl:                                            ; preds = %_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEaSEOS2_.exit
  %i.fp = invoke noundef nonnull align 8 dereferenceable(353) ptr @_ZNK6duckdb10unique_ptrINS_18PendingQueryResultESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.bm unwind label %bb.bv

bb.bm:                                            ; preds = %bb.bl
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !1076
  %i.fr = load ptr, ptr %12, align 8, !tbaa !56   ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bm, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.fu, %.lr.ph.i.i.i ], [ %i.fr, %bb.bm ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #28
  %i.fu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.fu, %i.ft
  br i1 %.not.i.i.i61, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bm
  %i.fv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.fr, %bb.bm ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fv) #40
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.fw = load ptr, ptr %i.cx, align 16, !tbaa !287 ; 2 uses
  %.not.i62 = icmp eq ptr %i.fw, null
  br i1 %.not.i62, label %_ZNSt14_Function_baseD2Ev.exit63, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.fx = invoke noundef zeroext i1 %i.fw(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit63 unwind label %bb.bp ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit63:                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void

bb.bq:                                            ; preds = %bb.as, %bb.ar, %_ZNKSt8functionIFRN6duckdb16PhysicalOperatorERNS0_13ClientContextERNS0_21PreparedStatementDataEEEclES4_S6_.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %.body53

bb.br:                                            ; preds = %bb.at
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bs:                                            ; preds = %bb.au
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.aw, %bb.av
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #28
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn29 = phi { ptr, i32 } [ %i.gd, %bb.bt ], [ %i.gc, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit

bb.bv:                                            ; preds = %bb.bl, %_ZN6duckdb10shared_ptrINS_21PreparedStatementDataELb1EEaSEOS2_.exit, %_ZN6duckdb10shared_ptrINS_13ClientContextELb1EED2Ev.exit
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gf = load ptr, ptr %0, align 8, !tbaa !1247  ; 3 uses
  %.not.i64 = icmp eq ptr %i.gf, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i: ; preds = %bb.bv
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !7
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(353) %i.gf) #28, !inline_history !1249
  br label %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i, %bb.bv, %bb.bu
  %.pn31 = phi { ptr, i32 } [ %.pn29, %bb.bu ], [ %i.ge, %bb.bv ], [ %i.ge, %_ZNKSt14default_deleteIN6duckdb18PendingQueryResultEEclEPS1_.exit.i ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #28
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit, %bb.br
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt10unique_ptrIN6duckdb18PendingQueryResultESt14default_deleteIS1_EED2Ev.exit ], [ %i.gb, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.body53

.body53:                                          ; preds = %bb.am, %bb.al, %bb.bq, %bb.bw
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.ga, %bb.bq ], [ %.pn31.pn, %bb.bw ], [ %i.df, %bb.al ], [ %i.df, %bb.am ]
  %i.gj = load ptr, ptr %i.cx, align 16, !tbaa !287 ; 2 uses
  %.not.i65 = icmp eq ptr %i.gj, null
  br i1 %.not.i65, label %_ZNSt14_Function_baseD2Ev.exit66, label %bb.bx

bb.bx:                                            ; preds = %.body53
  %i.gk = invoke noundef zeroext i1 %i.gj(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit66 unwind label %bb.by ; 0 uses

bb.by:                                            ; preds = %bb.bx
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit66:                 ; preds = %.body53, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb8ExecutorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !957    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb8ExecutorEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb8ExecutorEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb8ExecutorD1Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.a) #28
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #40
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb8ExecutorEEclEPS1_.exit, %bb.a
  ret void
}

declare void @_ZN6duckdb11ProgressBar25DefaultProgressBarDisplayEv(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.1518") align 8) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_11ProgressBarEJRNS_8ExecutorEmRSt8functionIFNS_10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS6_ELb1EEEvEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.1049") align 8 %0, ptr noundef nonnull align 8 dereferenceable(424) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 8     ; 10 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #41 ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !287  ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2ERKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !246
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !246
  br label %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2ERKS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !287  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.f      ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #42
  unreachable

_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2ERKS7_.exit: ; preds = %bb.c, %bb.a
  invoke void @_ZN6duckdb11ProgressBarC1ERNS_8ExecutorEmSt8functionIFNS_10unique_ptrINS_18ProgressBarDisplayESt14default_deleteIS5_ELb1EEEvEE(ptr noundef nonnull align 8 dereferenceable(74) %i.a, ptr noundef nonnull align 8 dereferenceable(424) %1, i64 noundef %i.b, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2ERKS7_.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !959
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !287  ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #42
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  ret void

bb.j:                                             ; preds = %_ZNSt8functionIFN6duckdb10unique_ptrINS0_18ProgressBarDisplayESt14default_deleteIS2_ELb1EEEvEEC2ERKS7_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !287  ; 2 uses
  %.not.i7 = icmp eq ptr %i.r, null
  br i1 %.not.i7, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = invoke noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.body unwind label %bb.l      ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #42
  unreachable

.body:                                            ; preds = %bb.k, %bb.j, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.q, %bb.k ], [ %i.h, %bb.e ], [ %i.q, %bb.j ]
  call void @_ZdlPv(ptr noundef nonnull %i.a) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb11ProgressBarESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !959    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !961  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #28, !inline_history !1250
  br label %_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb18ProgressBarDisplayEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #40
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb11ProgressBarEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.23", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !959    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_11ProgressBarESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !108

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.594, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #43
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

end_hunk_0
