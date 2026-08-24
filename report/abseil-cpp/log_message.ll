Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/log_message?download=true
inline.NumInlined: 764
inline.NumDeleted: 341
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2026052612log_internal10LogMessage43CopyToEncodedBufferWithStructuredProtoFieldILNS2_10StringTypeE1EEEvNS1_20StructuredProtoFieldESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.t = add nuw nsw i64 %accumulator.tr2.i.i.i.i.i.i18.i.i.i, 1
  %i.u = icmp ult i64 %.tr3.i.i.i.i.i.i17.i.i.i, 16384
  br i1 %i.u, label %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i, label %tailrecurse.i.i.i.i.i.i16.i.i.i

tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i: ; preds = %tailrecurse.i.i.i.i.i.i16.i.i.i
  %i.v = add nuw i64 %accumulator.tr2.i.i.i.i.i.i18.i.i.i, 12
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i: ; preds = %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i, %bb.e
  %accumulator.tr.lcssa.i.i.i.i.i.i20.i.i.i = phi i64 [ 11, %bb.e ], [ %i.v, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i19.i.i.i ]
  %i.w = add i64 %accumulator.tr.lcssa.i.i.i.i.i.i20.i.i.i, %.sroa.318.0.copyload
  br label %_ZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit
  br i1 %i.h, label %_ZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit, label %tailrecurse.i.i.preheader.i.i.i.i21.i.i.i

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
  br label %_ZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit
  unreachable

_ZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit: ; preds = %bb.c, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i.i.i.i, %bb.d, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i13.i.i.i, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i, %bb.f, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i25.i.i.i
  %.0.i.i.i = phi i64 [ %i.q, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i13.i.i.i ], [ %i.l, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i.i.i.i ], [ %i.w, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultImEEOZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS7_20StructuredProtoFieldEE17BufferSizeVisitorRSt7variantIJSB_IJmljibEESB_IJmldEENS6_4SpanIKcEESB_IJjifEEEEEJEEESt16integer_sequenceImJLm2EEEE14__visit_invokeESA_SJ_.exit.i.i.i ], [ 11, %bb.c ], [ 9, %bb.d ], [ 5, %bb.f ], [ %i.ab, %tailrecurse._crit_edge.loopexit.i.i.i.i.i.i25.i.i.i ]
  %i.ac = add i64 %2, 11
  %i.ad = add i64 %i.ac, %.0.i.i.i
  %i.ae = call { ptr, i64 } @_ZN4absl12lts_2026052612log_internal18EncodeMessageStartEmmPNS0_4SpanIcEE(i64 noundef 7, i64 noundef %i.ad, ptr noundef nonnull %4) ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2026052612log_internal26EncodeStructuredProtoFieldENS1_20StructuredProtoFieldERNS0_4SpanIcEE(ptr noundef nonnull byval(%"struct.absl::lts_20260526::log_internal::StructuredProtoField") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br i1 %i.ah, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !9   ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15560 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 560
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !35
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ai), !inline_history !48
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !9   ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !46
  %i.an = icmp eq ptr %.pre21, null
  br i1 %i.an, label %bb.i, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

bb.i:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 560
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %.pre, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i6, align 8, !tbaa !35
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre), !inline_history !48
  br label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7: ; preds = %bb.h, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, %bb.i
  %i.aq = phi ptr [ %.pre, %bb.i ], [ %.pre, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5 ], [ %i.ai, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15568
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !50
  %i.av = sub i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !50
  br label %bb.o

bb.j:                                             ; preds = %_ZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit
  %i.aw = call noundef zeroext i1 @_ZN4absl12lts_2026052612log_internal19EncodeBytesTruncateEmNS0_4SpanIKcEEPNS2_IcEE(i64 noundef 1, ptr %3, i64 %2, ptr noundef nonnull %4)
  br i1 %i.aw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !9   ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15560 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9: ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 560
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i8, align 8, !tbaa !35
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ax), !inline_history !48
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !9 ; 7 uses
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %.pre24 = load ptr, ptr %.phi.trans.insert23, align 8, !tbaa !46
  %i.bc = icmp eq ptr %.pre24, null
  br i1 %i.bc, label %bb.l, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

bb.l:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %i.be = getelementptr inbounds nuw i8, ptr %.pre22, i64 560
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !35
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre22), !inline_history !48
  br label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11: ; preds = %bb.k, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, %bb.l
  %i.bf = phi ptr [ %.pre22, %bb.l ], [ %.pre22, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9 ], [ %i.ax, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15568
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !50
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !50
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  call void @_ZN4absl12lts_2026052612log_internal19EncodeMessageLengthENS0_4SpanIcEEPKS3_(ptr %i.af, i64 %i.ag, ptr noundef nonnull %4)
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !9   ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15560 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !46
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.n, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 560
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !47
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.bl, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i12, align 8, !tbaa !35
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.bl), !inline_history !48
  br label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13: ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !49
  br label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_2026052612log_internal19EncodeBytesTruncateEmNS0_4SpanIKcEEPNS2_IcEE(i64 noundef, ptr, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

declare noundef i64 @_ZN4absl12lts_2026052616strings_internal10WideToUtf8EwPcRNS1_10ShiftStateE(i32 noundef signext, ptr noundef, ptr noundef nonnull align 1 dereferenceable(2)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZN4absl12lts_2026052612log_internal13FlushLogSinksEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

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
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !35, !noalias !143 ; 4 uses
  %i.b = trunc i64 %i.a to i1                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %2 = load ptr, ptr %i.c, align 8, !noalias !143 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !143 ; 2 uses
  %.sink1.i = lshr i64 %i.a, 1                    ; 7 uses
  %i.f = shl i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.f, i64 32         ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i, !prof !123

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.i, label %.noexc, label %.noexc13

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

.noexc13:                                         ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.a
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #31 ; 9 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sink1.i ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !121
  store ptr %i.m, ptr %i.l, align 8, !tbaa !121
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  %i.n = ptrtoaddr ptr %i.k to i64
  %.sink2.i = select i1 %i.b, ptr %2, ptr %i.c    ; 4 uses
  %min.iters.check = icmp ult i64 %i.a, 16
  %.sink2.i30 = ptrtoaddr ptr %.sink2.i to i64
  %i.o = sub i64 %.sink2.i30, %i.n
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.sink1.i, 9223372036854775804 ; 4 uses
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %.sink2.i, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.sink2.i, i64 %i.r ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.t = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !121
  %wide.load31 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !121
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x ptr> %wide.load, ptr %i.s, align 8, !tbaa !121
  store <2 x ptr> %wide.load31, ptr %i.u, align 8, !tbaa !121
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sink1.i, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader33

.lr.ph.i.preheader33:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.012.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph = phi ptr [ %.sink2.i, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %xtraiter = and i64 %.sink1.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader33, %.lr.ph.i.prol
  %.012.i.prol = phi i64 [ %i.aa, %.lr.ph.i.prol ], [ %.012.i.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %i.w = phi ptr [ %i.z, %.lr.ph.i.prol ], [ %.ph, %.lr.ph.i.preheader33 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader33 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.012.i.prol
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !121
  store ptr %i.y, ptr %i.x, align 8, !tbaa !121
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.aa = add nuw nsw i64 %.012.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !149

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader33
  %.012.i.unr = phi i64 [ %.012.i.ph, %.lr.ph.i.preheader33 ], [ %i.aa, %.lr.ph.i.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.preheader33 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ab = sub nsw i64 %.012.i.ph, %.sink1.i
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.012.i = phi i64 [ %i.at, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ad = phi ptr [ %i.as, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.012.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !121
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !121
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.012.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !121
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !121
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.012.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !121
  store ptr %i.an, ptr %i.am, align 8, !tbaa !121
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.012.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !121
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !121
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.at = add nuw nsw i64 %.012.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.at, %.sink1.i
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !151

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.au = shl i64 %i.e, 3
  tail call void @_ZdlPvm(ptr noundef %2, i64 noundef %i.au) #28
  %.pre = load i64, ptr %0, align 8, !tbaa !35
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.av = phi i64 [ %.pre, %bb.c ], [ %i.a, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit ]
  store ptr %i.k, ptr %i.c, align 8, !tbaa !22
  store i64 %i.g, ptr %i.d, align 8, !tbaa !22
  %i.aw = or i64 %i.av, 1
  %i.ax = add i64 %i.aw, 2
  store i64 %i.ax, ptr %0, align 8, !tbaa !35
  ret ptr %i.l
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

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
attributes #30 = { cold }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { noreturn nounwind }
attributes #34 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN4absl12lts_2026052612log_internal10LogMessage14LogMessageDataE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !10, i64 64}
!13 = !{!"_ZTSN4absl12lts_2026052612log_internal10LogMessage11OstreamViewE", !14, i64 0, !10, i64 64, !18, i64 72, !18, i64 88, !18, i64 104}
!14 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !16, i64 56}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"_ZTSSt6locale", !17, i64 0}
!17 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!18 = !{!"_ZTSN4absl12lts_202605264SpanIcEE", !15, i64 0, !19, i64 8}
!19 = !{!"long", !7, i64 0}
!20 = !{}
!21 = !{i64 8}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !19, i64 16}
!26 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !16, i64 208}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !19, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !7, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!19, !19, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"long long", !7, i64 0}
!38 = !{!11, !11, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !7, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !7, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"bool", !7, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{!18, !15, i64 0}
!47 = !{!15, !15, i64 0}
!48 = distinct !{null}
!49 = !{i64 0, i64 8, !47, i64 8, i64 8, !35}
!50 = !{!18, !19, i64 8}
!51 = !{!52, !44, i64 0}
!52 = !{!"_ZTSN4absl12lts_2026052616strings_internal10ShiftStateE", !44, i64 0, !7, i64 1}
!53 = !{!52, !7, i64 1}
!54 = !{!55, !55, i64 0}
!55 = !{!"wchar_t", !7, i64 0}
!56 = !{!57, !6, i64 8}
!57 = !{!"_ZTSN4absl12lts_202605268DurationE", !58, i64 0, !6, i64 8}
!58 = !{!"_ZTSN4absl12lts_202605268Duration5HiRepE", !6, i64 0, !6, i64 4}
!59 = !{!60, !15, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!61 = !{!62, !19, i64 8}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !60, i64 0, !19, i64 8, !7, i64 16}
!63 = !{!64, !19, i64 0}
!64 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple7StorageImLm1ENS2_10StorageTagIJSaIPNS0_7LogSinkEEmEEELb0EEE", !19, i64 0}
!65 = !{!66, !44, i64 280}
!66 = !{!"_ZTSN4absl12lts_2026052612log_internal10LogMessage14LogMessageDataE", !67, i64 0, !44, i64 136, !44, i64 137, !44, i64 138, !72, i64 144, !44, i64 280, !76, i64 288, !77, i64 560, !18, i64 15560, !77, i64 15576}
!67 = !{!"_ZTSN4absl12lts_202605268LogEntryE", !68, i64 0, !68, i64 16, !6, i64 32, !44, i64 36, !69, i64 40, !6, i64 44, !70, i64 48, !6, i64 60, !71, i64 64, !19, i64 80, !68, i64 88, !62, i64 104}
!68 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !19, i64 0, !15, i64 8}
!69 = !{!"_ZTSN4absl12lts_2026052611LogSeverityE", !7, i64 0}
!70 = !{!"_ZTSN4absl12lts_202605264TimeE", !57, i64 0}
!71 = !{!"_ZTSN4absl12lts_202605264SpanIKcEE", !15, i64 0, !19, i64 8}
!72 = !{!"_ZTSN4absl12lts_2026052613InlinedVectorIPNS0_7LogSinkELm16ESaIS3_EEE", !73, i64 0}
!73 = !{!"_ZTSN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EEE", !74, i64 0, !7, i64 8}
!74 = !{!"_ZTSN4absl12lts_2026052618container_internal15CompressedTupleIJSaIPNS0_7LogSinkEEmEEE", !75, i64 0}
!75 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJSaIPNS0_7LogSinkEEmEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !64, i64 0}
!76 = !{!"_ZTSSo"}
!77 = !{!"_ZTSSt5arrayIcLm15000EE", !7, i64 0}
!78 = !{!79, !80, i64 216}
!79 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0, !80, i64 216, !7, i64 224, !44, i64 225, !81, i64 232, !82, i64 240, !83, i64 248, !84, i64 256}
!80 = !{!"p1 _ZTSSo", !11, i64 0}
!81 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!82 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!83 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!84 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!85 = !{!79, !7, i64 224}
!86 = !{!79, !44, i64 225}
!87 = !{!26, !27, i64 24}
!88 = !{!27, !27, i64 0}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!66, !6, i64 32}
!92 = !{!66, !44, i64 36}
!93 = !{!66, !69, i64 40}
!94 = !{!66, !6, i64 44}
!95 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 4, !34}
!96 = !{!66, !6, i64 60}
!97 = !{!62, !15, i64 0}
!98 = !{!67, !6, i64 32}
!99 = !{!67, !69, i64 40}
!100 = !{!67, !6, i64 44}
!101 = !{!67, !6, i64 60}
!102 = !{!71, !15, i64 0}
!103 = !{!71, !19, i64 8}
!104 = !{!67, !44, i64 36}
!105 = !{!66, !19, i64 80}
!106 = !{!107, !19, i64 0}
!107 = !{!"_ZTSN4absl12lts_2026052612log_internal10ProtoFieldE", !19, i64 0, !108, i64 8, !19, i64 16, !71, i64 24}
!108 = !{!"_ZTSN4absl12lts_2026052612log_internal8WireTypeE", !7, i64 0}
!109 = !{!107, !108, i64 8}
!110 = distinct !{!110, !90}
end_hunk_0
