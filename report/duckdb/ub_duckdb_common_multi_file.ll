inline.NumInlined: 8566
inline.NumDeleted: 3991
begin_hunk_0_@_ZNK6duckdb10unique_ptrINS_24BoundColumnRefExpressionESt14default_deleteIS1_ELb1EEdeEv:bb.a

_ZN6duckdb10unique_ptrINS_24BoundColumnRefExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !224    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !220  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #32, !inline_history !250
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !242

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !224
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #34
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21MultiFilePushdownInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !157  ; 2 uses
  %.not.i.i2.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i2.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.0.i.i3.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i), !inline_history !243
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !244

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !158
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i, %bb.a
  %i.f = phi ptr [ %.pre.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #34, !inline_history !245
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !168  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17ExtraOperatorInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !246  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb13SampleOptionsESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13SampleOptionsEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13SampleOptionsEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(81) %i.b) #32
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #34
  br label %_ZNSt10unique_ptrIN6duckdb13SampleOptionsESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13SampleOptionsESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13SampleOptionsEEclEPS1_.exit.i
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb13SampleOptionsESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.c) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb13SampleOptionsESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK6duckdb13MultiFileList5FilesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.duckdb::MultiFileListIterationHelper", align 8 ; 2 uses
  call void @_ZN6duckdb28MultiFileListIterationHelperC1ERKNS_13MultiFileListE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = load ptr, ptr %1, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb28MultiFileListIterationHelperC2ERKNS_13MultiFileListE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorC2ENS_12optional_ptrIKNS_13MultiFileListELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 20)) %0, ptr %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !251
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !253
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !256
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8, !tbaa !19
  store i8 0, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.c

bb.b:                                             ; preds = %_ZN6duckdb12optional_ptrIKNS_13MultiFileListELb1EEptEv.exit, %bb.c, %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #32
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.a
  invoke void @_ZNK6duckdb12optional_ptrIKNS_13MultiFileListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN6duckdb12optional_ptrIKNS_13MultiFileListELb1EEptEv.exit unwind label %bb.b

_ZN6duckdb12optional_ptrIKNS_13MultiFileListELb1EEptEv.exit: ; preds = %bb.c
  store i64 0, ptr %i.a, align 8, !tbaa !253
  invoke void @_ZNK6duckdb12optional_ptrIKNS_13MultiFileListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %_ZN6duckdb12optional_ptrIKNS_13MultiFileListELb1EEptEv.exit
  %i.h = load ptr, ptr %0, align 8, !tbaa !257
  %i.i = invoke noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %0, align 8, !tbaa !251
  store i64 -1, ptr %i.a, align 8, !tbaa !259
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK6duckdb13MultiFileList14InitializeScanERNS_21MultiFileListScanDataE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 8)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store i64 0, ptr %1, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !256
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !253
  %i.e = load ptr, ptr %0, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.d)
  br i1 %i.h, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.i = load i64, ptr %1, align 8, !tbaa !253
  %i.j = load ptr, ptr %0, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::OpenFileInfo") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = icmp ne i64 %i.n, 0                      ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !266  ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !267
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEC2ERKS2_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.t, align 4, !tbaa !3
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEC2ERKS2_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !266  ; 8 uses
  store <2 x ptr> %i.s, ptr %4, align 8, !tbaa !267
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb12OpenFileInfoaSERKS0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEC2ERKS2_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !268
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !270
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32, !inline_history !271
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32, !inline_history !271
  br label %_ZN6duckdb12OpenFileInfoaSERKS0_.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.n, label %_ZN6duckdb12OpenFileInfoaSERKS0_.exit, !prof !159

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #32
  br label %_ZN6duckdb12OpenFileInfoaSERKS0_.exit

_ZN6duckdb12OpenFileInfoaSERKS0_.exit:            ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEC2ERKS2_.exit.i.i
  %i.ap = load i64, ptr %1, align 8, !tbaa !253
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %1, align 8, !tbaa !253
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %i.ar

bb.p:                                             ; preds = %bb.c, %_ZN6duckdb12OpenFileInfoaSERKS0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !266 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.au, align 8, !tbaa !268
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !270
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #32, !inline_history !272
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #32, !inline_history !272
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i8 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i.i8, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.ax, %bb.t ], [ %i.bh, %bb.u ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bi, label %bb.v, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !159

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #32
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r, %bb.p
  %i.bj = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.bj) #34
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.w

bb.w:                                             ; preds = %bb.b, %_ZN6duckdb12OpenFileInfoD2Ev.exit
  %.1 = phi i1 [ %i.o, %_ZN6duckdb12OpenFileInfoD2Ev.exit ], [ false, %bb.b ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !266  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !268
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !270
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !273
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32, !inline_history !273
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit, !prof !159

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #32
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.r) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !257
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK6duckdb12optional_ptrIKNS_13MultiFileListELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !257
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noundef zeroext i1 @_ZNK6duckdb13MultiFileList4ScanERNS_21MultiFileListScanDataERNS_12OpenFileInfoE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !251
  store i64 -1, ptr %i.c, align 8, !tbaa !259
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28MultiFileListIterationHelper5beginEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::MultiFileListIterationHelper::MultiFileListIterator") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !274, !nonnull !173, !align !194 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i8 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load ptr, ptr %1, align 8, !nonnull !173, !align !194
  %spec.select = select i1 %i.f, ptr null, ptr %i.g
  tail call void @_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorC1ENS_12optional_ptrIKNS_13MultiFileListELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %spec.select)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb28MultiFileListIterationHelper3endEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::MultiFileListIterationHelper::MultiFileListIterator") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorC1ENS_12optional_ptrIKNS_13MultiFileListELb1EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr null)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIteratorppEv(ptr noundef nonnull returned align 8 dereferenceable(72) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !257
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6duckdb28MultiFileListIterationHelper21MultiFileListIterator4NextEv.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN6duckdb21MultiFileColumnMapper13CreateMappingENS_26MultiFileColumnMappingModeE:bb.a
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !569, !nonnull !173, !align !194
  %i.j = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_14BaseFileReaderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152 ; 2 uses
  %i.l = load ptr, ptr %4, align 8, !tbaa !577
  store ptr null, ptr %4, align 8, !tbaa !577
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !577  ; 4 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !577
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !483
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %i.o)
          to label %_ZN6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEaSEOS4_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #35
  unreachable

_ZN6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  %.pr = load ptr, ptr %4, align 8, !tbaa !577    ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !483
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %.pr, ptr noundef %i.s)
          to label %_ZNKSt14default_deleteIN6duckdb14TableFilterSetEEclEPS1_.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #35
  unreachable

_ZNKSt14default_deleteIN6duckdb14TableFilterSetEEclEPS1_.exit.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef nonnull %.pr) #34
  br label %_ZNSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZN6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb14TableFilterSetEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.v, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.q

bb.n:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EED2Ev.exit
  %.07 = phi i32 [ 0, %_ZNSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EED2Ev.exit ], [ 1, %bb.b ]
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !483
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt17reference_wrapperIN6duckdb11TableFilterEEESt10_Select1stIS6_ESt4lessImESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.x)
          to label %_ZNSt3mapImSt17reference_wrapperIN6duckdb11TableFilterEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #35
  unreachable

_ZNSt3mapImSt17reference_wrapperIN6duckdb11TableFilterEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapImSt17reference_wrapperIN6duckdb11TableFilterEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt3mapImSt17reference_wrapperIN6duckdb11TableFilterEESt4lessImESaISt4pairIKmS3_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !578 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb18MultiFileColumnMapEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.ag = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !199 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_21MultiFileIndexMappingESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.ah) #32, !inline_history !580
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i) #34
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i10, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb18MultiFileColumnMapEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !581

_ZNSt10_HashtableImSt4pairIKmN6duckdb18MultiFileColumnMapEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ai = load ptr, ptr %2, align 8, !tbaa !582
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !583
  %i.al = shl i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ai, i8 0, i64 %i.al, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %i.am = load ptr, ptr %2, align 8, !tbaa !582   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN6duckdb19ResultColumnMappingD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb18MultiFileColumnMapEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  call void @_ZdlPv(ptr noundef %i.am) #34
  br label %_ZN6duckdb19ResultColumnMappingD2Ev.exit

_ZN6duckdb19ResultColumnMappingD2Ev.exit:         ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb18MultiFileColumnMapEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret i32 %.07

bb.q:                                             ; preds = %bb.m, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.g, %bb.c ]
  call void @_ZNSt3mapImSt17reference_wrapperIN6duckdb11TableFilterEESt4lessImESaISt4pairIKmS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN6duckdb19ResultColumnMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6duckdb15MultiFileReader13CreateMappingERNS_13ClientContextERNS_19MultiFileReaderDataERKNS_6vectorINS_25MultiFileColumnDefinitionELb1ESaIS6_EEERKNS5_INS_11ColumnIndexELb1ESaISB_EEENS_12optional_ptrINS_14TableFilterSetELb1EEERNS_13MultiFileListERKNS_23MultiFileReaderBindDataERKSt13unordered_mapImNS_11TableColumnESt4hashImESt8equal_toImESaISt4pairIKmSP_EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(57) %7, ptr noundef nonnull align 8 dereferenceable(56) %8) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !422
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(57) %7, ptr noundef nonnull align 8 dereferenceable(56) %8, i8 noundef zeroext %i.b)
  ret i32 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25GetExtendedMultiFileErrorERKNS_17MultiFileBindDataERKNS_10ExpressionERNS_14BaseFileReaderEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(480) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(280) %3, i64 noundef %4, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::vector.1014", align 8  ; 9 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::vector.1014", align 8  ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::vector.1014", align 8  ; 9 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %30 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %38 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !584
  %.not = icmp eq i8 %i.q, 12
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !19
  store i8 0, ptr %i.r, align 8, !tbaa !18
  br label %bb.ds

bb.c:                                             ; preds = %bb.a
  %i.t = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb14BaseExpression4CastINS_19BoundCastExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %2) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88 ; 2 uses
  %i.v = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !584
  %.not58 = icmp eq i8 %i.x, -29
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !19
  store i8 0, ptr %i.y, align 8, !tbaa !18
  br label %bb.ds

bb.e:                                             ; preds = %bb.c
  %i.aa = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.ab = tail call noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb14BaseExpression4CastINS_24BoundReferenceExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.aa) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !588
  %i.ai = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef %i.ah)
  %i.aj = tail call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %i.ai)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb6vectorINS_25MultiFileColumnDefinitionELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef %i.aj) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.al = load ptr, ptr %3, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(280) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.f unwind label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 5)
          to label %.noexc unwind label %bb.w     ; 6 uses

.noexc:                                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  store ptr %i.ap, ptr %10, align 8, !tbaa !11, !alias.scope !597
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !19 ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.aq, ptr %10, align 8, !tbaa !16, !alias.scope !597
  %i.ax = load i64, ptr %i.ar, align 8, !tbaa !18
  store i64 %i.ax, ptr %i.ap, align 8, !tbaa !18, !alias.scope !597
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.ay = phi i64 [ %i.au, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !19, !alias.scope !597
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !16
  store i64 0, ptr %i.az, align 8, !tbaa !19
  store i8 0, ptr %i.ar, align 8, !tbaa !18
  %i.bb = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.bb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.be, ptr %0, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !19
  store i8 0, ptr %i.be, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !309 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !309 ; 2 uses
  %i.bk = icmp eq ptr %i.bh, %i.bj
  br i1 %i.bk, label %.noexc.i194, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.bl, ptr %12, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 5 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !19
  store i8 0, ptr %i.bl, align 8, !tbaa !18
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = ptrtoint ptr %i.bh to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 5
  %i.br = icmp ult i64 %4, %i.bq
  br i1 %i.br, label %bb.j, label %.noexc.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 noundef %4)
          to label %bb.k unwind label %bb.x       ; 2 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16, !noalias !600
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !19, !noalias !600 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store ptr %i.bw, ptr %14, align 8, !tbaa !11, !alias.scope !603
  %i.bx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !19, !alias.scope !603
  store i8 0, ptr %i.bw, align 8, !tbaa !18, !alias.scope !603
  %i.by = add i64 %i.bv, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.by)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !19, !alias.scope !603
  %i.ca = icmp eq i64 %i.bz, 4611686018427387903
  br i1 %i.ca, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.l
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.25, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.m ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !19, !alias.scope !603
  %i.cd = sub i64 4611686018427387903, %i.cc
  %i.ce = icmp ult i64 %i.cd, %i.bv
  br i1 %i.ce, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #33
          to label %.cont.i.i unwind label %bb.m

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef %i.bt, i64 noundef %i.bv)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %14, align 8, !tbaa !16, !alias.scope !603 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.bw
  br i1 %i.ci, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.ch) #34
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !606)
  %i.cj = load i64, ptr %i.bx, align 8, !tbaa !19, !noalias !606
  %i.ck = and i64 %i.cj, -2
  %i.cl = icmp eq i64 %i.ck, 4611686018427387902
  br i1 %i.cl, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.n:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #33
          to label %.noexc93 unwind label %bb.y

.noexc93:                                         ; preds = %bb.n
  unreachable
end_hunk_1
begin_hunk_2_@_ZN6duckdb25GetExtendedMultiFileErrorERKNS_17MultiFileBindDataERKNS_10ExpressionERNS_14BaseFileReaderEmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.cv:                                            ; preds = %.noexc.i214
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %.body228
  call void @_ZdlPv(ptr noundef %i.mz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262: ; preds = %.body228, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260, %bb.cv
  %.pn73 = phi { ptr, i32 } [ %i.oq, %bb.cv ], [ %i.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260 ], [ %i.my, %.body228 ] ; 2 uses
  %i.or = load ptr, ptr %32, align 8, !tbaa !16   ; 2 uses
  %i.os = icmp eq ptr %i.or, %i.lr
  br i1 %i.os, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262
  call void @_ZdlPv(ptr noundef %i.or) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263, %bb.cu
  %.pn73.pn = phi { ptr, i32 } [ %i.op, %bb.cu ], [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262 ] ; 2 uses
  %i.ot = load ptr, ptr %31, align 8, !tbaa !16   ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.le
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265
  call void @_ZdlPv(ptr noundef %i.ot) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266, %bb.ct
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.oo, %bb.ct ], [ %.pn73.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266 ], [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #32
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %bb.cs
  %.pn73.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %i.on, %bb.cs ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cr
  %.pn73.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn73.pn.pn.pn, %bb.cw ], [ %i.om, %bb.cr ] ; 2 uses
  %i.ov = load ptr, ptr %28, align 8, !tbaa !16   ; 2 uses
  %i.ow = icmp eq ptr %i.ov, %i.kr
  br i1 %i.ow, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269: ; preds = %bb.cx
  call void @_ZdlPv(ptr noundef %i.ov) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269, %bb.cq
  %.pn73.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ol, %bb.cq ], [ %.pn73.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269 ], [ %.pn73.pn.pn.pn.pn, %bb.cx ] ; 2 uses
  %i.ox = load ptr, ptr %27, align 8, !tbaa !16   ; 2 uses
  %i.oy = icmp eq ptr %i.ox, %i.ke
  br i1 %i.oy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271
  call void @_ZdlPv(ptr noundef %i.ox) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272, %bb.cp
  %.pn73.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ok, %bb.cp ], [ %.pn73.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272 ], [ %.pn73.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271 ] ; 2 uses
  %i.oz = load ptr, ptr %26, align 8, !tbaa !16   ; 2 uses
  %i.pa = icmp eq ptr %i.oz, %i.jy
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  call void @_ZdlPv(ptr noundef %i.oz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275, %bb.co
  %.pn73.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oj, %bb.co ], [ %.pn73.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275 ], [ %.pn73.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br label %bb.dr

.noexc.i279:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  %i.pb = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  store ptr %i.pb, ptr %35, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 47, ptr %i.b, align 8, !tbaa !14
  %i.pc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc280 unwind label %bb.dl ; 3 uses

.noexc280:                                        ; preds = %.noexc.i279
  store ptr %i.pc, ptr %35, align 8, !tbaa !16
  %i.pd = load i64, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.pc, ptr noundef nonnull align 1 dereferenceable(47) @.str.29, i64 47, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 %i.pd, ptr %i.pe, align 8, !tbaa !19
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pd
  store i8 0, ptr %i.pf, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.pg = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 5 uses
  store ptr %i.pg, ptr %36, align 8, !tbaa !11
  %i.ph = load ptr, ptr %i.ak, align 8, !tbaa !16 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.pj, ptr %i.a, align 8, !tbaa !14
  %i.pk = icmp ugt i64 %i.pj, 15
  br i1 %i.pk, label %.noexc.i283, label %._crit_edge.i.i282

.noexc.i283:                                      ; preds = %.noexc280
  %i.pl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc284 unwind label %bb.dm ; 2 uses

.noexc284:                                        ; preds = %.noexc.i283
  store ptr %i.pl, ptr %36, align 8, !tbaa !16
  %i.pm = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.pm, ptr %i.pg, align 8, !tbaa !18
  br label %._crit_edge.i.i282

._crit_edge.i.i282:                               ; preds = %.noexc284, %.noexc280
  %i.pn = phi ptr [ %i.pl, %.noexc284 ], [ %i.pg, %.noexc280 ] ; 2 uses
  switch i64 %i.pj, label %bb.cz [
    i64 1, label %bb.cy
    i64 0, label %bb.da
  ]

bb.cy:                                            ; preds = %._crit_edge.i.i282
  %i.po = load i8, ptr %i.ph, align 1, !tbaa !18
  store i8 %i.po, ptr %i.pn, align 1, !tbaa !18
  br label %bb.da

bb.cz:                                            ; preds = %._crit_edge.i.i282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pn, ptr align 1 %i.ph, i64 %i.pj, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %._crit_edge.i.i282
  %i.pp = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 %i.pp, ptr %i.pq, align 8, !tbaa !19
  %i.pr = load ptr, ptr %36, align 8, !tbaa !16
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pp
  store i8 0, ptr %i.ps, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %bb.db unwind label %bb.dn

bb.db:                                            ; preds = %bb.da
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %bb.dc unwind label %bb.do

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !619
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKNS_11LogicalTypeESA_EEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(24) %38)
          to label %bb.dd unwind label %.body297

bb.dd:                                            ; preds = %bb.dc
  %i.pt = load ptr, ptr %6, align 8, !tbaa !25, !noalias !619 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !28, !noalias !619 ; 2 uses
  %.not4.i.i.i.i.i286 = icmp eq ptr %i.pt, %i.pv
  br i1 %.not4.i.i.i.i.i286, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i294, label %.lr.ph.i.i.i.i.i287

.lr.ph.i.i.i.i.i287:                              ; preds = %bb.dd, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i290
  %.05.i.i.i.i.i288 = phi ptr [ %i.qa, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i290 ], [ %i.pt, %bb.dd ] ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i288, i64 32
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i288, i64 48
  %i.pz = icmp eq ptr %i.px, %i.py
  br i1 %i.pz, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i289: ; preds = %.lr.ph.i.i.i.i.i287
  call void @_ZdlPv(ptr noundef %i.px) #34
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i290

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i290: ; preds = %.lr.ph.i.i.i.i.i287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i289
  %i.qa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i288, i64 64 ; 2 uses
  %.not.i.i.i.i.i291 = icmp eq ptr %i.qa, %i.pv
  br i1 %.not.i.i.i.i.i291, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i292, label %.lr.ph.i.i.i.i.i287, !llvm.loop !29

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i292: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i290
  %.pr.i.i.i293 = load ptr, ptr %6, align 8, !tbaa !25, !noalias !619
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i294

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i294: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i292, %bb.dd
  %i.qb = phi ptr [ %.pr.i.i.i293, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i292 ], [ %i.pt, %bb.dd ] ; 2 uses
  %.not.i.i1.i.i.i295 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i1.i.i.i295, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i294
  call void @_ZdlPv(ptr noundef nonnull %i.qb) #34
  br label %bb.df

.body297:                                         ; preds = %bb.dc
  %i.qc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !619
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #32
  br label %bb.dp

bb.df:                                            ; preds = %bb.de, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !619
  %i.qd = load ptr, ptr %5, align 8, !tbaa !16    ; 6 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.qf = icmp eq ptr %i.qd, %i.qe
  %i.qg = load ptr, ptr %34, align 8, !tbaa !16   ; 5 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.qi = icmp eq ptr %i.qg, %i.qh                ; 2 uses
  br i1 %i.qf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i305: ; preds = %bb.df
  br i1 %i.qi, label %bb.dg, label %.thread.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i299: ; preds = %bb.df
  br i1 %i.qi, label %bb.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i300

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i305
  %i.qj = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !19 ; 3 uses
  %i.ql = icmp ult i64 %i.qk, 16
  call void @llvm.assume(i1 %i.ql)
  switch i64 %i.qk, label %bb.di [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i303
    i64 1, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.qm = load i8, ptr %i.qg, align 1, !tbaa !18
  store i8 %i.qm, ptr %i.qd, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i303

bb.di:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qd, ptr align 1 %i.qg, i64 %i.qk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i303: ; preds = %bb.di, %bb.dh, %bb.dg
  %i.qn = load i64, ptr %i.qj, align 8, !tbaa !19 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.qn, ptr %i.qo, align 8, !tbaa !19
  %i.qp = load ptr, ptr %5, align 8, !tbaa !16
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qn
  store i8 0, ptr %i.qq, align 1, !tbaa !18
  %.pre.i304 = load ptr, ptr %34, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit307

.thread.i306:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i305
  %i.qr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.qg, ptr %5, align 8, !tbaa !16
  %i.qs = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.qt = load <2 x i64>, ptr %i.qs, align 8, !tbaa !18
  store <2 x i64> %i.qt, ptr %i.qr, align 8, !tbaa !18
  br label %bb.dk

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i300: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i299
  %i.qu = load i64, ptr %i.qe, align 8, !tbaa !18
  store ptr %i.qg, ptr %5, align 8, !tbaa !16
  %i.qv = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qx = load <2 x i64>, ptr %i.qv, align 8, !tbaa !18
  store <2 x i64> %i.qx, ptr %i.qw, align 8, !tbaa !18
  %.not.i301 = icmp eq ptr %i.qd, null
  br i1 %.not.i301, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i300
  store ptr %i.qd, ptr %34, align 8, !tbaa !16
  store i64 %i.qu, ptr %i.qh, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit307

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i300, %.thread.i306
  store ptr %i.qh, ptr %34, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i303, %bb.dj, %bb.dk
  %39 = phi ptr [ %i.qd, %bb.dj ], [ %i.qh, %bb.dk ], [ %.pre.i304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i303 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.qy, align 8, !tbaa !19
  store i8 0, ptr %39, align 1, !tbaa !18
  %i.qz = load ptr, ptr %34, align 8, !tbaa !16   ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit307
  call void @_ZdlPv(ptr noundef %i.qz) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #32
  %i.rc = load ptr, ptr %36, align 8, !tbaa !16   ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.pg
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310
  call void @_ZdlPv(ptr noundef %i.rc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
  %i.re = load ptr, ptr %35, align 8, !tbaa !16   ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.pb
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313
  call void @_ZdlPv(ptr noundef %i.re) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i314
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.rg = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.rh = icmp eq ptr %i.rg, %i.ap
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  call void @_ZdlPv(ptr noundef %i.rg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.ri = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rk = icmp eq ptr %i.ri, %i.rj
  br i1 %i.rk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319
  call void @_ZdlPv(ptr noundef %i.ri) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit319, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %bb.ds

bb.dl:                                            ; preds = %.noexc.i279
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.dm:                                            ; preds = %.noexc.i283
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

bb.dn:                                            ; preds = %bb.da
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.do:                                            ; preds = %bb.db
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

bb.dp:                                            ; preds = %.body297, %bb.do
  %.pn82 = phi { ptr, i32 } [ %i.qc, %.body297 ], [ %i.ro, %bb.do ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #32
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dn
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.dp ], [ %i.rn, %bb.dn ] ; 2 uses
  %i.rp = load ptr, ptr %36, align 8, !tbaa !16   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, %i.pg
  br i1 %i.rq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %bb.dq
  call void @_ZdlPv(ptr noundef %i.rp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323, %bb.dm
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.rm, %bb.dm ], [ %.pn82.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323 ], [ %.pn82.pn, %bb.dq ] ; 2 uses
  %i.rr = load ptr, ptr %35, align 8, !tbaa !16   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.pb
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  call void @_ZdlPv(ptr noundef %i.rr) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.dl
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %i.rl, %bb.dl ], [ %.pn82.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %.pn82.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  br label %bb.dr

bb.dr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ], [ %.pn73.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277 ], [ %.pn62.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192 ] ; 2 uses
  %i.rt = load ptr, ptr %0, align 8, !tbaa !16    ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.be
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %bb.dr
  call void @_ZdlPv(ptr noundef %i.rt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  %i.rv = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, %i.ap
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  call void @_ZdlPv(ptr noundef %i.rv) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.pn82.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332 ], [ %.pn82.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.rx = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.rz = icmp eq ptr %i.rx, %i.ry
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
  call void @_ZdlPv(ptr noundef %i.rx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn.pn

bb.ds:                                            ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZNK6duckdb14BaseExpression4CastINS_19BoundCastExpressionEEERKT_v(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !624
  %.not = icmp eq i8 %i.b, 27
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !16     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #32
  br label %bb.h

end_hunk_2
