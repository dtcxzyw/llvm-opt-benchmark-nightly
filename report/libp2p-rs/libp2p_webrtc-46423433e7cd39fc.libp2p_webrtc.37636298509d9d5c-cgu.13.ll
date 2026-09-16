Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc-46423433e7cd39fc.libp2p_webrtc.37636298509d9d5c-cgu.13?download=true
inline.NumInlined: 1989
inline.NumDeleted: 1177
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateEINtB2_12SpecFromIterBU_INtNtB4_5drain5DrainBU_EE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc:bb.a

bb.d:                                             ; preds = %.noexc.i
  %i.q = load i64, ptr %i.p, align 8, !noalias !1546
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #18
          to label %.noexc3.i unwind label %bb.r, !noalias !1547

.noexc3.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @103, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #18
          to label %bb.q unwind label %bb.r, !noalias !1547

bb.f:                                             ; preds = %.noexc.i
  %i.r = load ptr, ptr %i.p, align 8, !noalias !1546, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1546
  store i64 %i.o, ptr %i.f, align 8, !noalias !1546
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8, !noalias !1546
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8, !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !1547
  call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1550
  invoke void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.g unwind label %bb.m, !noalias !1551

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !9, !noalias !1550, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !1550 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1550
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.h, label %bb.j, !prof !49

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.y, %i.o
  br i1 %i.aa, label %bb.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, !prof !11

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 8, i64 noundef 336)
          to label %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit_crit_edge.i.i.i unwind label %bb.m, !noalias !1547

._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit_crit_edge.i.i.i: ; preds = %bb.i
  %.pre.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1552, !noalias !1553
  %.pre.i = load ptr, ptr %i.t, align 8, !alias.scope !1552, !noalias !1553
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @103, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #18
          to label %bb.l unwind label %bb.m, !noalias !1551

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit_crit_edge.i.i.i, %bb.h
  %i.ab = phi ptr [ %.pre.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit_crit_edge.i.i.i ], [ %i.r, %bb.h ]
  %i.ac = phi i64 [ %.pre.i.i.i, %._RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit_crit_edge.i.i.i ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !1554
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load ptr, ptr %i.a, align 8, !alias.scope !1557, !noalias !1558, !nonnull !8, !noundef !8 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !alias.scope !1557, !noalias !1558, !nonnull !8, !noundef !8 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE14extend_trustedINtNtB6_5drain5DrainBG_EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i

_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, %bb.k
  %i.ah = phi i64 [ %i.al, %bb.k ], [ %i.ac, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ] ; 3 uses
  %i.ai = phi ptr [ %i.aj, %bb.k ], [ %i.ae, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 336 ; 3 uses
  %.sroa.0.0.copyload6.i.i.i.i.i = load i64, ptr %i.ai, align 8, !noalias !1560 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload6.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.loopexit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i
  %.sroa.7.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.410.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.7.0..sroa_idx7.i.i.i.i.i, i64 328, i1 false), !noalias !1561
  %i.ak = getelementptr inbounds nuw [336 x i8], ptr %i.ab, i64 %i.ah ; 2 uses
  store i64 %.sroa.0.0.copyload6.i.i.i.i.i, ptr %i.ak, align 8, !noalias !1562
  %.sroa.410.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.410.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.410.i.i.i.i.i, i64 328, i1 false), !noalias !1562
  %i.al = add i64 %i.ah, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  %i.am = icmp eq ptr %i.aj, %i.af
  br i1 %i.am, label %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.loopexit.i.i.i.i, label %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i

_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.loopexit.i.i.i.i: ; preds = %bb.k, %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i
  %.val5.i.ph.i.i.i.i = phi i64 [ %i.ah, %_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i ], [ %i.al, %bb.k ]
  store ptr %i.aj, ptr %i.a, align 8, !alias.scope !1563, !noalias !1558
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE14extend_trustedINtNtB6_5drain5DrainBG_EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.f
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body.i unwind label %bb.n, !noalias !1547

bb.n:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1547
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE14extend_trustedINtNtB6_5drain5DrainBG_EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.loopexit.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %.val5.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %.val5.i.ph.i.i.i.i, %_RINvYINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBK_NCINvMsk_B8_INtB8_3VecBK_E14extend_trustedB3_E0E0ECs4KPtkQIfQGm_13libp2p_webrtc.exit.loopexit.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i, ptr %i.u, align 8, !alias.scope !1552, !noalias !1564
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateEINtB4_18SpecFromIterNestedB13_INtNtB6_5drain5DrainB13_EE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.o, !noalias !1547

bb.o:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE14extend_trustedINtNtB6_5drain5DrainBG_EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.o ], [ %lpad.thr_comm.i.i.i, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.p, !noalias !1547

bb.p:                                             ; preds = %bb.r, %.body.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1547
  unreachable

bb.q:                                             ; preds = %bb.e
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.r, %.body.i
  %.pn8.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aq, %bb.r ]
  resume { ptr, i32 } %.pn8.i

bb.r:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.p, !noalias !1547

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateEINtB4_18SpecFromIterNestedB13_INtNtB6_5drain5DrainB13_EE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateE14extend_trustedINtNtB6_5drain5DrainBG_EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1546
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1546
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VechEINtB2_12SpecFromIterhNtNtNtCskKLDkoKarTP_4core3str4iter5BytesE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.b = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1586
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1586
  %i.e = load i64, ptr %i.a, align 8, !range !9, !noalias !1586, !noundef !8
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noalias !1586, !noundef !8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !1586
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #18, !noalias !1586
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !noalias !1586, !nonnull !8, !noundef !8 ; 9 uses
  %i.l = icmp ule i64 %i.d, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1586
  %.not11.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not11.i.i.i.i.i, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhNtNtNtCskKLDkoKarTP_4core3str4iter5BytesE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit, label %iter.check

iter.check:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %i.m = ptrtoaddr ptr %i.k to i64
  %min.iters.check = icmp ult i64 %i.d, 4
  %i.n = sub i64 %i.c, %i.m
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.d, -32                      ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !noalias !1587
  %wide.load3 = load <16 x i8>, ptr %i.o, align 1, !noalias !1587
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load, ptr %i.p, align 1, !noalias !1588
  store <16 x i8> %wide.load3, ptr %i.q, align 1, !noalias !1588
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1582

middle.block:                                     ; preds = %vector.body
  %3 = and i64 %i.d, 28
  %4 = getelementptr i8, ptr %1, i64 %n.vec
  %cmp.n = icmp eq i64 %i.d, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhNtNtNtCskKLDkoKarTP_4core3str4iter5BytesE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1589

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4 = and i64 %i.d, -4                      ; 5 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index5 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 3 uses
  %next.gep6 = getelementptr i8, ptr %1, i64 %index5
  %wide.load7 = load <4 x i8>, ptr %next.gep6, align 1, !noalias !1587
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %index5
  store <4 x i8> %wide.load7, ptr %i.s, align 1, !noalias !1588
  %index.next8 = add nuw i64 %index5, 4           ; 2 uses
  %i.t = icmp eq i64 %index.next8, %n.vec4
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1583

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %5 = getelementptr i8, ptr %1, i64 %n.vec4
  %cmp.n9 = icmp eq i64 %i.d, %n.vec4
  br i1 %cmp.n9, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhNtNtNtCskKLDkoKarTP_4core3str4iter5BytesE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec4, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.0.012.i.i.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %4, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.0.012.i.i.i.i.i.ph12 = ptrtoaddr ptr %.sroa.0.012.i.i.i.i.i.ph to i64 ; 2 uses
  %i.u = sub i64 %i.b, %.sroa.0.012.i.i.i.i.i.ph12
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.v = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.012.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.x = load i8, ptr %.sroa.0.012.i.i.i.i.i.prol, align 1, !noalias !1587, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.v
  store i8 %i.x, ptr %i.y, align 1, !noalias !1588
  %i.z = add nuw i64 %i.v, 1                      ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1584

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.012.i.i.i.i.i.unr = phi ptr [ %.sroa.0.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.i.i.prol ]
  %i.aa = sub i64 %.sroa.0.012.i.i.i.i.i.ph12, %i.b
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhNtNtNtCskKLDkoKarTP_4core3str4iter5BytesE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.ac = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i, i64 1
  %i.ae = load i8, ptr %.sroa.0.012.i.i.i.i.i, align 1, !noalias !1587, !noundef !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac
  store i8 %i.ae, ptr %i.af, align 1, !noalias !1588
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i, i64 2
  %i.ah = load i8, ptr %i.ad, align 1, !noalias !1587, !noundef !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  store i8 %i.ah, ptr %i.aj, align 1, !noalias !1588
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i, i64 3
  %i.al = load i8, ptr %i.ag, align 1, !noalias !1587, !noundef !8
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i8 %i.al, ptr %i.an, align 1, !noalias !1588
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.ap = load i8, ptr %i.ak, align 1, !noalias !1587, !noundef !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ac
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 3
  store i8 %i.ap, ptr %i.ar, align 1, !noalias !1588
  %i.as = add nuw i64 %i.ac, 4                    ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq ptr %i.ao, %2
  br i1 %.not.i.i.i.i.i.3, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhNtNtNtCskKLDkoKarTP_4core3str4iter5BytesE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1585

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhNtNtNtCskKLDkoKarTP_4core3str4iter5BytesE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i
  %.val6.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i ], [ %n.vec4, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.as, %.lr.ph.i.i.i.i.i ]
  store i64 %i.h, ptr %0, align 8, !alias.scope !1586
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1586
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val6.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1586
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VectEINtB2_12SpecFromItertINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB2A_4connNtB3I_8DTLSConn3new0s_0EE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1597
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1597
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !1597
  %i.h = load i64, ptr %i.b, align 8, !range !9, !noalias !1597, !noundef !8
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !10, !noalias !1597, !noundef !8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB2h_4connNtB3p_8DTLSConn3new0s_0EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1597
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #18, !noalias !1597
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB2h_4connNtB3p_8DTLSConn3new0s_0EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1597, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1597
  store i64 %i.k, ptr %i.c, align 8, !noalias !1597
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1597
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !1597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1598
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %i.r, align 8, !noalias !1598
  store ptr %i.q, ptr %i.a, align 8, !noalias !1598
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.s, align 8, !noalias !1598
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB1r_4connNtB2z_8DTLSConn3new0s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4calltNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4l_3VectE14extend_trustedBN_E0E0ECs4KPtkQIfQGm_13libp2p_webrtc(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB2P_4connNtB3X_8DTLSConn3new0s_0EE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.c, !noalias !1597

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB2h_4connNtB3p_8DTLSConn3new0s_0EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i unwind label %bb.d, !noalias !1597

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !1597
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VectEECs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.t

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VectEINtB4_18SpecFromIterNestedtINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB2P_4connNtB3X_8DTLSConn3new0s_0EE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VectE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4IterNtNtCsbwH7Cv0ieDd_4dtls24signature_hash_algorithm15SignatureSchemeENCNCNvMNtB2h_4connNtB3p_8DTLSConn3new0s_0EECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1597
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VectEINtB2_12SpecFromItertINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeystINtNtB6_4sync3ArcNtNtCshnIq71uePFX_11webrtc_sctp6stream6StreamEEEE9from_iterCs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1611
  %i.f = tail call { i16, i16 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeystINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCshnIq71uePFX_11webrtc_sctp6stream6StreamEEENtNtNtB8_6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1), !noalias !1610 ; 2 uses
  %i.g = extractvalue { i16, i16 } %i.f, 0
  %i.h = trunc i16 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1611
  call void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeystINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCshnIq71uePFX_11webrtc_sctp6stream6StreamEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !1610
  %i.i = load i64, ptr %i.d, align 8, !noalias !1611, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1611
  %i.j = call i64 @llvm.uadd.sat.i64(i64 %i.i, i64 1)
  %..i.i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.j, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1611
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 2, i64 noundef 2), !noalias !1610
  %i.k = load i64, ptr %i.b, align 8, !range !9, !noalias !1611, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !noalias !1611, !noundef !8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.l, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i, !prof !11

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !noalias !1611
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #18, !noalias !1610
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.b
  %i.q = extractvalue { i16, i16 } %i.f, 1
  %i.r = load ptr, ptr %i.o, align 8, !noalias !1611, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = icmp ule i64 %..i.i, %i.n
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1611
  store i16 %i.q, ptr %i.r, align 2, !noalias !1610
  store i64 %i.n, ptr %i.e, align 8, !noalias !1611
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1611
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1611
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !1610
  call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  %i.t = invoke { i16, i16 } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeystINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtCshnIq71uePFX_11webrtc_sctp6stream6StreamEEENtNtNtB8_6traits8iterator8Iterator4nextCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1610 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.u = extractvalue { i16, i16 } %i.t, 0
  %i.v = trunc i16 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VectEINtB2_10SpecExtendtINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4KeystINtNtB6_4sync3ArcNtNtCshnIq71uePFX_11webrtc_sctp6stream6StreamEEEE11spec_extendCs4KPtkQIfQGm_13libp2p_webrtc.exit.i

.lr.ph.i.i.i:                                     ; preds = %.noexc.i, %.noexc9.i
  %.pn.i.i.i = phi { i16, i16 } [ %i.ak, %.noexc9.i ], [ %i.t, %.noexc.i ]
  %i.w = extractvalue { i16, i16 } %.pn.i.i.i, 1
  %i.x = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1614, !noalias !1615, !noundef !8 ; 4 uses
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc:bb.a
  %i.bd = load i64, ptr %i.aa, align 8, !noalias !2383
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bc, i64 %i.bd) #18
          to label %.noexc12.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2379

.noexc12.i.i.i.i:                                 ; preds = %bb.g
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.be = load ptr, ptr %i.aa, align 8, !noalias !2383, !nonnull !8, !noundef !8 ; 2 uses
  %i.bf = icmp ule i64 %.val1.i.i.i.i.i, %i.bc
  tail call void @llvm.assume(i1 %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2383
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXsl_NtNtCs3hXiKInSM84_3sdp11description7sessionNtB5_10RepeatTimeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i.i.i
  %i.bg = shl nuw nsw i64 %.val1.i.i.i.i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull readonly align 8 %.val.i.i.i.i.i, i64 %i.bg, i1 false), !noalias !2384
  br label %_RNvXsl_NtNtCs3hXiKInSM84_3sdp11description7sessionNtB5_10RepeatTimeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i

_RNvXsl_NtNtCs3hXiKInSM84_3sdp11description7sessionNtB5_10RepeatTimeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.h, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %.sroa.7.045.i.i.i.i ; 4 uses
  store i64 %i.bc, ptr %i.bh, align 8, !noalias !2379
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.be, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !noalias !2379
  %.sroa.530.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <2 x i64> %i.az, ptr %.sroa.530.0..sroa_idx.i.i.i.i, align 8, !noalias !2379
  %.sroa.732.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i64 %i.aw, ptr %.sroa.732.0..sroa_idx.i.i.i.i, align 8, !noalias !2379
  %i.bi = icmp eq i64 %i.ar, 0
  br i1 %i.bi, label %.loopexit.i, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body16.i

.body16.i:                                        ; preds = %.body.i.i, %bb.i
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !2379
  unreachable

.loopexit.i.i.i.i:                                ; preds = %bb.f
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  store i64 %.sroa.7.045.i.i.i.i, ptr %i.y, align 8, !noalias !2379
  %i.bk = icmp eq i64 %.sroa.7.045.i.i.i.i, 0
  br i1 %i.bk, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i: ; preds = %.lr.ph
  %i.bl = icmp eq i64 %i.bn, %.sroa.7.045.i.i.i.i
  br i1 %i.bl, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i65 = phi i64 [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i ], [ 0, %bb.j ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %.sroa.0.0.i.i.i.i65
  %i.bn = add nuw nsw i64 %.sroa.0.0.i.i.i.i65, 1 ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i unwind label %bb.k, !noalias !2385

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit7.i.i.i.i: ; preds = %.lr.ph67
  %i.bo = add i64 %.sroa.0.1.i.i.i.i66, 1         ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %.sroa.7.045.i.i.i.i
  br i1 %i.bp, label %.body.i.i, label %.lr.ph67

bb.k:                                             ; preds = %.lr.ph
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.br = icmp eq i64 %i.bn, %.sroa.7.045.i.i.i.i
  br i1 %i.br, label %.body.i.i, label %.lr.ph67

.lr.ph67:                                         ; preds = %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i66 = phi i64 [ %i.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit7.i.i.i.i ], [ %i.bn, %bb.k ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %.sroa.0.1.i.i.i.i66
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bs)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit7.i.i.i.i unwind label %bb.l, !noalias !2385

bb.l:                                             ; preds = %.lr.ph67
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !2385
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit7.i.i.i.i, %bb.k
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body16.i unwind label %bb.m, !noalias !2379

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i, %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.o unwind label %bb.i, !noalias !2374

bb.m:                                             ; preds = %.body.i.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !2379
  unreachable

.loopexit.i:                                      ; preds = %_RNvXsl_NtNtCs3hXiKInSM84_3sdp11description7sessionNtB5_10RepeatTimeNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i.i.i.i, %.lr.ph.i.i.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i.i.i
  store i64 %.val1.i.i, ptr %i.y, align 8, !noalias !2379
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2379
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.sroa.7.063.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.028.i, i64 24, i1 false), !noalias !2374
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store <2 x i64> %i.ag, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !2374
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.028.i)
  %i.bw = icmp eq i64 %i.ab, 0
  br i1 %i.bw, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.c

bb.n:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.p, %bb.n
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !2374
  unreachable

bb.o:                                             ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %.loopexit.split-lp.i, %.loopexit36.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi.i.i.i.i, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session10RepeatTimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i ], [ %lpad.loopexit.i, %.loopexit36.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %.sroa.7.063.i, ptr %i.s, align 8, !noalias !2374
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.q unwind label %bb.p, !noalias !2374

bb.p:                                             ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.r, !noalias !2374

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionEECs4KPtkQIfQGm_13libp2p_webrtc.exit unwind label %bb.n

bb.r:                                             ; preds = %bb.p
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !2374
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionEECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.q
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs3hXiKInSM84_3sdp11description7session15TimeDescriptionNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.c, %.loopexit.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  store i64 %i.i, ptr %i.s, align 8, !noalias !2374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2374
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3hXiKInSM84_3sdp11description7session8TimeZoneENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !8, !noundef !8 ; 5 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2391)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2392
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !2392
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noalias !2392, !noundef !8
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !noalias !2392, !noundef !8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !2392
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #18, !noalias !2392
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !2392, !nonnull !8, !noundef !8 ; 4 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2392
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs3hXiKInSM84_3sdp11description7session8TimeZoneNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.p = and i64 %i.e, 1152921504606846975
  %i.q = add i64 %i.i, -1
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, 1152921504606846974      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.s = shl i64 %index, 4                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s
  %i.t = getelementptr i8, ptr %i.d, i64 %i.s
  %next.gep2 = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !alias.scope !2391, !noalias !2393
  %wide.load3 = load <2 x i64>, ptr %next.gep2, align 8, !alias.scope !2391, !noalias !2393
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x i64> %wide.load, ptr %i.u, align 8, !noalias !2392
  store <2 x i64> %wide.load3, ptr %i.w, align 8, !noalias !2392
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %.lr.ph.i.preheader6.loopexit, label %vector.body, !llvm.loop !2389

.lr.ph.i.preheader6.loopexit:                     ; preds = %vector.body
  %2 = shl nuw i64 %n.vec, 4
  %3 = getelementptr i8, ptr %i.d, i64 %2
  %4 = sub i64 %i.i, %n.vec
  br label %.lr.ph.i.preheader6

.lr.ph.i.preheader6:                              ; preds = %.lr.ph.i.preheader6.loopexit, %.lr.ph.i.preheader
  %.sroa.014.023.i.ph = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %3, %.lr.ph.i.preheader6.loopexit ]
  %.sroa.7.022.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %.lr.ph.i.preheader6.loopexit ]
  %.sroa.10.021.i.ph = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %4, %.lr.ph.i.preheader6.loopexit ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader6, %bb.c
  %.sroa.014.023.i = phi ptr [ %i.ab, %bb.c ], [ %.sroa.014.023.i.ph, %.lr.ph.i.preheader6 ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.aa, %bb.c ], [ %.sroa.7.022.i.ph, %.lr.ph.i.preheader6 ] ; 2 uses
  %.sroa.10.021.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.10.021.i.ph, %.lr.ph.i.preheader6 ]
  %i.y = icmp eq ptr %.sroa.014.023.i, %i.n
  br i1 %i.y, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs3hXiKInSM84_3sdp11description7session8TimeZoneNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.aa = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.023.i, i64 16
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.022.i
  %i.ad = load <2 x i64>, ptr %.sroa.014.023.i, align 8, !alias.scope !2391, !noalias !2393
  store <2 x i64> %i.ad, ptr %i.ac, align 8, !noalias !2392
  %i.ae = icmp eq i64 %i.z, 0
  br i1 %i.ae, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs3hXiKInSM84_3sdp11description7session8TimeZoneNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %.lr.ph.i, !llvm.loop !2390

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs3hXiKInSM84_3sdp11description7session8TimeZoneNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %.lr.ph.i, %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  store i64 %i.i, ptr %0, align 8, !noalias !2391
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2391
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2391
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsbCXxVlMkWND_6webrtc13ice_transport10ice_server12RTCIceServerENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2400
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, 128102389400760776) %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72), !noalias !2400
  %i.k = load i64, ptr %i.d, align 8, !range !9, !noalias !2400, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !noalias !2400, !noundef !8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !2400
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #18, !noalias !2400
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !2400, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2400
  store i64 %i.n, ptr %i.f, align 8, !noalias !2400
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.q, ptr %i.s, align 8, !noalias !2400
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.i, i64 %i.j
  %i.v = icmp eq i64 %i.n, 0
  br i1 %i.v, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsbCXxVlMkWND_6webrtc13ice_transport10ice_server12RTCIceServerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph.i
  %.sroa.012.027.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.aa, %bb.i ] ; 5 uses
  %.sroa.7.026.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ab, %bb.i ] ; 3 uses
  %.sroa.10.025.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.y, %bb.i ]
  %i.y = add i64 %.sroa.10.025.i, -1              ; 2 uses
  %i.z = icmp eq ptr %.sroa.012.027.i, %i.u
  br i1 %i.z, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsbCXxVlMkWND_6webrtc13ice_transport10ice_server12RTCIceServerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.d

.loopexit.i:                                      ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 72
  %i.ab = add nuw nsw i64 %.sroa.7.026.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2401
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.012.027.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !2402

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2401
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 24
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.f unwind label %bb.e, !noalias !2403

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i: ; preds = %bb.g, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.ad, %bb.e ], [ %i.af, %bb.g ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #21
          to label %bb.k unwind label %bb.h, !noalias !2403

bb.e:                                             ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2401
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.012.027.i, i64 48
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %bb.i unwind label %bb.g, !noalias !2403

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i unwind label %bb.h, !noalias !2403

bb.h:                                             ; preds = %bb.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !2403
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2404
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2401
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %.sroa.7.026.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !2402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ai = icmp eq i64 %i.y, 0
  br i1 %i.ai, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsbCXxVlMkWND_6webrtc13ice_transport10ice_server12RTCIceServerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit, label %bb.c

bb.j:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !2402
  unreachable

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i, %.loopexit.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs4KPtkQIfQGm_13libp2p_webrtc.exit.i.i ], [ %lpad.loopexit.i, %.loopexit.i ]
  store i64 %.sroa.7.026.i, ptr %i.t, align 8, !noalias !2400
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsbCXxVlMkWND_6webrtc13ice_transport10ice_server12RTCIceServerEECs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #21
          to label %bb.l unwind label %bb.j, !noalias !2402

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCsbCXxVlMkWND_6webrtc13ice_transport10ice_server12RTCIceServerNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs4KPtkQIfQGm_13libp2p_webrtc.exit: ; preds = %bb.c, %bb.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i
  store i64 %i.j, ptr %i.t, align 8, !noalias !2400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !2405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2400
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsbCXxVlMkWND_6webrtc15peer_connection11certificate14RTCCertificateENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs4KPtkQIfQGm_13libp2p_webrtc(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [272 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [296 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.013.i = alloca [320 x i8], align 8       ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.j = load i64, ptr %i.g, align 8, !noundef !8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2416
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs4KPtkQIfQGm_13libp2p_webrtc(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef range(i64 0, 27450512014448738) %i.j, i1 noundef zeroext false, i64 noundef 8, i64 noundef 336), !noalias !2416
  %i.k = load i64, ptr %i.e, align 8, !range !9, !noalias !2416, !noundef !8
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !10, !noalias !2416, !noundef !8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.l, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.o, align 8, !noalias !2416
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.n, i64 %i.p) #18, !noalias !2416
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4KPtkQIfQGm_13libp2p_webrtc.exit.i: ; preds = %bb.a
  %i.q = load ptr, ptr %i.o, align 8, !noalias !2416, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = icmp ule i64 %i.j, %i.n
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2416
  store i64 %i.n, ptr %i.f, align 8, !noalias !2416
end_hunk_1
