inline.NumInlined: 761
inline.NumDeleted: 342
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal10LogMessage43CopyToEncodedBufferWithStructuredProtoFieldILNS2_10StringTypeE1EEEvNS1_20StructuredProtoFieldESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

_ZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit: ; preds = %bb.c, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, %bb.d, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i13.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i, %bb.f, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i25.i.i.i
  %.0.i.i.i = phi i64 [ %i.q, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i13.i.i.i ], [ %i.l, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.w, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i ], [ 11, %bb.c ], [ 9, %bb.d ], [ 5, %bb.f ], [ %i.ab, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i25.i.i.i ]
  %i.ac = add i64 %2, 11
  %i.ad = add i64 %i.ac, %.0.i.i.i
  %i.ae = call { ptr, i64 } @_ZN4absl12lts_2025051212log_internal18EncodeMessageStartEmmPNS0_4SpanIcEE(i64 noundef 7, i64 noundef %i.ad, ptr noundef nonnull %4) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal26EncodeStructuredProtoFieldENS1_20StructuredProtoFieldERNS0_4SpanIcEE(ptr noundef nonnull byval(%"struct.absl::lts_20250512::log_internal::StructuredProtoField") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.ah, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !7   ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15560 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 560
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !32
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ai), !inline_history !45
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !7   ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43
  %i.an = icmp eq ptr %.pre21, null
  br i1 %i.an, label %bb.i, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 560
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %.pre, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i6, align 8, !tbaa !32
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre), !inline_history !45
  br label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7: ; preds = %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, %bb.i
  %i.aq = phi ptr [ %.pre, %bb.i ], [ %.pre, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5 ], [ %i.ai, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15568
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !47
  %i.av = sub i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !47
  br label %bb.o

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit
  %i.aw = call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal19EncodeBytesTruncateEmNS0_4SpanIKcEEPNS2_IcEE(i64 noundef 1, ptr %3, i64 %2, ptr noundef nonnull %4)
  br i1 %i.aw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !7   ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15560 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9: ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 560
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i8, align 8, !tbaa !32
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ax), !inline_history !45
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !7 ; 7 uses
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %.pre24 = load ptr, ptr %.phi.trans.insert23, align 8, !tbaa !43
  %i.bc = icmp eq ptr %.pre24, null
  br i1 %i.bc, label %bb.l, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %i.be = getelementptr inbounds nuw i8, ptr %.pre22, i64 560
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !32
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre22), !inline_history !45
  br label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11: ; preds = %bb.k, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, %bb.l
  %i.bf = phi ptr [ %.pre22, %bb.l ], [ %.pre22, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9 ], [ %i.ax, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15568
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !47
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !47
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  call void @_ZN4absl12lts_2025051212log_internal19EncodeMessageLengthENS0_4SpanIcEEPKS3_(ptr %i.af, i64 %i.ag, ptr noundef nonnull %4)
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !7   ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15560 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.n, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 560
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.bl, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i12, align 8, !tbaa !32
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.bl), !inline_history !45
  br label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13: ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !46
  br label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal19EncodeBytesTruncateEmNS0_4SpanIKcEEPNS2_IcEE(i64 noundef, ptr, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

declare noundef i64 @_ZN4absl12lts_2025051216strings_internal10WideToUtf8EwPcRNS1_10ShiftStateE(i32 noundef signext, ptr noundef, ptr noundef nonnull align 1 dereferenceable(2)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal12EncodeVarintEmmPNS0_4SpanIcEE(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZN4absl12lts_2025051212log_internal13FlushLogSinksEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #23

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #24

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !32, !noalias !140 ; 4 uses
  %i.b = trunc i64 %i.a to i1                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !noalias !140 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !140 ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 7 uses
  %i.g = shl i64 %i.f, 1
  %i.h = select i1 %i.b, i64 %i.g, i64 32         ; 4 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.j, label %.noexc, label %.noexc13

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc13:                                         ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.a
  %i.k = shl nuw nsw i64 %i.h, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #30 ; 9 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sink1.i ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !118
  store ptr %i.n, ptr %i.m, align 8, !tbaa !118
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  %i.o = ptrtoaddr ptr %i.l to i64
  %.sink2.i = select i1 %i.b, ptr %i.d, ptr %i.c  ; 4 uses
  %min.iters.check = icmp ult i64 %i.a, 12
  %.sink2.i30 = ptrtoaddr ptr %.sink2.i to i64
  %i.p = sub i64 %i.o, %.sink2.i30
  %diff.check = icmp ult i64 %i.p, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.sink1.i, 9223372036854775804 ; 4 uses
  %i.q = shl i64 %n.vec, 3
  %i.r = getelementptr i8, ptr %.sink2.i, i64 %i.q
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sink2.i, i64 %i.s ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !118
  %wide.load31 = load <2 x ptr>, ptr %i.u, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x ptr> %wide.load, ptr %i.t, align 8, !tbaa !118
  store <2 x ptr> %wide.load31, ptr %i.v, align 8, !tbaa !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sink1.i, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i.preheader33

.lr.ph.i.preheader33:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi ptr [ %.sink2.i, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %xtraiter = and i64 %.sink1.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader33, %.lr.ph.i.prol
  %.012.i.prol = phi i64 [ %i.ab, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %i.x = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader33 ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i.prol
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !118
  store ptr %i.z, ptr %i.y, align 8, !tbaa !118
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = add nuw nsw i64 %.012.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !146

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader33
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader33 ], [ %i.ab, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.preheader33 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ac = sub nsw i64 %.012.i.ph, %.sink1.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.au, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ae = phi ptr [ %i.at, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !118
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !118
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !118
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !118
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !118
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = add nuw nsw i64 %.012.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.au, %.sink1.i
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !148

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit
  %i.av = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.av) #28
  %.pre = load i64, ptr %0, align 8, !tbaa !32
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit
  %i.aw = phi i64 [ %.pre, %bb.c ], [ %i.a, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit ]
  store ptr %i.l, ptr %i.c, align 8, !tbaa !20
  store i64 %i.h, ptr %i.e, align 8, !tbaa !20
  %i.ax = or i64 %i.aw, 1
  %i.ay = add i64 %i.ax, 2
  store i64 %i.ay, ptr %0, align 8, !tbaa !32
  ret ptr %i.m
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIyEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #23

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekoffElSt12_Ios_SeekdirSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i32 noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare { i64, i64 } @_ZNSt15basic_streambufIcSt11char_traitsIcEE7seekposESt4fposI11__mbstate_tESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(64), i64, i64, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { cold }
attributes #32 = { noreturn }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !9, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!11, !8, i64 64}
!11 = !{!"_ZTSN4absl12lts_2025051212log_internal10LogMessage11OstreamViewE", !12, i64 0, !8, i64 64, !16, i64 72, !16, i64 88, !16, i64 104}
!12 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !14, i64 56}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"_ZTSSt6locale", !15, i64 0}
end_hunk_0
