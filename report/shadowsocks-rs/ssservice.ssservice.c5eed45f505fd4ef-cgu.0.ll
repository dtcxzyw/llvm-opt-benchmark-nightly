Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB6_11HttpService16serve_connection00CsgZAIVb0XKpv_9ssservice:bb.a
bb.bt:                                            ; preds = %bb.bs
  %i.jx = load i64, ptr %i.is, align 8, !noalias !46698, !noundef !177 ; 2 uses
  %i.jy = load i64, ptr %i.it, align 8, !noalias !46698, !noundef !177 ; 6 uses
  %.not30.i.i.i.i.i = icmp ugt i64 %i.jy, %i.jx
  br i1 %.not30.i.i.i.i.i, label %bb.bv, label %bb.bu, !prof !206

bb.bu:                                            ; preds = %bb.bt
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %bb.bw, label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.jy, i64 noundef %i.jx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !46699
  unreachable

bb.bw:                                            ; preds = %bb.bu
  store i8 1, ptr %i.in, align 8, !alias.scope !46697, !noalias !46691
  br label %bb.by

bb.bx:                                            ; preds = %bb.bu
  store i64 0, ptr %i.iq, align 16, !alias.scope !46697, !noalias !46691
  store i64 %i.jy, ptr %i.ir, align 8, !alias.scope !46697, !noalias !46691
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.ka = phi i64 [ %i.jy, %bb.bx ], [ %i.jg, %bb.bw ]
  %i.kb = phi i64 [ 0, %bb.bx ], [ %i.jh, %bb.bw ]
  %i.kc = phi i8 [ %i.ji, %bb.bx ], [ 1, %bb.bw ]
  %i.kd = phi i8 [ 0, %bb.bx ], [ 1, %bb.bw ]
  %i.ke = phi i64 [ %i.jy, %bb.bx ], [ %i.jk, %bb.bw ]
  %.promoted27.i.i.i.i.i = phi i64 [ 0, %bb.bx ], [ %i.jk, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46698
  br label %bb.bq

bb.bz:                                            ; preds = %bb.bs, %bb.br
  %.sroa.9.0.i.i.i.i.i = phi ptr [ undef, %bb.br ], [ %i.jw, %bb.bs ]
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 2, %bb.br ], [ 1, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46698
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

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
  %i.ko = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kn, i64 noundef range(i64 0, -9223372036854775808) %i.km) #52, !noalias !46699 ; 2 uses
  %i.kp = extractvalue { i64, ptr } %i.ko, 0      ; 2 uses
  %i.kq = extractvalue { i64, ptr } %i.ko, 1      ; 4 uses
  %i.kr = icmp eq i64 %i.kp, 2
  br i1 %i.kr, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, label %bb.ce

bb.cb:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i.i.i) ]
  %i.ks = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write10poll_flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !46699 ; 2 uses
  %i.kt = extractvalue { i64, ptr } %i.ks, 0
  %i.ku = trunc nuw i64 %i.kt to i1
  br i1 %i.ku, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kv = extractvalue { i64, ptr } %i.ks, 1      ; 2 uses
  %.not31.i.i.i.i.i = icmp ne ptr %i.kv, null     ; 2 uses
  %i.kw = inttoptr i64 %i.kh to ptr
  %spec.select.i.i.i.i.i = select i1 %.not31.i.i.i.i.i, ptr %i.kv, ptr %i.kw
  %spec.select73.i.i.i.i.i = zext i1 %.not31.i.i.i.i.i to i64
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.promoted26.i.i.i.i.i, i64 noundef %i.jr, i64 noundef %.val1.i23.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #62, !noalias !46699
  unreachable

bb.ce:                                            ; preds = %bb.ca
  %i.kx = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.ky = trunc nuw i64 %i.kp to i1
  br i1 %i.ky, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kq) ]
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.kz = icmp eq ptr %i.kq, null
  br i1 %i.kz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.la = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !46699
  br label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.lb = add i64 %i.kl, %i.kx                    ; 5 uses
  store i64 %i.lb, ptr %i.iq, align 16, !alias.scope !46697, !noalias !46691
  %i.lc = add i64 %i.kk, %i.kx                    ; 4 uses
  store i64 %i.lc, ptr %i.iv, align 16, !alias.scope !46697, !noalias !46691
  %i.ld = icmp ult i64 %i.lb, %i.jr
  br i1 %i.ld, label %bb.ca, label %._crit_edge.i.i.i.i.i

_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.cc, %bb.bz
  %i.le = phi i64 [ %i.kf, %bb.cc ], [ %i.jf, %bb.bz ]
  %i.lf = phi i64 [ %i.jn, %bb.cc ], [ %i.jg, %bb.bz ]
  %i.lg = phi i64 [ %i.kg, %bb.cc ], [ %i.jh, %bb.bz ]
  %i.lh = phi i8 [ %i.jp, %bb.cc ], [ %i.ji, %bb.bz ]
  %.sroa.9.1.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.cc ], [ %.sroa.9.0.i.i.i.i.i, %bb.bz ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i = phi i64 [ %spec.select73.i.i.i.i.i, %bb.cc ], [ %.sroa.0.0.i.i.i.i.i, %bb.bz ]
  switch i64 %.sroa.0.1.i.i.i.i.i, label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i [
    i64 2, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
    i64 0, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i.i.i) ]
  %i.li = call { i64, ptr } @_RNvXs0_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_8UpgradedNtNtNtB7_2rt2io5Write13poll_shutdown(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !46700 ; 2 uses
  %i.lj = extractvalue { i64, ptr } %i.li, 0
  %i.lk = trunc nuw i64 %i.lj to i1
  br i1 %i.lk, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i, label %bb.cl

_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i: ; preds = %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.ch, %bb.cf
  %.sroa.9.1.i5.i.i.i.i = phi ptr [ %i.la, %bb.ch ], [ %i.kq, %bb.cf ], [ %.sroa.9.1.i.i.i.i.i, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.1.i5.i.i.i.i) ]
  br label %.loopexit70.i.i.i

bb.ck:                                            ; preds = %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.ll = ptrtoint ptr %.sroa.9.1.i.i.i.i.i to i64
  %i.lm = icmp samesign ugt i8 %i.lh, 1
  %or.cond.i.i.i.i = select i1 %i.lm, i1 true, i1 %i.ip
  br i1 %or.cond.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ck
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.je, i64 noundef %.val1.i23.i.i.i.i, i64 noundef 1) #52, !noalias !46701
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.ck
  store i64 %i.ll, ptr %i.il, align 16, !alias.scope !46695, !noalias !46691
  br label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i, %bb.cm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %storemerge.i.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ 3, %bb.cm ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ] ; 2 uses
  %i.ln = phi i64 [ %i.le, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.iw, %bb.cm ], [ %i.iw, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ]
  %i.lo = phi i64 [ %i.lf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.ix, %bb.cm ], [ %i.ix, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ]
  %i.lp = phi i64 [ %i.lg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.iy, %bb.cm ], [ %i.iy, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i ]
  store i8 %storemerge.i.i.i.i, ptr %i.in, align 8, !alias.scope !46695, !noalias !46691
  br label %bb.bm

bb.cl:                                            ; preds = %bb.cj
  %i.lq = extractvalue { i64, ptr } %i.li, 1      ; 2 uses
  %.not.i.i.i66.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i.i66.i, label %bb.cm, label %.loopexit70.i.i.i

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.experimental.noalias.scope.decl(metadata !46702)
  %brmerge.i.i.i.i = select i1 %i.ja, i1 true, i1 %i.ip
  br i1 %brmerge.i.i.i.i, label %.backedge.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i.i.i.i: ; preds = %bb.cm
  %.val.i25.i.i.i.i = load ptr, ptr %i.il, align 16, !alias.scope !46703, !noalias !46691, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i25.i.i.i.i, i64 noundef %.val1.i23.i.i.i.i, i64 noundef 1) #52, !noalias !46704
  br label %.backedge.i.i.i.i

bb.cn:                                            ; preds = %bb.bm
  %i.lr = load i64, ptr %i.il, align 16, !alias.scope !46695, !noalias !46691, !noundef !177
  br label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i

_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i: ; preds = %bb.cj, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.cb, %bb.ca, %bb.cn
  %i.ls = phi i1 [ false, %bb.cn ], [ true, %bb.ca ], [ true, %bb.cb ], [ true, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ true, %bb.cj ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.lr, %bb.cn ], [ undef, %bb.ca ], [ undef, %bb.cb ], [ undef, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ undef, %bb.cj ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46705)
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 12376 ; 3 uses
  %.promoted.i22.i.i.i = load i8, ptr %i.lt, align 8, !alias.scope !46706, !noalias !46691
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 12344
  %.val1.i23.i23.i.i.i = load i64, ptr %i.lu, align 8, !alias.scope !46706, !noalias !46691 ; 8 uses
  %i.lv = icmp eq i64 %.val1.i23.i23.i.i.i, 0     ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 12352 ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 12360 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 12368 ; 2 uses
  %.promoted42.i.i.i.i = load i64, ptr %i.lw, align 16, !alias.scope !46706, !noalias !46691
  %.promoted43.i.i.i.i = load i64, ptr %i.lx, align 8, !alias.scope !46706, !noalias !46691
  %.promoted44.i.i.i.i = load i64, ptr %i.ma, align 16, !alias.scope !46706, !noalias !46691
  br label %bb.co

bb.co:                                            ; preds = %.backedge.i30.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
  %i.mb = phi i64 [ %i.oh, %.backedge.i30.i.i.i ], [ %.promoted44.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ] ; 4 uses
  %i.mc = phi i64 [ %i.oi, %.backedge.i30.i.i.i ], [ %.promoted43.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ] ; 4 uses
  %i.md = phi i64 [ %i.oj, %.backedge.i30.i.i.i ], [ %.promoted42.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ] ; 4 uses
  %i.me = phi i8 [ %storemerge.i31.i.i.i, %.backedge.i30.i.i.i ], [ %.promoted.i22.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1r_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ] ; 4 uses
  %i.mf = icmp samesign ugt i8 %i.me, 1           ; 2 uses
  %i.mg = zext nneg i8 %i.me to i64
  %i.mh = add nsw i64 %i.mg, -1
  %i.mi = select i1 %i.mf, i64 %i.mh, i64 0
  switch i64 %i.mi, label %bb.cp [
    i64 0, label %bb.cq
    i64 1, label %bb.di
    i64 2, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread65.i.i.i
  ]

bb.cp:                                            ; preds = %bb.co
  unreachable

bb.cq:                                            ; preds = %bb.co
  call void @llvm.experimental.noalias.scope.decl(metadata !46707)
  %i.mj = load ptr, ptr %i.im, align 16, !alias.scope !46708, !noalias !46691, !nonnull !177 ; 3 uses
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
  br i1 %.not32.i.i41.i.i.i, label %bb.dc, label %.lr.ph.split.i.i42.i.i.i, !prof !186

.lr.ph.split.i.i42.i.i.i:                         ; preds = %.lr.ph.i.i40.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i65.i) ]
  br label %bb.da

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val19.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46709
  store ptr %i.mj, ptr %i.i, align 8, !noalias !46709
  store i64 %.val1.i23.i23.i.i.i, ptr %i.ly, align 8, !noalias !46709
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lz, i8 0, i64 16, i1 false), !noalias !46709
  %i.mv = call { i64, ptr } @_RNvXs_NtCsaI3lGUjttVO_5hyper7upgradeNtB4_8UpgradedNtNtNtB6_2rt2io4Read9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.val19.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i) #52, !noalias !46710 ; 2 uses
  %i.mw = extractvalue { i64, ptr } %i.mv, 0      ; 2 uses
  %i.mx = extractvalue { i64, ptr } %i.mv, 1      ; 2 uses
  %i.my = trunc nuw i64 %i.mw to i1               ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp ne ptr %i.mx, null
  %or.cond.not.i.i.i.i.i.i.i = select i1 %i.my, i1 true, i1 %.not12.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.mz = load i64, ptr %i.ly, align 8, !noalias !46709, !noundef !177 ; 2 uses
  %i.na = load i64, ptr %i.lz, align 8, !noalias !46709, !noundef !177 ; 8 uses
  %.not13.i.i.i.i.i.i.i = icmp ugt i64 %i.na, %i.mz
  br i1 %.not13.i.i.i.i.i.i.i, label %bb.cv, label %bb.cw, !prof !206

bb.cv:                                            ; preds = %bb.cu
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.na, i64 noundef %i.mz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2339) #62, !noalias !46710
  unreachable

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46709
  %.not30.i.i33.i.i.i = icmp ugt i64 %i.na, %.val1.i23.i23.i.i.i
  br i1 %.not30.i.i33.i.i.i, label %bb.cy, label %bb.cx, !prof !46711

bb.cx:                                            ; preds = %bb.cw
  %i.nb = icmp eq i64 %i.na, 0
  br i1 %i.nb, label %.thread.i.i.i.i.i, label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.na, i64 noundef %.val1.i23.i23.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !46712
  unreachable

.thread.i.i.i.i.i:                                ; preds = %bb.cx
  store i8 1, ptr %i.lt, align 8, !alias.scope !46708, !noalias !46691
  br label %._crit_edge.i.i34.i.i.i

bb.cz:                                            ; preds = %bb.cx
  store i64 0, ptr %i.lw, align 16, !alias.scope !46708, !noalias !46691
  store i64 %i.na, ptr %i.lx, align 8, !alias.scope !46708, !noalias !46691
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
  %i.no = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_write(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val.i.i65.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nn, i64 noundef range(i64 0, -9223372036854775808) %i.nm) #52, !noalias !46712 ; 2 uses
  %i.np = extractvalue { i64, ptr } %i.no, 0      ; 2 uses
  %i.nq = extractvalue { i64, ptr } %i.no, 1      ; 4 uses
  %i.nr = icmp eq i64 %i.np, 2
  br i1 %i.nr, label %.loopexit.i, label %bb.dd

bb.db:                                            ; preds = %._crit_edge.i.i34.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i65.i) ]
  %i.ns = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite10poll_flush(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val.i.i65.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !46712 ; 2 uses
  %i.nt = extractvalue { i64, ptr } %i.ns, 0
  %i.nu = trunc nuw i64 %i.nt to i1
  br i1 %i.nu, label %.loopexit.i, label %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.dc:                                            ; preds = %.lr.ph.i.i40.i.i.i
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.promoted33.i.i.i.i.i, i64 noundef %.sroa.8.035.i.i.i.i.i, i64 noundef %.val1.i23.i23.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #62, !noalias !46712
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
  %i.ny = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 23, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 27) #59, !noalias !46712
  br label %.loopexit70.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.nz = add i64 %i.nl, %i.nv                    ; 5 uses
  store i64 %i.nz, ptr %i.lw, align 16, !alias.scope !46708, !noalias !46691
  %i.oa = add i64 %i.nk, %i.nv                    ; 4 uses
  store i64 %i.oa, ptr %i.ma, align 16, !alias.scope !46708, !noalias !46691
  %i.ob = icmp ult i64 %i.nz, %.sroa.8.035.i.i.i.i.i
  br i1 %i.ob, label %bb.da, label %._crit_edge.i.i34.i.i.i

_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.db
  %i.oc = extractvalue { i64, ptr } %i.ns, 1      ; 2 uses
  %.not31.i.not.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not31.i.not.i.i.i.i, label %bb.dj, label %.loopexit70.i.i.i

bb.di:                                            ; preds = %bb.co
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i65.i) ]
  %i.od = call { i64, ptr } @_RNvXs5_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite13poll_shutdown(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val.i.i65.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !46713 ; 2 uses
  %i.oe = extractvalue { i64, ptr } %i.od, 0
  %i.of = trunc nuw i64 %i.oe to i1
  br i1 %i.of, label %.loopexit.i, label %bb.dk

_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread65.i.i.i: ; preds = %bb.co
  %2 = load i64, ptr %i.im, align 16, !alias.scope !46706, !noalias !46691, !noundef !177
  br label %bb.dm

bb.dj:                                            ; preds = %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %i.og = icmp samesign ugt i8 %i.nf, 1
  %or.cond.i37.i.i.i = select i1 %i.og, i1 true, i1 %i.lv
  br i1 %or.cond.i37.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i38.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i38.i.i.i: ; preds = %bb.dj
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mj, i64 noundef %.val1.i23.i23.i.i.i, i64 noundef 1) #52, !noalias !46714
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i38.i.i.i, %bb.dj
  store i64 %i.nh, ptr %i.im, align 16, !alias.scope !46706, !noalias !46691
  br label %.backedge.i30.i.i.i

.backedge.i30.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i, %bb.dl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i
  %storemerge.i31.i.i.i = phi i8 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i ], [ 3, %bb.dl ], [ 3, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ] ; 2 uses
  %i.oh = phi i64 [ %i.nc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i ], [ %i.mb, %bb.dl ], [ %i.mb, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ]
  %i.oi = phi i64 [ %i.nd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i ], [ %i.mc, %bb.dl ], [ %i.mc, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ]
  %i.oj = phi i64 [ %i.ne, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i39.i.i.i ], [ %i.md, %bb.dl ], [ %i.md, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i ]
  store i8 %storemerge.i31.i.i.i, ptr %i.lt, align 8, !alias.scope !46706, !noalias !46691
  br label %bb.co

bb.dk:                                            ; preds = %bb.di
  %i.ok = extractvalue { i64, ptr } %i.od, 1      ; 2 uses
  %.not.i26.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not.i26.i.i.i, label %bb.dl, label %.loopexit70.i.i.i

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !46715)
  %brmerge.i27.i.i.i = select i1 %i.mf, i1 true, i1 %i.lv
  br i1 %brmerge.i27.i.i.i, label %.backedge.i30.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i24.i28.i.i.i: ; preds = %bb.dl
  %.val.i25.i29.i.i.i = load ptr, ptr %i.im, align 16, !alias.scope !46716, !noalias !46691, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i25.i29.i.i.i, i64 noundef %.val1.i23.i23.i.i.i, i64 noundef 1) #52, !noalias !46717
  br label %.backedge.i30.i.i.i

_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46709
  %.mux.i.i.i.i = select i1 %i.my, ptr undef, ptr %i.mx ; 2 uses
  %3 = ptrtoint ptr %.mux.i.i.i.i to i64
  switch i64 %i.mw, label %.loopexit70.i.i.i [
    i64 1, label %.loopexit.i
    i64 -1, label %bb.dm
  ]

bb.dm:                                            ; preds = %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread65.i.i.i
  %4 = phi i64 [ %2, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.thread65.i.i.i ], [ %3, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  br i1 %i.ls, label %.loopexit.i, label %bb.dn

.loopexit70.i.i.i:                                ; preds = %bb.cl, %bb.dk, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.dg, %bb.de, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i
  %.sroa.9145.0.ph.in.i = phi ptr [ %i.oc, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1w_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.9.1.i5.i.i.i.i, %_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_10CopyBuffer9poll_copyQNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamQINtNtNtB1x_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i ], [ %.mux.i.i.i.i, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i ], [ %i.ny, %bb.dg ], [ %i.nq, %bb.de ], [ %i.ok, %bb.dk ], [ %i.lq, %bb.cl ]
  %.sroa.9145.0.ph.i = ptrtoint ptr %.sroa.9145.0.ph.in.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !46718
  store i64 1, ptr %i.n, align 8, !noalias !46719
  %.sroa.9145.0..sroa_idx180.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i64 %.sroa.9145.0.ph.i, ptr %.sroa.9145.0..sroa_idx180.i, align 8, !noalias !46719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !46718
  store ptr %.sroa.9145.0..sroa_idx180.i, ptr %i.l, align 8, !noalias !46718
  %i.ol = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !46718 ; 2 uses
  %i.om = icmp ult i64 %i.ol, 6
  call void @llvm.assume(i1 %i.om)
  %i.on = icmp samesign ugt i64 %i.ol, 3
  br i1 %i.on, label %bb.dp, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !46718
  store i64 0, ptr %i.n, align 8, !noalias !46719
  %.sroa.9145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.9145.0..sroa_idx.i, align 8, !noalias !46719
  %i.oo = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !46718 ; 2 uses
  %i.op = icmp ult i64 %i.oo, 6
  call void @llvm.assume(i1 %i.op)
  %i.oq = icmp samesign ugt i64 %i.oo, 4
  br i1 %i.oq, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !46718
  store ptr %i.il, ptr %i.m, align 8, !noalias !46718
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !46718
  %i.or = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.im, ptr %i.or, align 8, !noalias !46718
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !46718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46720
  %i.os = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 5, ptr %i.os, align 8, !noalias !46720
  %.sroa.422.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr @2812, ptr %.sroa.422.0..sroa_idx.i.i.i.i, align 8, !noalias !46720
  %.sroa.523.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 35, ptr %.sroa.523.0..sroa_idx.i.i.i.i, align 8, !noalias !46720
  %i.ot = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store ptr @2811, ptr %i.ot, align 8, !noalias !46720
  %i.ou = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store ptr %i.m, ptr %i.ou, align 8, !noalias !46720
  store i64 0, ptr %i.h, align 8, !noalias !46720
  %.sroa.428.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @2812, ptr %.sroa.428.0..sroa_idx.i.i.i.i, align 8, !noalias !46720
  %.sroa.529.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 35, ptr %.sroa.529.0..sroa_idx.i.i.i.i, align 8, !noalias !46720
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.ov, align 8, !noalias !46720
  %.sroa.434.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @302, ptr %.sroa.434.0..sroa_idx.i.i.i.i, align 8, !noalias !46720
  %.sroa.535.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 46, ptr %.sroa.535.0..sroa_idx.i.i.i.i, align 8, !noalias !46720
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i32 1, ptr %i.ow, align 8, !noalias !46720
  %i.ox = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  store i32 256, ptr %i.ox, align 4, !noalias !46720
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h) #52, !noalias !46721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !46718
  br label %bb.ds

bb.dp:                                            ; preds = %.loopexit70.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !46718
  store ptr %i.l, ptr %i.k, align 8, !noalias !46718
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !46718
  %i.oy = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.il, ptr %i.oy, align 8, !noalias !46718
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !46718
  %i.oz = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.im, ptr %i.oz, align 8, !noalias !46718
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @_RNvXs4_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utilsNtB5_13TransferStateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !46718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46722
  %i.pa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 4, ptr %i.pa, align 8, !noalias !46722
  %.sroa.422.0..sroa_idx.i43.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @2812, ptr %.sroa.422.0..sroa_idx.i43.i.i.i, align 8, !noalias !46722
  %.sroa.523.0..sroa_idx.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 35, ptr %.sroa.523.0..sroa_idx.i44.i.i.i, align 8, !noalias !46722
  %i.pb = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr @2813, ptr %i.pb, align 8, !noalias !46722
  %i.pc = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %i.k, ptr %i.pc, align 8, !noalias !46722
  store i64 0, ptr %i.g, align 8, !noalias !46722
  %.sroa.428.0..sroa_idx.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @2812, ptr %.sroa.428.0..sroa_idx.i45.i.i.i, align 8, !noalias !46722
  %.sroa.529.0..sroa_idx.i46.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 35, ptr %.sroa.529.0..sroa_idx.i46.i.i.i, align 8, !noalias !46722
  %i.pd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.pd, align 8, !noalias !46722
  %.sroa.434.0..sroa_idx.i47.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @302, ptr %.sroa.434.0..sroa_idx.i47.i.i.i, align 8, !noalias !46722
  %.sroa.535.0..sroa_idx.i48.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 46, ptr %.sroa.535.0..sroa_idx.i48.i.i.i, align 8, !noalias !46722
  %i.pe = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 1, ptr %i.pe, align 8, !noalias !46722
  %i.pf = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i32 262, ptr %i.pf, align 4, !noalias !46722
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g) #52, !noalias !46723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !46718
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %.loopexit70.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !46718
  br label %bb.ds

bb.dr:                                            ; preds = %bb.bh
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @751) #62, !noalias !46692
  unreachable

bb.ds:                                            ; preds = %bb.dq, %bb.do, %bb.dn
  %.sroa.13146.0186.i = phi i64 [ undef, %bb.dq ], [ %4, %bb.do ], [ %4, %bb.dn ]
  %.sroa.9145.0184.i = phi i64 [ %.sroa.9145.0.ph.i, %bb.dq ], [ %.sroa.7.0.i.i.i.i, %bb.do ], [ %.sroa.7.0.i.i.i.i, %bb.dn ] ; 2 uses
  %.sroa.0144.0182.i = phi i1 [ true, %bb.dq ], [ false, %bb.do ], [ false, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !46718
  call void @llvm.experimental.noalias.scope.decl(metadata !46724)
  call void @llvm.experimental.noalias.scope.decl(metadata !46725)
  %i.pg = load i8, ptr %i.in, align 8, !range !231, !alias.scope !46726, !noalias !46691, !noundef !177
  %i.ph = icmp samesign ult i8 %i.pg, 2
  br i1 %i.ph, label %bb.dt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.dt:                                            ; preds = %bb.ds
  %.val1.i.i.i.i = load i64, ptr %i.io, align 8, !alias.scope !46727, !noalias !46691, !noundef !177 ; 2 uses
  %i.pi = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.pi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.dt
  %.val.i.i.i.i = load ptr, ptr %i.il, align 16, !alias.scope !46726, !noalias !46691, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #52, !noalias !46728
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.dt, %bb.ds
  call void @llvm.experimental.noalias.scope.decl(metadata !46729)
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 12376
  %i.pk = load i8, ptr %i.pj, align 8, !range !231, !alias.scope !46730, !noalias !46691, !noundef !177
  %i.pl = icmp samesign ult i8 %i.pk, 2
  br i1 %i.pl, label %bb.du, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.du:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 12344
  %.val1.i1.i.i.i = load i64, ptr %i.pm, align 8, !alias.scope !46731, !noalias !46691, !noundef !177 ; 2 uses
  %i.pn = icmp eq i64 %.val1.i1.i.i.i, 0
  br i1 %i.pn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECsgZAIVb0XKpv_9ssservice.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i.i: ; preds = %bb.du
  %.val.i3.i.i.i = load ptr, ptr %i.im, align 16, !alias.scope !46730, !noalias !46691, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i3.i.i.i, i64 noundef %.val1.i1.i.i.i, i64 noundef 1) #52, !noalias !46732
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECsgZAIVb0XKpv_9ssservice.exit.i

.loopexit199.i:                                   ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.be, %bb.ay, %bb.as, %bb.ar
  %i.po = phi ptr [ %i.gt, %bb.be ], [ %i.eh, %bb.ar ], [ %i.eh, %bb.as ], [ %i.gb, %bb.ay ], [ %i.gb, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.pp = phi ptr [ %i.gu, %bb.be ], [ %i.ei, %bb.ar ], [ %i.ei, %bb.as ], [ %i.gc, %bb.ay ], [ %i.gc, %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %.sroa.015.1.i = phi ptr [ %i.ha, %bb.be ], [ %i.fv, %bb.ar ], [ null, %bb.as ], [ %i.gm, %bb.ay ], [ inttoptr (i64 98784247811 to ptr), %_RNvMNtCsf3Ta7LF998c_4core5sliceSh8split_atCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 12265
  store i8 0, ptr %i.pq, align 1, !noalias !46676
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit.i

.loopexit.i:                                      ; preds = %bb.di, %bb.db, %bb.da, %bb.dm, %_RINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils22transfer_one_directionQINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEQNtNtNtNtB1q_3net3tcp17auto_proxy_stream21AutoProxyClientStreamECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !noalias !46691
  store i8 3, ptr %i.ik, align 1, !noalias !46691
  store i8 7, ptr %i.ii, align 8, !noalias !46676
  br label %_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils20establish_tcp_tunnelINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i2.i.i.i, %bb.du, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils13TransferStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i), !noalias !46691
  store i8 1, ptr %i.ik, align 1, !noalias !46691
  br i1 %.sroa.0144.0182.i, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !46676
  store i64 %.sroa.9145.0184.i, ptr %i.x, align 8, !noalias !46676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !46676
  store i64 %.sroa.13146.0186.i, ptr %i.w, align 8, !noalias !46676
  %i.pr = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !46676 ; 2 uses
  %i.ps = icmp ult i64 %i.pr, 6
  call void @llvm.assume(i1 %i.ps)
  %i.pt = icmp samesign ugt i64 %i.pr, 4
  br i1 %i.pt, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dx, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !46676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !46676
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.dx:                                            ; preds = %bb.dv
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 4048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !46676
  store ptr %i.pu, ptr %i.v, align 8, !noalias !46676
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4150.0..sroa_idx.i, align 8, !noalias !46676
  %i.pw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.pv, ptr %i.pw, align 8, !noalias !46676
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4152.0..sroa_idx.i, align 8, !noalias !46676
  %i.px = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.w, ptr %i.px, align 8, !noalias !46676
  %.sroa.4154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4154.0..sroa_idx.i, align 8, !noalias !46676
  %i.py = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store ptr %i.x, ptr %i.py, align 8, !noalias !46676
  %.sroa.4156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.4156.0..sroa_idx.i, align 8, !noalias !46676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46733
  %i.pz = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 5, ptr %i.pz, align 8, !noalias !46733
  %.sroa.422.0..sroa_idx.i.i50 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i50, align 8, !noalias !46733
  %.sroa.523.0..sroa_idx.i.i51 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i51, align 8, !noalias !46733
  %i.qa = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr @712, ptr %i.qa, align 8, !noalias !46733
  %i.qb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %i.v, ptr %i.qb, align 8, !noalias !46733
  store i64 0, ptr %i.b, align 8, !noalias !46733
  %.sroa.428.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i52, align 8, !noalias !46733
  %.sroa.529.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i53, align 8, !noalias !46733
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.qc, align 8, !noalias !46733
  %.sroa.434.0..sroa_idx.i.i54 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i54, align 8, !noalias !46733
  %.sroa.535.0..sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i55, align 8, !noalias !46733
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %i.qd, align 8, !noalias !46733
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 71, ptr %i.qe, align 4, !noalias !46733
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #52, !noalias !46733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !46676
  br label %bb.dw

bb.dy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay5utils28copy_encrypted_bidirectionalNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamINtNtNtB2a_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedEE0ECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !46676
  %i.qf = inttoptr i64 %.sroa.9145.0184.i to ptr  ; 2 uses
  store ptr %i.qf, ptr %i.u, align 8, !noalias !46676
  %i.qg = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !46676 ; 2 uses
  %i.qh = icmp ult i64 %i.qg, 6
  call void @llvm.assume(i1 %i.qh)
  %i.qi = icmp samesign ugt i64 %i.qg, 4
  br i1 %i.qi, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.ec, %bb.dy
  %.val.i.i25 = phi ptr [ %i.qf, %bb.dy ], [ %.val.i.pre.i, %bb.ec ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46734)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46735
  %i.qj = ptrtoint ptr %.val.i.i25 to i64         ; 2 uses
  %i.qk = and i64 %i.qj, 3
  switch i64 %i.qk, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 3, label %bb.ea
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 1, label %bb.eb
  ], !prof !230

bb.ea:                                            ; preds = %bb.dz
  %i.ql = icmp ult ptr %.val.i.i25, inttoptr (i64 188978561024 to ptr)
  %i.qm = and i64 %i.qj, 1095216660480
  %i.qn = icmp ne i64 %i.qm, 1095216660480
  call void @llvm.assume(i1 %i.ql)
  call void @llvm.assume(i1 %i.qn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.eb:                                            ; preds = %bb.dz
  %i.qo = getelementptr i8, ptr %.val.i.i25, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qo) ]
  %i.qp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.qo, ptr %i.qp, align 8, !alias.scope !46736, !noalias !46735
  store i8 3, ptr %i.f, align 8, !alias.scope !46736, !noalias !46735
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qp) #52, !noalias !46734
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !46676
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit.i

bb.ec:                                            ; preds = %bb.dy
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 4048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !46676
  store ptr %i.qq, ptr %i.t, align 8, !noalias !46676
  %.sroa.4160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs4_NtNtCsf3Ta7LF998c_4core3net11socket_addrNtB5_10SocketAddrNtNtB9_3fmt7Display3fmt, ptr %.sroa.4160.0..sroa_idx.i, align 8, !noalias !46676
  %i.qs = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.qr, ptr %i.qs, align 8, !noalias !46676
  %.sroa.4162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.4162.0..sroa_idx.i, align 8, !noalias !46676
  %i.qt = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.u, ptr %i.qt, align 8, !noalias !46676
  %.sroa.4164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4164.0..sroa_idx.i, align 8, !noalias !46676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46737
  %i.qu = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 5, ptr %i.qu, align 8, !noalias !46737
  %.sroa.422.0..sroa_idx.i.i44 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @706, ptr %.sroa.422.0..sroa_idx.i.i44, align 8, !noalias !46737
  %.sroa.523.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 33, ptr %.sroa.523.0..sroa_idx.i.i45, align 8, !noalias !46737
  %i.qv = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr @714, ptr %i.qv, align 8, !noalias !46737
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store ptr %i.t, ptr %i.qw, align 8, !noalias !46737
  store i64 0, ptr %i.c, align 8, !noalias !46737
  %.sroa.428.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @706, ptr %.sroa.428.0..sroa_idx.i.i46, align 8, !noalias !46737
  %.sroa.529.0..sroa_idx.i.i47 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 33, ptr %.sroa.529.0..sroa_idx.i.i47, align 8, !noalias !46737
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.qx, align 8, !noalias !46737
  %.sroa.434.0..sroa_idx.i.i48 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @705, ptr %.sroa.434.0..sroa_idx.i.i48, align 8, !noalias !46737
  %.sroa.535.0..sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 45, ptr %.sroa.535.0..sroa_idx.i.i49, align 8, !noalias !46737
  %i.qy = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i32 1, ptr %i.qy, align 8, !noalias !46737
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 77, ptr %i.qz, align 4, !noalias !46737
  call void @_RNvXs0_NtCsJovr8ELaM0_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.c) #52, !noalias !46737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !46676
  %.val.i.pre.i = load ptr, ptr %i.u, align 8, !alias.scope !46734, !noalias !46676
  br label %bb.dz

_RNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils20establish_tcp_tunnelINtNtNtB6_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtB6_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.ak, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit.i, %bb.ao, %bb.bc, %bb.bd, %.loopexit.i
  %i.ra = phi ptr [ %i.cy, %bb.ak ], [ %i.fn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.ei, %bb.ao ], [ %i.gc, %bb.bc ], [ %i.gu, %bb.bd ], [ %i.ij, %.loopexit.i ]
  %common.ret.op.i = phi { i64, ptr } [ { i64 1, ptr undef }, %bb.ak ], [ %i.fo, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvNtNtCs8UFHSMUhzWe_19shadowsocks_service5local5utils29establish_tcp_tunnel_bypassedINtNtNtBI_4http8tokio_rt7TokioIoNtNtCsaI3lGUjttVO_5hyper7upgrade8UpgradedENtNtNtNtBI_3net3tcp17auto_proxy_stream21AutoProxyClientStreamE0ECsgZAIVb0XKpv_9ssservice.exit.i ], [ { i64 1, ptr undef }, %bb.ao ], [ { i64 1, ptr undef }, %bb.bc ], [ { i64 1, ptr undef }, %bb.bd ], [ { i64 1, ptr undef }, %.loopexit.i ] ; 2 uses
  %i.rb = extractvalue { i64, ptr } %common.ret.op.i, 0
  %i.rc = trunc nuw i64 %i.rb to i1
  br i1 %i.rc, label %common.ret, label %bb.el

bb.ed:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeECsgZAIVb0XKpv_9ssservice.exit
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
  call void @llvm.experimental.noalias.scope.decl(metadata !46738)
  %.val.i.i27 = load ptr, ptr %.val.i, align 8, !noalias !46738, !noundef !177 ; 3 uses
  %i.rf = getelementptr i8, ptr %.val.i, i64 8
  %.val1.i.i = load ptr, ptr %i.rf, align 8, !noalias !46738 ; 4 uses
  %i.rg = icmp eq ptr %.val.i.i27, null
  br i1 %i.rg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.rh = load ptr, ptr %.val1.i.i, align 8, !invariant.load !177, !noalias !46738 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i28, label %bb.eh, label %bb.eg

end_hunk_0
begin_hunk_1_@llvm.ucmp.i32.i32
!95450 = distinct !{!95450, i1 true, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtB1r_2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice"}
!95451 = distinct !{!95451, !95450, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtB1r_2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 0"}
!95452 = distinct !{!95452, !95450, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtB1r_2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 2"}
!95453 = distinct !{!95453, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!95454 = distinct !{!95454, !95453, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!95455 = distinct !{!95455, !95453, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!95456 = distinct !{!95456, !95453, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 4"}
!95457 = distinct !{!95457, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!95458 = distinct !{!95458, !95457, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!95459 = distinct !{!95459, !95457, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!95460 = distinct !{!95460, !95453, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!95461 = distinct !{!95461, !95453, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95462 = distinct !{!95462, !95457, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 4"}
!95463 = distinct !{!95463, !95457, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!95464 = distinct !{!95464, !95457, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95465 = distinct !{!95465, i1 true, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtB1r_2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice"}
!95466 = distinct !{!95466, !95465, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtB1r_2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 0"}
!95467 = distinct !{!95467, !95465, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtNtB1r_2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 2"}
!95468 = distinct !{!95468, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCsgZAIVb0XKpv_9ssservice"}
!95469 = distinct !{!95469, !95468, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCsgZAIVb0XKpv_9ssservice: argument 1"}
!95470 = distinct !{!95470, !95468, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!95471 = distinct !{!95471, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!95472 = distinct !{!95472, !95471, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!95473 = distinct !{!95473, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!95474 = distinct !{!95474, !95473, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!95475 = distinct !{!95475, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!95476 = distinct !{!95476, !95475, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95477 = distinct !{!95477, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!95478 = distinct !{!95478, !95477, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!95479 = distinct !{!95479, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice"}
!95480 = distinct !{!95480, !95479, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95481 = distinct !{!95481, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!95482 = distinct !{!95482, !95481, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!95483 = distinct !{!95483, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!95484 = distinct !{!95484, !95483, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!95485 = distinct !{null, null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!95486 = distinct !{!95486, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!95487 = distinct !{!95487, !95486, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95488 = distinct !{!95488, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8CsgZAIVb0XKpv_9ssservice"}
!95489 = distinct !{!95489, !95488, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8CsgZAIVb0XKpv_9ssservice: argument 0"}
!95490 = distinct !{!95490, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64CsgZAIVb0XKpv_9ssservice"}
!95491 = distinct !{!95491, !95490, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64CsgZAIVb0XKpv_9ssservice: argument 0"}
!95492 = distinct !{!95492, i1 true, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640CsgZAIVb0XKpv_9ssservice"}
!95493 = distinct !{!95493, !95492, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640CsgZAIVb0XKpv_9ssservice: argument 0"}
!95494 = distinct !{!95494, i1 true, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!95495 = distinct !{!95495, !95494, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!95496 = distinct !{!95496, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice"}
!95497 = distinct !{!95497, !95496, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice: argument 0"}
!95498 = distinct !{!95498, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCsgZAIVb0XKpv_9ssservice"}
!95499 = distinct !{!95499, !95498, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCsgZAIVb0XKpv_9ssservice: argument 1"}
!95500 = distinct !{!95500, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact"}
!95501 = distinct !{!95501, !95500, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 1"}
!95502 = distinct !{!95502, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!95503 = distinct !{!95503, !95502, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!95504 = distinct !{!95504, !95502, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!95505 = distinct !{!95505, !95498, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCsgZAIVb0XKpv_9ssservice: argument 0"}
!95506 = distinct !{!95506, !95500, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 0"}
!95507 = distinct !{!95507, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16CsgZAIVb0XKpv_9ssservice"}
!95508 = distinct !{!95508, !95507, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16CsgZAIVb0XKpv_9ssservice: argument 0"}
!95509 = distinct !{!95509, i1 true, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160CsgZAIVb0XKpv_9ssservice"}
!95510 = distinct !{!95510, !95509, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160CsgZAIVb0XKpv_9ssservice: argument 0"}
!95511 = distinct !{!95511, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!95512 = distinct !{!95512, !95511, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!95513 = distinct !{!95513, !95511, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!95514 = distinct !{!95514, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCsgZAIVb0XKpv_9ssservice"}
!95515 = distinct !{!95515, !95514, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 0"}
!95516 = distinct !{!95516, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice"}
!95517 = distinct !{!95517, !95516, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 1"}
!95518 = distinct !{!95518, !95516, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 0"}
!95519 = distinct !{!95519, !95514, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 1"}
!95520 = distinct !{!95520, !95516, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 2"}
!95521 = distinct !{!95521, i1 true, !"_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCsgZAIVb0XKpv_9ssservice"}
!95522 = distinct !{!95522, !95521, !"_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCsgZAIVb0XKpv_9ssservice: argument 0"}
!95523 = distinct !{!95523, i1 true, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!95524 = distinct !{!95524, !95523, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!95525 = distinct !{!95525, !95523, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!95526 = distinct !{!95526, i1 true, !"_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!95527 = distinct !{!95527, !95526, !"_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!95528 = distinct !{!95528, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice"}
!95529 = distinct !{!95529, !95528, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95530 = distinct !{!95530, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!95531 = distinct !{!95531, !95530, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!95532 = distinct !{!95532, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!95533 = distinct !{!95533, !95532, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!95534 = distinct !{!95534, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!95535 = distinct !{!95535, !95534, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!95536 = distinct !{!95536, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice"}
!95537 = distinct !{!95537, !95536, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95538 = distinct !{!95538, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!95539 = distinct !{!95539, !95538, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!95540 = distinct !{!95540, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!95541 = distinct !{!95541, !95540, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!95542 = distinct !{!95542, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!95543 = distinct !{!95543, !95542, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!95544 = distinct !{!95544, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!95545 = distinct !{!95545, !95544, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!95546 = distinct !{!95546, !95544, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!95547 = distinct !{!95547, !95544, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!95548 = distinct !{!95548, !95544, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95549 = distinct !{!95549, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!95550 = distinct !{!95550, !95549, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!95551 = distinct !{!95551, !95549, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!95552 = distinct !{!95552, !95549, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!95553 = distinct !{!95553, !95549, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!95554 = distinct !{!95554, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!95555 = distinct !{!95555, !95554, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!95556 = distinct !{!95556, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!95557 = distinct !{!95557, !95556, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!95558 = distinct !{!95558, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!95559 = distinct !{!95559, !95558, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!95560 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!95561 = distinct !{!95561, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!95562 = distinct !{!95562, !95561, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!95563 = distinct !{!95563, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!95564 = distinct !{!95564, !95563, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!95565 = distinct !{!95565, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!95566 = distinct !{!95566, !95565, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!95567 = distinct !{!95567, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!95568 = distinct !{!95568, !95567, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!95569 = distinct !{!95569, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!95570 = distinct !{!95570, !95569, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!95571 = distinct !{!95571, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!95572 = distinct !{!95572, !95571, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!95573 = distinct !{!95573, i1 true, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice"}
!95574 = distinct !{!95574, !95573, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 0"}
!95575 = distinct !{!95575, !95573, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 2"}
!95576 = distinct !{!95576, !95573, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 1"}
!95577 = !{!95346}
!95578 = !{!95347}
!95579 = !{!95349}
!95580 = !{!95350}
!95581 = !{!95351}
!95582 = !{!95353, !95346, !95352, !95347}
!95583 = !{!95349, !95346}
!95584 = !{!95355}
!95585 = !{!95356}
!95586 = !{!95357, !95353}
!95587 = !{!95356, !95351, !95347}
!95588 = !{!95359}
!95589 = !{!95360}
!95590 = !{!95359, !95349, !95346}
!95591 = !{!95362}
!95592 = !{!95367, !95366, !95365, !95364, !95363, !95360, !95357, !95351, !95353, !95347}
!95593 = !{!95367, !95364, !95363, !95360, !95357, !95351, !95353, !95347}
!95594 = !{!95362, !95359, !95349, !95346}
!95595 = !{!95367, !95362, !95366, !95365, !95364, !95363, !95359, !95370, !95369, !95360, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95596 = !{!95372}
!95597 = !{!95372, !95362, !95359, !95349, !95346}
!95598 = !{!95374}
!95599 = !{!95376}
!95600 = !{!95376, !95374, !95372, !95362, !95359, !95349, !95346}
!95601 = !{!95376, !95374, !95372, !95367, !95364, !95363, !95360, !95357, !95351, !95353, !95347}
!95602 = !{!95367, !95366, !95365, !95364, !95363, !95370, !95369, !95360, !95357, !95368, !95350, !95351, !95353, !95352, !95347}
!95603 = !{!95379, !95367, !95362, !95366, !95365, !95364, !95363, !95359, !95370, !95369, !95360, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95604 = !{!95379, !95367, !95364, !95363, !95360, !95357, !95351, !95353, !95347}
!95605 = !{!95367, !95363, !95360, !95357, !95351, !95353, !95347}
!95606 = !{!95381, !95367, !95363, !95360, !95357, !95351, !95353, !95347}
!95607 = !{!95383}
!95608 = !{!95386, !95385, !95384, !95363, !95360, !95357, !95351, !95353, !95347}
!95609 = !{!95386, !95363, !95360, !95357, !95351, !95353, !95347}
!95610 = !{!95383, !95359, !95349, !95346}
!95611 = !{!95386, !95383, !95385, !95384, !95363, !95359, !95370, !95369, !95360, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95612 = !{!95390, !95389, !95388, !95363, !95360, !95357, !95351, !95353, !95347}
!95613 = !{!95390, !95363, !95360, !95357, !95351, !95353, !95347}
!95614 = !{!95391, !95359, !95349, !95346}
!95615 = !{!95393}
!95616 = !{!95393, !95359, !95349, !95346}
!95617 = !{!95395}
!95618 = !{!95397}
!95619 = !{!95397, !95395, !95393, !95359, !95349, !95346}
!95620 = !{!95397, !95395, !95393, !95363, !95360, !95357, !95351, !95353, !95347}
!95621 = !{!95363, !95360, !95357, !95351, !95353, !95347}
!95622 = !{!95400}
!95623 = !{!95400, !95359, !95349, !95346}
!95624 = !{!95402}
!95625 = !{!95404}
!95626 = !{!95404, !95402, !95400, !95359, !95349, !95346}
!95627 = !{!95404, !95402, !95400, !95363, !95360, !95357, !95351, !95353, !95347}
!95628 = !{!95406}
!95629 = !{!95406, !95359, !95349, !95346}
!95630 = !{!95408}
!95631 = !{!95410}
!95632 = !{!95410, !95408, !95406, !95359, !95349, !95346}
!95633 = !{!95410, !95408, !95406, !95363, !95360, !95357, !95351, !95353, !95347}
!95634 = !{!95360, !95351, !95347}
!95635 = !{!95412}
!95636 = !{!95412, !95360, !95351, !95347}
!95637 = !{!95412, !95413, !95363, !95360, !95357, !95351, !95353, !95347}
!95638 = !{!95412, !95414, !95363, !95360, !95357, !95351, !95353, !95347}
!95639 = !{!95416}
!95640 = !{!95417}
!95641 = !{!95418}
!95642 = !{!95416, !95349, !95346}
!95643 = !{!95420}
!95644 = !{!95421}
!95645 = !{!95423, !95421, !95422, !95418, !95357, !95351, !95353, !95347}
!95646 = !{!95425}
!95647 = !{!95426}
!95648 = !{!95418, !95351, !95347}
!95649 = !{!95425, !95420, !95416, !95349, !95346}
!95650 = !{!95425, !95427, !95426, !95423, !95421, !95422, !95418, !95357, !95351, !95353, !95347}
!95651 = !{!95422, !95418, !95357, !95351, !95353, !95347}
!95652 = !{!95425, !95427, !95426, !95420, !95423, !95421, !95422, !95416, !95428, !95417, !95418, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95653 = !{!95430}
!95654 = !{!95431}
!95655 = !{!95430, !95426, !95421, !95417, !95350, !95346}
!95656 = !{!95420, !95416, !95349, !95346}
!95657 = !{!95420, !95423, !95421, !95422, !95416, !95428, !95417, !95418, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95658 = !{!95433, !95420, !95423, !95421, !95422, !95416, !95428, !95417, !95418, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95659 = !{!95433, !95422, !95418, !95357, !95351, !95353, !95347}
!95660 = !{!95435}
!95661 = !{!95435, !95420, !95416, !95349, !95346}
!95662 = !{!95437}
!95663 = !{!95439}
!95664 = !{!95439, !95437, !95435, !95420, !95416, !95349, !95346}
!95665 = !{!95439, !95437, !95435, !95422, !95418, !95357, !95351, !95353, !95347}
!95666 = !{!95423, !95421, !95422, !95428, !95417, !95418, !95357, !95368, !95350, !95351, !95353, !95352, !95347}
!95667 = !{!95418, !95357, !95351, !95353, !95347}
!95668 = !{!95442, !95418, !95357, !95351, !95353, !95347}
!95669 = !{!95444}
!95670 = !{!95444, !95416, !95349, !95346}
!95671 = !{!95446}
!95672 = !{!95448}
!95673 = !{!95448, !95446, !95444, !95416, !95349, !95346}
!95674 = !{!95448, !95446, !95444, !95418, !95357, !95351, !95353, !95347}
!95675 = !{!95451}
!95676 = !{!95452}
!95677 = !{!95452, !95418, !95351, !95347}
!95678 = !{!95451, !95417, !95350, !95346}
!95679 = !{!95454}
!95680 = !{!95455}
!95681 = !{!95456}
!95682 = !{!95454, !95349, !95346}
!95683 = !{!95458}
!95684 = !{!95459}
!95685 = !{!95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95686 = !{!95464, !95463, !95459, !95462, !95461, !95456, !95357, !95351, !95353, !95347}
!95687 = !{!95458, !95454, !95349, !95346}
!95688 = !{!95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95689 = !{!95464, !95458, !95463, !95459, !95462, !95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95690 = !{!95466}
!95691 = !{!95467}
!95692 = !{!95466, !95459, !95455, !95350, !95346}
!95693 = !{!95470, !95469, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95694 = !{!95472, !95464, !95458, !95463, !95459, !95462, !95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95695 = !{!95472, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95696 = !{!95474, !95464, !95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95697 = !{!95474, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95698 = !{!95357, !95351, !95353, !95347}
!95699 = !{!95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95700 = !{!95476}
!95701 = !{!95476, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95702 = !{!95478, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95703 = !{!95478, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95704 = !{!95480}
!95705 = !{!95480, !95458, !95454, !95349, !95346}
!95706 = !{!95482}
!95707 = !{!95484}
!95708 = !{!95484, !95482, !95480, !95458, !95454, !95349, !95346}
!95709 = !{!95484, !95482, !95480, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95710 = !{!95464, !95463, !95459, !95462, !95461, !95460, !95455, !95456, !95357, !95368, !95350, !95351, !95353, !95352, !95347}
!95711 = !{!95487}
!95712 = !{!95487, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95713 = !{!95489, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95714 = !{!95491, !95464, !95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95715 = !{!95491, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95716 = !{!95493, !95491, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95717 = !{!95464, !95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95718 = !{!95495}
!95719 = !{!95497, !95495, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95720 = !{!95495, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95721 = !{!95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95722 = !{!95499}
!95723 = !{!95501}
!95724 = !{!95504, !95503}
!95725 = !{!95506, !95505, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95726 = !{!95506, !95501, !95505, !95499, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95727 = !{!95501, !95499}
!95728 = !{!95510, !95508, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95729 = !{!95513, !95512}
!95730 = !{!95518, !95517, !95515, !95510, !95508, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95731 = !{!95522, !95518, !95517, !95520, !95515, !95519, !95510, !95508, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95732 = !{!95522, !95518, !95517, !95520, !95515, !95519, !95510, !95508, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95733 = !{!95510, !95508, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95734 = !{!95508, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95735 = !{!95508, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95736 = !{!95525, !95524, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95737 = !{!95464, !95461, !95456}
!95738 = !{!95525, !95524, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95739 = !{!95527}
!95740 = !{!95527, !95525, !95524, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95741 = !{!95527, !95525, !95524, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95742 = !{!95524, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95743 = !{!95529}
!95744 = !{!95529, !95458, !95454, !95349, !95346}
!95745 = !{!95531}
!95746 = !{!95533}
!95747 = !{!95533, !95531, !95529, !95458, !95454, !95349, !95346}
!95748 = !{!95533, !95531, !95529, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95749 = !{!95464, !95463, !95459, !95462, !95461, !95460, !95455, !95456}
!95750 = !{!95535, !95464, !95461, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95751 = !{!95535, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95752 = !{!95537}
!95753 = !{!95537, !95458, !95454, !95349, !95346}
!95754 = !{!95539}
!95755 = !{!95541}
!95756 = !{!95541, !95539, !95537, !95458, !95454, !95349, !95346}
!95757 = !{!95541, !95539, !95537, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95758 = !{!95543, !95464, !95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95759 = !{!95543, !95464, !95461, !95456, !95357, !95351, !95353, !95347}
!95760 = !{!95545}
!95761 = !{!95548, !95547, !95546, !95461, !95456, !95357, !95351, !95353, !95347}
!95762 = !{!95548, !95461, !95456, !95357, !95351, !95353, !95347}
!95763 = !{!95545, !95454, !95349, !95346}
!95764 = !{!95548, !95545, !95547, !95546, !95461, !95454, !95460, !95455, !95456, !95357, !95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95765 = !{!95552, !95551, !95550, !95461, !95456, !95357, !95351, !95353, !95347}
!95766 = !{!95552, !95461, !95456, !95357, !95351, !95353, !95347}
!95767 = !{!95553, !95454, !95349, !95346}
!95768 = !{!95555}
!95769 = !{!95555, !95454, !95349, !95346}
!95770 = !{!95557}
!95771 = !{!95559}
!95772 = !{!95559, !95557, !95555, !95454, !95349, !95346}
!95773 = !{!95559, !95557, !95555, !95461, !95456, !95357, !95351, !95353, !95347}
!95774 = !{!95461, !95456, !95357, !95351, !95353, !95347}
!95775 = !{!95562}
!95776 = !{!95562, !95454, !95349, !95346}
!95777 = !{!95564}
!95778 = !{!95566}
!95779 = !{!95566, !95564, !95562, !95454, !95349, !95346}
!95780 = !{!95566, !95564, !95562, !95461, !95456, !95357, !95351, !95353, !95347}
!95781 = !{!95568}
!95782 = !{!95568, !95454, !95349, !95346}
!95783 = !{!95570}
!95784 = !{!95572}
!95785 = !{!95572, !95570, !95568, !95454, !95349, !95346}
!95786 = !{!95572, !95570, !95568, !95461, !95456, !95357, !95351, !95353, !95347}
!95787 = !{!95456, !95351, !95347}
!95788 = !{!95574}
!95789 = !{!95574, !95456, !95351, !95347}
!95790 = !{!95574, !95575, !95461, !95456, !95357, !95351, !95353, !95347}
!95791 = !{!95574, !95576, !95461, !95456, !95357, !95351, !95353, !95347}
!95792 = !{!95355, !95350, !95346}
!95793 = !{!95349, !95368, !95350, !95351, !95353, !95346, !95352, !95347}
!95794 = !{!95353}
!95795 = distinct !{!95795, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice6aes25612key_scheduleyECsgZAIVb0XKpv_9ssservice"}
!95796 = distinct !{!95796, !95795, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice6aes25612key_scheduleyECsgZAIVb0XKpv_9ssservice: argument 1"}
!95797 = distinct !{!95797, !95795, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice6aes25612key_scheduleyECsgZAIVb0XKpv_9ssservice: argument 0"}
!95798 = distinct !{!95798, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!95799 = distinct !{!95799, !95798, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!95800 = distinct !{!95800, !95798, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!95801 = distinct !{!95801, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils9broadcastyECsgZAIVb0XKpv_9ssservice"}
!95802 = distinct !{!95802, !95801, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils9broadcastyECsgZAIVb0XKpv_9ssservice: argument 0"}
!95803 = distinct !{!95803, !95801, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils9broadcastyECsgZAIVb0XKpv_9ssservice: argument 1"}
!95804 = distinct !{!95804, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!95805 = distinct !{!95805, !95804, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!95806 = distinct !{!95806, !95804, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!95807 = distinct !{!95807, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils9broadcastyECsgZAIVb0XKpv_9ssservice"}
!95808 = distinct !{!95808, !95807, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils9broadcastyECsgZAIVb0XKpv_9ssservice: argument 0"}
!95809 = distinct !{!95809, !95807, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils9broadcastyECsgZAIVb0XKpv_9ssservice: argument 1"}
!95810 = distinct !{!95810, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils10memshift32yECsgZAIVb0XKpv_9ssservice"}
!95811 = distinct !{!95811, !95810, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils10memshift32yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95812 = distinct !{!95812, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox14sub_bytes_notsyECsgZAIVb0XKpv_9ssservice"}
!95813 = distinct !{!95813, !95812, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox14sub_bytes_notsyECsgZAIVb0XKpv_9ssservice: argument 0"}
!95814 = distinct !{!95814, i1 true, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign"}
!95815 = distinct !{!95815, !95814, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign: argument 0"}
!95816 = distinct !{!95816, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_3yECsgZAIVb0XKpv_9ssservice"}
!95817 = distinct !{!95817, !95816, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_3yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95818 = distinct !{!95818, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice"}
!95819 = distinct !{!95819, !95818, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95820 = distinct !{!95820, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice"}
!95821 = distinct !{!95821, !95820, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95822 = distinct !{!95822, i1 true, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign"}
!95823 = distinct !{!95823, !95822, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign: argument 0"}
!95824 = distinct !{!95824, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_2yECsgZAIVb0XKpv_9ssservice"}
!95825 = distinct !{!95825, !95824, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_2yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95826 = distinct !{!95826, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice"}
!95827 = distinct !{!95827, !95826, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95828 = distinct !{!95828, i1 true, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign"}
!95829 = distinct !{!95829, !95828, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign: argument 0"}
!95830 = distinct !{!95830, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_1yECsgZAIVb0XKpv_9ssservice"}
!95831 = distinct !{!95831, !95830, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95832 = distinct !{!95832, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice"}
!95833 = distinct !{!95833, !95832, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95834 = distinct !{!95834, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice"}
!95835 = distinct !{!95835, !95834, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95836 = distinct !{!95836, i1 true, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign"}
!95837 = distinct !{!95837, !95836, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign: argument 0"}
!95838 = distinct !{!95838, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox14sub_bytes_notsyECsgZAIVb0XKpv_9ssservice"}
!95839 = distinct !{!95839, !95838, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox14sub_bytes_notsyECsgZAIVb0XKpv_9ssservice: argument 0"}
!95840 = distinct !{!95840, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_3yECsgZAIVb0XKpv_9ssservice"}
!95841 = distinct !{!95841, !95840, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12shift_rows_3yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95842 = distinct !{!95842, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice"}
!95843 = distinct !{!95843, !95842, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95844 = distinct !{!95844, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice"}
!95845 = distinct !{!95845, !95844, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice5utils12delta_swap_1yECsgZAIVb0XKpv_9ssservice: argument 0"}
!95846 = distinct !{!95846, i1 true, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign"}
!95847 = distinct !{!95847, !95846, !"_RNvXsmq_NtNtCsf3Ta7LF998c_4core3ops3bityNtB6_12BitXorAssign13bitxor_assign: argument 0"}
!95848 = distinct !{!95848, i1 true, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox14sub_bytes_notsyECsgZAIVb0XKpv_9ssservice"}
!95849 = distinct !{!95849, !95848, !"_RINvNtNtNtNtCsfRIMZ2Mh1DJ_3aes8backends4soft8fixslice4sbox14sub_bytes_notsyECsgZAIVb0XKpv_9ssservice: argument 0"}
!95850 = !{!95797, !95796}
end_hunk_1
begin_hunk_2_@llvm.ucmp.i32.i32
!98665 = distinct !{!98665, !98664, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!98666 = distinct !{!98666, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!98667 = distinct !{!98667, !98666, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!98668 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!98669 = distinct !{!98669, i1 true, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice"}
!98670 = distinct !{!98670, !98669, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 0"}
!98671 = distinct !{!98671, !98669, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 2"}
!98672 = distinct !{!98672, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!98673 = distinct !{!98673, !98672, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!98674 = distinct !{!98674, !98672, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!98675 = distinct !{!98675, !98672, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 4"}
!98676 = distinct !{!98676, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!98677 = distinct !{!98677, !98676, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!98678 = distinct !{!98678, !98676, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!98679 = distinct !{!98679, !98672, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!98680 = distinct !{!98680, !98672, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader19poll_read_decryptedINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98681 = distinct !{!98681, !98676, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 4"}
!98682 = distinct !{!98682, !98676, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!98683 = distinct !{!98683, !98676, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_headerINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98684 = distinct !{!98684, i1 true, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice"}
!98685 = distinct !{!98685, !98684, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 0"}
!98686 = distinct !{!98686, !98684, !"_RNvXs_NtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_streamINtB4_14MonProxyStreamNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamENtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_readCsgZAIVb0XKpv_9ssservice: argument 2"}
!98687 = distinct !{!98687, i1 true, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCsgZAIVb0XKpv_9ssservice"}
!98688 = distinct !{!98688, !98687, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCsgZAIVb0XKpv_9ssservice: argument 1"}
!98689 = distinct !{!98689, !98687, !"_RNvMNtCsf3Ta7LF998c_4core5sliceSh12split_at_mutCsgZAIVb0XKpv_9ssservice: argument 0"}
!98690 = distinct !{!98690, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!98691 = distinct !{!98691, !98690, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!98692 = distinct !{!98692, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!98693 = distinct !{!98693, !98692, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!98694 = distinct !{!98694, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!98695 = distinct !{!98695, !98694, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98696 = distinct !{!98696, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!98697 = distinct !{!98697, !98696, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!98698 = distinct !{!98698, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice"}
!98699 = distinct !{!98699, !98698, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98700 = distinct !{!98700, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!98701 = distinct !{!98701, !98700, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!98702 = distinct !{!98702, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!98703 = distinct !{!98703, !98702, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!98704 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!98705 = distinct !{!98705, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice"}
!98706 = distinct !{!98706, !98705, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98707 = distinct !{!98707, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8CsgZAIVb0XKpv_9ssservice"}
!98708 = distinct !{!98708, !98707, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf6get_u8CsgZAIVb0XKpv_9ssservice: argument 0"}
!98709 = distinct !{!98709, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64CsgZAIVb0XKpv_9ssservice"}
!98710 = distinct !{!98710, !98709, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u64CsgZAIVb0XKpv_9ssservice: argument 0"}
!98711 = distinct !{!98711, i1 true, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640CsgZAIVb0XKpv_9ssservice"}
!98712 = distinct !{!98712, !98711, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u640CsgZAIVb0XKpv_9ssservice: argument 0"}
!98713 = distinct !{!98713, i1 true, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity"}
!98714 = distinct !{!98714, !98713, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut13with_capacity: argument 0"}
!98715 = distinct !{!98715, i1 true, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice"}
!98716 = distinct !{!98716, !98715, !"_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgZAIVb0XKpv_9ssservice: argument 0"}
!98717 = distinct !{!98717, i1 true, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCsgZAIVb0XKpv_9ssservice"}
!98718 = distinct !{!98718, !98717, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCsgZAIVb0XKpv_9ssservice: argument 1"}
!98719 = distinct !{!98719, i1 true, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact"}
!98720 = distinct !{!98720, !98719, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 1"}
!98721 = distinct !{!98721, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!98722 = distinct !{!98722, !98721, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!98723 = distinct !{!98723, !98721, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!98724 = distinct !{!98724, !98717, !"_RNvXNtNtCsgCecv3eZDcN_5alloc2io6cursorINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtB4_4read4Read10read_exactCsgZAIVb0XKpv_9ssservice: argument 0"}
!98725 = distinct !{!98725, !98719, !"_RNvXs5_NtNtCsgCecv3eZDcN_5alloc2io5implsRShNtNtB7_4read4Read10read_exact: argument 0"}
!98726 = distinct !{!98726, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16CsgZAIVb0XKpv_9ssservice"}
!98727 = distinct !{!98727, !98726, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u16CsgZAIVb0XKpv_9ssservice: argument 0"}
!98728 = distinct !{!98728, i1 true, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160CsgZAIVb0XKpv_9ssservice"}
!98729 = distinct !{!98729, !98728, !"_RNCNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf7get_u160CsgZAIVb0XKpv_9ssservice: argument 0"}
!98730 = distinct !{!98730, i1 true, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice"}
!98731 = distinct !{!98731, !98730, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 1"}
!98732 = distinct !{!98732, !98730, !"_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsgZAIVb0XKpv_9ssservice: argument 0"}
!98733 = distinct !{!98733, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCsgZAIVb0XKpv_9ssservice"}
!98734 = distinct !{!98734, !98733, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 0"}
!98735 = distinct !{!98735, i1 true, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice"}
!98736 = distinct !{!98736, !98735, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 1"}
!98737 = distinct !{!98737, !98735, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 0"}
!98738 = distinct !{!98738, !98733, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf13copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 1"}
!98739 = distinct !{!98739, !98735, !"_RNvYINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtNtNtCsknai52m1gBp_5bytes3buf8buf_impl3Buf17try_copy_to_sliceCsgZAIVb0XKpv_9ssservice: argument 2"}
!98740 = distinct !{!98740, i1 true, !"_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCsgZAIVb0XKpv_9ssservice"}
!98741 = distinct !{!98741, !98740, !"_RNvXs1_NtNtCsknai52m1gBp_5bytes3buf8buf_implINtNtNtCsf3Ta7LF998c_4core2io6cursor6CursorQShENtB5_3Buf7advanceCsgZAIVb0XKpv_9ssservice: argument 0"}
!98742 = distinct !{!98742, i1 true, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze"}
!98743 = distinct !{!98743, !98742, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 1"}
!98744 = distinct !{!98744, !98742, !"_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut6freeze: argument 0"}
!98745 = distinct !{!98745, i1 true, !"_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance"}
!98746 = distinct !{!98746, !98745, !"_RNvXs3_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance: argument 0"}
!98747 = distinct !{!98747, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice"}
!98748 = distinct !{!98748, !98747, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98749 = distinct !{!98749, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!98750 = distinct !{!98750, !98749, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!98751 = distinct !{!98751, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!98752 = distinct !{!98752, !98751, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!98753 = distinct !{!98753, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!98754 = distinct !{!98754, !98753, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!98755 = distinct !{!98755, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice"}
!98756 = distinct !{!98756, !98755, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98757 = distinct !{!98757, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!98758 = distinct !{!98758, !98757, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!98759 = distinct !{!98759, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!98760 = distinct !{!98760, !98759, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!98761 = distinct !{!98761, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!98762 = distinct !{!98762, !98761, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!98763 = distinct !{!98763, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!98764 = distinct !{!98764, !98763, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!98765 = distinct !{!98765, !98763, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!98766 = distinct !{!98766, !98763, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!98767 = distinct !{!98767, !98763, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader16poll_read_lengthINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98768 = distinct !{!98768, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice"}
!98769 = distinct !{!98769, !98768, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 3"}
!98770 = distinct !{!98770, !98768, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 2"}
!98771 = distinct !{!98771, !98768, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 0"}
!98772 = distinct !{!98772, !98768, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_2022NtB5_15DecryptedReader14poll_read_dataINtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net10mon_stream14MonProxyStreamNtNtNtBb_3net3tcp9TcpStreamEECsgZAIVb0XKpv_9ssservice: argument 1"}
!98773 = distinct !{!98773, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!98774 = distinct !{!98774, !98773, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!98775 = distinct !{!98775, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!98776 = distinct !{!98776, !98775, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!98777 = distinct !{!98777, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!98778 = distinct !{!98778, !98777, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!98779 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!98780 = distinct !{!98780, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!98781 = distinct !{!98781, !98780, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!98782 = distinct !{!98782, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!98783 = distinct !{!98783, !98782, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!98784 = distinct !{!98784, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!98785 = distinct !{!98785, !98784, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!98786 = distinct !{!98786, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!98787 = distinct !{!98787, !98786, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9aead_202216DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!98788 = distinct !{!98788, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!98789 = distinct !{!98789, !98788, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!98790 = distinct !{!98790, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!98791 = distinct !{!98791, !98790, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!98792 = distinct !{!98792, i1 true, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice"}
!98793 = distinct !{!98793, !98792, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 0"}
!98794 = distinct !{!98794, !98792, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 2"}
!98795 = distinct !{!98795, !98792, !"_RNvMNtNtCsczhfDQ1qNkX_5tokio2io8read_bufNtB2_7ReadBuf9put_slice: argument 1"}
!98796 = !{!98570}
!98797 = !{!98571}
!98798 = !{!98572}
!98799 = !{!98574}
!98800 = !{!98575}
!98801 = !{!98576}
!98802 = !{!98575, !98572}
!98803 = !{!98578}
!98804 = !{!98579}
!98805 = !{!98578, !98570}
!98806 = !{!98581}
!98807 = !{!98586, !98585, !98584, !98583, !98582, !98579, !98576, !98572}
!98808 = !{!98586, !98583, !98582, !98579, !98576, !98572}
!98809 = !{!98581, !98578, !98570}
!98810 = !{!98586, !98581, !98585, !98584, !98583, !98582, !98578, !98589, !98588, !98579, !98576, !98570, !98587, !98571, !98572}
!98811 = !{!98591}
!98812 = !{!98591, !98581, !98578, !98570}
!98813 = !{!98593}
!98814 = !{!98595}
!98815 = !{!98595, !98593, !98591, !98581, !98578, !98570}
!98816 = !{!98595, !98593, !98591, !98586, !98583, !98582, !98579, !98576, !98572}
!98817 = !{!98586, !98585, !98584, !98583, !98582, !98589, !98588, !98579, !98576, !98587, !98571, !98572}
!98818 = !{!98598, !98586, !98581, !98585, !98584, !98583, !98582, !98578, !98589, !98588, !98579, !98576, !98570, !98587, !98571, !98572}
!98819 = !{!98598, !98586, !98583, !98582, !98579, !98576, !98572}
!98820 = !{!98586, !98582, !98579, !98576, !98572}
!98821 = !{!98600, !98586, !98582, !98579, !98576, !98572}
!98822 = !{!98602}
!98823 = !{!98605, !98604, !98603, !98582, !98579, !98576, !98572}
!98824 = !{!98605, !98582, !98579, !98576, !98572}
!98825 = !{!98602, !98578, !98570}
!98826 = !{!98605, !98602, !98604, !98603, !98582, !98578, !98589, !98588, !98579, !98576, !98570, !98587, !98571, !98572}
!98827 = !{!98609, !98608, !98607, !98582, !98579, !98576, !98572}
!98828 = !{!98609, !98582, !98579, !98576, !98572}
!98829 = !{!98610, !98578, !98570}
!98830 = !{!98612}
!98831 = !{!98612, !98578, !98570}
!98832 = !{!98614}
!98833 = !{!98616}
!98834 = !{!98616, !98614, !98612, !98578, !98570}
!98835 = !{!98616, !98614, !98612, !98582, !98579, !98576, !98572}
!98836 = !{!98582, !98579, !98576, !98572}
!98837 = !{!98619}
!98838 = !{!98619, !98578, !98570}
!98839 = !{!98621}
!98840 = !{!98623}
!98841 = !{!98623, !98621, !98619, !98578, !98570}
!98842 = !{!98623, !98621, !98619, !98582, !98579, !98576, !98572}
!98843 = !{!98625}
!98844 = !{!98625, !98578, !98570}
!98845 = !{!98627}
!98846 = !{!98629}
!98847 = !{!98629, !98627, !98625, !98578, !98570}
!98848 = !{!98629, !98627, !98625, !98582, !98579, !98576, !98572}
!98849 = !{!98579, !98572}
!98850 = !{!98631}
!98851 = !{!98631, !98579, !98572}
!98852 = !{!98631, !98632, !98582, !98579, !98576, !98572}
!98853 = !{!98631, !98633, !98582, !98579, !98576, !98572}
!98854 = !{!98635}
!98855 = !{!98636}
!98856 = !{!98637}
!98857 = !{!98635, !98570}
!98858 = !{!98639}
!98859 = !{!98640}
!98860 = !{!98642, !98640, !98641, !98637, !98576, !98572}
!98861 = !{!98644}
!98862 = !{!98645}
!98863 = !{!98637, !98572}
!98864 = !{!98644, !98639, !98635, !98570}
!98865 = !{!98644, !98646, !98645, !98642, !98640, !98641, !98637, !98576, !98572}
!98866 = !{!98641, !98637, !98576, !98572}
!98867 = !{!98644, !98646, !98645, !98639, !98642, !98640, !98641, !98635, !98647, !98636, !98637, !98576, !98570, !98587, !98571, !98572}
!98868 = !{!98649}
!98869 = !{!98650}
!98870 = !{!98649, !98645, !98640, !98636, !98571}
!98871 = !{!98639, !98635, !98570}
!98872 = !{!98639, !98642, !98640, !98641, !98635, !98647, !98636, !98637, !98576, !98570, !98587, !98571, !98572}
!98873 = !{!98652, !98639, !98642, !98640, !98641, !98635, !98647, !98636, !98637, !98576, !98570, !98587, !98571, !98572}
!98874 = !{!98652, !98641, !98637, !98576, !98572}
!98875 = !{!98654}
!98876 = !{!98654, !98639, !98635, !98570}
!98877 = !{!98656}
!98878 = !{!98658}
!98879 = !{!98658, !98656, !98654, !98639, !98635, !98570}
!98880 = !{!98658, !98656, !98654, !98641, !98637, !98576, !98572}
!98881 = !{!98642, !98640, !98641, !98647, !98636, !98637, !98576, !98587, !98571, !98572}
!98882 = !{!98637, !98576, !98572}
!98883 = !{!98661, !98637, !98576, !98572}
!98884 = !{!98663}
!98885 = !{!98663, !98635, !98570}
!98886 = !{!98665}
!98887 = !{!98667}
!98888 = !{!98667, !98665, !98663, !98635, !98570}
!98889 = !{!98667, !98665, !98663, !98637, !98576, !98572}
!98890 = !{!98670}
!98891 = !{!98671}
!98892 = !{!98671, !98637, !98572}
!98893 = !{!98670, !98636, !98571}
!98894 = !{!98673}
!98895 = !{!98674}
!98896 = !{!98675}
!98897 = !{!98673, !98570}
!98898 = !{!98677}
!98899 = !{!98678}
!98900 = !{!98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98901 = !{!98683, !98682, !98678, !98681, !98680, !98675, !98576, !98572}
!98902 = !{!98677, !98673, !98570}
!98903 = !{!98683, !98680, !98675, !98576, !98572}
!98904 = !{!98683, !98677, !98682, !98678, !98681, !98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98905 = !{!98685}
!98906 = !{!98686}
!98907 = !{!98685, !98678, !98674, !98571}
!98908 = !{!98689, !98688, !98683, !98680, !98675, !98576, !98572}
!98909 = !{!98691, !98683, !98677, !98682, !98678, !98681, !98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98910 = !{!98691, !98683, !98680, !98675, !98576, !98572}
!98911 = !{!98693, !98683, !98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98912 = !{!98693, !98683, !98680, !98675, !98576, !98572}
!98913 = !{!98576, !98572}
!98914 = !{!98576, !98570, !98587, !98571, !98572}
!98915 = !{!98695}
!98916 = !{!98695, !98683, !98680, !98675, !98576, !98572}
!98917 = !{!98697, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98918 = !{!98697, !98683, !98680, !98675, !98576, !98572}
!98919 = !{!98699}
!98920 = !{!98699, !98677, !98673, !98570}
!98921 = !{!98701}
!98922 = !{!98703}
!98923 = !{!98703, !98701, !98699, !98677, !98673, !98570}
!98924 = !{!98703, !98701, !98699, !98683, !98680, !98675, !98576, !98572}
!98925 = !{!98683, !98682, !98678, !98681, !98680, !98679, !98674, !98675, !98576, !98587, !98571, !98572}
!98926 = !{!98706}
!98927 = !{!98706, !98683, !98680, !98675, !98576, !98572}
!98928 = !{!98708, !98683, !98680, !98675, !98576, !98572}
!98929 = !{!98710, !98683, !98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98930 = !{!98710, !98683, !98680, !98675, !98576, !98572}
!98931 = !{!98712, !98710, !98683, !98680, !98675, !98576, !98572}
!98932 = !{!98683, !98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98933 = !{!98714}
!98934 = !{!98716, !98714, !98683, !98680, !98675, !98576, !98572}
!98935 = !{!98714, !98683, !98680, !98675, !98576, !98572}
!98936 = !{!98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98937 = !{!98718}
!98938 = !{!98720}
!98939 = !{!98723, !98722}
!98940 = !{!98725, !98724, !98683, !98680, !98675, !98576, !98572}
!98941 = !{!98725, !98720, !98724, !98718, !98683, !98680, !98675, !98576, !98572}
!98942 = !{!98720, !98718}
!98943 = !{!98729, !98727, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98944 = !{!98732, !98731}
!98945 = !{!98737, !98736, !98734, !98729, !98727, !98683, !98680, !98675, !98576, !98572}
!98946 = !{!98741, !98737, !98736, !98739, !98734, !98738, !98729, !98727, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98947 = !{!98741, !98737, !98736, !98739, !98734, !98738, !98729, !98727, !98683, !98680, !98675, !98576, !98572}
!98948 = !{!98729, !98727, !98683, !98680, !98675, !98576, !98572}
!98949 = !{!98727, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98950 = !{!98727, !98683, !98680, !98675, !98576, !98572}
!98951 = !{!98744, !98743, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98952 = !{!98683, !98680, !98675}
!98953 = !{!98744, !98743, !98683, !98680, !98675, !98576, !98572}
!98954 = !{!98746}
!98955 = !{!98746, !98744, !98743, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98956 = !{!98746, !98744, !98743, !98683, !98680, !98675, !98576, !98572}
!98957 = !{!98743, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98958 = !{!98748}
!98959 = !{!98748, !98677, !98673, !98570}
!98960 = !{!98750}
!98961 = !{!98752}
!98962 = !{!98752, !98750, !98748, !98677, !98673, !98570}
!98963 = !{!98752, !98750, !98748, !98683, !98680, !98675, !98576, !98572}
!98964 = !{!98683, !98682, !98678, !98681, !98680, !98679, !98674, !98675}
!98965 = !{!98754, !98683, !98680, !98675, !98576, !98570, !98587, !98571, !98572}
!98966 = !{!98754, !98683, !98680, !98675, !98576, !98572}
!98967 = !{!98756}
!98968 = !{!98756, !98677, !98673, !98570}
!98969 = !{!98758}
!98970 = !{!98760}
!98971 = !{!98760, !98758, !98756, !98677, !98673, !98570}
!98972 = !{!98760, !98758, !98756, !98683, !98680, !98675, !98576, !98572}
!98973 = !{!98762, !98683, !98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98974 = !{!98762, !98683, !98680, !98675, !98576, !98572}
!98975 = !{!98764}
!98976 = !{!98767, !98766, !98765, !98680, !98675, !98576, !98572}
!98977 = !{!98767, !98680, !98675, !98576, !98572}
!98978 = !{!98764, !98673, !98570}
!98979 = !{!98767, !98764, !98766, !98765, !98680, !98673, !98679, !98674, !98675, !98576, !98570, !98587, !98571, !98572}
!98980 = !{!98771, !98770, !98769, !98680, !98675, !98576, !98572}
!98981 = !{!98771, !98680, !98675, !98576, !98572}
!98982 = !{!98772, !98673, !98570}
!98983 = !{!98774}
!98984 = !{!98774, !98673, !98570}
!98985 = !{!98776}
!98986 = !{!98778}
!98987 = !{!98778, !98776, !98774, !98673, !98570}
!98988 = !{!98778, !98776, !98774, !98680, !98675, !98576, !98572}
!98989 = !{!98680, !98675, !98576, !98572}
!98990 = !{!98781}
!98991 = !{!98781, !98673, !98570}
!98992 = !{!98783}
!98993 = !{!98785}
!98994 = !{!98785, !98783, !98781, !98673, !98570}
!98995 = !{!98785, !98783, !98781, !98680, !98675, !98576, !98572}
!98996 = !{!98787}
!98997 = !{!98787, !98673, !98570}
!98998 = !{!98789}
!98999 = !{!98791}
!99000 = !{!98791, !98789, !98787, !98673, !98570}
!99001 = !{!98791, !98789, !98787, !98680, !98675, !98576, !98572}
!99002 = !{!98675, !98572}
!99003 = !{!98793}
!99004 = !{!98793, !98675, !98572}
!99005 = !{!98793, !98794, !98680, !98675, !98576, !98572}
!99006 = !{!98793, !98795, !98680, !98675, !98576, !98572}
!99007 = !{!98574, !98571}
!99008 = !{!98570, !98587, !98571, !98572}
!99009 = distinct !{!99009, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!99010 = distinct !{!99010, !99009, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!99011 = distinct !{!99011, !99009, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 4"}
!99012 = distinct !{!99012, !99009, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!99013 = distinct !{!99013, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!99014 = distinct !{!99014, !99013, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!99015 = distinct !{!99015, !99013, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 4"}
!99016 = distinct !{!99016, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!99017 = distinct !{!99017, !99016, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!99018 = distinct !{!99018, !99013, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!99019 = distinct !{!99019, !99016, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 4"}
!99020 = distinct !{!99020, !99016, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!99021 = distinct !{!99021, !99016, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!99022 = distinct !{!99022, !99016, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_saltNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!99023 = distinct !{!99023, !99009, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!99024 = distinct !{!99024, !99009, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay9crypto_ioNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!99025 = distinct !{!99025, !99013, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!99026 = distinct !{!99026, !99013, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader19poll_read_decryptedNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!99027 = distinct !{!99027, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice"}
!99028 = distinct !{!99028, !99027, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsknai52m1gBp_5bytes5bytes5BytesEECsgZAIVb0XKpv_9ssservice: argument 0"}
!99029 = distinct !{!99029, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!99030 = distinct !{!99030, !99029, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!99031 = distinct !{!99031, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!99032 = distinct !{!99032, !99031, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!99033 = distinct !{null, null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!99034 = distinct !{!99034, i1 true, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice"}
!99035 = distinct !{!99035, !99034, !"_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice: argument 0"}
!99036 = distinct !{!99036, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsbYq7bIcWEdL_18shadowsocks_crypto2v16cipher6CipherECsgZAIVb0XKpv_9ssservice"}
!99037 = distinct !{!99037, !99036, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsbYq7bIcWEdL_18shadowsocks_crypto2v16cipher6CipherECsgZAIVb0XKpv_9ssservice: argument 0"}
!99038 = distinct !{!99038, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!99039 = distinct !{!99039, !99038, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!99040 = distinct !{!99040, !99038, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!99041 = distinct !{!99041, !99038, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!99042 = distinct !{!99042, !99038, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader16poll_read_lengthNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!99043 = distinct !{!99043, i1 true, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice"}
!99044 = distinct !{!99044, !99043, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 3"}
!99045 = distinct !{!99045, !99043, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 2"}
!99046 = distinct !{!99046, !99043, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 0"}
!99047 = distinct !{!99047, !99043, !"_RINvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aeadNtB5_15DecryptedReader14poll_read_dataNtNtNtBb_3net3tcp9TcpStreamECsgZAIVb0XKpv_9ssservice: argument 1"}
!99048 = distinct !{!99048, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!99049 = distinct !{!99049, !99048, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!99050 = distinct !{!99050, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!99051 = distinct !{!99051, !99050, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!99052 = distinct !{!99052, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!99053 = distinct !{!99053, !99052, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!99054 = distinct !{null, null, null, ptr @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice, null}
!99055 = distinct !{!99055, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!99056 = distinct !{!99056, !99055, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!99057 = distinct !{!99057, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!99058 = distinct !{!99058, !99057, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!99059 = distinct !{!99059, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
!99060 = distinct !{!99060, !99059, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop: argument 0"}
!99061 = distinct !{!99061, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECsgZAIVb0XKpv_9ssservice"}
!99062 = distinct !{!99062, !99061, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCslxdWNweD0x2_11shadowsocks5relay8tcprelay4aead16DecryptReadStateECsgZAIVb0XKpv_9ssservice: argument 0"}
!99063 = distinct !{!99063, i1 true, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice"}
!99064 = distinct !{!99064, !99063, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsknai52m1gBp_5bytes5bytes5BytesECsgZAIVb0XKpv_9ssservice: argument 0"}
!99065 = distinct !{!99065, i1 true, !"_RNvXs1_NtCsknai52m1gBp_5bytes5bytesNtB5_5BytesNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop"}
end_hunk_2
