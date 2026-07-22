inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN6google8protobuf2io7PrinterD2Ev:bb.a
  %i.ae = load ptr, ptr %i.ad, align 16, !tbaa !673
  call void %i.ae(i1 noundef zeroext true, ptr noundef nonnull align 16 dereferenceable(32) %i.ac, ptr noundef nonnull align 16 dereferenceable(32) %i.ac) #40, !inline_history !675
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !676 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !679 ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEED2Ev.exit, %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.ao, %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i ], [ %i.ag, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEED2Ev.exit ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !161 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i2
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i3, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i3, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #43
  unreachable

_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i2
  %i.ao = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !680

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.af, align 16, !tbaa !676
  br label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEED2Ev.exit
  %i.ap = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exitthread-pre-split.i ], [ %i.ag, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !681
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #42
  br label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESD_EvT_SF_RSaIT0_E.exit.i, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !682 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = load ptr, ptr %i.ax, align 16, !tbaa !685 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit, %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i
  %.05.i.i.i9 = phi ptr [ %i.be, %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i ], [ %i.aw, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !161 ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i10, label %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i8
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i9, ptr noundef nonnull align 8 dereferenceable(32) %.05.i.i.i9, i32 noundef 3)
          to label %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #43
  unreachable

_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i8
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 32 ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.be, %i.ay
  br i1 %.not.i.i.i11, label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i8, !llvm.loop !686

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEEvPT_.exit.i.i.i
  %.pr.i12 = load ptr, ptr %i.av, align 8, !tbaa !682
  br label %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit
  %i.bf = phi ptr [ %.pr.i12, %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exitthread-pre-split.i ], [ %i.aw, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i13 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i13, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !687
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #42
  br label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_EvT_SG_RSaIT0_E.exit.i, %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !688 ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bo = load ptr, ptr %i.bn, align 16, !tbaa !690
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #42
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EED2Ev.exit, %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load i64, ptr %i.bs, align 16, !tbaa !691 ; 2 uses
  %.not.i = icmp eq i64 %i.bt, 0
  br i1 %.not.i, label %_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSinkD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.bu = load ptr, ptr %0, align 16, !tbaa !694  ; 2 uses
  %i.bv = trunc i64 %i.bt to i32
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  invoke void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef %i.bv)
          to label %_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSinkD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #43
  unreachable

_ZN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSinkD2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf4util18MessageDifferencer14StreamReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf4util18MessageDifferencer14StreamReporterD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #40
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #42
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util18MessageDifferencer14StreamReporter9PrintPathERKSt6vectorINS2_13SpecificFieldESaIS5_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.absl::lts_20250512::flat_hash_map.387", align 8 ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.387", align 8 ; 10 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %.not97 = icmp eq ptr %i.e, %i.f
  br i1 %.not97, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i46 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.aj, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.aj
  %i.z = phi ptr [ %i.f, %.lr.ph ], [ %i.fl, %bb.aj ]
  %.03494 = phi i64 [ 0, %.lr.ph ], [ %i.fj, %bb.aj ] ; 4 uses
  %i.aa = getelementptr [96 x i8], ptr %i.z, i64 %.03494 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !145 ; 3 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !116 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.ae, align 1
  %i.af = icmp eq i16 %.0.copyload.i.i.i, 5
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.c
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -6 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = xor i32 %i.ah, 1970037110
  %i.aj = getelementptr i8, ptr %i.ag, i64 4
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = xor i32 %i.al, 101
  %i.an = or i32 %i.ai, %i.am
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = icmp ne i64 %.03494, 0
  %or.cond85 = and i1 %i.ar, %i.aq
  br i1 %or.cond85, label %bb.d, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.as = getelementptr i8, ptr %i.aa, i64 -72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !145
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = and i8 %i.av, 16
  %.not86 = icmp eq i8 %i.aw, 0
  br i1 %.not86, label %.thread, label %bb.aj

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.c, %bb.b
  %.not37 = icmp eq i64 %.03494, 0
  br i1 %.not37, label %bb.i, label %.thread

.thread:                                          ; preds = %bb.d, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 1, ptr nonnull @.str.24)
          to label %bb.f unwind label %bb.e

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %bb.n, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.e ], [ %i.cb, %bb.n ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %.thread
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

bb.f:                                             ; preds = %.thread
  %i.az = load i64, ptr %4, align 8, !tbaa !104   ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !105
  %i.bd = and i64 %i.bc, 65536
  %i.be = icmp ne i64 %i.bd, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.az, ptr noundef %i.bb, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.be)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #43
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !145
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread
  %i.bh = phi ptr [ %.pre, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit ], [ %i.ac, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.thread ] ; 4 uses
  %.not38 = icmp eq ptr %i.bh, null
  br i1 %.not38, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = and i8 %i.bj, 8
  %.not87 = icmp eq i8 %i.bk, 0
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !662 ; 2 uses
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !116 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %.0.copyload.i.i.i40 = load i16, ptr %i.bo, align 1
  %i.bp = zext i16 %.0.copyload.i.i.i40 to i64    ; 2 uses
  %i.bq = xor i64 %i.bp, -1
  %i.br = getelementptr inbounds i8, ptr %i.bn, i64 %i.bq
  store i64 %i.bp, ptr %5, align 8
  store ptr %i.br, ptr %i.i, align 8
  call void @_ZN6google8protobuf2io7Printer5PrintIJA5_cSt17basic_string_viewIcSt11char_traitsIcEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %i.bl, i64 8, ptr nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(5) @.str.26, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  br label %bb.r

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !116 ; 2 uses
  %.0.copyload.i.i.i43 = load i16, ptr %i.bt, align 1
  %i.bu = zext i16 %.0.copyload.i.i.i43 to i64    ; 2 uses
  %i.bv = xor i64 %i.bu, -1
  %i.bw = getelementptr inbounds i8, ptr %i.bt, i64 %i.bv
  call void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %i.bl, ptr noundef nonnull %i.bw, i64 noundef %i.bu)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !431, !range !202, !noundef !437
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ca = load ptr, ptr %i.g, align 8, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i46, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %i.ca, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 38, ptr nonnull @.str.27)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %common.resume

bb.o:                                             ; preds = %bb.m
  %i.cc = load i64, ptr %3, align 8, !tbaa !104   ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit47, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i46, align 8, !tbaa !106
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !105
  %i.cg = and i64 %i.cf, 65536
  %i.ch = icmp ne i64 %i.cg, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cc, ptr noundef %i.ce, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.ch)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit47 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  call void @__clang_call_terminate(ptr %i.cj) #43
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit47: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit47, %bb.k
  %i.ck = load ptr, ptr %i.ab, align 8, !tbaa !145
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 3
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = and i8 %i.cm, 16
  %.not88 = icmp eq i8 %i.cn, 0
  br i1 %.not88, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN6google8protobuf4util18MessageDifferencer14StreamReporter11PrintMapKeyEbRKNS2_13SpecificFieldE(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(89) %i.aa)
  br label %bb.aj

bb.t:                                             ; preds = %bb.i
  %i.co = load ptr, ptr %i.g, align 8, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !510
  %i.cr = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.cq, ptr noundef nonnull %i.k)
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.l                     ; 5 uses
  store i64 %i.ct, ptr %7, align 8, !tbaa !695
  store ptr %i.k, ptr %i.m, align 8, !tbaa !697
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  store ptr %i.n, ptr %6, align 8, !tbaa !382, !alias.scope !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40, !noalias !698
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !146, !noalias !698
  %i.cu = icmp ugt i64 %i.ct, 15
  br i1 %i.cu, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.t
  %i.cv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.cv, ptr %6, align 8, !tbaa !377, !alias.scope !698
  %i.cw = load i64, ptr %i.c, align 8, !tbaa !146, !noalias !698
  store i64 %i.cw, ptr %i.n, align 8, !tbaa !106, !alias.scope !698
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.t
  %i.cx = phi ptr [ %i.cv, %.noexc.i.i ], [ %i.n, %bb.t ] ; 2 uses
  switch i64 %i.ct, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i
  %i.cy = load i8, ptr %i.k, align 8, !tbaa !106
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !106
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

bb.v:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr nonnull align 8 %i.k, i64 %i.ct, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit: ; preds = %._crit_edge.i.i.i, %bb.u, %bb.v
  %i.cz = load i64, ptr %i.c, align 8, !tbaa !146, !noalias !698 ; 2 uses
  store i64 %i.cz, ptr %i.o, align 8, !tbaa !374, !alias.scope !698
  %i.da = load ptr, ptr %6, align 8, !tbaa !377, !alias.scope !698
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cz
  store i8 0, ptr %i.db, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40, !noalias !698
  %i.dc = load ptr, ptr %6, align 8, !tbaa !377
  %i.dd = load i64, ptr %i.o, align 8, !tbaa !374
  invoke void @_ZN6google8protobuf2io7Printer8WriteRawEPKcm(ptr noundef nonnull align 16 dereferenceable(296) %i.co, ptr noundef %i.dc, i64 noundef %i.dd)
          to label %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.w

_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.de = load ptr, ptr %6, align 8, !tbaa !377   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.n
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.dg = load i64, ptr %i.n, align 8, !tbaa !106
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io7Printer8PrintRawESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.x

bb.w:                                             ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit
  %i.di = landingpad { ptr, i32 }
          cleanup
  %i.dj = load ptr, ptr %6, align 8, !tbaa !377   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.n
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.w
  %i.dl = load i64, ptr %i.n, align 8, !tbaa !106
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %common.resume

bb.x:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %2, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !21 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, -1
  br i1 %i.dp, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %bb.y
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %i.dr = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.do, ptr noundef nonnull %i.u)
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.v                     ; 5 uses
  store i64 %i.dt, ptr %9, align 8, !tbaa !695
  store ptr %i.u, ptr %i.w, align 8, !tbaa !697
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  store ptr %i.x, ptr %8, align 8, !tbaa !382, !alias.scope !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40, !noalias !701
  store i64 %i.dt, ptr %i.b, align 8, !tbaa !146, !noalias !701
  %i.du = icmp ugt i64 %i.dt, 15
  br i1 %i.du, label %.noexc.i.i53, label %._crit_edge.i.i.i52

.noexc.i.i53:                                     ; preds = %bb.z
  %i.dv = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.dv, ptr %8, align 8, !tbaa !377, !alias.scope !701
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !146, !noalias !701
  store i64 %i.dw, ptr %i.x, align 8, !tbaa !106, !alias.scope !701
  br label %._crit_edge.i.i.i52

._crit_edge.i.i.i52:                              ; preds = %.noexc.i.i53, %bb.z
  %i.dx = phi ptr [ %i.dv, %.noexc.i.i53 ], [ %i.x, %bb.z ] ; 2 uses
  switch i64 %i.dt, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit55
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i52
  %i.dy = load i8, ptr %i.u, align 8, !tbaa !106
  store i8 %i.dy, ptr %i.dx, align 1, !tbaa !106
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit55

bb.ab:                                            ; preds = %._crit_edge.i.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr nonnull align 8 %i.u, i64 %i.dt, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit55

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit55: ; preds = %._crit_edge.i.i.i52, %bb.aa, %bb.ab
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !146, !noalias !701 ; 2 uses
  store i64 %i.dz, ptr %i.y, align 8, !tbaa !374, !alias.scope !701
  %i.ea = load ptr, ptr %8, align 8, !tbaa !377, !alias.scope !701
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dz
  store i8 0, ptr %i.eb, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40, !noalias !701
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %i.dq, i64 8, ptr nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(5) @.str.26, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit55
  %i.ec = load ptr, ptr %8, align 8, !tbaa !377   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.x
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ac
  %i.ee = load i64, ptr %i.x, align 8, !tbaa !106
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.aj

bb.ad:                                            ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit55
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %8, align 8, !tbaa !377   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.x
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.ad
  %i.ej = load i64, ptr %i.x, align 8, !tbaa !106
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %common.resume

.critedge:                                        ; preds = %bb.x
  %i.el = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  %i.em = load i32, ptr %i.el, align 4, !tbaa !23 ; 2 uses
  %i.en = icmp sgt i32 %i.em, -1
  br i1 %i.en, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %.critedge
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !662
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.ep = call noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.em, ptr noundef nonnull %i.p)
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.q                     ; 5 uses
  store i64 %i.er, ptr %11, align 8, !tbaa !695
  store ptr %i.p, ptr %i.r, align 8, !tbaa !697
  call void @llvm.experimental.noalias.scope.decl(metadata !704)
  store ptr %i.s, ptr %10, align 8, !tbaa !382, !alias.scope !704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40, !noalias !704
  store i64 %i.er, ptr %i.a, align 8, !tbaa !146, !noalias !704
  %i.es = icmp ugt i64 %i.er, 15
  br i1 %i.es, label %.noexc.i.i64, label %._crit_edge.i.i.i63

.noexc.i.i64:                                     ; preds = %bb.ae
  %i.et = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.et, ptr %10, align 8, !tbaa !377, !alias.scope !704
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !146, !noalias !704
  store i64 %i.eu, ptr %i.s, align 8, !tbaa !106, !alias.scope !704
  br label %._crit_edge.i.i.i63

._crit_edge.i.i.i63:                              ; preds = %.noexc.i.i64, %bb.ae
  %i.ev = phi ptr [ %i.et, %.noexc.i.i64 ], [ %i.s, %bb.ae ] ; 2 uses
  switch i64 %i.er, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit66
  ]

bb.af:                                            ; preds = %._crit_edge.i.i.i63
  %i.ew = load i8, ptr %i.p, align 8, !tbaa !106
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !106
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit66

bb.ag:                                            ; preds = %._crit_edge.i.i.i63
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull align 8 %i.p, i64 %i.er, i1 false)
  br label %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit66

_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit66: ; preds = %._crit_edge.i.i.i63, %bb.af, %bb.ag
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !146, !noalias !704 ; 2 uses
  store i64 %i.ex, ptr %i.t, align 8, !tbaa !374, !alias.scope !704
  %i.ey = load ptr, ptr %10, align 8, !tbaa !377, !alias.scope !704
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40, !noalias !704
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %i.eo, i64 8, ptr nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(5) @.str.26, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit66
  %i.fa = load ptr, ptr %10, align 8, !tbaa !377  ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.s
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ah
  %i.fc = load i64, ptr %i.s, align 8, !tbaa !106
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumE.exit66
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %10, align 8, !tbaa !377  ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.s
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ai
  %i.fh = load i64, ptr %i.s, align 8, !tbaa !106
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #40
  br label %common.resume

bb.aj:                                            ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.d, %bb.s
  %i.fj = add nuw i64 %.03494, 1                  ; 2 uses
  %i.fk = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.fl = load ptr, ptr %1, align 8, !tbaa !94    ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = sdiv exact i64 %i.fo, 96
  %i.fq = icmp ult i64 %i.fj, %i.fp
  br i1 %i.fq, label %bb.b, label %._crit_edge, !llvm.loop !707
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6google8protobuf2io7Printer5PrintIJA5_cSt17basic_string_viewIcSt11char_traitsIcEEEEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(5) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.387", align 8 ; 12 uses
  %7 = alloca %"struct.std::pair.390", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #40
  store i64 %i.a, ptr %5, align 16, !tbaa !695
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !697
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !708
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.d, align 16, !tbaa !695
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.37, ptr %i.e, align 8, !tbaa !697
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader unwind label %bb.b

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader: ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #40
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.390") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.d

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = load i8, ptr %i.g, align 8, !tbaa !709, !range !202, !alias.scope !712, !noundef !437
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !712 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !708
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !708
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %1, ptr %2)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.l = load i64, ptr %6, align 8, !tbaa !104    ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !106
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !105
  %i.q = and i64 %i.p, 65536
  %i.r = icmp ne i64 %i.q, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.l, ptr noundef %i.n, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.r)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #43
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.f, %bb.b ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util18MessageDifferencer14StreamReporter11PrintMapKeyEbRKNS2_13SpecificFieldE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i1 noundef zeroext %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(89) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
end_hunk_0
