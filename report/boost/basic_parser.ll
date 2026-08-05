inline.NumInlined: 8390
inline.NumDeleted: 1479
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5boost5beast4http12basic_parserILb1EE3putINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES9_S9_S9_EEEEEEEEEmRKT_RNS_6system10error_codeE:bb.a
  %i.ck = call noundef i64 @_ZNK5boost5beast6detail17buffer_bytes_implclINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EEEEEEEvEEmRKT_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5boost5beast6detail12static_constINS1_17buffer_bytes_implEE5valueE, ptr noundef nonnull align 8 dereferenceable(144) %1) #31 ; 7 uses
  %i.cl = icmp ult i64 %i.ck, 8193
  br i1 %i.cl, label %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES9_S9_S9_EEEEEEEEEmmRKT_RNS_6system10error_codeE.exit, label %bb.ag

_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES9_S9_S9_EEEEEEEEEmmRKT_RNS_6system10error_codeE.exit: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_S5_EEEEEE14const_iteratoreqERKS9_.exit41.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.a, ptr %3, align 8, !tbaa !467
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 8192, ptr %i.cm, align 8, !tbaa !469
  %i.cn = call noundef i64 @_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES7_S7_S7_EEEEEEEEEmRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(144) %1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.co = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_S5_EEEEEE14const_iteratoreqERKS9_.exit41.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !487
  %i.cr = icmp ugt i64 %i.ck, %i.cq
  br i1 %i.cr, label %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit, label %bb.ah

_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit: ; preds = %bb.ag
  %i.cs = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ck) #36
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !229 ; 2 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !229
  %.not.i.i.i.i48 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i48, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  store i64 %i.ck, ptr %i.cp, align 8, !tbaa !487
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !229
  store ptr %i.cw, ptr %8, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ck, ptr %i.cx, align 8
  %i.cy = call noundef i64 @_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast19buffers_prefix_viewINS3_14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES7_S7_S7_EEEEEEEEEmRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(144) %1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !229
  %i.da = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.cz, i64 %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES9_S9_S9_EEEEEEEEEmmRKT_RNS_6system10error_codeE.exit, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_S5_EEEEEE14const_iteratoreqERKS9_.exit.thread63
  %.1 = phi i64 [ 0, %_ZNK5boost5beast19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES5_S5_S5_EEEEEE14const_iteratoreqERKS9_.exit.thread63 ], [ %i.cj, %bb.af ], [ %i.co, %_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_19buffers_prefix_viewINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES9_S9_S9_EEEEEEEEEmmRKT_RNS_6system10error_codeE.exit ], [ %i.da, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EEEEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 16 uses
  %4 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %5 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 16 uses
  %6 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 7 uses
  %7 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %8 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %9 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %10 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 33 uses
  %11 = alloca %"class.boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>>::const_iterator", align 8 ; 20 uses
  %12 = alloca %"class.boost::asio::mutable_buffer", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1322, !noalias !1400 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !1327, !noalias !1400 ; 7 uses
  switch i8 %i.e, label %bb.b [
    i8 0, label %.thread
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 8, !tbaa !19, !noalias !1400 ; 2 uses
  store ptr %i.b, ptr %10, align 8, !tbaa !1322, !alias.scope !1400
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i8 %i.f, ptr %i.g, align 8, !tbaa !19, !alias.scope !1400
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 %i.e, ptr %i.h, align 8, !tbaa !1327, !alias.scope !1400
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %1, ptr %i.i, align 8, !tbaa !1349, !alias.scope !1400
  %i.j = icmp eq ptr %i.b, %1
  br i1 %i.j, label %bb.d, label %bb.i

.thread:                                          ; preds = %bb.a
  store ptr %i.b, ptr %10, align 8, !tbaa !1322, !alias.scope !1400
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 0, ptr %i.k, align 8, !tbaa !1327, !alias.scope !1400
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %1, ptr %i.l, align 8, !tbaa !1349, !alias.scope !1400
  store ptr %i.b, ptr %11, align 8, !tbaa !1322
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !1327
  br label %.noexc35

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1400
  store ptr %i.b, ptr %10, align 8, !tbaa !1322, !alias.scope !1400
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !465, !alias.scope !1400
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 %i.e, ptr %i.q, align 8, !tbaa !1327, !alias.scope !1400
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %1, ptr %i.r, align 8, !tbaa !1349, !alias.scope !1400
  store ptr %i.b, ptr %11, align 8, !tbaa !1322
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !465
  store ptr %i.v, ptr %i.s, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1400
  store ptr %i.b, ptr %10, align 8, !tbaa !1322, !alias.scope !1400
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !465, !alias.scope !1400
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 %i.e, ptr %i.y, align 8, !tbaa !1327, !alias.scope !1400
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %1, ptr %i.z, align 8, !tbaa !1349, !alias.scope !1400
  store ptr %i.b, ptr %11, align 8, !tbaa !1322
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !465
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1400
  store ptr %i.b, ptr %10, align 8, !tbaa !1322, !alias.scope !1400
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !465, !alias.scope !1400
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 %i.e, ptr %i.ag, align 8, !tbaa !1327, !alias.scope !1400
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %1, ptr %i.ah, align 8, !tbaa !1349, !alias.scope !1400
  store ptr %i.b, ptr %11, align 8, !tbaa !1322
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !465
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1400
  store ptr %i.b, ptr %10, align 8, !tbaa !1322, !alias.scope !1400
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !465, !alias.scope !1400
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i8 4, ptr %i.ao, align 8, !tbaa !1327, !alias.scope !1400
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr %1, ptr %i.ap, align 8, !tbaa !1349, !alias.scope !1400
  store ptr %i.b, ptr %11, align 8, !tbaa !1322
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !465
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  store ptr %i.b, ptr %11, align 8, !tbaa !1322
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 %i.f, ptr %i.au, align 8, !tbaa !19
  br label %.sink.split.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.ax = phi ptr [ %i.aw, %bb.i ], [ %i.as, %bb.h ], [ %i.ak, %bb.g ], [ %i.ac, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.ay = phi ptr [ %i.av, %bb.i ], [ %i.ar, %bb.h ], [ %i.aj, %bb.g ], [ %i.ab, %bb.f ], [ %i.t, %bb.e ]
  %i.az = phi ptr [ %i.h, %bb.i ], [ %i.ao, %bb.h ], [ %i.ag, %bb.g ], [ %i.y, %bb.f ], [ %i.q, %bb.e ]
  %i.ba = phi ptr [ %i.i, %bb.i ], [ %i.ap, %bb.h ], [ %i.ah, %bb.g ], [ %i.z, %bb.f ], [ %i.r, %bb.e ]
  store i8 %i.e, ptr %i.ax, align 8, !tbaa !1327
  br label %.noexc35

.noexc35:                                         ; preds = %.sink.split.i.i.i.i.i.i, %.thread
  %i.bb = phi ptr [ %i.n, %.thread ], [ %i.ax, %.sink.split.i.i.i.i.i.i ]
  %i.bc = phi ptr [ %i.m, %.thread ], [ %i.ay, %.sink.split.i.i.i.i.i.i ]
  %.ph6371 = phi ptr [ %i.k, %.thread ], [ %i.az, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  %.ph70 = phi ptr [ %i.l, %.thread ], [ %i.ba, %.sink.split.i.i.i.i.i.i ] ; 2 uses
  %13 = zext nneg i8 %i.e to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr %1, ptr %i.bd, align 8, !tbaa !1349
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr %11, ptr %9, align 8, !tbaa !1340
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.be = load ptr, ptr %11, align 8, !tbaa !1322
  %i.bf = load i8, ptr %i.bb, align 8, !tbaa !1327
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !1349
  %i.bh = icmp eq ptr %i.bg, %1
  %i.bi = icmp eq ptr %i.be, %1
  %or.cond72 = select i1 %i.bh, i1 %i.bi, i1 false
  %.not.i.i.i38 = icmp eq i8 %i.bf, 5
  %or.cond73 = and i1 %.not.i.i.i38, %or.cond72
  br i1 %or.cond73, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.noexc35
  %i.bj = load ptr, ptr %.ph70, align 8, !tbaa !1349 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1322
  %i.bm = icmp eq ptr %i.b, %i.bl
  br i1 %i.bm, label %bb.k, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i: ; preds = %bb.j
  %.pre.i = load i8, ptr %.ph6371, align 8, !tbaa !1327
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bo = load i8, ptr %.ph6371, align 8, !tbaa !1327 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !1327
  %.not.i.i.i42 = icmp eq i8 %i.bo, %i.bq
  br i1 %.not.i.i.i42, label %bb.l, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.br = add i8 %i.bo, -1
  %switch.i.i.i.i.i43 = icmp ult i8 %i.br, 4
  br i1 %switch.i.i.i.i.i43, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i: ; preds = %bb.l
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !465
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !465
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, %bb.l
  %i.bv = zext i8 %i.bo to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %10, ptr %8, align 8, !tbaa !1340
  %i.bw = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bx = extractvalue { ptr, i64 } %i.bw, 0
  %i.by = extractvalue { ptr, i64 } %i.bw, 1      ; 2 uses
  %i.bz = load ptr, ptr %.ph70, align 8, !tbaa !1349
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !1328
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cb, i64 %i.by) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %spec.select.i.i
  %i.cd = sub i64 %i.by, %spec.select.i.i
  %.fca.0.insert.i.i = insertvalue { ptr, i64 } poison, ptr %i.cc, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i64 } %.fca.0.insert.i.i, i64 %i.cd, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, %bb.k, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i
  %i.ce = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i ], [ %i.bo, %bb.k ], [ %i.bo, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i ]
  %i.cf = zext i8 %i.ce to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  store ptr %10, ptr %7, align 8, !tbaa !1340
  %i.cg = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i
  %.pn.i = phi { ptr, i64 } [ %.fca.1.insert.i.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i ], [ %i.cg, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i ] ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %.pn.i, 0
  %i.ci = extractvalue { ptr, i64 } %.pn.i, 1
  %i.cj = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.ch, i64 %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ac

bb.m:                                             ; preds = %.noexc35
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !1322, !noalias !1407 ; 6 uses
  %i.cl = load i8, ptr %i.d, align 8, !tbaa !1327, !noalias !1407 ; 2 uses
  switch i8 %i.cl, label %bb.n [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i.i
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 4, label %bb.r
    i8 5, label %bb.s
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i.i: ; preds = %bb.m
  store ptr %i.ck, ptr %5, align 8, !tbaa !1322, !alias.scope !1407
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1407
  store ptr %i.ck, ptr %5, align 8, !tbaa !1322, !alias.scope !1407
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !465, !alias.scope !1407
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit

bb.p:                                             ; preds = %bb.m
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1407
  store ptr %i.ck, ptr %5, align 8, !tbaa !1322, !alias.scope !1407
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !465, !alias.scope !1407
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit

bb.q:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1407
  store ptr %i.ck, ptr %5, align 8, !tbaa !1322, !alias.scope !1407
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !465, !alias.scope !1407
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit

bb.r:                                             ; preds = %bb.m
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1407
  store ptr %i.ck, ptr %5, align 8, !tbaa !1322, !alias.scope !1407
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !465, !alias.scope !1407
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit

bb.s:                                             ; preds = %bb.m
  %i.cu = load i8, ptr %i.c, align 8, !tbaa !19, !noalias !1407
  store ptr %i.ck, ptr %5, align 8, !tbaa !1322, !alias.scope !1407
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.cu, ptr %i.cv, align 8, !tbaa !19, !alias.scope !1407
  br label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i.i, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 %i.cl, ptr %i.cw, align 8, !tbaa !1327, !alias.scope !1407
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %1, ptr %i.cx, align 8, !tbaa !1349, !alias.scope !1407
  store ptr %1, ptr %6, align 8, !tbaa !1322, !alias.scope !1408
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 0, ptr %i.cy, align 8, !tbaa !19, !alias.scope !1408
  store i8 5, ptr %i.cz, align 8, !tbaa !1327, !alias.scope !1408
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.da, align 8, !tbaa !1349, !alias.scope !1408
  %i.db = call noundef i64 @_ZN5boost4asio6detail11buffer_sizeINS_5beast14buffers_suffixINS3_16buffers_cat_viewIJNS0_12const_bufferES6_S6_S6_EEEE14const_iteratorEEEmNS1_16multiple_buffersET_SB_(ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6) #31 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.dc = icmp ult i64 %i.db, 8193
  br i1 %i.dc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit
  %i.dd = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EEEEEEEmmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.db, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ac

bb.u:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES7_S7_S7_EEEEEvEEmRKT_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !487
  %i.dg = icmp ugt i64 %i.db, %i.df
  br i1 %i.dg, label %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit, label %bb.v

_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit: ; preds = %bb.u
  %i.dh = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.db) #36
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !229 ; 2 uses
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !229
  %.not.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %_ZN5boost18make_unique_noinitIA_cEENSt9enable_ifIXsr6detail21sp_is_unbounded_arrayIT_EE5valueESt10unique_ptrIS3_St14default_deleteIS3_EEE4typeEm.exit
  store i64 %i.db, ptr %i.de, align 8, !tbaa !487
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !229
  store ptr %i.dl, ptr %12, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.db, ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !1413)
  call void @llvm.experimental.noalias.scope.decl(metadata !1416)
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !1322, !noalias !1419 ; 6 uses
  %i.do = load i8, ptr %i.d, align 8, !tbaa !1327, !noalias !1419 ; 2 uses
  switch i8 %i.do, label %bb.w [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i
    i8 1, label %bb.x
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %bb.aa
    i8 5, label %bb.ab
  ]

_ZN5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratorC2ERKS5_.exit.thread.i.i.i: ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http12basic_parserILb1EE14put_from_stackINS0_16buffers_cat_viewIJNS0_19buffers_prefix_viewINS5_IJNS_4asio12const_bufferES8_S8_S8_EEEEENS0_14buffers_suffixIS9_EEEEEEEmmRKT_RNS_6system10error_codeE:bb.a
  store ptr %2, ptr %i.c, align 8, !alias.scope !1606
  %.sroa.4.0..sroa_idx39.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx39.i.i.i.i, align 8, !alias.scope !1606
  store ptr %2, ptr %.sink2.i.i.sroa.gep7.i, align 8, !tbaa !1322, !alias.scope !1606
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iteratorC2ERKNS0_6detail5tupleIJS6_S8_EEESt17integral_constantIbLb0EE.exit.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %2, ptr %i.c, align 8, !alias.scope !1606
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1606
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iteratorC2ERKNS0_6detail5tupleIJS6_S8_EEESt17integral_constantIbLb0EE.exit.i.i.i

_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iteratorC2ERKNS0_6detail5tupleIJS6_S8_EEESt17integral_constantIbLb0EE.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink2.i.i.sroa.phi.i = phi ptr [ %.sink2.i.i.sroa.gep.i, %bb.b ], [ %.sink2.i.i.sroa.gep.i, %bb.c ], [ %.sink2.i.i.sroa.gep.i, %bb.d ], [ %.sink2.i.i.sroa.gep.i, %bb.e ], [ %.sink2.i.i.sroa.gep7.i, %bb.f ]
  %.sink.i.i.i = phi ptr [ %2, %bb.b ], [ %.ptr5.i.i.i.i.i.i.i.i.i.i.i, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %2, %bb.f ]
  %.sroa.18.32.extract.trunc20.i.i.i.i = phi i8 [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ]
  store ptr %.sink.i.i.i, ptr %.sink2.i.i.sroa.phi.i, align 8, !tbaa !81, !alias.scope !1606
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i8 %.sroa.18.32.extract.trunc20.i.i.i.i, ptr %i.h, align 8, !tbaa !1327, !alias.scope !1606
  store i8 1, ptr %i.i, align 8, !tbaa !1449, !alias.scope !1606
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !1606
  store ptr %5, ptr %4, align 8, !tbaa !1450, !noalias !1606
  invoke void @_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast16buffers_cat_viewIJNS3_19buffers_prefix_viewINS4_IJNS0_12const_bufferES6_S6_S6_EEEEENS3_14buffers_suffixIS7_EEEEEEEmRKT_RKT0_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iteratorC2ERKNS0_6detail5tupleIJS6_S8_EEESt17integral_constantIbLb0EE.exit.i.i.i
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #32
  unreachable

_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast16buffers_cat_viewIJNS3_19buffers_prefix_viewINS4_IJNS0_12const_bufferES6_S6_S6_EEEEENS3_14buffers_suffixIS7_EEEEEEEmRKT_RKT0_.exit: ; preds = %_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iteratorC2ERKNS0_6detail5tupleIJS6_S8_EEESt17integral_constantIbLb0EE.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !1606
  store ptr %2, ptr %6, align 8, !tbaa !1431, !alias.scope !1617
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false), !alias.scope !1617
  store i8 3, ptr %i.n, align 8, !tbaa !1449, !alias.scope !1617
  %i.o = call noundef i64 @_ZN5boost4asio6detail11buffer_copyIPKNS0_14mutable_bufferENS_5beast16buffers_cat_viewIJNS6_19buffers_prefix_viewINS7_IJNS0_12const_bufferES9_S9_S9_EEEEENS6_14buffers_suffixISA_EEEE14const_iteratorEEEmNS1_10one_bufferENS1_16multiple_buffersET_SI_T0_SJ_m(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 %6, i64 noundef -1) #31 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.p = call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nonnull %i.a, i64 %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i64 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %3 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator", align 8 ; 6 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1622, !nonnull !66, !align !78 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorppEv.exit, %bb.a
  %i.i = phi ptr [ %i.a, %bb.a ], [ %.pre, %_ZN5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorppEv.exit ] ; 20 uses
  %.sroa.8.0 = phi ptr [ undef, %bb.a ], [ %.sroa.8.2, %_ZN5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorppEv.exit ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1431 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1322, !noalias !1624
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 88 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.o = load i8, ptr %i.n, align 8, !tbaa !1327, !noalias !1624 ; 4 uses
  switch i8 %i.o, label %bb.c [
    i8 0, label %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !465, !noalias !1624
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit

bb.e:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !465, !noalias !1624
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit

bb.f:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !465, !noalias !1624
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit

bb.g:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !465, !noalias !1624
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit

bb.h:                                             ; preds = %bb.b
  %i.t = load i8, ptr %i.m, align 8, !tbaa !19, !noalias !1624
  %i.u = ptrtoint ptr %.sroa.8.0 to i64
  %.sroa.8.24.insert.ext = zext i8 %i.t to i64
  %.sroa.8.24.insert.mask = and i64 %i.u, -256
  %.sroa.8.24.insert.insert = or disjoint i64 %.sroa.8.24.insert.mask, %.sroa.8.24.insert.ext
  %i.v = inttoptr i64 %.sroa.8.24.insert.insert to ptr
  br label %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit

_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b
  %.sroa.8.2 = phi ptr [ %.sroa.8.0, %bb.b ], [ %i.p, %bb.d ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !1629
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %bb.i, label %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit._ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread_crit_edge

_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit._ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread_crit_edge: ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit
  %.pre51 = load i8, ptr %i.e, align 8, !tbaa !1327
  br label %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread

bb.i:                                             ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !1322
  %i.z = icmp eq ptr %i.y, %i.l
  %.pre52 = load i8, ptr %i.e, align 8, !tbaa !1327 ; 2 uses
  %.not.i.i.i = icmp eq i8 %.pre52, %i.o
  %or.cond = select i1 %i.z, i1 %.not.i.i.i, i1 false
  br i1 %or.cond, label %bb.j, label %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = add nsw i8 %i.o, -1
  %switch.i.i.i.i.i = icmp ult i8 %i.aa, 4
  br i1 %switch.i.i.i.i.i, label %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit, label %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13

_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit: ; preds = %bb.j
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !465
  %i.ac = icmp eq ptr %i.ab, %.sroa.8.2
  br i1 %i.ac, label %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13, label %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread

_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread: ; preds = %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit._ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread_crit_edge, %bb.i, %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit
  %i.ad = phi i8 [ %.pre51, %_ZN5boost4asio19buffer_sequence_endINS_5beast19buffers_prefix_viewINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_3endEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit._ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread_crit_edge ], [ %i.o, %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit ], [ %.pre52, %bb.i ]
  %i.ae = zext i8 %i.ad to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.c, ptr %4, align 8, !tbaa !1340
  %i.af = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.ag = extractvalue { ptr, i64 } %i.af, 1
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1632
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ag)
  %.not = icmp eq i64 %spec.select.i, 0
  br i1 %.not, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !1633)
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !1322, !noalias !1633
  store ptr %i.ai, ptr %3, align 8, !tbaa !1322, !alias.scope !1633
  store i8 0, ptr %i.h, align 8, !tbaa !1327, !alias.scope !1633
  %i.aj = load i8, ptr %i.e, align 8, !tbaa !1327, !noalias !1633 ; 3 uses
  switch i8 %i.aj, label %bb.l [
    i8 0, label %_ZN5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorppEv.exit
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.q
  ]

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !465, !noalias !1633
  store ptr %i.ak, ptr %i.g, align 8, !tbaa !465, !alias.scope !1633
  br label %.sink.split.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !465, !noalias !1633
  store ptr %i.al, ptr %i.g, align 8, !tbaa !465, !alias.scope !1633
  br label %.sink.split.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !465, !noalias !1633
  store ptr %i.am, ptr %i.g, align 8, !tbaa !465, !alias.scope !1633
  br label %.sink.split.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !465, !noalias !1633
  store ptr %i.an, ptr %i.g, align 8, !tbaa !465, !alias.scope !1633
  br label %.sink.split.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.k
  %i.ao = load i8, ptr %i.d, align 8, !tbaa !19, !noalias !1633
  store i8 %i.ao, ptr %i.g, align 8, !tbaa !19, !alias.scope !1633
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  store i8 %i.aj, ptr %i.h, align 8, !tbaa !1327, !alias.scope !1633
  br label %_ZN5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorppEv.exit

_ZN5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratorppEv.exit: ; preds = %bb.k, %.sink.split.i.i.i.i.i.i.i
  %5 = zext nneg i8 %i.aj to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !1633
  store ptr %i.c, ptr %2, align 8, !tbaa !1340, !noalias !1633
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !1633
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !1633
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr %3, ptr %1, align 8, !tbaa !1340
  %i.ap = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %i.aq = extractvalue { ptr, i64 } %i.ap, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !1632
  %i.as = sub i64 %i.ar, %i.aq
  store i64 %i.as, ptr %i.f, align 8, !tbaa !1632
  %.pre = load ptr, ptr %0, align 8, !tbaa !1622
  br label %bb.b, !llvm.loop !1636

_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13: ; preds = %bb.j, %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1322, !noalias !1637 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 176 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !1327, !noalias !1637 ; 2 uses
  switch i8 %i.az, label %bb.r [
    i8 0, label %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread
    i8 1, label %bb.s
    i8 2, label %bb.t
    i8 3, label %bb.u
    i8 4, label %bb.v
    i8 5, label %bb.w
  ]

_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread: ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !1449
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !1322
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i8 0, ptr %i.bb, align 8, !tbaa !1327
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm2EJSC_EEEvDpOT0_.exit

bb.r:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13
  unreachable

bb.s:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !465, !noalias !1637
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !1449
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !1322
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store i8 0, ptr %i.bf, align 8, !tbaa !1327
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i6

bb.t:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !465, !noalias !1637
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.bh, align 8, !tbaa !1449
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !1322
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !1327
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i6

bb.u:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !465, !noalias !1637
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.bl, align 8, !tbaa !1449
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !1322
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store i8 0, ptr %i.bn, align 8, !tbaa !1327
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i6

bb.v:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13
  %i.bo = load ptr, ptr %i.ax, align 8, !tbaa !465, !noalias !1637
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.bp, align 8, !tbaa !1449
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !1322
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store i8 0, ptr %i.br, align 8, !tbaa !1327
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i6

bb.w:                                             ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread13
  %i.bs = load i8, ptr %i.ax, align 8, !tbaa !19, !noalias !1637
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store i8 0, ptr %i.bt, align 8, !tbaa !1449
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !1322
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store i8 0, ptr %i.bv, align 8, !tbaa !1327
  store i8 %i.bs, ptr %i.bu, align 8, !tbaa !19
  br label %.sink.split.i.i.i.i.i.i.i6

.sink.split.i.i.i.i.i.i.i6:                       ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %i.bw = phi ptr [ %i.bv, %bb.w ], [ %i.br, %bb.v ], [ %i.bn, %bb.u ], [ %i.bj, %bb.t ], [ %i.bf, %bb.s ]
  %i.bx = phi ptr [ %i.bt, %bb.w ], [ %i.bp, %bb.v ], [ %i.bl, %bb.u ], [ %i.bh, %bb.t ], [ %i.bd, %bb.s ]
  store i8 %i.az, ptr %i.bw, align 8, !tbaa !1327
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm2EJSC_EEEvDpOT0_.exit

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm2EJSC_EEEvDpOT0_.exit: ; preds = %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread, %.sink.split.i.i.i.i.i.i.i6
  %i.by = phi ptr [ %i.ba, %_ZN5boost4asio21buffer_sequence_beginINS_5beast14buffers_suffixINS2_16buffers_cat_viewIJNS0_12const_bufferES5_S5_S5_EEEEEEEDTcldtfp_5beginEERKT_NS0_10constraintIXntsr14is_convertibleIPSA_PKNS0_14mutable_bufferEEE5valueEiE4typeENSC_IXntsr14is_convertibleISD_PKS5_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_SE_EE5valueEiE4typeENSC_IXntsr14is_convertibleIS9_S5_EE5valueEiE4typeE.exit.thread ], [ %i.bx, %.sink.split.i.i.i.i.i.i.i6 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.au, ptr %i.bz, align 8, !tbaa !1349
  store i8 2, ptr %i.by, align 8, !tbaa !1449
  call void @_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK5boost5beast19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratoreqERKS7_.exit.thread, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE7emplaceILm2EJSC_EEEvDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %2 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %3 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1622, !nonnull !66, !align !78 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.f = phi ptr [ %.pre, %bb.g ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1431
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1349 ; 4 uses
  %i.j = icmp eq ptr %i.i, %i.h
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !1322 ; 2 uses
  %i.k = icmp eq ptr %.pre11, %i.h
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.d, align 8, !tbaa !1327
  %.not.i.i.i = icmp eq i8 %i.l, 5
  br i1 %.not.i.i.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1322
  %i.o = icmp eq ptr %.pre11, %i.n
  br i1 %i.o, label %bb.e, label %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i

._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i: ; preds = %bb.d
  %.pre.i = load i8, ptr %i.d, align 8, !tbaa !1327
  br label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.q = load i8, ptr %i.d, align 8, !tbaa !1327  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.s = load i8, ptr %i.r, align 8, !tbaa !1327
  %.not.i.i.i5 = icmp eq i8 %i.q, %i.s
  br i1 %.not.i.i.i5, label %bb.f, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.t = add i8 %i.q, -1
  %switch.i.i.i.i.i6 = icmp ult i8 %i.t, 4
  br i1 %switch.i.i.i.i.i6, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i: ; preds = %bb.f
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !465
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !465
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i, label %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, %bb.f
  %i.x = zext i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr %i.b, ptr %3, align 8, !tbaa !1340
  %i.y = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.z = extractvalue { ptr, i64 } %i.y, 1
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !1349
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1328
  %i.ad = call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.ac)
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i, %bb.e, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i
  %i.ae = phi i8 [ %.pre.i, %._ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread_crit_edge.i ], [ %i.q, %bb.e ], [ %i.q, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.i ]
  %i.af = zext i8 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  store ptr %i.b, ptr %2, align 8, !tbaa !1340
  %i.ag = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ah = extractvalue { ptr, i64 } %i.ag, 1
  br label %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit

_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit: ; preds = %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i
  %.pn.i = phi i64 [ %i.ad, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread2.i ], [ %i.ah, %_ZNK5boost5beast16buffers_cat_viewIJNS_4asio12const_bufferES3_S3_S3_EE14const_iteratoreqERKS5_.exit.thread.i ]
  %.not = icmp eq i64 %.pn.i, 0
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit
  %i.ai = load i8, ptr %i.d, align 8, !tbaa !1327
  %i.aj = zext i8 %i.ai to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  store ptr %i.b, ptr %1, align 8, !tbaa !1340
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  %.pre = load ptr, ptr %0, align 8, !tbaa !1622
  br label %bb.b, !llvm.loop !1642

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 0, ptr %i.ak, align 1, !tbaa !545
  store i8 3, ptr %i.al, align 8, !tbaa !1449
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK5boost5beast14buffers_suffixINS0_16buffers_cat_viewIJNS_4asio12const_bufferES4_S4_S4_EEEE14const_iteratordeEv.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast16buffers_cat_viewIJNS5_19buffers_prefix_viewINS6_IJNS_4asio12const_bufferES9_S9_S9_EEEEENS5_14buffers_suffixISA_EEEE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSH_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %3 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %4 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %5 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::dereference", align 8 ; 4 uses
  %6 = alloca %"struct.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator::increment", align 8 ; 4 uses
  %7 = alloca %"class.boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer>::const_iterator", align 8 ; 6 uses
  %8 = alloca %"class.std::logic_error", align 8  ; 5 uses
  %9 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  switch i64 %0, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
    i64 2, label %bb.m
    i64 3, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.30)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  store ptr @.str.31, ptr %9, align 8, !tbaa !220
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.32, ptr %i.a, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 205, ptr %i.b, align 8, !tbaa !223
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i32 62, ptr %i.c, align 4, !tbaa !224
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(24) %9) #33
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.ae, %bb.p ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !1622, !nonnull !66, !align !78 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1643)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1322, !noalias !1643
  store ptr %i.g, ptr %7, align 8, !tbaa !1322, !alias.scope !1643
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i8 0, ptr %i.j, align 8, !tbaa !1327, !alias.scope !1643
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !1327, !noalias !1643 ; 3 uses
  switch i8 %i.l, label %bb.g [
    i8 0, label %_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit
    i8 1, label %bb.h
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 5, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !1643
  store ptr %i.m, ptr %i.h, align 8, !tbaa !465, !alias.scope !1643
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !1643
  store ptr %i.n, ptr %i.h, align 8, !tbaa !465, !alias.scope !1643
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !1643
  store ptr %i.o, ptr %i.h, align 8, !tbaa !465, !alias.scope !1643
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !1643
  store ptr %i.p, ptr %i.h, align 8, !tbaa !465, !alias.scope !1643
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.i, align 8, !tbaa !19, !noalias !1643
  store i8 %i.q, ptr %i.h, align 8, !tbaa !19, !alias.scope !1643
  br label %.sink.split.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  store i8 %i.l, ptr %i.j, align 8, !tbaa !1327, !alias.scope !1643
  br label %_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit

_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit: ; preds = %bb.f, %.sink.split.i.i.i.i.i.i.i.i
  %10 = zext nneg i8 %i.l to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !1643
  store ptr %i.f, ptr %6, align 8, !tbaa !1340, !noalias !1643
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %6), !noalias !1643
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !1643
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %7, ptr %5, align 8, !tbaa !1340
  %i.r = call { ptr, i64 } @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator11dereferenceEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.s = extractvalue { ptr, i64 } %i.r, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1632
  %i.v = sub i64 %i.u, %i.s
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1632
  call void @_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9increment4nextILm1EEEvSt17integral_constantImXT_EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.q

bb.m:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !1622, !nonnull !66, !align !78 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !1327
  %i.aa = zext i8 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.x, ptr %4, align 8, !tbaa !1340
  call void @_ZN5boost4mp116detail19mp_with_index_impl_ILm6EE4callILm0ENS_5beast16buffers_cat_viewIJNS_4asio12const_bufferES8_S8_S8_EE14const_iterator9incrementEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSC_(i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9increment4nextESt17integral_constantImLm2EE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.33)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  store ptr @.str.31, ptr %3, align 8, !tbaa !220
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.32, ptr %i.ab, align 8, !tbaa !222
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 266, ptr %i.ac, align 8, !tbaa !223
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 59, ptr %i.ad, align 4, !tbaa !224
  invoke void @_ZN5boost15throw_exceptionISt11logic_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #33
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume

bb.q:                                             ; preds = %bb.m, %_ZN5boost5beast16buffers_cat_viewIJNS0_19buffers_prefix_viewINS1_IJNS_4asio12const_bufferES4_S4_S4_EEEEENS0_14buffers_suffixIS5_EEEE14const_iterator9incrementclILm1EEEvSt17integral_constantImXT_EE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4mp116detail19mp_with_index_impl_ILm4EE4callILm0ENS_5beast6detail7variantIJNS5_19buffers_prefix_viewINS5_16buffers_cat_viewIJNS_4asio12const_bufferESB_SB_SB_EEEE14const_iteratorENS5_14buffers_suffixISC_E14const_iteratorENS6_30buffers_cat_view_iterator_base8past_endEEE4copyEEEDTclclsr3stdE7declvalIT0_EEclL_ZSt7declvalISt17integral_constantImLm0EEEDTcl9__declvalIT_ELi0EEEvEEEEmOSM_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  switch i64 %0, label %bb.b [
    i64 0, label %bb.r
    i64 1, label %bb.c
    i64 2, label %bb.j
    i64 3, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !1646, !nonnull !66, !align !78 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1648, !nonnull !66, !align !78 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1322
  store ptr %i.f, ptr %i.d, align 8, !tbaa !1322
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i8 0, ptr %i.i, align 8, !tbaa !1327
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !1327  ; 2 uses
  switch i8 %i.k, label %bb.d [
    i8 0, label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm1EEEEvT_.exit
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !465
  store ptr %i.l, ptr %i.g, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !465
  store ptr %i.m, ptr %i.g, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !465
  store ptr %i.n, ptr %i.g, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !465
  store ptr %i.o, ptr %i.g, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.h, align 8, !tbaa !19
  store i8 %i.p, ptr %i.g, align 8, !tbaa !19
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  store i8 %i.k, ptr %i.i, align 8, !tbaa !1327
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm1EEEEvT_.exit

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm1EEEEvT_.exit: ; preds = %bb.c, %.sink.split.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %1, align 8, !tbaa !1646, !nonnull !66, !align !78
  br label %.sink.split

bb.j:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !1646   ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1648, !nonnull !66, !align !78 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1322
  store ptr %i.u, ptr %i.r, align 8, !tbaa !1322
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i8 0, ptr %i.x, align 8, !tbaa !1327
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.z = load i8, ptr %i.y, align 8, !tbaa !1327  ; 2 uses
  switch i8 %i.z, label %bb.k [
    i8 0, label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm2EEEEvT_.exit
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
    i8 5, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !465
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i4

bb.m:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !465
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i4

bb.n:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !465
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i4

bb.o:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !465
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !465
  br label %.sink.split.i.i.i.i.i.i.i4

bb.p:                                             ; preds = %bb.j
  %i.ae = load i8, ptr %i.w, align 8, !tbaa !19
  store i8 %i.ae, ptr %i.v, align 8, !tbaa !19
  %.pre.pre.i = load ptr, ptr %1, align 8, !tbaa !1646
  br label %.sink.split.i.i.i.i.i.i.i4

.sink.split.i.i.i.i.i.i.i4:                       ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.p ], [ %i.r, %bb.o ], [ %i.r, %bb.n ], [ %i.r, %bb.m ], [ %i.r, %bb.l ]
  store i8 %i.z, ptr %i.x, align 8, !tbaa !1327
  br label %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm2EEEEvT_.exit

_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm2EEEEvT_.exit: ; preds = %bb.j, %.sink.split.i.i.i.i.i.i.i4
  %i.af = phi ptr [ %i.r, %bb.j ], [ %.pre.i, %.sink.split.i.i.i.i.i.i.i4 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1349
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !1349
  br label %.sink.split

bb.q:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1646, !nonnull !66, !align !78
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1648, !nonnull !66, !align !78
  %i.am = load i8, ptr %i.al, align 8, !tbaa !19
  store i8 %i.am, ptr %i.aj, align 8, !tbaa !19
  %i.an = load ptr, ptr %1, align 8, !tbaa !1646, !nonnull !66, !align !78
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm1EEEEvT_.exit, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm2EEEEvT_.exit, %bb.q
  %.sink6 = phi ptr [ %i.an, %bb.q ], [ %i.af, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm2EEEEvT_.exit ], [ %i.q, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm1EEEEvT_.exit ]
  %.sink = phi i8 [ 3, %bb.q ], [ 2, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm2EEEEvT_.exit ], [ 1, %_ZN5boost5beast6detail7variantIJNS0_19buffers_prefix_viewINS0_16buffers_cat_viewIJNS_4asio12const_bufferES6_S6_S6_EEEE14const_iteratorENS0_14buffers_suffixIS7_E14const_iteratorENS1_30buffers_cat_view_iterator_base8past_endEEE4copyclISt17integral_constantImLm1EEEEvT_.exit ]
end_hunk_1
