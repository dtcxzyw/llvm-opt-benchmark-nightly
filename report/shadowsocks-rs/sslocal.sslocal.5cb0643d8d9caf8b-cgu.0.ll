Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/sslocal.sslocal.5cb0643d8d9caf8b-cgu.0?download=true
inline.NumInlined: 35271
inline.NumDeleted: 15553
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 135
loop-unroll.NumUnrolled: 238
begin_hunk_0_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB6_11HttpService16serve_connection00Cs7XnEB7DeNXr_7sslocal:bb.a
bb.bt:                                            ; preds = %bb.bs
  %i.jx = load i64, ptr %i.is, align 8, !noalias !41985, !noundef !145 ; 2 uses
  %i.jy = load i64, ptr %i.it, align 8, !noalias !41985, !noundef !145 ; 6 uses
  %.not30.i.i.i.i.i = icmp ugt i64 %i.jy, %i.jx
  br i1 %.not30.i.i.i.i.i, label %bb.bv, label %bb.bu, !prof !172

bb.bu:                                            ; preds = %bb.bt
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.jy, i64 noundef %i.jx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !41986
  unreachable

bb.bw:                                            ; preds = %bb.bu
  store i8 1, ptr %i.in, align 8, !alias.scope !41984, !noalias !41978
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  store i64 0, ptr %i.iq, align 16, !alias.scope !41984, !noalias !41978
  store i64 %i.jy, ptr %i.ir, align 8, !alias.scope !41984, !noalias !41978
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ka = phi i64 [ %i.jy, %bb.bx ], [ %i.jg, %bb.bw ]
  %i.kb = phi i64 [ 0, %bb.bx ], [ %i.jh, %bb.bw ]
  %i.kc = phi i8 [ %i.ji, %bb.bx ], [ 1, %bb.bw ]
  %i.kd = phi i8 [ 0, %bb.bx ], [ 1, %bb.bw ]
  %i.ke = phi i64 [ %i.jy, %bb.bx ], [ %i.jk, %bb.bw ]
  %.promoted27.i.i.i.i.i = phi i64 [ 0, %bb.bx ], [ %i.jk, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41985
  br label %bb.bq

bb.bz:                                            ; preds = %bb.bs, %bb.br
  %.sroa.9.0.i.i.i.i.i = phi ptr [ undef, %bb.br ], [ %i.jw, %bb.bs ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 2, %bb.br ], [ 1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !41985
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.ci, %bb.bq
  %i.kf = phi i64 [ %i.jf, %bb.bq ], [ %i.lc, %bb.ci ] ; 2 uses
  %i.kg = phi i64 [ %i.jo, %bb.bq ], [ %i.lb, %bb.ci ] ; 2 uses
  %i.kh = phi i64 [ %.promoted2231.i.i.i.i.i, %bb.bq ], [ %i.lc, %bb.ci ] ; 2 uses
  %.promoted25.i.i.i.i.i = phi i64 [ %.promoted26.i.i.i.i.i, %bb.bq ], [ %i.lb, %bb.ci ] ; 2 uses
  %i.ki = icmp eq i64 %.promoted25.i.i.i.i.i, %i.jr
  %i.kj = trunc nuw i8 %i.jq to i1
  %or.cond5.i.i.i.i.i = select i1 %i.ki, i1 %i.kj, i1 false
  br i1 %or.cond5.i.i.i.i.i, label %bb.cb, label %bb.bp

bb.ca:                                            ; preds = %bb.ci, %.lr.ph.split.i.i.i.i.i
  %i.kk = phi i64 [ %.promoted2231.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %i.lc, %bb.ci ]
  %i.kl = phi i64 [ %.promoted26.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %i.lb, %bb.ci ] ; 3 uses
  %i.km = sub nuw i64 %i.jr, %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.kl
  %i.ko = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kn, i64 noundef range(i64 0, -9223372036854775808) %i.km) #52, !noalias !41986 ; 2 uses
  %i.kp = extractvalue { i64, ptr } %i.ko, 0      ; 2 uses
  %i.kq = extractvalue { i64, ptr } %i.ko, 1      ; 4 uses
  %i.kr = icmp eq i64 %i.kp, 2
  br i1 %i.kr, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i, label %bb.ce

bb.cb:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i.i.i) ]
  %i.ks = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !41986 ; 2 uses
  %i.kt = extractvalue { i64, ptr } %i.ks, 0
  %i.ku = trunc nuw i64 %i.kt to i1
  br i1 %i.ku, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kv = extractvalue { i64, ptr } %i.ks, 1      ; 2 uses
  %.not31.i.i.i.i.i = icmp ne ptr %i.kv, null     ; 2 uses
  %i.kw = inttoptr i64 %i.kh to ptr
  %spec.select.i.i.i.i.i = select i1 %.not31.i.i.i.i.i, ptr %i.kv, ptr %i.kw
  %spec.select73.i.i.i.i.i = zext i1 %.not31.i.i.i.i.i to i64
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.promoted26.i.i.i.i.i, i64 noundef %i.jr, i64 noundef %.val1.i23.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #62, !noalias !41986
  unreachable

bb.ce:                                            ; preds = %bb.ca
  %i.kx = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.ky = trunc nuw i64 %i.kp to i1
  br i1 %i.ky, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kq) ]
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.kz = icmp eq ptr %i.kq, null
  br i1 %i.kz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.la = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !41986
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.lb = add i64 %i.kl, %i.kx                    ; 5 uses
  store i64 %i.lb, ptr %i.iq, align 16, !alias.scope !41984, !noalias !41978
  %i.lc = add i64 %i.kk, %i.kx                    ; 4 uses
  store i64 %i.lc, ptr %i.iv, align 16, !alias.scope !41984, !noalias !41978
  %i.ld = icmp ult i64 %i.lb, %i.jr
  br i1 %i.ld, label %bb.ca, label %._crit_edge.i.i.i.i.i

_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.cc, %bb.bz
  %i.le = phi i64 [ %i.kf, %bb.cc ], [ %i.jf, %bb.bz ]
  %i.lf = phi i64 [ %i.jn, %bb.cc ], [ %i.jg, %bb.bz ]
  %i.lg = phi i64 [ %i.kg, %bb.cc ], [ %i.jh, %bb.bz ]
  %i.lh = phi i8 [ %i.jp, %bb.cc ], [ %i.ji, %bb.bz ]
  %.sroa.9.1.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.cc ], [ %.sroa.9.0.i.i.i.i.i, %bb.bz ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %spec.select73.i.i.i.i.i, %bb.cc ], [ %.sroa.0.0.i.i.i.i.i, %bb.bz ]
  switch i64 %.sroa.0.1.i.i.i.i.i, label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i [
    i64 2, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i
    i64 0, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i.i.i) ]
  %i.li = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !41987 ; 2 uses
  %i.lj = extractvalue { i64, ptr } %i.li, 0
  %i.lk = trunc nuw i64 %i.lj to i1
  br i1 %i.lk, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i, label %bb.cl

_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i: ; preds = %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.ch, %bb.cf
  %.sroa.9.1.i5.i.i.i.i = phi ptr [ %i.la, %bb.ch ], [ %i.kq, %bb.cf ], [ %.sroa.9.1.i.i.i.i.i, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i5.i.i.i.i) ]
  br label %.loopexit70.i.i.i

bb.ck:                                            ; preds = %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %i.ll = ptrtoint ptr %.sroa.9.1.i.i.i.i.i to i64
  %i.lm = icmp samesign ugt i8 %i.lh, 1
  %or.cond.i.i.i.i = select i1 %i.lm, i1 true, i1 %i.ip
  br i1 %or.cond.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.je, i64 noundef %.val1.i23.i.i.i.i, i64 noundef 1) #52, !noalias !41988
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.ck
  store i64 %i.ll, ptr %i.il, align 16, !alias.scope !41982, !noalias !41978
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i, %bb.cm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %storemerge.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ 3, %bb.cm ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ] ; 2 uses
  %i.ln = phi i64 [ %i.le, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.iw, %bb.cm ], [ %i.iw, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ]
  %i.lo = phi i64 [ %i.lf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.ix, %bb.cm ], [ %i.ix, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ]
  %i.lp = phi i64 [ %i.lg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %i.iy, %bb.cm ], [ %i.iy, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ]
  store i8 %storemerge.i.i.i.i, ptr %i.in, align 8, !alias.scope !41982, !noalias !41978
  br label %bb.bm

bb.cl:                                            ; preds = %bb.cj
  %i.lq = extractvalue { i64, ptr } %i.li, 1      ; 2 uses
  %.not.i.i.i66.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i66.i, label %bb.cm, label %.loopexit70.i.i.i

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !41989)
  %brmerge.i.i.i.i = select i1 %i.ja, i1 true, i1 %i.ip
  br i1 %brmerge.i.i.i.i, label %.backedge.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i: ; preds = %bb.cm
  %.val.i25.i.i.i.i = load ptr, ptr %i.il, align 16, !alias.scope !41990, !noalias !41978, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i25.i.i.i.i, i64 noundef %.val1.i23.i.i.i.i, i64 noundef 1) #52, !noalias !41991
  br label %.backedge.i.i.i.i

bb.cn:                                            ; preds = %bb.bm
  %i.lr = load i64, ptr %i.il, align 16, !alias.scope !41982, !noalias !41978, !noundef !145
  br label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i

_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i: ; preds = %bb.cj, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %bb.cb, %bb.ca, %bb.cn
  %i.ls = phi i1 [ false, %bb.cn ], [ true, %bb.ca ], [ true, %bb.cb ], [ true, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ true, %bb.cj ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.lr, %bb.cn ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ undef, %bb.cj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41992)
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 12376 ; 3 uses
  %.promoted.i22.i.i.i = load i8, ptr %i.lt, align 8, !alias.scope !41993, !noalias !41978
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 12344
  %.val1.i23.i23.i.i.i = load i64, ptr %i.lu, align 8, !alias.scope !41993, !noalias !41978 ; 8 uses
  %i.lv = icmp eq i64 %.val1.i23.i23.i.i.i, 0     ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 12352 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 12360 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 12368 ; 2 uses
  %.promoted42.i.i.i.i = load i64, ptr %i.lw, align 16, !alias.scope !41993, !noalias !41978
  %.promoted43.i.i.i.i = load i64, ptr %i.lx, align 8, !alias.scope !41993, !noalias !41978
  %.promoted44.i.i.i.i = load i64, ptr %i.ma, align 16, !alias.scope !41993, !noalias !41978
  br label %bb.co

bb.co:                                            ; preds = %.backedge.i30.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i
  %i.mb = phi i64 [ %i.oh, %.backedge.i30.i.i.i ], [ %.promoted44.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ] ; 4 uses
  %i.mc = phi i64 [ %i.oi, %.backedge.i30.i.i.i ], [ %.promoted43.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ] ; 4 uses
  %i.md = phi i64 [ %i.oj, %.backedge.i30.i.i.i ], [ %.promoted42.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ] ; 4 uses
  %i.me = phi i8 [ %storemerge.i31.i.i.i, %.backedge.i30.i.i.i ], [ %.promoted.i22.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i ] ; 4 uses
  %i.mf = icmp samesign ugt i8 %i.me, 1           ; 2 uses
  %i.mg = zext nneg i8 %i.me to i64
  %i.mh = add nsw i64 %i.mg, -1
  %i.mi = select i1 %i.mf, i64 %i.mh, i64 0
  switch i64 %i.mi, label %bb.cp [
    i64 0, label %bb.cq
    i64 1, label %bb.di
    i64 2, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread65.i.i.i
  ]

bb.cp:                                            ; preds = %bb.co
  unreachable

bb.cq:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !41994)
  %i.mj = load ptr, ptr %i.im, align 16, !alias.scope !41995, !noalias !41978, !nonnull !145 ; 3 uses
  br label %bb.cr

bb.cr:                                            ; preds = %._crit_edge.i.i34.i.i.i, %bb.cq
  %i.mk = phi i64 [ %i.nc, %._crit_edge.i.i34.i.i.i ], [ %i.mb, %bb.cq ] ; 2 uses
  %i.ml = phi i64 [ %i.nd, %._crit_edge.i.i34.i.i.i ], [ %i.mc, %bb.cq ] ; 2 uses
  %i.mm = phi i64 [ %i.ne, %._crit_edge.i.i34.i.i.i ], [ %i.md, %bb.cq ] ; 2 uses
  %i.mn = phi i8 [ %i.nf, %._crit_edge.i.i34.i.i.i ], [ %i.me, %bb.cq ] ; 2 uses
  %.promoted2939.i.i.i.i.i = phi i64 [ %i.nh, %._crit_edge.i.i34.i.i.i ], [ %i.mb, %bb.cq ] ; 3 uses
  %i.mo = phi i8 [ %i.ng, %._crit_edge.i.i34.i.i.i ], [ %i.me, %bb.cq ] ; 2 uses
  %.sroa.8.034.i.i.i.i.i = phi i64 [ %.sroa.8.03566.i.i.i.i.i, %._crit_edge.i.i34.i.i.i ], [ %i.mc, %bb.cq ] ; 4 uses
  %.promoted31.i.i.i.i.i = phi i64 [ %.promoted32.i.i.i.i.i, %._crit_edge.i.i34.i.i.i ], [ %i.md, %bb.cq ] ; 2 uses
  %i.mp = icmp ne i64 %.promoted31.i.i.i.i.i, %.sroa.8.034.i.i.i.i.i
  %i.mq = trunc nuw i8 %i.mo to i1
  %or.cond.i.i32.i.i.i = select i1 %i.mp, i1 true, i1 %i.mq
  br i1 %or.cond.i.i32.i.i.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cz, %bb.cr
  %i.mr = phi i64 [ %i.ml, %bb.cr ], [ %i.na, %bb.cz ] ; 2 uses
  %i.ms = phi i64 [ %i.mm, %bb.cr ], [ 0, %bb.cz ]
  %i.mt = phi i8 [ %i.mo, %bb.cr ], [ 0, %bb.cz ] ; 2 uses
  %.sroa.8.035.i.i.i.i.i = phi i64 [ %.sroa.8.034.i.i.i.i.i, %bb.cr ], [ %i.na, %bb.cz ] ; 7 uses
  %.promoted33.i.i.i.i.i = phi i64 [ %.promoted31.i.i.i.i.i, %bb.cr ], [ 0, %bb.cz ] ; 4 uses
  %i.mu = icmp ult i64 %.promoted33.i.i.i.i.i, %.sroa.8.035.i.i.i.i.i
  br i1 %i.mu, label %.lr.ph.i.i40.i.i.i, label %._crit_edge.i.i34.i.i.i

.lr.ph.i.i40.i.i.i:                               ; preds = %bb.cs
  %.not32.i.i41.i.i.i = icmp ugt i64 %.sroa.8.035.i.i.i.i.i, %.val1.i23.i23.i.i.i
  br i1 %.not32.i.i41.i.i.i, label %bb.dc, label %.lr.ph.split.i.i42.i.i.i, !prof !154

.lr.ph.split.i.i42.i.i.i:                         ; preds = %.lr.ph.i.i40.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i65.i) ]
  br label %bb.da

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !41996
  store ptr %i.mj, ptr %i.i, align 8, !noalias !41996
  store i64 %.val1.i23.i23.i.i.i, ptr %i.ly, align 8, !noalias !41996
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false), !noalias !41996
  %i.mv = call { i64, ptr } @_RNvXs_NtCsaI3lGUjttVO_5hyper7upgradeNtB4_8UpgradedNtNtNtB6_2rt2io4Read9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #52, !noalias !41997 ; 2 uses
  %i.mw = extractvalue { i64, ptr } %i.mv, 0      ; 2 uses
  %i.mx = extractvalue { i64, ptr } %i.mv, 1      ; 2 uses
  %i.my = trunc nuw i64 %i.mw to i1               ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp ne ptr %i.mx, null
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.my, i1 true, i1 %.not12.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mz = load i64, ptr %i.ly, align 8, !noalias !41996, !noundef !145 ; 2 uses
  %i.na = load i64, ptr %i.lz, align 8, !noalias !41996, !noundef !145 ; 8 uses
  %.not13.i.i.i.i.i.i.i = icmp ugt i64 %i.na, %i.mz
  br i1 %.not13.i.i.i.i.i.i.i, label %bb.cv, label %bb.cw, !prof !172

bb.cv:                                            ; preds = %bb.cu
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.na, i64 noundef %i.mz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2085) #62, !noalias !41997
  unreachable

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41996
  %.not30.i.i33.i.i.i = icmp ugt i64 %i.na, %.val1.i23.i23.i.i.i
  br i1 %.not30.i.i33.i.i.i, label %bb.cy, label %bb.cx, !prof !41998

bb.cx:                                            ; preds = %bb.cw
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %.thread.i.i.i.i.i, label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.na, i64 noundef %.val1.i23.i23.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !41999
  unreachable

.thread.i.i.i.i.i:                                ; preds = %bb.cx
  store i8 1, ptr %i.lt, align 8, !alias.scope !41995, !noalias !41978
  br label %._crit_edge.i.i34.i.i.i

bb.cz:                                            ; preds = %bb.cx
  store i64 0, ptr %i.lw, align 16, !alias.scope !41995, !noalias !41978
  store i64 %i.na, ptr %i.lx, align 8, !alias.scope !41995, !noalias !41978
  br label %bb.cs

._crit_edge.i.i34.i.i.i:                          ; preds = %bb.dh, %.thread.i.i.i.i.i, %bb.cs
  %i.nc = phi i64 [ %i.mk, %bb.cs ], [ %i.mk, %.thread.i.i.i.i.i ], [ %i.oa, %bb.dh ] ; 2 uses
  %i.nd = phi i64 [ %i.mr, %bb.cs ], [ %i.ml, %.thread.i.i.i.i.i ], [ %i.mr, %bb.dh ] ; 2 uses
  %i.ne = phi i64 [ %i.ms, %bb.cs ], [ %i.mm, %.thread.i.i.i.i.i ], [ %i.nz, %bb.dh ] ; 2 uses
  %i.nf = phi i8 [ %i.mn, %bb.cs ], [ 1, %.thread.i.i.i.i.i ], [ %i.mn, %bb.dh ] ; 2 uses
  %.sroa.8.03566.i.i.i.i.i = phi i64 [ %.sroa.8.035.i.i.i.i.i, %bb.cs ], [ %.sroa.8.034.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.8.035.i.i.i.i.i, %bb.dh ] ; 2 uses
  %i.ng = phi i8 [ %i.mt, %bb.cs ], [ 1, %.thread.i.i.i.i.i ], [ %i.mt, %bb.dh ] ; 2 uses
  %i.nh = phi i64 [ %.promoted2939.i.i.i.i.i, %bb.cs ], [ %.promoted2939.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.oa, %bb.dh ] ; 2 uses
  %.promoted32.i.i.i.i.i = phi i64 [ %.promoted33.i.i.i.i.i, %bb.cs ], [ %.sroa.8.034.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %i.nz, %bb.dh ] ; 2 uses
  %i.ni = icmp eq i64 %.promoted32.i.i.i.i.i, %.sroa.8.03566.i.i.i.i.i
  %i.nj = trunc nuw i8 %i.ng to i1
  %or.cond5.i.i35.i.i.i = select i1 %i.ni, i1 %i.nj, i1 false
  br i1 %or.cond5.i.i35.i.i.i, label %bb.db, label %bb.cr

bb.da:                                            ; preds = %bb.dh, %.lr.ph.split.i.i42.i.i.i
  %i.nk = phi i64 [ %.promoted2939.i.i.i.i.i, %.lr.ph.split.i.i42.i.i.i ], [ %i.oa, %bb.dh ]
  %i.nl = phi i64 [ %.promoted33.i.i.i.i.i, %.lr.ph.split.i.i42.i.i.i ], [ %i.nz, %bb.dh ] ; 3 uses
  %i.nm = sub nuw i64 %.sroa.8.035.i.i.i.i.i, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.nl
  %i.no = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val.i.i65.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nn, i64 noundef range(i64 0, -9223372036854775808) %i.nm) #52, !noalias !41999 ; 2 uses
  %i.np = extractvalue { i64, ptr } %i.no, 0      ; 2 uses
  %i.nq = extractvalue { i64, ptr } %i.no, 1      ; 4 uses
  %i.nr = icmp eq i64 %i.np, 2
  br i1 %i.nr, label %.loopexit.i, label %bb.dd

bb.db:                                            ; preds = %._crit_edge.i.i34.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i65.i) ]
  %i.ns = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val.i.i65.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !41999 ; 2 uses
  %i.nt = extractvalue { i64, ptr } %i.ns, 0
  %i.nu = trunc nuw i64 %i.nt to i1
  br i1 %i.nu, label %.loopexit.i, label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i

bb.dc:                                            ; preds = %.lr.ph.i.i40.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.promoted33.i.i.i.i.i, i64 noundef %.sroa.8.035.i.i.i.i.i, i64 noundef %.val1.i23.i23.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @297) #62, !noalias !41999
  unreachable

bb.dd:                                            ; preds = %bb.da
  %i.nv = ptrtoint ptr %i.nq to i64               ; 2 uses
  %i.nw = trunc nuw i64 %i.np to i1
  br i1 %i.nw, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nq) ]
  br label %.loopexit70.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.nx = icmp eq ptr %i.nq, null
  br i1 %i.nx, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ny = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !41999
  br label %.loopexit70.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.nz = add i64 %i.nl, %i.nv                    ; 5 uses
  store i64 %i.nz, ptr %i.lw, align 16, !alias.scope !41995, !noalias !41978
  %i.oa = add i64 %i.nk, %i.nv                    ; 4 uses
  store i64 %i.oa, ptr %i.ma, align 16, !alias.scope !41995, !noalias !41978
  %i.ob = icmp ult i64 %i.nz, %.sroa.8.035.i.i.i.i.i
  br i1 %i.ob, label %bb.da, label %._crit_edge.i.i34.i.i.i

_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i: ; preds = %bb.db
  %i.oc = extractvalue { i64, ptr } %i.ns, 1      ; 2 uses
  %.not31.i.not.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not31.i.not.i.i.i.i, label %bb.dj, label %.loopexit70.i.i.i

bb.di:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i65.i) ]
  %i.od = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val.i.i65.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !42000 ; 2 uses
  %i.oe = extractvalue { i64, ptr } %i.od, 0
  %i.of = trunc nuw i64 %i.oe to i1
  br i1 %i.of, label %.loopexit.i, label %bb.dk

_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread65.i.i.i: ; preds = %bb.co
  %2 = load i64, ptr %i.im, align 16, !alias.scope !41993, !noalias !41978, !noundef !145
  br label %bb.dm

bb.dj:                                            ; preds = %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i
  %i.og = icmp samesign ugt i8 %i.nf, 1
  %or.cond.i37.i.i.i = select i1 %i.og, i1 true, i1 %i.lv
  br i1 %or.cond.i37.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i38.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i38.i.i.i: ; preds = %bb.dj
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef %.val1.i23.i23.i.i.i, i64 noundef 1) #52, !noalias !42001
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i38.i.i.i, %bb.dj
  store i64 %i.nh, ptr %i.im, align 16, !alias.scope !41993, !noalias !41978
  br label %.backedge.i30.i.i.i

.backedge.i30.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i, %bb.dl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i
  %storemerge.i31.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i ], [ 3, %bb.dl ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ] ; 2 uses
  %i.oh = phi i64 [ %i.nc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i ], [ %i.mb, %bb.dl ], [ %i.mb, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ]
  %i.oi = phi i64 [ %i.nd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i ], [ %i.mc, %bb.dl ], [ %i.mc, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ]
  %i.oj = phi i64 [ %i.ne, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i39.i.i.i ], [ %i.md, %bb.dl ], [ %i.md, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ]
  store i8 %storemerge.i31.i.i.i, ptr %i.lt, align 8, !alias.scope !41993, !noalias !41978
  br label %bb.co

bb.dk:                                            ; preds = %bb.di
  %i.ok = extractvalue { i64, ptr } %i.od, 1      ; 2 uses
  %.not.i26.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not.i26.i.i.i, label %bb.dl, label %.loopexit70.i.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !42002)
  %brmerge.i27.i.i.i = select i1 %i.mf, i1 true, i1 %i.lv
  br i1 %brmerge.i27.i.i.i, label %.backedge.i30.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i: ; preds = %bb.dl
  %.val.i25.i29.i.i.i = load ptr, ptr %i.im, align 16, !alias.scope !42003, !noalias !41978, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i25.i29.i.i.i, i64 noundef %.val1.i23.i23.i.i.i, i64 noundef 1) #52, !noalias !42004
  br label %.backedge.i30.i.i.i

_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !41996
  %.mux.i.i.i.i = select i1 %i.my, ptr undef, ptr %i.mx ; 2 uses
  %3 = ptrtoint ptr %.mux.i.i.i.i to i64
  switch i64 %i.mw, label %.loopexit70.i.i.i [
    i64 1, label %.loopexit.i
    i64 -1, label %bb.dm
  ]

bb.dm:                                            ; preds = %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread65.i.i.i
  %4 = phi i64 [ %2, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.thread65.i.i.i ], [ %3, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i ] ; 2 uses
  br i1 %i.ls, label %.loopexit.i, label %bb.dn

.loopexit70.i.i.i:                                ; preds = %bb.cl, %bb.dk, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i, %bb.dg, %bb.de, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i
  %.sroa.9145.0.ph.in.i = phi ptr [ %i.oc, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i.i ], [ %.sroa.9.1.i5.i.i.i.i, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECs7XnEB7DeNXr_7sslocal.exit.thread.i.i.i.i ], [ %.mux.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i ], [ %i.ny, %bb.dg ], [ %i.nq, %bb.de ], [ %i.ok, %bb.dk ], [ %i.lq, %bb.cl ]
  %.sroa.9145.0.ph.i = ptrtoint ptr %.sroa.9145.0.ph.in.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !42005
  store i64 1, ptr %i.n, align 8, !noalias !42006
  %.sroa.9145.0..sroa_idx180.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %.sroa.9145.0.ph.i, ptr %.sroa.9145.0..sroa_idx180.i, align 8, !noalias !42006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !42005
  store ptr %.sroa.9145.0..sroa_idx180.i, ptr %i.l, align 8, !noalias !42005
  %i.ol = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !42005 ; 2 uses
  %i.om = icmp ult i64 %i.ol, 6
  call void @llvm.assume(i1 %i.om)
  %i.on = icmp samesign ugt i64 %i.ol, 3
  br i1 %i.on, label %bb.dp, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !42005
  store i64 0, ptr %i.n, align 8, !noalias !42006
  %.sroa.9145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.9145.0..sroa_idx.i, align 8, !noalias !42006
  %i.oo = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !42005 ; 2 uses
  %i.op = icmp ult i64 %i.oo, 6
  call void @llvm.assume(i1 %i.op)
  %i.oq = icmp samesign ugt i64 %i.oo, 4
  br i1 %i.oq, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !42005
  store ptr %i.il, ptr %i.m, align 8, !noalias !42005
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !42005
  %i.or = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.im, ptr %i.or, align 8, !noalias !42005
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !42005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !42007
  %i.os = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 5, ptr %i.os, align 8, !noalias !42007
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @2561, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !42007
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 35, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !42007
  %i.ot = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr @2560, ptr %i.ot, align 8, !noalias !42007
  %i.ou = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr %i.m, ptr %i.ou, align 8, !noalias !42007
  store i64 0, ptr %i.h, align 8, !noalias !42007
  %.sroa.428.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @2561, ptr %.sroa.428.0..sroa_idx.i.i.i.i, align 8, !noalias !42007
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 35, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8, !noalias !42007
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.ov, align 8, !noalias !42007
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @296, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !42007
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 46, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !42007
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i32 1, ptr %i.ow, align 8, !noalias !42007
  %i.ox = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  store i32 256, ptr %i.ox, align 4, !noalias !42007
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h) #52, !noalias !42008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !42007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !42005
  br label %bb.ds

bb.dp:                                            ; preds = %.loopexit70.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !42005
  store ptr %i.l, ptr %i.k, align 8, !noalias !42005
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !42005
  %i.oy = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.il, ptr %i.oy, align 8, !noalias !42005
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !42005
  %i.oz = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.im, ptr %i.oz, align 8, !noalias !42005
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !42005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !42009
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 4, ptr %i.pa, align 8, !noalias !42009
  %.sroa.422.0..sroa_idx.i43.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @2561, ptr %.sroa.422.0..sroa_idx.i43.i.i.i, align 8, !noalias !42009
  %.sroa.523.0..sroa_idx.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 35, ptr %.sroa.523.0..sroa_idx.i44.i.i.i, align 8, !noalias !42009
  %i.pb = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr @2562, ptr %i.pb, align 8, !noalias !42009
  %i.pc = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %i.k, ptr %i.pc, align 8, !noalias !42009
  store i64 0, ptr %i.g, align 8, !noalias !42009
  %.sroa.428.0..sroa_idx.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @2561, ptr %.sroa.428.0..sroa_idx.i45.i.i.i, align 8, !noalias !42009
  %.sroa.529.0..sroa_idx.i46.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 35, ptr %.sroa.529.0..sroa_idx.i46.i.i.i, align 8, !noalias !42009
  %i.pd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.pd, align 8, !noalias !42009
  %.sroa.434.0..sroa_idx.i47.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @296, ptr %.sroa.434.0..sroa_idx.i47.i.i.i, align 8, !noalias !42009
  %.sroa.535.0..sroa_idx.i48.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 46, ptr %.sroa.535.0..sroa_idx.i48.i.i.i, align 8, !noalias !42009
  %i.pe = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 1, ptr %i.pe, align 8, !noalias !42009
  %i.pf = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i32 262, ptr %i.pf, align 4, !noalias !42009
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g) #52, !noalias !42010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !42009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !42005
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.loopexit70.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !42005
  br label %bb.ds

bb.dr:                                            ; preds = %bb.bh
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @721) #62, !noalias !41979
  unreachable

bb.ds:                                            ; preds = %bb.dq, %bb.do, %bb.dn
  %.sroa.13146.0186.i = phi i64 [ undef, %bb.dq ], [ %4, %bb.do ], [ %4, %bb.dn ]
  %.sroa.9145.0184.i = phi i64 [ %.sroa.9145.0.ph.i, %bb.dq ], [ %.sroa.7.0.i.i.i.i, %bb.do ], [ %.sroa.7.0.i.i.i.i, %bb.dn ] ; 2 uses
  %.sroa.0144.0182.i = phi i1 [ true, %bb.dq ], [ false, %bb.do ], [ false, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !42005
  call void @llvm.experimental.noalias.scope.decl(metadata !42011)
  call void @llvm.experimental.noalias.scope.decl(metadata !42012)
  %i.pg = load i8, ptr %i.in, align 8, !range !197, !alias.scope !42013, !noalias !41978, !noundef !145
  %i.ph = icmp samesign ult i8 %i.pg, 2
  br i1 %i.ph, label %bb.dt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %.val1.i.i.i.i = load i64, ptr %i.io, align 8, !alias.scope !42014, !noalias !41978, !noundef !145 ; 2 uses
  %i.pi = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.pi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.dt
  %.val.i.i.i.i = load ptr, ptr %i.il, align 16, !alias.scope !42013, !noalias !41978, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #52, !noalias !42015
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.dt, %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !42016)
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 12376
  %i.pk = load i8, ptr %i.pj, align 8, !range !197, !alias.scope !42017, !noalias !41978, !noundef !145
  %i.pl = icmp samesign ult i8 %i.pk, 2
  br i1 %i.pl, label %bb.du, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECs7XnEB7DeNXr_7sslocal.exit.i

bb.du:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 12344
  %.val1.i1.i.i.i = load i64, ptr %i.pm, align 8, !alias.scope !42018, !noalias !41978, !noundef !145 ; 2 uses
  %i.pn = icmp eq i64 %.val1.i1.i.i.i, 0
  br i1 %i.pn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECs7XnEB7DeNXr_7sslocal.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i.i: ; preds = %bb.du
  %.val.i3.i.i.i = load ptr, ptr %i.im, align 16, !alias.scope !42017, !noalias !41978, !nonnull !145, !noundef !145
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i.i, i64 noundef %.val1.i1.i.i.i, i64 noundef 1) #52, !noalias !42019
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECs7XnEB7DeNXr_7sslocal.exit.i

.loopexit199.i:                                   ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i, %bb.be, %bb.ay, %bb.as, %bb.ar
  %i.po = phi ptr [ %i.gt, %bb.be ], [ %i.eh, %bb.ar ], [ %i.eh, %bb.as ], [ %i.gb, %bb.ay ], [ %i.gb, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i ]
  %i.pp = phi ptr [ %i.gu, %bb.be ], [ %i.ei, %bb.ar ], [ %i.ei, %bb.as ], [ %i.gc, %bb.ay ], [ %i.gc, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i ]
  %.sroa.015.1.i = phi ptr [ %i.ha, %bb.be ], [ %i.fv, %bb.ar ], [ null, %bb.as ], [ %i.gm, %bb.ay ], [ inttoptr (i64 98784247811 to ptr), %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCs7XnEB7DeNXr_7sslocal.exit.i.i ]
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 12265
  store i8 0, ptr %i.pq, align 1, !noalias !41963
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit.i

.loopexit.i:                                      ; preds = %bb.di, %bb.db, %bb.da, %bb.dm, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !noalias !41978
  store i8 3, ptr %i.ik, align 1, !noalias !41978
  store i8 7, ptr %i.ii, align 8, !noalias !41963
  br label %_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils20establish_tcp_tunnelINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i.i, %bb.du, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECs7XnEB7DeNXr_7sslocal.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !noalias !41978
  store i8 1, ptr %i.ik, align 1, !noalias !41978
  br i1 %.sroa.0144.0182.i, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECs7XnEB7DeNXr_7sslocal.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !41963
  store i64 %.sroa.9145.0184.i, ptr %i.x, align 8, !noalias !41963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !41963
  store i64 %.sroa.13146.0186.i, ptr %i.w, align 8, !noalias !41963
  %i.pr = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !41963 ; 2 uses
  %i.ps = icmp ult i64 %i.pr, 6
  call void @llvm.assume(i1 %i.ps)
  %i.pt = icmp samesign ugt i64 %i.pr, 4
  br i1 %i.pt, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dx, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !41963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !41963
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit.i

bb.dx:                                            ; preds = %bb.dv
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 4048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !41963
  store ptr %i.pu, ptr %i.v, align 8, !noalias !41963
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4150.0..sroa_idx.i, align 8, !noalias !41963
  %i.pw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.pv, ptr %i.pw, align 8, !noalias !41963
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4152.0..sroa_idx.i, align 8, !noalias !41963
  %i.px = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.px, align 8, !noalias !41963
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4154.0..sroa_idx.i, align 8, !noalias !41963
  %i.py = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.x, ptr %i.py, align 8, !noalias !41963
  %.sroa.4156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4156.0..sroa_idx.i, align 8, !noalias !41963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42020
  %i.pz = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.pz, align 8, !noalias !42020
  %.sroa.422.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @679, ptr %.sroa.422.0..sroa_idx.i.i50, align 8, !noalias !42020
  %.sroa.523.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i51, align 8, !noalias !42020
  %i.qa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @685, ptr %i.qa, align 8, !noalias !42020
  %i.qb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.v, ptr %i.qb, align 8, !noalias !42020
  store i64 0, ptr %i.b, align 8, !noalias !42020
  %.sroa.428.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @679, ptr %.sroa.428.0..sroa_idx.i.i52, align 8, !noalias !42020
  %.sroa.529.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i53, align 8, !noalias !42020
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.qc, align 8, !noalias !42020
  %.sroa.434.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @678, ptr %.sroa.434.0..sroa_idx.i.i54, align 8, !noalias !42020
  %.sroa.535.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i55, align 8, !noalias !42020
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.qd, align 8, !noalias !42020
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 71, ptr %i.qe, align 4, !noalias !42020
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #52, !noalias !42020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !41963
  br label %bb.dw

bb.dy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECs7XnEB7DeNXr_7sslocal.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !41963
  %i.qf = inttoptr i64 %.sroa.9145.0184.i to ptr  ; 2 uses
  store ptr %i.qf, ptr %i.u, align 8, !noalias !41963
  %i.qg = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !41963 ; 2 uses
  %i.qh = icmp ult i64 %i.qg, 6
  call void @llvm.assume(i1 %i.qh)
  %i.qi = icmp samesign ugt i64 %i.qg, 4
  br i1 %i.qi, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.ec, %bb.dy
  %.val.i.i25 = phi ptr [ %i.qf, %bb.dy ], [ %.val.i.pre.i, %bb.ec ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42021)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !42022
  %i.qj = ptrtoint ptr %.val.i.i25 to i64         ; 2 uses
  %i.qk = and i64 %i.qj, 3
  switch i64 %i.qk, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit.i
    i64 3, label %bb.ea
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit.i
    i64 1, label %bb.eb
  ], !prof !196

bb.ea:                                            ; preds = %bb.dz
  %i.ql = icmp ult ptr %.val.i.i25, inttoptr (i64 188978561024 to ptr)
  %i.qm = and i64 %i.qj, 1095216660480
  %i.qn = icmp ne i64 %i.qm, 1095216660480
  call void @llvm.assume(i1 %i.ql)
  call void @llvm.assume(i1 %i.qn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit.i

bb.eb:                                            ; preds = %bb.dz
  %i.qo = getelementptr i8, ptr %.val.i.i25, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qo) ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.qo, ptr %i.qp, align 8, !alias.scope !42023, !noalias !42022
  store i8 3, ptr %i.f, align 8, !alias.scope !42023, !noalias !42022
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qp) #52, !noalias !42021
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7XnEB7DeNXr_7sslocal.exit.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !42022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !41963
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit.i

bb.ec:                                            ; preds = %bb.dy
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 4048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !41963
  store ptr %i.qq, ptr %i.t, align 8, !noalias !41963
  %.sroa.4160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4160.0..sroa_idx.i, align 8, !noalias !41963
  %i.qs = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.qr, ptr %i.qs, align 8, !noalias !41963
  %.sroa.4162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCs7XnEB7DeNXr_7sslocal, ptr %.sroa.4162.0..sroa_idx.i, align 8, !noalias !41963
  %i.qt = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %i.qt, align 8, !noalias !41963
  %.sroa.4164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4164.0..sroa_idx.i, align 8, !noalias !41963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42024
  %i.qu = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 5, ptr %i.qu, align 8, !noalias !42024
  %.sroa.422.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @679, ptr %.sroa.422.0..sroa_idx.i.i44, align 8, !noalias !42024
  %.sroa.523.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i45, align 8, !noalias !42024
  %i.qv = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @687, ptr %i.qv, align 8, !noalias !42024
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.t, ptr %i.qw, align 8, !noalias !42024
  store i64 0, ptr %i.c, align 8, !noalias !42024
  %.sroa.428.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @679, ptr %.sroa.428.0..sroa_idx.i.i46, align 8, !noalias !42024
  %.sroa.529.0..sroa_idx.i.i47 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i47, align 8, !noalias !42024
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.qx, align 8, !noalias !42024
  %.sroa.434.0..sroa_idx.i.i48 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @678, ptr %.sroa.434.0..sroa_idx.i.i48, align 8, !noalias !42024
  %.sroa.535.0..sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i49, align 8, !noalias !42024
  %i.qy = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.qy, align 8, !noalias !42024
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 77, ptr %i.qz, align 4, !noalias !42024
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c) #52, !noalias !42024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !41963
  %.val.i.pre.i = load ptr, ptr %i.u, align 8, !alias.scope !42021, !noalias !41963
  br label %bb.dz

_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils20establish_tcp_tunnelINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0Cs7XnEB7DeNXr_7sslocal.exit: ; preds = %bb.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit.i, %bb.ao, %bb.bc, %bb.bd, %.loopexit.i
  %i.ra = phi ptr [ %i.cy, %bb.ak ], [ %i.fn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit.i ], [ %i.ei, %bb.ao ], [ %i.gc, %bb.bc ], [ %i.gu, %bb.bd ], [ %i.ij, %.loopexit.i ]
  %common.ret.op.i = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.ak ], [ %i.fo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECs7XnEB7DeNXr_7sslocal.exit.i ], [ { i64 1, ptr undef }, %bb.ao ], [ { i64 1, ptr undef }, %bb.bc ], [ { i64 1, ptr undef }, %bb.bd ], [ { i64 1, ptr undef }, %.loopexit.i ] ; 2 uses
  %i.rb = extractvalue { i64, ptr } %common.ret.op.i, 0
  %i.rc = trunc nuw i64 %i.rb to i1
  br i1 %i.rc, label %common.ret, label %bb.el

bb.ed:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeECs7XnEB7DeNXr_7sslocal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  store ptr %.sroa.3.0.copyload, ptr %i.af, align 8
  %i.rd = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.re = icmp ult i64 %i.rd, 6
  call void @llvm.assume(i1 %i.re)
  %.not112 = icmp eq i64 %i.rd, 0
  br i1 %.not112, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %bb.ed, %bb.ei
  %.val.i = phi ptr [ %.sroa.3.0.copyload, %bb.ed ], [ %.val.i.pre, %bb.ei ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42025)
  %.val.i.i27 = load ptr, ptr %.val.i, align 8, !noalias !42025, !noundef !145 ; 3 uses
  %i.rf = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.rf, align 8, !noalias !42025 ; 4 uses
  %i.rg = icmp eq ptr %.val.i.i27, null
  br i1 %i.rg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECs7XnEB7DeNXr_7sslocal.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.rh = load ptr, ptr %.val1.i.i, align 8, !invariant.load !145, !noalias !42025 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i28, label %bb.eh, label %bb.eg

end_hunk_0
begin_hunk_1_@llvm.ucmp.i32.i32
!87072 = distinct !{!87072, !87071, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87073 = distinct !{!87073, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87074 = distinct !{!87074, !87073, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87075 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal, null}
!87076 = distinct !{!87076, i1 true, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCs7XnEB7DeNXr_7sslocal"}
!87077 = distinct !{!87077, !87076, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCs7XnEB7DeNXr_7sslocal: argument 0"}
!87078 = distinct !{!87078, !87076, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCs7XnEB7DeNXr_7sslocal: argument 2"}
!87079 = distinct !{!87079, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal"}
!87080 = distinct !{!87080, !87079, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 1"}
!87081 = distinct !{!87081, !87079, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 3"}
!87082 = distinct !{!87082, !87079, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 4"}
!87083 = distinct !{!87083, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal"}
!87084 = distinct !{!87084, !87083, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 1"}
!87085 = distinct !{!87085, !87083, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 3"}
!87086 = distinct !{!87086, !87079, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 2"}
!87087 = distinct !{!87087, !87079, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87088 = distinct !{!87088, !87083, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 4"}
!87089 = distinct !{!87089, !87083, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 2"}
!87090 = distinct !{!87090, !87083, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87091 = distinct !{!87091, i1 true, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCs7XnEB7DeNXr_7sslocal"}
!87092 = distinct !{!87092, !87091, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCs7XnEB7DeNXr_7sslocal: argument 0"}
!87093 = distinct !{!87093, !87091, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCs7XnEB7DeNXr_7sslocal: argument 2"}
!87094 = distinct !{!87094, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCs7XnEB7DeNXr_7sslocal"}
!87095 = distinct !{!87095, !87094, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCs7XnEB7DeNXr_7sslocal: argument 1"}
!87096 = distinct !{!87096, !87094, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCs7XnEB7DeNXr_7sslocal: argument 0"}
!87097 = distinct !{!87097, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!87098 = distinct !{!87098, !87097, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!87099 = distinct !{!87099, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!87100 = distinct !{!87100, !87099, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!87101 = distinct !{!87101, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal"}
!87102 = distinct !{!87102, !87101, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87103 = distinct !{!87103, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!87104 = distinct !{!87104, !87103, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!87105 = distinct !{!87105, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal"}
!87106 = distinct !{!87106, !87105, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87107 = distinct !{!87107, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87108 = distinct !{!87108, !87107, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87109 = distinct !{!87109, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87110 = distinct !{!87110, !87109, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87111 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal, null}
!87112 = distinct !{!87112, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal"}
!87113 = distinct !{!87113, !87112, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87114 = distinct !{!87114, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal"}
!87115 = distinct !{!87115, !87114, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8Cs7XnEB7DeNXr_7sslocal: argument 0"}
!87116 = distinct !{!87116, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal"}
!87117 = distinct !{!87117, !87116, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64Cs7XnEB7DeNXr_7sslocal: argument 0"}
!87118 = distinct !{!87118, i1 true, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640Cs7XnEB7DeNXr_7sslocal"}
!87119 = distinct !{!87119, !87118, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640Cs7XnEB7DeNXr_7sslocal: argument 0"}
!87120 = distinct !{!87120, i1 true, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!87121 = distinct !{!87121, !87120, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!87122 = distinct !{!87122, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal"}
!87123 = distinct !{!87123, !87122, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7XnEB7DeNXr_7sslocal: argument 0"}
!87124 = distinct !{!87124, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCs7XnEB7DeNXr_7sslocal"}
!87125 = distinct !{!87125, !87124, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCs7XnEB7DeNXr_7sslocal: argument 1"}
!87126 = distinct !{!87126, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact"}
!87127 = distinct !{!87127, !87126, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 1"}
!87128 = distinct !{!87128, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!87129 = distinct !{!87129, !87128, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!87130 = distinct !{!87130, !87128, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!87131 = distinct !{!87131, !87124, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCs7XnEB7DeNXr_7sslocal: argument 0"}
!87132 = distinct !{!87132, !87126, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 0"}
!87133 = distinct !{!87133, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal"}
!87134 = distinct !{!87134, !87133, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16Cs7XnEB7DeNXr_7sslocal: argument 0"}
!87135 = distinct !{!87135, i1 true, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160Cs7XnEB7DeNXr_7sslocal"}
!87136 = distinct !{!87136, !87135, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160Cs7XnEB7DeNXr_7sslocal: argument 0"}
!87137 = distinct !{!87137, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal"}
!87138 = distinct !{!87138, !87137, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 1"}
!87139 = distinct !{!87139, !87137, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECs7XnEB7DeNXr_7sslocal: argument 0"}
!87140 = distinct !{!87140, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal"}
!87141 = distinct !{!87141, !87140, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal: argument 0"}
!87142 = distinct !{!87142, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCs7XnEB7DeNXr_7sslocal"}
!87143 = distinct !{!87143, !87142, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCs7XnEB7DeNXr_7sslocal: argument 1"}
!87144 = distinct !{!87144, !87142, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCs7XnEB7DeNXr_7sslocal: argument 0"}
!87145 = distinct !{!87145, !87140, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCs7XnEB7DeNXr_7sslocal: argument 1"}
!87146 = distinct !{!87146, !87142, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCs7XnEB7DeNXr_7sslocal: argument 2"}
!87147 = distinct !{!87147, i1 true, !"_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal"}
!87148 = distinct !{!87148, !87147, !"_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCs7XnEB7DeNXr_7sslocal: argument 0"}
!87149 = distinct !{!87149, i1 true, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!87150 = distinct !{!87150, !87149, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!87151 = distinct !{!87151, !87149, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!87152 = distinct !{!87152, i1 true, !"_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!87153 = distinct !{!87153, !87152, !"_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!87154 = distinct !{!87154, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal"}
!87155 = distinct !{!87155, !87154, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87156 = distinct !{!87156, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87157 = distinct !{!87157, !87156, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87158 = distinct !{!87158, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87159 = distinct !{!87159, !87158, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87160 = distinct !{!87160, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!87161 = distinct !{!87161, !87160, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!87162 = distinct !{!87162, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal"}
!87163 = distinct !{!87163, !87162, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87164 = distinct !{!87164, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87165 = distinct !{!87165, !87164, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87166 = distinct !{!87166, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87167 = distinct !{!87167, !87166, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87168 = distinct !{!87168, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!87169 = distinct !{!87169, !87168, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!87170 = distinct !{!87170, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal"}
!87171 = distinct !{!87171, !87170, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 1"}
!87172 = distinct !{!87172, !87170, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 3"}
!87173 = distinct !{!87173, !87170, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 2"}
!87174 = distinct !{!87174, !87170, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87175 = distinct !{!87175, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal"}
!87176 = distinct !{!87176, !87175, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 3"}
!87177 = distinct !{!87177, !87175, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 2"}
!87178 = distinct !{!87178, !87175, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87179 = distinct !{!87179, !87175, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECs7XnEB7DeNXr_7sslocal: argument 1"}
!87180 = distinct !{!87180, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECs7XnEB7DeNXr_7sslocal"}
!87181 = distinct !{!87181, !87180, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!87182 = distinct !{!87182, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87183 = distinct !{!87183, !87182, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87184 = distinct !{!87184, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87185 = distinct !{!87185, !87184, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87186 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal, null}
!87187 = distinct !{!87187, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECs7XnEB7DeNXr_7sslocal"}
!87188 = distinct !{!87188, !87187, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!87189 = distinct !{!87189, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87190 = distinct !{!87190, !87189, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87191 = distinct !{!87191, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87192 = distinct !{!87192, !87191, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87193 = distinct !{!87193, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECs7XnEB7DeNXr_7sslocal"}
!87194 = distinct !{!87194, !87193, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!87195 = distinct !{!87195, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87196 = distinct !{!87196, !87195, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87197 = distinct !{!87197, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87198 = distinct !{!87198, !87197, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87199 = distinct !{!87199, i1 true, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice"}
!87200 = distinct !{!87200, !87199, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 0"}
!87201 = distinct !{!87201, !87199, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 2"}
!87202 = distinct !{!87202, !87199, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 1"}
!87203 = !{!86977}
!87204 = !{!86978}
!87205 = !{!86979}
!87206 = !{!86981}
!87207 = !{!86982}
!87208 = !{!86983}
!87209 = !{!86982, !86979}
!87210 = !{!86985}
!87211 = !{!86986}
!87212 = !{!86985, !86977}
!87213 = !{!86988}
!87214 = !{!86993, !86992, !86991, !86990, !86989, !86986, !86983, !86979}
!87215 = !{!86993, !86990, !86989, !86986, !86983, !86979}
!87216 = !{!86988, !86985, !86977}
!87217 = !{!86993, !86988, !86992, !86991, !86990, !86989, !86985, !86996, !86995, !86986, !86983, !86977, !86994, !86978, !86979}
!87218 = !{!86998}
!87219 = !{!86998, !86988, !86985, !86977}
!87220 = !{!87000}
!87221 = !{!87002}
!87222 = !{!87002, !87000, !86998, !86988, !86985, !86977}
!87223 = !{!87002, !87000, !86998, !86993, !86990, !86989, !86986, !86983, !86979}
!87224 = !{!86993, !86992, !86991, !86990, !86989, !86996, !86995, !86986, !86983, !86994, !86978, !86979}
!87225 = !{!87005, !86993, !86988, !86992, !86991, !86990, !86989, !86985, !86996, !86995, !86986, !86983, !86977, !86994, !86978, !86979}
!87226 = !{!87005, !86993, !86990, !86989, !86986, !86983, !86979}
!87227 = !{!86993, !86989, !86986, !86983, !86979}
!87228 = !{!87007, !86993, !86989, !86986, !86983, !86979}
!87229 = !{!87009}
!87230 = !{!87012, !87011, !87010, !86989, !86986, !86983, !86979}
!87231 = !{!87012, !86989, !86986, !86983, !86979}
!87232 = !{!87009, !86985, !86977}
!87233 = !{!87012, !87009, !87011, !87010, !86989, !86985, !86996, !86995, !86986, !86983, !86977, !86994, !86978, !86979}
!87234 = !{!87016, !87015, !87014, !86989, !86986, !86983, !86979}
!87235 = !{!87016, !86989, !86986, !86983, !86979}
!87236 = !{!87017, !86985, !86977}
!87237 = !{!87019}
!87238 = !{!87019, !86985, !86977}
!87239 = !{!87021}
!87240 = !{!87023}
!87241 = !{!87023, !87021, !87019, !86985, !86977}
!87242 = !{!87023, !87021, !87019, !86989, !86986, !86983, !86979}
!87243 = !{!86989, !86986, !86983, !86979}
!87244 = !{!87026}
!87245 = !{!87026, !86985, !86977}
!87246 = !{!87028}
!87247 = !{!87030}
!87248 = !{!87030, !87028, !87026, !86985, !86977}
!87249 = !{!87030, !87028, !87026, !86989, !86986, !86983, !86979}
!87250 = !{!87032}
!87251 = !{!87032, !86985, !86977}
!87252 = !{!87034}
!87253 = !{!87036}
!87254 = !{!87036, !87034, !87032, !86985, !86977}
!87255 = !{!87036, !87034, !87032, !86989, !86986, !86983, !86979}
!87256 = !{!86986, !86979}
!87257 = !{!87038}
!87258 = !{!87038, !86986, !86979}
!87259 = !{!87038, !87039, !86989, !86986, !86983, !86979}
!87260 = !{!87038, !87040, !86989, !86986, !86983, !86979}
!87261 = !{!87042}
!87262 = !{!87043}
!87263 = !{!87044}
!87264 = !{!87042, !86977}
!87265 = !{!87046}
!87266 = !{!87047}
!87267 = !{!87049, !87047, !87048, !87044, !86983, !86979}
!87268 = !{!87051}
!87269 = !{!87052}
!87270 = !{!87044, !86979}
!87271 = !{!87051, !87046, !87042, !86977}
!87272 = !{!87051, !87053, !87052, !87049, !87047, !87048, !87044, !86983, !86979}
!87273 = !{!87048, !87044, !86983, !86979}
!87274 = !{!87051, !87053, !87052, !87046, !87049, !87047, !87048, !87042, !87054, !87043, !87044, !86983, !86977, !86994, !86978, !86979}
!87275 = !{!87056}
!87276 = !{!87057}
!87277 = !{!87056, !87052, !87047, !87043, !86978}
!87278 = !{!87046, !87042, !86977}
!87279 = !{!87046, !87049, !87047, !87048, !87042, !87054, !87043, !87044, !86983, !86977, !86994, !86978, !86979}
!87280 = !{!87059, !87046, !87049, !87047, !87048, !87042, !87054, !87043, !87044, !86983, !86977, !86994, !86978, !86979}
!87281 = !{!87059, !87048, !87044, !86983, !86979}
!87282 = !{!87061}
!87283 = !{!87061, !87046, !87042, !86977}
!87284 = !{!87063}
!87285 = !{!87065}
!87286 = !{!87065, !87063, !87061, !87046, !87042, !86977}
!87287 = !{!87065, !87063, !87061, !87048, !87044, !86983, !86979}
!87288 = !{!87049, !87047, !87048, !87054, !87043, !87044, !86983, !86994, !86978, !86979}
!87289 = !{!87044, !86983, !86979}
!87290 = !{!87068, !87044, !86983, !86979}
!87291 = !{!87070}
!87292 = !{!87070, !87042, !86977}
!87293 = !{!87072}
!87294 = !{!87074}
!87295 = !{!87074, !87072, !87070, !87042, !86977}
!87296 = !{!87074, !87072, !87070, !87044, !86983, !86979}
!87297 = !{!87077}
!87298 = !{!87078}
!87299 = !{!87078, !87044, !86979}
!87300 = !{!87077, !87043, !86978}
!87301 = !{!87080}
!87302 = !{!87081}
!87303 = !{!87082}
!87304 = !{!87080, !86977}
!87305 = !{!87084}
!87306 = !{!87085}
!87307 = !{!87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87308 = !{!87090, !87089, !87085, !87088, !87087, !87082, !86983, !86979}
!87309 = !{!87084, !87080, !86977}
!87310 = !{!87090, !87087, !87082, !86983, !86979}
!87311 = !{!87090, !87084, !87089, !87085, !87088, !87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87312 = !{!87092}
!87313 = !{!87093}
!87314 = !{!87092, !87085, !87081, !86978}
!87315 = !{!87096, !87095, !87090, !87087, !87082, !86983, !86979}
!87316 = !{!87098, !87090, !87084, !87089, !87085, !87088, !87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87317 = !{!87098, !87090, !87087, !87082, !86983, !86979}
!87318 = !{!87100, !87090, !87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87319 = !{!87100, !87090, !87087, !87082, !86983, !86979}
!87320 = !{!86983, !86979}
!87321 = !{!86983, !86977, !86994, !86978, !86979}
!87322 = !{!87102}
!87323 = !{!87102, !87090, !87087, !87082, !86983, !86979}
!87324 = !{!87104, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87325 = !{!87104, !87090, !87087, !87082, !86983, !86979}
!87326 = !{!87106}
!87327 = !{!87106, !87084, !87080, !86977}
!87328 = !{!87108}
!87329 = !{!87110}
!87330 = !{!87110, !87108, !87106, !87084, !87080, !86977}
!87331 = !{!87110, !87108, !87106, !87090, !87087, !87082, !86983, !86979}
!87332 = !{!87090, !87089, !87085, !87088, !87087, !87086, !87081, !87082, !86983, !86994, !86978, !86979}
!87333 = !{!87113}
!87334 = !{!87113, !87090, !87087, !87082, !86983, !86979}
!87335 = !{!87115, !87090, !87087, !87082, !86983, !86979}
!87336 = !{!87117, !87090, !87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87337 = !{!87117, !87090, !87087, !87082, !86983, !86979}
!87338 = !{!87119, !87117, !87090, !87087, !87082, !86983, !86979}
!87339 = !{!87090, !87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87340 = !{!87121}
!87341 = !{!87123, !87121, !87090, !87087, !87082, !86983, !86979}
!87342 = !{!87121, !87090, !87087, !87082, !86983, !86979}
!87343 = !{!87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87344 = !{!87125}
!87345 = !{!87127}
!87346 = !{!87130, !87129}
!87347 = !{!87132, !87131, !87090, !87087, !87082, !86983, !86979}
!87348 = !{!87132, !87127, !87131, !87125, !87090, !87087, !87082, !86983, !86979}
!87349 = !{!87127, !87125}
!87350 = !{!87136, !87134, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87351 = !{!87139, !87138}
!87352 = !{!87144, !87143, !87141, !87136, !87134, !87090, !87087, !87082, !86983, !86979}
!87353 = !{!87148, !87144, !87143, !87146, !87141, !87145, !87136, !87134, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87354 = !{!87148, !87144, !87143, !87146, !87141, !87145, !87136, !87134, !87090, !87087, !87082, !86983, !86979}
!87355 = !{!87136, !87134, !87090, !87087, !87082, !86983, !86979}
!87356 = !{!87134, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87357 = !{!87134, !87090, !87087, !87082, !86983, !86979}
!87358 = !{!87151, !87150, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87359 = !{!87090, !87087, !87082}
!87360 = !{!87151, !87150, !87090, !87087, !87082, !86983, !86979}
!87361 = !{!87153}
!87362 = !{!87153, !87151, !87150, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87363 = !{!87153, !87151, !87150, !87090, !87087, !87082, !86983, !86979}
!87364 = !{!87150, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87365 = !{!87155}
!87366 = !{!87155, !87084, !87080, !86977}
!87367 = !{!87157}
!87368 = !{!87159}
!87369 = !{!87159, !87157, !87155, !87084, !87080, !86977}
!87370 = !{!87159, !87157, !87155, !87090, !87087, !87082, !86983, !86979}
!87371 = !{!87090, !87089, !87085, !87088, !87087, !87086, !87081, !87082}
!87372 = !{!87161, !87090, !87087, !87082, !86983, !86977, !86994, !86978, !86979}
!87373 = !{!87161, !87090, !87087, !87082, !86983, !86979}
!87374 = !{!87163}
!87375 = !{!87163, !87084, !87080, !86977}
!87376 = !{!87165}
!87377 = !{!87167}
!87378 = !{!87167, !87165, !87163, !87084, !87080, !86977}
!87379 = !{!87167, !87165, !87163, !87090, !87087, !87082, !86983, !86979}
!87380 = !{!87169, !87090, !87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87381 = !{!87169, !87090, !87087, !87082, !86983, !86979}
!87382 = !{!87171}
!87383 = !{!87174, !87173, !87172, !87087, !87082, !86983, !86979}
!87384 = !{!87174, !87087, !87082, !86983, !86979}
!87385 = !{!87171, !87080, !86977}
!87386 = !{!87174, !87171, !87173, !87172, !87087, !87080, !87086, !87081, !87082, !86983, !86977, !86994, !86978, !86979}
!87387 = !{!87178, !87177, !87176, !87087, !87082, !86983, !86979}
!87388 = !{!87178, !87087, !87082, !86983, !86979}
!87389 = !{!87179, !87080, !86977}
!87390 = !{!87181}
!87391 = !{!87181, !87080, !86977}
!87392 = !{!87183}
!87393 = !{!87185}
!87394 = !{!87185, !87183, !87181, !87080, !86977}
!87395 = !{!87185, !87183, !87181, !87087, !87082, !86983, !86979}
!87396 = !{!87087, !87082, !86983, !86979}
!87397 = !{!87188}
!87398 = !{!87188, !87080, !86977}
!87399 = !{!87190}
!87400 = !{!87192}
!87401 = !{!87192, !87190, !87188, !87080, !86977}
!87402 = !{!87192, !87190, !87188, !87087, !87082, !86983, !86979}
!87403 = !{!87194}
!87404 = !{!87194, !87080, !86977}
!87405 = !{!87196}
!87406 = !{!87198}
!87407 = !{!87198, !87196, !87194, !87080, !86977}
!87408 = !{!87198, !87196, !87194, !87087, !87082, !86983, !86979}
!87409 = !{!87082, !86979}
!87410 = !{!87200}
!87411 = !{!87200, !87082, !86979}
!87412 = !{!87200, !87201, !87087, !87082, !86983, !86979}
!87413 = !{!87200, !87202, !87087, !87082, !86983, !86979}
!87414 = !{!86981, !86978}
!87415 = !{!86977, !86994, !86978, !86979}
!87416 = distinct !{!87416, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!87417 = distinct !{!87417, !87416, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!87418 = distinct !{!87418, !87416, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 4"}
!87419 = distinct !{!87419, !87416, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!87420 = distinct !{!87420, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!87421 = distinct !{!87421, !87420, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!87422 = distinct !{!87422, !87420, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 4"}
!87423 = distinct !{!87423, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!87424 = distinct !{!87424, !87423, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!87425 = distinct !{!87425, !87420, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!87426 = distinct !{!87426, !87423, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 4"}
!87427 = distinct !{!87427, !87423, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!87428 = distinct !{!87428, !87423, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!87429 = distinct !{!87429, !87423, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!87430 = distinct !{!87430, !87416, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!87431 = distinct !{!87431, !87416, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!87432 = distinct !{!87432, !87420, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!87433 = distinct !{!87433, !87420, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!87434 = distinct !{!87434, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal"}
!87435 = distinct !{!87435, !87434, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECs7XnEB7DeNXr_7sslocal: argument 0"}
!87436 = distinct !{!87436, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87437 = distinct !{!87437, !87436, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87438 = distinct !{!87438, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87439 = distinct !{!87439, !87438, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87440 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal, null}
!87441 = distinct !{!87441, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal"}
!87442 = distinct !{!87442, !87441, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECs7XnEB7DeNXr_7sslocal: argument 0"}
!87443 = distinct !{!87443, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsbYq7bIcWEdL_18shadowsocks_crypto2v16cipher6CipherECs7XnEB7DeNXr_7sslocal"}
!87444 = distinct !{!87444, !87443, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsbYq7bIcWEdL_18shadowsocks_crypto2v16cipher6CipherECs7XnEB7DeNXr_7sslocal: argument 0"}
!87445 = distinct !{!87445, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!87446 = distinct !{!87446, !87445, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!87447 = distinct !{!87447, !87445, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!87448 = distinct !{!87448, !87445, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!87449 = distinct !{!87449, !87445, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!87450 = distinct !{!87450, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal"}
!87451 = distinct !{!87451, !87450, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 3"}
!87452 = distinct !{!87452, !87450, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 2"}
!87453 = distinct !{!87453, !87450, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 0"}
!87454 = distinct !{!87454, !87450, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECs7XnEB7DeNXr_7sslocal: argument 1"}
!87455 = distinct !{!87455, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECs7XnEB7DeNXr_7sslocal"}
!87456 = distinct !{!87456, !87455, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!87457 = distinct !{!87457, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87458 = distinct !{!87458, !87457, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87459 = distinct !{!87459, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87460 = distinct !{!87460, !87459, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87461 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal, null}
!87462 = distinct !{!87462, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECs7XnEB7DeNXr_7sslocal"}
!87463 = distinct !{!87463, !87462, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!87464 = distinct !{!87464, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87465 = distinct !{!87465, !87464, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87466 = distinct !{!87466, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!87467 = distinct !{!87467, !87466, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!87468 = distinct !{!87468, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECs7XnEB7DeNXr_7sslocal"}
!87469 = distinct !{!87469, !87468, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECs7XnEB7DeNXr_7sslocal: argument 0"}
!87470 = distinct !{!87470, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal"}
!87471 = distinct !{!87471, !87470, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECs7XnEB7DeNXr_7sslocal: argument 0"}
!87472 = distinct !{!87472, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
end_hunk_1
