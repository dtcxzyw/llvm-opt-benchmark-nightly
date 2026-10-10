Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/log_message?download=true
inline.NumInlined: 764
inline.NumDeleted: 341
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
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !14  ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 15560 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5: ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 560
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i4, align 8, !tbaa !38
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ai), !inline_history !0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14  ; 7 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %.pre21 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !44
  %i.an = icmp eq ptr %.pre21, null
  br i1 %i.an, label %bb.i, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

bb.i:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 15560
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 560
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %.pre, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i6, align 8, !tbaa !38
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre), !inline_history !0
  br label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit7: ; preds = %bb.h, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5, %bb.i
  %i.aq = phi ptr [ %.pre, %bb.i ], [ %.pre, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit5 ], [ %i.ai, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 15568
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 15568 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !47
  %i.av = sub i64 %i.au, %i.as
  store i64 %i.av, ptr %i.at, align 8, !tbaa !47
  br label %bb.o

bb.j:                                             ; preds = %_ZN4absl12lts_2026052612log_internal33BufferSizeForStructuredProtoFieldENS1_20StructuredProtoFieldE.exit
  %i.aw = call noundef zeroext i1 @_ZN4absl12lts_2026052612log_internal19EncodeBytesTruncateEmNS0_4SpanIKcEEPNS2_IcEE(i64 noundef 1, ptr %3, i64 %2, ptr noundef nonnull %4)
  br i1 %i.aw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !14  ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15560 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9: ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 560
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i8, align 8, !tbaa !38
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.ax), !inline_history !0
  %.pre22 = load ptr, ptr %i.a, align 8, !tbaa !14 ; 7 uses
  %.phi.trans.insert23 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %.pre24 = load ptr, ptr %.phi.trans.insert23, align 8, !tbaa !44
  %i.bc = icmp eq ptr %.pre24, null
  br i1 %i.bc, label %bb.l, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

bb.l:                                             ; preds = %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre22, i64 15560
  %i.be = getelementptr inbounds nuw i8, ptr %.pre22, i64 560
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %.pre22, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !38
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %.pre22), !inline_history !0
  br label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit11: ; preds = %bb.k, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9, %bb.l
  %i.bf = phi ptr [ %.pre22, %bb.l ], [ %.pre22, %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit9 ], [ %i.ax, %bb.k ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 15568
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 15568 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !47
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !47
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  call void @_ZN4absl12lts_2026052612log_internal19EncodeMessageLengthENS0_4SpanIcEEPKS3_(ptr %i.af, i64 %i.ag, ptr noundef nonnull %4)
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !14  ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 15560 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !44
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.n, label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 560
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !45
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.bl, i64 15568
  store i64 15000, ptr %.sroa.4.0..sroa_idx.i12, align 8, !tbaa !38
  call void @_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData27InitializeEncodingAndFormatEv(ptr noundef nonnull align 8 dereferenceable(30576) %i.bl), !inline_history !0
  br label %_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13

_ZN4absl12lts_2026052612log_internal10LogMessage14LogMessageData17encoded_remainingEv.exit13: ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !46
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
  %i.a = load i64, ptr %0, align 8, !tbaa !38, !noalias !147 ; 3 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !147
  %.sink1.i = lshr i64 %i.a, 1                    ; 5 uses
  %i.f = shl i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.f, i64 32         ; 4 uses
  %i.h = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.h, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i, !prof !91

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
  %i.j = load ptr, ptr %i.c, align 8, !noalias !147
  %i.k = shl nuw nsw i64 %i.g, 3
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #31 ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sink1.i ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !90
  store ptr %i.n, ptr %i.m, align 8, !tbaa !90
  %.not.i = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
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
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !90
  %wide.load31 = load <2 x ptr>, ptr %i.s, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x ptr> %wide.load, ptr %i.r, align 8, !tbaa !90
  store <2 x ptr> %wide.load31, ptr %i.t, align 8, !tbaa !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %.lr.ph.i.prol, label %vector.body, !llvm.loop !145

.lr.ph.i.prol:                                    ; preds = %vector.body
  %prol.iter.cmp.not = icmp eq i64 %.sink1.i, %n.vec
  br i1 %prol.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.unr = phi ptr [ %.sink2.i, %.lr.ph.i.preheader ], [ %i.p, %.lr.ph.i.prol ]
  %.012.i.unr = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %.lr.ph.i.prol ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.v = phi ptr [ %i.y, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.012.i = phi i64 [ %i.z, %.lr.ph.i ], [ %.012.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.012.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !90
  store ptr %i.x, ptr %i.w, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = add nuw nsw i64 %.012.i, 1               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.z, %.sink1.i
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !146

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit: ; preds = %.lr.ph.i, %.lr.ph.i.prol, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  %i.aa = load i64, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #28
  %.pre = load i64, ptr %0, align 8, !tbaa !38
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit
  %i.af = phi i64 [ %.pre, %bb.c ], [ %i.aa, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISC_E7pointerERT0_NSH_9size_typeE.exit ]
  store ptr %i.l, ptr %i.c, align 8, !tbaa !25
  store i64 %i.g, ptr %i.d, align 8, !tbaa !25
  %i.ag = or i64 %i.af, 1
  %i.ah = add i64 %i.ag, 2
  store i64 %i.ah, ptr %0, align 8, !tbaa !38
  ret ptr %i.m
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

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{!1, !73}
!2 = distinct !{null}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN4absl12lts_2026052612log_internal10LogMessage14LogMessageDataE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!17 = !{!"_ZTSSt6locale", !16, i64 0}
!18 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !17, i64 56}
!19 = !{!"long", !8, i64 0}
!20 = !{!"_ZTSN4absl12lts_202605264SpanIcEE", !15, i64 0, !19, i64 8}
!21 = !{!"_ZTSN4absl12lts_2026052612log_internal10LogMessage11OstreamViewE", !18, i64 0, !13, i64 64, !20, i64 72, !20, i64 88, !20, i64 104}
!22 = !{!21, !13, i64 64}
!23 = !{}
!24 = !{i64 8}
!25 = !{!8, !8, i64 0}
!26 = !{!"vtable pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !19, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!33 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !31, i64 48, !8, i64 64, !9, i64 192, !32, i64 200, !17, i64 208}
!34 = !{!33, !19, i64 16}
!35 = !{!"short", !8, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!9, !9, i64 0}
!38 = !{!19, !19, i64 0}
!39 = !{!"long long", !8, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!12, !12, i64 0}
!42 = !{!"bool", !8, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{!20, !15, i64 0}
!45 = !{!15, !15, i64 0}
!46 = !{i64 0, i64 8, !45, i64 8, i64 8, !38}
!47 = !{!20, !19, i64 8}
!48 = !{!"_ZTSN4absl12lts_2026052616strings_internal10ShiftStateE", !42, i64 0, !8, i64 1}
!49 = !{!48, !42, i64 0}
!50 = !{!48, !8, i64 1}
!51 = !{!"wchar_t", !8, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"_ZTSN4absl12lts_202605268Duration5HiRepE", !9, i64 0, !9, i64 4}
!54 = !{!"_ZTSN4absl12lts_202605268DurationE", !53, i64 0, !9, i64 8}
!55 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!56 = !{!55, !15, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !55, i64 0, !19, i64 8, !8, i64 16}
!58 = !{!57, !19, i64 8}
!59 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple7StorageImLm1ENS2_10StorageTagIJSaIPNS0_7LogSinkEEmEEELb0EEE", !19, i64 0}
!60 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !19, i64 0, !15, i64 8}
!61 = !{!"_ZTSN4absl12lts_2026052611LogSeverityE", !8, i64 0}
!62 = !{!"_ZTSN4absl12lts_202605264TimeE", !54, i64 0}
!63 = !{!"_ZTSN4absl12lts_202605264SpanIKcEE", !15, i64 0, !19, i64 8}
!64 = !{!"_ZTSN4absl12lts_202605268LogEntryE", !60, i64 0, !60, i64 16, !9, i64 32, !42, i64 36, !61, i64 40, !9, i64 44, !62, i64 48, !9, i64 60, !63, i64 64, !19, i64 80, !60, i64 88, !57, i64 104}
!65 = !{!"_ZTSN4absl12lts_2026052618container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJSaIPNS0_7LogSinkEEmEEESt16integer_sequenceImJLm0ELm1EEELb1EEE", !59, i64 0}
!66 = !{!"_ZTSN4absl12lts_2026052618container_internal15CompressedTupleIJSaIPNS0_7LogSinkEEmEEE", !65, i64 0}
!67 = !{!"_ZTSN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EEE", !66, i64 0, !8, i64 8}
!68 = !{!"_ZTSN4absl12lts_2026052613InlinedVectorIPNS0_7LogSinkELm16ESaIS3_EEE", !67, i64 0}
!69 = !{!"_ZTSSo"}
!70 = !{!"_ZTSSt5arrayIcLm15000EE", !8, i64 0}
!71 = !{!"_ZTSN4absl12lts_2026052612log_internal10LogMessage14LogMessageDataE", !64, i64 0, !42, i64 136, !42, i64 137, !42, i64 138, !68, i64 144, !42, i64 280, !69, i64 288, !70, i64 560, !20, i64 15560, !70, i64 15576}
!72 = !{!71, !42, i64 280}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!71, !9, i64 32}
!75 = !{!71, !42, i64 36}
!76 = !{!71, !9, i64 44}
!77 = !{i64 0, i64 4, !37, i64 4, i64 4, !37, i64 8, i64 4, !37}
!78 = !{!71, !9, i64 60}
!79 = !{!57, !15, i64 0}
!80 = !{!64, !9, i64 32}
!81 = !{!64, !61, i64 40}
!82 = !{!64, !9, i64 60}
!83 = !{!64, !42, i64 36}
!84 = !{!"_ZTSN4absl12lts_2026052613base_internal10ErrnoSaverE", !9, i64 0}
!85 = !{!84, !9, i64 0}
!86 = !{!71, !42, i64 136}
!87 = !{!71, !42, i64 138}
!88 = !{!71, !42, i64 137}
!89 = !{!"p1 _ZTSN4absl12lts_202605267LogSinkE", !12, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!92 = !{!"p1 wchar_t", !12, i64 0}
!93 = !{!18, !15, i64 40}
!94 = !{!18, !15, i64 32}
!95 = !{!"float", !8, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!"double", !8, i64 0}
!98 = !{!97, !97, i64 0}
!99 = !{!42, !42, i64 0}
!100 = !{!54, !9, i64 8}
!101 = !{!59, !19, i64 0}
!102 = !{!"p1 _ZTSSo", !12, i64 0}
!103 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!104 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!105 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!106 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!107 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !33, i64 0, !102, i64 216, !8, i64 224, !42, i64 225, !103, i64 232, !104, i64 240, !105, i64 248, !106, i64 256}
!108 = !{!107, !102, i64 216}
!109 = !{!107, !8, i64 224}
!110 = !{!107, !42, i64 225}
!111 = !{!33, !28, i64 24}
!112 = !{!28, !28, i64 0}
!113 = !{!71, !61, i64 40}
!114 = !{!64, !9, i64 44}
!115 = distinct !{!115, !73}
!116 = distinct !{!116, !73}
!117 = !{!63, !15, i64 0}
!118 = !{!63, !19, i64 8}
!119 = !{!71, !19, i64 80}
!120 = !{!"_ZTSN4absl12lts_2026052612log_internal8WireTypeE", !8, i64 0}
!121 = !{!"_ZTSN4absl12lts_2026052612log_internal10ProtoFieldE", !19, i64 0, !120, i64 8, !19, i64 16, !63, i64 24}
!122 = !{!121, !19, i64 0}
!123 = !{!121, !120, i64 8}
!124 = distinct !{!124, i1 false, !"_ZSt11make_uniqueIN4absl12lts_2026052612log_internal10LogMessage14LogMessageDataEJRSt17basic_string_viewIcSt11char_traitsIcEERiRNS1_11LogSeverityENS1_4TimeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!125 = distinct !{!125, !124, !"_ZSt11make_uniqueIN4absl12lts_2026052612log_internal10LogMessage14LogMessageDataEJRSt17basic_string_viewIcSt11char_traitsIcEERiRNS1_11LogSeverityENS1_4TimeEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!126 = !{!125}
!127 = !{i64 0, i64 8, !38, i64 8, i64 8, !45}
!128 = distinct !{!128, i1 false, !"_ZN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!129 = distinct !{!129, !128, !"_ZN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!130 = !{!129}
!131 = distinct !{!131, i1 false, !"_ZN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!132 = distinct !{!132, !131, !"_ZN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!133 = !{!132}
!134 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !92, i64 0}
!135 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !134, i64 0, !19, i64 8, !8, i64 16}
!136 = !{!135, !92, i64 0}
!137 = !{!135, !19, i64 8}
!138 = !{!92, !92, i64 0}
!139 = distinct !{null}
!140 = distinct !{null}
!141 = !{!18, !15, i64 48}
!142 = !{!33, !29, i64 32}
!143 = distinct !{!143, i1 false, !"_ZN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv"}
!144 = distinct !{!144, !143, !"_ZN4absl12lts_2026052623inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15MakeStorageViewEv: argument 0"}
!145 = distinct !{!145, !73, !148, !149}
!146 = distinct !{!146, !73, !149, !148}
!147 = !{!144}
!148 = !{!"llvm.loop.isvectorized", i32 1}
!149 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
