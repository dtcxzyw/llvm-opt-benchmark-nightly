Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/browser_webrtc_example.browser_webrtc_example.706e6decb745cbbe-cgu.01?download=true
inline.NumInlined: 1019
inline.NumDeleted: 441
begin_hunk_0_@_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE15poll_next_eventCs9Et6OYOsIUY_22browser_webrtc_example:bb.a
bb.or:                                            ; preds = %bb.oq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2224
  %i.awp = load ptr, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE22handle_transport_events0_10___CALLSITE, align 8, !noalias !2224, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awp, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2224
  store <2 x ptr> <ptr @70, ptr inttoptr (i64 31 to ptr)>, ptr %i.ab, align 16, !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2224
  store ptr %i.af, ptr %i.aa, align 8, !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2224
  store ptr %i.ae, ptr %i.z, align 8, !noalias !2224
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !2224
  store ptr @3, ptr %i.ov, align 8, !noalias !2224
  store ptr %i.aa, ptr %i.ow, align 8, !noalias !2224
  store ptr @67, ptr %i.ox, align 8, !noalias !2224
  store ptr %i.z, ptr %i.oy, align 8, !noalias !2224
  store ptr @71, ptr %i.oz, align 8, !noalias !2224
  store i64 1, ptr %i.ad, align 8, !noalias !2224
  store ptr %i.ac, ptr %.sroa.037.sroa.4.0..sroa_idx.i, align 8, !noalias !2224
  store i64 3, ptr %.sroa.037.sroa.5.0..sroa_idx.i, align 8, !noalias !2224
  store ptr %i.awq, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !2224
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc113.i unwind label %.split.thread.i, !noalias !2224

.noexc113.i:                                      ; preds = %bb.or
  %i.awr = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2255
  %.not.i112.i = icmp eq i8 %i.awr, 0
  br i1 %.not.i112.i, label %bb.os, label %_RNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE22handle_transport_events1_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i

bb.os:                                            ; preds = %.noexc113.i
  %i.aws = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2255 ; 2 uses
  %i.awt = icmp ult i64 %i.aws, 6
  call void @llvm.assume(i1 %i.awt)
  %i.awu = icmp samesign ugt i64 %i.aws, 3
  br i1 %i.awu, label %bb.ot, label %_RNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE22handle_transport_events1_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i

bb.ot:                                            ; preds = %bb.os
  %i.awv = load ptr, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE22handle_transport_events0_10___CALLSITE, align 8, !noalias !2255, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2255
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 32
  %i.awx = load ptr, ptr %i.aww, align 8, !noalias !2224, !nonnull !13, !noundef !13
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awv, i64 40
  %i.awz = load i64, ptr %i.awy, align 8, !noalias !2224, !noundef !13
  store i64 4, ptr %i.j, align 8, !noalias !2255
  store ptr %i.awx, ptr %i.pa, align 8, !noalias !2255
  store i64 %i.awz, ptr %i.pb, align 8, !noalias !2255
  %i.axa = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %.noexc114.i unwind label %.split.thread.i, !noalias !2224 ; 2 uses

.noexc114.i:                                      ; preds = %bb.ot
  %i.axb = extractvalue { ptr, ptr } %i.axa, 0    ; 2 uses
  %i.axc = extractvalue { ptr, ptr } %i.axa, 1    ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.axc, i64 24
  %i.axe = load ptr, ptr %i.axd, align 8, !invariant.load !13, !noalias !2224, !nonnull !13
  %i.axf = invoke noundef zeroext i1 %i.axe(ptr noundef %i.axb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j) #38
          to label %.noexc115.i unwind label %.split.thread.i, !noalias !2224, !inline_history !2039

.noexc115.i:                                      ; preds = %.noexc114.i
  br i1 %i.axf, label %bb.ou, label %.noexc116.i

bb.ou:                                            ; preds = %.noexc115.i
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.awv, ptr noundef nonnull %i.axb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.axc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.noexc116.i unwind label %.split.thread.i, !noalias !2224

.noexc116.i:                                      ; preds = %bb.ou, %.noexc115.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2255
  br label %_RNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE22handle_transport_events1_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i

_RNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE22handle_transport_events1_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i: ; preds = %.noexc116.i, %bb.os, %.noexc113.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2224
  br label %bb.ov

bb.ov:                                            ; preds = %bb.pc, %bb.ox, %bb.ow, %_RNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE22handle_transport_events1_0Cs9Et6OYOsIUY_22browser_webrtc_example.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2224
  invoke void @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsdTHTBGblh3Z_11libp2p_core9transport10ListenerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_ENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_ECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.iu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %bb.pe unwind label %.split.thread.i, !noalias !2227

bb.ow:                                            ; preds = %bb.oq, %bb.op, %bb.om, %bb.ol
  %i.axg = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2224
  %.not.i102 = icmp eq i8 %i.axg, 0
  br i1 %.not.i102, label %bb.ox, label %bb.ov

bb.ox:                                            ; preds = %bb.ow
  %i.axh = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2224 ; 2 uses
  %i.axi = icmp ult i64 %i.axh, 6
  call void @llvm.assume(i1 %i.axi)
  %i.axj = icmp samesign ugt i64 %i.axh, 3
  br i1 %i.axj, label %bb.oy, label %bb.ov

bb.oy:                                            ; preds = %bb.ox
  %i.axk = load ptr, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE22handle_transport_events0_10___CALLSITE, align 8, !noalias !2224, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !2224
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axk, i64 32
  %i.axm = load ptr, ptr %i.axl, align 8, !noalias !2224, !nonnull !13, !noundef !13
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axk, i64 40
  %i.axo = load i64, ptr %i.axn, align 8, !noalias !2224, !noundef !13
  store i64 4, ptr %i.y, align 8, !noalias !2224
  store ptr %i.axm, ptr %i.pc, align 8, !noalias !2224
  store i64 %i.axo, ptr %i.pd, align 8, !noalias !2224
  %i.axp = invoke { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger()
          to label %bb.oz unwind label %.split.thread.i, !noalias !2224 ; 2 uses

bb.oz:                                            ; preds = %bb.oy
  %i.axq = extractvalue { ptr, ptr } %i.axp, 0    ; 2 uses
  %i.axr = extractvalue { ptr, ptr } %i.axp, 1    ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 24
  %i.axt = load ptr, ptr %i.axs, align 8, !invariant.load !13, !noalias !2224, !nonnull !13
  %i.axu = invoke noundef zeroext i1 %i.axt(ptr noundef %i.axq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
          to label %bb.pa unwind label %.split.thread.i, !noalias !2224

bb.pa:                                            ; preds = %bb.oz
  br i1 %i.axu, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %bb.pa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !2224
  %i.axv = load ptr, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE22handle_transport_events0_10___CALLSITE, align 8, !noalias !2224, !nonnull !13, !align !14, !noundef !13
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !2224
  store <2 x ptr> <ptr @70, ptr inttoptr (i64 31 to ptr)>, ptr %i.v, align 16, !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !2224
  store ptr %i.af, ptr %i.u, align 8, !noalias !2224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !2224
  store ptr %i.ae, ptr %i.t, align 8, !noalias !2224
  store ptr %i.v, ptr %i.w, align 8, !noalias !2224
  store ptr @3, ptr %i.pe, align 8, !noalias !2224
  store ptr %i.u, ptr %i.pf, align 8, !noalias !2224
  store ptr @67, ptr %i.pg, align 8, !noalias !2224
  store ptr %i.t, ptr %i.ph, align 8, !noalias !2224
  store ptr @71, ptr %i.pi, align 8, !noalias !2224
  store i64 1, ptr %i.x, align 8, !noalias !2224
  store ptr %i.w, ptr %.sroa.475.0..sroa_idx.i106, align 8, !noalias !2224
  store i64 3, ptr %.sroa.576.0..sroa_idx.i, align 8, !noalias !2224
  store ptr %i.axw, ptr %i.pj, align 8, !noalias !2224
  invoke void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.axk, ptr noundef nonnull %i.axq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.axr, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x)
          to label %bb.pd unwind label %.split.thread.i, !noalias !2224

bb.pc:                                            ; preds = %bb.pd, %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !2224
  br label %bb.ov

bb.pd:                                            ; preds = %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2224
  br label %bb.pc

bb.pe:                                            ; preds = %bb.ov
  %i.axx = load i64, ptr %i.r, align 8, !range !19, !noalias !2224, !noundef !13
  %.not83.i = icmp eq i64 %i.axx, 2
  br i1 %.not83.i, label %.thread.i105, label %bb.pf

.thread.i105:                                     ; preds = %bb.pe
  store i64 0, ptr %.phi.trans.insert.i103, align 8, !noalias !2224
  store i64 0, ptr %i.s, align 8, !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2224
  br label %bb.ph

bb.pf:                                            ; preds = %bb.pe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false), !noalias !2224
  %.pre.i104 = load i64, ptr %.phi.trans.insert.i103, align 8, !noalias !2256 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2224
  %i.axy = icmp ugt i64 %.pre.i104, 1
  br i1 %i.axy, label %bb.pg, label %bb.ph

.loopexit245:                                     ; preds = %.loopexit.i
  %lpad.loopexit247 = landingpad { ptr, i32 }
          cleanup
  br label %.body127.i

.loopexit.split-lp246:                            ; preds = %bb.pj
  %lpad.loopexit.split-lp248 = landingpad { ptr, i32 }
          cleanup
  br label %.body127.i

.body127.i:                                       ; preds = %.loopexit245, %.loopexit.split-lp246, %bb.pm
  %.sroa.049.2.lpad-body.i = phi i1 [ true, %bb.pm ], [ false, %.loopexit245 ], [ true, %.loopexit.split-lp246 ]
  %eh.lpad-body128.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.pm ], [ %lpad.loopexit247, %.loopexit245 ], [ %lpad.loopexit.split-lp248, %.loopexit.split-lp246 ] ; 2 uses
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %bb.ok unwind label %bb.ni, !noalias !2227

bb.pg:                                            ; preds = %bb.pf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2224
  %i.axz = load ptr, ptr %i.pk, align 8, !noalias !2257, !nonnull !13, !noundef !13
  %i.aya = load i64, ptr %i.pl, align 8, !noalias !2257, !noundef !13
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs9Et6OYOsIUY_22browser_webrtc_example.exit125.i

bb.ph:                                            ; preds = %bb.pf, %.thread.i105
  %i.ayb = phi i64 [ 0, %.thread.i105 ], [ %.pre.i104, %bb.pf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2224
  br label %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs9Et6OYOsIUY_22browser_webrtc_example.exit125.i

_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs9Et6OYOsIUY_22browser_webrtc_example.exit125.i: ; preds = %bb.ph, %bb.pg
  %.sink13.i122.i = phi ptr [ %i.axz, %bb.pg ], [ %i.pl, %bb.ph ] ; 2 uses
  %.sink12.i123.i = phi i64 [ %i.aya, %bb.pg ], [ %i.ayb, %bb.ph ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2258
  %i.ayc = icmp eq i64 %.sink12.i123.i, 0
  br i1 %i.ayc, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i, label %bb.pi

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i: ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs9Et6OYOsIUY_22browser_webrtc_example.exit125.i
  store i64 0, ptr %i.i, align 8, !noalias !2258
  store ptr inttoptr (i64 8 to ptr), ptr %i.pm, align 8, !noalias !2258
  br label %.loopexit.i

bb.pi:                                            ; preds = %_RNvMsd_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_E6tripleCs9Et6OYOsIUY_22browser_webrtc_example.exit125.i
  %i.ayd = shl nuw nsw i64 %.sink12.i123.i, 5     ; 2 uses
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !2259
  %i.aye = call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ayd, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !2259 ; 3 uses
  %i.ayf = icmp eq ptr %i.aye, null
  br i1 %i.ayf, label %bb.pj, label %.lr.ph.preheader.i.i

bb.pj:                                            ; preds = %bb.pi
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ayd) #34
          to label %.noexc126.i unwind label %.loopexit.split-lp246, !noalias !2227

.noexc126.i:                                      ; preds = %bb.pj
  unreachable

.lr.ph.preheader.i.i:                             ; preds = %bb.pi
  store i64 %.sink12.i123.i, ptr %i.i, align 8, !noalias !2258
  store ptr %i.aye, ptr %i.pm, align 8, !noalias !2258
  %3 = getelementptr inbounds nuw [32 x i8], ptr %.sink13.i122.i, i64 %.sink12.i123.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.ayo, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sink13.i122.i, %.lr.ph.preheader.i.i ] ; 6 uses
  %.sroa.7.022.i.i = phi i64 [ %i.ayn, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %4, %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i ], [ %.sink12.i123.i, %.lr.ph.preheader.i.i ]
  %4 = add nsw i64 %.sroa.10.021.i.i, -1          ; 2 uses
  %5 = icmp eq ptr %.sroa.012.023.i.i, %3
  br i1 %5, label %.loopexit.i, label %bb.pk

bb.pk:                                            ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2258
  %i.ayg = load ptr, ptr %.sroa.012.023.i.i, align 8, !noalias !2260, !nonnull !13, !align !14, !noundef !13
  %i.ayh = load ptr, ptr %i.ayg, align 8, !noalias !2260, !nonnull !13, !noundef !13
  %i.ayi = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 24
  %i.ayj = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 8
  %i.ayk = load ptr, ptr %i.ayj, align 8, !noalias !2260, !noundef !13
  %i.ayl = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 16
  %i.aym = load i64, ptr %i.ayl, align 8, !noalias !2260, !noundef !13
  invoke void %i.ayh(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.ayi, ptr noundef %i.ayk, i64 noundef %i.aym)
          to label %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i unwind label %bb.pm, !noalias !2261, !inline_history !2050

_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.pk
  %i.ayn = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.ayo = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 32
  %i.ayp = getelementptr inbounds nuw [32 x i8], ptr %i.aye, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ayp, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !2261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2258
  %i.ayq = icmp eq i64 %4, 0
  br i1 %i.ayq, label %.loopexit.i, label %.lr.ph.i.i

bb.pl:                                            ; preds = %bb.pm
  %i.ayr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36, !noalias !2261
  unreachable

bb.pm:                                            ; preds = %bb.pk
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.pn, align 8, !noalias !2258
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #35
          to label %.body127.i unwind label %bb.pl, !noalias !2261

.loopexit.i:                                      ; preds = %_RNvXsl_Csbli3iz7XG76_9multiaddrNtB5_9MultiaddrNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9Et6OYOsIUY_22browser_webrtc_example.exit.thread.i.i
  store i64 %.sink12.i123.i, ptr %i.pn, align 8, !noalias !2258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.po, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2258
  %i.ays = load ptr, ptr %i.ae, align 8, !noalias !2224, !noundef !13
  %i.ayt = load i64, ptr %i.af, align 8, !noalias !2224, !noundef !13
  store i64 %i.ayt, ptr %i.pp, align 8, !noalias !2224
  store ptr %i.ays, ptr %i.pq, align 8, !noalias !2224
  store i64 10, ptr %i.q, align 8, !noalias !2224
  %i.ayu = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtCskAdJPD5N6XB_11libp2p_ping5EventEE13push_back_mutCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(312) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EECs9Et6OYOsIUY_22browser_webrtc_example.exit130.i unwind label %.loopexit245, !noalias !2227 ; 0 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EECs9Et6OYOsIUY_22browser_webrtc_example.exit130.i: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2224
  invoke void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %.noexc121 unwind label %.loopexit

.noexc121:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecANtCsbli3iz7XG76_9multiaddr9Multiaddrj1_EECs9Et6OYOsIUY_22browser_webrtc_example.exit130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2224
  br label %.backedge.backedge

bb.pn:                                            ; preds = %.split.thread.i, %bb.ok
  %.pn196.i = phi { ptr, i32 } [ %lpad.thr_comm197.i, %.split.thread.i ], [ %eh.lpad-body128.i, %bb.ok ]
  %.val93.i = load ptr, ptr %i.ae, align 8, !noalias !2224, !noundef !13
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9Et6OYOsIUY_22browser_webrtc_example(ptr %.val93.i) #35
          to label %.body unwind label %bb.ni, !noalias !2227

bb.po:                                            ; preds = %bb.ly
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2224
  store i64 %.sroa.4203.0.copyload, ptr %i.ot, align 8, !noalias !2224
  store ptr %.sroa.8.0.copyload, ptr %i.ou, align 8, !noalias !2224
  store i64 11, ptr %i.p, align 8, !noalias !2224
  %i.ayv = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtCs6b9j1MKPRPC_12libp2p_swarm10SwarmEventNtCskAdJPD5N6XB_11libp2p_ping5EventEE13push_back_mutCs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(312) %i.p)
          to label %.noexc122 unwind label %.loopexit ; 0 uses

.noexc122:                                        ; preds = %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2224
  br label %.backedge.backedge

bb.pp:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !2262)
  %i.ayw = load i64, ptr %i.hr, align 8, !range !19, !alias.scope !2262, !noalias !2263, !noundef !13
  %.not.i.i.i123 = icmp eq i64 %i.ayw, 2
  br i1 %.not.i.i.i123, label %.noexc124, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  invoke void @_RNvMs2_NtCs9Bqz0CSWZZv_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ayx)
          to label %.noexc124 unwind label %.thread.thread

.noexc124:                                        ; preds = %bb.pq, %bb.pp
  %i.ayy = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2263
  %.not4.i.i.i = icmp eq i8 %i.ayy, 0
  br i1 %.not4.i.i.i, label %bb.pr, label %.thread232

bb.pr:                                            ; preds = %.noexc124
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  %i.aza = load ptr, ptr %i.ayz, align 8, !alias.scope !2262, !noalias !2263, !align !14, !noundef !13 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.aza, null
  br i1 %.not5.i.i.i, label %.thread232, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2264
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %i.azc = load ptr, ptr %i.azb, align 8, !noalias !2263, !nonnull !13, !noundef !13
  %i.azd = getelementptr inbounds nuw i8, ptr %i.aza, i64 24
  %i.aze = load i64, ptr %i.azd, align 8, !noalias !2263, !noundef !13
  store ptr %i.azc, ptr %i.g, align 8, !noalias !2264, !captures !30
  %i.azf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.aze, ptr %i.azf, align 8, !noalias !2264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2264
  store ptr %i.g, ptr %i.f, align 8, !noalias !2264
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs9Et6OYOsIUY_22browser_webrtc_example, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !2264
  invoke fastcc void @_RNvMNtCs1SQIzZDXHNl_7tracing4spanNtB2_4Span3log(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 21, ptr noundef nonnull @43, ptr noundef nonnull %i.f) #38
          to label %.noexc125 unwind label %.thread.thread

.noexc125:                                        ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2264
  br label %.thread232

.thread:                                          ; preds = %bb.pu, %.body
  %i.azg = trunc nuw i8 %.sroa.023.0 to i1
  br i1 %i.azg, label %bb.pv, label %.thread.thread237

.thread.thread:                                   ; preds = %bb.ps, %bb.pq
  %i.azh = landingpad { ptr, i32 }
          cleanup
  br label %bb.pv

bb.pt:                                            ; preds = %bb.x, %.thread232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hr)
  ret void

.thread232:                                       ; preds = %.noexc124, %bb.pr, %.noexc125
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.hr)
  br label %bb.pt

bb.pu:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span7EnteredECs9Et6OYOsIUY_22browser_webrtc_example(ptr nonnull %i.hr) #35
          to label %.thread unwind label %bb.s

.thread.thread237:                                ; preds = %bb.k, %bb.pv, %.thread
  %.pn47235 = phi { ptr, i32 } [ %.pn47236, %bb.pv ], [ %.pn, %.thread ], [ %i.sc, %bb.k ]
  resume { ptr, i32 } %.pn47235

bb.pv:                                            ; preds = %.thread.thread, %.thread
  %.pn47236 = phi { ptr, i32 } [ %i.azh, %.thread.thread ], [ %.pn, %.thread ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1SQIzZDXHNl_7tracing4span4SpanECs9Et6OYOsIUY_22browser_webrtc_example(ptr noalias nofree noundef align 8 dereferenceable(40) %i.hr) #35
          to label %.thread.thread237 unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB5_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE3newCs9Et6OYOsIUY_22browser_webrtc_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1208 x i8]) align 8 captures(none) dereferenceable(1208) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %3, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(80) %4, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [400 x i8], align 8               ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [344 x i8], align 8               ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = load atomic i64, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.o = icmp ult i64 %i.n, 3
  br i1 %i.o, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.p = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE3new10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.p, label %bb.c [
    i8 0, label %bb.l
    i8 1, label %bb.d
    i8 2, label %bb.d
  ], !prof !34

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noundef i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE3new10___CALLSITE)
          to label %bb.e unwind label %bb.ad      ; 2 uses

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.e
  %.sroa.06.0 = phi i8 [ %i.q, %bb.e ], [ %i.p, %bb.b ], [ %i.p, %bb.b ]
  %i.r = load ptr, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE3new10___CALLSITE, align 8, !nonnull !13, !align !14, !noundef !13
  %i.s = invoke noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, i8 noundef %.sroa.06.0)
          to label %bb.f unwind label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i8 %i.q, 0
  br i1 %i.t, label %bb.l, label %bb.d

bb.f:                                             ; preds = %bb.d
  br i1 %i.s, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.u = load ptr, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE3new10___CALLSITE, align 8, !nonnull !13, !align !14, !noundef !13 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %4, ptr %i.k, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @55, ptr %i.w, align 8
  store i64 1, ptr %i.m, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.g
  %i.x = load atomic i8, ptr @_RNvNtCs9Bqz0CSWZZv_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !2268
  %.not.i = icmp eq i8 %i.x, 0
  br i1 %.not.i, label %bb.h, label %_RNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE3new0Cs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.h:                                             ; preds = %.noexc
  %i.y = load atomic i64, ptr @_RNvCscIBp6mpAwK8_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !2268 ; 2 uses
  %i.z = icmp ult i64 %i.y, 6
  call void @llvm.assume(i1 %i.z)
  %i.aa = icmp samesign ugt i64 %i.y, 2
  br i1 %i.aa, label %bb.i, label %_RNCNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmNtCskAdJPD5N6XB_11libp2p_ping9BehaviourE3new0Cs9Et6OYOsIUY_22browser_webrtc_example.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr @_RNvNvMs0_Cs6b9j1MKPRPC_12libp2p_swarmINtB7_5SwarmpE3new10___CALLSITE, align 8, !noalias !2268, !nonnull !13, !align !14, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2268
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !13, !noundef !13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !13
  store i64 3, ptr %i.a, align 8, !noalias !2268
end_hunk_0
