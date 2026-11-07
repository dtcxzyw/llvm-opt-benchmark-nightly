Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.05?download=true
inline.NumInlined: 3171
inline.NumDeleted: 1268
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMs0_NtCsbCXxVlMkWND_6webrtc15peer_connectionNtB7_17RTCPeerConnection5close0Cs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  %i.vl = icmp eq i64 %i.vh, %i.vd
  br i1 %i.vl, label %.body124.i.i.i, label %.lr.ph1058

.lr.ph1058:                                       ; preds = %bb.eu, %bb.et
  %.sroa.0.1.i.i.i.i.i1057 = phi i64 [ %i.vi, %bb.et ], [ %i.vh, %bb.eu ] ; 2 uses
  %i.vm = getelementptr inbounds nuw [632 x i8], ptr %i.vb, i64 %.sroa.0.1.i.i.i.i.i1057
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(632) %i.vm) #25
          to label %bb.et unwind label %bb.ev, !noalias !2790

bb.ev:                                            ; preds = %.lr.ph1058
  %i.vn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2790
  unreachable

bb.ew:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !noalias !2786
  %.val99.i.i.i = load ptr, ptr %i.sb, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  %i.vo = getelementptr inbounds nuw i8, ptr %.val99.i.i.i, i64 40
  invoke void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingE5drainNtNtNtCskKLDkoKarTP_4core3ops5range9RangeFullECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.cr, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vo)
          to label %bb.ey unwind label %bb.ex, !noalias !2787

bb.ex:                                            ; preds = %bb.ew
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !2786
  br label %.body124.i.i.i

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.rx, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cr, i64 40, i1 false), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !noalias !2786
  br label %bb.ez

bb.ez:                                            ; preds = %bb.jg, %bb.ey
  %i.vq = phi ptr [ %i.agy, %bb.jg ], [ %i.rr, %bb.ey ] ; 4 uses
  %i.vr = phi ptr [ %i.agz, %bb.jg ], [ %i.rs, %bb.ey ] ; 4 uses
  %i.vs = phi ptr [ %i.aha, %bb.jg ], [ %i.rt, %bb.ey ] ; 4 uses
  %i.vt = phi ptr [ %i.ahb, %bb.jg ], [ %i.ru, %bb.ey ] ; 4 uses
  %i.vu = phi ptr [ %i.ahc, %bb.jg ], [ %i.rv, %bb.ey ] ; 4 uses
  %i.vv = phi ptr [ %i.ahd, %bb.jg ], [ %i.rw, %bb.ey ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11218.i.i.i)
  %i.vw = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2791)
  %i.vx = load ptr, ptr %i.vw, align 8, !alias.scope !2791, !noalias !2786, !nonnull !14, !noundef !14 ; 4 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.vz = load ptr, ptr %i.vy, align 8, !alias.scope !2791, !noalias !2786, !nonnull !14, !noundef !14
  %i.wa = icmp eq ptr %i.vx, %i.vz
  br i1 %i.wa, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i

bb.fa:                                            ; preds = %.body158.i.i.i, %bb.je, %bb.iu, %bb.ia, %.body151.i.i.i, %bb.hv, %bb.hu, %.body142.i.i.i, %bb.gz, %bb.gv, %bb.gr, %bb.gl, %.body131.i.i.i, %bb.fe, %bb.fc, %.body124.i.i.i, %bb.dt
  %i.wb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2787
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit123.i.i.i: ; preds = %bb.ji, %.body124.i.i.i, %bb.ea, %bb.dz, %bb.dt
  %i.wc = phi ptr [ %i.ain, %bb.ji ], [ %i.ut, %.body124.i.i.i ], [ %i.rr, %bb.dz ], [ %i.rr, %bb.dt ], [ %i.rr, %bb.ea ] ; 3 uses
  %i.wd = phi ptr [ %i.aio, %bb.ji ], [ %i.uu, %.body124.i.i.i ], [ %i.rs, %bb.dz ], [ %i.rs, %bb.dt ], [ %i.rs, %bb.ea ] ; 3 uses
  %i.we = phi ptr [ %i.aip, %bb.ji ], [ %i.uv, %.body124.i.i.i ], [ %i.rt, %bb.dz ], [ %i.rt, %bb.dt ], [ %i.rt, %bb.ea ] ; 3 uses
  %i.wf = phi ptr [ %i.aiq, %bb.ji ], [ %i.uw, %.body124.i.i.i ], [ %i.ru, %bb.dz ], [ %i.ru, %bb.dt ], [ %i.ru, %bb.ea ] ; 3 uses
  %i.wg = phi ptr [ %i.air, %bb.ji ], [ %i.ux, %.body124.i.i.i ], [ %i.rv, %bb.dz ], [ %i.rv, %bb.dt ], [ %i.rv, %bb.ea ] ; 3 uses
  %i.wh = phi ptr [ %i.ais, %bb.ji ], [ %i.uy, %.body124.i.i.i ], [ %i.rw, %bb.dz ], [ %i.rw, %bb.dt ], [ %i.rw, %bb.ea ] ; 3 uses
  %.pn64.i.i.i = phi { ptr, i32 } [ %i.ait, %bb.ji ], [ %.pn61.pn.i.i.i, %.body124.i.i.i ], [ %i.sj, %bb.dz ], [ %i.rz, %bb.dt ], [ %i.sj, %bb.ea ] ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2792)
  %i.wj = load ptr, ptr %i.wi, align 8, !alias.scope !2792, !noalias !2786, !noundef !14 ; 2 uses
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local10TrackLocalNtNtB4_6marker4SendNtB2u_4SyncEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsc13h7DQFCSE_5tokio4sync5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEEECs4KPtkQIfQGm_13libp2p_webrtc.exit123.i.i.i
  %i.wl = atomicrmw add ptr %i.wj, i64 -1 release, align 8, !noalias !2793
  %i.wm = icmp eq i64 %i.wl, 1
  br i1 %i.wm, label %bb.fc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local10TrackLocalNtNtB4_6marker4SendNtB2u_4SyncEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i

bb.fc:                                            ; preds = %bb.fb
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local10TrackLocalNtNtCskKLDkoKarTP_4core6marker4SendNtB1F_4SyncEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.wi) #22
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local10TrackLocalNtNtB4_6marker4SendNtB2u_4SyncEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i unwind label %bb.fa, !noalias !2787

bb.fd:                                            ; preds = %bb.eo, %bb.dl
  %i.wn = phi ptr [ %i.lb, %bb.dl ], [ %i.rr, %bb.eo ] ; 6 uses
  %i.wo = phi ptr [ %i.la, %bb.dl ], [ %i.rs, %bb.eo ] ; 5 uses
  %i.wp = phi ptr [ %.phi.trans.insert247.i, %bb.dl ], [ %i.rt, %bb.eo ] ; 6 uses
  %i.wq = phi ptr [ %i.qd, %bb.dl ], [ %i.ru, %bb.eo ] ; 5 uses
  %i.wr = phi ptr [ %.phi.trans.insert.i55.i, %bb.dl ], [ %i.rv, %bb.eo ] ; 6 uses
  %i.ws = phi ptr [ %i.rb, %bb.dl ], [ %i.rw, %bb.eo ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !2786
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  invoke void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.cz, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.wt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ff unwind label %bb.fe, !noalias !2787

bb.fe:                                            ; preds = %bb.fd
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2786
  %.val71.i.i.i = load ptr, ptr %i.wt, align 8, !noalias !2786
  %i.wv = getelementptr i8, ptr %1, i64 408
  %.val72.i.i.i = load ptr, ptr %i.wv, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc(ptr %.val71.i.i.i, ptr nonnull %.val72.i.i.i) #25
          to label %.body124.i.i.i unwind label %bb.fa, !noalias !2787

bb.ff:                                            ; preds = %bb.fd
  %i.ww = load i64, ptr %i.cz, align 8, !range !49, !noalias !2786, !noundef !14 ; 3 uses
  %i.wx = icmp eq i64 %i.ww, -2
  br i1 %i.wx, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2786
  br label %.thread.i59.i

bb.fh:                                            ; preds = %bb.ff
  %.sroa.3192.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.3192.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.3192.0..sroa_idx.i.i.i, align 8, !noalias !2786
  %.sroa.3192.sroa.2.0..sroa.3192.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3192.sroa.2.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3192.sroa.2.0..sroa.3192.0..sroa_idx.sroa_idx.i.i.i, i64 48, i1 false), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz), !noalias !2786
  %.val73.i.i.i = load ptr, ptr %i.wt, align 8, !noalias !2786 ; 5 uses
  %i.wy = getelementptr i8, ptr %1, i64 408
  %.val74.i.i.i = load ptr, ptr %i.wy, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14 ; 5 uses
  %i.wz = load ptr, ptr %.val74.i.i.i, align 8, !invariant.load !14, !noalias !2787 ; 2 uses
  %.not.i.i.i.i.i210 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i.i.i.i210, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val73.i.i.i) ]
  invoke void %i.wz(ptr noundef nonnull %.val73.i.i.i)
          to label %bb.fj unwind label %bb.fl, !noalias !2787

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.xa = getelementptr inbounds nuw i8, ptr %.val74.i.i.i, i64 8
  %i.xb = load i64, ptr %i.xa, align 8, !range !15, !invariant.load !14, !noalias !2787 ; 2 uses
  %i.xc = icmp eq i64 %i.xb, 0
  br i1 %i.xc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.xd = getelementptr inbounds nuw i8, ptr %.val74.i.i.i, i64 16
  %i.xe = load i64, ptr %i.xd, align 8, !range !16, !invariant.load !14, !noalias !2787
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val73.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val73.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.xb, i64 noundef range(i64 1, 536870913) %i.xe) #23, !noalias !2787
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i

bb.fl:                                            ; preds = %bb.fi
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.val74.i.i.i, i64 8
  %i.xh = load i64, ptr %i.xg, align 8, !range !15, !invariant.load !14, !noalias !2787 ; 2 uses
  %i.xi = icmp eq i64 %i.xh, 0
  br i1 %i.xi, label %.body124.i.i.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.xj = getelementptr inbounds nuw i8, ptr %.val74.i.i.i, i64 16
  %i.xk = load i64, ptr %i.xj, align 8, !range !16, !invariant.load !14, !noalias !2787
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val73.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.xh, i64 noundef range(i64 1, 536870913) %i.xk) #23, !noalias !2787
  br label %.body124.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %bb.fk, %bb.fj
  %.not.i129.i.i.i = icmp eq i64 %i.ww, -1
  br i1 %.not.i129.i.i.i, label %bb.fn, label %bb.gx

bb.fn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, %bb.em
  %i.xl = phi ptr [ %i.wn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %i.rr, %bb.em ] ; 5 uses
  %i.xm = phi ptr [ %i.wo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %i.rs, %bb.em ] ; 5 uses
  %i.xn = phi ptr [ %i.wp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %i.rt, %bb.em ] ; 5 uses
  %i.xo = phi ptr [ %i.wq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %i.ru, %bb.em ] ; 5 uses
  %i.xp = phi ptr [ %i.wr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %i.rv, %bb.em ] ; 5 uses
  %i.xq = phi ptr [ %i.ws, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %i.rw, %bb.em ] ; 5 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 5 uses
  %i.xs = load ptr, ptr %i.xr, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %.val105.i.i.i = load ptr, ptr %i.xt, align 8, !noalias !2787, !nonnull !14, !noundef !14
  %i.xu = getelementptr inbounds nuw i8, ptr %.val105.i.i.i, i64 16
  invoke void @_RNvMNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_futureNtB2_19SequenceTransformer12reset_offset(ptr noundef nonnull align 4 %i.xu)
          to label %bb.fo unwind label %bb.jh, !noalias !2787

bb.fo:                                            ; preds = %bb.fn
  %i.xv = load ptr, ptr %i.xr, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 32
  %.val104.i.i.i = load ptr, ptr %i.xw, align 8, !noalias !2787, !nonnull !14, !noundef !14
  %i.xx = getelementptr inbounds nuw i8, ptr %.val104.i.i.i, i64 16
  invoke void @_RNvMNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver18srtp_writer_futureNtB2_19SequenceTransformer12reset_offset(ptr noundef nonnull align 4 %i.xx)
          to label %bb.fp unwind label %bb.jh, !noalias !2787

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !2786
  %i.xy = load ptr, ptr %i.xr, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 248
  %i.ya = invoke { ptr, i1 } @_RNvMNtCslqlypCAacxc_11webrtc_util4syncINtB2_5MutexINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEE4lockCs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull align 8 %i.xz)
          to label %bb.fr unwind label %bb.fq, !noalias !2787 ; 2 uses

bb.fq:                                            ; preds = %bb.fp
  %i.yb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.fr:                                            ; preds = %bb.fp
  %i.yc = extractvalue { ptr, i1 } %i.ya, 0       ; 6 uses
  %i.yd = extractvalue { ptr, i1 } %i.ya, 1       ; 2 uses
  %i.ye = zext i1 %i.yd to i8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yc) ]
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %.val107.i.i.i = load ptr, ptr %i.yf, align 8, !noalias !2787, !noundef !14 ; 5 uses
  %magicptr.i.i.i.i = ptrtoint ptr %.val107.i.i.i to i64
  switch i64 %magicptr.i.i.i.i, label %bb.fs [
    i64 0, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i
    i64 -1, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  ]

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val107.i.i.i) ]
  %i.yg = getelementptr inbounds nuw i8, ptr %.val107.i.i.i, i64 8
  %i.yh = atomicrmw add ptr %i.yg, i64 1 monotonic, align 8, !noalias !2787
  %i.yi = icmp slt i64 %i.yh, 0
  br i1 %i.yi, label %bb.ft, label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread265.i.i.i

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.trap()
  unreachable

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %bb.fr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val107.i.i.i) ]
  br label %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread265.i.i.i

_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread265.i.i.i: ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, %bb.fs
  %.sroa.0.0.i268.i.i.i = phi ptr [ inttoptr (i64 -1 to ptr), %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %.val107.i.i.i, %bb.fs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !2786
  store ptr %.sroa.0.0.i268.i.i.i, ptr %i.cp, align 8, !noalias !2786
  %i.yj = invoke noundef ptr @_RNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE7upgradeCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cp)
          to label %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i unwind label %bb.fu, !noalias !2787 ; 5 uses

bb.fu:                                            ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread265.i.i.i
  %i.yk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.body131.i.i.i unwind label %bb.fv, !noalias !2787

bb.fv:                                            ; preds = %bb.fu
  %i.yl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2787
  unreachable

_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i: ; preds = %_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEENtNtB7_5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc.exit.thread265.i.i.i
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i unwind label %bb.gc, !noalias !2787

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !2786
  call void @llvm.experimental.noalias.scope.decl(metadata !2794)
  %.not.i134.i.i.i = icmp eq ptr %i.yj, null
  br i1 %.not.i134.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !2795
  store ptr %i.yj, ptr %i.co, align 8, !noalias !2796
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yj, i64 16
  invoke void @_RNvMNtCsbCXxVlMkWND_6webrtc15rtp_transceiverNtB2_17RTCRtpTransceiver3mid(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cy, ptr noundef nonnull align 8 %i.ym)
          to label %bb.fz unwind label %bb.fx, !noalias !2787

bb.fx:                                            ; preds = %bb.fw
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yo = atomicrmw add ptr %i.yj, i64 -1 release, align 8, !noalias !2797
  %i.yp = icmp eq i64 %i.yo, 1
  br i1 %i.yp, label %bb.fy, label %.body131.i.i.i

bb.fy:                                            ; preds = %bb.fx
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.co) #22
          to label %.body131.i.i.i unwind label %bb.gb, !noalias !2798

bb.fz:                                            ; preds = %bb.fw
  %i.yq = atomicrmw add ptr %i.yj, i64 -1 release, align 8, !noalias !2799
  %i.yr = icmp eq i64 %i.yq, 1
  br i1 %i.yr, label %bb.ga, label %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i

bb.ga:                                            ; preds = %bb.fz
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.co) #22
          to label %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i unwind label %bb.gc, !noalias !2787

bb.gb:                                            ; preds = %bb.fy
  %i.ys = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !2798
  unreachable

_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i: ; preds = %bb.ga, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !2795
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender13replace_track0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, %bb.fr
  store i8 -1, ptr %i.cy, align 8, !alias.scope !2794, !noalias !2786
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender13replace_track0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i

bb.gc:                                            ; preds = %bb.ga, %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track00Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %.body131.i.i.i

.body131.i.i.i:                                   ; preds = %bb.gc, %bb.fy, %bb.fx, %bb.fu
  %eh.lpad-body132.i.i.i = phi { ptr, i32 } [ %i.yk, %bb.fu ], [ %i.yt, %bb.gc ], [ %i.yn, %bb.fy ], [ %i.yn, %bb.fx ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc(ptr nonnull %i.yc, i8 %i.ye) #25
          to label %bb.gw unwind label %bb.fa, !noalias !2787

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender13replace_track0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenINtBL_3ArcB1h_ENCNCNvMs_NtB1j_10rtp_senderNtB2P_12RTCRtpSender13replace_track00ECs4KPtkQIfQGm_13libp2p_webrtc.exit.thread.i.i.i, %_RNCNCNvMs_NtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_senderNtB8_12RTCRtpSender13replace_track0s_0Cs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  br i1 %i.yd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.gd

bb.gd:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender13replace_track0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %i.yv = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2786
  %i.yw = and i64 %i.yv, 9223372036854775807
  %i.yx = icmp eq i64 %i.yw, 0
  br i1 %i.yx, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.ge, !prof !18

bb.ge:                                            ; preds = %bb.gd
  %i.yy = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #22
          to label %.noexc138.i.i.i unwind label %bb.gh, !noalias !2787

.noexc138.i.i.i:                                  ; preds = %bb.ge
  br i1 %i.yy, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %.noexc138.i.i.i
  store atomic i8 1, ptr %i.yu monotonic, align 4, !noalias !2787
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.gf, %.noexc138.i.i.i, %bb.gd, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEE8and_thenNtCs4ywFJ4GriGC_8smol_str7SmolStrNCNCNvMs_NtB1i_10rtp_senderNtB36_12RTCRtpSender13replace_track0s_0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %i.yz = atomicrmw xchg ptr %i.yc, i32 0 release, align 4, !noalias !2787
  %i.za = icmp eq i32 %i.yz, 2
  br i1 %i.za, label %bb.gg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, !prof !19

bb.gg:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.yc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i unwind label %bb.gh, !noalias !2787

bb.gh:                                            ; preds = %bb.gg, %bb.ge
  %i.zb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %bb.gg, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !2786
  %i.zc = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 192
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ze)
          to label %bb.gj unwind label %bb.gi, !noalias !2787

bb.gi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %i.zf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2786
  br label %bb.gv

bb.gj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCslqlypCAacxc_11webrtc_util4sync10MutexGuardINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver17RTCRtpTransceiverEEEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !2786
  %i.zg = load ptr, ptr %i.xr, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 48
  %.val112.i.i.i = load ptr, ptr %i.zh, align 8, !noalias !2787, !nonnull !14, !noundef !14
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.zj = load ptr, ptr %i.zi, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14 ; 2 uses
  %.val89.i.i.i = load ptr, ptr %i.zj, align 8, !noalias !2787, !nonnull !14, !noundef !14
  %i.zk = getelementptr i8, ptr %i.zj, i64 8
  %.val90.i.i.i = load ptr, ptr %i.zk, align 8, !noalias !2787, !nonnull !14, !align !13, !noundef !14 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.val90.i.i.i, i64 16
  %i.zm = load i64, ptr %i.zl, align 8, !range !16, !invariant.load !14, !noalias !2787
  %i.zn = add nsw i64 %i.zm, -1
  %i.zo = and i64 %i.zn, -16
  %i.zp = getelementptr inbounds nuw i8, ptr %.val89.i.i.i, i64 %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.zr = getelementptr inbounds nuw i8, ptr %.val90.i.i.i, i64 64
  %i.zs = load ptr, ptr %i.zr, align 8, !invariant.load !14, !noalias !2787, !nonnull !14
  %i.zt = invoke noundef i8 %i.zs(ptr noundef nonnull %i.zq)
          to label %bb.gk unwind label %bb.gl, !noalias !2787

bb.gk:                                            ; preds = %bb.gj
  %i.zu = getelementptr inbounds nuw i8, ptr %.val112.i.i.i, i64 16
  invoke void @_RNvMs_NtNtCsbCXxVlMkWND_6webrtc3api12media_engineNtB4_11MediaEngine26get_rtp_parameters_by_kind(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cw, ptr noundef nonnull align 8 %i.zu, i8 noundef %i.zt, i8 noundef 2)
          to label %bb.gm unwind label %bb.gl, !noalias !2787

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.zv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2786
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cx) #25
          to label %bb.gu unwind label %bb.fa, !noalias !2787

bb.gm:                                            ; preds = %bb.gk
  %i.zw = load ptr, ptr %i.zc, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14 ; 3 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 312
  %i.zy = load i32, ptr %i.zx, align 8, !noalias !2787, !noundef !14
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zw, i64 288
  %.val113.i.i.i = load ptr, ptr %i.zz, align 8, !noalias !2787, !nonnull !14, !noundef !14 ; 2 uses
  %i.aaa = getelementptr i8, ptr %i.zw, i64 296
  %.val114.i.i.i = load ptr, ptr %i.aaa, align 8, !noalias !2787 ; 2 uses
  %i.aab = atomicrmw add ptr %.val113.i.i.i, i64 1 monotonic, align 8, !noalias !2787
  %i.aac = icmp slt i64 %i.aab, 0
  br i1 %i.aac, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.trap()
  unreachable

bb.go:                                            ; preds = %bb.gm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val114.i.i.i) ]
  %i.aad = load ptr, ptr %i.xr, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 96
  %.val115.i.i.i = load ptr, ptr %i.aae, align 8, !noalias !2787, !nonnull !14, !noundef !14 ; 2 uses
  %i.aaf = atomicrmw add ptr %.val115.i.i.i, i64 1 monotonic, align 8, !noalias !2787
  %i.aag = icmp slt i64 %i.aaf, 0
  br i1 %i.aag, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  call void @llvm.trap()
  unreachable

bb.gq:                                            ; preds = %bb.go
  %i.aah = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aah, ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 24, i1 false), !noalias !2786
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aai, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !noalias !2786
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aaj, ptr noundef nonnull align 8 dereferenceable(48) %i.cw, i64 48, i1 false), !noalias !2786
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i32 %i.zy, ptr %i.aak, align 8, !noalias !2786
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %.val113.i.i.i, ptr %i.aal, align 8, !noalias !2786
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %.val114.i.i.i, ptr %i.aam, align 8, !noalias !2786
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %.val115.i.i.i, ptr %i.aan, align 8, !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !2786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2786
  %i.aao = load ptr, ptr %i.zi, align 8, !noalias !2786, !nonnull !14, !align !13, !noundef !14 ; 2 uses
  %.val87.i.i.i = load ptr, ptr %i.aao, align 8, !noalias !2787, !nonnull !14, !noundef !14
  %i.aap = getelementptr i8, ptr %i.aao, i64 8
  %.val88.i.i.i = load ptr, ptr %i.aap, align 8, !noalias !2787, !nonnull !14, !align !13, !noundef !14 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.val88.i.i.i, i64 16
  %i.aar = load i64, ptr %i.aaq, align 8, !range !16, !invariant.load !14, !noalias !2787
  %i.aas = add nsw i64 %i.aar, -1
  %i.aat = and i64 %i.aas, -16
  %i.aau = getelementptr inbounds nuw i8, ptr %.val87.i.i.i, i64 %i.aat
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 16
  %i.aaw = getelementptr inbounds nuw i8, ptr %.val88.i.i.i, i64 24
  %i.aax = load ptr, ptr %i.aaw, align 8, !invariant.load !14, !noalias !2787, !nonnull !14
  %i.aay = invoke { ptr, ptr } %i.aax(ptr noundef nonnull %i.aav, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.aai)
          to label %bb.gs unwind label %bb.gr, !noalias !2787 ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsbCXxVlMkWND_6webrtc5track11track_local17TrackLocalContextECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(128) %i.aai) #25
          to label %bb.gt unwind label %bb.fa, !noalias !2787

bb.gs:                                            ; preds = %bb.gq
  %i.aba = extractvalue { ptr, ptr } %i.aay, 0
  %i.abb = extractvalue { ptr, ptr } %i.aay, 1
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.aba, ptr %i.abc, align 8, !noalias !2786
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.abb, ptr %i.abd, align 8, !noalias !2786
  br label %bb.gy

bb.gt:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !2786
  br label %.body124.i.i.i

bb.gu:                                            ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !2786
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gi, %bb.gh
  %.pn38.pn.pn.i.i.i = phi { ptr, i32 } [ %i.zv, %bb.gu ], [ %i.zb, %bb.gh ], [ %i.zf, %bb.gi ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4ywFJ4GriGC_8smol_str7SmolStrEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cy) #25
          to label %bb.gw unwind label %bb.fa, !noalias !2787

bb.gw:                                            ; preds = %bb.gv, %.body131.i.i.i, %bb.fq
  %.pn38.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn38.pn.pn.i.i.i, %bb.gv ], [ %eh.lpad-body132.i.i.i, %.body131.i.i.i ], [ %i.yb, %bb.fq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !2786
  br label %.body124.i.i.i

bb.gx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCsbCXxVlMkWND_6webrtc5error5ErrorENtNtB4_6marker4SendEL_EEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3192.sroa.2.i.i.i, i64 48, i1 false), !noalias !2786
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15rtp_transceiver10rtp_sender13TrackEncodingEECs4KPtkQIfQGm_13libp2p_webrtc.exit169.i.i.i

bb.gy:                                            ; preds = %bb.gs, %bb.dm
  %i.abe = phi ptr [ %i.xl, %bb.gs ], [ %i.lb, %bb.dm ] ; 6 uses
  %i.abf = phi ptr [ %i.xm, %bb.gs ], [ %i.la, %bb.dm ] ; 5 uses
  %i.abg = phi ptr [ %i.xn, %bb.gs ], [ %.phi.trans.insert247.i, %bb.dm ] ; 6 uses
  %i.abh = phi ptr [ %i.xo, %bb.gs ], [ %i.qd, %bb.dm ] ; 5 uses
  %i.abi = phi ptr [ %i.xp, %bb.gs ], [ %.phi.trans.insert.i55.i, %bb.dm ] ; 6 uses
  %i.abj = phi ptr [ %i.xq, %bb.gs ], [ %i.rb, %bb.dm ] ; 5 uses
end_hunk_0
