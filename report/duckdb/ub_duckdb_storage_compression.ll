inline.NumInlined: 14179
inline.NumDeleted: 6830
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 157
begin_hunk_0_@_ZN6duckdb27ZSTDCompressionSegmentState17InitializeSegmentERNS_31ZSTDCompressionBufferCollectionEm:bb.a
  resume { ptr, i32 } %.pn34

bb.h:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.1187", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1210
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1210
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !1121, !noalias !1210 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1124, !noalias !1210 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #32
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1125

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !1121, !noalias !1210
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #32
  br label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1210
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1210
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb17InternalExceptionC2IJmRjEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.1187", align 8  ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !1213
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1213
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !1121, !noalias !1213 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1124, !noalias !1213 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #32
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1125

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !1121, !noalias !1213
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #32
  br label %_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1213
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !1213
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.k = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %5, align 8, !tbaa !63     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb31ZSTDCompressionBufferCollection13GetBufferDataEb(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.1201") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.a, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.b, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit
  %i.e = phi ptr [ null, %bb.a ], [ %i.ba, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 8 uses
  %i.f = phi ptr [ null, %bb.a ], [ %i.bb, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 6 uses
  %i.g = phi ptr [ null, %bb.a ], [ %i.bc, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 10 uses
  %.01246 = phi i64 [ 0, %bb.a ], [ %i.be, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 5 uses
  %i.h = phi ptr [ null, %bb.a ], [ %i.bd, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit ] ; 19 uses
  %.not = icmp eq i64 %.01246, 0
  br i1 %.not, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  br i1 %2, label %bb.d, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store <2 x ptr> %4, ptr %i.g, align 8, !tbaa !443
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !1178
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !1216
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.g, label %_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #31
          to label %.noexc unwind label %.loopexit.split-lp36

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.o = sdiv exact i64 %i.m, 24                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 384307168202282325)
  %i.s = select i1 %i.q, i64 384307168202282325, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #33
          to label %.noexc14 unwind label %.loopexit35 ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m ; 2 uses
  store <2 x ptr> %4, ptr %i.v, align 8, !tbaa !443
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i8 0, ptr %i.w, align 8, !tbaa !1178
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.e
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i ], [ %i.u, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %i.h, %.noexc14 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1217, !alias.scope !1220
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1224

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %.noexc14 ], [ %i.y, %.lr.ph.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #32
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i
  store ptr %i.z, ptr %i.c, align 8, !tbaa !1216
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s ; 3 uses
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !1225
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit

.loopexit35:                                      ; preds = %_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %0, align 8
  br label %bb.n

.loopexit.split-lp36:                             ; preds = %bb.g
  %lpad.loopexit.split-lp38 = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.ab = getelementptr [24 x i8], ptr %i.a, i64 %.01246 ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %.01246 ; 2 uses
  %i.ad = icmp eq i64 %.01246, 1
  %i.ae = select i1 %i.ad, i8 1, i8 2             ; 2 uses
  %.not.i15 = icmp eq ptr %i.g, %i.f
  br i1 %.not.i15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !1180
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !1218
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 %i.ae, ptr %i.ag, align 8, !tbaa !1178
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !1216
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.f to i64
  %i.aj = ptrtoint ptr %i.h to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.l, label %_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i16

bb.l:                                             ; preds = %bb.k
  store ptr %i.h, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #31
          to label %.noexc28 unwind label %.loopexit.split-lp

.noexc28:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i16: ; preds = %bb.k
  %i.am = sdiv exact i64 %i.ak, 24                ; 3 uses
  %.sroa.speculated.i.i.i17 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i17, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 384307168202282325)
  %i.aq = select i1 %i.ao, i64 384307168202282325, i64 %i.ap ; 3 uses
  %.not.i.i.i18 = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i18)
  %i.ar = mul nuw nsw i64 %i.aq, 24
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #33
          to label %.noexc29 unwind label %.loopexit ; 5 uses

.noexc29:                                         ; preds = %_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak ; 3 uses
  store ptr %i.ab, ptr %i.at, align 8, !tbaa !1180
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ac, ptr %i.au, align 8, !tbaa !1218
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %i.ae, ptr %i.av, align 8, !tbaa !1178
  %.not10.i.i.i.i.i.i19 = icmp eq ptr %i.h, %i.f
  br i1 %.not10.i.i.i.i.i.i19, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i24, label %.lr.ph.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i20:                             ; preds = %.noexc29, %.lr.ph.i.i.i.i.i.i20
  %.012.i.i.i.i.i.i21 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i20 ], [ %i.as, %.noexc29 ] ; 2 uses
  %.0911.i.i.i.i.i.i22 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i20 ], [ %i.h, %.noexc29 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i21, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i22, i64 24, i1 false), !tbaa.struct !1217, !alias.scope !1226
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i22, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i21, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i23 = icmp eq ptr %i.aw, %i.f
  br i1 %.not.i.i.i.i.i.i23, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i24, label %.lr.ph.i.i.i.i.i.i20, !llvm.loop !1224

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i24: ; preds = %.lr.ph.i.i.i.i.i.i20, %.noexc29
  %.0.lcssa.i.i.i.i.i.i25 = phi ptr [ %i.as, %.noexc29 ], [ %i.ax, %.lr.ph.i.i.i.i.i.i20 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i25, i64 24 ; 2 uses
  %.not.i35.i.i26 = icmp eq ptr %i.h, null
  br i1 %.not.i35.i.i26, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i24
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #32
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit34.i.i24
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !1216
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.aq ; 3 uses
  store ptr %i.az, ptr %i.d, align 8, !tbaa !1225
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27, %bb.e, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.c
  %i.ba = phi ptr [ %i.e, %bb.j ], [ %i.az, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27 ], [ %i.e, %bb.e ], [ %i.aa, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.e, %bb.c ]
  %i.bb = phi ptr [ %i.f, %bb.j ], [ %i.az, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27 ], [ %i.e, %bb.e ], [ %i.aa, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.f, %bb.c ]
  %i.bc = phi ptr [ %i.ah, %bb.j ], [ %i.ay, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27 ], [ %i.j, %bb.e ], [ %i.z, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.g, %bb.c ]
  %i.bd = phi ptr [ %i.h, %bb.j ], [ %i.as, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i27 ], [ %i.h, %bb.e ], [ %i.u, %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_M_realloc_insertIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.be = add nuw nsw i64 %.01246, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, 3
  br i1 %exitcond.not, label %bb.p, label %bb.b, !llvm.loop !1230

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.h, ptr %0, align 8
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit35, %.loopexit.split-lp36
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp38, %.loopexit.split-lp36 ], [ %lpad.loopexit37, %.loopexit35 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i31 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #32
  br label %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EED2Ev.exit

_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EED2Ev.exit: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE12emplace_backIJRNS0_12BufferHandleERNS0_26ZSTDCompressionBufferStateENS1_4SlotEEEEvDpOT_.exit
  store ptr %i.bd, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1124 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1129
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !653
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !654  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !63
  %i.o = load i64, ptr %i.i, align 8, !tbaa !239
  store i64 %i.o, ptr %i.g, align 8, !tbaa !239
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !654
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !654
  store ptr %i.i, ptr %i.f, align 8, !tbaa !63
  store i64 0, ptr %i.q, align 8, !tbaa !654
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1124
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1124
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !63 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = icmp eq ptr %.pre10, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1124 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1129
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !653
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !63   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !654  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !63
  %i.o = load i64, ptr %i.i, align 8, !tbaa !239
  store i64 %i.o, ptr %i.g, align 8, !tbaa !239
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !654
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !654
  store ptr %i.i, ptr %i.f, align 8, !tbaa !63
  store i64 0, ptr %i.q, align 8, !tbaa !654
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1124
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1124
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !63 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = icmp eq ptr %.pre10, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN6duckdb9RLEFilterIlEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8, !tbaa !235
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !237
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cd, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ad

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ac

bb.x:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aa

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0123198 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ck
  store i8 1, ptr %i.cl, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cp
  store i8 1, ptr %i.cq, align 1, !tbaa !43
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu
  store i8 1, ptr %i.cv, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cz
  store i8 1, ptr %i.da, align 1, !tbaa !43
  %i.db = add nuw i64 %.0123198, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1626

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %i.cg, %bb.y ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.cf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.ce, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ad:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !1624
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %5, align 8, !tbaa !21
  br label %bb.br

bb.af:                                            ; preds = %bb.ad
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !461 ; 5 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dh = load i64, ptr %5, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dh)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ag

common.resume:                                    ; preds = %bb.ac, %bb.bs, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %.pn148.pn.pn, %bb.bs ], [ %.pn.pn.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.di) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.af
  %i.dk = load ptr, ptr %4, align 8, !tbaa !439   ; 2 uses
  %.not185 = icmp eq ptr %i.dk, null
  %i.dl = load i64, ptr %5, align 8, !tbaa !21    ; 4 uses
  %.not222 = icmp eq i64 %i.dl, 0                 ; 2 uses
  br i1 %.not185, label %bb.ah, label %.preheader187

.preheader187:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not222, label %._crit_edge203, label %.lr.ph202

.lr.ph202:                                        ; preds = %.preheader187
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !1085
  %i.dp = load ptr, ptr %12, align 8
  br label %bb.ao

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not222, label %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.ds = load ptr, ptr %12, align 8              ; 2 uses
  %.pre239 = load i64, ptr %i.dq, align 8, !tbaa !1616
  %.pre240 = load i64, ptr %i.dr, align 8, !tbaa !1617
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !1085
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph213, %.loopexit
  %i.du = phi i64 [ %.pre240, %.lr.ph213 ], [ 0, %.loopexit ] ; 3 uses
  %i.dv = phi i64 [ %.pre239, %.lr.ph213 ], [ %i.ga, %.loopexit ] ; 4 uses
  %.0125211 = phi i64 [ 0, %.lr.ph213 ], [ %.4129, %.loopexit ] ; 8 uses
  %.0135209 = phi i64 [ 0, %.lr.ph213 ], [ %i.fz, %.loopexit ] ; 11 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !670
  %i.dy = zext i16 %i.dx to i64                   ; 2 uses
  %i.dz = sub i64 %i.dy, %i.du                    ; 6 uses
  %i.ea = sub nuw i64 %i.dl, %.0135209            ; 6 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dv
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !21 ; 4 uses
  %i.ed = icmp ugt i64 %i.dz, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !43, !range !54, !noundef !55
  %i.eg = trunc nuw i8 %i.ef to i1                ; 2 uses
  br i1 %i.ed, label %bb.aj, label %bb.ak, !prof !67

bb.aj:                                            ; preds = %bb.ai
  %i.eh = icmp ne i64 %i.dl, %.0135209
  %or.cond = and i1 %i.eh, %i.eg
  br i1 %or.cond, label %.lr.ph217, label %.thread

.lr.ph217:                                        ; preds = %bb.aj
  %i.ei = load ptr, ptr %12, align 8, !tbaa !439  ; 2 uses
  %min.iters.check299 = icmp ult i64 %i.ea, 4
  br i1 %min.iters.check299, label %scalar.ph298.preheader, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph217
  %n.vec302 = and i64 %i.ea, -4                   ; 4 uses
  %i.ej = add i64 %.0125211, %n.vec302            ; 2 uses
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.ec, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = insertelement <2 x i64> poison, i64 %.0135209, i64 0
  %broadcast.splat304.a = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %.0125211
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph300
  %index306 = phi i64 [ 0, %vector.ph300 ], [ %index.next307, %vector.body305 ] ; 5 uses
  %i.el = or disjoint i64 %index306, 1
  %16 = insertelement <2 x i64> poison, i64 %index306, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  %18 = or disjoint <2 x i64> %17, <i64 2, i64 3>
  %i.em = add i64 %index306, %.0135209            ; 2 uses
  %i.en = add i64 %i.el, %.0135209
  %19 = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %i.eo = insertelement <2 x i64> %19, i64 %i.en, i64 1
  %20 = add <2 x i64> %18, %broadcast.splat304.a
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.em ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x i64> %broadcast.splat304, ptr %i.ep, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat304, ptr %i.eq, align 8, !tbaa !21
  %i.er = trunc <2 x i64> %i.eo to <2 x i32>
  %i.es = trunc <2 x i64> %20 to <2 x i32>
  %i.et = getelementptr [4 x i8], ptr %i.ek, i64 %index306 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store <2 x i32> %i.er, ptr %i.et, align 4, !tbaa !3
  store <2 x i32> %i.es, ptr %i.eu, align 4, !tbaa !3
  %index.next307 = add nuw i64 %index306, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.ev, label %middle.block308, label %vector.body305, !llvm.loop !1627

middle.block308:                                  ; preds = %vector.body305
  %cmp.n309 = icmp eq i64 %i.ea, %n.vec302
  br i1 %cmp.n309, label %.thread.loopexit, label %scalar.ph298.preheader

scalar.ph298.preheader:                           ; preds = %.lr.ph217, %middle.block308
  %.0112216.ph = phi i64 [ 0, %.lr.ph217 ], [ %n.vec302, %middle.block308 ]
  %.1126215.ph = phi i64 [ %.0125211, %.lr.ph217 ], [ %i.ej, %middle.block308 ]
  br label %scalar.ph298

scalar.ph298:                                     ; preds = %scalar.ph298.preheader, %scalar.ph298
  %.0112216 = phi i64 [ %i.fb, %scalar.ph298 ], [ %.0112216.ph, %scalar.ph298.preheader ] ; 2 uses
  %.1126215 = phi i64 [ %i.fa, %scalar.ph298 ], [ %.1126215.ph, %scalar.ph298.preheader ] ; 2 uses
  %i.ew = add i64 %.0112216, %.0135209            ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ew
  store i64 %i.ec, ptr %i.ex, align 8, !tbaa !21
  %i.ey = trunc i64 %i.ew to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.1126215
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !3
  %i.fa = add i64 %.1126215, 1                    ; 2 uses
  %i.fb = add nuw i64 %.0112216, 1                ; 2 uses
  %exitcond238.not = icmp eq i64 %i.fb, %i.ea
  br i1 %exitcond238.not, label %.thread.loopexit, label %scalar.ph298, !llvm.loop !1628

.thread.loopexit:                                 ; preds = %scalar.ph298, %middle.block308
  %.lcssa = phi i64 [ %i.ej, %middle.block308 ], [ %i.fa, %scalar.ph298 ]
  %.pre242 = load i64, ptr %i.dr, align 8, !tbaa !1617
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.aj
  %i.fc = phi i64 [ %i.du, %bb.aj ], [ %.pre242, %.thread.loopexit ]
  %.2127 = phi i64 [ %.0125211, %bb.aj ], [ %.lcssa, %.thread.loopexit ]
  %i.fd = add i64 %i.fc, %i.ea
  store i64 %i.fd, ptr %i.dr, align 8, !tbaa !1617
  br label %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fe = icmp ne i64 %i.du, %i.dy
  %or.cond219 = and i1 %i.fe, %i.eg
  br i1 %or.cond219, label %.lr.ph207.preheader, label %.loopexit

.lr.ph207.preheader:                              ; preds = %bb.ak
  %min.iters.check = icmp ult i64 %i.dz, 4
  br i1 %min.iters.check, label %.lr.ph207.preheader313, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph207.preheader
  %n.vec = and i64 %i.dz, -4                      ; 4 uses
  %i.ff = add i64 %.0125211, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ec, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %21 = insertelement <2 x i64> poison, i64 %.0135209, i64 0
  %broadcast.splat.a = shufflevector <2 x i64> %21, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fg = getelementptr [4 x i8], ptr %i.ds, i64 %.0125211
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fh = or disjoint i64 %index, 1
  %22 = insertelement <2 x i64> poison, i64 %index, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  %24 = or disjoint <2 x i64> %23, <i64 2, i64 3>
  %i.fi = add i64 %index, %.0135209               ; 2 uses
  %i.fj = add i64 %i.fh, %.0135209
  %25 = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fk = insertelement <2 x i64> %25, i64 %i.fj, i64 1
  %26 = add <2 x i64> %24, %broadcast.splat.a
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fi ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.fl, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat, ptr %i.fm, align 8, !tbaa !21
  %i.fn = trunc <2 x i64> %i.fk to <2 x i32>
  %i.fo = trunc <2 x i64> %26 to <2 x i32>
  %i.fp = getelementptr [4 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store <2 x i32> %i.fn, ptr %i.fp, align 4, !tbaa !3
  store <2 x i32> %i.fo, ptr %i.fq, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1629

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph207.preheader313

.lr.ph207.preheader313:                           ; preds = %.lr.ph207.preheader, %middle.block
  %.0111206.ph = phi i64 [ 0, %.lr.ph207.preheader ], [ %n.vec, %middle.block ]
  %.3128205.ph = phi i64 [ %.0125211, %.lr.ph207.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader313, %.lr.ph207
  %.0111206 = phi i64 [ %i.fx, %.lr.ph207 ], [ %.0111206.ph, %.lr.ph207.preheader313 ] ; 2 uses
  %.3128205 = phi i64 [ %i.fw, %.lr.ph207 ], [ %.3128205.ph, %.lr.ph207.preheader313 ] ; 2 uses
  %i.fs = add i64 %.0111206, %.0135209            ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fs
  store i64 %i.ec, ptr %i.ft, align 8, !tbaa !21
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.3128205
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = add i64 %.3128205, 1                    ; 2 uses
  %i.fx = add nuw i64 %.0111206, 1                ; 2 uses
  %exitcond237.not = icmp eq i64 %i.fx, %i.dz
  br i1 %exitcond237.not, label %.loopexit.loopexit, label %.lr.ph207, !llvm.loop !1630

.loopexit.loopexit:                               ; preds = %.lr.ph207, %middle.block
  %.lcssa281 = phi i64 [ %i.ff, %middle.block ], [ %i.fw, %.lr.ph207 ]
  %.pre241 = load i64, ptr %i.dq, align 8, !tbaa !1616
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ak
  %i.fy = phi i64 [ %i.dv, %bb.ak ], [ %.pre241, %.loopexit.loopexit ]
  %.4129 = phi i64 [ %.0125211, %bb.ak ], [ %.lcssa281, %.loopexit.loopexit ] ; 2 uses
  %i.fz = add i64 %i.dz, %.0135209                ; 2 uses
  %i.ga = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.ga, ptr %i.dq, align 8, !tbaa !1616
  store i64 0, ptr %i.dr, align 8, !tbaa !1617
  %i.gb = icmp ult i64 %i.fz, %i.dl
  br i1 %i.gb, label %bb.ai, label %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit

._crit_edge203:                                   ; preds = %bb.az, %.preheader187
  %.7132.lcssa = phi i64 [ 0, %.preheader187 ], [ %.8133, %bb.az ] ; 2 uses
  %.0110.lcssa = phi i64 [ 0, %.preheader187 ], [ %i.gt, %bb.az ]
  %i.gc = sub i64 %2, %.0110.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.gc, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge203
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.gd, align 8, !tbaa !1616
  %.promoted11.i = load i64, ptr %i.ge, align 8, !tbaa !1617
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i
  %i.gf = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.gp, %bb.an ] ; 2 uses
  %i.gg = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.gq, %bb.an ] ; 3 uses
  %.010.i = phi i64 [ %i.gc, %.lr.ph.i ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !670
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = add i64 %i.gg, 1                        ; 2 uses
  store i64 %i.go, ptr %i.gd, align 8, !tbaa !1616
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gp = phi i64 [ 0, %bb.am ], [ %i.gn, %bb.al ] ; 2 uses
  %i.gq = phi i64 [ %i.go, %bb.am ], [ %i.gg, %bb.al ]
  %.not.i156 = icmp eq i64 %i.gm, 0
  br i1 %.not.i156, label %._crit_edge.i, label %bb.al, !llvm.loop !1618

._crit_edge.i:                                    ; preds = %bb.an
  store i64 %i.gp, ptr %i.ge, align 8, !tbaa !1617
  br label %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit

bb.ao:                                            ; preds = %.lr.ph202, %bb.az
  %.0109201 = phi i64 [ 0, %.lr.ph202 ], [ %i.hx, %bb.az ] ; 2 uses
  %.0110200 = phi i64 [ 0, %.lr.ph202 ], [ %i.gt, %bb.az ] ; 2 uses
  %.7132199 = phi i64 [ 0, %.lr.ph202 ], [ %.8133, %bb.az ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.0109201
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3  ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 5 uses
  %i.gu = icmp samesign ugt i64 %.0110200, %i.gt
  br i1 %i.gu, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.gv = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.gv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bt unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ap
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gy = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.gy) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.at, label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.at, label %bb.bs

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148183 = phi { ptr, i32 } [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.gv) #30
  br label %bb.bs

bb.au:                                            ; preds = %bb.ao
  %i.hb = sub nuw nsw i64 %i.gt, %.0110200        ; 2 uses
  %.not9.i159 = icmp eq i64 %i.hb, 0
  %.pre = load i64, ptr %i.dm, align 8, !tbaa !1616 ; 2 uses
  br i1 %.not9.i159, label %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit167, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.au
  %.promoted11.i162 = load i64, ptr %i.dn, align 8, !tbaa !1617
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.lr.ph.i160
  %i.hc = phi i64 [ %.promoted11.i162, %.lr.ph.i160 ], [ %i.hm, %bb.ax ] ; 2 uses
  %i.hd = phi i64 [ %.pre, %.lr.ph.i160 ], [ %i.hn, %bb.ax ] ; 3 uses
  %.010.i163 = phi i64 [ %i.hb, %.lr.ph.i160 ], [ %i.hj, %bb.ax ] ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !670
  %i.hg = zext i16 %i.hf to i64                   ; 2 uses
  %i.hh = sub i64 %i.hg, %i.hc
  %i.hi = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hh) ; 2 uses
  %i.hj = sub i64 %.010.i163, %i.hi               ; 2 uses
  %i.hk = add i64 %i.hi, %i.hc                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hk, %i.hg
  br i1 %.not8.i164, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = add i64 %i.hd, 1                        ; 2 uses
  store i64 %i.hl, ptr %i.dm, align 8, !tbaa !1616
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hm = phi i64 [ 0, %bb.aw ], [ %i.hk, %bb.av ] ; 2 uses
  %i.hn = phi i64 [ %i.hl, %bb.aw ], [ %i.hd, %bb.av ] ; 2 uses
  %.not.i165 = icmp eq i64 %i.hj, 0
  br i1 %.not.i165, label %._crit_edge.i166, label %bb.av, !llvm.loop !1618

._crit_edge.i166:                                 ; preds = %bb.ax
  store i64 %i.hm, ptr %i.dn, align 8, !tbaa !1617
  br label %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit167

_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit167: ; preds = %bb.au, %._crit_edge.i166
  %i.ho = phi i64 [ %.pre, %bb.au ], [ %i.hn, %._crit_edge.i166 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !43, !range !54, !noundef !55
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6duckdb12RLEScanStateIlE12SkipInternalEPtm.exit167
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ho
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !21
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.gt
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !21
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.7132199
  store i32 %i.gs, ptr %i.hv, align 4, !tbaa !3
  %i.hw = add i64 %.7132199, 1
end_hunk_1
begin_hunk_2_@_ZN6duckdb9RLEFilterImEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8, !tbaa !235
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !237
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cd, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ad

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ac

bb.x:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aa

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0123198 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ck
  store i8 1, ptr %i.cl, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cp
  store i8 1, ptr %i.cq, align 1, !tbaa !43
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu
  store i8 1, ptr %i.cv, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123198
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cz
  store i8 1, ptr %i.da, align 1, !tbaa !43
  %i.db = add nuw i64 %.0123198, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !1938

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %i.cg, %bb.y ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.cf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.ce, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ad:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !1936
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %5, align 8, !tbaa !21
  br label %bb.br

bb.af:                                            ; preds = %bb.ad
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeImEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !461 ; 5 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dh = load i64, ptr %5, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dh)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ag

common.resume:                                    ; preds = %bb.ac, %bb.bs, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %.pn148.pn.pn, %bb.bs ], [ %.pn.pn.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.di) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.af
  %i.dk = load ptr, ptr %4, align 8, !tbaa !439   ; 2 uses
  %.not185 = icmp eq ptr %i.dk, null
  %i.dl = load i64, ptr %5, align 8, !tbaa !21    ; 4 uses
  %.not222 = icmp eq i64 %i.dl, 0                 ; 2 uses
  br i1 %.not185, label %bb.ah, label %.preheader187

.preheader187:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not222, label %._crit_edge203, label %.lr.ph202

.lr.ph202:                                        ; preds = %.preheader187
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !1085
  %i.dp = load ptr, ptr %12, align 8
  br label %bb.ao

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not222, label %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit, label %.lr.ph213

.lr.ph213:                                        ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.ds = load ptr, ptr %12, align 8              ; 2 uses
  %.pre239 = load i64, ptr %i.dq, align 8, !tbaa !1928
  %.pre240 = load i64, ptr %i.dr, align 8, !tbaa !1929
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !1085
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph213, %.loopexit
  %i.du = phi i64 [ %.pre240, %.lr.ph213 ], [ 0, %.loopexit ] ; 3 uses
  %i.dv = phi i64 [ %.pre239, %.lr.ph213 ], [ %i.ga, %.loopexit ] ; 4 uses
  %.0125211 = phi i64 [ 0, %.lr.ph213 ], [ %.4129, %.loopexit ] ; 8 uses
  %.0135209 = phi i64 [ 0, %.lr.ph213 ], [ %i.fz, %.loopexit ] ; 11 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !670
  %i.dy = zext i16 %i.dx to i64                   ; 2 uses
  %i.dz = sub i64 %i.dy, %i.du                    ; 6 uses
  %i.ea = sub nuw i64 %i.dl, %.0135209            ; 6 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dv
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !21 ; 4 uses
  %i.ed = icmp ugt i64 %i.dz, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !43, !range !54, !noundef !55
  %i.eg = trunc nuw i8 %i.ef to i1                ; 2 uses
  br i1 %i.ed, label %bb.aj, label %bb.ak, !prof !67

bb.aj:                                            ; preds = %bb.ai
  %i.eh = icmp ne i64 %i.dl, %.0135209
  %or.cond = and i1 %i.eh, %i.eg
  br i1 %or.cond, label %.lr.ph217, label %.thread

.lr.ph217:                                        ; preds = %bb.aj
  %i.ei = load ptr, ptr %12, align 8, !tbaa !439  ; 2 uses
  %min.iters.check299 = icmp ult i64 %i.ea, 4
  br i1 %min.iters.check299, label %scalar.ph298.preheader, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph217
  %n.vec302 = and i64 %i.ea, -4                   ; 4 uses
  %i.ej = add i64 %.0125211, %n.vec302            ; 2 uses
  %broadcast.splatinsert303 = insertelement <2 x i64> poison, i64 %i.ec, i64 0
  %broadcast.splat304 = shufflevector <2 x i64> %broadcast.splatinsert303, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = insertelement <2 x i64> poison, i64 %.0135209, i64 0
  %broadcast.splat304.a = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %.0125211
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph300
  %index306 = phi i64 [ 0, %vector.ph300 ], [ %index.next307, %vector.body305 ] ; 5 uses
  %i.el = or disjoint i64 %index306, 1
  %16 = insertelement <2 x i64> poison, i64 %index306, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  %18 = or disjoint <2 x i64> %17, <i64 2, i64 3>
  %i.em = add i64 %index306, %.0135209            ; 2 uses
  %i.en = add i64 %i.el, %.0135209
  %19 = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %i.eo = insertelement <2 x i64> %19, i64 %i.en, i64 1
  %20 = add <2 x i64> %18, %broadcast.splat304.a
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.em ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x i64> %broadcast.splat304, ptr %i.ep, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat304, ptr %i.eq, align 8, !tbaa !21
  %i.er = trunc <2 x i64> %i.eo to <2 x i32>
  %i.es = trunc <2 x i64> %20 to <2 x i32>
  %i.et = getelementptr [4 x i8], ptr %i.ek, i64 %index306 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store <2 x i32> %i.er, ptr %i.et, align 4, !tbaa !3
  store <2 x i32> %i.es, ptr %i.eu, align 4, !tbaa !3
  %index.next307 = add nuw i64 %index306, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.ev, label %middle.block308, label %vector.body305, !llvm.loop !1939

middle.block308:                                  ; preds = %vector.body305
  %cmp.n309 = icmp eq i64 %i.ea, %n.vec302
  br i1 %cmp.n309, label %.thread.loopexit, label %scalar.ph298.preheader

scalar.ph298.preheader:                           ; preds = %.lr.ph217, %middle.block308
  %.0112216.ph = phi i64 [ 0, %.lr.ph217 ], [ %n.vec302, %middle.block308 ]
  %.1126215.ph = phi i64 [ %.0125211, %.lr.ph217 ], [ %i.ej, %middle.block308 ]
  br label %scalar.ph298

scalar.ph298:                                     ; preds = %scalar.ph298.preheader, %scalar.ph298
  %.0112216 = phi i64 [ %i.fb, %scalar.ph298 ], [ %.0112216.ph, %scalar.ph298.preheader ] ; 2 uses
  %.1126215 = phi i64 [ %i.fa, %scalar.ph298 ], [ %.1126215.ph, %scalar.ph298.preheader ] ; 2 uses
  %i.ew = add i64 %.0112216, %.0135209            ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ew
  store i64 %i.ec, ptr %i.ex, align 8, !tbaa !21
  %i.ey = trunc i64 %i.ew to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.1126215
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !3
  %i.fa = add i64 %.1126215, 1                    ; 2 uses
  %i.fb = add nuw i64 %.0112216, 1                ; 2 uses
  %exitcond238.not = icmp eq i64 %i.fb, %i.ea
  br i1 %exitcond238.not, label %.thread.loopexit, label %scalar.ph298, !llvm.loop !1940

.thread.loopexit:                                 ; preds = %scalar.ph298, %middle.block308
  %.lcssa = phi i64 [ %i.ej, %middle.block308 ], [ %i.fa, %scalar.ph298 ]
  %.pre242 = load i64, ptr %i.dr, align 8, !tbaa !1929
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.aj
  %i.fc = phi i64 [ %i.du, %bb.aj ], [ %.pre242, %.thread.loopexit ]
  %.2127 = phi i64 [ %.0125211, %bb.aj ], [ %.lcssa, %.thread.loopexit ]
  %i.fd = add i64 %i.fc, %i.ea
  store i64 %i.fd, ptr %i.dr, align 8, !tbaa !1929
  br label %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fe = icmp ne i64 %i.du, %i.dy
  %or.cond219 = and i1 %i.fe, %i.eg
  br i1 %or.cond219, label %.lr.ph207.preheader, label %.loopexit

.lr.ph207.preheader:                              ; preds = %bb.ak
  %min.iters.check = icmp ult i64 %i.dz, 4
  br i1 %min.iters.check, label %.lr.ph207.preheader313, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph207.preheader
  %n.vec = and i64 %i.dz, -4                      ; 4 uses
  %i.ff = add i64 %.0125211, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ec, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %21 = insertelement <2 x i64> poison, i64 %.0135209, i64 0
  %broadcast.splat.a = shufflevector <2 x i64> %21, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fg = getelementptr [4 x i8], ptr %i.ds, i64 %.0125211
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fh = or disjoint i64 %index, 1
  %22 = insertelement <2 x i64> poison, i64 %index, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  %24 = or disjoint <2 x i64> %23, <i64 2, i64 3>
  %i.fi = add i64 %index, %.0135209               ; 2 uses
  %i.fj = add i64 %i.fh, %.0135209
  %25 = insertelement <2 x i64> poison, i64 %i.fi, i64 0
  %i.fk = insertelement <2 x i64> %25, i64 %i.fj, i64 1
  %26 = add <2 x i64> %24, %broadcast.splat.a
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fi ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.fl, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat, ptr %i.fm, align 8, !tbaa !21
  %i.fn = trunc <2 x i64> %i.fk to <2 x i32>
  %i.fo = trunc <2 x i64> %26 to <2 x i32>
  %i.fp = getelementptr [4 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store <2 x i32> %i.fn, ptr %i.fp, align 4, !tbaa !3
  store <2 x i32> %i.fo, ptr %i.fq, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1941

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph207.preheader313

.lr.ph207.preheader313:                           ; preds = %.lr.ph207.preheader, %middle.block
  %.0111206.ph = phi i64 [ 0, %.lr.ph207.preheader ], [ %n.vec, %middle.block ]
  %.3128205.ph = phi i64 [ %.0125211, %.lr.ph207.preheader ], [ %i.ff, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader313, %.lr.ph207
  %.0111206 = phi i64 [ %i.fx, %.lr.ph207 ], [ %.0111206.ph, %.lr.ph207.preheader313 ] ; 2 uses
  %.3128205 = phi i64 [ %i.fw, %.lr.ph207 ], [ %.3128205.ph, %.lr.ph207.preheader313 ] ; 2 uses
  %i.fs = add i64 %.0111206, %.0135209            ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fs
  store i64 %i.ec, ptr %i.ft, align 8, !tbaa !21
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.3128205
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !3
  %i.fw = add i64 %.3128205, 1                    ; 2 uses
  %i.fx = add nuw i64 %.0111206, 1                ; 2 uses
  %exitcond237.not = icmp eq i64 %i.fx, %i.dz
  br i1 %exitcond237.not, label %.loopexit.loopexit, label %.lr.ph207, !llvm.loop !1942

.loopexit.loopexit:                               ; preds = %.lr.ph207, %middle.block
  %.lcssa281 = phi i64 [ %i.ff, %middle.block ], [ %i.fw, %.lr.ph207 ]
  %.pre241 = load i64, ptr %i.dq, align 8, !tbaa !1928
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ak
  %i.fy = phi i64 [ %i.dv, %bb.ak ], [ %.pre241, %.loopexit.loopexit ]
  %.4129 = phi i64 [ %.0125211, %bb.ak ], [ %.lcssa281, %.loopexit.loopexit ] ; 2 uses
  %i.fz = add i64 %i.dz, %.0135209                ; 2 uses
  %i.ga = add i64 %i.fy, 1                        ; 2 uses
  store i64 %i.ga, ptr %i.dq, align 8, !tbaa !1928
  store i64 0, ptr %i.dr, align 8, !tbaa !1929
  %i.gb = icmp ult i64 %i.fz, %i.dl
  br i1 %i.gb, label %bb.ai, label %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit

._crit_edge203:                                   ; preds = %bb.az, %.preheader187
  %.7132.lcssa = phi i64 [ 0, %.preheader187 ], [ %.8133, %bb.az ] ; 2 uses
  %.0110.lcssa = phi i64 [ 0, %.preheader187 ], [ %i.gt, %bb.az ]
  %i.gc = sub i64 %2, %.0110.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.gc, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge203
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.gd, align 8, !tbaa !1928
  %.promoted11.i = load i64, ptr %i.ge, align 8, !tbaa !1929
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i
  %i.gf = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.gp, %bb.an ] ; 2 uses
  %i.gg = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.gq, %bb.an ] ; 3 uses
  %.010.i = phi i64 [ %i.gc, %.lr.ph.i ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !670
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = sub i64 %i.gj, %i.gf
  %i.gl = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gk) ; 2 uses
  %i.gm = sub i64 %.010.i, %i.gl                  ; 2 uses
  %i.gn = add i64 %i.gl, %i.gf                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gn, %i.gj
  br i1 %.not8.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = add i64 %i.gg, 1                        ; 2 uses
  store i64 %i.go, ptr %i.gd, align 8, !tbaa !1928
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gp = phi i64 [ 0, %bb.am ], [ %i.gn, %bb.al ] ; 2 uses
  %i.gq = phi i64 [ %i.go, %bb.am ], [ %i.gg, %bb.al ]
  %.not.i156 = icmp eq i64 %i.gm, 0
  br i1 %.not.i156, label %._crit_edge.i, label %bb.al, !llvm.loop !1930

._crit_edge.i:                                    ; preds = %bb.an
  store i64 %i.gp, ptr %i.ge, align 8, !tbaa !1929
  br label %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit

bb.ao:                                            ; preds = %.lr.ph202, %bb.az
  %.0109201 = phi i64 [ 0, %.lr.ph202 ], [ %i.hx, %bb.az ] ; 2 uses
  %.0110200 = phi i64 [ 0, %.lr.ph202 ], [ %i.gt, %bb.az ] ; 2 uses
  %.7132199 = phi i64 [ 0, %.lr.ph202 ], [ %.8133, %bb.az ] ; 3 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.0109201
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3  ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 5 uses
  %i.gu = icmp samesign ugt i64 %.0110200, %i.gt
  br i1 %i.gu, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.gv = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.gv, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bt unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ap
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.gx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gy = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.gy) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.at, label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.at, label %bb.bs

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148183 = phi { ptr, i32 } [ %i.gw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.gv) #30
  br label %bb.bs

bb.au:                                            ; preds = %bb.ao
  %i.hb = sub nuw nsw i64 %i.gt, %.0110200        ; 2 uses
  %.not9.i159 = icmp eq i64 %i.hb, 0
  %.pre = load i64, ptr %i.dm, align 8, !tbaa !1928 ; 2 uses
  br i1 %.not9.i159, label %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit167, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.au
  %.promoted11.i162 = load i64, ptr %i.dn, align 8, !tbaa !1929
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.lr.ph.i160
  %i.hc = phi i64 [ %.promoted11.i162, %.lr.ph.i160 ], [ %i.hm, %bb.ax ] ; 2 uses
  %i.hd = phi i64 [ %.pre, %.lr.ph.i160 ], [ %i.hn, %bb.ax ] ; 3 uses
  %.010.i163 = phi i64 [ %i.hb, %.lr.ph.i160 ], [ %i.hj, %bb.ax ] ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !670
  %i.hg = zext i16 %i.hf to i64                   ; 2 uses
  %i.hh = sub i64 %i.hg, %i.hc
  %i.hi = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hh) ; 2 uses
  %i.hj = sub i64 %.010.i163, %i.hi               ; 2 uses
  %i.hk = add i64 %i.hi, %i.hc                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hk, %i.hg
  br i1 %.not8.i164, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hl = add i64 %i.hd, 1                        ; 2 uses
  store i64 %i.hl, ptr %i.dm, align 8, !tbaa !1928
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hm = phi i64 [ 0, %bb.aw ], [ %i.hk, %bb.av ] ; 2 uses
  %i.hn = phi i64 [ %i.hl, %bb.aw ], [ %i.hd, %bb.av ] ; 2 uses
  %.not.i165 = icmp eq i64 %i.hj, 0
  br i1 %.not.i165, label %._crit_edge.i166, label %bb.av, !llvm.loop !1930

._crit_edge.i166:                                 ; preds = %bb.ax
  store i64 %i.hm, ptr %i.dn, align 8, !tbaa !1929
  br label %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit167

_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit167: ; preds = %bb.au, %._crit_edge.i166
  %i.ho = phi i64 [ %.pre, %bb.au ], [ %i.hn, %._crit_edge.i166 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !43, !range !54, !noundef !55
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6duckdb12RLEScanStateImE12SkipInternalEPtm.exit167
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ho
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !21
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.gt
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !21
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.7132199
  store i32 %i.gs, ptr %i.hv, align 4, !tbaa !3
  %i.hw = add i64 %.7132199, 1
end_hunk_2
begin_hunk_3_@_ZN6duckdb9RLEFilterIdEEvRNS_13ColumnSegmentERNS_15ColumnScanStateEmRNS_6VectorERNS_15SelectionVectorERmRKNS_11TableFilterERNS_16TableFilterStateE:bb.a
_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bb, %bb.n ], [ %i.bl, %bb.o ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.p, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !67

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #30
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !234 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bp, align 8, !tbaa !235
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !237
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30, !inline_history !240
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !239
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

bb.u:                                             ; preds = %bb.s
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i4.i = phi i32 [ %i.bs, %bb.t ], [ %i.cc, %bb.u ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i.i4.i, 1
  br i1 %i.cd, label %bb.v, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, !prof !67

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #30
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit:         ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.ad

bb.w:                                             ; preds = %_ZNSt10unique_ptrIA_bSt14default_deleteIS0_EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #30
  br label %bb.ac

bb.x:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.y:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.d
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aa

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %.0123199 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 5 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.3, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123199
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ck
  store i8 1, ptr %i.cl, align 1, !tbaa !43
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123199
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cp
  store i8 1, ptr %i.cq, align 1, !tbaa !43
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123199
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cu
  store i8 1, ptr %i.cv, align 1, !tbaa !43
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0123199
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.cz
  store i8 1, ptr %i.da, align 1, !tbaa !43
  %i.db = add nuw i64 %.0123199, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !2046

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %i.cg, %bb.y ]
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %10) #30
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.aa ], [ %i.cf, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @_ZN6duckdb6VectorD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %8) #30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.ab ], [ %i.ce, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %common.resume

bb.ad:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, %bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !2044
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i64 0, ptr %5, align 8, !tbaa !21
  br label %bb.br

bb.af:                                            ; preds = %bb.ad
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIdEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !461 ; 5 uses
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.dh = load i64, ptr %5, align 8, !tbaa !21
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.dh)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.ag

common.resume:                                    ; preds = %bb.ac, %bb.bs, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.ag ], [ %.pn148.pn.pn, %bb.bs ], [ %.pn.pn.pn.pn.pn, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.af
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.di) #30
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.af
  %i.dk = load ptr, ptr %4, align 8, !tbaa !439   ; 2 uses
  %.not185 = icmp eq ptr %i.dk, null
  %i.dl = load i64, ptr %5, align 8, !tbaa !21    ; 4 uses
  %.not224 = icmp eq i64 %i.dl, 0                 ; 2 uses
  br i1 %.not185, label %bb.ah, label %.preheader187

.preheader187:                                    ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not224, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %.preheader187
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !1085
  %i.dp = load ptr, ptr %12, align 8
  br label %bb.ao

bb.ah:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  br i1 %.not224, label %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit, label %.lr.ph214

.lr.ph214:                                        ; preds = %bb.ah
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.ds = load ptr, ptr %12, align 8              ; 2 uses
  %.promoted = load i64, ptr %i.dq, align 8, !tbaa !2036
  %.promoted216 = load i64, ptr %i.dr, align 8, !tbaa !2037
  %i.dt = load ptr, ptr %i.q, align 8, !tbaa !1085
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph214, %.loopexit
  %i.du = phi i64 [ %.promoted216, %.lr.ph214 ], [ 0, %.loopexit ] ; 3 uses
  %i.dv = phi i64 [ %.promoted, %.lr.ph214 ], [ %i.fy, %.loopexit ] ; 4 uses
  %.0125212 = phi i64 [ 0, %.lr.ph214 ], [ %.4129, %.loopexit ] ; 8 uses
  %.0135210 = phi i64 [ 0, %.lr.ph214 ], [ %i.fx, %.loopexit ] ; 11 uses
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !670
  %i.dy = zext i16 %i.dx to i64                   ; 2 uses
  %i.dz = sub i64 %i.dy, %i.du                    ; 6 uses
  %i.ea = sub nuw i64 %i.dl, %.0135210            ; 6 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.dv
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !1390 ; 4 uses
  %i.ed = icmp ugt i64 %i.dz, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dv
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !43, !range !54, !noundef !55
  %i.eg = trunc nuw i8 %i.ef to i1                ; 2 uses
  br i1 %i.ed, label %bb.aj, label %bb.ak, !prof !67

bb.aj:                                            ; preds = %bb.ai
  %i.eh = icmp ne i64 %i.dl, %.0135210
  %or.cond = and i1 %i.eh, %i.eg
  br i1 %or.cond, label %.lr.ph219, label %.thread

.lr.ph219:                                        ; preds = %bb.aj
  %i.ei = load ptr, ptr %12, align 8, !tbaa !439  ; 2 uses
  %min.iters.check299 = icmp ult i64 %i.ea, 4
  br i1 %min.iters.check299, label %scalar.ph298.preheader, label %vector.ph300

vector.ph300:                                     ; preds = %.lr.ph219
  %n.vec302 = and i64 %i.ea, -4                   ; 4 uses
  %i.ej = add i64 %.0125212, %n.vec302            ; 2 uses
  %broadcast.splatinsert303 = insertelement <2 x double> poison, double %i.ec, i64 0
  %broadcast.splat304 = shufflevector <2 x double> %broadcast.splatinsert303, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %15 = insertelement <2 x i64> poison, i64 %.0135210, i64 0
  %16 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ek = getelementptr [4 x i8], ptr %i.ei, i64 %.0125212
  br label %vector.body305

vector.body305:                                   ; preds = %vector.body305, %vector.ph300
  %index306 = phi i64 [ 0, %vector.ph300 ], [ %index.next307, %vector.body305 ] ; 5 uses
  %i.el = or disjoint i64 %index306, 1
  %17 = insertelement <2 x i64> poison, i64 %index306, i64 0
  %18 = shufflevector <2 x i64> %17, <2 x i64> poison, <2 x i32> zeroinitializer
  %19 = or disjoint <2 x i64> %18, <i64 2, i64 3>
  %i.em = add i64 %index306, %.0135210            ; 2 uses
  %i.en = add i64 %i.el, %.0135210
  %20 = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %i.eo = insertelement <2 x i64> %20, i64 %i.en, i64 1
  %21 = add <2 x i64> %19, %16
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.em ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> %broadcast.splat304, ptr %i.ep, align 8, !tbaa !1390
  store <2 x double> %broadcast.splat304, ptr %i.eq, align 8, !tbaa !1390
  %i.er = trunc <2 x i64> %i.eo to <2 x i32>
  %i.es = trunc <2 x i64> %21 to <2 x i32>
  %i.et = getelementptr [4 x i8], ptr %i.ek, i64 %index306 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store <2 x i32> %i.er, ptr %i.et, align 4, !tbaa !3
  store <2 x i32> %i.es, ptr %i.eu, align 4, !tbaa !3
  %index.next307 = add nuw i64 %index306, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next307, %n.vec302
  br i1 %i.ev, label %middle.block308, label %vector.body305, !llvm.loop !2047

middle.block308:                                  ; preds = %vector.body305
  %cmp.n309 = icmp eq i64 %i.ea, %n.vec302
  br i1 %cmp.n309, label %.thread, label %scalar.ph298.preheader

scalar.ph298.preheader:                           ; preds = %.lr.ph219, %middle.block308
  %.0112218.ph = phi i64 [ 0, %.lr.ph219 ], [ %n.vec302, %middle.block308 ]
  %.1126217.ph = phi i64 [ %.0125212, %.lr.ph219 ], [ %i.ej, %middle.block308 ]
  br label %scalar.ph298

scalar.ph298:                                     ; preds = %scalar.ph298.preheader, %scalar.ph298
  %.0112218 = phi i64 [ %i.fb, %scalar.ph298 ], [ %.0112218.ph, %scalar.ph298.preheader ] ; 2 uses
  %.1126217 = phi i64 [ %i.fa, %scalar.ph298 ], [ %.1126217.ph, %scalar.ph298.preheader ] ; 2 uses
  %i.ew = add i64 %.0112218, %.0135210            ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.ew
  store double %i.ec, ptr %i.ex, align 8, !tbaa !1390
  %i.ey = trunc i64 %i.ew to i32
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.1126217
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !3
  %i.fa = add i64 %.1126217, 1                    ; 2 uses
  %i.fb = add nuw i64 %.0112218, 1                ; 2 uses
  %exitcond242.not = icmp eq i64 %i.fb, %i.ea
  br i1 %exitcond242.not, label %.thread, label %scalar.ph298, !llvm.loop !2048

.thread:                                          ; preds = %scalar.ph298, %middle.block308, %bb.aj
  %.2127 = phi i64 [ %.0125212, %bb.aj ], [ %i.ej, %middle.block308 ], [ %i.fa, %scalar.ph298 ]
  %i.fc = add i64 %i.du, %i.ea
  store i64 %i.fc, ptr %i.dr, align 8, !tbaa !2037
  br label %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fd = icmp ne i64 %i.du, %i.dy
  %or.cond221 = and i1 %i.fd, %i.eg
  br i1 %or.cond221, label %.lr.ph208.preheader, label %.loopexit

.lr.ph208.preheader:                              ; preds = %bb.ak
  %min.iters.check = icmp ult i64 %i.dz, 4
  br i1 %min.iters.check, label %.lr.ph208.preheader312, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph208.preheader
  %n.vec = and i64 %i.dz, -4                      ; 4 uses
  %i.fe = add i64 %.0125212, %n.vec               ; 2 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ec, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %22 = insertelement <2 x i64> poison, i64 %.0135210, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ff = getelementptr [4 x i8], ptr %i.ds, i64 %.0125212
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fg = or disjoint i64 %index, 1
  %24 = insertelement <2 x i64> poison, i64 %index, i64 0
  %25 = shufflevector <2 x i64> %24, <2 x i64> poison, <2 x i32> zeroinitializer
  %26 = or disjoint <2 x i64> %25, <i64 2, i64 3>
  %i.fh = add i64 %index, %.0135210               ; 2 uses
  %i.fi = add i64 %i.fg, %.0135210
  %27 = insertelement <2 x i64> poison, i64 %i.fh, i64 0
  %i.fj = insertelement <2 x i64> %27, i64 %i.fi, i64 1
  %28 = add <2 x i64> %26, %23
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fh ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <2 x double> %broadcast.splat, ptr %i.fk, align 8, !tbaa !1390
  store <2 x double> %broadcast.splat, ptr %i.fl, align 8, !tbaa !1390
  %i.fm = trunc <2 x i64> %i.fj to <2 x i32>
  %i.fn = trunc <2 x i64> %28 to <2 x i32>
  %i.fo = getelementptr [4 x i8], ptr %i.ff, i64 %index ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store <2 x i32> %i.fm, ptr %i.fo, align 4, !tbaa !3
  store <2 x i32> %i.fn, ptr %i.fp, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !2049

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dz, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph208.preheader312

.lr.ph208.preheader312:                           ; preds = %.lr.ph208.preheader, %middle.block
  %.0111207.ph = phi i64 [ 0, %.lr.ph208.preheader ], [ %n.vec, %middle.block ]
  %.3128206.ph = phi i64 [ %.0125212, %.lr.ph208.preheader ], [ %i.fe, %middle.block ]
  br label %.lr.ph208

.lr.ph208:                                        ; preds = %.lr.ph208.preheader312, %.lr.ph208
  %.0111207 = phi i64 [ %i.fw, %.lr.ph208 ], [ %.0111207.ph, %.lr.ph208.preheader312 ] ; 2 uses
  %.3128206 = phi i64 [ %i.fv, %.lr.ph208 ], [ %.3128206.ph, %.lr.ph208.preheader312 ] ; 2 uses
  %i.fr = add i64 %.0111207, %.0135210            ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.fr
  store double %i.ec, ptr %i.fs, align 8, !tbaa !1390
  %i.ft = trunc i64 %i.fr to i32
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %.3128206
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !3
  %i.fv = add i64 %.3128206, 1                    ; 2 uses
  %i.fw = add nuw i64 %.0111207, 1                ; 2 uses
  %exitcond241.not = icmp eq i64 %i.fw, %i.dz
  br i1 %exitcond241.not, label %.loopexit, label %.lr.ph208, !llvm.loop !2050

.loopexit:                                        ; preds = %.lr.ph208, %middle.block, %bb.ak
  %.4129 = phi i64 [ %.0125212, %bb.ak ], [ %i.fe, %middle.block ], [ %i.fv, %.lr.ph208 ] ; 2 uses
  %i.fx = add i64 %i.dz, %.0135210                ; 2 uses
  %i.fy = add i64 %i.dv, 1                        ; 2 uses
  store i64 %i.fy, ptr %i.dq, align 8, !tbaa !2036
  store i64 0, ptr %i.dr, align 8, !tbaa !2037
  %i.fz = icmp ult i64 %i.fx, %i.dl
  br i1 %i.fz, label %bb.ai, label %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit

._crit_edge204:                                   ; preds = %bb.az, %.preheader187
  %.7132.lcssa = phi i64 [ 0, %.preheader187 ], [ %.8133, %bb.az ] ; 2 uses
  %.0110.lcssa = phi i64 [ 0, %.preheader187 ], [ %i.gr, %bb.az ]
  %i.ga = sub i64 %2, %.0110.lcssa                ; 2 uses
  %.not9.i = icmp eq i64 %i.ga, 0
  br i1 %.not9.i, label %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge204
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.promoted.i = load i64, ptr %i.gb, align 8, !tbaa !2036
  %.promoted11.i = load i64, ptr %i.gc, align 8, !tbaa !2037
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %.lr.ph.i
  %i.gd = phi i64 [ %.promoted11.i, %.lr.ph.i ], [ %i.gn, %bb.an ] ; 2 uses
  %i.ge = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.go, %bb.an ] ; 3 uses
  %.010.i = phi i64 [ %i.ga, %.lr.ph.i ], [ %i.gk, %bb.an ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ge
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !670
  %i.gh = zext i16 %i.gg to i64                   ; 2 uses
  %i.gi = sub i64 %i.gh, %i.gd
  %i.gj = call noundef i64 @llvm.umin.i64(i64 %.010.i, i64 %i.gi) ; 2 uses
  %i.gk = sub i64 %.010.i, %i.gj                  ; 2 uses
  %i.gl = add i64 %i.gj, %i.gd                    ; 2 uses
  %.not8.i = icmp ult i64 %i.gl, %i.gh
  br i1 %.not8.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gm = add i64 %i.ge, 1                        ; 2 uses
  store i64 %i.gm, ptr %i.gb, align 8, !tbaa !2036
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gn = phi i64 [ 0, %bb.am ], [ %i.gl, %bb.al ] ; 2 uses
  %i.go = phi i64 [ %i.gm, %bb.am ], [ %i.ge, %bb.al ]
  %.not.i156 = icmp eq i64 %i.gk, 0
  br i1 %.not.i156, label %._crit_edge.i, label %bb.al, !llvm.loop !2038

._crit_edge.i:                                    ; preds = %bb.an
  store i64 %i.gn, ptr %i.gc, align 8, !tbaa !2037
  br label %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit

bb.ao:                                            ; preds = %.lr.ph203, %bb.az
  %.0109202 = phi i64 [ 0, %.lr.ph203 ], [ %i.hv, %bb.az ] ; 2 uses
  %.0110201 = phi i64 [ 0, %.lr.ph203 ], [ %i.gr, %bb.az ] ; 2 uses
  %.7132200 = phi i64 [ 0, %.lr.ph203 ], [ %.8133, %bb.az ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.0109202
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !3  ; 2 uses
  %i.gr = zext i32 %i.gq to i64                   ; 5 uses
  %i.gs = icmp samesign ugt i64 %.0110201, %i.gr
  br i1 %i.gs, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.gt = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.gt, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.bt unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.ap
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gw = load ptr, ptr %13, align 8, !tbaa !63   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.gw) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.at, label %bb.bs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br i1 %.0, label %bb.at, label %bb.bs

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn148183 = phi { ptr, i32 } [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.gt) #30
  br label %bb.bs

bb.au:                                            ; preds = %bb.ao
  %i.gz = sub nuw nsw i64 %i.gr, %.0110201        ; 2 uses
  %.not9.i159 = icmp eq i64 %i.gz, 0
  %.pre = load i64, ptr %i.dm, align 8, !tbaa !2036 ; 2 uses
  br i1 %.not9.i159, label %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit167, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.au
  %.promoted11.i162 = load i64, ptr %i.dn, align 8, !tbaa !2037
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %.lr.ph.i160
  %i.ha = phi i64 [ %.promoted11.i162, %.lr.ph.i160 ], [ %i.hk, %bb.ax ] ; 2 uses
  %i.hb = phi i64 [ %.pre, %.lr.ph.i160 ], [ %i.hl, %bb.ax ] ; 3 uses
  %.010.i163 = phi i64 [ %i.gz, %.lr.ph.i160 ], [ %i.hh, %bb.ax ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !670
  %i.he = zext i16 %i.hd to i64                   ; 2 uses
  %i.hf = sub i64 %i.he, %i.ha
  %i.hg = call noundef i64 @llvm.umin.i64(i64 %.010.i163, i64 %i.hf) ; 2 uses
  %i.hh = sub i64 %.010.i163, %i.hg               ; 2 uses
  %i.hi = add i64 %i.hg, %i.ha                    ; 2 uses
  %.not8.i164 = icmp ult i64 %i.hi, %i.he
  br i1 %.not8.i164, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hj = add i64 %i.hb, 1                        ; 2 uses
  store i64 %i.hj, ptr %i.dm, align 8, !tbaa !2036
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hk = phi i64 [ 0, %bb.aw ], [ %i.hi, %bb.av ] ; 2 uses
  %i.hl = phi i64 [ %i.hj, %bb.aw ], [ %i.hb, %bb.av ] ; 2 uses
  %.not.i165 = icmp eq i64 %i.hh, 0
  br i1 %.not.i165, label %._crit_edge.i166, label %bb.av, !llvm.loop !2038

._crit_edge.i166:                                 ; preds = %bb.ax
  store i64 %i.hk, ptr %i.dn, align 8, !tbaa !2037
  br label %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit167

_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit167: ; preds = %bb.au, %._crit_edge.i166
  %i.hm = phi i64 [ %.pre, %bb.au ], [ %i.hl, %._crit_edge.i166 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !43, !range !54, !noundef !55
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit167
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.hm
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !1390
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.gr
  store double %i.hr, ptr %i.hs, align 8, !tbaa !1390
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.7132200
  store i32 %i.gq, ptr %i.ht, align 4, !tbaa !3
  %i.hu = add i64 %.7132200, 1
  br label %bb.az

bb.az:                                            ; preds = %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit167, %bb.ay
  %.8133 = phi i64 [ %i.hu, %bb.ay ], [ %.7132200, %_ZN6duckdb12RLEScanStateIdE12SkipInternalEPtm.exit167 ] ; 2 uses
  %i.hv = add nuw i64 %.0109202, 1                ; 2 uses
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v2i64
!1016 = !{!1012, !20, i64 8}
!1017 = !{!1012, !20, i64 16}
!1018 = !{!1012, !20, i64 24}
!1019 = !{!1012, !20, i64 32}
!1020 = !{!1012, !20, i64 40}
!1021 = !{!989, !4, i64 84}
!1022 = !{!989, !20, i64 88}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1025, !"_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm: argument 0"}
!1025 = distinct !{!1025, !"_ZN6duckdb11FSSTStorage23CalculateBpDeltaOffsetsElmm"}
!1026 = !{!1012, !20, i64 48}
!1027 = !{!989, !20, i64 104}
!1028 = !{!1029}
!1029 = distinct !{!1029, !1030, !"_ZN6duckdb22make_unsafe_uniq_arrayIjEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm: argument 0"}
!1030 = distinct !{!1030, !"_ZN6duckdb22make_unsafe_uniq_arrayIjEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm"}
!1031 = !{!989, !5, i64 80}
!1032 = !{!989, !20, i64 120}
!1033 = !{!1034}
!1034 = distinct !{!1034, !1035, !"_ZN6duckdb22make_unsafe_uniq_arrayIjEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm: argument 0"}
!1035 = distinct !{!1035, !"_ZN6duckdb22make_unsafe_uniq_arrayIjEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm"}
!1036 = distinct !{!1036, !733}
!1037 = distinct !{!1037, !23}
!1038 = distinct !{!1038, !23}
!1039 = distinct !{!1039, !23}
!1040 = !{!349, !349, i64 0}
!1041 = !{!1042, !20, i64 24}
!1042 = !{!"_ZTSN6duckdb10ArenaChunkE", !794, i64 0, !20, i64 24, !20, i64 32, !342, i64 40, !349, i64 48}
!1043 = !{!1042, !20, i64 32}
!1044 = !{!794, !37, i64 8}
!1045 = distinct !{!1045, !733}
!1046 = distinct !{!1046, !23}
!1047 = !{!1048}
!1048 = distinct !{!1048, !1049, !"_ZN6duckdb9make_uniqINS_9dict_fsst20DictFSSTAnalyzeStateEJRNS_15CompressionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1049 = distinct !{!1049, !"_ZN6duckdb9make_uniqINS_9dict_fsst20DictFSSTAnalyzeStateEJRNS_15CompressionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1050 = !{!1051, !1051, i64 0}
!1051 = !{!"p1 _ZTSN6duckdb9dict_fsst20DictFSSTAnalyzeStateE", !10, i64 0}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1054, !"_ZN6duckdb15unique_ptr_castINS_12AnalyzeStateENS_9dict_fsst20DictFSSTAnalyzeStateEEENS_10unique_ptrIT0_St14default_deleteIS5_ELb1EEENS4_IT_S6_IS9_ELb1EEE: argument 0"}
!1054 = distinct !{!1054, !"_ZN6duckdb15unique_ptr_castINS_12AnalyzeStateENS_9dict_fsst20DictFSSTAnalyzeStateEEENS_10unique_ptrIT0_St14default_deleteIS5_ELb1EEENS4_IT_S6_IS9_ELb1EEE"}
!1055 = !{!1056}
!1056 = distinct !{!1056, !1057, !"_ZN6duckdb9make_uniqINS_9dict_fsst24DictFSSTCompressionStateEJRNS_24ColumnDataCheckpointDataENS_10unique_ptrINS1_20DictFSSTAnalyzeStateESt14default_deleteIS6_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1057 = distinct !{!1057, !"_ZN6duckdb9make_uniqINS_9dict_fsst24DictFSSTCompressionStateEJRNS_24ColumnDataCheckpointDataENS_10unique_ptrINS1_20DictFSSTAnalyzeStateESt14default_deleteIS6_ELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1058 = distinct !{null, null}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1061, !"_ZN6duckdb9make_uniqINS_9dict_fsst25CompressedStringScanStateEJRNS_13ColumnSegmentENS_12BufferHandleEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1061 = distinct !{!1061, !"_ZN6duckdb9make_uniqINS_9dict_fsst25CompressedStringScanStateEJRNS_13ColumnSegmentENS_12BufferHandleEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1062 = !{!1063, !1064, i64 0}
!1063 = !{!"_ZTSSt10_Head_baseILm0EPbLb0EE", !1064, i64 0}
!1064 = !{!"p1 bool", !10, i64 0}
!1065 = !{!1066, !1066, i64 0}
!1066 = !{!"p1 _ZTSN6duckdb9dict_fsst25CompressedStringScanStateE", !10, i64 0}
!1067 = !{!1068, !44, i64 192}
!1068 = !{!"_ZTSN6duckdb9dict_fsst25CompressedStringScanStateE", !568, i64 0, !158, i64 8, !403, i64 16, !377, i64 40, !1069, i64 48, !20, i64 56, !4, i64 64, !5, i64 68, !5, i64 69, !1070, i64 72, !20, i64 88, !4, i64 96, !20, i64 104, !821, i64 112, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !1073, i64 168, !10, i64 184, !44, i64 192, !1077, i64 200}
!1069 = !{!"_ZTSN6duckdb9dict_fsst12DictFSSTModeE", !5, i64 0}
!1070 = !{!"_ZTSN6duckdb10shared_ptrINS_15SelectionVectorELb1EEE", !1071, i64 0}
!1071 = !{!"_ZTSSt10shared_ptrIN6duckdb15SelectionVectorEE", !1072, i64 0}
!1072 = !{!"_ZTSSt12__shared_ptrIN6duckdb15SelectionVectorELN9__gnu_cxx12_Lock_policyE2EE", !431, i64 0, !18, i64 8}
!1073 = !{!"_ZTSN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEE", !1074, i64 0}
!1074 = !{!"_ZTSSt10shared_ptrIN6duckdb17VectorChildBufferEE", !1075, i64 0}
!1075 = !{!"_ZTSSt12__shared_ptrIN6duckdb17VectorChildBufferELN9__gnu_cxx12_Lock_policyE2EE", !1076, i64 0, !18, i64 8}
!1076 = !{!"p1 _ZTSN6duckdb17VectorChildBufferE", !10, i64 0}
!1077 = !{!"_ZTSN6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb0EEE", !1078, i64 0}
!1078 = !{!"_ZTSSt10unique_ptrIA_bSt14default_deleteIS0_EE", !1079, i64 0}
!1079 = !{!"_ZTSSt15__uniq_ptr_dataIbSt14default_deleteIA_bELb1ELb1EE", !1080, i64 0}
!1080 = !{!"_ZTSSt15__uniq_ptr_implIbSt14default_deleteIA_bEE", !1081, i64 0}
!1081 = !{!"_ZTSSt5tupleIJPbSt14default_deleteIA_bEEE", !1082, i64 0}
!1082 = !{!"_ZTSSt11_Tuple_implILm0EJPbSt14default_deleteIA_bEEE", !1063, i64 0}
!1083 = distinct !{null, null}
!1084 = !{!1068, !1069, i64 48}
!1085 = !{!1064, !1064, i64 0}
!1086 = !{!1068, !4, i64 64}
!1087 = !{!1088}
!1088 = distinct !{!1088, !1089, !"_ZN6duckdb22make_unsafe_uniq_arrayIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm: argument 0"}
!1089 = distinct !{!1089, !"_ZN6duckdb22make_unsafe_uniq_arrayIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm"}
!1090 = distinct !{!1090, !733}
!1091 = distinct !{!1091, !23}
!1092 = distinct !{!1092, !23}
!1093 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!1094 = !{!1095}
!1095 = distinct !{!1095, !1096, !"_ZN6duckdb24EmptyValidityCompression14CreateFunctionEv: argument 0"}
!1096 = distinct !{!1096, !"_ZN6duckdb24EmptyValidityCompression14CreateFunctionEv"}
!1097 = distinct !{ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null, null}
!1098 = !{ptr @_ZN6duckdb17ColumnAppendStateD2Ev}
!1099 = distinct !{ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null}
!1100 = distinct !{ptr @_ZN6duckdb25UncompressedCompressStateD2Ev, ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null, null}
!1101 = !{ptr @_ZN6duckdb25UncompressedCompressStateD2Ev, ptr @_ZN6duckdb17ColumnAppendStateD2Ev}
!1102 = distinct !{ptr @_ZN6duckdb25UncompressedCompressStateD2Ev, ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null}
!1103 = !{ptr @_ZN6duckdb25UncompressedCompressStateD2Ev}
!1104 = !{ptr @_ZN6duckdb18ColumnSegmentStateD2Ev}
!1105 = distinct !{null, null, ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null, null}
!1106 = distinct !{null, null, ptr @_ZN6duckdb17ColumnAppendStateD2Ev}
!1107 = distinct !{null, null, ptr @_ZN6duckdb17ColumnAppendStateD2Ev, null}
!1108 = distinct !{!1108, !23}
!1109 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!1110 = distinct !{null, null, null}
!1111 = distinct !{null}
!1112 = distinct !{null, null, null}
!1113 = !{!480, !364, i64 16}
!1114 = distinct !{null, null, null, null, ptr @_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev, null, null, null}
!1115 = distinct !{!1115, !23}
!1116 = !{ptr @_ZN6duckdb22CompressionAppendStateD2Ev}
!1117 = distinct !{!1117, !23}
!1118 = !{!1119}
!1119 = distinct !{!1119, !1120, !"_ZN6duckdb9Exception16ConstructMessageIJjiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1120 = distinct !{!1120, !"_ZN6duckdb9Exception16ConstructMessageIJjiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1121 = !{!1122, !1123, i64 0}
!1122 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !1123, i64 0, !1123, i64 8, !1123, i64 16}
!1123 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !10, i64 0}
!1124 = !{!1122, !1123, i64 8}
!1125 = distinct !{!1125, !23}
!1126 = !{!1127}
!1127 = distinct !{!1127, !1128, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!1128 = distinct !{!1128, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!1129 = !{!1122, !1123, i64 16}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_: argument 0"}
!1132 = distinct !{!1132, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_"}
!1133 = !{!1134}
!1134 = distinct !{!1134, !1135, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!1135 = distinct !{!1135, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!1136 = !{!1137}
!1137 = distinct !{!1137, !1135, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!1138 = !{!1134, !1137}
!1139 = distinct !{!1139, !23}
!1140 = !{!1141}
!1141 = distinct !{!1141, !1142, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!1142 = distinct !{!1142, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_"}
!1143 = !{!1144}
!1144 = distinct !{!1144, !1142, !"_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!1145 = !{!1141, !1144}
!1146 = !{!1147}
!1147 = distinct !{!1147, !1148, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_: argument 0"}
!1148 = distinct !{!1148, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIiEES0_RKT_"}
!1149 = !{!752, !20, i64 80}
!1150 = !{!752, !20, i64 56}
!1151 = !{!752, !20, i64 256}
!1152 = !{!752, !4, i64 264}
!1153 = !{!752, !20, i64 328}
!1154 = !{!752, !20, i64 320}
!1155 = !{!762, !4, i64 8}
!1156 = !{!760, !20, i64 0}
!1157 = !{!762, !20, i64 0}
!1158 = !{!1159, !5, i64 0}
!1159 = !{!"_ZTSN6duckdb26ZSTDCompressionBufferFlagsE", !5, i64 0}
!1160 = !{!752, !44, i64 296}
!1161 = !{!779, !10, i64 0}
!1162 = !{!779, !20, i64 8}
!1163 = !{!779, !20, i64 16}
!1164 = !{!752, !20, i64 272}
!1165 = !{!752, !20, i64 248}
!1166 = !{!752, !20, i64 280}
!1167 = !{!752, !13, i64 336}
!1168 = !{!752, !433, i64 344}
!1169 = !{!752, !13, i64 360}
!1170 = !{!752, !13, i64 352}
!1171 = !{!1172, !1172, i64 0}
!1172 = !{!"p1 _ZTSN6duckdb31ZSTDCompressionBufferCollection10BufferDataE", !10, i64 0}
!1173 = !{!1174, !1175, i64 8}
!1174 = !{!"_ZTSN6duckdb31ZSTDCompressionBufferCollection10BufferDataE", !378, i64 0, !1175, i64 8, !1176, i64 16}
!1175 = !{!"p1 _ZTSN6duckdb26ZSTDCompressionBufferStateE", !10, i64 0}
!1176 = !{!"_ZTSN6duckdb31ZSTDCompressionBufferCollection4SlotE", !5, i64 0}
!1177 = !{i64 4}
!1178 = !{!1174, !1176, i64 16}
!1179 = !{!1174, !378, i64 0}
!1180 = !{!378, !378, i64 0}
!1181 = !{!1182, !1175, i64 0}
!1182 = !{!"_ZTSN6duckdb12optional_ptrINS_26ZSTDCompressionBufferStateELb1EEE", !1175, i64 0}
!1183 = !{!1184, !44, i64 8}
!1184 = !{!"_ZTSN6duckdb26ZSTDCompressionBufferStateE", !1159, i64 0, !4, i64 4, !44, i64 8}
!1185 = !{!752, !208, i64 32}
!1186 = distinct !{null}
!1187 = !{!1184, !4, i64 4}
!1188 = !{!1189, !1172, i64 0}
!1189 = !{!"_ZTSNSt12_Vector_baseIN6duckdb31ZSTDCompressionBufferCollection10BufferDataESaIS2_EE17_Vector_impl_dataE", !1172, i64 0, !1172, i64 8, !1172, i64 16}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1192, !"_ZN6duckdb9Exception16ConstructMessageIJjmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1192 = distinct !{!1192, !"_ZN6duckdb9Exception16ConstructMessageIJjmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1193 = !{!752, !20, i64 88}
!1194 = !{!752, !20, i64 64}
!1195 = !{!752, !20, i64 72}
!1196 = !{!752, !20, i64 96}
!1197 = !{!752, !10, i64 232}
!1198 = !{!752, !20, i64 240}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1201, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!1201 = distinct !{!1201, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!1202 = !{!752, !146, i64 24}
!1203 = !{!752, !132, i64 40}
!1204 = !{!763, !20, i64 0}
!1205 = !{!763, !20, i64 8}
!1206 = !{!763, !13, i64 16}
!1207 = !{!763, !433, i64 24}
!1208 = !{!763, !13, i64 32}
!1209 = !{!763, !13, i64 40}
!1210 = !{!1211}
!1211 = distinct !{!1211, !1212, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1212 = distinct !{!1212, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1213 = !{!1214}
!1214 = distinct !{!1214, !1215, !"_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1215 = distinct !{!1215, !"_ZN6duckdb9Exception16ConstructMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1216 = !{!1189, !1172, i64 8}
!1217 = !{i64 0, i64 8, !1180, i64 8, i64 8, !1218, i64 16, i64 1, !1219}
!1218 = !{!1175, !1175, i64 0}
!1219 = !{!1176, !1176, i64 0}
!1220 = !{!1221, !1223}
!1221 = distinct !{!1221, !1222, !"_ZSt19__relocate_object_aIN6duckdb31ZSTDCompressionBufferCollection10BufferDataES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1222 = distinct !{!1222, !"_ZSt19__relocate_object_aIN6duckdb31ZSTDCompressionBufferCollection10BufferDataES2_SaIS2_EEvPT_PT0_RT1_"}
!1223 = distinct !{!1223, !1222, !"_ZSt19__relocate_object_aIN6duckdb31ZSTDCompressionBufferCollection10BufferDataES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1224 = distinct !{!1224, !23}
!1225 = !{!1189, !1172, i64 16}
!1226 = !{!1227, !1229}
!1227 = distinct !{!1227, !1228, !"_ZSt19__relocate_object_aIN6duckdb31ZSTDCompressionBufferCollection10BufferDataES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1228 = distinct !{!1228, !"_ZSt19__relocate_object_aIN6duckdb31ZSTDCompressionBufferCollection10BufferDataES2_SaIS2_EEvPT_PT0_RT1_"}
!1229 = distinct !{!1229, !1228, !"_ZSt19__relocate_object_aIN6duckdb31ZSTDCompressionBufferCollection10BufferDataES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1230 = distinct !{!1230, !23}
!1231 = !{!1232}
!1232 = distinct !{!1232, !1233, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!1233 = distinct !{!1233, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!1234 = !{!1235, !529, i64 8}
!1235 = !{!"_ZTSN6duckdb12BlockManagerE", !529, i64 8, !44, i64 16, !108, i64 24, !1236, i64 64, !1238, i64 120, !721, i64 128, !721, i64 136}
!1236 = !{!"_ZTSSt13unordered_mapIlN6duckdb8weak_ptrINS0_11BlockHandleELb1EEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE", !1237, i64 0}
!1237 = !{!"_ZTSSt10_HashtableIlSt4pairIKlN6duckdb8weak_ptrINS2_11BlockHandleELb1EEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !361, i64 0, !20, i64 8, !363, i64 16, !20, i64 24, !365, i64 32, !364, i64 48}
!1238 = !{!"_ZTSN6duckdb10unique_ptrINS_15MetadataManagerESt14default_deleteIS1_ELb1EEE", !1239, i64 0}
!1239 = !{!"_ZTSSt10unique_ptrIN6duckdb15MetadataManagerESt14default_deleteIS1_EE", !1240, i64 0}
!1240 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb15MetadataManagerESt14default_deleteIS1_ELb1ELb1EE", !1241, i64 0}
!1241 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb15MetadataManagerESt14default_deleteIS1_EE", !1242, i64 0}
!1242 = !{!"_ZTSSt5tupleIJPN6duckdb15MetadataManagerESt14default_deleteIS1_EEE", !1243, i64 0}
!1243 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb15MetadataManagerESt14default_deleteIS1_EEE", !1244, i64 0}
!1244 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb15MetadataManagerELb0EE", !1245, i64 0}
!1245 = !{!"p1 _ZTSN6duckdb15MetadataManagerE", !10, i64 0}
!1246 = !{!1247}
!1247 = distinct !{!1247, !1248, !"_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_: argument 0"}
!1248 = distinct !{!1248, !"_ZN6duckdb9Exception16ConstructMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_DpRKT_"}
!1249 = !{!1250}
!1250 = distinct !{!1250, !1251, !"_ZN6duckdb9Exception16ConstructMessageIJhhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1251 = distinct !{!1251, !"_ZN6duckdb9Exception16ConstructMessageIJhhEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1252 = !{!1253}
!1253 = distinct !{!1253, !1254, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_: argument 0"}
!1254 = distinct !{!1254, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_"}
!1255 = !{!1256}
!1256 = distinct !{!1256, !1257, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_: argument 0"}
!1257 = distinct !{!1257, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIhEES0_RKT_"}
!1258 = !{!772, !20, i64 0}
!1259 = !{!1260}
!1260 = distinct !{!1260, !1261, !"_ZN6duckdb9make_uniqINS_19ZSTDVectorScanStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1261 = distinct !{!1261, !"_ZN6duckdb9make_uniqINS_19ZSTDVectorScanStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1262 = !{!1263}
!1263 = distinct !{!1263, !1264, !"_ZN6duckdb13ZSTDScanState17GetVectorMetadataEm: argument 0"}
!1264 = distinct !{!1264, !"_ZN6duckdb13ZSTDScanState17GetVectorMetadataEm"}
!1265 = !{!773, !20, i64 8}
!1266 = !{!784, !473, i64 8}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"_ZN6duckdb13ZSTDScanState8LoadPageEl: argument 0"}
!1269 = distinct !{!1269, !"_ZN6duckdb13ZSTDScanState8LoadPageEl"}
!1270 = !{!784, !96, i64 16}
!1271 = !{!778, !378, i64 16}
!1272 = !{!773, !4, i64 16}
!1273 = !{!773, !20, i64 40}
!1274 = !{!772, !433, i64 80}
!1275 = !{!772, !37, i64 72}
!1276 = !{!772, !10, i64 104}
!1277 = !{!772, !20, i64 120}
!1278 = !{!772, !4, i64 16}
!1279 = !{!772, !20, i64 32}
!1280 = !{!784, !158, i64 128}
!1281 = !{!773, !20, i64 32}
!1282 = !{!772, !20, i64 112}
!1283 = distinct !{!1283, !23, !1284, !1285}
!1284 = !{!"llvm.loop.isvectorized", i32 1}
!1285 = !{!"llvm.loop.unroll.runtime.disable"}
!1286 = distinct !{!1286, !23, !1285, !1284}
!1287 = !{i64 0, i64 12, !239}
!1288 = distinct !{!1288, !23}
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!1291 = distinct !{!1291, !"_ZN6duckdb9Allocator8AllocateEm"}
!1292 = distinct !{!1292, !23, !1284, !1285}
!1293 = distinct !{!1293, !23, !1285, !1284}
!1294 = !{!794, !20, i64 16}
!1295 = distinct !{!1295, !23}
!1296 = distinct !{!1296, !23}
!1297 = !{!761, !10, i64 0}
!1298 = !{!761, !20, i64 16}
!1299 = !{!761, !20, i64 8}
!1300 = !{!772, !20, i64 96}
!1301 = !{!1302}
!1302 = distinct !{!1302, !1303, !"_ZN6duckdb13ZSTDScanState8LoadPageEl: argument 0"}
!1303 = distinct !{!1303, !"_ZN6duckdb13ZSTDScanState8LoadPageEl"}
!1304 = !{!1305}
!1305 = distinct !{!1305, !1306, !"_ZN6duckdb9Exception16ConstructMessageIJmjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1306 = distinct !{!1306, !"_ZN6duckdb9Exception16ConstructMessageIJmjjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1309, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_: argument 0"}
!1309 = distinct !{!1309, !"_ZN6duckdb20ExceptionFormatValue17CreateFormatValueIjEES0_RKT_"}
!1310 = !{!945, !4, i64 68}
!1311 = distinct !{!1311, !23}
!1312 = !{!945, !132, i64 24}
!1313 = distinct !{!1313, !23}
!1314 = distinct !{!1314, !23, !1284, !1285}
!1315 = !{!"branch_weights", i32 8, i32 24}
!1316 = distinct !{!1316, !23, !1284, !1285}
!1317 = distinct !{!1317, !733}
!1318 = distinct !{!1318, !23, !1284}
!1319 = distinct !{!1319, !23}
!1320 = !{!1321, !5, i64 8}
!1321 = !{!"_ZTS21duckdb_fsst_decoder_t", !1322, i64 0, !5, i64 8, !5, i64 9, !5, i64 264}
!1322 = !{!"long long", !5, i64 0}
!1323 = !{!1324}
!1324 = distinct !{!1324, !1325, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1325 = distinct !{!1325, !"_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!1326 = !{!1075, !1076, i64 0}
!1327 = !{!1328, !1330}
!1328 = distinct !{!1328, !1329, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!1329 = distinct !{!1329, !"_ZSt11make_sharedIN6duckdb13SelectionDataEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!1330 = distinct !{!1330, !1331, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!1331 = distinct !{!1331, !"_ZN6duckdb15make_shared_ptrINS_13SelectionDataEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!1332 = !{!1330}
!1333 = distinct !{null, null, null, null}
!1334 = !{!437, !437, i64 0}
!1335 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!1336 = !{!436, !437, i64 0}
!1337 = !{!1338, !37, i64 8}
!1338 = !{!"_ZTSSt9type_info", !37, i64 8}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1341, !"_ZN6duckdb9make_uniqINS_24EmptyValidityCompression29EmptyValidityCompressionStateEJRNS_24ColumnDataCheckpointDataERNS_15CompressionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1341 = distinct !{!1341, !"_ZN6duckdb9make_uniqINS_24EmptyValidityCompression29EmptyValidityCompressionStateEJRNS_24ColumnDataCheckpointDataERNS_15CompressionInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1342 = !{!1343, !132, i64 0}
!1343 = !{!"_ZTSN6duckdb12optional_ptrIKNS_19CompressionFunctionELb1EEE", !132, i64 0}
!1344 = distinct !{!1344, !23}
!1345 = distinct !{!1345, !23}
!1346 = !{!1347, !20, i64 40}
!1347 = !{!"_ZTSN6duckdb24EmptyValidityCompression29EmptyValidityCompressionStateE", !150, i64 0, !1343, i64 16, !146, i64 24, !20, i64 32, !20, i64 40}
!1348 = !{!1347, !20, i64 32}
!1349 = !{!1347, !146, i64 24}
!1350 = !{!1351}
!1351 = distinct !{!1351, !1352, !"_ZN6duckdb9make_uniqINS_24EmptyValidityCompression29EmptyValiditySegmentScanStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1352 = distinct !{!1352, !"_ZN6duckdb9make_uniqINS_24EmptyValidityCompression29EmptyValiditySegmentScanStateEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1353 = distinct !{null, null, null, null, null}
!1354 = !{!1355}
!1355 = distinct !{!1355, !1356, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!1356 = distinct !{!1356, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!1357 = !{!1358, !1355}
!1358 = distinct !{!1358, !1359, !"_ZSt11make_sharedIN6duckdb21TemplatedValidityDataImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!1359 = distinct !{!1359, !"_ZSt11make_sharedIN6duckdb21TemplatedValidityDataImEEJRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!1360 = !{!1361, !13, i64 0}
!1361 = !{!"_ZTSSt10_Head_baseILm0EPmLb0EE", !13, i64 0}
!1362 = !{!16, !17, i64 0}
!1363 = distinct !{null, null, null, null}
!1364 = !{!32, !32, i64 0}
!1365 = !{!1366}
!1366 = distinct !{!1366, !1367, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!1367 = distinct !{!1367, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!1368 = distinct !{!1368, !23, !1284, !1285}
!1369 = !{!"branch_weights", i32 4, i32 12}
!1370 = distinct !{!1370, !23, !1284, !1285}
!1371 = distinct !{!1371, !23, !1285, !1284}
!1372 = distinct !{!1372, !23, !1284, !1285}
!1373 = distinct !{!1373, !23, !1285, !1284}
!1374 = distinct !{!1374, !23, !1284, !1285}
!1375 = distinct !{!1375, !23, !1285, !1284}
!1376 = distinct !{!1376, !23, !1284, !1285}
!1377 = distinct !{!1377, !23, !1284, !1285}
!1378 = distinct !{!1378, !23, !1285, !1284}
!1379 = distinct !{!1379, !23, !1284, !1285}
!1380 = distinct !{!1380, !23, !1285, !1284}
!1381 = distinct !{!1381, !23, !1284, !1285}
!1382 = distinct !{!1382, !23, !1285, !1284}
!1383 = distinct !{!1383, !23}
!1384 = distinct !{!1384, !733}
!1385 = distinct !{!1385, !23}
!1386 = distinct !{!1386, !733}
!1387 = !{!366, !366, i64 0}
!1388 = distinct !{!1388, !23, !1284, !1285}
!1389 = distinct !{!1389, !23, !1285, !1284}
!1390 = !{!1391, !1391, i64 0}
!1391 = !{!"double", !5, i64 0}
!1392 = distinct !{!1392, !23, !1284, !1285}
!1393 = distinct !{!1393, !23, !1285, !1284}
!1394 = !{ptr @_ZN6duckdb18FixedSizeScanStateD2Ev}
!1395 = !{!1396}
!1396 = distinct !{!1396, !1397, !"_ZN6duckdb9make_uniqINS_22CompressionAppendStateEJNS_12BufferHandleEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!1397 = distinct !{!1397, !"_ZN6duckdb9make_uniqINS_22CompressionAppendStateEJNS_12BufferHandleEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!1398 = distinct !{!1398, !23}
!1399 = distinct !{!1399, !23}
!1400 = !{!430, !32, i64 72}
!1401 = !{!1402}
!1402 = distinct !{!1402, !1403, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_: argument 0"}
!1403 = distinct !{!1403, !"_ZN6duckdb9Exception16ConstructMessageIJNS_12PhysicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_"}
!1404 = distinct !{!1404, !23}
!1405 = distinct !{!1405, !23}
!1406 = distinct !{!1406, !23}
!1407 = distinct !{!1407, !23}
!1408 = distinct !{!1408, !23}
!1409 = distinct !{!1409, !23}
!1410 = distinct !{!1410, !23}
!1411 = distinct !{!1411, !23}
!1412 = distinct !{!1412, !23}
!1413 = distinct !{!1413, !23}
!1414 = distinct !{!1414, !23}
!1415 = distinct !{!1415, !23}
!1416 = distinct !{!1416, !23}
!1417 = distinct !{!1417, !23}
!1418 = distinct !{!1418, !23}
end_hunk_4
