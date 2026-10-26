Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_net-03aeade8086e102f.hickory_net.434d7c29dbe80863-cgu.00?download=true
inline.NumInlined: 384
inline.NumDeleted: 217
begin_hunk_0_@_RNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0B5_:bb.a
  switch i64 %i.hx, label %default.unreachable990 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241
    i64 3, label %bb.cd
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241
    i64 1, label %bb.ce
  ], !prof !12

bb.cd:                                            ; preds = %bb.cc
  %i.hy = icmp ult ptr %.val.i.i.i.i240, inttoptr (i64 188978561024 to ptr)
  %i.hz = and i64 %i.hw, 1095216660480
  %i.ia = icmp ne i64 %i.hz, 1095216660480
  call void @llvm.assume(i1 %i.hy)
  call void @llvm.assume(i1 %i.ia)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241

bb.ce:                                            ; preds = %bb.cc
  %i.ib = getelementptr i8, ptr %.val.i.i.i.i240, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !alias.scope !783, !noalias !782
  store i8 3, ptr %i.m, align 8, !alias.scope !783, !noalias !782
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241 unwind label %bb.fz

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241: ; preds = %bb.ce, %bb.cd, %bb.cc, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !782
  br label %bb.dc

bb.cf:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  %i.id = load ptr, ptr %.sroa.6419.8..sroa_idx, align 8, !alias.scope !786, !noalias !773, !noundef !6
  %i.ie = load ptr, ptr %.sroa.5418.sroa.3.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !alias.scope !786, !noalias !773, !nonnull !6, !align !8, !noundef !6
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !787, !nonnull !6, !noundef !6
  %i.ih = load ptr, ptr %.sroa.5418.sroa.4.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !alias.scope !786, !noalias !773, !noundef !6
  %i.ii = load i64, ptr %.sroa.5418.sroa.5.0..sroa.5418.8..sroa_idx.sroa_idx, align 8, !alias.scope !786, !noalias !773, !noundef !6
  invoke void %i.ig(ptr noundef %i.id, ptr noundef %i.ih, i64 noundef %i.ii)
          to label %bb.dc unwind label %bb.fz, !inline_history !617

bb.cg:                                            ; preds = %bb.cb
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !777
  unreachable

.noexc162:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h26client14ResponseFutureECs5MfxasYgTEl_11hickory_net.exit
  %.sroa.7427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6419.sroa.4, i64 48, i1 false)
  %.sroa.5425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5425.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5418.sroa.0, i64 7, i1 false)
  %.sroa.6426.sroa.4.0..sroa.6426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6426.sroa.4.0..sroa.6426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6419.sroa.3, i64 32, i1 false)
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 472 ; 3 uses
  store i64 %i.hi, ptr %i.ik, align 8
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
  %i.il = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %.off956 = add i64 %i.il, -2
  %switch957 = icmp ult i64 %.off956, 4
  br i1 %switch957, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %.noexc162
  %i.im = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.in = icmp ult i8 %i.im, 3
  br i1 %i.in, label %bb.cj, label %bb.ci, !prof !715

bb.ci:                                            ; preds = %bb.ch
  %i.io = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE) #21
          to label %bb.cj unwind label %bb.cz

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.sroa.0.0.i247 = phi i8 [ %i.im, %bb.ch ], [ %i.io, %bb.ci ] ; 2 uses
  %i.ip = icmp eq i8 %.sroa.0.0.i247, 0
  br i1 %i.ip, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.iq = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, align 8, !nonnull !6, !align !8, !noundef !6
  %i.ir = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iq, i8 noundef %.sroa.0.0.i247)
          to label %bb.cl unwind label %bb.cz

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.ir, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.is = load ptr, ptr @_RNvNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s_10___CALLSITE, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.ik, ptr %i.ay, align 8
  %.sroa.5435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1_NtCsjSDXC2TkEdJ_4http8responseINtB5_8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtCs5MfxasYgTEl_11hickory_net, ptr %.sroa.5435.0..sroa_idx, align 8
  store ptr @12, ptr %i.az, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ay, ptr %i.iu, align 8
  store ptr %i.az, ptr %i.ba, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @11, ptr %i.iv, align 8
  store i64 1, ptr %i.bb, align 8
  %.sroa.6431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %.sroa.6431.0..sroa_idx, align 8
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1, ptr %.sroa.7432.0..sroa_idx, align 8
  %.sroa.8433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.it, ptr %.sroa.8433.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.is, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb)
          to label %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit: ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.co

bb.co:                                            ; preds = %.noexc162, %bb.cl, %_RNCNCNvNtCs5MfxasYgTEl_11hickory_net2h24send0s8_0B7_.exit, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) @13, i64 32, i1 false)
  %i.ix = invoke noundef align 8 ptr @_RINvMs0_NtNtCsjSDXC2TkEdJ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ik, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ad)
          to label %bb.cp unwind label %bb.cz     ; 3 uses

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.not.i254 = icmp eq ptr %i.ix, null
  br i1 %.not.i254, label %.loopexit960.a, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.iy = getelementptr i8, ptr %i.ix, i64 8
  %.val.i = load ptr, ptr %i.iy, align 8, !noalias !788, !nonnull !6, !noundef !6 ; 4 uses
  %i.iz = getelementptr i8, ptr %i.ix, i64 16
  %.val2.i = load i64, ptr %i.iz, align 8, !noalias !788, !noundef !6 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val2.i
  %i.jb = icmp samesign eq i64 %.val2.i, 0
  br i1 %i.jb, label %.loopexit, label %.lr.ph.i.i.i

bb.cr:                                            ; preds = %.lr.ph.i.i.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i.i.i, i64 1 ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.ja
  br i1 %i.jd, label %bb.ct, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cq, %bb.cr
  %.sroa.02.01.i.i.i = phi ptr [ %i.jc, %bb.cr ], [ %.val.i, %bb.cq ] ; 2 uses
  %i.je = load i8, ptr %.sroa.02.01.i.i.i, align 1, !noalias !788, !noundef !6 ; 2 uses
  %i.jf = add i8 %i.je, -32
  %or.cond.i.i.i = icmp ult i8 %i.jf, 95
  %i.jg = icmp eq i8 %i.je, 9
  %or.cond1.i.i.i = or i1 %i.jg, %or.cond.i.i.i
  br i1 %or.cond1.i.i.i, label %bb.cr, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !790
  store ptr %i.a, ptr %i.k, align 8, !noalias !790
  %.sroa.42.0..sroa_idx.i.i255 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsc_NtNtCsjSDXC2TkEdJ_4http6header5valueNtB5_10ToStrErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i255, align 8, !noalias !790
  %i.jh = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.jh, ptr noundef nonnull @4, ptr noundef nonnull %i.k)
          to label %bb.db unwind label %bb.cz

bb.ct:                                            ; preds = %bb.cr
  %cond = icmp eq i64 %.val2.i, 1
  %i.ji = load i8, ptr %.val.i, align 1, !alias.scope !791 ; 2 uses
  br i1 %cond, label %bb.cu, label %thread-pre-split.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  switch i8 %i.ji, label %thread-pre-split.i.i.i.i [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.ct, %bb.cu
  %cond.i.i.i.i = icmp eq i8 %i.ji, 43            ; 2 uses
  %i.jj = sext i1 %cond.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i = add nsw i64 %.val2.i, %i.jj ; 4 uses
  %.sroa.0.0.idx.i.i.i.i = zext i1 %cond.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.idx.i.i.i.i ; 2 uses
  %i.jk = icmp samesign ult i64 %.sroa.15.0.i.i.i.i, 17
  br i1 %i.jk, label %.preheader.i.i.i.i, label %.preheader56.i.i.i.i.preheader

.preheader.i.i.i.i:                               ; preds = %thread-pre-split.i.i.i.i
  %.not5366.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i, label %.loopexit960, label %.lr.ph.i.i.i.i

.preheader56.i.i.i.i:                             ; preds = %bb.cx
  %.not52.i.i.i.i = icmp eq i64 %i.jm, 0
  br i1 %.not52.i.i.i.i, label %.loopexit960, label %.preheader56.i.i.i.i.preheader

.preheader56.i.i.i.i.preheader:                   ; preds = %thread-pre-split.i.i.i.i, %.preheader56.i.i.i.i
  %.sroa.0.1.i.i.i.i1006 = phi ptr [ %i.jl, %.preheader56.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %thread-pre-split.i.i.i.i ] ; 2 uses
  %.sroa.15.1.i.i.i.i1005 = phi i64 [ %i.jm, %.preheader56.i.i.i.i ], [ %.sroa.15.0.i.i.i.i, %thread-pre-split.i.i.i.i ]
  %.sroa.042.0.i.i.i.i1004 = phi i64 [ %i.jx, %.preheader56.i.i.i.i ], [ 0, %thread-pre-split.i.i.i.i ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i1006, i64 1
  %i.jm = add nsw i64 %.sroa.15.1.i.i.i.i1005, -1 ; 2 uses
  %i.jn = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i.i1004, i64 10) ; 2 uses
  %i.jo = extractvalue { i64, i1 } %i.jn, 0       ; 2 uses
  %i.jp = extractvalue { i64, i1 } %i.jn, 1
  %i.jq = load i8, ptr %.sroa.0.1.i.i.i.i1006, align 1, !alias.scope !791, !noundef !6 ; 2 uses
  br i1 %i.jp, label %bb.cw, label %bb.cv, !prof !15

bb.cv:                                            ; preds = %.preheader56.i.i.i.i.preheader
  %i.jr = zext i8 %i.jq to i32
  %i.js = add nsw i32 %i.jr, -48                  ; 2 uses
  %i.jt = icmp ult i32 %i.js, 10
  br i1 %i.jt, label %bb.cx, label %.loopexit

bb.cw:                                            ; preds = %.preheader56.i.i.i.i.preheader
  %i.ju = add i8 %i.jq, -48
  %i.jv = icmp ult i8 %i.ju, 10
  %spec.select.i = select i1 %i.jv, i8 2, i8 1
  br label %.loopexit

bb.cx:                                            ; preds = %bb.cv
  %i.jw = zext nneg i32 %i.js to i64
  %i.jx = add i64 %i.jo, %i.jw                    ; 3 uses
  %i.jy = icmp ult i64 %i.jx, %i.jo
  br i1 %i.jy, label %.loopexit, label %.preheader56.i.i.i.i, !prof !15

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.cy
  %.sroa.0.269.i.i.i.i = phi ptr [ %i.kf, %bb.cy ], [ %.sroa.0.0.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i = phi i64 [ %i.ke, %bb.cy ], [ %.sroa.15.0.i.i.i.i, %.preheader.i.i.i.i ]
  %.sroa.042.267.i.i.i.i = phi i64 [ %i.kh, %bb.cy ], [ 0, %.preheader.i.i.i.i ]
  %i.jz = load i8, ptr %.sroa.0.269.i.i.i.i, align 1, !alias.scope !791, !noundef !6
  %i.ka = zext i8 %i.jz to i32
  %i.kb = add nsw i32 %i.ka, -48                  ; 2 uses
  %i.kc = icmp ult i32 %i.kb, 10
  br i1 %i.kc, label %bb.cy, label %.loopexit

bb.cy:                                            ; preds = %.lr.ph.i.i.i.i
  %i.kd = mul i64 %.sroa.042.267.i.i.i.i, 10
  %i.ke = add nsw i64 %.sroa.15.268.i.i.i.i, -1   ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i, i64 1
  %i.kg = zext nneg i32 %i.kb to i64
  %i.kh = add i64 %i.kd, %i.kg                    ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.ke, 0
  br i1 %.not53.i.i.i.i, label %.loopexit960, label %.lr.ph.i.i.i.i

.loopexit960:                                     ; preds = %.preheader56.i.i.i.i, %bb.cy, %.preheader.i.i.i.i
  %.sroa.10457.0.ph = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.kh, %bb.cy ], [ %i.jx, %.preheader56.i.i.i.i ] ; 2 uses
  %3 = call i64 @llvm.umax.i64(i64 %.sroa.10457.0.ph, i64 512)
  %4 = call range(i64 512, 4097) i64 @llvm.umin.i64(i64 %3, i64 4096)
  br label %.loopexit960.a

.loopexit:                                        ; preds = %bb.cv, %bb.cx, %.lr.ph.i.i.i.i, %bb.cq, %bb.cu, %bb.cu, %bb.cw
  %.sroa.8455.0.ph = phi i8 [ 1, %.lr.ph.i.i.i.i ], [ 1, %bb.cu ], [ %spec.select.i, %bb.cw ], [ 0, %bb.cq ], [ 1, %bb.cu ], [ 1, %bb.cv ], [ 2, %bb.cx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !792
  store i8 %.sroa.8455.0.ph, ptr %i.i, align 1, !noalias !793
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !793
  store ptr %i.i, ptr %i.h, align 8, !noalias !793
  %.sroa.42.0..sroa_idx.i.i260 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs4_NtNtCsj6eKBz9Db1c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i260, align 8, !noalias !793
  %i.ki = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ki, ptr noundef nonnull @4, ptr noundef nonnull %i.h)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %.loopexit960.a, %bb.ej, %bb.ci, %bb.ck, %bb.cs, %bb.co, %.loopexit
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305

.loopexit960.a:                                   ; preds = %bb.cp, %.loopexit960
  %..i = phi i64 [ %4, %.loopexit960 ], [ 512, %bb.cp ]
  %.sroa.9452.0.ph = phi i64 [ %.sroa.10457.0.ph, %.loopexit960 ], [ undef, %bb.cp ]
  %.sroa.0451.0.ph = phi i64 [ 1, %.loopexit960 ], [ 0, %bb.cp ]
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 424
  store i64 %.sroa.0451.0.ph, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 432
  store i64 %.sroa.9452.0.ph, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 440
  invoke fastcc void @_RNvMs_NtCsl0TPHHzpGH6_5bytes9bytes_mutNtB4_8BytesMut13with_capacity(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.km, i64 noundef %..i)
          to label %.thread unwind label %bb.cz

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit305: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit, %bb.cn, %bb.cz
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kj, %bb.cz ], [ %.pn111.pn.pn.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit ], [ %i.iw, %bb.cn ]
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.kn) #18
          to label %.body233 unwind label %bb.bo

bb.da:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !792
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa_idx, i64 7, i1 false)
  %i.ko = load <2 x i64>, ptr %i.ki, align 8, !noalias !794
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.16.sroa.0.0.copyload = load i64, ptr %.sroa.16.0..sroa_idx, align 8, !noalias !794
  %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.16.sroa.7.0.copyload = load ptr, ptr %.sroa.16.sroa.7.0..sroa.16.0..sroa_idx.sroa_idx, align 8, !noalias !794
  %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.16.sroa.8.0..sroa.16.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !792
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit

bb.db:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !790
  %.sroa.7471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.28, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7471.0..sroa_idx, i64 7, i1 false)
  %.sroa.8472.0.copyload = load ptr, ptr %i.jh, align 8, !noalias !795
  %.sroa.11473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.11473.0.copyload = load i64, ptr %.sroa.11473.0..sroa_idx, align 8, !noalias !795
  %.sroa.14474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.14474.sroa.0.0.copyload = load i64, ptr %.sroa.14474.0..sroa_idx, align 8, !noalias !795
  %.sroa.14474.sroa.5.0..sroa.14474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.14474.sroa.5.0.copyload = load ptr, ptr %.sroa.14474.sroa.5.0..sroa.14474.0..sroa_idx.sroa_idx, align 8, !noalias !795
  %.sroa.14474.sroa.6.0..sroa.14474.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.60, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14474.sroa.6.0..sroa.14474.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !789
  %i.kp = ptrtoint ptr %.sroa.8472.0.copyload to i64
  %i.kq = insertelement <2 x i64> poison, i64 %i.kp, i64 0
  %i.kr = insertelement <2 x i64> %i.kq, i64 %.sroa.11473.0.copyload, i64 1
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes9bytes_mut8BytesMutECs5MfxasYgTEl_11hickory_net.exit: ; preds = %bb.da, %bb.db, %bb.ej
  %.sroa.53.4 = phi ptr [ %.sroa.53.5, %bb.ej ], [ %.sroa.16.sroa.7.0.copyload, %bb.da ], [ %.sroa.14474.sroa.5.0.copyload, %bb.db ]
  %.sroa.49.4 = phi i64 [ %.sroa.49.5, %bb.ej ], [ %.sroa.16.sroa.0.0.copyload, %bb.da ], [ %.sroa.14474.sroa.0.0.copyload, %bb.db ]
  %.sroa.15.4 = phi i8 [ %.sroa.15.5, %bb.ej ], [ 5, %bb.da ], [ 5, %bb.db ]
  %i.ks = phi <2 x i64> [ %i.mz, %bb.ej ], [ %i.ko, %bb.da ], [ %i.kr, %bb.db ]
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 472
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsjSDXC2TkEdJ_4http8response8ResponseNtNtCs4okMlIQ9Z13_2h25share10RecvStreamEECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef align 8 dereferenceable(128) %i.kt)
          to label %bb.ax unwind label %bb.fz

bb.dc:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i237, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i241, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !773
  br label %bb.ax

bb.dd:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !796, !noalias !797
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  switch i8 %.pre, label %default.unreachable990 [
    i8 0, label %bb.de
    i8 1, label %bb.df
    i8 2, label %bb.dg
    i8 3, label %bb.dh
  ]

bb.de:                                            ; preds = %.thread, %bb.dd
  %i.kv = phi ptr [ %i.mv, %.thread ], [ %i.ku, %bb.dd ]
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.kx = load ptr, ptr %i.kw, align 8, !noalias !797, !nonnull !6, !align !8, !noundef !6
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.kx, ptr %i.ky, align 8, !noalias !797
  br label %bb.dh

bb.df:                                            ; preds = %bb.dd
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc265 unwind label %bb.dj

.noexc265:                                        ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.dd
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #22
          to label %.noexc266 unwind label %bb.dj

.noexc266:                                        ; preds = %bb.dg
  unreachable

bb.dh:                                            ; preds = %bb.de, %bb.dd
  %i.kz = phi ptr [ %i.kv, %bb.de ], [ %i.ku, %bb.dd ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 408
  invoke void @_RNvXs_Cs4okMlIQ9Z13_2h2INtB4_6PollFnNCNCNvMs1_NtB4_5shareNtBI_10RecvStream4data00ENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.la, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dk unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lb = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.kz, align 8, !noalias !797
  br label %.body267

bb.dj:                                            ; preds = %bb.dg, %bb.df
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.body267

.body267:                                         ; preds = %bb.di, %bb.dj
  %eh.lpad-body268 = phi { ptr, i32 } [ %i.lc, %bb.dj ], [ %i.lb, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit

bb.dk:                                            ; preds = %bb.dh
  %i.ld = load i8, ptr %i.ax, align 8, !range !799, !alias.scope !798, !noundef !6 ; 3 uses
  %i.le = icmp eq i8 %i.ld, -3                    ; 2 uses
  %spec.select.i264 = select i1 %i.le, i8 3, i8 1
  store i8 %spec.select.i264, ptr %i.kz, align 8, !noalias !797
  br i1 %i.le, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %common.ret

bb.dm:                                            ; preds = %bb.dk
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
  switch i8 %i.ld, label %bb.dn [
    i8 -2, label %bb.du
    i8 -1, label %.noexc
  ]

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !800
  store i8 %i.ld, ptr %i.g, align 8, !noalias !801
  %.sroa.8500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8500.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.37.sroa.0, i64 7, i1 false)
  %.sroa.8500.sroa.7.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %.sroa.37.sroa.2.0.copyload, ptr %.sroa.8500.sroa.7.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !801
  %.sroa.8500.sroa.8.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %.sroa.37.sroa.3.0.copyload, ptr %.sroa.8500.sroa.8.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !801
  %.sroa.8500.sroa.9.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i64 %.sroa.37.sroa.4.0.copyload, ptr %.sroa.8500.sroa.9.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !801
  %.sroa.8500.sroa.10.0..sroa.8500.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %.sroa.37.sroa.5.0.copyload, ptr %.sroa.8500.sroa.10.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !noalias !801
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !803
  store ptr %i.g, ptr %i.e, align 8, !noalias !803
  %.sroa.42.0..sroa_idx.i.i271 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs3_NtCs4okMlIQ9Z13_2h25errorNtB5_5ErrorNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i271, align 8, !noalias !803
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @1, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272 unwind label %bb.do, !noalias !804

bb.do:                                            ; preds = %bb.dn
  %i.lf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4okMlIQ9Z13_2h25error5ErrorECs5MfxasYgTEl_11hickory_net(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsl0TPHHzpGH6_5bytes5bytes5BytesECs5MfxasYgTEl_11hickory_net.exit unwind label %bb.dt, !noalias !804

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272: ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !803
  %i.lg = load <2 x ptr>, ptr %i.f, align 16, !noalias !805
  %.sroa.4.i269.sroa.6.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4.i269.sroa.6.7.copyload = load i64, ptr %.sroa.4.i269.sroa.6.7..sroa_idx, align 16, !noalias !805
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.lh = load i8, ptr %i.g, align 8, !range !11, !alias.scope !808, !noalias !800, !noundef !6
  switch i8 %i.lh, label %bb.dp [
    i8 0, label %bb.ei
    i8 1, label %bb.ds
    i8 2, label %bb.ei
    i8 3, label %bb.ei
  ]

bb.dp:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5MfxasYgTEl_11hickory_net.exit.i.i272
  %.val.i.i.i.i275 = load ptr, ptr %.sroa.8500.sroa.7.0..sroa.8500.0..sroa_idx.sroa_idx, align 8, !alias.scope !808, !noalias !800, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !809
  %i.li = ptrtoint ptr %.val.i.i.i.i275 to i64    ; 2 uses
  %i.lj = and i64 %i.li, 3
  switch i64 %i.lj, label %default.unreachable990 [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276
    i64 3, label %bb.dq
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5MfxasYgTEl_11hickory_net.exit.i.i.i.i276
    i64 1, label %bb.dr
  ], !prof !12

bb.dq:                                            ; preds = %bb.dp
end_hunk_0
