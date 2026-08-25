Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/http_examples?download=true
inline.NumInlined: 11863
inline.NumDeleted: 3773
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixINS6_INS4_16buffers_cat_viewIJS3_S3_S3_NS4_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEENSM_14const_iteratorEE7prepareEm:bb.a
  store ptr %i.dj, ptr %0, align 8, !tbaa !85
  %.sroa.4.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i25.peel, ptr %.sroa.4.0..sroa_idx.peel, align 8, !tbaa !16
  %i.dl = sub i64 %2, %spec.select.i25.peel
  %.not.not.peel = icmp ugt i64 %spec.select.i.peel, %i.bw
  br i1 %.not.not.peel, label %bb.w, label %.peel.next

bb.w:                                             ; preds = %bb.v
  store i64 1, ptr %i.by, align 8, !tbaa !2656
  br label %.peel.next

.peel.next:                                       ; preds = %bb.w, %bb.v
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %8), !llvm.loop !2818 ; 0 uses
  %i.dn = add i8 %i.ad, -1
  %switch.i.i.i.i.i.i19 = icmp ult i8 %i.dn, 5
  br label %bb.x

bb.x:                                             ; preds = %bb.ae, %.peel.next
  %.0 = phi i64 [ %i.dl, %.peel.next ], [ %i.fb, %bb.ae ] ; 3 uses
  %i.do = load ptr, ptr %8, align 8, !tbaa !1508
  %i.dp = icmp eq ptr %i.do, %i.a
  %i.dq = load ptr, ptr %i.y, align 8             ; 4 uses
  %i.dr = icmp eq ptr %i.dq, %i.am
  %or.cond35 = select i1 %i.dp, i1 %i.dr, i1 false
  %i.ds = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.aa
  %or.cond37 = select i1 %or.cond35, i1 %i.dt, i1 false
  %i.du = load i8, ptr %i.x, align 8
  %.not.i.i.i.i.i18 = icmp eq i8 %i.du, %i.ad
  %or.cond55 = select i1 %or.cond37, i1 %.not.i.i.i.i.i18, i1 false
  br i1 %or.cond55, label %bb.y, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit

bb.y:                                             ; preds = %bb.x
  br i1 %switch.i.i.i.i.i.i19, label %.sink.split.i.i.i.i.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit.thread

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.y
  %.sink.i.i.i.i.i.i.i20 = load ptr, ptr %i.bx, align 8, !tbaa !85
  %i.dv = icmp ne ptr %.sink.i.i.i.i.i.i.i20, %.sroa.8.1
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit: ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.x
  %i.dw = phi i1 [ true, %bb.x ], [ %i.dv, %.sink.split.i.i.i.i.i.i.i ]
  %i.dx = icmp ne i64 %.0, 0
  %or.cond = select i1 %i.dw, i1 %i.dx, i1 false
  %i.dy = load i64, ptr %i.by, align 8            ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 16
  %i.ea = select i1 %or.cond, i1 %i.dz, i1 false
  br i1 %i.ea, label %bb.z, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit.thread

bb.z:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1089
  %i.ed = icmp eq ptr %i.ds, %i.ec
  br i1 %i.ed, label %bb.aa, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i: ; preds = %bb.z
  %.pre.i.i = load i8, ptr %i.x, align 8, !tbaa !1093
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ef = load i8, ptr %i.x, align 8, !tbaa !1093 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !1093
  %.not.i.i.i.i = icmp eq i8 %i.ef, %i.eh
  br i1 %.not.i.i.i.i, label %bb.ab, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ei = add i8 %i.ef, -1
  %switch.i.i.i.i.i = icmp ult i8 %i.ei, 5
  br i1 %switch.i.i.i.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i: ; preds = %bb.ab
  %.sink.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !85
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !85
  %i.ek = icmp eq ptr %.sink.i.i.i.i.i.i, %i.ej
  br i1 %i.ek, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i, %bb.ab
  %i.el = zext i8 %i.ef to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %i.e, ptr %4, align 8, !tbaa !1094
  %i.em = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.el, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.en = extractvalue { ptr, i64 } %i.em, 0
  %i.eo = extractvalue { ptr, i64 } %i.em, 1      ; 2 uses
  %i.ep = load ptr, ptr %i.y, align 8, !tbaa !1107
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !1096
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.er, i64 %i.eo) ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 %spec.select.i.i.i
  %i.et = sub i64 %i.eo, %spec.select.i.i.i
  %.fca.0.insert.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.es, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i, i64 %i.et, 1
  br label %bb.ac

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i, %bb.aa, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i
  %i.eu = phi i8 [ %.pre.i.i, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread_crit_edge.i.i ], [ %i.ef, %bb.aa ], [ %i.ef, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i ]
  %i.ev = zext i8 %i.eu to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %i.e, ptr %3, align 8, !tbaa !1094
  %i.ew = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i
  %.pn.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i ], [ %i.ew, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i ] ; 2 uses
  %i.ex = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.ey = load i64, ptr %i.b, align 8, !tbaa !1511
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.ex) ; 2 uses
  %i.ez = extractvalue { ptr, i64 } %.pn.i.i, 0
  %spec.select.i25 = call i64 @llvm.umin.i64(i64 %spec.select.i, i64 %.0) ; 2 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.dy ; 2 uses
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !85
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %spec.select.i25, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  %i.fb = sub i64 %.0, %spec.select.i25
  %.not.not.not = icmp eq i64 %spec.select.i, 0
  br i1 %.not.not.not, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = add nuw nsw i64 %i.dy, 1
  store i64 %i.fc, ptr %i.by, align 8, !tbaa !2656
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(48) %8), !llvm.loop !2818 ; 0 uses
  br label %bb.x, !llvm.loop !2819

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit.thread: ; preds = %bb.y, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratorneERKSL_.exit.peel, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS0_12const_bufferEEEEEEENSG_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::asio::detail::consuming_buffers.306", align 8 ; 9 uses
  %5 = alloca %"struct.boost::asio::detail::prepared_buffers", align 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  store i64 %i.a, ptr %4, align 8, !tbaa !1633
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.c = inttoptr i64 %i.a to ptr                 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1579, !noalias !2820, !nonnull !70, !align !82 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1022, !noalias !2820 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.3.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !385 ; 3 uses
  %.sroa.3.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.3.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.3.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !1020
  %i.h = icmp ne ptr %i.d, %.sroa.3.sroa.2.0.copyload.i.i
  %.fr.i.i.i = freeze i1 %i.h                     ; 2 uses
  %i.i = icmp ne ptr %i.f, %.sroa.3.sroa.0.0.copyload.i.i
  %.not3.i.us16.i.i.i = select i1 %.fr.i.i.i, i1 true, i1 %i.i
  br i1 %.not3.i.us16.i.i.i, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.thread10

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1024, !noalias !2820 ; 2 uses
  %i.m = xor i1 %.fr.i.i.i, true
  tail call void @llvm.assume(i1 %i.m)
  %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload.i.i.us.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i, align 8, !tbaa !16
  %i.n = load i64, ptr %i.j, align 8, !tbaa !1121
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.us.i.peel.i.i, i64 %i.n) ; 2 uses
  %spec.select.i12.us.i.peel.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.o) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.not.i.peel.i.i = icmp eq ptr %i.p, %.sroa.3.sroa.0.0.copyload.i.i
  br i1 %.not.i.peel.i.i, label %_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEEC2ERKSD_.exit, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i
  %i.q = sub i64 %i.l, %i.o
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i
  %.0.us19.i.i.i = phi i64 [ %i.r, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ], [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i ]
  %.sroa.4.0.us18.i.i.i = phi i64 [ %i.t, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ], [ %i.q, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.7.0.us17.i.i.i = phi ptr [ %i.s, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ], [ %i.p, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.us.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.i.i, align 8, !tbaa !16 ; 2 uses
  %spec.select.i12.us.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.us18.i.i.i, i64 %.sroa.4.0.copyload.i.i.us.i.i.i)
  %i.r = add i64 %spec.select.i12.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 16 ; 2 uses
  %i.t = sub i64 %.sroa.4.0.us18.i.i.i, %.sroa.4.0.copyload.i.i.us.i.i.i
  %.not.i.i.i = icmp eq ptr %i.s, %.sroa.3.sroa.0.0.copyload.i.i
  br i1 %.not.i.i.i, label %_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEEC2ERKSD_.exit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i, !llvm.loop !1585

_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEEC2ERKSD_.exit: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i
  %.0.lcssa.us.i.i.i = phi i64 [ %spec.select.i12.us.i.peel.i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i ], [ %i.r, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %.0.lcssa.us.i.i.i, ptr %i.u, align 8, !tbaa !2829
  %.not17.not = icmp eq i64 %.0.lcssa.us.i.i.i, 0
  br i1 %.not17.not, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.thread10, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEEC2ERKSD_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit
  %i.y = phi i64 [ 0, %.lr.ph ], [ %i.af, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit ]
  %i.z = load i64, ptr %i.v, align 8, !tbaa !34   ; 2 uses
  %i.aa = and i64 %i.z, 1
  %.not.i.i.i8 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i8, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i64 %i.z, 1
  %i.ac = load i32, ptr %3, align 8
  %.fr.i = freeze i32 %i.ac
  %.not.i = icmp eq i32 %.fr.i, 0
  %or.cond.i = and i1 %i.ab, %.not.i
  br i1 %or.cond.i, label %select.unfold, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.thread10

select.unfold:                                    ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEE7prepareEm(ptr dead_on_unwind nonnull writable sret(%"struct.boost::asio::detail::prepared_buffers") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 65536)
  %i.ad = call noundef i64 @_ZN5boost5beast4test12basic_streamINS_4asio15any_io_executorEE10write_someINS3_6detail16prepared_buffersINS3_12const_bufferELm64EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(264) %5, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 3 uses
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !2831
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !2831
  %i.ag = load ptr, ptr %4, align 8, !tbaa !1571, !noalias !2832 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !1024, !noalias !2837 ; 4 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !1579, !noalias !2837, !nonnull !70, !align !82 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1022, !noalias !2837 ; 11 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.5.16.copyload.i = load ptr, ptr %i.am, align 8, !tbaa !385 ; 2 uses
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %.sroa.7.16.copyload.i = load ptr, ptr %.sroa.7.16..sroa_idx.i, align 8, !tbaa !1020
  %i.an = load i64, ptr %i.w, align 8, !tbaa !2842 ; 11 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel.i, label %.preheader10.i.i

.preheader10.i.i:                                 ; preds = %select.unfold
  %.not12.i.i = icmp eq i64 %i.an, 0
  br i1 %.not12.i.i, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.i, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader: ; preds = %.preheader10.i.i
  %i.ap = sub i64 0, %i.an
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol
  %i.aq = phi i64 [ %i.au, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ], [ %i.ai, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ]
  %i.ar = phi ptr [ %i.at, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ], [ %i.al, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ] ; 2 uses
  %.113.i.i.prol = phi i64 [ %i.as, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ], [ %i.an, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ], [ 0, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ]
  %i.as = add nsw i64 %.113.i.i.prol, 1           ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i7.i.i.prol = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %.sroa.4.0.copyload.i.i8.i.i.prol = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.prol, align 8, !tbaa !16
  %i.au = add i64 %.sroa.4.0.copyload.i.i8.i.i.prol, %i.aq ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol, !llvm.loop !2843

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ], [ %i.au, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ]
  %.unr = phi i64 [ %i.ai, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ], [ %i.au, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ]
  %.unr56 = phi ptr [ %i.al, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ], [ %i.at, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ]
  %.113.i.i.unr = phi i64 [ %i.an, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.preheader ], [ %i.as, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol ]
  %i.av = icmp ugt i64 %i.an, -8
  br i1 %i.av, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit30.i, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel.i: ; preds = %select.unfold
  %i.aw = add nsw i64 %i.an, -1                   ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.peel.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.4.0.copyload.i.i.i.peel.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.peel.i, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1121
  %i.az = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.i.peel.i, i64 %i.ay)
  %i.ba = sub i64 %i.ai, %i.az                    ; 3 uses
  %.not6.i.peel.i = icmp eq i64 %i.aw, 0
  br i1 %.not6.i.peel.i, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel.i
  %min.iters.check = icmp ult i64 %i.an, 6
  br i1 %min.iters.check, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader48, label %vector.ph

vector.ph:                                        ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader
  %i.bb = and i64 %i.aw, 3                        ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 4, i64 %i.bb       ; 2 uses
  %n.vec = sub i64 %i.aw, %i.bd                   ; 2 uses
  %i.be = shl i64 %n.vec, 4
  %i.bf = getelementptr i8, ptr %i.al, i64 %i.be
  %i.bg = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ba, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bg, %vector.ph ], [ %i.bl, %vector.body ]
  %vec.phi43 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bm, %vector.body ]
  %i.bh = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.bh
  %i.bi = getelementptr i8, ptr %i.al, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.bk = getelementptr i8, ptr %i.bi, i64 56
  %wide.vec = load <4 x i64>, ptr %i.bj, align 8, !tbaa !16
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec45 = load <4 x i64>, ptr %i.bk, align 8, !tbaa !16
  %strided.vec46 = shufflevector <4 x i64> %wide.vec45, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.bl = sub <2 x i64> %vec.phi, %strided.vec    ; 2 uses
  %i.bm = sub <2 x i64> %vec.phi43, %strided.vec46 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !2844

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bm, %i.bl
  %i.bo = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader48

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader48: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader, %middle.block
  %.018.i.i.ph = phi i64 [ %i.aw, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader ], [ %i.bd, %middle.block ]
  %.pn.i.ph = phi ptr [ %i.al, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader ], [ %i.bf, %middle.block ]
  %.ph = phi i64 [ %i.ba, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader48, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i
  %.018.i.i = phi i64 [ %i.br, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i ], [ %.018.i.i.ph, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader48 ]
  %.pn.i = phi ptr [ %i.bq, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i ], [ %.pn.i.ph, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader48 ] ; 2 uses
  %i.bp = phi i64 [ %i.bs, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i ], [ %.ph, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i.preheader48 ]
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.br = add nsw i64 %.018.i.i, -1               ; 2 uses
  %i.bs = sub i64 %i.bp, %.sroa.4.0.copyload.i.i.i.i ; 2 uses
  %.not6.i.i = icmp eq i64 %i.br, 0
  br i1 %.not6.i.i, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i, !llvm.loop !2845

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i
  %i.bt = phi i64 [ %i.ce, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i ], [ %.unr, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit ]
  %i.bu = phi ptr [ %i.cd, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i ], [ %.unr56, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit ] ; 9 uses
  %.113.i.i = phi i64 [ %i.cc, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i ], [ %.113.i.i.unr, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit ]
  %.sroa.4.0..sroa_idx.i.i7.i.i = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %.sroa.4.0.copyload.i.i8.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i, align 8, !tbaa !16
  %i.bv = add i64 %.sroa.4.0.copyload.i.i8.i.i, %i.bt
  %.sroa.4.0..sroa_idx.i.i7.i.i.1 = getelementptr inbounds i8, ptr %i.bu, i64 -24
  %.sroa.4.0.copyload.i.i8.i.i.1 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.1, align 8, !tbaa !16
  %i.bw = add i64 %.sroa.4.0.copyload.i.i8.i.i.1, %i.bv
  %.sroa.4.0..sroa_idx.i.i7.i.i.2 = getelementptr inbounds i8, ptr %i.bu, i64 -40
  %.sroa.4.0.copyload.i.i8.i.i.2 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.2, align 8, !tbaa !16
  %i.bx = add i64 %.sroa.4.0.copyload.i.i8.i.i.2, %i.bw
  %.sroa.4.0..sroa_idx.i.i7.i.i.3 = getelementptr inbounds i8, ptr %i.bu, i64 -56
  %.sroa.4.0.copyload.i.i8.i.i.3 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.3, align 8, !tbaa !16
  %i.by = add i64 %.sroa.4.0.copyload.i.i8.i.i.3, %i.bx
  %.sroa.4.0..sroa_idx.i.i7.i.i.4 = getelementptr inbounds i8, ptr %i.bu, i64 -72
  %.sroa.4.0.copyload.i.i8.i.i.4 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.4, align 8, !tbaa !16
  %i.bz = add i64 %.sroa.4.0.copyload.i.i8.i.i.4, %i.by
  %.sroa.4.0..sroa_idx.i.i7.i.i.5 = getelementptr inbounds i8, ptr %i.bu, i64 -88
  %.sroa.4.0.copyload.i.i8.i.i.5 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.5, align 8, !tbaa !16
  %i.ca = add i64 %.sroa.4.0.copyload.i.i8.i.i.5, %i.bz
  %.sroa.4.0..sroa_idx.i.i7.i.i.6 = getelementptr inbounds i8, ptr %i.bu, i64 -104
  %.sroa.4.0.copyload.i.i8.i.i.6 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.6, align 8, !tbaa !16
  %i.cb = add i64 %.sroa.4.0.copyload.i.i8.i.i.6, %i.ca
  %i.cc = add nsw i64 %.113.i.i, 8                ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.bu, i64 -128
  %.sroa.4.0..sroa_idx.i.i7.i.i.7 = getelementptr inbounds i8, ptr %i.bu, i64 -120
  %.sroa.4.0.copyload.i.i8.i.i.7 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.i.7, align 8, !tbaa !16
  %i.ce = add i64 %.sroa.4.0.copyload.i.i8.i.i.7, %i.cb ; 2 uses
  %.not.i.i.7 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.7, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit30.i, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i, !llvm.loop !2846

_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel.i
  %.lcssa31.i = phi i64 [ %i.ba, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel.i ], [ %i.bs, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.i ]
  %i.cf = shl i64 %i.an, 4
  %scevgep34.i = getelementptr i8, ptr %i.al, i64 %i.cf
  br label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit30.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i.prol.loopexit ], [ %i.ce, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.i ]
  %i.cg = shl i64 %i.an, 4
  %scevgep.i = getelementptr i8, ptr %i.al, i64 %i.cg
  br label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.i

_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit30.i, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %.preheader10.i.i
  %.sroa.12.2.i = phi ptr [ %scevgep34.i, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i ], [ %i.al, %.preheader10.i.i ], [ %scevgep.i, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit30.i ] ; 2 uses
  %.sroa.415.2.i = phi i64 [ %.lcssa31.i, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i ], [ %i.ai, %.preheader10.i.i ], [ %.lcssa, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit30.i ]
  %i.ch = icmp ne ptr %i.aj, %.sroa.7.16.copyload.i ; 2 uses
  %i.ci = icmp ne ptr %.sroa.12.2.i, %.sroa.5.16.copyload.i
  %.not3.i26.i = select i1 %i.ch, i1 true, i1 %i.ci
  %i.cj = icmp ne i64 %i.ad, 0
  %i.ck = and i1 %i.cj, %.not3.i26.i
  br i1 %i.ck, label %.peel.next, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit

.peel.next:                                       ; preds = %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %6 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i, %.peel.next
  %i.cl = phi i64 [ %i.an, %.peel.next ], [ %i.cs, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i ]
  %.029.i = phi i64 [ %i.ad, %.peel.next ], [ %i.cr, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i ] ; 3 uses
  %.sroa.415.028.i = phi i64 [ %.sroa.415.2.i, %.peel.next ], [ %i.cw, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i ] ; 2 uses
  %.sroa.12.027.i = phi ptr [ %.sroa.12.2.i, %.peel.next ], [ %i.ct, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i ] ; 3 uses
  %i.cm = icmp eq ptr %.sroa.12.027.i, %i.al      ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.12.027.i, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16 ; 2 uses
  br i1 %i.cm, label %bb.e, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.cn = load i64, ptr %6, align 8, !tbaa !1121
  %i.co = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.i, i64 %i.cn)
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.i: ; preds = %bb.e, %bb.d
  %.pn.i.i.i = phi i64 [ %i.co, %bb.e ], [ %.sroa.4.0.copyload.i.i.i, %bb.d ]
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %.sroa.415.028.i, i64 %.pn.i.i.i)
  %7 = load i64, ptr %i.x, align 8, !tbaa !2847   ; 2 uses
  %spec.select.i.i.a = call i64 @llvm.usub.sat.i64(i64 %spec.select.i.i, i64 %7) ; 2 uses
  %i.cp = icmp ult i64 %.029.i, %spec.select.i.i.a
  br i1 %i.cp, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.i, label %bb.f

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.i
  %i.cq = add i64 %7, %.029.i
  store i64 %i.cq, ptr %i.x, align 8, !tbaa !2847
  br label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit

bb.f:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.i
  %i.cr = sub nuw i64 %.029.i, %spec.select.i.i.a ; 2 uses
  store i64 0, ptr %i.x, align 8, !tbaa !2847
  %i.cs = add i64 %i.cl, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.w, align 8, !tbaa !2842
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.12.027.i, i64 16 ; 2 uses
  %.sroa.4.0.copyload.i.i8.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16 ; 2 uses
  br i1 %i.cm, label %bb.g, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.cu = load i64, ptr %6, align 8, !tbaa !1121
  %i.cv = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i8.i, i64 %i.cu)
  br label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i: ; preds = %bb.g, %bb.f
  %.pn.i.i9.i = phi i64 [ %i.cv, %bb.g ], [ %.sroa.4.0.copyload.i.i8.i, %bb.f ]
  %i.cw = sub i64 %.sroa.415.028.i, %.pn.i.i9.i
  %i.cx = icmp ne ptr %i.ct, %.sroa.5.16.copyload.i
  %.not3.i.i = select i1 %i.ch, i1 true, i1 %i.cx
  %i.cy = icmp ne i64 %i.cr, 0
  %i.cz = select i1 %.not3.i.i, i1 %i.cy, i1 false
  br i1 %i.cz, label %bb.d, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit, !llvm.loop !2848

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.i, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.da = load i64, ptr %i.u, align 8, !tbaa !2829
  %.not = icmp ult i64 %i.af, %i.da
  br i1 %.not, label %bb.b, label %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.thread10

_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit.thread10: ; preds = %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit, %bb.c, %bb.a, %_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEEC2ERKSD_.exit
  %i.db = phi i64 [ 0, %bb.a ], [ 0, %_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEEC2ERKSD_.exit ], [ %i.af, %_ZN5boost4asio6detail14transfer_all_tclINS_6system10error_codeEEEmRKT_m.exit ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i64 %i.db
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEE7prepareEm(ptr dead_on_unwind noalias writable sret(%"struct.boost::asio::detail::prepared_buffers") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 0, i64 264, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !1571, !noalias !2849 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1024, !noalias !2854 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1579, !noalias !2854, !nonnull !70, !align !82 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1022, !noalias !2854 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.16.copyload = load ptr, ptr %i.g, align 8, !tbaa !385 ; 3 uses
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.16.copyload = load ptr, ptr %.sroa.7.16..sroa_idx, align 8, !tbaa !1020
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2842 ; 10 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel, label %.preheader10.i

.preheader10.i:                                   ; preds = %bb.a
  %.not12.i = icmp eq i64 %i.i, 0
  br i1 %.not12.i, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader: ; preds = %.preheader10.i
  %i.k = sub i64 0, %i.i
  %xtraiter = and i64 %i.k, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol
  %i.l = phi i64 [ %i.p, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ], [ %i.c, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ]
  %i.m = phi ptr [ %i.o, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ], [ %i.f, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ] ; 2 uses
  %.113.i.prol = phi i64 [ %i.n, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ], [ %i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ], [ 0, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ]
  %i.n = add nsw i64 %.113.i.prol, 1              ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i7.i.prol = getelementptr inbounds i8, ptr %i.m, i64 -8
  %.sroa.4.0.copyload.i.i8.i.prol = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.prol, align 8, !tbaa !16
  %i.p = add i64 %.sroa.4.0.copyload.i.i8.i.prol, %i.l ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol, !llvm.loop !2859

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader
  %.lcssa61.unr = phi i64 [ poison, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ], [ %i.p, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ]
  %.unr = phi i64 [ %i.c, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ], [ %i.p, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ]
  %.unr62 = phi ptr [ %i.f, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ], [ %i.o, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ]
  %.113.i.unr = phi i64 [ %i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.preheader ], [ %i.n, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol ]
  %i.q = icmp ugt i64 %i.i, -8
  br i1 %i.q, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit36, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel: ; preds = %bb.a
  %i.r = add nsw i64 %i.i, -1                     ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.peel = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload.i.i.i.peel = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.peel, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !1121
  %i.u = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.i.peel, i64 %i.t)
  %i.v = sub i64 %i.c, %i.u                       ; 3 uses
  %.not6.i.peel = icmp eq i64 %i.r, 0
  br i1 %.not6.i.peel, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel
  %min.iters.check = icmp ult i64 %i.i, 6
  br i1 %min.iters.check, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader
  %i.w = and i64 %i.r, 3                          ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = select i1 %i.x, i64 4, i64 %i.w          ; 2 uses
  %n.vec = sub i64 %i.r, %i.y                     ; 2 uses
  %i.z = shl i64 %n.vec, 4
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.z
  %i.ab = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.v, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ab, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi53 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %i.ac = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ad = getelementptr i8, ptr %i.f, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.af = getelementptr i8, ptr %i.ad, i64 56
  %wide.vec = load <4 x i64>, ptr %i.ae, align 8, !tbaa !16
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec55 = load <4 x i64>, ptr %i.af, align 8, !tbaa !16
  %strided.vec56 = shufflevector <4 x i64> %wide.vec55, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.ag = sub <2 x i64> %vec.phi, %strided.vec    ; 2 uses
  %i.ah = sub <2 x i64> %vec.phi53, %strided.vec56 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !2860

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader58

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader58: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader, %middle.block
  %.018.i.ph = phi i64 [ %i.r, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader ], [ %i.y, %middle.block ]
  %.pn.ph = phi ptr [ %i.f, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader ], [ %i.aa, %middle.block ]
  %.ph = phi i64 [ %i.v, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader ], [ %i.aj, %middle.block ]
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader58, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i
  %.018.i = phi i64 [ %i.am, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i ], [ %.018.i.ph, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader58 ]
  %.pn = phi ptr [ %i.al, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i ], [ %.pn.ph, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader58 ] ; 2 uses
  %i.ak = phi i64 [ %i.an, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i ], [ %.ph, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.preheader58 ]
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.am = add nsw i64 %.018.i, -1                 ; 2 uses
  %i.an = sub i64 %i.ak, %.sroa.4.0.copyload.i.i.i ; 2 uses
  %.not6.i = icmp eq i64 %i.am, 0
  br i1 %.not6.i, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i, !llvm.loop !2861

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i
  %i.ao = phi i64 [ %i.az, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i ], [ %.unr, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit ]
  %i.ap = phi ptr [ %i.ay, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i ], [ %.unr62, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit ] ; 9 uses
  %.113.i = phi i64 [ %i.ax, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i ], [ %.113.i.unr, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit ]
  %.sroa.4.0..sroa_idx.i.i7.i = getelementptr inbounds i8, ptr %i.ap, i64 -8
  %.sroa.4.0.copyload.i.i8.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i, align 8, !tbaa !16
  %i.aq = add i64 %.sroa.4.0.copyload.i.i8.i, %i.ao
  %.sroa.4.0..sroa_idx.i.i7.i.1 = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %.sroa.4.0.copyload.i.i8.i.1 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.1, align 8, !tbaa !16
  %i.ar = add i64 %.sroa.4.0.copyload.i.i8.i.1, %i.aq
  %.sroa.4.0..sroa_idx.i.i7.i.2 = getelementptr inbounds i8, ptr %i.ap, i64 -40
  %.sroa.4.0.copyload.i.i8.i.2 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.2, align 8, !tbaa !16
  %i.as = add i64 %.sroa.4.0.copyload.i.i8.i.2, %i.ar
  %.sroa.4.0..sroa_idx.i.i7.i.3 = getelementptr inbounds i8, ptr %i.ap, i64 -56
  %.sroa.4.0.copyload.i.i8.i.3 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.3, align 8, !tbaa !16
  %i.at = add i64 %.sroa.4.0.copyload.i.i8.i.3, %i.as
  %.sroa.4.0..sroa_idx.i.i7.i.4 = getelementptr inbounds i8, ptr %i.ap, i64 -72
  %.sroa.4.0.copyload.i.i8.i.4 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.4, align 8, !tbaa !16
  %i.au = add i64 %.sroa.4.0.copyload.i.i8.i.4, %i.at
  %.sroa.4.0..sroa_idx.i.i7.i.5 = getelementptr inbounds i8, ptr %i.ap, i64 -88
  %.sroa.4.0.copyload.i.i8.i.5 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.5, align 8, !tbaa !16
  %i.av = add i64 %.sroa.4.0.copyload.i.i8.i.5, %i.au
  %.sroa.4.0..sroa_idx.i.i7.i.6 = getelementptr inbounds i8, ptr %i.ap, i64 -104
  %.sroa.4.0.copyload.i.i8.i.6 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.6, align 8, !tbaa !16
  %i.aw = add i64 %.sroa.4.0.copyload.i.i8.i.6, %i.av
  %i.ax = add nsw i64 %.113.i, 8                  ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ap, i64 -128
  %.sroa.4.0..sroa_idx.i.i7.i.7 = getelementptr inbounds i8, ptr %i.ap, i64 -120
  %.sroa.4.0.copyload.i.i8.i.7 = load i64, ptr %.sroa.4.0..sroa_idx.i.i7.i.7, align 8, !tbaa !16
  %i.az = add i64 %.sroa.4.0.copyload.i.i8.i.7, %i.aw ; 2 uses
  %.not.i.7 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.7, label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit36, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i, !llvm.loop !2846

_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel
  %.lcssa37 = phi i64 [ %i.v, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i.peel ], [ %i.an, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.i ]
  %i.ba = shl i64 %i.i, 4
  %scevgep40 = getelementptr i8, ptr %i.f, i64 %i.ba
  br label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit36: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit
  %.lcssa61 = phi i64 [ %.lcssa61.unr, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i.prol.loopexit ], [ %i.az, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratormmEv.exit.i ]
  %i.bb = shl i64 %i.i, 4
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.bb
  br label %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit36, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit, %.preheader10.i
  %.sroa.12.1 = phi ptr [ %scevgep40, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit ], [ %i.f, %.preheader10.i ], [ %scevgep, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit36 ] ; 5 uses
  %.sroa.419.1 = phi i64 [ %.lcssa37, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit ], [ %i.c, %.preheader10.i ], [ %.lcssa61, %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit36 ] ; 2 uses
  %i.bc = icmp ne ptr %i.d, %.sroa.7.16.copyload  ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.be = icmp ne ptr %.sroa.12.1, %.sroa.5.16.copyload
  %.not3.i30 = select i1 %i.bc, i1 true, i1 %i.be
  %i.bf = icmp ne i64 %2, 0
  %or.cond31 = and i1 %.not3.i30, %i.bf
  br i1 %or.cond31, label %.lr.ph, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZSt9__advanceIN5boost5beast19buffers_prefix_viewIRKNS1_14buffers_suffixINS0_4asio12const_bufferEEEE14const_iteratorElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !2847 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.bj = icmp eq ptr %.sroa.12.1, %i.f           ; 2 uses
  %.sroa.0.0.copyload1.i.i.peel = load ptr, ptr %.sroa.12.1, align 8, !tbaa !85 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.peel = getelementptr inbounds nuw i8, ptr %.sroa.12.1, i64 8
  %.sroa.4.0.copyload.i.i.peel = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel, align 8, !tbaa !16 ; 5 uses
  br i1 %i.bj, label %bb.b, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit.peel

bb.b:                                             ; preds = %.lr.ph
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !1121
  %spec.select.i.i.i.peel = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %.sroa.4.0.copyload.i.i.peel) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i.peel, i64 %spec.select.i.i.i.peel
  %i.bm = sub i64 %.sroa.4.0.copyload.i.i.peel, %spec.select.i.i.i.peel
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!2648 = distinct !{!2648, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv"}
!2649 = distinct !{!2649, !2650, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE: argument 0"}
!2650 = distinct !{!2650, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE"}
!2651 = !{!2604, !17, i64 24}
!2652 = distinct !{!2652, !64}
!2653 = distinct !{!2653, !64}
!2654 = !{!2604, !17, i64 32}
!2655 = distinct !{!2655, !64}
!2656 = !{!2657, !17, i64 256}
!2657 = !{!"_ZTSN5boost4asio6detail16prepared_buffersINS0_12const_bufferELm64EEE", !7, i64 0, !17, i64 256}
!2658 = distinct !{!2658, !64}
!2659 = distinct !{!2659, !2660}
!2660 = !{!"llvm.loop.unroll.disable"}
!2661 = !{!2662}
!2662 = distinct !{!2662, !2663, !"_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv: argument 0"}
!2663 = distinct !{!2663, !"_ZNK5boost8weak_ptrINS_5beast4test6detail12stream_stateEE4lockEv"}
!2664 = !{!2665}
!2665 = distinct !{!2665, !2666, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE: argument 0"}
!2666 = distinct !{!2666, !"_ZN5boost4asio5error15make_error_codeENS1_12basic_errorsE"}
!2667 = distinct !{!2667, !2660}
!2668 = distinct !{!2668, !64}
!2669 = !{!2670}
!2670 = distinct !{!2670, !2671, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE: argument 0"}
!2671 = distinct !{!2671, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE"}
!2672 = !{!2673}
!2673 = distinct !{!2673, !2674, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE5beginEv: argument 0"}
!2674 = distinct !{!2674, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE5beginEv"}
!2675 = !{!2673, !2670}
!2676 = !{!2677}
!2677 = distinct !{!2677, !2678, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE: argument 0"}
!2678 = distinct !{!2678, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE"}
!2679 = !{!2680}
!2680 = distinct !{!2680, !2681, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE5beginEv: argument 0"}
!2681 = distinct !{!2681, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE5beginEv"}
!2682 = !{!2680, !2677, !2673, !2670}
!2683 = !{!2684}
!2684 = distinct !{!2684, !2685, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE5beginEv: argument 0"}
!2685 = distinct !{!2685, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEES6_EEEE5beginEv"}
!2686 = !{!2687, !2689, !2691, !2693}
!2687 = distinct !{!2687, !2688, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE3endEv: argument 0"}
!2688 = distinct !{!2688, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEE3endEv"}
!2689 = distinct !{!2689, !2690, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE: argument 0"}
!2690 = distinct !{!2690, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSR_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE"}
!2691 = distinct !{!2691, !2692, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv: argument 0"}
!2692 = distinct !{!2692, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEES7_EEEEEEEE3endEv"}
!2693 = distinct !{!2693, !2694, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE: argument 0"}
!2694 = distinct !{!2694, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEES8_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSP_PKNS0_14mutable_bufferEEE5valueEiE4typeENSR_IXntsr14is_convertibleIST_PKS8_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_SU_EE5valueEiE4typeENSR_IXntsr14is_convertibleISP_S8_EE5valueEiE4typeE"}
!2695 = distinct !{!2695, !64}
!2696 = distinct !{!2696, !1030}
!2697 = !{!2698, !1074, i64 0}
!2698 = !{!"_ZTSN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEES5_EE14const_iterator9decrementE", !1074, i64 0}
!2699 = distinct !{!2699, !64}
!2700 = !{!2701, !2703}
!2701 = distinct !{!2701, !2702, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv: argument 0"}
!2702 = distinct !{!2702, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv"}
!2703 = distinct !{!2703, !2704, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2704 = distinct !{!2704, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2705 = !{!2706, !2708}
!2706 = distinct !{!2706, !2707, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv: argument 0"}
!2707 = distinct !{!2707, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv"}
!2708 = distinct !{!2708, !2709, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2709 = distinct !{!2709, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2710 = !{!2711}
!2711 = distinct !{!2711, !2712, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2712 = distinct !{!2712, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2713 = !{!2714}
!2714 = distinct !{!2714, !2715, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE5beginEv: argument 0"}
!2715 = distinct !{!2715, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE5beginEv"}
!2716 = !{!2714, !2711}
!2717 = !{!2718}
!2718 = distinct !{!2718, !2719, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS5_10chunk_crlfEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSF_PKNS0_14mutable_bufferEEE5valueEiE4typeENSH_IXntsr14is_convertibleISI_PKS4_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_S4_EE5valueEiE4typeE: argument 0"}
!2719 = distinct !{!2719, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS5_10chunk_crlfEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSF_PKNS0_14mutable_bufferEEE5valueEiE4typeENSH_IXntsr14is_convertibleISI_PKS4_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_S4_EE5valueEiE4typeE"}
!2720 = !{!2721}
!2721 = distinct !{!2721, !2722, !"_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE5beginEv: argument 0"}
!2722 = distinct !{!2722, !"_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE5beginEv"}
!2723 = !{!2721, !2718, !2714, !2711}
!2724 = !{!2721, !2718}
!2725 = !{!2726, !2728, !2721, !2718}
!2726 = distinct !{!2726, !2727, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv: argument 0"}
!2727 = distinct !{!2727, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv"}
!2728 = distinct !{!2728, !2729, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE: argument 0"}
!2729 = distinct !{!2729, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE"}
!2730 = distinct !{!2730, !64}
!2731 = !{!2732, !1095, i64 0}
!2732 = !{!"_ZTSN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iterator9decrementE", !1095, i64 0}
!2733 = distinct !{!2733, !64}
!2734 = distinct !{!2734, !64}
!2735 = distinct !{!2735, !64}
!2736 = !{!2737, !2739}
!2737 = distinct !{!2737, !2738, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv: argument 0"}
!2738 = distinct !{!2738, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv"}
!2739 = distinct !{!2739, !2740, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE: argument 0"}
!2740 = distinct !{!2740, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE"}
!2741 = distinct !{!2741, !64}
!2742 = distinct !{!2742, !64}
!2743 = !{!2744, !2746}
!2744 = distinct !{!2744, !2745, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range3endEv: argument 0"}
!2745 = distinct !{!2745, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range3endEv"}
!2746 = distinct !{!2746, !2747, !"_ZN5boost4asio19buffer_sequence_endINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE: argument 0"}
!2747 = distinct !{!2747, !"_ZN5boost4asio19buffer_sequence_endINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE"}
!2748 = !{!2749, !2751}
!2749 = distinct !{!2749, !2750, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv: argument 0"}
!2750 = distinct !{!2750, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv"}
!2751 = distinct !{!2751, !2752, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE: argument 0"}
!2752 = distinct !{!2752, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE"}
!2753 = !{!2754}
!2754 = distinct !{!2754, !2755, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE: argument 0"}
!2755 = distinct !{!2755, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE"}
!2756 = !{!2757}
!2757 = distinct !{!2757, !2758, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv: argument 0"}
!2758 = distinct !{!2758, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv"}
!2759 = !{!2757, !2754}
!2760 = !{!2761}
!2761 = distinct !{!2761, !2762, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE: argument 0"}
!2762 = distinct !{!2762, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE"}
!2763 = !{!2764}
!2764 = distinct !{!2764, !2765, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE5beginEv: argument 0"}
!2765 = distinct !{!2765, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE5beginEv"}
!2766 = !{!2764, !2761, !2757, !2754}
!2767 = !{!2768}
!2768 = distinct !{!2768, !2769, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISN_PKS7_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_SO_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_S7_EE5valueEiE4typeE: argument 0"}
!2769 = distinct !{!2769, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISN_PKS7_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_SO_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_S7_EE5valueEiE4typeE"}
!2770 = !{!2771}
!2771 = distinct !{!2771, !2772, !"_ZNK5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE5beginEv: argument 0"}
!2772 = distinct !{!2772, !"_ZNK5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE5beginEv"}
!2773 = !{!2771, !2768, !2764, !2761, !2757, !2754}
!2774 = !{!2775, !2777, !2779, !2781}
!2775 = distinct !{!2775, !2776, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE3endEv: argument 0"}
!2776 = distinct !{!2776, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE3endEv"}
!2777 = distinct !{!2777, !2778, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE: argument 0"}
!2778 = distinct !{!2778, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE"}
!2779 = distinct !{!2779, !2780, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE3endEv: argument 0"}
!2780 = distinct !{!2780, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE3endEv"}
!2781 = distinct !{!2781, !2782, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE: argument 0"}
!2782 = distinct !{!2782, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE"}
!2783 = !{!2608, !17, i64 24}
!2784 = distinct !{!2784, !64}
!2785 = distinct !{!2785, !64}
!2786 = !{!2608, !17, i64 32}
!2787 = distinct !{!2787, !64}
!2788 = !{!2789}
!2789 = distinct !{!2789, !2790, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE: argument 0"}
!2790 = distinct !{!2790, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE"}
!2791 = !{!2792}
!2792 = distinct !{!2792, !2793, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv: argument 0"}
!2793 = distinct !{!2793, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE5beginEv"}
!2794 = !{!2792, !2789}
!2795 = !{!2796}
!2796 = distinct !{!2796, !2797, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE: argument 0"}
!2797 = distinct !{!2797, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE"}
!2798 = !{!2799}
!2799 = distinct !{!2799, !2800, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE5beginEv: argument 0"}
!2800 = distinct !{!2800, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE5beginEv"}
!2801 = !{!2799, !2796, !2792, !2789}
!2802 = !{!2803}
!2803 = distinct !{!2803, !2804, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISN_PKS7_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_SO_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_S7_EE5valueEiE4typeE: argument 0"}
!2804 = distinct !{!2804, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES7_S7_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISN_PKS7_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_SO_EE5valueEiE4typeENSM_IXntsr14is_convertibleISJ_S7_EE5valueEiE4typeE"}
!2805 = !{!2806}
!2806 = distinct !{!2806, !2807, !"_ZNK5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE5beginEv: argument 0"}
!2807 = distinct !{!2807, !"_ZNK5boost5beast14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEE5beginEv"}
!2808 = !{!2806, !2803, !2799, !2796, !2792, !2789}
!2809 = !{!2810, !2812, !2814, !2816}
!2810 = distinct !{!2810, !2811, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE3endEv: argument 0"}
!2811 = distinct !{!2811, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE3endEv"}
!2812 = distinct !{!2812, !2813, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE: argument 0"}
!2813 = distinct !{!2813, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISR_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_SS_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISN_S8_EE5valueEiE4typeE"}
!2814 = distinct !{!2814, !2815, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE3endEv: argument 0"}
!2815 = distinct !{!2815, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS2_INS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEEEE3endEv"}
!2816 = distinct !{!2816, !2817, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE: argument 0"}
!2817 = distinct !{!2817, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSO_PKNS0_14mutable_bufferEEE5valueEiE4typeENSQ_IXntsr14is_convertibleISS_PKS8_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_ST_EE5valueEiE4typeENSQ_IXntsr14is_convertibleISO_S8_EE5valueEiE4typeE"}
!2818 = distinct !{!2818, !64}
!2819 = distinct !{!2819, !1030}
!2820 = !{!2821, !2823, !2825, !2827}
!2821 = distinct !{!2821, !2822, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE5beginEv: argument 0"}
!2822 = distinct !{!2822, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE5beginEv"}
!2823 = distinct !{!2823, !2824, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSC_PKNS0_14mutable_bufferEEE5valueEiE4typeENSE_IXntsr14is_convertibleISF_PKS5_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_S5_EE5valueEiE4typeE: argument 0"}
!2824 = distinct !{!2824, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSC_PKNS0_14mutable_bufferEEE5valueEiE4typeENSE_IXntsr14is_convertibleISF_PKS5_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_S5_EE5valueEiE4typeE"}
!2825 = distinct !{!2825, !2826, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEE5beginEv: argument 0"}
!2826 = distinct !{!2826, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEE5beginEv"}
!2827 = distinct !{!2827, !2828, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSF_PKNS0_14mutable_bufferEEE5valueEiE4typeENSH_IXntsr14is_convertibleISI_PKS7_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_S7_EE5valueEiE4typeE: argument 0"}
!2828 = distinct !{!2828, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSF_PKNS0_14mutable_bufferEEE5valueEiE4typeENSH_IXntsr14is_convertibleISI_PKS7_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_S7_EE5valueEiE4typeE"}
!2829 = !{!2830, !17, i64 8}
!2830 = !{!"_ZTSN5boost4asio6detail17consuming_buffersINS0_12const_bufferENS_5beast6detail11buffers_refINS4_19buffers_prefix_viewIRKNS4_14buffers_suffixIS3_EEEEEENSC_14const_iteratorEEE", !1572, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32}
!2831 = !{!2830, !17, i64 16}
!2832 = !{!2833, !2835}
!2833 = distinct !{!2833, !2834, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEE5beginEv: argument 0"}
!2834 = distinct !{!2834, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEE5beginEv"}
!2835 = distinct !{!2835, !2836, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISI_PKS7_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_S7_EE5valueEiE4typeE: argument 0"}
!2836 = distinct !{!2836, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISI_PKS7_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_S7_EE5valueEiE4typeE"}
!2837 = !{!2838, !2840, !2833, !2835}
!2838 = distinct !{!2838, !2839, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE5beginEv: argument 0"}
!2839 = distinct !{!2839, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE5beginEv"}
!2840 = distinct !{!2840, !2841, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSC_PKNS0_14mutable_bufferEEE5valueEiE4typeENSE_IXntsr14is_convertibleISF_PKS5_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_S5_EE5valueEiE4typeE: argument 0"}
!2841 = distinct !{!2841, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSC_PKNS0_14mutable_bufferEEE5valueEiE4typeENSE_IXntsr14is_convertibleISF_PKS5_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_S5_EE5valueEiE4typeE"}
!2842 = !{!2830, !17, i64 24}
!2843 = distinct !{!2843, !2660}
!2844 = distinct !{!2844, !64, !1030, !157, !158}
!2845 = distinct !{!2845, !64, !1030, !158, !157}
!2846 = distinct !{!2846, !64}
!2847 = !{!2830, !17, i64 32}
!2848 = distinct !{!2848, !64}
!2849 = !{!2850, !2852}
!2850 = distinct !{!2850, !2851, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEE5beginEv: argument 0"}
!2851 = distinct !{!2851, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEE5beginEv"}
!2852 = distinct !{!2852, !2853, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISI_PKS7_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_S7_EE5valueEiE4typeE: argument 0"}
!2853 = distinct !{!2853, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISI_PKS7_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSG_IXntsr14is_convertibleISE_S7_EE5valueEiE4typeE"}
!2854 = !{!2855, !2857, !2850, !2852}
!2855 = distinct !{!2855, !2856, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE5beginEv: argument 0"}
!2856 = distinct !{!2856, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE5beginEv"}
!2857 = distinct !{!2857, !2858, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSC_PKNS0_14mutable_bufferEEE5valueEiE4typeENSE_IXntsr14is_convertibleISF_PKS5_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_S5_EE5valueEiE4typeE: argument 0"}
!2858 = distinct !{!2858, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS0_12const_bufferEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSC_PKNS0_14mutable_bufferEEE5valueEiE4typeENSE_IXntsr14is_convertibleISF_PKS5_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_SG_EE5valueEiE4typeENSE_IXntsr14is_convertibleISB_S5_EE5valueEiE4typeE"}
!2859 = distinct !{!2859, !2660}
!2860 = distinct !{!2860, !64, !1030, !157, !158}
!2861 = distinct !{!2861, !64, !1030, !158, !157}
!2862 = distinct !{!2862, !64, !1030}
!2863 = !{!2864}
!2864 = distinct !{!2864, !2865, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE: argument 0"}
!2865 = distinct !{!2865, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE"}
!2866 = !{!2867}
!2867 = distinct !{!2867, !2868, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE5beginEv: argument 0"}
!2868 = distinct !{!2868, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE5beginEv"}
!2869 = !{!2867, !2864}
!2870 = !{!2871}
!2871 = distinct !{!2871, !2872, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S8_EE5valueEiE4typeE: argument 0"}
!2872 = distinct !{!2872, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S8_EE5valueEiE4typeE"}
!2873 = !{!2874}
!2874 = distinct !{!2874, !2875, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE5beginEv: argument 0"}
!2875 = distinct !{!2875, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE5beginEv"}
!2876 = !{!2874, !2871, !2867, !2864}
!2877 = !{!2878}
!2878 = distinct !{!2878, !2879, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE5beginEv: argument 0"}
!2879 = distinct !{!2879, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE5beginEv"}
!2880 = !{!2612, !17, i64 24}
!2881 = distinct !{!2881, !64}
!2882 = distinct !{!2882, !64}
!2883 = !{!2612, !17, i64 32}
!2884 = distinct !{!2884, !64}
!2885 = !{!2886}
!2886 = distinct !{!2886, !2887, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE: argument 0"}
!2887 = distinct !{!2887, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS4_INS7_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISV_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_SW_EE5valueEiE4typeENST_IXntsr14is_convertibleISR_S8_EE5valueEiE4typeE"}
!2888 = !{!2889}
!2889 = distinct !{!2889, !2890, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE5beginEv: argument 0"}
!2890 = distinct !{!2890, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS2_INS5_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEEEE5beginEv"}
!2891 = !{!2889, !2886}
!2892 = !{!2893}
!2893 = distinct !{!2893, !2894, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S8_EE5valueEiE4typeE: argument 0"}
!2894 = distinct !{!2894, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_6detail11buffers_refINS5_IJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEENS9_6detail10chunk_sizeES8_SF_S8_SF_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSR_PKNS0_14mutable_bufferEEE5valueEiE4typeENST_IXntsr14is_convertibleISU_PKS8_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_SV_EE5valueEiE4typeENST_IXntsr14is_convertibleISQ_S8_EE5valueEiE4typeE"}
!2895 = !{!2896}
!2896 = distinct !{!2896, !2897, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE5beginEv: argument 0"}
!2897 = distinct !{!2897, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS3_IJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEENS8_6detail10chunk_sizeES7_SE_S7_SE_EEEEEE5beginEv"}
!2898 = !{!2896, !2893, !2889, !2886}
!2899 = !{!2900}
!2900 = distinct !{!2900, !2901, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE5beginEv: argument 0"}
!2901 = distinct !{!2901, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_6detail11buffers_refINS2_IJNS_4asio12const_bufferES6_S6_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEENS7_6detail10chunk_sizeES6_SD_S6_SD_EEEE5beginEv"}
!2902 = distinct !{!2902, !64}
!2903 = distinct !{!2903, !1030}
!2904 = !{!2905, !1130, i64 0}
!2905 = !{!"_ZTSN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iterator9decrementE", !1130, i64 0}
!2906 = distinct !{!2906, !64}
!2907 = !{!2908, !2910}
!2908 = distinct !{!2908, !2909, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv: argument 0"}
!2909 = distinct !{!2909, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv"}
!2910 = distinct !{!2910, !2911, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2911 = distinct !{!2911, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2912 = distinct !{!2912, !64}
!2913 = !{!2914, !2916}
!2914 = distinct !{!2914, !2915, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv: argument 0"}
!2915 = distinct !{!2915, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv"}
!2916 = distinct !{!2916, !2917, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2917 = distinct !{!2917, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2918 = distinct !{!2918, !64}
!2919 = !{!2920, !2922}
!2920 = distinct !{!2920, !2921, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv: argument 0"}
!2921 = distinct !{!2921, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv"}
!2922 = distinct !{!2922, !2923, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2923 = distinct !{!2923, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2924 = distinct !{!2924, !64}
!2925 = !{!2926}
!2926 = distinct !{!2926, !2927, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2927 = distinct !{!2927, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2928 = !{!2929}
!2929 = distinct !{!2929, !2930, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE5beginEv: argument 0"}
!2930 = distinct !{!2930, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE5beginEv"}
!2931 = !{!2929, !2926}
!2932 = !{!2933}
!2933 = distinct !{!2933, !2934, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS5_10chunk_crlfEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSF_PKNS0_14mutable_bufferEEE5valueEiE4typeENSH_IXntsr14is_convertibleISI_PKS4_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_S4_EE5valueEiE4typeE: argument 0"}
!2934 = distinct !{!2934, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast16buffers_cat_viewIJNS0_12const_bufferES4_S4_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS5_10chunk_crlfEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSF_PKNS0_14mutable_bufferEEE5valueEiE4typeENSH_IXntsr14is_convertibleISI_PKS4_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_SJ_EE5valueEiE4typeENSH_IXntsr14is_convertibleISE_S4_EE5valueEiE4typeE"}
!2935 = !{!2936}
!2936 = distinct !{!2936, !2937, !"_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE5beginEv: argument 0"}
!2937 = distinct !{!2937, !"_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE5beginEv"}
!2938 = !{!2936, !2933, !2929, !2926}
!2939 = !{!2936, !2933}
!2940 = !{!2941, !2943, !2936, !2933}
!2941 = distinct !{!2941, !2942, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv: argument 0"}
!2942 = distinct !{!2942, !"_ZNK5boost5beast4http12basic_fieldsISaIcEE6writer11field_range5beginEv"}
!2943 = distinct !{!2943, !2944, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE: argument 0"}
!2944 = distinct !{!2944, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast4http12basic_fieldsISaIcEE6writer11field_rangeEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSB_PKNS0_14mutable_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISE_PKNS0_12const_bufferEEE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SF_EE5valueEiE4typeENSD_IXntsr14is_convertibleISA_SK_EE5valueEiE4typeE"}
!2945 = distinct !{!2945, !64}
!2946 = distinct !{!2946, !64}
!2947 = !{!2948, !2950}
!2948 = distinct !{!2948, !2949, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv: argument 0"}
!2949 = distinct !{!2949, !"_ZNK5boost5beast6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEE3endEv"}
!2950 = distinct !{!2950, !2951, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE: argument 0"}
!2951 = distinct !{!2951, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_16buffers_cat_viewIJNS0_12const_bufferES6_S6_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS7_10chunk_crlfEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS6_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S6_EE5valueEiE4typeE"}
!2952 = !{!2953}
!2953 = distinct !{!2953, !2954, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE: argument 0"}
!2954 = distinct !{!2954, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE"}
!2955 = !{!2956}
!2956 = distinct !{!2956, !2957, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv: argument 0"}
!2957 = distinct !{!2957, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv"}
!2958 = !{!2956, !2953}
!2959 = !{!2960}
!2960 = distinct !{!2960, !2961, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE: argument 0"}
!2961 = distinct !{!2961, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE"}
!2962 = !{!2963}
!2963 = distinct !{!2963, !2964, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE5beginEv: argument 0"}
!2964 = distinct !{!2964, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE5beginEv"}
!2965 = !{!2963, !2960, !2956, !2953}
!2966 = !{!2967}
!2967 = distinct !{!2967, !2968, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS5_10chunk_crlfES8_S9_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISH_PKS8_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_SI_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_S8_EE5valueEiE4typeE: argument 0"}
!2968 = distinct !{!2968, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS5_10chunk_crlfES8_S9_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISH_PKS8_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_SI_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_S8_EE5valueEiE4typeE"}
!2969 = !{!2970}
!2970 = distinct !{!2970, !2971, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE5beginEv: argument 0"}
!2971 = distinct !{!2971, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE5beginEv"}
!2972 = !{!2970, !2967, !2963, !2960, !2956, !2953}
!2973 = !{!2974, !2976, !2978, !2980}
!2974 = distinct !{!2974, !2975, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE3endEv: argument 0"}
!2975 = distinct !{!2975, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE3endEv"}
!2976 = distinct !{!2976, !2977, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE: argument 0"}
!2977 = distinct !{!2977, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE"}
!2978 = distinct !{!2978, !2979, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE3endEv: argument 0"}
!2979 = distinct !{!2979, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE3endEv"}
!2980 = distinct !{!2980, !2981, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE: argument 0"}
!2981 = distinct !{!2981, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE"}
!2982 = !{!2616, !17, i64 24}
!2983 = distinct !{!2983, !64}
!2984 = distinct !{!2984, !64}
!2985 = !{!2616, !17, i64 32}
!2986 = distinct !{!2986, !64}
!2987 = !{!2988}
!2988 = distinct !{!2988, !2989, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE: argument 0"}
!2989 = distinct !{!2989, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE"}
!2990 = !{!2991}
!2991 = distinct !{!2991, !2992, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv: argument 0"}
!2992 = distinct !{!2992, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE5beginEv"}
!2993 = !{!2991, !2988}
!2994 = !{!2995}
!2995 = distinct !{!2995, !2996, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE: argument 0"}
!2996 = distinct !{!2996, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE"}
!2997 = !{!2998}
!2998 = distinct !{!2998, !2999, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE5beginEv: argument 0"}
!2999 = distinct !{!2999, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE5beginEv"}
!3000 = !{!2998, !2995, !2991, !2988}
!3001 = !{!3002}
!3002 = distinct !{!3002, !3003, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS5_10chunk_crlfES8_S9_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISH_PKS8_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_SI_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_S8_EE5valueEiE4typeE: argument 0"}
!3003 = distinct !{!3003, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS5_10chunk_crlfES8_S9_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISH_PKS8_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_SI_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_S8_EE5valueEiE4typeE"}
!3004 = !{!3005}
!3005 = distinct !{!3005, !3006, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE5beginEv: argument 0"}
!3006 = distinct !{!3006, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_EEEE5beginEv"}
!3007 = !{!3005, !3002, !2998, !2995, !2991, !2988}
!3008 = !{!3009, !3011, !3013, !3015}
!3009 = distinct !{!3009, !3010, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE3endEv: argument 0"}
!3010 = distinct !{!3010, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_EEEEEE3endEv"}
!3011 = distinct !{!3011, !3012, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE: argument 0"}
!3012 = distinct !{!3012, !"_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_EEEEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE"}
!3013 = distinct !{!3013, !3014, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE3endEv: argument 0"}
!3014 = distinct !{!3014, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_EEEEEEEE3endEv"}
!3015 = distinct !{!3015, !3016, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE: argument 0"}
!3016 = distinct !{!3016, !"_ZN5boost4asio19buffer_sequence_endINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_EEEEEEEEEEEDTcldtfp_3endEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE"}
!3017 = distinct !{!3017, !64}
!3018 = distinct !{!3018, !1030}
!3019 = !{!3020, !388, i64 0}
!3020 = !{!"_ZTSN5boost5beast16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS2_10chunk_crlfES6_S7_EE14const_iterator9decrementE", !388, i64 0}
!3021 = distinct !{!3021, !64}
!3022 = distinct !{!3022, !64}
!3023 = distinct !{!3023, !64}
!3024 = distinct !{!3024, !64}
!3025 = distinct !{!3025, !64}
!3026 = !{!3027}
!3027 = distinct !{!3027, !3028, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE: argument 0"}
!3028 = distinct !{!3028, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS8_10chunk_crlfESB_SC_SB_SB_SC_EEEEEEEEEEEDTcldtfp_5beginEERT_NS0_10constraintIXntsr14is_convertibleIPKSK_PKNS0_14mutable_bufferEEE5valueEiE4typeENSM_IXntsr14is_convertibleISO_PKSB_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SP_EE5valueEiE4typeENSM_IXntsr14is_convertibleISK_SB_EE5valueEiE4typeE"}
!3029 = !{!3030}
!3030 = distinct !{!3030, !3031, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_SA_SA_SB_EEEEEEEE5beginEv: argument 0"}
!3031 = distinct !{!3031, !"_ZNK5boost5beast6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS6_10chunk_crlfESA_SB_SA_SA_SB_EEEEEEEE5beginEv"}
!3032 = !{!3030, !3027}
!3033 = !{!3034}
!3034 = distinct !{!3034, !3035, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_S9_S9_SA_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE: argument 0"}
!3035 = distinct !{!3035, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast19buffers_prefix_viewIRKNS2_14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS6_10chunk_crlfES9_SA_S9_S9_SA_EEEEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSI_PKNS0_14mutable_bufferEEE5valueEiE4typeENSK_IXntsr14is_convertibleISL_PKS9_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_SM_EE5valueEiE4typeENSK_IXntsr14is_convertibleISH_S9_EE5valueEiE4typeE"}
!3036 = !{!3037}
!3037 = distinct !{!3037, !3038, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE5beginEv: argument 0"}
!3038 = distinct !{!3038, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE5beginEv"}
!3039 = !{!3037, !3034, !3030, !3027}
!3040 = !{!3041}
!3041 = distinct !{!3041, !3042, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS5_10chunk_crlfES8_S9_S8_S8_S9_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISH_PKS8_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_SI_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_S8_EE5valueEiE4typeE: argument 0"}
!3042 = distinct !{!3042, !"_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS2_4http6detail10chunk_sizeENS0_12const_bufferENS5_10chunk_crlfES8_S9_S8_S8_S9_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSE_PKNS0_14mutable_bufferEEE5valueEiE4typeENSG_IXntsr14is_convertibleISH_PKS8_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_SI_EE5valueEiE4typeENSG_IXntsr14is_convertibleISD_S8_EE5valueEiE4typeE"}
!3043 = !{!3044}
!3044 = distinct !{!3044, !3045, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE5beginEv: argument 0"}
!3045 = distinct !{!3045, !"_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS3_10chunk_crlfES7_S8_S7_S7_S8_EEEE5beginEv"}
!3046 = !{!3044, !3041, !3037, !3034, !3030, !3027}
!3047 = !{!3048, !3050, !3052, !3054}
!3048 = distinct !{!3048, !3049, !"_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS0_4http6detail10chunk_sizeENS_4asio12const_bufferENS4_10chunk_crlfES8_S9_S8_S8_S9_EEEEEE3endEv: argument 0"}
end_hunk_1
