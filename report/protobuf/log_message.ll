Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/log_message?download=true
inline.NumInlined: 761
inline.NumDeleted: 342
begin_hunk_0_@_ZN4absl12lts_2025051212log_internal10LogMessage43CopyToEncodedBufferWithStructuredProtoFieldILNS2_10StringTypeE1EEEvNS1_20StructuredProtoFieldESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %accumulator.tr2.i.i.i.i.i.i18.i.i.i = phi i64 [ %i.t, %tailrecurse.i.i.i.i.i.i16.i.i.i ], [ 0, %tailrecurse.i.i.preheader.i.i.i.i15.i.i.i ] ; 2 uses
  %i.s = lshr i64 %.tr3.i.i.i.i.i.i17.i.i.i, 7
  %i.t = add nuw nsw i64 %accumulator.tr2.i.i.i.i.i.i18.i.i.i, 1
  %i.u = icmp ult i64 %.tr3.i.i.i.i.i.i17.i.i.i, 16384
  br i1 %i.u, label %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i, label %tailrecurse.i.i.i.i.i.i16.i.i.i

tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i: ; preds = %tailrecurse.i.i.i.i.i.i16.i.i.i
  %i.v = add nuw i64 %accumulator.tr2.i.i.i.i.i.i18.i.i.i, 12
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i, %bb.e
  %accumulator.tr.lcssa.i.i.i.i.i.i20.i.i.i = phi i64 [ 11, %bb.e ], [ %i.v, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i ]
  %i.w = add i64 %accumulator.tr.lcssa.i.i.i.i.i.i20.i.i.i, %.sroa.318.0.copyload
  br label %_ZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit
  br i1 %i.h, label %_ZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit, label %tailrecurse.i.i.preheader.i.i.i.i21.i.i.i

tailrecurse.i.i.preheader.i.i.i.i21.i.i.i:        ; preds = %bb.f
  %i.x = or disjoint i64 %i.g, 5
  br label %tailrecurse.i.i.i.i.i.i22.i.i.i

tailrecurse.i.i.i.i.i.i22.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i22.i.i.i, %tailrecurse.i.i.preheader.i.i.i.i21.i.i.i
  %.tr3.i.i.i.i.i.i23.i.i.i = phi i64 [ %i.y, %tailrecurse.i.i.i.i.i.i22.i.i.i ], [ %i.x, %tailrecurse.i.i.preheader.i.i.i.i21.i.i.i ] ; 2 uses
  %accumulator.tr2.i.i.i.i.i.i24.i.i.i = phi i64 [ %i.z, %tailrecurse.i.i.i.i.i.i22.i.i.i ], [ 0, %tailrecurse.i.i.preheader.i.i.i.i21.i.i.i ] ; 2 uses
  %i.y = lshr i64 %.tr3.i.i.i.i.i.i23.i.i.i, 7
  %i.z = add nuw nsw i64 %accumulator.tr2.i.i.i.i.i.i24.i.i.i, 1
  %i.aa = icmp ult i64 %.tr3.i.i.i.i.i.i23.i.i.i, 16384
  br i1 %i.aa, label %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i25.i.i.i, label %tailrecurse.i.i.i.i.i.i22.i.i.i

tailrecurse._crit_edge.loopexit.i.i.i.i.i.i25.i.i.i: ; preds = %tailrecurse.i.i.i.i.i.i22.i.i.i
  %i.ab = add nuw i64 %accumulator.tr2.i.i.i.i.i.i24.i.i.i, 6
  br label %_ZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit
  unreachable

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
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !12  ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15560 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 560
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ai), !inline_history !0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12  ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41
  %i.an = icmp eq ptr %.pre21, null
  br i1 %i.an, label %bb.i, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 560
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %.pre, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i6, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre), !inline_history !0
  br label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7: ; preds = %bb.h, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, %bb.i
  %i.aq = phi ptr [ %.pre, %bb.i ], [ %.pre, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5 ], [ %i.ai, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15568
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  %i.av = sub i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !44
  br label %bb.o

bb.j:                                             ; preds = %_ZN4absl12lts_2025051212log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit
  %i.aw = call noundef zeroext i1 @_ZN4absl12lts_2025051212log_internal19EncodeBytesTruncateEmNS0_4SpanIKcEEPNS2_IcEE(i64 noundef 1, ptr %3, i64 %2, ptr noundef nonnull %4)
  br i1 %i.aw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !12  ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15560 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !41
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9: ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 560
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i8, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ax), !inline_history !0
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !12 ; 7 uses
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %.pre24 = load ptr, ptr %.phi.trans.insert23, align 8, !tbaa !41
  %i.bc = icmp eq ptr %.pre24, null
  br i1 %i.bc, label %bb.l, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

bb.l:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %i.be = getelementptr inbounds nuw i8, ptr %.pre22, i64 560
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre22), !inline_history !0
  br label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11: ; preds = %bb.k, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, %bb.l
  %i.bf = phi ptr [ %.pre22, %bb.l ], [ %.pre22, %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9 ], [ %i.ax, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15568
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !44
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !44
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  call void @_ZN4absl12lts_2025051212log_internal19EncodeMessageLengthENS0_4SpanIcEEPKS3_(ptr %i.af, i64 %i.ag, ptr noundef nonnull %4)
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !12  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15560 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.n, label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 560
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !42
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.bl, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i12, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.bl), !inline_history !0
  br label %_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

_ZN4absl12lts_2025051212log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13: ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !43
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
  %i.a = load i64, ptr %0, align 8, !tbaa !35, !noalias !144 ; 3 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !144
  %.sink1.i = lshr i64 %i.a, 1                    ; 5 uses
  %i.f = shl i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.f, i64 32         ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i, !prof !87

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %.noexc, label %.noexc13

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc13:                                         ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.c, align 8, !noalias !144
  %i.k = shl nuw nsw i64 %i.g, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #30 ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sink1.i ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !86
  store ptr %i.n, ptr %i.m, align 8, !tbaa !86
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  %.sink2.i = select i1 %i.b, ptr %i.j, ptr %i.c  ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.sink1.i, 9223372036854775804 ; 4 uses
  %i.o = shl i64 %n.vec, 3
  %i.p = getelementptr i8, ptr %.sink2.i, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sink2.i, i64 %i.q ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !86
  %wide.load31 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !86
  store <2 x ptr> %wide.load31, ptr %i.t, align 8, !tbaa !86
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %.lr.ph.i.prol, label %vector.body, !llvm.loop !142

.lr.ph.i.prol:                                    ; preds = %vector.body
  %prol.iter.cmp.not = icmp eq i64 %.sink1.i, %n.vec
  br i1 %prol.iter.cmp.not, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.unr = phi ptr [ %.sink2.i, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.012.i.unr = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %.lr.ph.i.prol ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.v = phi ptr [ %i.y, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.012.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !86
  store ptr %i.x, ptr %i.w, align 8, !tbaa !86
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = add nuw nsw i64 %.012.i, 1               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.z, %.sink1.i
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !143

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.prol, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  %i.aa = load i64, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #28
  %.pre = load i64, ptr %0, align 8, !tbaa !35
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit
  %i.af = phi i64 [ %.pre, %bb.c ], [ %i.aa, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit ]
  store ptr %i.l, ptr %i.c, align 8, !tbaa !23
  store i64 %i.g, ptr %i.d, align 8, !tbaa !23
  %i.ag = or i64 %i.af, 1
  %i.ah = add i64 %i.ag, 2
  store i64 %i.ah, ptr %0, align 8, !tbaa !35
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

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !70}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 _ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!15 = !{!"_ZTSSt6locale", !14, i64 0}
!16 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !15, i64 56}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSN4absl12lts_202505124SpanIcEE", !13, i64 0, !17, i64 8}
!19 = !{!"_ZTSN4absl12lts_2025051212log_internal10LogMessage11OstreamViewE", !16, i64 0, !11, i64 64, !18, i64 72, !18, i64 88, !18, i64 104}
!20 = !{!19, !11, i64 64}
!21 = !{}
!22 = !{i64 8}
!23 = !{!7, !7, i64 0}
!24 = !{!"vtable pointer", !6, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!28 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!29 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !17, i64 8}
!30 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!31 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !26, i64 24, !27, i64 28, !27, i64 32, !28, i64 40, !29, i64 48, !7, i64 64, !8, i64 192, !30, i64 200, !15, i64 208}
!32 = !{!31, !17, i64 16}
!33 = !{!"short", !7, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!17, !17, i64 0}
!36 = !{!"long long", !7, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!10, !10, i64 0}
!39 = !{!"bool", !7, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{!18, !13, i64 0}
!42 = !{!13, !13, i64 0}
!43 = !{i64 0, i64 8, !42, i64 8, i64 8, !35}
!44 = !{!18, !17, i64 8}
!45 = !{!"_ZTSN4absl12lts_2025051216strings_internal10ShiftStateE", !39, i64 0, !7, i64 1}
!46 = !{!45, !39, i64 0}
!47 = !{!45, !7, i64 1}
!48 = !{!"wchar_t", !7, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"_ZTSN4absl12lts_202505128Duration5HiRepE", !8, i64 0, !8, i64 4}
!51 = !{!"_ZTSN4absl12lts_202505128DurationE", !50, i64 0, !8, i64 8}
!52 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!53 = !{!52, !13, i64 0}
!54 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !52, i64 0, !17, i64 8, !7, i64 16}
!55 = !{!54, !17, i64 8}
!56 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageImLm1ELb0EEE", !17, i64 0}
!57 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !17, i64 0, !13, i64 8}
!58 = !{!"_ZTSN4absl12lts_2025051211LogSeverityE", !7, i64 0}
!59 = !{!"_ZTSN4absl12lts_202505124TimeE", !51, i64 0}
!60 = !{!"_ZTSN4absl12lts_202505124SpanIKcEE", !13, i64 0, !17, i64 8}
!61 = !{!"_ZTSN4absl12lts_202505128LogEntryE", !57, i64 0, !57, i64 16, !8, i64 32, !39, i64 36, !58, i64 40, !8, i64 44, !59, i64 48, !8, i64 60, !60, i64 64, !17, i64 80, !57, i64 88, !54, i64 104}
!62 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJSaIPNS0_7LogSinkEEmEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !56, i64 0}
!63 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJSaIPNS0_7LogSinkEEmEEE", !62, i64 0}
!64 = !{!"_ZTSN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EEE", !63, i64 0, !7, i64 8}
!65 = !{!"_ZTSN4absl12lts_2025051213InlinedVectorIPNS0_7LogSinkELm16ESaIS3_EEE", !64, i64 0}
!66 = !{!"_ZTSSo"}
!67 = !{!"_ZTSSt5arrayIcLm15000EE", !7, i64 0}
!68 = !{!"_ZTSN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataE", !61, i64 0, !39, i64 136, !39, i64 137, !39, i64 138, !65, i64 144, !39, i64 280, !66, i64 288, !67, i64 560, !18, i64 15560, !67, i64 15576}
!69 = !{!68, !39, i64 280}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!68, !8, i64 32}
!72 = !{!68, !39, i64 36}
!73 = !{!68, !8, i64 44}
!74 = !{!68, !8, i64 60}
!75 = !{!54, !13, i64 0}
!76 = !{!61, !8, i64 32}
!77 = !{!61, !58, i64 40}
!78 = !{!61, !8, i64 60}
!79 = !{!61, !39, i64 36}
!80 = !{!"_ZTSN4absl12lts_2025051213base_internal10ErrnoSaverE", !8, i64 0}
!81 = !{!80, !8, i64 0}
!82 = !{!68, !39, i64 136}
!83 = !{!68, !39, i64 138}
!84 = !{!68, !39, i64 137}
!85 = !{!"p1 _ZTSN4absl12lts_202505127LogSinkE", !10, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!88 = !{!"p1 wchar_t", !10, i64 0}
!89 = !{!16, !13, i64 40}
!90 = !{!16, !13, i64 32}
!91 = !{!"float", !7, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!"double", !7, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!39, !39, i64 0}
!96 = !{!51, !8, i64 8}
!97 = !{!56, !17, i64 0}
!98 = !{!"p1 _ZTSSo", !10, i64 0}
!99 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 0}
!100 = !{!"p1 _ZTSSt5ctypeIcE", !10, i64 0}
!101 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!102 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !10, i64 0}
!103 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !31, i64 0, !98, i64 216, !7, i64 224, !39, i64 225, !99, i64 232, !100, i64 240, !101, i64 248, !102, i64 256}
!104 = !{!103, !98, i64 216}
!105 = !{!103, !7, i64 224}
!106 = !{!103, !39, i64 225}
!107 = !{!31, !26, i64 24}
!108 = !{!26, !26, i64 0}
!109 = !{!68, !58, i64 40}
!110 = !{!61, !8, i64 44}
!111 = distinct !{!111, !70}
!112 = distinct !{!112, !70}
!113 = !{!60, !13, i64 0}
!114 = !{!60, !17, i64 8}
!115 = !{!68, !17, i64 80}
!116 = !{!"_ZTSN4absl12lts_2025051212log_internal8WireTypeE", !7, i64 0}
!117 = !{!"_ZTSN4absl12lts_2025051212log_internal10ProtoFieldE", !17, i64 0, !116, i64 8, !17, i64 16, !60, i64 24}
!118 = !{!117, !17, i64 0}
!119 = !{!117, !116, i64 8}
!120 = distinct !{!120, i1 false, !"_ZSt11make_uniqueIN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataEJRPKcRiRNS1_11LogSeverityENS1_4TimeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!121 = distinct !{!121, !120, !"_ZSt11make_uniqueIN4absl12lts_2025051212log_internal10LogMessage14LogMessageDataEJRPKcRiRNS1_11LogSeverityENS1_4TimeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!122 = !{!121}
!123 = !{i64 0, i64 8, !35, i64 8, i64 8, !42}
!124 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 4, !9}
!125 = distinct !{!125, i1 false, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!126 = distinct !{!126, !125, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!127 = !{!126}
!128 = distinct !{!128, i1 false, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!129 = distinct !{!129, !128, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!130 = !{!129}
!131 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !88, i64 0}
!132 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !131, i64 0, !17, i64 8, !7, i64 16}
!133 = !{!132, !88, i64 0}
!134 = !{!132, !17, i64 8}
!135 = !{!88, !88, i64 0}
!136 = distinct !{null}
!137 = distinct !{null}
!138 = !{!16, !13, i64 48}
!139 = !{!31, !27, i64 32}
!140 = distinct !{!140, i1 false, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!141 = distinct !{!141, !140, !"_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!142 = distinct !{!142, !70, !145, !146}
!143 = distinct !{!143, !70, !146, !145}
!144 = !{!141}
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
