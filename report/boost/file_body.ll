Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/file_body?download=true
inline.NumInlined: 6424
inline.NumDeleted: 2193
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS6_INS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEEEEEEEEEEmRKT_RNS_6system10error_codeE:bb.a
    i8 3, label %bb.ab
    i8 4, label %bb.ac
    i8 5, label %bb.ad
    i8 6, label %bb.ae
  ]

bb.y:                                             ; preds = %.preheader.i
  unreachable

bb.z:                                             ; preds = %.preheader.i
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !293
  br label %bb.af

bb.aa:                                            ; preds = %.preheader.i
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !293
  br label %bb.af

bb.ab:                                            ; preds = %.preheader.i
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !293
  br label %bb.af

bb.ac:                                            ; preds = %.preheader.i
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !380
  br label %bb.af

bb.ad:                                            ; preds = %.preheader.i
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !293
  br label %bb.af

bb.ae:                                            ; preds = %.preheader.i
  %i.bm = load i8, ptr %i.au, align 8, !tbaa !53
  %.sroa.7.24.insert.ext = zext i8 %i.bm to i64
  %i.bn = inttoptr i64 %.sroa.7.24.insert.ext to ptr
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %.preheader.i
  %.sroa.7.1 = phi ptr [ undef, %.preheader.i ], [ %i.bn, %bb.ae ], [ %i.bl, %bb.ad ], [ %i.bk, %bb.ac ], [ %i.bj, %bb.ab ], [ %i.bi, %bb.aa ], [ %i.bh, %bb.z ]
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !418
  %i.bp = icmp eq ptr %.sroa.054.0.copyload, %i.b
  %i.bq = icmp eq ptr %i.bo, %i.an
  %or.cond69 = select i1 %i.bp, i1 %i.bq, i1 false
  %i.br = icmp eq ptr %i.bf, %i.ab
  %or.cond70 = select i1 %or.cond69, i1 %i.br, i1 false
  %.not.i.i.i.i38 = icmp eq i8 %i.bg, %i.ae
  %or.cond71 = and i1 %.not.i.i.i.i38, %or.cond70
  br i1 %or.cond71, label %bb.ag, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread

bb.ag:                                            ; preds = %bb.af
  %i.bs = add nsw i8 %i.ae, -6
  %switch.i.i.i.i.i39 = icmp ult i8 %i.bs, -5
  %i.bt = icmp eq ptr %.sroa.7.1, %.sroa.10.1
  %or.cond72 = select i1 %switch.i.i.i.i.i39, i1 true, i1 %i.bt
  br i1 %or.cond72, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread66, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread66: ; preds = %bb.ag
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !375
  %i.bv = icmp eq ptr %i.i, %i.bu
  br i1 %i.bv, label %bb.ah, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i

bb.ah:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread66
  %i.bw = load i8, ptr %i.k, align 8, !tbaa !378
  %.not.i.i.i.i43 = icmp eq i8 %i.l, %i.bw
  br i1 %.not.i.i.i.i43, label %bb.ai, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.bx = add nsw i8 %i.l, -1
  %switch.i.i.i.i.i44 = icmp ult i8 %i.bx, 5
  br i1 %switch.i.i.i.i.i44, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i: ; preds = %bb.ai
  %.sink.i.i.i.i.i.i45 = load ptr, ptr %i.av, align 8, !tbaa !87
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !87
  %i.bz = icmp eq ptr %.sink.i.i.i.i.i.i45, %i.by
  br i1 %i.bz, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i, %bb.ai
  %i.ca = zext nneg i8 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.f, ptr %5, align 8, !tbaa !377
  %i.cb = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1      ; 2 uses
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !418
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !382
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cd) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 %spec.select.i.i.i
  %i.ci = sub i64 %i.cd, %spec.select.i.i.i
  %.fca.0.insert.i.i.i = insertvalue { ptr, i64 } poison, ptr %i.ch, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i.i, i64 %i.ci, 1
  br label %bb.aj

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread66, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.i.i, %bb.ah
  %i.cj = zext nneg i8 %i.l to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %i.f, ptr %4, align 8, !tbaa !377
  %i.ck = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm7EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_NS5_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSJ_(i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i
  %.pn.i.i = phi { ptr, i64 } [ %.fca.1.insert.i.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread2.i.i ], [ %i.ck, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS4_10chunk_crlfEEE14const_iteratoreqERKSC_.exit.thread.i.i ] ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %.pn.i.i, 1
  %i.cm = load i64, ptr %i.c, align 8, !tbaa !426
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cl)
  %i.cn = extractvalue { ptr, i64 } %.pn.i.i, 0
  %i.co = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.cn, i64 %spec.select.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.am

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread: ; preds = %bb.ag, %bb.af
  %i.cp = call noundef i64 @_ZN5boost4asio11buffer_sizeINS_5beast6detail11buffers_refINS2_19buffers_prefix_viewIRKNS2_14buffers_suffixINS4_INS2_16buffers_cat_viewIJNS0_12const_bufferES8_S8_NS2_4http12basic_fieldsISaIcEE6writer11field_rangeENS9_10chunk_crlfEEEEEEEEEEEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(8) %1) #30 ; 7 uses
  %i.cq = icmp ult i64 %i.cp, 8193
  br i1 %i.cq, label %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS6_INS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit, label %bb.ak

_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS6_INS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  store ptr %i.a, ptr %3, align 8, !tbaa !413
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8192, ptr %i.cr, align 8, !tbaa !414
  %i.cs = call noundef i64 @_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEEEmRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.ct = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.am

bb.ak:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit42.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !580
  %i.cw = icmp ugt i64 %i.cp, %i.cv
  br i1 %i.cw, label %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit, label %bb.al

_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit: ; preds = %bb.ak
  %i.cx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cp) #35
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !217 ; 2 uses
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !217
  %.not.i.i.i.i50 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i50, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #33
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  store i64 %i.cp, ptr %i.cu, align 8, !tbaa !580
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !217
  store ptr %i.db, ptr %8, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.cp, ptr %i.dc, align 8
  %i.dd = call noundef i64 @_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast6detail11buffers_refINS3_19buffers_prefix_viewIRKNS3_14buffers_suffixINS5_INS3_16buffers_cat_viewIJNS0_12const_bufferES9_S9_NS3_4http12basic_fieldsISaIcEE6writer11field_rangeENSA_10chunk_crlfEEEEEEEEEEEEEEmRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !217
  %i.df = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.de, i64 %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS6_INS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit.thread65
  %.1 = phi i64 [ 0, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_6detail11buffers_refINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS8_10chunk_crlfEEEEEEEEE14const_iteratoreqERKSL_.exit.thread65 ], [ %i.co, %bb.aj ], [ %i.ct, %_ZN5boost5beast4http12basic_parserILb0EE14put_from_stackINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS6_INS0_16buffers_cat_viewIJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEEEEEEEEEEmmRKT_RNS_6system10error_codeE.exit ], [ %i.df, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS9_.exit:
  %3 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator", align 8 ; 7 uses
  %4 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator", align 8 ; 6 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator", align 8 ; 7 uses
  %6 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator", align 8 ; 6 uses
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %7 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %8 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !429, !noalias !2099 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !296, !noalias !2100 ; 5 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !430, !noalias !2100, !nonnull !83, !align !86 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !270, !noalias !2100 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.6.16.copyload = load ptr, ptr %i.i, align 8, !tbaa !293 ; 4 uses
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9.16.copyload = load ptr, ptr %.sroa.9.16..sroa_idx, align 8, !tbaa !292 ; 2 uses
  %i.j = icmp eq ptr %i.e, %.sroa.9.16.copyload   ; 2 uses
  %i.k = icmp eq ptr %i.g, %.sroa.6.16.copyload
  %i.l = select i1 %i.j, i1 %i.k, i1 false
  br i1 %i.l, label %bb.a, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS9_.exit19

bb.a:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS9_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS9_.exit19: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS9_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 16   ; 2 uses
  %i.n = icmp eq ptr %scevgep, %.sroa.6.16.copyload ; 2 uses
  %i.o = select i1 %i.j, i1 %i.n, i1 false
  br i1 %i.o, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, label %bb.b

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS9_.exit19
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.g, align 8, !tbaa !87
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !50 ; 2 uses
  %i.p = load i64, ptr %i.m, align 8, !tbaa !290
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.r = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.r)
  %i.s = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.q, i64 %spec.select.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.b:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratoreqERKS9_.exit19
  %i.t = icmp ne ptr %i.e, %.sroa.9.16.copyload
  %.fr.i.i.i = freeze i1 %i.t                     ; 2 uses
  %i.u = icmp ne ptr %i.g, %.sroa.6.16.copyload
  %.not3.i.us16.i.i.i = select i1 %.fr.i.i.i, i1 true, i1 %i.u
  br i1 %.not3.i.us16.i.i.i, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit.thread

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i: ; preds = %bb.b
  %i.v = xor i1 %.fr.i.i.i, true
  tail call void @llvm.assume(i1 %i.v)
  %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0.copyload.i.i.us.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.peel.i.i, align 8, !tbaa !50
  %i.w = load i64, ptr %i.m, align 8, !tbaa !290
  %i.x = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.us.i.peel.i.i, i64 %i.w) ; 2 uses
  %spec.select.i12.us.i.peel.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.x) ; 2 uses
  br i1 %i.n, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit, label %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i

_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i
  %i.y = sub i64 %i.d, %i.x
  br label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i

_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i
  %.0.us19.i.i.i = phi i64 [ %i.z, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ], [ %spec.select.i12.us.i.peel.i.i, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i ]
  %.sroa.4.0.us18.i.i.i = phi i64 [ %i.ab, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ], [ %i.y, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.7.0.us17.i.i.i = phi ptr [ %i.aa, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ], [ %scevgep, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorneERKS9_.exit.thread.us.i.peel.next.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.us.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.us.i.i.i, align 8, !tbaa !50 ; 2 uses
  %spec.select.i12.us.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.4.0.us18.i.i.i, i64 %.sroa.4.0.copyload.i.i.us.i.i.i)
  %i.z = add i64 %spec.select.i12.us.i.i.i, %.0.us19.i.i.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.7.0.us17.i.i.i, i64 16 ; 2 uses
  %i.ab = sub i64 %.sroa.4.0.us18.i.i.i, %.sroa.4.0.copyload.i.i.us.i.i.i
  %.not.i.i.i = icmp eq ptr %i.aa, %.sroa.6.16.copyload
  br i1 %.not.i.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit, label %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i, !llvm.loop !17

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit: ; preds = %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i
  %.0.lcssa.us.i.i.i = phi i64 [ %spec.select.i12.us.i.peel.i.i, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.peel.i.i ], [ %i.z, %_ZN5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratorppEv.exit.us.i.i.i ] ; 7 uses
  %i.ac = icmp ult i64 %.0.lcssa.us.i.i.i, 8193
  br i1 %i.ac, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit.thread, label %bb.c

_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit.thread: ; preds = %bb.b, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit
  %.0.lcssa.us.i.i.i41 = phi i64 [ %.0.lcssa.us.i.i.i, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.a, ptr %7, align 8, !tbaa !413
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 8192, ptr %i.ad, align 8, !tbaa !414
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.b, ptr %5, align 8, !tbaa !432, !alias.scope !2101
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.d, ptr %i.af, align 8, !tbaa !433, !alias.scope !2101
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.g, ptr %i.ag, align 8, !alias.scope !2101
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.e, ptr %i.ah, align 8, !alias.scope !2101
  call void @llvm.experimental.noalias.scope.decl(metadata !2102)
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  call void @llvm.experimental.noalias.scope.decl(metadata !2104)
  call void @llvm.experimental.noalias.scope.decl(metadata !2105)
  store ptr %i.b, ptr %6, align 8, !tbaa !432, !alias.scope !2106
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !298, !noalias !2106
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !433, !alias.scope !2106
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !434
  %i.al = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewIRKNS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SH_T0_SI_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.ae, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %5, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %6, i64 noundef -1) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.am = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %.0.lcssa.us.i.i.i41, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.f

bb.c:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !580
  %i.ap = icmp ugt i64 %.0.lcssa.us.i.i.i, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.0.lcssa.us.i.i.i) #35, !noalias !2107
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !217 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !217
  %.not.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.as) #33
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %bb.d
  store i64 %.0.lcssa.us.i.i.i, ptr %i.an, align 8, !tbaa !580
  %.pre = load ptr, ptr %1, align 8, !tbaa !429, !noalias !2108 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre44.a = load i64, ptr %.phi.trans.insert, align 8, !tbaa !296, !noalias !2109
  %.pre45 = load ptr, ptr %.pre, align 8, !tbaa !430, !noalias !2109 ; 2 uses
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %.pre45, i64 16
  %.pre47 = load ptr, ptr %.phi.trans.insert46, align 8, !tbaa !270, !noalias !2109
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.c
  %i.at = phi ptr [ %.pre47, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.g, %bb.c ]
  %i.au = phi ptr [ %.pre45, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.e, %bb.c ]
  %i.av = phi i64 [ %.pre44.a, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.d, %bb.c ]
  %i.aw = phi ptr [ %.pre, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.b, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !217
  store ptr %i.ay, ptr %8, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.0.lcssa.us.i.i.i, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  store ptr %i.aw, ptr %3, align 8, !tbaa !432, !alias.scope !2109
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.av, ptr %i.bb, align 8, !tbaa !433, !alias.scope !2109
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.at, ptr %i.bc, align 8, !alias.scope !2109
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.au, ptr %i.bd, align 8, !alias.scope !2109
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2117)
  store ptr %i.aw, ptr %4, align 8, !tbaa !432, !alias.scope !2118
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !298, !noalias !2118
  store i64 %i.bg, ptr %i.be, align 8, !tbaa !433, !alias.scope !2118
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i64 16, i1 false), !tbaa.struct !434
  %i.bj = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast19buffers_prefix_viewIRKNS6_14buffers_suffixINS0_12const_bufferEEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SH_T0_SI_m(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %i.ba, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %3, ptr noundef nonnull byval(%"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::asio::const_buffer> &>::const_iterator") align 8 %4, i64 noundef -1) #30 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !217
  %i.bl = call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.bk, i64 %.0.lcssa.us.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit.thread, %bb.e, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.s, %_ZNK5boost5beast19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEE14const_iteratordeEv.exit ], [ %i.am, %_ZNK5boost5beast6detail17buffer_bytes_implclINS1_11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS_4asio12const_bufferEEEEEEEvEEmRKT_.exit.thread ], [ %i.bl, %bb.e ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail11buffers_refINS0_19buffers_prefix_viewIRKNS0_14buffers_suffixINS0_16buffers_cat_viewIJNS6_INS9_IJNS_4asio12const_bufferESB_SB_NS1_12basic_fieldsISaIcEE6writer11field_rangeENS1_10chunk_crlfEEEEEENS1_6detail10chunk_sizeESB_SH_SB_SH_EEEEEEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %3 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  %4 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 62 uses
  %5 = alloca %"class.boost::beast::buffers_prefix_view<const boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>> &>::const_iterator", align 8 ; 35 uses
  %6 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  %i.b = load ptr, ptr %1, align 8, !tbaa !484, !noalias !2131 ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  store ptr %i.b, ptr %4, align 8, !tbaa !486, !alias.scope !2134
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !480, !noalias !2134
  store i64 %i.e, ptr %i.c, align 8, !tbaa !487, !alias.scope !2134
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 16 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !478, !noalias !2134, !nonnull !83, !align !86 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !470, !noalias !2135 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !471, !noalias !2135 ; 2 uses
  switch i8 %i.l, label %bb.b [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_6detail11buffers_refINS1_IJNS_4asio12const_bufferES5_S5_NS0_4http12basic_fieldsISaIcEE6writer11field_rangeENS6_10chunk_crlfEEEEEENS6_6detail10chunk_sizeES5_SC_S5_SC_EE14const_iteratorC2ERKSI_.exit.thread20.i
    i8 1, label %bb.c
    i8 2, label %bb.k
    i8 3, label %bb.l
end_hunk_0
