Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/accept?download=true
inline.NumInlined: 28610
inline.NumDeleted: 8922
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5boost5beast4http6detail9read_someINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  %.sroa.071.0.copyload = load i32, ptr %9, align 8 ; 3 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.674.0.copyload = load ptr, ptr %.sroa.674.0..sroa_idx, align 8, !tbaa !308 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !305 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !318  ; 2 uses
  %i.j = icmp eq i64 %i.i, 1                      ; 3 uses
  %i.k = icmp eq i64 %.sroa.9.0.copyload, 1       ; 3 uses
  %i.l = xor i1 %i.k, %i.j
  br i1 %i.l, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 8, !tbaa !308    ; 2 uses
  br i1 %i.j, label %bb.f, label %_ZNK5boost6system10error_code5valueEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !321
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = urem i64 %i.p, 2097143
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = mul nuw nsw i32 %i.r, 1000
  %i.t = add i32 %i.s, %i.m
  br label %_ZNK5boost6system10error_code5valueEv.exit.i.i

_ZNK5boost6system10error_code5valueEv.exit.i.i:   ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.t, %bb.f ], [ %i.m, %bb.e ]
  br i1 %i.k, label %bb.g, label %_ZNK5boost6system10error_code5valueEv.exit17.i.i

bb.g:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit.i.i
  %i.u = ptrtoint ptr %.sroa.674.0.copyload to i64
  %i.v = urem i64 %i.u, 2097143
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = mul nuw nsw i32 %i.w, 1000
  %i.y = add i32 %i.x, %.sroa.071.0.copyload
  br label %_ZNK5boost6system10error_code5valueEv.exit17.i.i

_ZNK5boost6system10error_code5valueEv.exit17.i.i: ; preds = %bb.g, %_ZNK5boost6system10error_code5valueEv.exit.i.i
  %.0.i16.i.i = phi i32 [ %i.y, %bb.g ], [ %.sroa.071.0.copyload, %_ZNK5boost6system10error_code5valueEv.exit.i.i ]
  %i.z = icmp eq i32 %.0.i.i.i, %.0.i16.i.i
  br i1 %i.z, label %bb.h, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

bb.h:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i.i
  switch i64 %i.i, label %bb.j [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !308
  br label %_ZNK5boost6system10error_code8categoryEv.exit.i.i

_ZNK5boost6system10error_code8categoryEv.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %.0.i18.i.i = phi ptr [ %i.ab, %bb.j ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.i ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.h ] ; 2 uses
  switch i64 %.sroa.9.0.copyload, label %bb.l [
    i64 0, label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i

bb.l:                                             ; preds = %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  br label %_ZNK5boost6system10error_code8categoryEv.exit20.i.i

_ZNK5boost6system10error_code8categoryEv.exit20.i.i: ; preds = %bb.l, %bb.k, %_ZNK5boost6system10error_code8categoryEv.exit.i.i
  %.0.i19.i.i = phi ptr [ %.sroa.674.0.copyload, %bb.l ], [ @_ZN5boost6system6detail18interop_cat_holderIvE8instanceE, %bb.k ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %_ZNK5boost6system10error_code8categoryEv.exit.i.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !316 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = icmp eq ptr %.0.i18.i.i, %.0.i19.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i18.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, %i.ad
  %i.aj = select i1 %i.ae, i1 %i.af, i1 %i.ai
  br i1 %i.aj, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit:   ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !321
  %i.am = icmp eq ptr %i.al, %.sroa.674.0.copyload
  %i.an = load i32, ptr %3, align 8
  %i.ao = icmp eq i32 %i.an, %.sroa.071.0.copyload
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !757
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge, %bb.a
  %i.aq = phi i64 [ 0, %bb.a ], [ %.pre, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge ]
  %.140 = phi i64 [ 0, %bb.a ], [ %i.e, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge ] ; 4 uses
  %i.ar = sub i64 1536, %i.aq                     ; 3 uses
  %i.as = icmp ult i64 %i.ar, 65536
  %i.at = call i64 @llvm.umax.i64(i64 %i.ar, i64 512)
  %i.au = call i64 @llvm.umin.i64(i64 %i.at, i64 65536)
  %i.av = select i1 %i.as, i64 %i.ar, i64 %i.au   ; 2 uses
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.069)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %8, i32 noundef 7)
          to label %.thread93 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #36
  unreachable

.thread93:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.069, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !426
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.570.0.copyload = load i64, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !305 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %switch.i.i = icmp ult i64 %.sroa.570.0.copyload, 2
  %i.az = and i64 %.sroa.570.0.copyload, 1
  %i.ba = or disjoint i64 %i.az, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.570.0.copyload, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.069, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.069)
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !12837)
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35, !noalias !12837
  invoke void @_ZN5boost5beast18static_buffer_base7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1576) %1, i64 noundef %i.av)
          to label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread unwind label %bb.q, !noalias !12837

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !762
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !12837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !12837
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread80

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12length_error         ; 3 uses
  %i.bd = extractvalue { ptr, i32 } %i.bc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35, !noalias !12837
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12length_error) #35
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.bc

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit: ; preds = %bb.q
  %i.bg = extractvalue { ptr, i32 } %i.bc, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #35, !noalias !12837 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35, !noalias !12837
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 7, ptr noundef null) #35, !noalias !12837
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0.copyload4.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !tbaa !305, !noalias !12837 ; 3 uses
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload4.i.i, 2
  %i.bi = and i64 %.sroa.5.0.copyload4.i.i, 1
  %i.bj = or disjoint i64 %i.bi, ptrtoint (ptr @_ZZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_E7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload4.i.i, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 16, i1 false), !noalias !12837
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !305, !noalias !12837
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35, !noalias !12837
  call void @__cxa_end_catch(), !noalias !12837
  store i8 0, ptr %i.bb, align 8, !tbaa !308, !alias.scope !12837
  %.pre108 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !318 ; 2 uses
  %i.bk = and i64 %.pre108, 1
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread80, label %bb.s

bb.s:                                             ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit
  %i.bl = icmp eq i64 %.pre108, 1
  br i1 %i.bl, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.s
  %i.bm = load i32, ptr %3, align 8, !tbaa !763
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread80, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit.thread80: ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 1024 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 1032 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !765
  %.not.i.i.i.i.i = icmp eq i64 %i.br, 0
  %.0.v.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i.i, i64 24, i64 40
  %.0.v.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.v.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v ; 2 uses
  br label %bb.t

.lr.ph.i.i.i.i:                                   ; preds = %bb.t
  %.sroa.0.0.copyload.i.i.i.i.1 = load ptr, ptr %i.cc, align 8, !tbaa !342
  %.sroa.4.0..0.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i114, i64 24
  %.sroa.4.0.copyload.i.i.i.i.1 = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.1, align 8, !tbaa !305 ; 2 uses
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.cd ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.1, ptr %i.bs, align 8, !tbaa !342
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.1, ptr %i.bt, align 8, !tbaa !1844
  %i.bu = add i64 %.sroa.4.0.copyload.i.i.i.i.1, %i.cb ; 4 uses
  store i64 %i.bu, ptr %i.bp, align 8, !tbaa !1987
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i114, i64 32 ; 2 uses
  %i.bw = add nuw nsw i64 %i.bx, 2                ; 4 uses
  store i64 %i.bw, ptr %i.bo, align 8, !tbaa !1988
  %.not.i.i.i.i.1 = icmp eq ptr %i.bv, %.0.v.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i.i.i.i.1, label %_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE9read_someINS_5beast6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %.lr.ph.i.i.i.i.1, !llvm.loop !201

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.bw, 64
  br i1 %exitcond.not.i.i.i.1, label %_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE9read_someINS_5beast6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %bb.t, !llvm.loop !201

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.1, %_ZNK5boost6system10error_codecvbEv.exit.thread80
  %.08.i.i.i.i114 = phi ptr [ %i.bb, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bv, %.lr.ph.i.i.i.i.1 ] ; 5 uses
  %i.bx = phi i64 [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bw, %.lr.ph.i.i.i.i.1 ] ; 3 uses
  %i.by = phi i64 [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bu, %.lr.ph.i.i.i.i.1 ]
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %.08.i.i.i.i114, align 8, !tbaa !342
  %.sroa.4.0..0.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i114, i64 8
  %.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i, align 8, !tbaa !305 ; 2 uses
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.bx ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.bz, align 8, !tbaa !342
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i, ptr %i.ca, align 8, !tbaa !1844
  %i.cb = add i64 %.sroa.4.0.copyload.i.i.i.i, %i.by ; 3 uses
  store i64 %i.cb, ptr %i.bp, align 8, !tbaa !1987
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i114, i64 16 ; 2 uses
  %i.cd = or disjoint i64 %i.bx, 1                ; 3 uses
  store i64 %i.cd, ptr %i.bo, align 8, !tbaa !1988
  %.not.i.i.i.i = icmp eq ptr %i.cc, %.0.v.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i.i.i.i, label %_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE9read_someINS_5beast6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !201

_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE9read_someINS_5beast6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i, %bb.t
  %.lcssa = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.1 ], [ %i.cb, %bb.t ], [ %i.bu, %.lr.ph.i.i.i.i ]
  %i.ce = phi i64 [ 64, %.lr.ph.i.i.i.i.1 ], [ %i.cd, %bb.t ], [ %i.bw, %.lr.ph.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !1612
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ci = load i8, ptr %i.ch, align 4, !tbaa !1647
  %i.cj = icmp eq i64 %.lcssa, 0
  %i.ck = call noundef i64 @_ZN5boost4asio6detail10socket_ops9sync_recvEihP5iovecmibRNS_6system10error_codeE(i32 noundef %i.cg, i8 noundef zeroext %i.ci, ptr noundef nonnull %5, i64 noundef %i.ce, i32 noundef 0, i1 noundef zeroext %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.ck) #35
  %i.cl = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.u   ; 4 uses

.noexc.i:                                         ; preds = %_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE9read_someINS_5beast6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !316, !noalias !12838
  %i.co = and i64 %i.cn, -2
  %switch.i.i.i.i = icmp eq i64 %i.co, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.u:                                             ; preds = %_ZN5boost4asio19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEE9read_someINS_5beast6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #36
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !299, !noalias !12838
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !12838
  %i.cu = call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(52) %i.cl, i32 noundef 2) #35, !noalias !12838, !inline_history !51 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.cv = load i64, ptr %i.bn, align 8, !tbaa !318 ; 5 uses
  %i.cw = icmp eq i64 %i.cv, 1
  %i.cx = load i32, ptr %3, align 8, !tbaa !308
  %.fr = freeze i32 %i.cx                         ; 2 uses
  br i1 %i.cw, label %_ZNK5boost6system10error_codecvbEv.exit62, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.cy = icmp eq i32 %.fr, 2
  br i1 %i.cy, label %bb.v, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.v:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.cv, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !308
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.v, %bb.w
  %.0.i18.i = phi ptr [ %i.da, %bb.w ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.v ] ; 2 uses
  %i.db = load i64, ptr %i.cm, align 8, !tbaa !316 ; 2 uses
  %i.dc = icmp eq i64 %i.db, 0
  %i.dd = icmp eq ptr %.0.i18.i, %i.cl
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = icmp eq i64 %i.df, %i.db
  %i.dh = select i1 %i.dc, i1 %i.dd, i1 %i.dg
  br i1 %i.dh, label %bb.x, label %.thread

bb.x:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !469
  %.not105 = icmp eq i32 %i.dj, 0
  br i1 %.not105, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %cond113 = icmp eq i64 %i.cv, 0
  br i1 %cond113, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !308
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.y, %bb.z
  %.0.i47 = phi ptr [ %i.dl, %bb.z ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.y ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i47, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !316
  %i.do = and i64 %i.dn, -2
  %switch.i.i.i48 = icmp eq i64 %i.do, -5572340897628102704
  br i1 %switch.i.i.i48, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.dp = load ptr, ptr %.0.i47, align 8, !tbaa !299
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call noundef zeroext i1 %i.dr(ptr noundef nonnull align 8 dereferenceable(52) %.0.i47, i32 noundef 0) #35, !inline_history !52
  %spec.select = select i1 %i.ds, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.dt = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i50, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i47, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !308
  store i64 %i.dt, ptr %i.bn, align 8, !tbaa !305
  call void @_ZN5boost5beast4http12basic_parserILb1EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %.thread96

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #36
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !426
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !305 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %switch.i.i57 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.dw = and i64 %.sroa.5.0.copyload, 1
  %i.dx = or disjoint i64 %i.dw, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS_4asio19basic_stream_socketINS4_2ip3tcpENS4_15any_io_executorEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i58 = select i1 %switch.i.i57, i64 %.sroa.5.0.copyload, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i58, ptr %i.bn, align 8, !tbaa !305
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.dy = and i64 %i.cv, 1
  %.not.i.i60 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i60, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread:                                          ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.dz = and i64 %i.cv, 1
  %.not.i.i6085 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i6085, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZNK5boost6system10error_codecvbEv.exit62:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not106 = icmp eq i32 %.fr, 0
  br i1 %.not106, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread96:                                        ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

.thread100:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.b

_ZNK5boost6system10error_codecvbEv.exit62.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread96, %.thread93, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit62.thread
  %.5 = phi i64 [ %.140, %.thread96 ], [ %i.e, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ %.140, %_ZNK5boost6system10error_codecvbEv.exit62.thread ], [ %.140, %.thread93 ], [ %i.e, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.e, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ %i.e, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  ret i64 %.5
}

declare noundef i64 @_ZN5boost4asio6detail10socket_ops9sync_recvEihP5iovecmibRNS_6system10error_codeE(i32 noundef, i8 noundef zeroext, ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http5writeINS_4asio19basic_stream_socketINS3_2ip3tcpENS3_15any_io_executorEEELb0ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEEENSt9enable_ifIXntsr22is_mutable_body_writerIT1_EE5valueEmE4typeERT_RKNS1_7messageIXT0_ESE_T2_EERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::beast::detail::variant<boost::beast::buffers_suffix<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::asio::const_buffer>>, boost::beast::buffers_suffix<boost::asio::const_buffer>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::beast::detail::buffers_ref<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::basic_fields<std::allocator<char>>::writer::field_range, boost::beast::http::chunk_crlf>>, boost::beast::http::detail::chunk_size, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::beast::http::chunk_crlf, boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>, boost::beast::buffers_suffix<boost::beast::buffers_cat_view<boost::asio::const_buffer, boost::asio::const_buffer, boost::beast::http::chunk_crlf>>>::destroy", align 8 ; 4 uses
  %4 = alloca %"class.boost::beast::http::detail::write_some_lambda.1596", align 8 ; 9 uses
  %5 = alloca %"class.boost::beast::http::serializer", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  store ptr %1, ptr %5, align 8, !tbaa !518
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 0, ptr %i.a, align 8, !tbaa !801
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !308
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 288 ; 2 uses
  store i8 0, ptr %i.c, align 8, !tbaa !804
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 368
  store i8 0, ptr %i.d, align 8, !tbaa !807
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 376
  store i64 -1, ptr %i.e, align 8, !tbaa !811
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 384 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, i8 0, i64 7, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK5boost6system10error_codecvbEv.exit.thread12.i
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.ac, %_ZNK5boost6system10error_codecvbEv.exit.thread12.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store ptr %0, ptr %4, align 8, !tbaa !520
  store i8 0, ptr %i.g, align 8, !tbaa !2585
  store i64 0, ptr %i.h, align 8, !tbaa !2586
  invoke void @_ZN5boost5beast4http10serializerILb0ENS1_10empty_bodyENS1_12basic_fieldsISaIcEEEE4nextIRNS1_6detail17write_some_lambdaINS_4asio19basic_stream_socketINSB_2ip3tcpENSB_15any_io_executorEEEEEEEvRNS_6system10error_codeEOT_(ptr noundef nonnull align 8 dereferenceable(391) %5, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
end_hunk_0
