Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/basic_parser?download=true
inline.NumInlined: 8390
inline.NumDeleted: 1479
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS6_14buffers_suffixINS6_16buffers_cat_viewIJNS0_12const_bufferESA_SA_SA_EEEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SH_T0_SI_m:bb.a
  %i.bi = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !372
  %spec.select.i6 = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bi) ; 2 uses
  %i.bk = call i64 @llvm.umin.i64(i64 %.sroa.6.0, i64 %spec.select.i6) ; 4 uses
  %.not.i = icmp eq i64 %spec.select.i6, 0
  br i1 %.not.i, label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = extractvalue { ptr, i64 } %.pn.i.i, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.09.0, ptr align 1 %i.bl, i64 %i.bk, i1 false)
  br label %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit

_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit: ; preds = %bb.q, %bb.r
  %i.bm = add i64 %i.bk, %.0
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 %i.bk
  %i.bo = sub nuw i64 %.sroa.6.0, %i.bk
  %i.bp = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_S5_EEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.i unwind label %bb.s, !llvm.loop !1564 ; 0 uses

bb.s:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i.i, %_ZN5boost4asio6detail13buffer_copy_1ERKNS0_14mutable_bufferERKNS0_12const_bufferE.exit
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator", align 8 ; 7 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !39, !noalias !1569
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  %.ptr5.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !39, !noalias !1569
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.3.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !1569
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !1569
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i
  %.ptr4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = ptrtoint ptr %.ptr4.i.i.i.i.i.i to i64
  %.sroa.217.8.insert.mask = and i64 %i.c, -256
  %i.d = inttoptr i64 %.sroa.217.8.insert.mask to ptr
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit: ; preds = %bb.a, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.13.0 = phi i8 [ 5, %._crit_edge.i.i.i.i.i.i.i ], [ 4, %._crit_edge.i.i.i.i.i.i ], [ 3, %._crit_edge.i.i.i.i.i ], [ 2, %._crit_edge.i.i.i.i ], [ 1, %bb.a ] ; 3 uses
  %.sroa.217.0 = phi ptr [ %i.d, %._crit_edge.i.i.i.i.i.i.i ], [ %i.b, %._crit_edge.i.i.i.i.i.i ], [ %i.a, %._crit_edge.i.i.i.i.i ], [ %.ptr5.i.i.i.i, %._crit_edge.i.i.i.i ], [ %1, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !351
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i8, ptr %i.h, align 8, !tbaa !352   ; 4 uses
  switch i8 %i.i, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.b:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit
  unreachable

bb.c:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !238
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit

bb.d:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !238
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit

bb.e:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !238
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit

bb.f:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !238
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit

bb.g:                                             ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit
  %i.n = load i8, ptr %i.g, align 8, !tbaa !42
  %.sroa.2.8.insert.ext = zext i8 %i.n to i64
  %i.o = inttoptr i64 %.sroa.2.8.insert.ext to ptr
  br label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.2.1 = phi ptr [ undef, %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPS8_PKNS0_14mutable_bufferEEE5valueEiE4typeENSA_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENSA_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit ], [ %i.o, %bb.g ], [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8, !tbaa !351
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  switch i8 %.sroa.13.0, label %default.unreachable [
    i8 5, label %bb.l
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
  ]

default.unreachable:                              ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit
  unreachable

bb.h:                                             ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit
  store ptr %.sroa.217.0, ptr %i.p, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i7

bb.i:                                             ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit
  store ptr %.sroa.217.0, ptr %i.p, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i7

bb.j:                                             ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit
  store ptr %.sroa.217.0, ptr %i.p, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i7

bb.k:                                             ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit
  store ptr %.sroa.217.0, ptr %i.p, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i7

bb.l:                                             ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit
  %i.r = ptrtoint ptr %.sroa.217.0 to i64
  %.sroa.217.8.extract.trunc = trunc i64 %i.r to i8
  store i8 %.sroa.217.8.extract.trunc, ptr %i.p, align 8, !tbaa !42
  br label %.sink.split.i.i.i.i.i7

.sink.split.i.i.i.i.i7:                           ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  store i8 %.sroa.13.0, ptr %i.q, align 8, !tbaa !352
  %i.s = icmp eq i8 %i.i, 5
  %i.t = ptrtoint ptr %.sroa.2.1 to i64
  %.sroa.4.8.insert.ext = and i64 %i.t, 255
  %i.u = inttoptr i64 %.sroa.4.8.insert.ext to ptr
  %.sroa.4.1 = select i1 %i.s, ptr %i.u, ptr %.sroa.2.1
  %i.v = add i8 %i.i, -5
  %switch.i.i.i.i.i.i = icmp ult i8 %i.v, -4
  br label %bb.m

bb.m:                                             ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorneERKS5_.exit.thread.i, %.sink.split.i.i.i.i.i7
  %.pre.i = phi i8 [ %.sroa.13.0, %.sink.split.i.i.i.i.i7 ], [ %.pre.i.pre, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorneERKS5_.exit.thread.i ] ; 2 uses
  %i.w = phi ptr [ %1, %.sink.split.i.i.i.i.i7 ], [ %.pre, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorneERKS5_.exit.thread.i ]
  %.0.i = phi i64 [ 0, %.sink.split.i.i.i.i.i7 ], [ %i.aa, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorneERKS5_.exit.thread.i ] ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.f
  %.not.i.i.i.i11 = icmp eq i8 %.pre.i, %i.i
  %or.cond = select i1 %i.x, i1 %.not.i.i.i.i11, i1 false
  br i1 %or.cond, label %bb.n, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorneERKS5_.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.p, align 8
  %.not.i = icmp eq ptr %i.y, %.sroa.4.1
  %or.cond23 = select i1 %switch.i.i.i.i.i.i, i1 true, i1 %.not.i
  br i1 %or.cond23, label %bb.o, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorneERKS5_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorneERKS5_.exit.thread.i: ; preds = %bb.n, %bb.m
  %i.z = zext i8 %.pre.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %3, ptr %2, align 8, !tbaa !363
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.aa = add nuw nsw i64 %.0.i, 1
  %.pre = load ptr, ptr %3, align 8, !tbaa !351
  %.pre.i.pre = load i8, ptr %i.q, align 8, !tbaa !352
  br label %bb.m, !llvm.loop !20

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEEC2IRKS6_EEOT_m(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %.0.i)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_S5_EEEEEE5setupEm(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351, !noalias !1576 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i8, ptr %i.f, align 8, !tbaa !352, !noalias !1576 ; 6 uses
  switch i8 %i.g, label %bb.b [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS9_PKNS0_14mutable_bufferEEE5valueEiE4typeENSB_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS9_PKNS0_14mutable_bufferEEE5valueEiE4typeENSB_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.d, ptr %i.h, align 8, !tbaa !351
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %.sink.split.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !238, !noalias !1576
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.d, ptr %i.k, align 8, !tbaa !351
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !238, !noalias !1576
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.d, ptr %i.n, align 8, !tbaa !351
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !238, !noalias !1576
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.d, ptr %i.q, align 8, !tbaa !351
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !238, !noalias !1576
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.d, ptr %i.t, align 8, !tbaa !351
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.v = load i8, ptr %i.e, align 8, !tbaa !42, !noalias !1576
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr %i.d, ptr %i.w, align 8, !tbaa !351
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i8 %i.v, ptr %i.x, align 8, !tbaa !42
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS9_PKNS0_14mutable_bufferEEE5valueEiE4typeENSB_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread
  %.sink = phi i8 [ 0, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS9_PKNS0_14mutable_bufferEEE5valueEiE4typeENSB_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread ], [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  %i.y = phi ptr [ %i.i, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS9_PKNS0_14mutable_bufferEEE5valueEiE4typeENSB_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread ], [ %i.x, %bb.g ], [ %i.u, %bb.f ], [ %i.r, %bb.e ], [ %i.o, %bb.d ], [ %i.l, %bb.c ] ; 5 uses
  %i.z = phi ptr [ %i.h, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS9_PKNS0_14mutable_bufferEEE5valueEiE4typeENSB_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSB_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread ], [ %i.w, %bb.g ], [ %i.t, %bb.f ], [ %i.q, %bb.e ], [ %i.n, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i8 %.sink, ptr %i.aa, align 8, !tbaa !352
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %0, ptr %i.ab, align 8, !tbaa !366
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.t, %.sink.split.i.i.i.i.i.i
  %i.af = phi ptr [ %0, %.sink.split.i.i.i.i.i.i ], [ %.pre, %bb.t ] ; 2 uses
  %.011 = phi i64 [ %1, %.sink.split.i.i.i.i.i.i ], [ %i.bp, %bb.t ] ; 4 uses
  %i.ag = icmp eq ptr %i.af, %0
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %6 = load ptr, ptr %i.z, align 8, !tbaa !351
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load i8, ptr %i.aa, align 8, !tbaa !352
  %.not.i.i.i.i = icmp eq i8 %i.ah, 5
  br i1 %.not.i.i.i.i, label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorneERKS7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  %8 = load ptr, ptr %i.z, align 8, !tbaa !351, !noalias !1577
  store ptr %8, ptr %5, align 8, !tbaa !351, !alias.scope !1577
  store i8 0, ptr %i.ad, align 8, !tbaa !352, !alias.scope !1577
  %9 = load i8, ptr %i.aa, align 8, !tbaa !352, !noalias !1577 ; 3 uses
  switch i8 %9, label %bb.l [
    i8 0, label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorC2ERKS7_.exit.i
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !238, !noalias !1577
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !238, !alias.scope !1577
  br label %.sink.split.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.y, align 8, !tbaa !238, !noalias !1577
  store ptr %i.aj, ptr %i.ac, align 8, !tbaa !238, !alias.scope !1577
  br label %.sink.split.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !238, !noalias !1577
  store ptr %i.ak, ptr %i.ac, align 8, !tbaa !238, !alias.scope !1577
  br label %.sink.split.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !238, !noalias !1577
  store ptr %i.al, ptr %i.ac, align 8, !tbaa !238, !alias.scope !1577
  br label %.sink.split.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.k
  %i.am = load i8, ptr %i.y, align 1, !tbaa !42, !noalias !1577
  store i8 %i.am, ptr %i.ac, align 8, !tbaa !42, !alias.scope !1577
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  store i8 %9, ptr %i.ad, align 8, !tbaa !352, !alias.scope !1577
  br label %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorC2ERKS7_.exit.i

_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorC2ERKS7_.exit.i: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.k
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !366, !alias.scope !1577
  %i.an = zext nneg i8 %9 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !1577
  store ptr %i.z, ptr %4, align 8, !tbaa !363, !noalias !1577
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !1577
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !366 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %5, align 8, !tbaa !351
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !351
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.r, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i: ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorC2ERKS7_.exit.i
  %.pre.i = load i8, ptr %i.ad, align 8, !tbaa !352
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

bb.r:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorC2ERKS7_.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.au = load i8, ptr %i.ad, align 8, !tbaa !352 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !352
  %.not.i.i.i = icmp eq i8 %i.au, %i.aw
  br i1 %.not.i.i.i, label %bb.s, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.ax = add i8 %i.au, -1
  %switch.i.i.i.i.i = icmp ult i8 %i.ax, 4
  br i1 %switch.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i: ; preds = %bb.s
  %i.ay = load ptr, ptr %i.ac, align 8, !tbaa !238
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !238
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, %bb.s
  %i.bb = zext i8 %i.au to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %5, ptr %3, align 8, !tbaa !363
  %i.bc = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.bd = extractvalue { ptr, i64 } %i.bc, 1
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !366
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !361
  %i.bh = call i64 @llvm.usub.sat.i64(i64 %i.bd, i64 %i.bg)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, %bb.r, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i
  %i.bi = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i ], [ %i.au, %bb.r ], [ %i.au, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i ]
  %i.bj = zext i8 %i.bi to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %5, ptr %2, align 8, !tbaa !363
  %i.bk = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.bl = extractvalue { ptr, i64 } %i.bk, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i
  %.pn.i = phi i64 [ %i.bh, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i ], [ %i.bl, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %.not = icmp ult i64 %.pn.i, %.011
  br i1 %.not, label %bb.t, label %.thread

.thread:                                          ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !371
  %i.bn = add i64 %i.bm, %.011
  store i64 %i.bn, ptr %i.a, align 8, !tbaa !371
  %i.bo = sub i64 %.011, %.pn.i
  store i64 %i.bo, ptr %i.b, align 8, !tbaa !385
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorneERKS7_.exit

bb.t:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit
  %i.bp = sub nuw i64 %.011, %.pn.i
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !371
  %i.br = add i64 %i.bq, %.pn.i
  store i64 %i.br, ptr %i.a, align 8, !tbaa !371
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !366
  br label %bb.h

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorneERKS7_.exit: ; preds = %bb.j, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEEC2IRKS6_EEOT_m(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::decrement", align 8 ; 4 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator", align 8 ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  store ptr %0, ptr %5, align 8, !tbaa !351, !alias.scope !1584
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store i64 1, ptr %i.c, align 8, !alias.scope !1584
  store ptr %0, ptr %i.b, align 8, !tbaa !238, !alias.scope !1584
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !39, !noalias !1584
  %.not.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i:                              ; preds = %bb.a
  %.ptr5.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.ptr5.i.i.i.i, ptr %i.b, align 8, !tbaa !238, !alias.scope !1584
  store i8 2, ptr %i.c, align 8, !tbaa !352, !alias.scope !1584
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !39, !noalias !1584
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.i.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.b, align 8, !tbaa !238, !alias.scope !1584
  store i8 3, ptr %i.c, align 8, !tbaa !352, !alias.scope !1584
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.3.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !1584
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.b, align 8, !tbaa !238, !alias.scope !1584
  store i8 4, ptr %i.c, align 8, !tbaa !352, !alias.scope !1584
  %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !39, !noalias !1584
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.i.i.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !238, !alias.scope !1584
  store i8 0, ptr %i.b, align 8, !tbaa !258, !alias.scope !1584
  store i8 5, ptr %i.c, align 8, !tbaa !352, !alias.scope !1584
  br label %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit

_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit: ; preds = %bb.a, %._crit_edge.i.i.i.i, %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.preheader.i, label %.preheader7.i

.preheader7.i:                                    ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit
  %.not9.i = icmp eq i64 %2, 0
  br i1 %.not9.i, label %.noexc, label %.lr.ph.i

.preheader.i:                                     ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit, %.preheader.i
  %.011.i = phi i64 [ %i.g, %.preheader.i ], [ %2, %_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_S4_EEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKS7_PKNS0_14mutable_bufferEEE5valueEiE4typeENS9_IXntsr14is_convertibleISB_PKS4_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_SC_EE5valueEiE4typeENS9_IXntsr14is_convertibleIS7_S4_EE5valueEiE4typeE.exit ]
  %i.g = add nsw i64 %.011.i, -1                  ; 2 uses
  %i.h = load i8, ptr %i.c, align 8, !tbaa !352
  %i.i = zext i8 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %5, ptr %4, align 8, !tbaa !363
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.i, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %.not6.i = icmp eq i64 %i.g, 0
  br i1 %.not6.i, label %.noexc, label %.preheader.i, !llvm.loop !21

.lr.ph.i:                                         ; preds = %.preheader7.i, %.lr.ph.i
  %.110.i = phi i64 [ %i.j, %.lr.ph.i ], [ %2, %.preheader7.i ]
  %i.j = add nsw i64 %.110.i, 1                   ; 2 uses
  %i.k = load i8, ptr %i.c, align 8, !tbaa !352
  %i.l = zext i8 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %5, ptr %3, align 8, !tbaa !363
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9decrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.noexc, label %.lr.ph.i, !llvm.loop !22

.noexc:                                           ; preds = %.lr.ph.i, %.preheader.i, %.preheader7.i
  %i.m = load ptr, ptr %5, align 8, !tbaa !351
  store ptr %i.m, ptr %i.a, align 8, !tbaa !351
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 0, ptr %i.o, align 8, !tbaa !352
  %i.p = load i8, ptr %i.c, align 8, !tbaa !352   ; 2 uses
  switch i8 %i.p, label %bb.b [
    i8 0, label %_ZSt4nextIN5boost5beast16buffers_cat_viewIJNS0_4asio12const_bufferES4_S4_S4_EE14const_iteratorEET_S7_NSt15iterator_traitsIS7_E15difference_typeE.exit
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

bb.b:                                             ; preds = %.noexc
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !238
  store ptr %i.q, ptr %i.n, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !238
  store ptr %i.r, ptr %i.n, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !238
  store ptr %i.s, ptr %i.n, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i

bb.f:                                             ; preds = %.noexc
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !238
  store ptr %i.t, ptr %i.n, align 8, !tbaa !238
  br label %.sink.split.i.i.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.u = load i8, ptr %i.b, align 8, !tbaa !42
  store i8 %i.u, ptr %i.n, align 8, !tbaa !42
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  store i8 %i.p, ptr %i.o, align 8, !tbaa !352
  br label %_ZSt4nextIN5boost5beast16buffers_cat_viewIJNS0_4asio12const_bufferES4_S4_S4_EE14const_iteratorEET_S7_NSt15iterator_traitsIS7_E15difference_typeE.exit

_ZSt4nextIN5boost5beast16buffers_cat_viewIJNS0_4asio12const_bufferES4_S4_S4_EE14const_iteratorEET_S7_NSt15iterator_traitsIS7_E15difference_typeE.exit: ; preds = %.noexc, %.sink.split.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.x = load i64, ptr %i.w, align 8, !tbaa !361
  store i64 %i.x, ptr %i.v, align 8, !tbaa !361
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EEEEEEEmmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 16 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %6 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.a, ptr %6, align 8, !tbaa !240
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8192, ptr %i.b, align 8, !tbaa !241
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !1593)
  call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351, !noalias !1595 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load i8, ptr %i.f, align 8, !tbaa !352, !noalias !1595 ; 2 uses
  switch i8 %i.g, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %4, align 8, !tbaa !351, !alias.scope !1595
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES6_S6_S6_EEEEEEEmRKT_RKT0_.exit

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !238, !noalias !1595
  store ptr %i.d, ptr %4, align 8, !tbaa !351, !alias.scope !1595
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !238, !alias.scope !1595
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES6_S6_S6_EEEEEEEmRKT_RKT0_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !238, !noalias !1595
  store ptr %i.d, ptr %4, align 8, !tbaa !351, !alias.scope !1595
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !238, !alias.scope !1595
  br label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES6_S6_S6_EEEEEEEmRKT_RKT0_.exit

bb.e:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !238, !noalias !1595
end_hunk_0
