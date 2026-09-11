Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/websocket_2_handshaking?download=true
inline.NumInlined: 7371
inline.NumDeleted: 3125
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5boost5beast4http6detail9read_someINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEENS0_13static_bufferILm1536EEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.674.0.copyload = load ptr, ptr %.sroa.674.0..sroa_idx, align 8, !tbaa !84 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !149  ; 2 uses
  %i.j = icmp eq i64 %i.i, 1                      ; 3 uses
  %i.k = icmp eq i64 %.sroa.9.0.copyload, 1       ; 3 uses
  %i.l = xor i1 %i.k, %i.j
  br i1 %i.l, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 8, !tbaa !84     ; 2 uses
  br i1 %i.j, label %bb.f, label %_ZNK5boost6system10error_code5valueEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !84
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = icmp eq ptr %.0.i18.i.i, %.0.i19.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i18.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, %i.ad
  %i.aj = select i1 %i.ae, i1 %i.af, i1 %i.ai
  br i1 %i.aj, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit:   ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !152
  %i.am = icmp eq ptr %i.al, %.sroa.674.0.copyload
  %i.an = load i32, ptr %3, align 8
  %i.ao = icmp eq i32 %i.an, %.sroa.071.0.copyload
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !493
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %8, i32 noundef 7)
          to label %.thread93 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #39
  unreachable

.thread93:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.069, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !490
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.570.0.copyload = load i64, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %switch.i.i = icmp ult i64 %.sroa.570.0.copyload, 2
  %i.az = and i64 %.sroa.570.0.copyload, 1
  %i.ba = or disjoint i64 %i.az, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEENS0_13static_bufferILm1536EEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.570.0.copyload, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.069, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.069)
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !2157
  invoke void @_ZN5boost5beast18static_buffer_base7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1576) %1, i64 noundef %i.av)
          to label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread unwind label %bb.q, !noalias !2157

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !845
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !2157
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !2157
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread80

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12length_error         ; 3 uses
  %i.bd = extractvalue { ptr, i32 } %i.bc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !2157
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12length_error) #38
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.bc

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit: ; preds = %bb.q
  %i.bg = extractvalue { ptr, i32 } %i.bc, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #38, !noalias !2157 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !2157
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 7, ptr noundef null) #38, !noalias !2157
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0.copyload4.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !tbaa !81, !noalias !2157 ; 3 uses
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload4.i.i, 2
  %i.bi = and i64 %.sroa.5.0.copyload4.i.i, 1
  %i.bj = or disjoint i64 %i.bi, ptrtoint (ptr @_ZZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_E7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload4.i.i, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 16, i1 false), !noalias !2157
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !81, !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !2157
  call void @__cxa_end_catch(), !noalias !2157
  store i8 0, ptr %i.bb, align 8, !tbaa !84, !alias.scope !2157
  %.pre108 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !149 ; 2 uses
  %i.bk = and i64 %.pre108, 1
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread80, label %bb.s

bb.s:                                             ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit
  %i.bl = icmp eq i64 %.pre108, 1
  br i1 %i.bl, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.s
  %i.bm = load i32, ptr %3, align 8, !tbaa !479
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread80, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit.thread80: ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 1024 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 1032 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !520
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i.i.i, i64 24, i64 40
  %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v ; 2 uses
  br label %bb.t

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load ptr, ptr %i.cd, align 8, !tbaa !246
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i.1 = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !81 ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ce ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.1, ptr %i.bt, align 8, !tbaa !246
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.1, ptr %i.bu, align 8, !tbaa !777
  %i.bv = add i64 %.sroa.4.0.copyload.i.i.i.i.i.1, %i.cc ; 4 uses
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !847
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 32 ; 2 uses
  %i.bx = add nuw nsw i64 %i.by, 2                ; 4 uses
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !848
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.bw, %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i.i.i.i.i.1, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !60

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.bx, 64
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %bb.t, !llvm.loop !60

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.1, %_ZNK5boost6system10error_codecvbEv.exit.thread80
  %.08.i.i.i.i.i114 = phi ptr [ %i.bb, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bw, %.lr.ph.i.i.i.i.i.1 ] ; 5 uses
  %i.by = phi i64 [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bx, %.lr.ph.i.i.i.i.i.1 ] ; 3 uses
  %i.bz = phi i64 [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bv, %.lr.ph.i.i.i.i.i.1 ]
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.08.i.i.i.i.i114, align 8, !tbaa !246
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !81 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.by ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ca, align 8, !tbaa !246
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !777
  %i.cc = add i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.bz ; 3 uses
  store i64 %i.cc, ptr %i.bq, align 8, !tbaa !847
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 16 ; 2 uses
  %i.ce = or disjoint i64 %i.by, 1                ; 3 uses
  store i64 %i.ce, ptr %i.bp, align 8, !tbaa !848
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i.i.i.i.i, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !60

_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i, %bb.t
  %.lcssa = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.1 ], [ %i.cc, %bb.t ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  %i.cf = phi i64 [ 64, %.lr.ph.i.i.i.i.i.1 ], [ %i.ce, %bb.t ], [ %i.bx, %.lr.ph.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !481
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !580
  %i.ck = icmp eq i64 %.lcssa, 0
  %i.cl = call noundef i64 @_ZN5boost4asio6detail10socket_ops9sync_recvEihP5iovecmibRNS_6system10error_codeE(i32 noundef %i.ch, i8 noundef zeroext %i.cj, ptr noundef nonnull %5, i64 noundef %i.cf, i32 noundef 0, i1 noundef zeroext %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.cl) #38
  %i.cm = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.u   ; 4 uses

.noexc.i:                                         ; preds = %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147, !noalias !2158
  %i.cp = and i64 %i.co, -2
  %switch.i.i.i.i = icmp eq i64 %i.cp, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.u:                                             ; preds = %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #39
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !75, !noalias !2158
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !2158
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(52) %i.cm, i32 noundef 2) #38, !noalias !2158, !inline_history !61 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.cw = load i64, ptr %i.bn, align 8, !tbaa !149 ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 1
  %i.cy = load i32, ptr %3, align 8, !tbaa !84
  %.fr = freeze i32 %i.cy                         ; 2 uses
  br i1 %i.cx, label %_ZNK5boost6system10error_codecvbEv.exit62, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.cz = icmp eq i32 %.fr, 2
  br i1 %i.cz, label %bb.v, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.v:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.cw, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !84
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.v, %bb.w
  %.0.i18.i = phi ptr [ %i.db, %bb.w ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.v ] ; 2 uses
  %i.dc = load i64, ptr %i.cn, align 8, !tbaa !147 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  %i.de = icmp eq ptr %.0.i18.i, %i.cm
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = icmp eq i64 %i.dg, %i.dc
  %i.di = select i1 %i.dd, i1 %i.de, i1 %i.dh
  br i1 %i.di, label %bb.x, label %.thread

bb.x:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !509
  %.not105 = icmp eq i32 %i.dk, 0
  br i1 %.not105, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %cond113 = icmp eq i64 %i.cw, 0
  br i1 %cond113, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !84
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.y, %bb.z
  %.0.i47 = phi ptr [ %i.dm, %bb.z ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.y ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i47, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !147
  %i.dp = and i64 %i.do, -2
  %switch.i.i.i48 = icmp eq i64 %i.dp, -5572340897628102704
  br i1 %switch.i.i.i48, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.dq = load ptr, ptr %.0.i47, align 8, !tbaa !75
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(52) %.0.i47, i32 noundef 0) #38, !inline_history !62
  %spec.select = select i1 %i.dt, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.du = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i50, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i47, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !84
  store i64 %i.du, ptr %i.bn, align 8, !tbaa !81
  call void @_ZN5boost5beast4http12basic_parserILb0EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %.thread96

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #39
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !490
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %switch.i.i57 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.dx = and i64 %.sroa.5.0.copyload, 1
  %i.dy = or disjoint i64 %i.dx, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEENS0_13static_bufferILm1536EEELb0EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i58 = select i1 %switch.i.i57, i64 %.sroa.5.0.copyload, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i58, ptr %i.bn, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.dz = and i64 %i.cw, 1
  %.not.i.i60 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i60, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread:                                          ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.ea = and i64 %i.cw, 1
  %.not.i.i6085 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i6085, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZNK5boost6system10error_codecvbEv.exit62:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not106 = icmp eq i32 %.fr, 0
  br i1 %.not106, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread96:                                        ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

.thread100:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.b

_ZNK5boost6system10error_codecvbEv.exit62.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread96, %.thread93, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit62.thread
  %.5 = phi i64 [ %.140, %.thread96 ], [ %i.e, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ %.140, %_ZNK5boost6system10error_codecvbEv.exit62.thread ], [ %.140, %.thread93 ], [ %i.e, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.e, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ %i.e, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !520
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  %.0.v.i.i = select i1 %.not.i.i, i64 16, i64 32 ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i.i
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = add nuw nsw i64 %.0.v.i.i, 112
  %i.e = lshr exact i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1
  %xtraiter = and i64 %i.f, 7                     ; 2 uses
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.epil

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !521
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !520
  %i.j = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb0EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.g, i64 %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil = phi ptr [ %i.n, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.m, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !520
  %i.m = add i64 %i.l, %.068.i.i.i.epil           ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_0
begin_hunk_1_@_ZN5boost5beast4http6detail9read_someINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeE:bb.a
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.674.0.copyload = load ptr, ptr %.sroa.674.0..sroa_idx, align 8, !tbaa !84 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !149  ; 2 uses
  %i.j = icmp eq i64 %i.i, 1                      ; 3 uses
  %i.k = icmp eq i64 %.sroa.9.0.copyload, 1       ; 3 uses
  %i.l = xor i1 %i.k, %i.j
  br i1 %i.l, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit
  %or.cond.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 8, !tbaa !84     ; 2 uses
  br i1 %i.j, label %bb.f, label %_ZNK5boost6system10error_code5valueEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152
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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !84
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !147 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = icmp eq ptr %.0.i18.i.i, %.0.i19.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i18.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.ah, %i.ad
  %i.aj = select i1 %i.ae, i1 %i.af, i1 %i.ai
  br i1 %i.aj, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit:   ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !152
  %i.am = icmp eq ptr %i.al, %.sroa.674.0.copyload
  %i.an = load i32, ptr %3, align 8
  %i.ao = icmp eq i32 %i.an, %.sroa.071.0.copyload
  %i.ap = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %i.ap, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge, label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit._crit_edge: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit
  %.pre = load i64, ptr %i.a, align 8, !tbaa !493
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %8, i32 noundef 7)
          to label %.thread93 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #39
  unreachable

.thread93:                                        ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.069, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !490
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.570.0.copyload = load i64, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %switch.i.i = icmp ult i64 %.sroa.570.0.copyload, 2
  %i.az = and i64 %.sroa.570.0.copyload, 1
  %i.ba = or disjoint i64 %i.az, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb_ to i64)
  %.sroa.5.0.i = select i1 %switch.i.i, i64 %.sroa.570.0.copyload, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.069, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.069)
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2334)
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38, !noalias !2334
  invoke void @_ZN5boost5beast18static_buffer_base7prepareEm(ptr dead_on_unwind nonnull writable sret(%"class.boost::beast::detail::buffers_pair") align 8 %6, ptr noundef nonnull align 8 dereferenceable(1576) %1, i64 noundef %i.av)
          to label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread unwind label %bb.q, !noalias !2334

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !845
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !2334
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !2334
  br label %_ZNK5boost6system10error_codecvbEv.exit.thread80

bb.q:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt12length_error         ; 3 uses
  %i.bd = extractvalue { ptr, i32 } %i.bc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38, !noalias !2334
  %i.be = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt12length_error) #38
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.bc

_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit: ; preds = %bb.q
  %i.bg = extractvalue { ptr, i32 } %i.bc, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #38, !noalias !2334 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !2334
  call void @_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 7, ptr noundef null) #38, !noalias !2334
  %.sroa.5.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.5.0.copyload4.i.i = load i64, ptr %.sroa.5.0..sroa_idx3.i.i, align 8, !tbaa !81, !noalias !2334 ; 3 uses
  %switch.i.i.i = icmp ult i64 %.sroa.5.0.copyload4.i.i, 2
  %i.bi = and i64 %.sroa.5.0.copyload4.i.i, 1
  %i.bj = or disjoint i64 %i.bi, ptrtoint (ptr @_ZZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_E7loc_bb_ to i64)
  %.sroa.5.0.i.i = select i1 %switch.i.i.i, i64 %.sroa.5.0.copyload4.i.i, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 16, i1 false), !noalias !2334
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !81, !noalias !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !2334
  call void @__cxa_end_catch(), !noalias !2334
  store i8 0, ptr %i.bb, align 8, !tbaa !84, !alias.scope !2334
  %.pre108 = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !149 ; 2 uses
  %i.bk = and i64 %.pre108, 1
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZNK5boost6system10error_codecvbEv.exit.thread80, label %bb.s

bb.s:                                             ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit
  %i.bl = icmp eq i64 %.pre108, 1
  br i1 %i.bl, label %_ZNK5boost6system10error_codecvbEv.exit, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit:          ; preds = %bb.s
  %i.bm = load i32, ptr %3, align 8, !tbaa !479
  %.not = icmp eq i32 %i.bm, 0
  br i1 %.not, label %_ZNK5boost6system10error_codecvbEv.exit.thread80, label %.thread96

_ZNK5boost6system10error_codecvbEv.exit.thread80: ; preds = %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit.thread, %_ZN5boost5beast6detail22dynamic_buffer_prepareINS0_13static_bufferILm1536EEENS0_4http5errorEEENS_8optionalINT_20mutable_buffers_typeEEERS8_mRNS_6system10error_codeET0_.exit, %_ZNK5boost6system10error_codecvbEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 1024 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 1032 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !520
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bs, 0
  %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i.i.i.i.i, i64 24, i64 40
  %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v ; 2 uses
  br label %bb.t

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.t
  %.sroa.0.0.copyload.i.i.i.i.i.1 = load ptr, ptr %i.cd, align 8, !tbaa !246
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 24
  %.sroa.4.0.copyload.i.i.i.i.i.1 = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !81 ; 2 uses
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ce ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.1, ptr %i.bt, align 8, !tbaa !246
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.1, ptr %i.bu, align 8, !tbaa !777
  %i.bv = add i64 %.sroa.4.0.copyload.i.i.i.i.i.1, %i.cc ; 4 uses
  store i64 %i.bv, ptr %i.bq, align 8, !tbaa !847
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 32 ; 2 uses
  %i.bx = add nuw nsw i64 %i.by, 2                ; 4 uses
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !848
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.bw, %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i.i.i.i.i.1, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !60

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.bx, 64
  br i1 %exitcond.not.i.i.i.i.1, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %bb.t, !llvm.loop !60

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.1, %_ZNK5boost6system10error_codecvbEv.exit.thread80
  %.08.i.i.i.i.i114 = phi ptr [ %i.bb, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bw, %.lr.ph.i.i.i.i.i.1 ] ; 5 uses
  %i.by = phi i64 [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bx, %.lr.ph.i.i.i.i.i.1 ] ; 3 uses
  %i.bz = phi i64 [ 0, %_ZNK5boost6system10error_codecvbEv.exit.thread80 ], [ %i.bv, %.lr.ph.i.i.i.i.i.1 ]
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.08.i.i.i.i.i114, align 8, !tbaa !246
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !81 ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.by ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.ca, align 8, !tbaa !246
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %i.cb, align 8, !tbaa !777
  %i.cc = add i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.bz ; 3 uses
  store i64 %i.cc, ptr %i.bq, align 8, !tbaa !847
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i114, i64 16 ; 2 uses
  %i.ce = or disjoint i64 %i.by, 1                ; 3 uses
  store i64 %i.ce, ptr %i.bp, align 8, !tbaa !848
  %.not.i.i.i.i.i = icmp eq ptr %i.cd, %.0.v.i.i.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i.i.i.i.i, label %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !60

_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit: ; preds = %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i, %bb.t
  %.lcssa = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i.1 ], [ %i.cc, %bb.t ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  %i.cf = phi i64 [ 64, %.lr.ph.i.i.i.i.i.1 ], [ %i.ce, %bb.t ], [ %i.bx, %.lr.ph.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !481
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.cj = load i8, ptr %i.ci, align 4, !tbaa !580
  %i.ck = icmp eq i64 %.lcssa, 0
  %i.cl = call noundef i64 @_ZN5boost4asio6detail10socket_ops9sync_recvEihP5iovecmibRNS_6system10error_codeE(i32 noundef %i.ch, i8 noundef zeroext %i.cj, ptr noundef nonnull %5, i64 noundef %i.cf, i32 noundef 0, i1 noundef zeroext %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @_ZN5boost5beast18static_buffer_base6commitEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.cl) #38
  %i.cm = invoke noundef nonnull align 8 dereferenceable(52) ptr @_ZN5boost4asio5error17get_misc_categoryEv()
          to label %.noexc.i unwind label %bb.u   ; 4 uses

.noexc.i:                                         ; preds = %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !147, !noalias !2335
  %i.cp = and i64 %i.co, -2
  %switch.i.i.i.i = icmp eq i64 %i.cp, -5572340897628102704
  br i1 %switch.i.i.i.i, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread, label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit

bb.u:                                             ; preds = %_ZN5boost5beast12basic_streamINS_4asio2ip3tcpENS2_15any_io_executorENS0_21unlimited_rate_policyEE9read_someINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE.exit
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #39
  unreachable

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit: ; preds = %.noexc.i
  %i.cs = load ptr, ptr %i.cm, align 8, !tbaa !75, !noalias !2335
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !2335
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(52) %i.cm, i32 noundef 2) #38, !noalias !2335, !inline_history !61 ; 0 uses
  br label %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread

_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread: ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.noexc.i
  %i.cw = load i64, ptr %i.bn, align 8, !tbaa !149 ; 5 uses
  %i.cx = icmp eq i64 %i.cw, 1
  %i.cy = load i32, ptr %3, align 8, !tbaa !84
  %.fr = freeze i32 %i.cy                         ; 2 uses
  br i1 %i.cx, label %_ZNK5boost6system10error_codecvbEv.exit62, label %_ZNK5boost6system10error_code5valueEv.exit17.i

_ZNK5boost6system10error_code5valueEv.exit17.i:   ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %i.cz = icmp eq i32 %.fr, 2
  br i1 %i.cz, label %bb.v, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread

bb.v:                                             ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %cond = icmp eq i64 %i.cw, 0
  br i1 %cond, label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !84
  br label %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit:   ; preds = %bb.v, %bb.w
  %.0.i18.i = phi ptr [ %i.db, %bb.w ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.v ] ; 2 uses
  %i.dc = load i64, ptr %i.cn, align 8, !tbaa !147 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  %i.de = icmp eq ptr %.0.i18.i, %i.cm
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 8
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = icmp eq i64 %i.dg, %i.dc
  %i.di = select i1 %i.dd, i1 %i.de, i1 %i.dh
  br i1 %i.di, label %bb.x, label %.thread

bb.x:                                             ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !854
  %.not105 = icmp eq i32 %i.dk, 0
  br i1 %.not105, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %cond113 = icmp eq i64 %i.cw, 0
  br i1 %cond113, label %_ZNK5boost6system10error_code8categoryEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !84
  br label %_ZNK5boost6system10error_code8categoryEv.exit

_ZNK5boost6system10error_code8categoryEv.exit:    ; preds = %bb.y, %bb.z
  %.0.i47 = phi ptr [ %i.dm, %bb.z ], [ @_ZN5boost6system6detail17system_cat_holderIvE8instanceE, %bb.y ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i47, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !147
  %i.dp = and i64 %i.do, -2
  %switch.i.i.i48 = icmp eq i64 %i.dp, -5572340897628102704
  br i1 %switch.i.i.i48, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit
  %i.dq = load ptr, ptr %.0.i47, align 8, !tbaa !75
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef zeroext i1 %i.ds(ptr noundef nonnull align 8 dereferenceable(52) %.0.i47, i32 noundef 0) #38, !inline_history !62
  %spec.select = select i1 %i.dt, i64 3, i64 2
  br label %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread

_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread: ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit, %_ZNK5boost6system10error_code8categoryEv.exit
  %i.du = phi i64 [ 2, %_ZNK5boost6system10error_code8categoryEv.exit ], [ %spec.select, %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit ]
  store i32 0, ptr %3, align 8
  %.sroa.5.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i50, align 4
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.0.i47, ptr %.sroa.52.0..sroa_idx.i, align 8, !tbaa !84
  store i64 %i.du, ptr %i.bn, align 8, !tbaa !81
  call void @_ZN5boost5beast4http12basic_parserILb1EE7put_eofERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %.thread96

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN5boost5beast4http15make_error_codeENS1_5errorE(ptr dead_on_unwind nonnull writable sret(%"class.boost::system::error_code") align 8 %4, i32 noundef 1)
          to label %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #39
  unreachable

_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54: ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !490
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  %switch.i.i57 = icmp ult i64 %.sroa.5.0.copyload, 2
  %i.dx = and i64 %.sroa.5.0.copyload, 1
  %i.dy = or disjoint i64 %i.dx, ptrtoint (ptr @_ZZN5boost5beast4http6detail9read_someINS0_12basic_streamINS_4asio2ip3tcpENS5_15any_io_executorENS0_21unlimited_rate_policyEEENS0_13static_bufferILm1536EEELb1EEEmRT_RT0_RNS1_12basic_parserIXT1_EEERNS_6system10error_codeEE7loc_bb__0 to i64)
  %.sroa.5.0.i58 = select i1 %switch.i.i57, i64 %.sroa.5.0.copyload, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i64 %.sroa.5.0.i58, ptr %i.bn, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code5valueEv.exit17.i
  %i.dz = and i64 %i.cw, 1
  %.not.i.i60 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i60, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread:                                          ; preds = %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit
  %i.ea = and i64 %i.cw, 1
  %.not.i.i6085 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i6085, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

_ZNK5boost6system10error_codecvbEv.exit62:        ; preds = %_ZN5boost6system10error_codeC2INS_4asio5error11misc_errorsEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit.thread
  %.not106 = icmp eq i32 %.fr, 0
  br i1 %.not106, label %.thread100, label %_ZNK5boost6system10error_codecvbEv.exit62.thread

.thread96:                                        ; preds = %_ZN5boost6system10error_code6assignEiRKNS0_14error_categoryE.exit.thread, %_ZNK5boost6system10error_codecvbEv.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

.thread100:                                       ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %bb.b

_ZNK5boost6system10error_codecvbEv.exit62.thread: ; preds = %_ZNK5boost6system10error_codecvbEv.exit62, %.thread, %_ZN5boost6systemeqERKNS0_10error_codeES3_.exit.thread, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  br label %_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread

_ZN5boost6systemneERKNS0_10error_codeES3_.exit.thread: ; preds = %_ZNK5boost6system10error_code8categoryEv.exit20.i.i, %_ZNK5boost6system10error_code5valueEv.exit17.i.i, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit, %.thread96, %.thread93, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit, %_ZNK5boost6system10error_codecvbEv.exit62.thread
  %.5 = phi i64 [ %.140, %.thread96 ], [ %i.e, %_ZN5boost6systemneERKNS0_10error_codeES3_.exit ], [ %.140, %_ZNK5boost6system10error_codecvbEv.exit62.thread ], [ %.140, %.thread93 ], [ %i.e, %_ZN5boost6system10error_codeC2INS_5beast4http5errorEEET_PNSt9enable_ifIXoosr18is_error_code_enumIS6_EE5valuesr3std18is_error_code_enumIS6_EE5valueEvE4typeE.exit ], [ %i.e, %_ZNK5boost6system10error_code5valueEv.exit17.i.i ], [ %i.e, %_ZNK5boost6system10error_code8categoryEv.exit20.i.i ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putINS0_6detail12buffers_pairILb1EEEEEmRKT_RNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8192 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !520
  %.not.i.i = icmp eq i64 %i.c, 0                 ; 2 uses
  %.0.v.i.i = select i1 %.not.i.i, i64 16, i64 32 ; 2 uses
  %.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0.v.i.i
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.d = add nuw nsw i64 %.0.v.i.i, 112
  %i.e = lshr exact i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1
  %xtraiter = and i64 %i.f, 7                     ; 2 uses
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %.lr.ph.i.i.i.epil

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !521
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !520
  %i.j = tail call noundef i64 @_ZN5boost5beast4http12basic_parserILb1EE3putENS_4asio12const_bufferERNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.g, i64 %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.h

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.epil = phi ptr [ %i.n, %.lr.ph.i.i.i.epil ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.epil = phi i64 [ %i.m, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !520
  %i.m = add i64 %i.l, %.068.i.i.i.epil           ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.09.i.i.i.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_1
