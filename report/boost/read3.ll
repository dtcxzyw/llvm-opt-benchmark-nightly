Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/read3?download=true
inline.NumInlined: 77476
inline.NumDeleted: 23382
loop-unroll.NumCompletelyUnrolled: 157
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 187
begin_hunk_0_@_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE10write_someINS0_6detail12buffers_pairILb1EEEEEmbRKT_RNS_6system10error_codeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  call void @_ZN5boost5beast23flat_static_buffer_base5resetEPvm(ptr noundef nonnull align 8 dereferenceable(54) %31, ptr noundef nonnull %i.pv, i64 noundef 14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.rh = select i1 %i.re, i8 -128, i8 0
  %spec.select37.i325 = or i8 %.sroa.20.5, %i.rh
  store i8 %spec.select37.i325, ptr %i.a, align 1, !tbaa !1319
  %i.ri = icmp ult i64 %..i294, 126
  br i1 %i.ri, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319
  %i.rj = trunc nuw nsw i64 %..i294 to i8
  %i.rk = or disjoint i8 %i.qf, %i.rj
  store i8 %i.rk, ptr %.1..1..1..1..sroa_idx705, align 1, !tbaa !1319
  br label %bb.cq

bb.cn:                                            ; preds = %_ZN5boost4asio11buffer_copyINS0_14mutable_bufferENS_5beast14buffers_suffixINS3_6detail12buffers_pairILb1EEEEEEEmRKT_RKT0_.exit319
  %i.rl = icmp ult i64 %..i294, 65536
  br i1 %i.rl, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i8 %i.qh, ptr %.1..1..1..1..sroa_idx704, align 1, !tbaa !1319
  %i.rm = trunc nuw i64 %..i294 to i16
  %i.rn = call noundef i16 @llvm.bswap.i16(i16 %i.rm)
  store i16 %i.rn, ptr %.2..2..2..2.gep.sroa_idx708, align 1
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  store i8 %i.qg, ptr %.1..1..1..1..sroa_idx703, align 1, !tbaa !1319
  %i.ro = call noundef i64 @llvm.bswap.i64(i64 %..i294)
  store i64 %i.ro, ptr %.2..2..2..2.gep.sroa_idx706, align 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cm
  %.0.sroa.phi.i327 = phi ptr [ %.2..2..2..2.gep.sroa_idx707, %bb.cm ], [ %.4..4..4..4.gep27.sroa_idx709, %bb.co ], [ %.10..10..10..10.gep28.sroa_idx710, %bb.cp ]
  %.0.i328 = phi i64 [ 6, %bb.cm ], [ 8, %bb.co ], [ 14, %bb.cp ]
  store i32 %i.qo, ptr %.0.sroa.phi.i327, align 1
  %i.rp = call { ptr, i64 } @_ZN5boost5beast23flat_static_buffer_base7prepareEm(ptr noundef nonnull align 8 dereferenceable(40) %31, i64 noundef %.0.i328) ; 2 uses
  %i.rq = extractvalue { ptr, i64 } %i.rp, 1      ; 2 uses
  %i.rr = call i64 @llvm.umin.i64(i64 %i.rq, i64 14) ; 2 uses
  %.not.i.i.i.i331 = icmp eq i64 %i.rq, 0
  br i1 %.not.i.i.i.i331, label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rs = extractvalue { ptr, i64 } %i.rp, 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rs, ptr nonnull align 1 %i.a, i64 %i.rr, i1 false)
  br label %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333

_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333: ; preds = %bb.cq, %bb.cr
  %i.rt = load ptr, ptr %i.pw, align 8, !tbaa !2237
  %i.ru = load ptr, ptr %i.px, align 8, !tbaa !2215 ; 2 uses
  %i.rv = ptrtoint ptr %i.rt to i64
  %i.rw = ptrtoint ptr %i.ru to i64
  %i.rx = sub i64 %i.rv, %i.rw
  %.sroa.speculated.i.i332 = call i64 @llvm.umin.i64(i64 %i.rx, i64 %i.rr)
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.sroa.speculated.i.i332 ; 3 uses
  store ptr %i.ry, ptr %i.px, align 8, !tbaa !2215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rz = load ptr, ptr %i.py, align 8, !tbaa !1682, !nonnull !1349, !align !1353
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  %i.sa = load ptr, ptr %i.pz, align 8, !tbaa !2214 ; 3 uses
  %i.sb = ptrtoint ptr %i.ry to i64
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = sub i64 %i.sb, %i.sc
  store ptr %i.sa, ptr %32, align 8, !tbaa !1354
  store i64 %i.sd, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qa, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !1966
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !9315)
  call void @llvm.experimental.noalias.scope.decl(metadata !9316)
  store ptr %32, ptr %4, align 8, !tbaa !2243, !alias.scope !9317
  store i64 1, ptr %i.qc, align 8, !alias.scope !9317
  store ptr %32, ptr %i.qb, align 8, !tbaa !2244, !alias.scope !9317
  %.not.i.i.i.i.i.i336 = icmp eq ptr %i.ry, %i.sa
  br i1 %.not.i.i.i.i.i.i336, label %._crit_edge.i.i.i.i.i.i337, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

._crit_edge.i.i.i.i.i.i337:                       ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333
  store ptr %i.qa, ptr %i.qb, align 8, !tbaa !2244, !alias.scope !9317
  store i8 2, ptr %i.qc, align 8, !tbaa !2245, !alias.scope !9317
  %i.se = load i64, ptr %i.qd, align 8, !tbaa !1552, !noalias !9317
  %.not.i.i.i.i.i.i.i339 = icmp eq i64 %i.se, 0
  br i1 %.not.i.i.i.i.i.i.i339, label %._crit_edge.i.i.i.i.i.i.i340, label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

._crit_edge.i.i.i.i.i.i.i340:                     ; preds = %._crit_edge.i.i.i.i.i.i337
  store ptr %.ptr4.i.i.i.i.i.i341, ptr %i.qb, align 8, !tbaa !2244, !alias.scope !9317
  store i8 0, ptr %i.qb, align 8, !tbaa !2090, !alias.scope !9317
  store i8 3, ptr %i.qc, align 8, !tbaa !2245, !alias.scope !9317
  br label %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342

_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342: ; preds = %_ZN5boost5beast9websocket6detail5writeINS0_23flat_static_buffer_baseEEEvRT_RKNS2_12frame_headerE.exit333, %._crit_edge.i.i.i.i.i.i337, %._crit_edge.i.i.i.i.i.i.i340
  %i.sf = call noundef i64 @_ZN5boost4asio6detail5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS3_16buffers_cat_viewIJNS0_14mutable_bufferES9_EEENSA_14const_iteratorENS1_14transfer_all_tEEEmRT_RKT0_RKT1_T2_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(32) %i.rz, ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #35
  %i.sg = load i64, ptr %i.f, align 8, !tbaa !1316
  %i.sh = add i64 %i.sg, %..i294
  store i64 %i.sh, ptr %i.f, align 8, !tbaa !1316
  %i.si = call noundef zeroext i1 @_ZN5boost5beast9websocket6streamIRNS0_4test12basic_streamINS_4asio15any_io_executorEEELb1EE9impl_type14check_stop_nowERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(2464) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br i1 %i.si, label %bb.cy, label %bb.cs

bb.cs:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342
  br i1 %i.rd, label %.thread507, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.sj = load i64, ptr %i.pu, align 8, !tbaa !1552
  %.not.i.i.i343 = icmp eq i64 %i.sj, 0
  %.0.v.i.i.i344.sroa.sel = select i1 %.not.i.i.i343, ptr %.sroa.gep, ptr %i.pp ; 2 uses
  br i1 %.not16.i.i300, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.lr.ph.i347

.lr.ph.i347:                                      ; preds = %bb.ct
  %.promoted.i348 = load ptr, ptr %i.pp, align 8  ; 3 uses
  %.not11.i352.peel = icmp eq ptr %.promoted.i348, %.0.v.i.i.i344.sroa.sel
  br i1 %.not11.i352.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i347
  %.promoted16.i349 = load i64, ptr %i.pq, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i353.peel = getelementptr inbounds nuw i8, ptr %.promoted.i348, i64 8
  %.sroa.2.0.copyload.i354.peel = load i64, ptr %.sroa.2.0..sroa_idx.i353.peel, align 8, !tbaa !1316
  %i.sk = sub i64 %.sroa.2.0.copyload.i354.peel, %.promoted16.i349 ; 2 uses
  %i.sl = icmp ult i64 %..i294, %i.sk             ; 2 uses
  %i.sm = add i64 %..i294, %.promoted16.i349
  %storemerge.i355.peel = select i1 %i.sl, i64 %i.sm, i64 0
  store i64 %storemerge.i355.peel, ptr %i.pq, align 8, !tbaa !2220
  br i1 %i.sl, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.sn = sub nuw i64 %..i294, %i.sk              ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.promoted.i348, i64 16 ; 2 uses
  store ptr %i.so, ptr %i.pp, align 8, !tbaa !2219
  %.not.i356.peel = icmp eq i64 %i.sn, 0
  br i1 %.not.i356.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.peel.next563

.peel.next563:                                    ; preds = %bb.cv, %bb.cx
  %.0813.i351 = phi i64 [ %i.sr, %bb.cx ], [ %i.sn, %bb.cv ] ; 3 uses
  %i.sp = phi ptr [ %i.ss, %bb.cx ], [ %i.so, %bb.cv ] ; 3 uses
  %.not11.i352 = icmp eq ptr %i.sp, %.0.v.i.i.i344.sroa.sel
  br i1 %.not11.i352, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cw

bb.cw:                                            ; preds = %.peel.next563
  %.sroa.2.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %.sroa.2.0.copyload.i354 = load i64, ptr %.sroa.2.0..sroa_idx.i353, align 8, !tbaa !1316 ; 2 uses
  %i.sq = icmp ult i64 %.0813.i351, %.sroa.2.0.copyload.i354 ; 2 uses
  %storemerge.i355 = select i1 %i.sq, i64 %.0813.i351, i64 0
  store i64 %storemerge.i355, ptr %i.pq, align 8, !tbaa !2220
  br i1 %i.sq, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sr = sub nuw i64 %.0813.i351, %.sroa.2.0.copyload.i354 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 16 ; 2 uses
  store ptr %i.ss, ptr %i.pp, align 8, !tbaa !2219
  %.not.i356 = icmp eq i64 %i.sr, 0
  br i1 %.not.i356, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357, label %.peel.next563, !llvm.loop !9299

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit357: ; preds = %bb.cx, %bb.cw, %.peel.next563, %.lr.ph.i347, %bb.cu, %bb.cv, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  br label %bb.ch

.thread507:                                       ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.cz

bb.cy:                                            ; preds = %_ZN5boost4asio5writeINS_5beast4test12basic_streamINS0_15any_io_executorEEENS2_16buffers_cat_viewIJNS0_14mutable_bufferES8_EEEEEmRT_RKT0_RNS_6system10error_codeENS0_10constraintIXsr24is_const_buffer_sequenceISC_EE5valueEiE4typeE.exit342
  %i.st = load i64, ptr %i.f, align 8, !tbaa !1316
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #35
  br label %bb.da

bb.cz:                                            ; preds = %.thread507, %bb.cf, %.thread487, %bb.am, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit.thread
  %i.su = load i64, ptr %i.f, align 8, !tbaa !1316
  br label %bb.da

bb.da:                                            ; preds = %bb.a, %bb.cz, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit, %.thread476, %bb.be, %.thread495, %bb.cy
  %.14 = phi i64 [ %i.gx, %.thread476 ], [ %i.su, %bb.cz ], [ %.3454, %_ZN5boost5beast9websocket6detail9impl_baseILb1EE25do_context_takeover_writeENS0_9role_typeE.exit ], [ %i.st, %bb.cy ], [ %.10.ph, %.thread495 ], [ %i.ky, %bb.be ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #35
  ret i64 %.14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost5beast9websocket6detail9impl_baseILb1EE7deflateINS0_6detail12buffers_pairILb1EEEEEbRNS_4asio14mutable_bufferERNS0_14buffers_suffixIT_EEbRmRNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::optional", align 4   ; 5 uses
  %7 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %8 = alloca %"class.boost::optional", align 4   ; 5 uses
  %9 = alloca %"class.boost::system::error_code", align 8 ; 6 uses
  %10 = alloca %"class.boost::optional", align 4  ; 5 uses
  %11 = alloca %"struct.boost::beast::zlib::z_params", align 8 ; 13 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1701
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !2222
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !2223
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 2, ptr %i.e, align 8, !tbaa !2224
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1552
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !2226
  %i.j = load ptr, ptr %1, align 8, !tbaa !1551
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !2225
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2219 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1552
  %.not.i.i.i.i.i = icmp eq i64 %i.o, 0
  %.0.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 16, i64 32
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 %.0.v.i.i.i.i.i ; 3 uses
  %.not93 = icmp eq ptr %i.m, %.0.i.i.i.i.i
  br i1 %.not93, label %.thread78, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge, %.lr.ph
  %.pre97.ph = phi ptr [ %.pre.pre, %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge ], [ %i.m, %.lr.ph ]
  %.sroa.067.094.ph = phi ptr [ %i.bn, %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge ], [ %i.m, %.lr.ph ]
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.p
  %.sroa.067.094 = phi ptr [ %.old, %bb.p ], [ %.sroa.067.094.ph, %.backedge.outer ] ; 5 uses
  %i.s = icmp eq ptr %.sroa.067.094, %.pre97.ph
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %.sroa.067.094, align 8, !tbaa !1354 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.067.094, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !1316 ; 3 uses
  br i1 %i.s, label %bb.b, label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit

bb.b:                                             ; preds = %.backedge
  %i.t = load i64, ptr %i.p, align 8, !tbaa !2220
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.t, i64 %.sroa.4.0.copyload.i.i) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i.i, i64 %spec.select.i.i.i
  %i.v = sub i64 %.sroa.4.0.copyload.i.i, %spec.select.i.i.i
  br label %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit

_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit: ; preds = %.backedge, %bb.b
  %.pn3.i.i = phi ptr [ %i.u, %bb.b ], [ %.sroa.0.0.copyload1.i.i, %.backedge ]
  %.pn.i.i = phi i64 [ %i.v, %bb.b ], [ %.sroa.4.0.copyload.i.i, %.backedge ] ; 3 uses
  %i.w = icmp eq i64 %.pn.i.i, 0
  br i1 %i.w, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit
  store i64 %.pn.i.i, ptr %i.f, align 8, !tbaa !2227
  store ptr %.pn3.i.i, ptr %11, align 8, !tbaa !2228
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store i8 1, ptr %10, align 4, !tbaa !2199
  store i32 0, ptr %i.q, align 4, !tbaa !1319
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 4 dead_on_return %10, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.x = load i64, ptr %i.r, align 8, !tbaa !1329 ; 2 uses
  %i.y = and i64 %i.x, 1
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread74, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 1
  br i1 %i.z, label %_ZNK5boost6system10error_codecvbEv.exit, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.d
  %i.aa = load i32, ptr %5, align 8, !tbaa !1577
  %.not90 = icmp eq i32 %i.aa, 0
  br i1 %.not90, label %_ZNK5boost6system10error_codecvbEv.exit.thread74, label %_ZNK5boost6system10error_codecvbEv.exit.thread

_ZNK5boost6system10error_codecvbEv.exit.thread:   ; preds = %bb.d, %_ZNK5boost6system10error_codecvbEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  invoke void @_ZN5boost5beast4zlib15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %9, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread
  %.sroa.056.0.copyload = load i32, ptr %9, align 8 ; 3 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.659.0.copyload = load ptr, ptr %.sroa.659.0..sroa_idx, align 8, !tbaa !1319 ; 3 uses
  %.sroa.962.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.962.0.copyload = load i64, ptr %.sroa.962.0..sroa_idx, align 8, !tbaa !1316 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !1329 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 1                    ; 3 uses
  %i.af = icmp eq i64 %.sroa.962.0.copyload, 1    ; 3 uses
  %i.ag = xor i1 %i.af, %i.ae
  br i1 %i.ag, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %5, align 8, !tbaa !1319  ; 2 uses
  br i1 %i.ae, label %bb.h, label %_ZNK5boost6system10error_code5valueEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1332
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = urem i64 %i.ak, 2097143
  %i.am = trunc nuw nsw i64 %i.al to i32
  %i.an = mul nuw nsw i32 %i.am, 1000
  %i.ao = add i32 %i.an, %i.ah
  br label %_ZNK5boost6system10error_code5valueEv.exit.i.i

_ZNK5boost6system10error_code5valueEv.exit.i.i:   ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.ah, %bb.g ]
  br i1 %i.af, label %bb.i, label %_ZNK5boost6system10error_code5valueEv.exit17.i.i

bb.i:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i.i
  %i.ap = ptrtoint ptr %.sroa.659.0.copyload to i64
  %i.aq = urem i64 %i.ap, 2097143
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = mul nuw nsw i32 %i.ar, 1000
  %i.at = add i32 %i.as, %.sroa.056.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i.i

_ZNK5boost6system10error_code5valueEv.exit17.i.i: ; preds = %bb.i, %_ZNK5boost6system10error_code5valueEv.exit.i.i
  %.0.i16.i.i = phi i32 [ %i.at, %bb.i ], [ %.sroa.056.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i.i ]
  %i.au = icmp eq i32 %.0.i.i.i, %.0.i16.i.i
  br i1 %i.au, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i.i
  switch i64 %i.ad, label %bb.l [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1319
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i.i

_ZNK5boost6system10error_code8categoryEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.i18.i.i = phi ptr [ %i.aw, %bb.l ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.k ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.j ] ; 2 uses
  switch i64 %.sroa.962.0.copyload, label %bb.n [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i

bb.n:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i

_ZNK5boost6system10error_code8categoryEv.exit20.i.i: ; preds = %bb.n, %bb.m, %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  %.0.i19.i.i = phi ptr [ %.sroa.659.0.copyload, %bb.n ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.m ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !1327 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = icmp eq ptr %.0.i18.i.i, %.0.i19.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i18.i.i, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp eq i64 %i.bc, %i.ay
  %i.be = select i1 %i.az, i1 %i.ba, i1 %i.bd
  br i1 %i.be, label %bb.o, label %.critedge

_ZN5boost6systemneERKNS0_10error_codeES3_.exit:   ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1332
  %i.bh = icmp eq ptr %i.bg, %.sroa.659.0.copyload
  %i.bi = load i32, ptr %5, align 8
  %i.bj = icmp eq i32 %i.bi, %.sroa.056.0.copyload
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.thread78

_ZNK5boost6system10error_codecvbEv.exit.thread74: ; preds = %bb.c, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bl = load i64, ptr %i.i, align 8, !tbaa !2226
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.067.094, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bn, %.0.i.i.i.i.i
  %or.cond95 = select i1 %i.bm, i1 true, i1 %.not
  br i1 %or.cond95, label %.thread78, label %_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge

_ZNK5boost6system10error_codecvbEv.exit.thread74..backedge_crit_edge: ; preds = %_ZNK5boost6system10error_codecvbEv.exit.thread74
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !2219
  br label %.backedge.outer

bb.p:                                             ; preds = %_ZNK5boost5beast6detail21buffers_range_adaptorIRKNS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEE14const_iteratordeEv.exit
  %.old = getelementptr inbounds nuw i8, ptr %.sroa.067.094, i64 16 ; 2 uses
  %.not.old = icmp eq ptr %.old, %.0.i.i.i.i.i
  br i1 %.not.old, label %.thread78.loopexit.loopexit, label %.backedge

.thread78.loopexit.loopexit:                      ; preds = %bb.p
  store i64 %.pn.i.i, ptr %i.f, align 8, !tbaa !2227
  br label %.thread78

.thread78:                                        ; preds = %.thread78.loopexit.loopexit, %_ZNK5boost6system10error_codecvbEv.exit.thread74, %bb.a, %bb.o
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !2222 ; 5 uses
  store i64 %i.bo, ptr %4, align 8, !tbaa !1316
  %i.bp = load i64, ptr %i.n, align 8, !tbaa !1552
  %.not.i.i.i = icmp eq i64 %i.bp, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 16, i64 32
  %.0.i.i.i41 = getelementptr inbounds nuw i8, ptr %2, i64 %.0.v.i.i.i ; 5 uses
  %.not12.i = icmp eq i64 %i.bo, 0
  br i1 %.not12.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread78
  %.promoted.i = load ptr, ptr %i.l, align 8      ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %.not11.i.peel = icmp eq ptr %.promoted.i, %.0.i.i.i41
  br i1 %.not11.i.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %.promoted16.i = load i64, ptr %i.bq, align 8   ; 2 uses
  %.sroa.2.0..sroa_idx.i.peel = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8
  %.sroa.2.0.copyload.i.peel = load i64, ptr %.sroa.2.0..sroa_idx.i.peel, align 8, !tbaa !1316
  %i.br = sub i64 %.sroa.2.0.copyload.i.peel, %.promoted16.i ; 2 uses
  %i.bs = icmp ult i64 %i.bo, %i.br               ; 2 uses
  %i.bt = add i64 %i.bo, %.promoted16.i
  %storemerge.i.peel = select i1 %i.bs, i64 %i.bt, i64 0
  store i64 %storemerge.i.peel, ptr %i.bq, align 8, !tbaa !2220
  br i1 %i.bs, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = sub nuw i64 %i.bo, %i.br                ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.l, align 8, !tbaa !2219
  %.not.i.peel = icmp eq i64 %i.bu, 0
  br i1 %.not.i.peel, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.peel.next

.peel.next:                                       ; preds = %bb.r, %bb.t
  %.0813.i = phi i64 [ %i.by, %bb.t ], [ %i.bu, %bb.r ] ; 3 uses
  %i.bw = phi ptr [ %i.bz, %bb.t ], [ %i.bv, %bb.r ] ; 3 uses
  %.not11.i = icmp eq ptr %i.bw, %.0.i.i.i41
  br i1 %.not11.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.s

bb.s:                                             ; preds = %.peel.next
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !1316 ; 2 uses
  %i.bx = icmp ult i64 %.0813.i, %.sroa.2.0.copyload.i ; 2 uses
  %storemerge.i = select i1 %i.bx, i64 %.0813.i, i64 0
  store i64 %storemerge.i, ptr %i.bq, align 8, !tbaa !2220
  br i1 %i.bx, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = sub nuw i64 %.0813.i, %.sroa.2.0.copyload.i ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  store ptr %i.bz, ptr %i.l, align 8, !tbaa !2219
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit, label %.peel.next, !llvm.loop !9318

_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit: ; preds = %.peel.next, %bb.s, %bb.t, %.lr.ph.i, %bb.q, %bb.r, %.thread78
  %i.ca = load i64, ptr %i.i, align 8, !tbaa !2226
  %i.cb = icmp ne i64 %i.ca, 0
  %or.cond = and i1 %3, %i.cb
  br i1 %or.cond, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %_ZN5boost5beast14buffers_suffixINS0_6detail12buffers_pairILb1EEEE7consumeEm.exit
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !2219 ; 3 uses
  %.not.i.i42 = icmp eq ptr %i.cc, %.0.i.i.i41
  br i1 %.not.i.i42, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load i64, ptr %i.cd, align 8
  %.sroa.4.0..sroa_idx.i.i.peel.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.4.0.copyload.i.i.peel.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.peel.i.i, align 8, !tbaa !1316
  %i.cf = call i64 @llvm.usub.sat.i64(i64 %.sroa.4.0.copyload.i.i.peel.i.i, i64 %i.ce) ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %.not.i.peel.i.i = icmp eq ptr %i.cg, %.0.i.i.i41
  br i1 %.not.i.peel.i.i, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  %.010.i.i.i = phi i64 [ %i.ch, %.lr.ph.split.i.i.i ], [ %i.cf, %.lr.ph.i.i.i ]
  %.sroa.03.09.i.i.i = phi ptr [ %i.ci, %.lr.ph.split.i.i.i ], [ %i.cg, %.lr.ph.i.i.i ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !1316
  %i.ch = add i64 %.sroa.4.0.copyload.i.i.i.i, %.010.i.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.ci, %.0.i.i.i41
  br i1 %.not.i.i.i43, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit, label %.lr.ph.split.i.i.i, !llvm.loop !70

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit: ; preds = %.lr.ph.split.i.i.i, %.lr.ph.i.i.i
  %.0.lcssa.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i ], [ %i.ch, %.lr.ph.split.i.i.i ]
  %i.cj = icmp eq i64 %.0.lcssa.i.i.i, 0
  br i1 %i.cj, label %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread, label %bb.ai

_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread: ; preds = %bb.u, %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i8 1, ptr %8, align 4, !tbaa !2199
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !1319
  call void @_ZN5boost5beast4zlib6detail14deflate_stream7doWriteERNS1_8z_paramsENS_8optionalINS1_5FlushEEERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(5928) %i.b, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 4 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  invoke void @_ZN5boost5beast4zlib15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %7, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit44 unwind label %bb.v

bb.v:                                             ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit44: ; preds = %_ZNK5boost5beast6detail17buffer_bytes_implclINS0_14buffers_suffixINS1_12buffers_pairILb1EEEEEvEEmRKT_.exit.thread
  %.sroa.0.0.copyload = load i32, ptr %7, align 8 ; 3 uses
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.652.0.copyload = load ptr, ptr %.sroa.652.0..sroa_idx, align 8, !tbaa !1319 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !1316 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !1329 ; 5 uses
  %i.cp = icmp eq i64 %i.co, 1                    ; 3 uses
  %i.cq = icmp eq i64 %.sroa.9.0.copyload, 1      ; 3 uses
  %i.cr = xor i1 %i.cq, %i.cp
  br i1 %i.cr, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4zlib5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit44
  %or.cond.i = and i1 %i.cq, %i.cp
  br i1 %or.cond.i, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = load i32, ptr %5, align 8, !tbaa !1319  ; 2 uses
  br i1 %i.cp, label %bb.y, label %_ZNK5boost6system10error_code5valueEv.exit.i

bb.y:                                             ; preds = %bb.x
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1332
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = urem i64 %i.cv, 2097143
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = mul nuw nsw i32 %i.cx, 1000
  %i.cz = add i32 %i.cy, %i.cs
  br label %_ZNK5boost6system10error_code5valueEv.exit.i

_ZNK5boost6system10error_code5valueEv.exit.i:     ; preds = %bb.y, %bb.x
  %.0.i.i45 = phi i32 [ %i.cz, %bb.y ], [ %i.cs, %bb.x ]
  br i1 %i.cq, label %bb.z, label %_ZNK5boost6system10error_code5valueEv.exit17.i

bb.z:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i
  %i.da = ptrtoint ptr %.sroa.652.0.copyload to i64
  %i.db = urem i64 %i.da, 2097143
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = mul nuw nsw i32 %i.dc, 1000
  %i.de = add i32 %i.dd, %.sroa.0.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %bb.z, %_ZNK5boost6system10error_code5valueEv.exit.i
  %.0.i16.i = phi i32 [ %i.de, %bb.z ], [ %.sroa.0.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i ]
  %i.df = icmp eq i32 %.0.i.i45, %.0.i16.i
  br i1 %i.df, label %bb.aa, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.aa:                                            ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  switch i64 %i.co, label %bb.ac [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i
    i64 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1319
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i

_ZNK5boost6system10error_code8categoryEv.exit.i:  ; preds = %bb.ac, %bb.ab, %bb.aa
  %.0.i18.i = phi ptr [ %i.dh, %bb.ac ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.ab ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.aa ] ; 2 uses
  switch i64 %.sroa.9.0.copyload, label %bb.ae [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i
    i64 1, label %bb.ad
  ]

bb.ad:                                            ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

bb.ae:                                            ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i

_ZNK5boost6system10error_code8categoryEv.exit20.i: ; preds = %bb.ae, %bb.ad, %_ZNK5boost6system10error_code8categoryEv.exit.i
  %.0.i19.i = phi ptr [ %.sroa.652.0.copyload, %bb.ae ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.ad ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i19.i, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !1327 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  %i.dl = icmp eq ptr %.0.i18.i, %.0.i19.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = icmp eq i64 %i.dn, %i.dj
  %i.dp = select i1 %i.dk, i1 %i.dl, i1 %i.do
  br i1 %i.dp, label %bb.af, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !1332
  %i.ds = icmp eq ptr %i.dr, %.sroa.652.0.copyload
end_hunk_0
