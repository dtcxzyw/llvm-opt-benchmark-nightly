Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.11?download=true
inline.NumInlined: 1545
inline.NumDeleted: 637
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvXs7_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_14ExtendedReportNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB27_5bytes5BytesINtNtB25_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc:bb.a
.noexc164:                                        ; preds = %_RINvXs2_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_8XRHeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB20_5bytes5BytesINtNtB1Y_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1528
  %.pr.i155 = load i64, ptr %i.k, align 8, !noalias !1526 ; 2 uses
  %.not.i156 = icmp eq i64 %.pr.i155, -1
  %.sroa.019.0.copyload.pre.i = load i16, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !1526 ; 2 uses
  %.sroa.420.0.copyload.pre.i = load i8, ptr %.sroa.529.0..sroa_idx.i, align 2, !noalias !1526 ; 2 uses
  br i1 %.not.i156, label %.noexc163, label %bb.ae

bb.ad:                                            ; preds = %.noexc159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1526
  store i64 -9223372036854775744, ptr %i.l, align 8, !noalias !1526
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.l)
          to label %.noexc165 unwind label %.loopexit.loopexit.split-lp

.noexc165:                                        ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1526
  br label %bb.bv

bb.ae:                                            ; preds = %.noexc164
  %.sroa.630.0.copyload.i = load i8, ptr %.sroa.630.0..sroa_idx.i, align 1, !noalias !1526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.736.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.731.0..sroa_idx.i, i64 28, i1 false), !noalias !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1526
  store i64 %.pr.i155, ptr %i.av, align 8, !alias.scope !1523, !noalias !1532
  store i16 %.sroa.019.0.copyload.pre.i, ptr %.sroa.433.0..sroa_idx.i, align 8, !alias.scope !1523, !noalias !1532
  store i8 %.sroa.420.0.copyload.pre.i, ptr %.sroa.534.0..sroa_idx.i, align 2, !alias.scope !1523, !noalias !1532
  store i8 %.sroa.630.0.copyload.i, ptr %.sroa.635.0..sroa_idx.i, align 1, !alias.scope !1523, !noalias !1532
  br label %bb.bv

.noexc163:                                        ; preds = %.noexc164, %.noexc162
  %.sroa.420.0.copyload.i = phi i8 [ %i.bz, %.noexc162 ], [ %.sroa.420.0.copyload.pre.i, %.noexc164 ]
  %.sroa.019.0.copyload.i = phi i16 [ %i.ca, %.noexc162 ], [ %.sroa.019.0.copyload.pre.i, %.noexc164 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1526
  %i.cb = shl nuw i16 %.sroa.019.0.copyload.i, 2  ; 2 uses
  %i.cc = icmp ugt i16 %.sroa.019.0.copyload.i, 16383
  br i1 %i.cc, label %bb.ag, label %bb.af, !prof !68

bb.af:                                            ; preds = %.noexc163
  %i.cd = icmp samesign ult i16 %.sroa.019.0.copyload.i, 2
  br i1 %i.cd, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %.noexc163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1526
  store i64 -9223372036854775723, ptr %i.j, align 8, !noalias !1526
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.j)
          to label %.noexc166 unwind label %.loopexit.loopexit.split-lp

.noexc166:                                        ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1526
  br label %bb.bv

bb.ah:                                            ; preds = %bb.af
  %i.ce = invoke noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtB8_5bytes5BytesINtNtB6_4take4TakeQRShEENtNtB6_8buf_impl3Buf9remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc167 unwind label %.loopexit.loopexit

.noexc167:                                        ; preds = %bb.ah
  %i.cf = zext i16 %i.cb to i64
  %i.cg = icmp ult i64 %i.ce, %i.cf
  br i1 %i.cg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.noexc167, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1526
  store i64 -9223372036854775744, ptr %i.i, align 8, !noalias !1526
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %.noexc168 unwind label %.loopexit.loopexit.split-lp

.noexc168:                                        ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1526
  br label %bb.bv

bb.aj:                                            ; preds = %.noexc167
  %i.ch = add i16 %i.cb, -8                       ; 2 uses
  %i.ci = and i8 %.sroa.420.0.copyload.i, 15
  %i.cj = invoke noundef i32 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u32Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc169 unwind label %.loopexit.loopexit

.noexc169:                                        ; preds = %bb.aj
  %i.ck = invoke noundef i16 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u16Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc170 unwind label %.loopexit.loopexit

.noexc170:                                        ; preds = %.noexc169
  %i.cl = invoke noundef i16 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u16Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc171 unwind label %.loopexit.loopexit

.noexc171:                                        ; preds = %.noexc170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1526
  store i64 0, ptr %i.h, align 8, !noalias !1526
  store ptr inttoptr (i64 4 to ptr), ptr %i.aw, align 8, !noalias !1526
  store i64 0, ptr %i.ax, align 8, !noalias !1526
  %i.cm = lshr exact i16 %i.ch, 2
  %.not44.i = icmp eq i16 %i.ch, 0
  br i1 %.not44.i, label %.loopexit267, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc171, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %.sroa.037.043.i = phi i16 [ %i.cp, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit.i ], [ 0, %.noexc171 ]
  %i.cn = invoke noundef i32 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u32Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.al unwind label %bb.ak, !noalias !1523

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #38
          to label %.body unwind label %bb.an, !noalias !1523

bb.al:                                            ; preds = %.lr.ph.i
  %i.cp = add nuw nsw i16 %.sroa.037.043.i, 1     ; 2 uses
  %i.cq = load i64, ptr %i.ax, align 8, !alias.scope !1533, !noalias !1526, !noundef !21 ; 3 uses
  %i.cr = load i64, ptr %i.h, align 8, !range !611, !alias.scope !1533, !noalias !1526, !noundef !21
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.am, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit.i

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCseeQwDhuaSHd_4rtcp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #40
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.ak, !noalias !1523

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.am, %bb.al
  %i.ct = load ptr, ptr %i.aw, align 8, !alias.scope !1533, !noalias !1526, !nonnull !21, !noundef !21
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cq
  store i32 %i.cn, ptr %i.cu, align 4, !noalias !1523
  %i.cv = add i64 %i.cq, 1
  store i64 %i.cv, ptr %i.ax, align 8, !alias.scope !1533, !noalias !1526
  %exitcond.not.i = icmp eq i16 %i.cp, %i.cm
  br i1 %exitcond.not.i, label %.loopexit267, label %.lr.ph.i

bb.an:                                            ; preds = %bb.ak
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #39, !noalias !1523
  unreachable

bb.ao:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RINvXs3_NtNtCseeQwDhuaSHd_4rtcp15extended_report3rrtNtB6_32ReceiverReferenceTimeReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2v_5bytes5BytesINtNtB2t_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ca unwind label %.loopexit.loopexit

bb.ap:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %i.cx = invoke noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtB8_5bytes5BytesINtNtB6_4take4TakeQRShEENtNtB6_8buf_impl3Buf9remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc182 unwind label %.loopexit.loopexit

.noexc182:                                        ; preds = %bb.ap
  %i.cy = icmp ult i64 %i.cx, 4
  br i1 %i.cy, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.noexc182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1539
  %i.cz = invoke noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtB8_5bytes5BytesINtNtB6_4take4TakeQRShEENtNtB6_8buf_impl3Buf9remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc183 unwind label %.loopexit.loopexit

.noexc183:                                        ; preds = %bb.aq
  %i.da = icmp ult i64 %i.cz, 4
  br i1 %i.da, label %_RINvXs2_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_8XRHeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB20_5bytes5BytesINtNtB1Y_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i177, label %_RINvXs2_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_8XRHeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB20_5bytes5BytesINtNtB1Y_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i174

_RINvXs2_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_8XRHeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB20_5bytes5BytesINtNtB1Y_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i174: ; preds = %.noexc183
  %i.db = invoke noundef i8 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf6get_u8Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc184 unwind label %.loopexit.loopexit ; 0 uses

.noexc184:                                        ; preds = %_RINvXs2_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_8XRHeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB20_5bytes5BytesINtNtB1Y_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i174
  %i.dc = invoke noundef i8 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf6get_u8Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc185 unwind label %.loopexit.loopexit ; 0 uses

.noexc185:                                        ; preds = %.noexc184
  %i.dd = invoke noundef i16 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u16Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc186 unwind label %.loopexit.loopexit

_RINvXs2_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_8XRHeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB20_5bytes5BytesINtNtB1Y_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i177: ; preds = %.noexc183
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1541
  store i64 -9223372036854775744, ptr %i.a, align 8, !noalias !1541
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %.noexc187 unwind label %.loopexit.loopexit

.noexc187:                                        ; preds = %_RINvXs2_NtCseeQwDhuaSHd_4rtcp15extended_reportNtB6_8XRHeaderNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB20_5bytes5BytesINtNtB1Y_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1541
  %.pr.i178 = load i64, ptr %i.e, align 8, !noalias !1539 ; 2 uses
  %.not.i179 = icmp eq i64 %.pr.i178, -1
  %.sroa.015.0.copyload.pre.i = load i16, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !1539 ; 2 uses
  br i1 %.not.i179, label %.noexc186, label %_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread259

bb.ar:                                            ; preds = %.noexc182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1539
  store i64 -9223372036854775744, ptr %i.f, align 8, !noalias !1539
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
          to label %.noexc188 unwind label %.loopexit.loopexit

.noexc188:                                        ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1539
  br label %_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit

_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread259: ; preds = %.noexc187
  %.sroa.525.0.copyload.i = load i8, ptr %.sroa.525.0..sroa_idx.i, align 2, !noalias !1539
  %.sroa.626.0.copyload.i = load i8, ptr %.sroa.626.0..sroa_idx.i, align 1, !noalias !1539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.732.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.727.0..sroa_idx.i, i64 28, i1 false), !noalias !1545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1539
  store i16 %.sroa.015.0.copyload.pre.i, ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !1536, !noalias !1545
  store i8 %.sroa.525.0.copyload.i, ptr %.sroa.530.0..sroa_idx.i, align 2, !alias.scope !1536, !noalias !1545
  store i8 %.sroa.626.0.copyload.i, ptr %.sroa.631.0..sroa_idx.i, align 1, !alias.scope !1536, !noalias !1545
  br label %.loopexit270.a

.noexc186:                                        ; preds = %.noexc187, %.noexc185
  %.sroa.015.0.copyload.i = phi i16 [ %i.dd, %.noexc185 ], [ %.sroa.015.0.copyload.pre.i, %.noexc187 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1539
  %i.de = shl i16 %.sroa.015.0.copyload.i, 2      ; 4 uses
  %i.df = icmp ugt i16 %.sroa.015.0.copyload.i, 16383
  br i1 %i.df, label %bb.at, label %bb.as, !prof !68

bb.as:                                            ; preds = %.noexc186
  %i.dg = urem i16 %i.de, 12
  %i.dh = icmp eq i16 %i.dg, 0
  br i1 %i.dh, label %bb.au, label %bb.bd

bb.at:                                            ; preds = %.noexc186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1539
  store i64 -9223372036854775723, ptr %i.d, align 8, !noalias !1539
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
          to label %.noexc189 unwind label %.loopexit.loopexit

.noexc189:                                        ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1539
  br label %_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.au:                                            ; preds = %bb.as
  %i.di = invoke noundef i64 @_RNvXs_NtNtCs1eA6bChxBZF_5bytes3buf5chainINtB4_5ChainNtNtB8_5bytes5BytesINtNtB6_4take4TakeQRShEENtNtB6_8buf_impl3Buf9remainingCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %.noexc190 unwind label %.loopexit.loopexit

.noexc190:                                        ; preds = %bb.au
  %i.dj = zext i16 %i.de to i64
  %i.dk = icmp ult i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.noexc190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1539
  store i64 0, ptr %i.b, align 8, !noalias !1539
  store ptr inttoptr (i64 4 to ptr), ptr %i.as, align 8, !noalias !1539
  store i64 0, ptr %i.at, align 8, !noalias !1539
  %.not38.i = icmp eq i16 %i.de, 0
  br i1 %.not38.i, label %_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread, label %.lr.ph.i175

_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread: ; preds = %bb.bb, %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.429.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1539
  br label %bb.ce

.lr.ph.i175:                                      ; preds = %bb.av, %bb.bb
  %.sroa.013.037.i = phi i16 [ %i.dv, %bb.bb ], [ 0, %bb.av ]
  %i.dl = invoke noundef i32 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u32Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ax unwind label %bb.aw, !noalias !1536

bb.aw:                                            ; preds = %bb.ba, %bb.ay, %bb.ax, %.lr.ph.i175
  %i.dm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrr10DLRRReportEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #38
          to label %.body unwind label %bb.bc, !noalias !1536

bb.ax:                                            ; preds = %.lr.ph.i175
  %i.dn = invoke noundef i32 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u32Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.ay unwind label %bb.aw, !noalias !1536

bb.ay:                                            ; preds = %bb.ax
  %i.do = invoke noundef i32 @_RNvYINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB9_5bytes5BytesINtNtB7_4take4TakeQRShEENtNtB7_8buf_impl3Buf7get_u32Cs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.az unwind label %bb.aw, !noalias !1536

bb.az:                                            ; preds = %bb.ay
  %i.dp = load i64, ptr %i.at, align 8, !alias.scope !1546, !noalias !1549, !noundef !21 ; 3 uses
  %i.dq = load i64, ptr %i.b, align 8, !range !611, !alias.scope !1546, !noalias !1549, !noundef !21
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrr10DLRRReportE8grow_oneCsfFK4IlX6vQW_11interceptor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #40
          to label %bb.bb unwind label %bb.aw, !noalias !1536

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ds = load ptr, ptr %i.as, align 8, !alias.scope !1546, !noalias !1549, !nonnull !21, !noundef !21
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.ds, i64 %i.dp ; 3 uses
  store i32 %i.dl, ptr %i.dt, align 4, !noalias !1536
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.dn, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1536
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.do, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !1536
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.at, align 8, !alias.scope !1546, !noalias !1549
  %i.dv = add i16 %.sroa.013.037.i, 12            ; 2 uses
  %i.dw = icmp ult i16 %i.dv, %i.de
  br i1 %i.dw, label %.lr.ph.i175, label %_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread

bb.bc:                                            ; preds = %bb.aw
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #39, !noalias !1536
  unreachable

bb.bd:                                            ; preds = %.noexc190, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1539
  store i64 -9223372036854775744, ptr %i.c, align 8, !noalias !1539
  invoke void @_RNvXNtCseeQwDhuaSHd_4rtcp5errorNtNtCslqlypCAacxc_11webrtc_util5error5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtB2_5ErrorE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.c)
          to label %.noexc193 unwind label %.loopexit.loopexit

.noexc193:                                        ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1539
  br label %_RINvXs4_NtNtCseeQwDhuaSHd_4rtcp15extended_report4dlrrNtB6_15DLRRReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2f_5bytes5BytesINtNtB2d_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc.exit

bb.be:                                            ; preds = %bb.p
  invoke void @_RINvXs5_NtNtCseeQwDhuaSHd_4rtcp15extended_report3ssrNtB6_28StatisticsSummaryReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2r_5bytes5BytesINtNtB2p_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cj unwind label %.loopexit.loopexit

bb.bf:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvXs3_NtNtCseeQwDhuaSHd_4rtcp15extended_report2vmNtB6_22VoIPMetricsReportBlockNtNtCslqlypCAacxc_11webrtc_util7marshal9Unmarshal9unmarshalINtNtNtCs1eA6bChxBZF_5bytes3buf5chain5ChainNtNtB2k_5bytes5BytesINtNtB2i_4take4TakeQRShEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.cn unwind label %.loopexit.loopexit

bb.bg:                                            ; preds = %bb.z
  %i.dy = load i64, ptr %i.ac, align 8, !range !66, !noundef !21
  %i.dz = trunc nuw i64 %i.dy to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(40) %i.az, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.dz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.518, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  br label %bb.dc

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.518, i64 40, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1551
  %i.ea = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 40, i64 noundef range(i64 1, 9) 8) #36, !noalias !1551 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.bj, label %bb.bm, !prof !7

bb.bj:                                            ; preds = %bb.bi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37
          to label %.noexc194 unwind label %bb.bk

.noexc194:                                        ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCseeQwDhuaSHd_4rtcp15extended_report3rle14RLEReportBlockECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ab) #38
          to label %.body unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ea, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.518, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.cu, %bb.cq, %bb.cm, %bb.ci, %bb.cd, %bb.bz, %bb.bu, %bb.bm
  %.sroa.043.0 = phi ptr [ %i.fl, %bb.cu ], [ %i.ea, %bb.bm ], [ %i.ej, %bb.bu ], [ %i.en, %bb.bz ], [ %i.et, %bb.cd ], [ %i.ex, %bb.ci ], [ %i.fe, %bb.cm ], [ %i.fh, %bb.cq ] ; 4 uses
  %.sroa.944.0 = phi ptr [ @56, %bb.cu ], [ @32, %bb.bm ], [ @32, %bb.bu ], [ @36, %bb.bz ], [ @40, %bb.cd ], [ @44, %bb.ci ], [ @48, %bb.cm ], [ @52, %bb.cq ] ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.944.0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !invariant.load !21, !nonnull !21
  %i.eg = invoke noundef i64 %i.ef(ptr noundef nonnull %.sroa.043.0)
          to label %bb.cv unwind label %bb.da

bb.bo:                                            ; preds = %bb.aa
  %i.eh = load i64, ptr %i.aa, align 8, !range !66, !noundef !21
  %i.ei = trunc nuw i64 %i.eh to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.520, ptr noundef nonnull align 8 dereferenceable(40) %i.ay, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.ei, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.520, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520)
  br label %bb.dc

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.520, i64 40, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1554
  %i.ej = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 40, i64 noundef range(i64 1, 9) 8) #36, !noalias !1554 ; 3 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.br, label %bb.bu, !prof !7

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37
          to label %.noexc195 unwind label %bb.bs

.noexc195:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.el = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCseeQwDhuaSHd_4rtcp15extended_report3rle14RLEReportBlockECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.z) #38
          to label %.body unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.520, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.520)
  br label %bb.bn

bb.bv:                                            ; preds = %.noexc168, %.noexc166, %bb.ae, %.noexc165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.522)
  br label %bb.dc

.loopexit267:                                     ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmE8push_mutCs4KPtkQIfQGm_13libp2p_webrtc.exit.i, %.noexc171
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1532
  store i32 %i.cj, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !1523, !noalias !1532
  store i16 %i.ck, ptr %.sroa.515.0..sroa_idx.i, align 4, !alias.scope !1523, !noalias !1532
  store i16 %i.cl, ptr %.sroa.616.0..sroa_idx.i, align 2, !alias.scope !1523, !noalias !1532
  store i8 %i.ci, ptr %.sroa.717.0..sroa_idx.i, align 8, !alias.scope !1523, !noalias !1532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.522, i64 40, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !1557
  %i.en = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 40, i64 noundef range(i64 1, 9) 8) #36, !noalias !1557 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.bw, label %bb.bz, !prof !7

bb.bw:                                            ; preds = %.loopexit267
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #37
          to label %.noexc197 unwind label %bb.bx

.noexc197:                                        ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bw
  %i.ep = landingpad { ptr, i32 }
end_hunk_0
