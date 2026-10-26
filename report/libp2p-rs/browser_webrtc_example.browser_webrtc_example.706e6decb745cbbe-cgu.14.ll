Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/browser_webrtc_example.browser_webrtc_example.706e6decb745cbbe-cgu.14?download=true
inline.NumInlined: 912
inline.NumDeleted: 428
begin_hunk_0_@_RNvMNtNtCs66a4hBEq2Hz_2h25proto10connectionINtB2_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB1V_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6server4PeerINtNtNtB16_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE4pollCs9Et6OYOsIUY_22browser_webrtc_example:bb.a
  %i.auz = icmp ult i64 %i.auy, 6
  call void @llvm.assume(i1 %i.auz), !noalias !2220
  %i.ava = icmp samesign ugt i64 %i.auy, 4
  br i1 %i.ava, label %bb.lm, label %_RNCNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frames0_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i

bb.lm:                                            ; preds = %bb.ll
  %i.avb = load ptr, ptr @_RNvNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !noalias !2257, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2257
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 32
  %i.avd = load ptr, ptr %i.avc, align 8, !noalias !2221, !nonnull !12, !noundef !12
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avb, i64 40
  %i.avf = load i64, ptr %i.ave, align 8, !noalias !2221, !noundef !12
  store i64 5, ptr %i.bt, align 8, !noalias !2257
  store ptr %i.avd, ptr %i.rz, align 8, !noalias !2257
  store i64 %i.avf, ptr %i.sa, align 8, !noalias !2257
  %i.avg = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc177 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc177:                                        ; preds = %bb.lm
  %i.avh = extractvalue { ptr, ptr } %i.avg, 0    ; 2 uses
  %i.avi = extractvalue { ptr, ptr } %i.avg, 1    ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avi, i64 24
  %i.avk = load ptr, ptr %i.avj, align 8, !invariant.load !12, !noalias !2221, !nonnull !12
  %i.avl = invoke noundef zeroext i1 %i.avk(ptr noundef %i.avh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bt) #31
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2022

.noexc178:                                        ; preds = %.noexc177
  br i1 %i.avl, label %bb.ln, label %.noexc179

bb.ln:                                            ; preds = %.noexc178
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.avb, ptr noundef nonnull %i.avh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.avi, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ft)
          to label %.noexc179 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc179:                                        ; preds = %bb.ln, %.noexc178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !2257
  br label %_RNCNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frames0_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i

_RNCNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frames0_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %.noexc179, %bb.ll, %.noexc176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !2217
  br label %bb.lo

bb.lo:                                            ; preds = %bb.lt, %bb.lq, %bb.lp, %_RNCNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frames0_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk), !noalias !2217
  %i.avm = load i32, ptr %i.fu, align 4, !noalias !2217, !noundef !12
  %i.avn = load i32, ptr %i.rv, align 4, !noalias !2217, !noundef !12
  invoke void @_RNvMs_NtNtNtCs66a4hBEq2Hz_2h25proto7streams7streamsINtB4_10DynStreamsINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_resetCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.fk, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.oa, i32 noundef %i.avm, i32 noundef %i.avn)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc180:                                        ; preds = %bb.lo
  %i.avo = load i8, ptr %i.fk, align 8, !range !37, !noalias !2217, !noundef !12
  %.not189.i.i = icmp eq i8 %i.avo, -1
  br i1 %.not189.i.i, label %bb.lv, label %bb.lu

bb.lp:                                            ; preds = %.noexc175, %.noexc174, %bb.lh, %bb.fn
  %i.avp = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2217
  %.not188.i.i = icmp eq i8 %i.avp, 0
  br i1 %.not188.i.i, label %bb.lq, label %bb.lo

bb.lq:                                            ; preds = %bb.lp
  %i.avq = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2217 ; 2 uses
  %i.avr = icmp ult i64 %i.avq, 6
  call void @llvm.assume(i1 %i.avr)
  %i.avs = icmp samesign ugt i64 %i.avq, 4
  br i1 %i.avs, label %bb.lr, label %bb.lo

bb.lr:                                            ; preds = %bb.lq
  %i.avt = load ptr, ptr @_RNvNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !noalias !2217, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp), !noalias !2217
  %i.avu = getelementptr inbounds nuw i8, ptr %i.avt, i64 32
  %i.avv = load ptr, ptr %i.avu, align 8, !noalias !2221, !nonnull !12, !noundef !12
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avt, i64 40
  %i.avx = load i64, ptr %i.avw, align 8, !noalias !2221, !noundef !12
  store i64 5, ptr %i.fp, align 8, !noalias !2217
  store ptr %i.avv, ptr %i.sb, align 8, !noalias !2217
  store i64 %i.avx, ptr %i.sc, align 8, !noalias !2217
  %i.avy = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc181:                                        ; preds = %bb.lr
  %i.avz = extractvalue { ptr, ptr } %i.avy, 0    ; 2 uses
  %i.awa = extractvalue { ptr, ptr } %i.avy, 1    ; 2 uses
  %i.awb = getelementptr inbounds nuw i8, ptr %i.awa, i64 24
  %i.awc = load ptr, ptr %i.awb, align 8, !invariant.load !12, !noalias !2221, !nonnull !12
  %i.awd = invoke noundef zeroext i1 %i.awc(ptr noundef %i.avz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fp) #31
          to label %.noexc182 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2022

.noexc182:                                        ; preds = %.noexc181
  br i1 %i.awd, label %bb.ls, label %bb.lt

bb.ls:                                            ; preds = %.noexc182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo), !noalias !2217
  %i.awe = load ptr, ptr @_RNvNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionpE10recv_frames0_10___CALLSITE, align 8, !noalias !2217, !nonnull !12, !align !16, !noundef !12
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn), !noalias !2217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm), !noalias !2217
  store <2 x ptr> <ptr @68, ptr inttoptr (i64 31 to ptr)>, ptr %i.fm, align 16, !noalias !2217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl), !noalias !2217
  store ptr %i.fu, ptr %i.fl, align 8, !noalias !2217
  store ptr %i.fm, ptr %i.fn, align 8, !noalias !2217
  store ptr @4, ptr %i.sd, align 8, !noalias !2217
  store ptr %i.fl, ptr %i.se, align 8, !noalias !2217
  store ptr @69, ptr %i.sf, align 8, !noalias !2217
  store i64 1, ptr %i.fo, align 8, !noalias !2217
  store ptr %i.fn, ptr %.sroa.4125.0..sroa_idx.i.i, align 8, !noalias !2217
  store i64 2, ptr %.sroa.5126.0..sroa_idx.i.i, align 8, !noalias !2217
  store ptr %i.awf, ptr %i.sg, align 8, !noalias !2217
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.avt, ptr noundef nonnull %i.avz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.awa, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fo)
          to label %.noexc183 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc183:                                        ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo), !noalias !2217
  br label %bb.lt

bb.lt:                                            ; preds = %.noexc183, %.noexc182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp), !noalias !2217
  br label %bb.lo

bb.lu:                                            ; preds = %.noexc180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(40) %i.fk, i64 40, i1 false), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !2217
  br label %_RNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB5_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frameCs9Et6OYOsIUY_22browser_webrtc_example.exit.i

bb.lv:                                            ; preds = %.noexc180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk), !noalias !2217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !2217
  br label %.thread

bb.lw:                                            ; preds = %.noexc116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.467.sroa.6.sroa.4.0..sroa.467.sroa.6.0..sroa.467.0..sroa_idx.sroa_idx.sroa_idx.i, i64 32, i1 false), !noalias !2165
  %i.awg = load <2 x i32>, ptr %.sroa.467.sroa.5.0..sroa.467.0..sroa_idx.sroa_idx.i, align 8, !noalias !2165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ih), !noalias !2165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4196.sroa.4.0..sroa.4196.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.9.sroa.12.sroa.9.i, i64 32, i1 false), !noalias !2212
  store <2 x i32> %i.awg, ptr %i.jd, align 8, !alias.scope !2163
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.15.i)
  br label %bb.no

_RNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB5_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frameCs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.lu, %bb.lf, %.noexc163, %bb.in, %bb.he, %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.19.sroa.0.i, i64 40, i1 false), !noalias !2165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.15.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jd, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.524.sroa.5.sroa.0.i, i64 40, i1 false), !noalias !2212
  br label %bb.no

.thread:                                          ; preds = %bb.gi, %bb.hf, %bb.ho, %bb.io, %bb.jq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i, %bb.lg, %bb.lv, %.noexc123
  %.sroa.15.0.ph.i.ph = phi i32 [ 3, %.noexc123 ], [ 2, %bb.lv ], [ 2, %bb.lg ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i ], [ 2, %bb.jq ], [ 2, %bb.io ], [ 2, %bb.ho ], [ 2, %bb.hf ], [ 2, %bb.gi ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.524.sroa.5.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.19.sroa.0.i, i64 52, i1 false), !noalias !2165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.345.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.sroa.15.i, i64 3, i1 false), !noalias !2165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.15.i)
  br label %bb.ly

bb.lx:                                            ; preds = %_RNCNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB7_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frames2_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.ix, %bb.iy, %bb.jb
  %.sroa.15.4.copyload.i = load i32, ptr %i.ex, align 4, !noalias !2224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.19.sroa.0.i, ptr noundef nonnull align 4 dereferenceable(52) %.sroa.8141.4..sroa_idx.i, i64 52, i1 false), !noalias !2224
  %.sroa.19.sroa.14.0.copyload.i = load i8, ptr %.sroa.19.sroa.14.0..sroa.19.4..sroa_idx.sroa_idx.i, align 4, !noalias !2224 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.sroa.15.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.sroa.15.0..sroa.19.4..sroa_idx.sroa_idx.i, i64 3, i1 false), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !2217
  %i.awh = freeze i32 %.sroa.15.4.copyload.i      ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.524.sroa.5.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.19.sroa.0.i, i64 52, i1 false), !noalias !2165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.345.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.sroa.15.i, i64 3, i1 false), !noalias !2165
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.sroa.15.i)
  %i.awi = icmp ugt i32 %i.awh, 1
  br i1 %i.awi, label %bb.ly, label %.thread253.i

bb.ly:                                            ; preds = %.thread, %bb.lx
  %.sroa.15.0.ph.i309 = phi i32 [ %.sroa.15.0.ph.i.ph, %.thread ], [ %i.awh, %bb.lx ]
  %i.awj = icmp eq i32 %.sroa.15.0.ph.i309, 3
  br i1 %i.awj, label %bb.nn, label %bb.nm

.thread253.i:                                     ; preds = %bb.lx
  call void @llvm.experimental.noalias.scope.decl(metadata !2258)
  call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %i.awk = and i8 %.sroa.19.sroa.14.0.copyload.i, 1
  %.not.i89.i = icmp eq i8 %i.awk, 0
  br i1 %.not.i89.i, label %bb.lz, label %bb.ma

bb.lz:                                            ; preds = %.thread253.i
  %i.awl = load i32, ptr %i.mr, align 8, !range !2177, !alias.scope !2261, !noundef !12
  %.not62.i.i = icmp eq i32 %i.awl, 2
  br i1 %.not62.i.i, label %bb.mb, label %.invoke, !prof !23

bb.ma:                                            ; preds = %.thread253.i
  %i.awm = load i32, ptr %i.mq, align 8, !range !2177, !alias.scope !2261, !noundef !12
  %i.awn = icmp eq i32 %i.awm, 1
  br i1 %i.awn, label %bb.mc, label %bb.my

.invoke:                                          ; preds = %bb.mq, %bb.lz
  %i.awo = phi ptr [ @0, %bb.lz ], [ @5, %bb.mq ]
  %i.awp = phi i64 [ 39, %bb.lz ], [ 94, %bb.mq ]
  %i.awq = phi ptr [ @2, %bb.lz ], [ @7, %bb.mq ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.awo, i64 noundef %i.awp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.awq) #30
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.mb:                                            ; preds = %bb.lz
  store i32 %i.awh, ptr %i.mr, align 8, !alias.scope !2262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.mt, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.524.sroa.5.sroa.0.i, i64 52, i1 false), !noalias !2263
  store i8 %.sroa.19.sroa.14.0.copyload.i, ptr %i.ms, align 8, !alias.scope !2262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7172.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.345.sroa.3.i, i64 3, i1 false), !noalias !2263
  br label %bb.nm

bb.mc:                                            ; preds = %bb.ma
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !2264
  store ptr %i.nf, ptr %i.cn, align 8, !noalias !2264
  %i.awr = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2264
  %i.aws = icmp ult i64 %i.awr, 2
  br i1 %i.aws, label %bb.md, label %bb.ml

bb.md:                                            ; preds = %bb.mc
  %i.awt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, i64 16) monotonic, align 8, !noalias !2264 ; 3 uses
  switch i8 %i.awt, label %bb.me [
    i8 0, label %bb.ml
    i8 1, label %bb.mf
    i8 2, label %bb.mf
  ], !prof !38

bb.me:                                            ; preds = %bb.md
  %i.awu = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE) #29
          to label %.noexc185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc185:                                        ; preds = %bb.me
  %i.awv = icmp eq i8 %i.awu, 0
  br i1 %i.awv, label %bb.ml, label %bb.mf

bb.mf:                                            ; preds = %bb.md, %.noexc185, %bb.md
  %.sroa.06.0.i90.i = phi i8 [ %i.awu, %.noexc185 ], [ %i.awt, %bb.md ], [ %i.awt, %bb.md ]
  %i.aww = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12
  %i.awx = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aww, i8 noundef %.sroa.06.0.i90.i)
          to label %.noexc186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc186:                                        ; preds = %bb.mf
  br i1 %i.awx, label %bb.mg, label %bb.ml

bb.mg:                                            ; preds = %.noexc186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !2264
  %i.awy = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !2264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !2264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !2264
  store ptr %i.cn, ptr %i.cj, align 8, !noalias !2264
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs66a4hBEq2Hz_2h25frame8settings8SettingsNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example, ptr %.sroa.437.0..sroa_idx.i.i, align 8, !noalias !2264
  store ptr @3, ptr %i.ck, align 8, !noalias !2264
  store ptr %i.cj, ptr %i.sh, align 8, !noalias !2264
  store ptr %i.ck, ptr %i.cl, align 8, !noalias !2264
  store ptr @4, ptr %i.si, align 8, !noalias !2264
  store i64 1, ptr %i.cm, align 8, !noalias !2264
  store ptr %i.cl, ptr %.sroa.08.sroa.4.0..sroa_idx.i91.i, align 8, !noalias !2264
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx.i92.i, align 8, !noalias !2264
  store ptr %i.awz, ptr %.sroa.4.0..sroa_idx.i93.i, align 8, !noalias !2264
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %.noexc187 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc187:                                        ; preds = %bb.mg
  %i.axa = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2265
  %.not.i.i94.i = icmp eq i8 %i.axa, 0
  br i1 %.not.i.i94.i, label %bb.mh, label %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerE0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.mh:                                            ; preds = %.noexc187
  %i.axb = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2265 ; 2 uses
  %i.axc = icmp ult i64 %i.axb, 6
  call void @llvm.assume(i1 %i.axc)
  %i.axd = icmp samesign ugt i64 %i.axb, 3
  br i1 %i.axd, label %bb.mi, label %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerE0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.mi:                                            ; preds = %bb.mh
  %i.axe = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !noalias !2265, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !2265
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 32
  %i.axg = load ptr, ptr %i.axf, align 8, !noalias !2266, !nonnull !12, !noundef !12
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axe, i64 40
  %i.axi = load i64, ptr %i.axh, align 8, !noalias !2266, !noundef !12
  store i64 4, ptr %i.bv, align 8, !noalias !2265
  store ptr %i.axg, ptr %i.sj, align 8, !noalias !2265
  store i64 %i.axi, ptr %i.sk, align 8, !noalias !2265
  %i.axj = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc188:                                        ; preds = %bb.mi
  %i.axk = extractvalue { ptr, ptr } %i.axj, 0    ; 2 uses
  %i.axl = extractvalue { ptr, ptr } %i.axj, 1    ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 24
  %i.axn = load ptr, ptr %i.axm, align 8, !invariant.load !12, !noalias !2266, !nonnull !12
  %i.axo = invoke noundef zeroext i1 %i.axn(ptr noundef %i.axk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bv) #31
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2022

.noexc189:                                        ; preds = %.noexc188
  br i1 %i.axo, label %bb.mj, label %.noexc190

bb.mj:                                            ; preds = %.noexc189
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.axe, ptr noundef nonnull %i.axk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.axl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc190:                                        ; preds = %bb.mj, %.noexc189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !2265
  br label %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerE0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerE0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %.noexc190, %bb.mh, %.noexc187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !2264
  br label %bb.mk

bb.mk:                                            ; preds = %bb.mp, %bb.mm, %bb.ml, %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerE0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  %i.axp = load i32, ptr %i.nj, align 4, !range !17, !alias.scope !2261, !noundef !12
  %i.axq = trunc nuw i32 %i.axp to i1
  br i1 %i.axq, label %bb.mq, label %bb.mr

bb.ml:                                            ; preds = %.noexc186, %.noexc185, %bb.md, %bb.mc
  %i.axr = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2264
  %.not63.i.i = icmp eq i8 %i.axr, 0
  br i1 %.not63.i.i, label %bb.mm, label %bb.mk

bb.mm:                                            ; preds = %bb.ml
  %i.axs = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2264 ; 2 uses
  %i.axt = icmp ult i64 %i.axs, 6
  call void @llvm.assume(i1 %i.axt)
  %i.axu = icmp samesign ugt i64 %i.axs, 3
  br i1 %i.axu, label %bb.mn, label %bb.mk

bb.mn:                                            ; preds = %bb.mm
  %i.axv = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !2264
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 32
  %i.axx = load ptr, ptr %i.axw, align 8, !noalias !2266, !nonnull !12, !noundef !12
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axv, i64 40
  %i.axz = load i64, ptr %i.axy, align 8, !noalias !2266, !noundef !12
  store i64 4, ptr %i.ci, align 8, !noalias !2264
  store ptr %i.axx, ptr %i.sl, align 8, !noalias !2264
  store i64 %i.axz, ptr %i.sm, align 8, !noalias !2264
  %i.aya = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc191:                                        ; preds = %bb.mn
  %i.ayb = extractvalue { ptr, ptr } %i.aya, 0    ; 2 uses
  %i.ayc = extractvalue { ptr, ptr } %i.aya, 1    ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 24
  %i.aye = load ptr, ptr %i.ayd, align 8, !invariant.load !12, !noalias !2266, !nonnull !12
  %i.ayf = invoke noundef zeroext i1 %i.aye(ptr noundef %i.ayb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci) #31
          to label %.noexc192 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2022

.noexc192:                                        ; preds = %.noexc191
  br i1 %i.ayf, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %.noexc192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !2264
  %i.ayg = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settings10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !2264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !2264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !2264
  store ptr %i.cn, ptr %i.ce, align 8, !noalias !2264
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCs66a4hBEq2Hz_2h25frame8settings8SettingsNtB6_5Debug3fmtCs9Et6OYOsIUY_22browser_webrtc_example, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !2264
  store ptr @3, ptr %i.cf, align 8, !noalias !2264
  store ptr %i.ce, ptr %i.sn, align 8, !noalias !2264
  store ptr %i.cf, ptr %i.cg, align 8, !noalias !2264
  store ptr @4, ptr %i.so, align 8, !noalias !2264
  store i64 1, ptr %i.ch, align 8, !noalias !2264
  store ptr %i.cg, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !noalias !2264
  store i64 1, ptr %.sroa.547.0..sroa_idx.i.i, align 8, !noalias !2264
  store ptr %i.ayh, ptr %i.sp, align 8, !noalias !2264
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.axv, ptr noundef nonnull %i.ayb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ayc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ch)
          to label %.noexc193 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc193:                                        ; preds = %bb.mo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !2264
  br label %bb.mp

bb.mp:                                            ; preds = %.noexc193, %.noexc192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !2264
  br label %bb.mk

bb.mq:                                            ; preds = %bb.mk
  %i.ayi = load i32, ptr %i.nk, align 8, !alias.scope !2261 ; 2 uses
  %i.ayj = add i32 %i.ayi, -16384
  %or.cond.i.i = icmp ult i32 %i.ayj, 16760832
  br i1 %or.cond.i.i, label %bb.ms, label %.invoke, !prof !2267

bb.mr:                                            ; preds = %.noexc195, %bb.mk
  %i.ayk = load i32, ptr %i.nl, align 4, !range !17, !alias.scope !2261, !noundef !12
  %i.ayl = trunc nuw i32 %i.ayk to i1
  br i1 %i.ayl, label %bb.mt, label %bb.mu

bb.ms:                                            ; preds = %bb.mq
  %i.aym = zext nneg i32 %i.ayi to i64            ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs66a4hBEq2Hz_2h25proto10connectionINtB2_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB1V_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6server4PeerINtNtNtB16_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE4pollCs9Et6OYOsIUY_22browser_webrtc_example:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !2264
  br label %_RINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB24_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1f_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4S_NtNtB7_6server4PeerECs9Et6OYOsIUY_22browser_webrtc_example.exit.i

bb.mx:                                            ; preds = %.noexc198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !2264
  store i32 2, ptr %i.mq, align 8, !alias.scope !2261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !2264
  br label %bb.nm

bb.my:                                            ; preds = %bb.ma
  %i.aza = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2264
  %i.azb = icmp ult i64 %i.aza, 2
  br i1 %i.azb, label %bb.mz, label %bb.nh

bb.mz:                                            ; preds = %bb.my
  %i.azc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, i64 16) monotonic, align 8, !noalias !2264 ; 3 uses
  switch i8 %i.azc, label %bb.na [
    i8 0, label %bb.nh
    i8 1, label %bb.nb
    i8 2, label %bb.nb
  ], !prof !38

bb.na:                                            ; preds = %bb.mz
  %i.azd = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE) #29
          to label %.noexc199 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc199:                                        ; preds = %bb.na
  %i.aze = icmp eq i8 %i.azd, 0
  br i1 %i.aze, label %bb.nh, label %bb.nb

bb.nb:                                            ; preds = %bb.mz, %.noexc199, %bb.mz
  %.sroa.026.0.i.i = phi i8 [ %i.azd, %.noexc199 ], [ %i.azc, %bb.mz ], [ %i.azc, %bb.mz ]
  %i.azf = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12
  %i.azg = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.azf, i8 noundef %.sroa.026.0.i.i)
          to label %.noexc200 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc200:                                        ; preds = %bb.nb
  br i1 %i.azg, label %bb.nc, label %bb.nh

bb.nc:                                            ; preds = %.noexc200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !2264
  %i.azh = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !2264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !2264
  store <2 x ptr> <ptr @8, ptr inttoptr (i64 137 to ptr)>, ptr %i.ca, align 16, !noalias !2264
  store ptr %i.ca, ptr %i.cb, align 8, !noalias !2264
  store ptr @4, ptr %i.sy, align 8, !noalias !2264
  store i64 1, ptr %i.cc, align 8, !noalias !2264
  store ptr %i.cb, ptr %.sroa.028.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2264
  store i64 1, ptr %.sroa.028.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2264
  store ptr %i.azi, ptr %.sroa.429.0..sroa_idx.i.i, align 8, !noalias !2264
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.azh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc)
          to label %.noexc201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc201:                                        ; preds = %bb.nc
  %i.azj = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2270
  %.not.i66.i.i = icmp eq i8 %i.azj, 0
  br i1 %.not.i66.i.i, label %bb.nd, label %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerEs_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.nd:                                            ; preds = %.noexc201
  %i.azk = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2270 ; 2 uses
  %i.azl = icmp ult i64 %i.azk, 6
  call void @llvm.assume(i1 %i.azl)
  %i.azm = icmp samesign ugt i64 %i.azk, 3
  br i1 %i.azm, label %bb.ne, label %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerEs_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

bb.ne:                                            ; preds = %bb.nd
  %i.azn = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !noalias !2270, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2270
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 32
  %i.azp = load ptr, ptr %i.azo, align 8, !noalias !2271, !nonnull !12, !noundef !12
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azn, i64 40
  %i.azr = load i64, ptr %i.azq, align 8, !noalias !2271, !noundef !12
  store i64 4, ptr %i.bu, align 8, !noalias !2270
  store ptr %i.azp, ptr %i.sz, align 8, !noalias !2270
  store i64 %i.azr, ptr %i.ta, align 8, !noalias !2270
  %i.azs = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc202 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc202:                                        ; preds = %bb.ne
  %i.azt = extractvalue { ptr, ptr } %i.azs, 0    ; 2 uses
  %i.azu = extractvalue { ptr, ptr } %i.azs, 1    ; 2 uses
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azu, i64 24
  %i.azw = load ptr, ptr %i.azv, align 8, !invariant.load !12, !noalias !2271, !nonnull !12
  %i.azx = invoke noundef zeroext i1 %i.azw(ptr noundef %i.azt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bu) #31
          to label %.noexc203 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2022

.noexc203:                                        ; preds = %.noexc202
  br i1 %i.azx, label %bb.nf, label %.noexc204

bb.nf:                                            ; preds = %.noexc203
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.azn, ptr noundef nonnull %i.azt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.azu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc)
          to label %.noexc204 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc204:                                        ; preds = %bb.nf, %.noexc203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !2270
  br label %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerEs_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i

_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerEs_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i: ; preds = %.noexc204, %bb.nd, %.noexc201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !2264
  br label %bb.ng

bb.ng:                                            ; preds = %bb.nl, %bb.ni, %bb.nh, %_RNCINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB5_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB26_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB7_7streams10prioritize11PrioritizedINtNtNtB1h_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4U_NtNtB9_6server4PeerEs_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i, i8 0, i64 16, i1 false), !noalias !2165
  br label %_RINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB24_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1f_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4S_NtNtB7_6server4PeerECs9Et6OYOsIUY_22browser_webrtc_example.exit.i

bb.nh:                                            ; preds = %.noexc200, %.noexc199, %bb.mz, %bb.my
  %i.azy = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2264
  %.not65.i.i = icmp eq i8 %i.azy, 0
  br i1 %.not65.i.i, label %bb.ni, label %bb.ng

bb.ni:                                            ; preds = %bb.nh
  %i.azz = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2264 ; 2 uses
  %i.baa = icmp ult i64 %i.azz, 6
  call void @llvm.assume(i1 %i.baa)
  %i.bab = icmp samesign ugt i64 %i.azz, 3
  br i1 %i.bab, label %bb.nj, label %bb.ng

bb.nj:                                            ; preds = %bb.ni
  %i.bac = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !2264
  %i.bad = getelementptr inbounds nuw i8, ptr %i.bac, i64 32
  %i.bae = load ptr, ptr %i.bad, align 8, !noalias !2271, !nonnull !12, !noundef !12
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bac, i64 40
  %i.bag = load i64, ptr %i.baf, align 8, !noalias !2271, !noundef !12
  store i64 4, ptr %i.bz, align 8, !noalias !2264
  store ptr %i.bae, ptr %i.tb, align 8, !noalias !2264
  store i64 %i.bag, ptr %i.tc, align 8, !noalias !2264
  %i.bah = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc205 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc205:                                        ; preds = %bb.nj
  %i.bai = extractvalue { ptr, ptr } %i.bah, 0    ; 2 uses
  %i.baj = extractvalue { ptr, ptr } %i.bah, 1    ; 2 uses
  %i.bak = getelementptr inbounds nuw i8, ptr %i.baj, i64 24
  %i.bal = load ptr, ptr %i.bak, align 8, !invariant.load !12, !noalias !2271, !nonnull !12
  %i.bam = invoke noundef zeroext i1 %i.bal(ptr noundef %i.bai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz) #31
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2022

.noexc206:                                        ; preds = %.noexc205
  br i1 %i.bam, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %.noexc206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !2264
  %i.ban = load ptr, ptr @_RNvNvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB4_8Settings13recv_settingss_10___CALLSITE, align 8, !noalias !2264, !nonnull !12, !align !16, !noundef !12
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !2264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !2264
  store <2 x ptr> <ptr @8, ptr inttoptr (i64 137 to ptr)>, ptr %i.bw, align 16, !noalias !2264
  store ptr %i.bw, ptr %i.bx, align 8, !noalias !2264
  store ptr @4, ptr %i.td, align 8, !noalias !2264
  store i64 1, ptr %i.by, align 8, !noalias !2264
  store ptr %i.bx, ptr %.sroa.453.0..sroa_idx.i.i, align 8, !noalias !2264
  store i64 1, ptr %.sroa.554.0..sroa_idx.i.i, align 8, !noalias !2264
  store ptr %i.bao, ptr %i.te, align 8, !noalias !2264
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bac, ptr noundef nonnull %i.bai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.baj, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.by)
          to label %.noexc207 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc207:                                        ; preds = %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !2264
  br label %bb.nl

bb.nl:                                            ; preds = %.noexc207, %.noexc206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !2264
  br label %bb.ng

bb.nm:                                            ; preds = %bb.mx, %bb.mb, %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii), !noalias !2165
  br label %.noexc108

bb.nn:                                            ; preds = %bb.ly
  store i8 -1, ptr %i.jd, align 8, !alias.scope !2163
  br label %bb.no

_RINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB24_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1f_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4S_NtNtB7_6server4PeerECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.ng, %bb.mw
  %.sroa.0173.0.i = phi i8 [ %i.ayy, %bb.mw ], [ 1, %bb.ng ]
  %.sroa.9.0.i = phi i8 [ %.sroa.9.0.copyload176.i, %bb.mw ], [ 1, %bb.ng ]
  %.sroa.10.0.i = phi i16 [ %.sroa.10.0.copyload178.i, %bb.mw ], [ undef, %bb.ng ]
  %.sroa.10179.0.i = phi i32 [ %.sroa.10179.0.copyload181.i, %bb.mw ], [ 1, %bb.ng ]
  %i.bap = phi <2 x ptr> [ %i.ayz, %bb.mw ], [ <ptr @9, ptr inttoptr (i64 1 to ptr)>, %bb.ng ]
  store i8 %.sroa.0173.0.i, ptr %i.jd, align 8, !alias.scope !2163
  store i8 %.sroa.9.0.i, ptr %.sroa.4233.0..sroa_idx.i, align 1, !alias.scope !2163
  store i16 %.sroa.10.0.i, ptr %.sroa.5234.0..sroa_idx.i, align 2, !alias.scope !2163
  store i32 %.sroa.10179.0.i, ptr %.sroa.4196.0..sroa_idx.i, align 4, !alias.scope !2163
  store <2 x ptr> %i.bap, ptr %.sroa.4196.sroa.4.0..sroa.4196.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9238.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.i, i64 16, i1 false), !noalias !2212
  br label %bb.no

bb.no:                                            ; preds = %_RINvMNtNtCs66a4hBEq2Hz_2h25proto8settingsNtB3_8Settings13recv_settingsINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB24_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEINtNtNtB5_7streams10prioritize11PrioritizedINtNtNtB1f_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEB4S_NtNtB7_6server4PeerECs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.nn, %_RNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB5_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10recv_frameCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.lw, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ii), !noalias !2165
  br label %bb.nx

.loopexit322:                                     ; preds = %_RNvMNtNtCs66a4hBEq2Hz_2h25proto10connectionINtB2_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB1V_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6server4PeerINtNtNtB16_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit.i, %bb.es
  %.sroa.0130.0.i519 = phi i8 [ %.sroa.0130.0.i, %bb.es ], [ -2, %_RNvMNtNtCs66a4hBEq2Hz_2h25proto10connectionINtB2_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB1V_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6server4PeerINtNtNtB16_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10poll_readyCs9Et6OYOsIUY_22browser_webrtc_example.exit.i ]
  store i8 %.sroa.0130.0.i519, ptr %i.jd, align 8, !alias.scope !2163
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  br label %bb.nx

bb.np:                                            ; preds = %bb.er
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9238.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !2163
  store i8 1, ptr %i.jd, align 8, !alias.scope !2163
  store i8 1, ptr %.sroa.4233.0..sroa_idx.i, align 1, !alias.scope !2163
  store i32 %i.aee, ptr %.sroa.4196.0..sroa_idx.i, align 4, !alias.scope !2163
  store <2 x ptr> <ptr @9, ptr inttoptr (i64 1 to ptr)>, ptr %.sroa.4196.sroa.4.0..sroa.4196.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !2163
  br label %bb.nx

bb.nq:                                            ; preds = %bb.er
  store i8 -1, ptr %i.jd, align 8, !alias.scope !2163
  br label %bb.nx

bb.nr:                                            ; preds = %bb.am
  %i.baq = load i32, ptr %i.lu, align 4, !noundef !12 ; 3 uses
  %i.bar = load i8, ptr %i.lv, align 1, !range !30, !noundef !12
  call void @llvm.experimental.noalias.scope.decl(metadata !2272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !2273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !2273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.ny, i64 40, i1 false), !noalias !2274
  store ptr null, ptr %i.ny, align 8, !alias.scope !2272
  %i.bas = load ptr, ptr %i.bi, align 8, !noalias !2273, !noundef !12 ; 2 uses
  %.not.i208 = icmp eq ptr %i.bas, null
  br i1 %.not.i208, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bat = load ptr, ptr %i.bas, align 8, !noalias !2275, !nonnull !12, !noundef !12
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 3 uses
  %.sroa.gep39.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bau = load ptr, ptr %.sroa.gep39.i, align 8, !noalias !2275, !noundef !12
  %.sroa.gep41.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %i.bav = load i64, ptr %.sroa.gep41.i, align 8, !noalias !2275, !noundef !12
  invoke void %i.bat(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.bj, ptr noundef nonnull align 8 %.sroa.gep.i, ptr noundef %i.bau, i64 noundef %i.bav)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB4h_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6server4PeerINtNtNtB3s_5proto2h27SendBufB1A_EE10take_error0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i unwind label %.body.i, !noalias !2276, !inline_history !2093

.body.i:                                          ; preds = %bb.ns
  %i.baw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  %i.bax = load ptr, ptr %i.bi, align 8, !alias.scope !2277, !noalias !2273, !noundef !12 ; 2 uses
  %i.bay = icmp eq ptr %i.bax, null
  br i1 %i.bay, label %.body, label %bb.nt

bb.nt:                                            ; preds = %.body.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  call void @llvm.experimental.noalias.scope.decl(metadata !2280)
  %i.baz = load ptr, ptr %.sroa.gep.i, align 8, !alias.scope !2281, !noalias !2273, !noundef !12
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bax, i64 32
  %i.bbb = load ptr, ptr %i.bba, align 8, !noalias !2282, !nonnull !12, !noundef !12
  %i.bbc = load ptr, ptr %.sroa.gep39.i, align 8, !alias.scope !2281, !noalias !2273, !noundef !12
  %i.bbd = load i64, ptr %.sroa.gep41.i, align 8, !alias.scope !2281, !noalias !2273, !noundef !12
  invoke void %i.bbb(ptr noundef %i.baz, ptr noundef %i.bbc, i64 noundef %i.bbd)
          to label %.body unwind label %bb.nw, !noalias !2273, !inline_history !2

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB4h_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6server4PeerINtNtNtB3s_5proto2h27SendBufB1A_EE10take_error0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %bb.ns
  %.sroa.gep43.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 36
  %i.bbe = load i32, ptr %.sroa.gep43.i, align 4, !noalias !2275, !noundef !12 ; 2 uses
  %.sroa.0.0.copyload.pre.i = load ptr, ptr %i.bj, align 8, !noalias !2273 ; 4 uses
  %.sroa.6.0..sroa_idx29.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.6.0..sroa_idx29.phi.trans.insert.i, align 8, !noalias !2273 ; 3 uses
  %.sroa.8.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.8.0.copyload.pre.i = load i64, ptr %.sroa.8.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !2273 ; 3 uses
  %.sroa.10.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.10.0.copyload.pre.i = load ptr, ptr %.sroa.10.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !2273 ; 3 uses
  %.pre.i = load ptr, ptr %i.bi, align 8, !alias.scope !2283, !noalias !2273 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2283)
  %i.bbf = icmp eq ptr %.pre.i, null
  br i1 %i.bbf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i, label %bb.nu

bb.nu:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB4h_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6server4PeerINtNtNtB3s_5proto2h27SendBufB1A_EE10take_error0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2284)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  call void @llvm.experimental.noalias.scope.decl(metadata !2286)
  %i.bbg = load ptr, ptr %.sroa.gep.i, align 8, !alias.scope !2287, !noalias !2273, !noundef !12
  %i.bbh = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.bbi = load ptr, ptr %i.bbh, align 8, !noalias !2288, !nonnull !12, !noundef !12
  %i.bbj = load ptr, ptr %.sroa.gep39.i, align 8, !alias.scope !2287, !noalias !2273, !noundef !12
  %i.bbk = load i64, ptr %.sroa.gep41.i, align 8, !alias.scope !2287, !noalias !2273, !noundef !12
  invoke void %i.bbi(ptr noundef %i.bbg, ptr noundef %i.bbj, i64 noundef %i.bbk)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i unwind label %bb.nv, !noalias !2273, !inline_history !2

bb.nv:                                            ; preds = %bb.nu
  %i.bbl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.pre.i) ]
  %i.bbm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.pre.i, i64 32
  %i.bbn = load ptr, ptr %i.bbm, align 8, !noalias !2289, !nonnull !12, !noundef !12
  invoke void %i.bbn(ptr noundef %.sroa.10.0.copyload.pre.i, ptr noundef %.sroa.6.0.copyload.pre.i, i64 noundef %.sroa.8.0.copyload.pre.i)
          to label %.body unwind label %bb.nw, !noalias !2273, !inline_history !4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i: ; preds = %bb.nu, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayE6map_orTNtNtCs1eA6bChxBZF_5bytes5bytes5BytesNtNtBN_6reason6ReasonENCNvMNtNtBP_5proto10connectionINtB2B_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB4h_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtBP_6server4PeerINtNtNtB3s_5proto2h27SendBufB1A_EE10take_error0ECs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2273
  %i.bbo = icmp eq i32 %i.baq, 0
  %i.bbp = icmp eq i32 %i.bbe, 0
  %. = select i1 %i.bbo, i8 -1, i8 1
  br i1 %i.bbp, label %.thread.i210, label %_RNvMNtNtCs66a4hBEq2Hz_2h25proto10connectionINtB2_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB1V_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6server4PeerINtNtNtB16_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10take_errorCs9Et6OYOsIUY_22browser_webrtc_example.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i: ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !2273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !2273
  %i.bbq = icmp eq i32 %i.baq, 0
  %spec.select = select i1 %i.bbq, i8 -1, i8 1
  br label %.thread.i210

.thread.i210:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i
  %.sroa.0293.0 = phi i8 [ %spec.select, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i ], [ %., %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i ]
  %.sroa.10.0.copyload6487.i = phi ptr [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i ], [ %.sroa.10.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i ]
  %.sroa.8.0.copyload6583.i = phi i64 [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i ], [ %.sroa.8.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i ]
  %.sroa.6.0.copyload6679.i = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i ], [ %.sroa.6.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i ]
  %.sroa.0.0.copyload6772.i = phi ptr [ @9, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.thread.i ], [ %.sroa.0.0.copyload.pre.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs66a4hBEq2Hz_2h25frame7go_away6GoAwayEECs9Et6OYOsIUY_22browser_webrtc_example.exit25.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload6772.i) ]
  %i.bbr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload6772.i, i64 32
  %i.bbs = load ptr, ptr %i.bbr, align 8, !noalias !2290, !nonnull !12, !noundef !12
  invoke void %i.bbs(ptr noundef %.sroa.10.0.copyload6487.i, ptr noundef %.sroa.6.0.copyload6679.i, i64 noundef %.sroa.8.0.copyload6583.i)
          to label %_RNvMNtNtCs66a4hBEq2Hz_2h25proto10connectionINtB2_10ConnectionINtNtNtNtCse0yMYRRwETY_5hyper6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB1V_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEENtNtB6_6server4PeerINtNtNtB16_5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE10take_errorCs9Et6OYOsIUY_22browser_webrtc_example.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2118

bb.nw:                                            ; preds = %bb.nv, %bb.nt
  %i.bbt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !noalias !2273
  unreachable

bb.nx:                                            ; preds = %bb.nq, %bb.np, %.loopexit322, %bb.no, %bb.aw, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.524.sroa.5.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.345.sroa.3.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.8.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.341.sroa.5.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.542.i)
  %i.bbu = load i8, ptr %i.jd, align 8, !range !2291, !noundef !12 ; 2 uses
  %i.bbv = icmp eq i8 %i.bbu, -2
  br i1 %i.bbv, label %bb.ny, label %bb.nz

bb.ny:                                            ; preds = %bb.nx
  %i.bbw = invoke { i64, ptr } @_RINvMNtNtNtCs66a4hBEq2Hz_2h25proto7streams7streamsINtB3_7StreamsINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesENtNtB9_6server4PeerE13poll_completeINtNtNtNtB17_6common2io6compat6CompatINtNtNtCs5IbPN03UQpS_10hyper_util6common6rewind6RewindINtNtNtB3A_2rt5tokio7TokioIoNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamEEEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.md, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(960) %1)
          to label %bb.qw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bc, %bb.eo, %bb.ec, %.noexc108, %bb.ba, %bb.em, %.noexc112, %bb.ew, %bb.ex, %bb.ey, %bb.fa, %.noexc120, %bb.fb, %bb.fc, %bb.fg, %.noexc125, %bb.fh, %bb.fy, %bb.gv, %bb.hi, %bb.hj, %bb.hk, %bb.hm, %.noexc133, %bb.hn, %bb.hr, %.noexc136, %bb.hs, %bb.ie, %bb.ir, %bb.is, %bb.it, %bb.iv, %.noexc143, %bb.iw, %bb.iz, %.noexc146, %bb.ja, %bb.jd, %bb.je, %bb.jf, %bb.jh, %.noexc152, %bb.ji, %bb.jj, %bb.jm, %.noexc156, %bb.jn, %bb.js, %.noexc160, %.noexc161, %bb.kt, %bb.ku, %bb.kv, %bb.kx, %.noexc167, %bb.ky, %bb.kz, %bb.lc, %.noexc171, %bb.ld, %bb.li, %bb.lj, %bb.lk, %bb.lm, %.noexc177, %bb.ln, %bb.lo, %bb.lr, %.noexc181, %bb.ls, %bb.me, %bb.mf, %bb.mg, %bb.mi, %.noexc188, %bb.mj, %bb.mn, %.noexc191, %bb.mo, %bb.ms, %bb.mt, %bb.mv, %.noexc197, %bb.ea, %bb.ae, %bb.af, %bb.ap, %bb.aq, %bb.as, %bb.ny, %bb.rc, %bb.rk, %bb.rl, %bb.rs, %bb.rv, %bb.rw, %bb.ry, %bb.ai, %bb.ak, %.noexc105, %bb.al, %bb.av, %bb.ep, %bb.ko, %bb.na, %bb.nb, %bb.nc, %bb.ne, %.noexc202, %bb.nf, %bb.nj, %.noexc205, %bb.nk, %bb.re, %.noexc253, %bb.ro, %bb.rq, %.noexc257, %bb.rr, %bb.qm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs9Et6OYOsIUY_22browser_webrtc_example.exit.i.i.i, %bb.pf, %.noexc236, %bb.pe, %bb.pa, %.noexc233, %bb.oz, %bb.ox, %bb.ow, %bb.ov, %bb.or, %bb.op, %.noexc226, %bb.oo, %bb.ol, %bb.ok, %.noexc222, %bb.oj, %bb.oh, %bb.og, %bb.of, %bb.oc, %.invoke, %bb.qz, %bb.se, %bb.fd, %bb.jr, %.thread.i210
  %lpad.loopexit.split-lp514 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.nz:                                            ; preds = %bb.nx
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4233.0..sroa_idx.i, align 1 ; 4 uses
  %.sroa.6.0.copyload = load i32, ptr %.sroa.4196.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.7434.0.copyload = load i32, ptr %.sroa.4196.sroa.4.0..sroa.4196.0..sroa_idx.sroa_idx.i, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8435.0..sroa_idx, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.jd)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.jb)
  call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  store ptr %i.lm, ptr %i.jb, align 8, !alias.scope !2292
  store ptr %i.me, ptr %i.th, align 8, !alias.scope !2292
  %i.bbx = load <2 x ptr>, ptr %i.md, align 8, !alias.scope !2293
  %i.bby = getelementptr inbounds nuw i8, <2 x ptr> %i.bbx, i64 16
  store <2 x ptr> %i.bby, ptr %i.ti, align 8, !alias.scope !2292
  store i8 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2292
  store ptr %i.ny, ptr %i.tj, align 8, !alias.scope !2292
  store ptr %i.mp, ptr %i.tk, align 8, !alias.scope !2292
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  switch i8 %i.bbu, label %default.unreachable483 [
    i8 -1, label %bb.oa
    i8 0, label %bb.ob
    i8 1, label %bb.oc
    i8 2, label %bb.ph
  ]

bb.oa:                                            ; preds = %bb.nz
  store i8 1, ptr %i.lm, align 8, !noalias !2295
  store i8 1, ptr %i.lv, align 1, !noalias !2295
  store i32 0, ptr %i.lu, align 4, !noalias !2295
  br label %_RNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB5_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE19handle_poll2_resultCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread

bb.ob:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !2295
  store i32 %.sroa.6.0.copyload, ptr %i.bg, align 4, !noalias !2295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !2295
  store i32 %.sroa.7434.0.copyload, ptr %i.bf, align 4, !noalias !2295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2295
  store i8 %.sroa.4.0.copyload, ptr %i.be, align 1, !noalias !2295
  %i.bbz = icmp eq i8 %.sroa.4.0.copyload, 2
  %i.bca = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !2295
  %i.bcb = icmp eq i64 %i.bca, 0                  ; 2 uses
  br i1 %i.bbz, label %bb.ot, label %bb.od

bb.oc:                                            ; preds = %bb.nz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !2295
  store i32 %.sroa.7434.0.copyload, ptr %i.bh, align 8, !noalias !2296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.8..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12, i64 28, i1 false), !noalias !2296
  invoke fastcc void @_RNvMs0_NtNtCs66a4hBEq2Hz_2h25proto10connectionINtB5_13DynConnectionINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEE14handle_go_awayCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.jb, i32 noundef %.sroa.6.0.copyload, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.bh, i8 noundef %.sroa.4.0.copyload)
          to label %.noexc218 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc218:                                        ; preds = %bb.oc
end_hunk_1
