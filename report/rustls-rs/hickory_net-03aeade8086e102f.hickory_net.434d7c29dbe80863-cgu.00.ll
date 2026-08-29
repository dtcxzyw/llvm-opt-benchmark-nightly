Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_net-03aeade8086e102f.hickory_net.434d7c29dbe80863-cgu.00?download=true
inline.NumInlined: 384
inline.NumDeleted: 217
begin_hunk_0_@_RNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0B5_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.ih = load ptr, ptr %.sroa.6419.8..sroa_idx, align 8, !alias.scope !695, !noalias !676, !noundef !5
  %i.ii = load ptr, ptr %.sroa.5418.sroa.3.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !alias.scope !695, !noalias !676, !nonnull !5, !align !141, !noundef !5
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !696, !nonnull !5, !noundef !5
  %i.il = load ptr, ptr %.sroa.5418.sroa.4.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !alias.scope !695, !noalias !676, !noundef !5
  %i.im = load i64, ptr %.sroa.5418.sroa.5.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !alias.scope !695, !noalias !676, !noundef !5
  invoke void %i.ik(ptr noundef %i.ih, ptr noundef %i.il, i64 noundef %i.im)
          to label %bb.dl unwind label %bb.cd, !inline_history !697

bb.ck:                                            ; preds = %bb.cf
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !676
  unreachable

.noexc162:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit
  %.sroa.7427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6419.sroa.4, i64 48, i1 false)
  %.sroa.5425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5425.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5418.sroa.0, i64 7, i1 false)
  %.sroa.6426.sroa.4.0..sroa.6426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6426.sroa.4.0..sroa.6426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419.sroa.3, i64 32, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  store i64 %i.hl, ptr %i.io, align 8
  %.sroa.4424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 480
  store i8 %.sroa.3417.0.copyload, ptr %.sroa.4424.0..sroa_idx, align 8
  %.sroa.5425.sroa.4.0..sroa.5425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i64 %.sroa.5418.sroa.3.0.copyload, ptr %.sroa.5425.sroa.4.0..sroa.5425.0..sroa_idx.sroa_idx, align 8
  %.sroa.5425.sroa.5.0..sroa.5425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 496
  store i64 %.sroa.5418.sroa.4.0.copyload, ptr %.sroa.5425.sroa.5.0..sroa.5425.0..sroa_idx.sroa_idx, align 8
  %.sroa.5425.sroa.6.0..sroa.5425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 504
  store i64 %.sroa.5418.sroa.5.0.copyload, ptr %.sroa.5425.sroa.6.0..sroa.5425.0..sroa_idx.sroa_idx, align 8
  %.sroa.6426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 512
  store ptr %.sroa.6419.sroa.0.0.copyload, ptr %.sroa.6426.0..sroa_idx, align 8
  %i.ip = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off960 = add i64 %i.ip, -2
  %switch961 = icmp ult i64 %.off960, 4
  br i1 %switch961, label %bb.cu, label %bb.cl

bb.cl:                                            ; preds = %.noexc162
  %i.iq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.ir = icmp ult i8 %i.iq, 3
  br i1 %i.ir, label %bb.co, label %bb.cm, !prof !540

bb.cm:                                            ; preds = %bb.cl
  %i.is = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE) #21
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %.sroa.0.0.i247 = phi i8 [ %i.iq, %bb.cl ], [ %i.is, %bb.cm ] ; 2 uses
  %i.iu = icmp eq i8 %.sroa.0.0.i247, 0
  br i1 %i.iu, label %bb.cu, label %bb.cq

bb.cp:                                            ; preds = %bb.cq
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

bb.cq:                                            ; preds = %bb.co
  %i.iw = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, align 8, !nonnull !5, !align !141, !noundef !5
  %i.ix = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iw, i8 noundef %.sroa.0.0.i247)
          to label %bb.cr unwind label %bb.cp

bb.cr:                                            ; preds = %bb.cq
  br i1 %i.ix, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.iy = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, align 8, !nonnull !5, !align !141, !noundef !5 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.io, ptr %i.ay, align 8
  %.sroa.5435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1_NtCsjSDXC2TkEdJ_4http8responseINtB5_8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5MfxasYgTEl_11hickory_net, ptr %.sroa.5435.0..sroa_idx, align 8
  store ptr @12, ptr %i.az, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %i.ja, align 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @11, ptr %i.jb, align 8
  store i64 1, ptr %i.bb, align 8
  %.sroa.6431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %.sroa.6431.0..sroa_idx, align 8
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1, ptr %.sroa.7432.0..sroa_idx, align 8
  %.sroa.8433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.iz, ptr %.sroa.8433.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb)
          to label %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.cu

bb.cu:                                            ; preds = %.noexc162, %bb.cr, %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  %i.jd = invoke noundef align 8 ptr @_RINvMs0_NtNtCsjSDXC2TkEdJ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.io, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.cw unwind label %bb.cv     ; 3 uses

bb.cv:                                            ; preds = %bb.cu
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.not.i254 = icmp eq ptr %i.jd, null
  br i1 %.not.i254, label %.loopexit964, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jf = getelementptr i8, ptr %i.jd, i64 8
  %.val.i = load ptr, ptr %i.jf, align 8, !noalias !698, !nonnull !5, !noundef !5 ; 4 uses
  %i.jg = getelementptr i8, ptr %i.jd, i64 16
  %.val2.i = load i64, ptr %i.jg, align 8, !noalias !698, !noundef !5 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val2.i
  %i.ji = icmp samesign eq i64 %.val2.i, 0
  br i1 %i.ji, label %.loopexit, label %.lr.ph.i.i.i

bb.cy:                                            ; preds = %.lr.ph.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i, i64 1 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.jh
  br i1 %i.jk, label %bb.db, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cx, %bb.cy
  %.sroa.02.01.i.i.i = phi ptr [ %i.jj, %bb.cy ], [ %.val.i, %bb.cx ] ; 2 uses
  %i.jl = load i8, ptr %.sroa.02.01.i.i.i, align 1, !noalias !698, !noundef !5 ; 2 uses
  %i.jm = add i8 %i.jl, -32
  %or.cond.i.i.i = icmp ult i8 %i.jm, 95
  %i.jn = icmp eq i8 %i.jl, 9
  %or.cond1.i.i.i = or i1 %i.jn, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.cy, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !705
  store ptr %i.a, ptr %i.k, align 8, !noalias !705
  %.sroa.42.0..sroa_idx.i.i255 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsc_NtNtCsjSDXC2TkEdJ_4http6header5valueNtB5_10ToStrErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i255, align 8, !noalias !705
  %i.jo = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jo, ptr noundef nonnull @4, ptr noundef nonnull %i.k)
          to label %bb.dk unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

bb.db:                                            ; preds = %bb.cy
  %cond = icmp eq i64 %.val2.i, 1
  %i.jq = load i8, ptr %.val.i, align 1, !alias.scope !708, !noalias !717 ; 2 uses
  br i1 %cond, label %bb.dc, label %thread-pre-split.i.i.i.i

bb.dc:                                            ; preds = %bb.db
  switch i8 %i.jq, label %thread-pre-split.i.i.i.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.db, %bb.dc
  %cond.i.i.i.i = icmp eq i8 %i.jq, 43            ; 2 uses
  %i.jr = sext i1 %cond.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i = add nsw i64 %.val2.i, %i.jr ; 4 uses
  %.sroa.0.0.idx.i.i.i.i = zext i1 %cond.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.idx.i.i.i.i ; 2 uses
  %i.js = icmp samesign ult i64 %.sroa.15.0.i.i.i.i, 17
  br i1 %i.js, label %.preheader.i.i.i.i, label %.preheader56.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %thread-pre-split.i.i.i.i
  %.not5366.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i, label %.loopexit964, label %.lr.ph.i.i.i.i

.preheader56.i.i.i.i:                             ; preds = %bb.df
  %.not52.i.i.i.i = icmp eq i64 %i.ju, 0
  br i1 %.not52.i.i.i.i, label %.loopexit964, label %.preheader56.i.i.i.i.preheader

.preheader56.i.i.i.i.preheader:                   ; preds = %thread-pre-split.i.i.i.i, %.preheader56.i.i.i.i
  %.sroa.0.1.i.i.i.i1010 = phi ptr [ %i.jt, %.preheader56.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %thread-pre-split.i.i.i.i ] ; 2 uses
  %.sroa.15.1.i.i.i.i1009 = phi i64 [ %i.ju, %.preheader56.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %thread-pre-split.i.i.i.i ]
  %.sroa.042.0.i.i.i.i1008 = phi i64 [ %i.kc, %.preheader56.i.i.i.i ], [ 0, %thread-pre-split.i.i.i.i ]
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i1010, i64 1
  %i.ju = add nsw i64 %.sroa.15.1.i.i.i.i1009, -1 ; 2 uses
  %3 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i1008, i64 10) ; 2 uses
  %4 = extractvalue { i64, i1 } %3, 0             ; 2 uses
  %5 = extractvalue { i64, i1 } %3, 1
  %i.jv = load i8, ptr %.sroa.0.1.i.i.i.i1010, align 1, !alias.scope !708, !noalias !717, !noundef !5 ; 2 uses
  br i1 %5, label %bb.de, label %bb.dd, !prof !722

bb.dd:                                            ; preds = %.preheader56.i.i.i.i.preheader
  %i.jw = zext i8 %i.jv to i32
  %i.jx = add nsw i32 %i.jw, -48                  ; 2 uses
  %i.jy = icmp ult i32 %i.jx, 10
  br i1 %i.jy, label %bb.df, label %.loopexit

bb.de:                                            ; preds = %.preheader56.i.i.i.i.preheader
  %i.jz = add i8 %i.jv, -48
  %i.ka = icmp ult i8 %i.jz, 10
  %spec.select.i = select i1 %i.ka, i8 2, i8 1
  br label %.loopexit

bb.df:                                            ; preds = %bb.dd
  %i.kb = zext nneg i32 %i.jx to i64
  %i.kc = add i64 %4, %i.kb                       ; 3 uses
  %i.kd = icmp ult i64 %i.kc, %4
  br i1 %i.kd, label %.loopexit, label %.preheader56.i.i.i.i, !prof !722

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.dg
  %.sroa.0.269.i.i.i.i = phi ptr [ %i.kk, %bb.dg ], [ %.sroa.0.0.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i = phi i64 [ %i.kj, %bb.dg ], [ %.sroa.15.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.042.267.i.i.i.i = phi i64 [ %i.km, %bb.dg ], [ 0, %.preheader.i.i.i.i ]
  %i.ke = load i8, ptr %.sroa.0.269.i.i.i.i, align 1, !alias.scope !708, !noalias !717, !noundef !5
  %i.kf = zext i8 %i.ke to i32
  %i.kg = add nsw i32 %i.kf, -48                  ; 2 uses
  %i.kh = icmp ult i32 %i.kg, 10
  br i1 %i.kh, label %bb.dg, label %.loopexit

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ki = mul i64 %.sroa.042.267.i.i.i.i, 10
  %i.kj = add nsw i64 %.sroa.15.268.i.i.i.i, -1   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i, i64 1
  %i.kl = zext nneg i32 %i.kg to i64
  %i.km = add i64 %i.ki, %i.kl                    ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.kj, 0
  br i1 %.not53.i.i.i.i, label %.loopexit964, label %.lr.ph.i.i.i.i

.loopexit:                                        ; preds = %bb.dd, %bb.df, %.lr.ph.i.i.i.i, %bb.cx, %bb.dc, %bb.dc, %bb.de
  %.sroa.8455.0.ph = phi i8 [ 1, %.lr.ph.i.i.i.i ], [ 1, %bb.dc ], [ %spec.select.i, %bb.de ], [ 0, %bb.cx ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 2, %bb.df ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !723
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !723
  store i8 %.sroa.8455.0.ph, ptr %i.i, align 1, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !727
  store ptr %i.i, ptr %i.h, align 8, !noalias !727
  %.sroa.42.0..sroa_idx.i.i260 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i260, align 8, !noalias !727
  %i.kn = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.kn, ptr noundef nonnull @4, ptr noundef nonnull %i.h)
          to label %bb.dj unwind label %bb.dh

bb.dh:                                            ; preds = %.loopexit
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

.loopexit964:                                     ; preds = %.preheader56.i.i.i.i, %bb.dg, %bb.cw, %.preheader.i.i.i.i
  %.sroa.9452.0.ph = phi i64 [ %i.km, %bb.dg ], [ 0, %.preheader.i.i.i.i ], [ undef, %bb.cw ], [ %i.kc, %.preheader56.i.i.i.i ] ; 2 uses
  %.sroa.0451.0.ph = phi i64 [ 1, %bb.dg ], [ 1, %.preheader.i.i.i.i ], [ 0, %bb.cw ], [ 1, %.preheader56.i.i.i.i ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i64 %.sroa.0451.0.ph, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i64 %.sroa.9452.0.ph, ptr %i.kq, align 8
  %i.kr = trunc nuw i64 %.sroa.0451.0.ph to i1
  %i.ks = call i64 @llvm.umax.i64(i64 %.sroa.9452.0.ph, i64 512)
  %i.kt = call range(i64 512, 4097) i64 @llvm.umin.i64(i64 %i.ks, i64 4096)
  %.sroa.0.0.i263 = select i1 %i.kr, i64 %i.kt, i64 512
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke fastcc void @_RNvMs_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB4_8BytesMut13with_capacity(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ku, i64 noundef %.sroa.0.0.i263)
          to label %.thread unwind label %bb.di

bb.di:                                            ; preds = %.loopexit964
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305: ; preds = %bb.dh, %bb.da, %bb.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit, %bb.cn, %bb.cp, %bb.ct, %bb.di, %bb.gn
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jc, %bb.ct ], [ %i.qs, %bb.gn ], [ %i.it, %bb.cn ], [ %i.kv, %bb.di ], [ %i.iv, %bb.cp ], [ %.pn111.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit ], [ %i.ko, %bb.dh ], [ %i.je, %bb.cv ], [ %i.jp, %bb.da ]
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.kw) #18
          to label %.body233 unwind label %bb.bq

bb.dj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !723
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, i64 7, i1 false)
  %i.kx = load <2 x i64>, ptr %i.kn, align 8, !noalias !730
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.16.sroa.0.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !730
  %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.16.sroa.7.0.copyload = load ptr, ptr %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx, align 8, !noalias !730
  %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !723
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit

bb.dk:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !705
  %.sroa.7471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7471.0..sroa_idx, i64 7, i1 false)
  %.sroa.8472.0.copyload = load ptr, ptr %i.jo, align 8, !noalias !731
  %.sroa.11473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.11473.0.copyload = load i64, ptr %.sroa.11473.0..sroa_idx, align 8, !noalias !731
  %.sroa.14474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.14474.sroa.0.0.copyload = load i64, ptr %.sroa.14474.0..sroa_idx, align 8, !noalias !731
  %.sroa.14474.sroa.5.0..sroa.14474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.14474.sroa.5.0.copyload = load ptr, ptr %.sroa.14474.sroa.5.0..sroa.14474.0..sroa_idx.sroa_idx, align 8, !noalias !731
  %.sroa.14474.sroa.6.0..sroa.14474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14474.sroa.6.0..sroa.14474.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !701
  %i.ky = ptrtoint ptr %.sroa.8472.0.copyload to i64
  %i.kz = insertelement <2 x i64> poison, i64 %i.ky, i64 0
  %i.la = insertelement <2 x i64> %i.kz, i64 %.sroa.11473.0.copyload, i64 1
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.dj, %bb.dk, %bb.et
  %.sroa.53.4 = phi ptr [ %.sroa.53.5, %bb.et ], [ %.sroa.16.sroa.7.0.copyload, %bb.dj ], [ %.sroa.14474.sroa.5.0.copyload, %bb.dk ]
  %.sroa.49.4 = phi i64 [ %.sroa.49.5, %bb.et ], [ %.sroa.16.sroa.0.0.copyload, %bb.dj ], [ %.sroa.14474.sroa.0.0.copyload, %bb.dk ]
  %.sroa.15.4 = phi i8 [ %.sroa.15.5, %bb.et ], [ 5, %bb.dj ], [ 5, %bb.dk ]
  %i.lb = phi <2 x i64> [ %i.nj, %bb.et ], [ %i.kx, %bb.dj ], [ %i.la, %bb.dk ]
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.lc)
          to label %bb.az unwind label %bb.go

bb.dl:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !666
  br label %bb.az

bb.dm:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !732, !noalias !733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  switch i8 %.pre, label %default.unreachable994 [
    i8 0, label %bb.dn
    i8 1, label %bb.do
    i8 2, label %bb.dp
    i8 3, label %bb.dq
  ]

bb.dn:                                            ; preds = %.thread, %bb.dm
  %i.le = phi ptr [ %i.nf, %.thread ], [ %i.ld, %bb.dm ]
  %i.lf = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.lg = load ptr, ptr %i.lf, align 8, !noalias !733, !nonnull !5, !align !141, !noundef !5
  %i.lh = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.lg, ptr %i.lh, align 8, !noalias !733
  br label %bb.dq

bb.do:                                            ; preds = %bb.dm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc265 unwind label %bb.ds

.noexc265:                                        ; preds = %bb.do
  unreachable

bb.dp:                                            ; preds = %bb.dm
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc266 unwind label %bb.ds

.noexc266:                                        ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.dn, %bb.dm
  %i.li = phi ptr [ %i.le, %bb.dn ], [ %i.ld, %bb.dm ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RNvXs_Cs4okMlIQ9Z13_2h2INtB4_6PollFnNCNCNvMs1_NtB4_5shareNtBI_10RecvStream4data00ENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.lj, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dt unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lk = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.li, align 8, !noalias !733
  br label %.body267

bb.ds:                                            ; preds = %bb.dp, %bb.do
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body267

bb.dt:                                            ; preds = %bb.dq
  %i.lm = load i8, ptr %i.ax, align 8, !range !738, !alias.scope !737, !noalias !739, !noundef !5 ; 3 uses
  %i.ln = icmp eq i8 %i.lm, -3                    ; 2 uses
  %spec.select.i264 = select i1 %i.ln, i8 3, i8 1
  store i8 %spec.select.i264, ptr %i.li, align 8, !noalias !733
  br i1 %i.ln, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %common.ret

bb.dv:                                            ; preds = %bb.dt
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.0..sroa_idx, i64 7, i1 false)
  %.sroa.37.sroa.2.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.37.sroa.2.0.copyload = load ptr, ptr %.sroa.37.sroa.2.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.37.sroa.3.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.37.sroa.3.0.copyload = load ptr, ptr %.sroa.37.sroa.3.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.37.sroa.4.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.37.sroa.4.0.copyload = load i64, ptr %.sroa.37.sroa.4.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.37.sroa.5.0..sroa.37.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.37.sroa.5.0.copyload = load ptr, ptr %.sroa.37.sroa.5.0..sroa.37.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  switch i8 %i.lm, label %bb.dw [
    i8 -2, label %bb.ed
    i8 -1, label %.noexc
  ]

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !740
  store i8 %i.lm, ptr %i.g, align 8, !noalias !744
  %.sroa.8500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
end_hunk_0
begin_hunk_1_@llvm.assume
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsb_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsjSDXC2TkEdJ_4http6statusNtB5_10StatusCodeNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCsjSDXC2TkEdJ_4http7requestINtB5_7RequestuENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5MfxasYgTEl_11hickory_net(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtCsjSDXC2TkEdJ_4http8responseINtB5_8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTNtNtCsj6eKBz9Db1c_4core3any6TypeIdINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtCsjSDXC2TkEdJ_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsjSDXC2TkEdJ_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsjSDXC2TkEdJ_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBI_10EdnsOptionEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsjSDXC2TkEdJ_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsjSDXC2TkEdJ_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums11ContentTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5enums13HandshakeTypeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs7ZUl82OSlxp_6rustls5error18ExtendedKeyPurposeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCseO5Jl7W60Eg_16rustls_pki_types6alg_id19AlgorithmIdentifierENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16EchConfigPayloadENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2op5query5QueryENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata3opt8EdnsCodeNtBP_10EdnsOptionEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB5_7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBb_6client4PeerENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs4okMlIQ9Z13_2h25shareNtB5_10RecvStreamNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB5_8BytesMutNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsa_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsNtB5_15OpaqueStreamRefNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCsjSDXC2TkEdJ_4http6header5valueNtB5_10ToStrErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCs5MfxasYgTEl_11hickory_net5errorNtB5_8NetErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_Cs4okMlIQ9Z13_2h2INtB4_6PollFnNCNCNvMs1_NtB4_5shareNtBI_10RecvStream4data00ENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs4okMlIQ9Z13_2h26clientINtB5_16ReadySendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs5MfxasYgTEl_11hickory_net4httpNtB2_14RequestContext5build(ptr dead_on_unwind noalias nofree noundef writable sret([224 x i8]) align 8 captures(none) dereferenceable(224), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsjpgBhlqJ253_12tracing_core5fieldNtNtCsj6eKBz9Db1c_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs4okMlIQ9Z13_2h26clientINtB2_11SendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE12send_requestCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(224), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs4okMlIQ9Z13_2h25shareINtB4_10SendStreamNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE9send_dataCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_NtCs4okMlIQ9Z13_2h26clientNtB5_14ResponseFutureNtNtNtCsj6eKBz9Db1c_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([128 x i8]) align 8 captures(none) dereferenceable(128), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs0_NtNtCsjSDXC2TkEdJ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsm_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB6_8BytesMutINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendNtNtB8_5bytes5BytesECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_responseNtB2_11DnsResponse11from_buffer(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsjpgBhlqJ253_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs4okMlIQ9Z13_2h26clientINtB2_11SendRequestNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesE10poll_readyCs5MfxasYgTEl_11hickory_net(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEE9drop_slowB1D_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs4okMlIQ9Z13_2h25error5ErrorE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCs5MfxasYgTEl_11hickory_net4http14RequestContextE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsjSDXC2TkEdJ_4http6header5value10ToStrErrorE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtCs5MfxasYgTEl_11hickory_net5error13ForwardNSDataE9drop_slowBL_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtNtCsjXdHNeFfodD_13hickory_proto2rr6record6RecordE9drop_slowCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsjXdHNeFfodD_13hickory_proto2op7messageNtB2_7Message6to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXs3_NtNtNtCs4okMlIQ9Z13_2h25proto7streams7streamsINtB5_7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBb_6client4PeerENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsE_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesINtNtCsj6eKBz9Db1c_4core7convert4FromINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE4from(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noinline }
attributes #22 = { noinline noreturn }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (67854e511 2026-08-15)"}
!4 = !{i64 -1, i64 -9223372036854775808}
!5 = !{}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!8 = distinct !{!8, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!11 = distinct !{!11, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!12 = !{!10, !7, !13}
!13 = distinct !{!13, !14, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefECs5MfxasYgTEl_11hickory_net: argument 0"}
!14 = distinct !{!14, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefECs5MfxasYgTEl_11hickory_net"}
!15 = !{!10, !7}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!18 = distinct !{!18, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!21 = distinct !{!21, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!22 = !{!20, !17, !13}
!23 = !{!20, !17}
!24 = !{i16 0, i16 2}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!27 = distinct !{!27, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!30 = distinct !{!30, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!31 = !{!29, !26, !32, !34}
!32 = distinct !{!32, !33, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefECs5MfxasYgTEl_11hickory_net: argument 0"}
!33 = distinct !{!33, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefECs5MfxasYgTEl_11hickory_net"}
!34 = distinct !{!34, !35, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams9StreamRefNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net: argument 0"}
!35 = distinct !{!35, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams9StreamRefNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEECs5MfxasYgTEl_11hickory_net"}
!36 = !{!29, !26}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!39 = distinct !{!39, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!42 = distinct !{!42, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!43 = !{!41, !38, !32, !34}
!44 = !{!41, !38}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!47 = distinct !{!47, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!50 = distinct !{!50, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!51 = !{!49, !46, !34}
!52 = !{!49, !46}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!55 = distinct !{!55, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!58 = distinct !{!58, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!59 = !{!57, !54, !34}
!60 = !{!57, !54}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!63 = distinct !{!63, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!66 = distinct !{!66, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!67 = !{!65, !62, !68}
!68 = distinct !{!68, !69, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBK_6client4PeerEECs5MfxasYgTEl_11hickory_net: argument 0"}
!69 = distinct !{!69, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams7StreamsNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesNtNtBK_6client4PeerEECs5MfxasYgTEl_11hickory_net"}
!70 = !{!65, !62}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!73 = distinct !{!73, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!76 = distinct !{!76, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!77 = !{!75, !72, !68}
!78 = !{!75, !72}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!81 = distinct !{!81, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!84 = distinct !{!84, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!85 = !{!83, !80, !68}
!86 = !{!83, !80}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!89 = distinct !{!89, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEEECs5MfxasYgTEl_11hickory_net"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!92 = distinct !{!92, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams10SendBufferNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!93 = !{!91, !88, !68}
!94 = !{!91, !88}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefEECs5MfxasYgTEl_11hickory_net: argument 0"}
!97 = distinct !{!97, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefEECs5MfxasYgTEl_11hickory_net"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!100 = distinct !{!100, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!103 = distinct !{!103, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!104 = !{!102, !99, !105, !96}
!105 = distinct !{!105, !106, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefECs5MfxasYgTEl_11hickory_net: argument 0"}
!106 = distinct !{!106, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams15OpaqueStreamRefECs5MfxasYgTEl_11hickory_net"}
!107 = !{!102, !99}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net: argument 0"}
!110 = distinct !{!110, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEEECs5MfxasYgTEl_11hickory_net"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net: argument 0"}
!113 = distinct !{!113, !"_RNvXsE_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtNtNtNtCs4okMlIQ9Z13_2h25proto7streams7streams5InnerEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs5MfxasYgTEl_11hickory_net"}
!114 = !{!112, !109, !105, !96}
!115 = !{!112, !109}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http7request5PartsECs5MfxasYgTEl_11hickory_net: argument 0"}
!118 = distinct !{!118, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http7request5PartsECs5MfxasYgTEl_11hickory_net"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http6method6MethodECs5MfxasYgTEl_11hickory_net: argument 0"}
!121 = distinct !{!121, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http6method6MethodECs5MfxasYgTEl_11hickory_net"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http6method5InnerECs5MfxasYgTEl_11hickory_net: argument 0"}
!124 = distinct !{!124, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http6method5InnerECs5MfxasYgTEl_11hickory_net"}
!125 = !{i8 0, i8 11}
!126 = !{!123, !120, !117}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http3uri3UriECs5MfxasYgTEl_11hickory_net: argument 0"}
!129 = distinct !{!129, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http3uri3UriECs5MfxasYgTEl_11hickory_net"}
!130 = !{i8 0, i8 3}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net: argument 0"}
!133 = distinct !{!133, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net: argument 0"}
!136 = distinct !{!136, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop: argument 0"}
!139 = distinct !{!139, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop"}
!140 = !{!138, !135, !132}
!141 = !{i64 8}
!142 = !{!138, !135, !132, !128}
!143 = distinct !{null}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri9authority9AuthorityECs5MfxasYgTEl_11hickory_net: argument 0"}
!146 = distinct !{!146, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri9authority9AuthorityECs5MfxasYgTEl_11hickory_net"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net: argument 0"}
!149 = distinct !{!149, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net: argument 0"}
!152 = distinct !{!152, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net"}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop: argument 0"}
!155 = distinct !{!155, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop"}
!156 = !{!154, !151, !148, !145, !128}
!157 = distinct !{null}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri9authority9AuthorityECs5MfxasYgTEl_11hickory_net: argument 0"}
!160 = distinct !{!160, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri9authority9AuthorityECs5MfxasYgTEl_11hickory_net"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net: argument 0"}
!163 = distinct !{!163, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net"}
!164 = !{!165}
!165 = distinct !{!165, !166, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net: argument 0"}
!166 = distinct !{!166, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net"}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop: argument 0"}
!169 = distinct !{!169, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop"}
!170 = !{!168, !165, !162, !159, !128}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri4path12PathAndQueryECs5MfxasYgTEl_11hickory_net: argument 0"}
!173 = distinct !{!173, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri4path12PathAndQueryECs5MfxasYgTEl_11hickory_net"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net: argument 0"}
!176 = distinct !{!176, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsjSDXC2TkEdJ_4http8byte_str7ByteStrECs5MfxasYgTEl_11hickory_net"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net: argument 0"}
!179 = distinct !{!179, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop: argument 0"}
!182 = distinct !{!182, !"_RNvXs1_NtCsl0TPHHzpGH6_5bytes5bytesNtB5_5BytesNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop"}
!183 = !{!181, !178, !175, !172, !128}
!184 = distinct !{null}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri4path12PathAndQueryECs5MfxasYgTEl_11hickory_net: argument 0"}
!187 = distinct !{!187, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsjSDXC2TkEdJ_4http3uri4path12PathAndQueryECs5MfxasYgTEl_11hickory_net"}
!188 = !{!189}
end_hunk_1
