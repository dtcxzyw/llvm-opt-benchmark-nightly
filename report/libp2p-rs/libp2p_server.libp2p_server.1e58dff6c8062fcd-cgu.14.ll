Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_server.libp2p_server.1e58dff6c8062fcd-cgu.14?download=true
inline.NumInlined: 3209
inline.NumDeleted: 1562
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMNtCshPShd8ZVvJf_6rustls12common_stateNtB3_11CommonState21process_main_protocolNtNtNtB5_6server11server_conn20ServerConnectionDataECs2Bxje7pdMIr_13libp2p_server:bb.a
          cleanup                                 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !35, !invariant.load !6 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.u, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !36, !invariant.load !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef %i.as, i64 noundef range(i64 1, -9223372036854775807) %i.av) #33
  br label %bb.u

bb.q:                                             ; preds = %bb.e
  %i.aw = add i8 %i.s, -1
  store i8 %i.aw, ptr %i.r, align 1
  invoke void @_RNvMNtCshPShd8ZVvJf_6rustls12common_stateNtB2_11CommonState18send_warning_alert(ptr noalias nofree noundef nonnull align 8 dereferenceable(840) %1, i8 noundef 24, i8 undef)
          to label %bb.r unwind label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.o, %bb.r
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls4msgs7message7MessageECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(168) %2)
  br label %bb.l

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.ay, align 8
  store i8 -1, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs2Bxje7pdMIr_13libp2p_server.exit

bb.s:                                             ; preds = %bb.c, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtCshPShd8ZVvJf_6rustls12common_state5StateNtNtNtB1g_6server11server_conn20ServerConnectionDataEEL_EECs2Bxje7pdMIr_13libp2p_server(ptr nonnull %3, ptr nonnull %4) #37
          to label %bb.u unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

.body.thread:                                     ; preds = %bb.i, %bb.u
  %.pn42 = phi { ptr, i32 } [ %.pn.ph, %bb.u ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn42

bb.u:                                             ; preds = %bb.s, %bb.p, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm, %bb.s ], [ %i.aq, %bb.p ], [ %i.aq, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshPShd8ZVvJf_6rustls4msgs7message7MessageECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(168) %2) #37
          to label %.body.thread unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_2id2IdNtNtNtNtB7_6parser7matches11matched_arg10MatchedArgE12remove_entryeECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.g = phi ptr [ %i.i, %.backedge.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %i.m, %.backedge.i ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %.val8.i = load i64, ptr %i.j, align 8, !noalias !45, !noundef !6
  %i.k = icmp eq i64 %.val8.i, %3
  br i1 %i.k, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i, label %.backedge.i

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %.lr.ph.i
  %.val7.i = load ptr, ptr %i.g, align 8, !noalias !45, !nonnull !6, !noundef !6
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val7.i, ptr nonnull readonly %2, i64 %3), !alias.scope !50, !noalias !45
  %bcmp.i.fr.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i
  %i.l = icmp eq i32 %bcmp.i.fr.i.i.i.i, 0
  br i1 %i.l, label %bb.b, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.m = add nuw nsw i64 %i.h, 1
  %i.n = icmp eq ptr %i.i, %i.e
  br i1 %i.n, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i
  %i.o = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs80T0Klmhmtx_12clap_builder4util2id2IdE6removeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCs80T0Klmhmtx_12clap_builder6parser7matches11matched_arg10MatchedArgE6removeCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  store ptr %i.p, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %bb.a, %bb.b
  %.sink15 = phi i64 [ 8, %bb.b ], [ 16, %bb.a ], [ 16, %.backedge.i ]
  %.sink = phi i64 [ %i.q, %bb.b ], [ 2, %bb.a ], [ 2, %.backedge.i ]
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  store i64 %.sink, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMNtNtCs80T0Klmhmtx_12clap_builder4util8flat_mapINtB3_7FlatMapNtNtB5_9any_value10AnyValueIdNtB13_8AnyValueE3getB11_ECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.val7 = load i128, ptr %1, align 8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0819, i64 16 ; 2 uses
  %i.h = add i64 %.sroa.8.018, 1
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0819 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.8.018 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val = load i128, ptr %.sroa.0.0819, align 8
  %i.j = icmp eq i128 %.val, %.val7
  br i1 %i.j, label %bb.c, label %bb.b

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.m = icmp ult i64 %.sroa.8.018, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.8.018
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.018, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.833 = alloca [16 x i8], align 8          ; 2 uses
  %i.a = invoke noundef zeroext i1 @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 -1, ptr %i.b, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.c = load ptr, ptr %2, align 8, !alias.scope !60, !noundef !6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !73, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !73, !nonnull !6, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !73, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !73, !noundef !6
  tail call void %i.h(ptr noundef %i.f, ptr noundef %i.j, i64 noundef %i.l), !noalias !73, !inline_history !74
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.o = load i16, ptr %i.n, align 8, !noundef !6 ; 3 uses
  %i.p = and i16 %i.o, %i.m
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6
  %i.v = zext i16 %i.o to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !6
  %i.aa = load ptr, ptr %2, align 8               ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !75
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %.not153 = icmp eq i64 %i.s, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %bb.e
  %.sroa.07.0.ph = phi i64 [ %i.ay, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.az, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.q, %bb.e ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.0.0.ph, %i.s        ; 2 uses
  %.not153.not = xor i1 %.not153, true
  %brmerge = or i1 %i.aj, %.not153.not
  %.sroa.0.0.ph.mux = select i1 %i.aj, i64 %.sroa.0.0.ph, i64 0 ; 6 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !noundef !6 ; 2 uses
  %.not = icmp eq i16 %i.al, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %.loopexit
  %i.am = zext i16 %i.al to i64                   ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.ao = load i16, ptr %i.an, align 2, !noundef !6 ; 2 uses
  %i.ap = and i16 %i.ao, %i.o
  %i.aq = zext i16 %i.ap to i64
  %i.ar = sub i64 %.sroa.0.0.ph.mux, %i.aq
  %i.as = and i64 %i.ar, %i.v
  %i.at = icmp samesign ult i64 %i.as, %.sroa.07.0.ph
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit, %bb.g
  %i.au = icmp samesign ugt i64 %.sroa.07.0.ph, 511
  %i.av = load i64, ptr %1, align 8, !range !76
  %i.aw = icmp ne i64 %i.av, 2
  %narrow = select i1 %i.au, i1 %i.aw, i1 false
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  %.sroa.10.0 = zext i1 %narrow to i8
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ah, ptr %.sroa.523.0..sroa_idx24, align 8
  %.sroa.728.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ai, ptr %.sroa.728.0..sroa_idx29, align 8
  %.sroa.833.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833.0..sroa_idx34, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.833, i64 16, i1 false)
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.836.0..sroa_idx37, align 8
  %.sroa.941.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.m, ptr %.sroa.941.0..sroa_idx42, align 8
  %.sroa.10.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 %.sroa.10.0, ptr %.sroa.10.0..sroa_idx46, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp eq i16 %i.ao, %i.m
  br i1 %i.ax, label %bb.j, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.m, %bb.k, %.split, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.i
  %i.ay = add nuw nsw i64 %.sroa.07.0.ph, 1
  %i.az = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp ugt i64 %i.x, %i.am
  br i1 %i.ba, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %i.am ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !noundef !6
  %i.be = icmp ne ptr %i.bd, null                 ; 2 uses
  %i.bf = xor i1 %i.be, %i.ab
  br i1 %i.bf, label %bb.l, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.l:                                             ; preds = %bb.k
  br i1 %i.be, label %bb.m, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !6
  %i.bi = icmp eq i64 %i.bh, %i.af
  br i1 %i.bi, label %.split, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !noundef !6
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bk, ptr %i.ag, i64 %i.af)
  %i.bl = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bl, label %bb.o, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.n:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #40
          to label %bb.f unwind label %bb.p

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.ab)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bn = load i8, ptr %i.bm, align 8, !range !75, !noundef !6
  %i.bo = icmp eq i8 %i.bn, %i.ad
  br i1 %i.bo, label %.thread, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.thread:                                          ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx2677 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx2677, align 8
  %.sroa.728.0..sroa_idx3178 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx3178, align 8
  %.sroa.10.0..sroa_idx4880 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx4880, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit

bb.o:                                             ; preds = %.split
  store ptr %1, ptr %0, align 8
  %.sroa.523.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph.mux, ptr %.sroa.523.0..sroa_idx26, align 8
  %.sroa.728.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.am, ptr %.sroa.728.0..sroa_idx31, align 8
  %.sroa.10.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 2, ptr %.sroa.10.0..sroa_idx48, align 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !95, !noundef !6
  %i.br = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !95, !nonnull !6, !noundef !6
  tail call void %i.bs(ptr noundef %i.bq, ptr noundef %i.ag, i64 noundef %i.af), !noalias !95, !inline_history !74
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.o, %.thread, %bb.d, %bb.c, %bb.h
  ret void

.noexc:                                           ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %i.bt

bb.p:                                             ; preds = %bb.a, %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.bu = load ptr, ptr %2, align 8, !alias.scope !102, !noundef !6 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.noexc, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !115, !noundef !6
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !115, !nonnull !6, !noundef !6
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !115, !noundef !6
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !115, !noundef !6
  invoke void %i.bz(ptr noundef %i.bx, ptr noundef %i.cb, i64 noundef %i.cd)
          to label %.noexc unwind label %bb.r, !inline_history !116

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap12contains_keyRNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !117, !noalias !120, !noundef !6 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !117, !noalias !120, !noundef !6 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !117, !noalias !120, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !117, !noalias !120, !nonnull !6
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !117, !noalias !120, !nonnull !6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i, %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.ae, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.af, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !122, !noundef !6 ; 2 uses
  %.not.i = icmp eq i16 %i.u, -1
  br i1 %.not.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !122, !noundef !6 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ab
  br i1 %i.ac, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.split.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !122, !noundef !6
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !122, !noundef !6 ; 2 uses
  %i.am = icmp eq ptr %i.al, null                 ; 2 uses
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !122, !noundef !6 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !122, !noundef !6
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %.split.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

.split.i:                                         ; preds = %bb.h
  %i.as = load ptr, ptr %i.q, align 8, !noalias !122, !noundef !6
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !122, !noundef !6
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.as, i64 %i.ap), !noalias !122
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !75, !noalias !122, !noundef !6
  %i.ay = load i8, ptr %i.q, align 8, !range !75, !noalias !122, !noundef !6
  %i.az = icmp eq i8 %i.ax, %i.ay
  br i1 %i.az, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #39, !noalias !122
  unreachable

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4findNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %.split.i, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %.loopexit, %bb.c, %bb.a
  %i.ba = phi i1 [ false, %bb.a ], [ true, %.split.i ], [ true, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i ], [ false, %.loopexit ], [ false, %bb.c ]
  ret i1 %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !132, !noalias !133, !noundef !6 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !136
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !133 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !132, !noalias !133, !noundef !6 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !132, !noalias !133, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !132, !noalias !133, !nonnull !6
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !132, !noalias !133, !nonnull !6
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %1, align 8                ; 6 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %i.u = load i8, ptr %i.q, align 8, !range !75
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %bb.b
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.k   ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !141, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i.i, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !141, !noundef !6 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.ag
  br i1 %i.ah, label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !141, !noundef !6
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !141, !noundef !6
  %i.at = icmp eq i64 %i.as, %i.v
  br i1 %i.at, label %.split.i.i.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !141, !noundef !6
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !noalias !141
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ay = load i8, ptr %i.ax, align 8, !range !75, !noalias !141, !noundef !6
  %i.az = icmp eq i8 %i.ay, %i.u
  br i1 %i.az, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #39
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !160, !noundef !6
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !160, !nonnull !6, !noundef !6
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.m, !inline_history !116

_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit_crit_edge, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit.i ], [ %.pre, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit.i ], [ null, %._RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !175, !noundef !6
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !175, !nonnull !6, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !175, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !175, !noundef !6
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !noalias !175, !inline_history !74
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit2: ; preds = %_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB6_9HeaderMap6removeNtNtB8_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 9 uses
  %.sroa.09 = alloca [64 x i8], align 8           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.09, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !182, !noalias !183, !noundef !6 ; 4 uses
  %i.e = icmp ult i64 %i.d, 88686269585142076
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %..loopexit15_crit_edge, label %bb.b

..loopexit15_crit_edge:                           ; preds = %bb.a
  %.pre31.pre = load ptr, ptr %2, align 8, !alias.scope !186
  br label %.loopexit15

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i16 @_RINvNtNtCscwxJ8MeEu7n_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2), !noalias !183 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.i = load i16, ptr %i.h, align 8, !alias.scope !182, !noalias !183, !noundef !6 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !182, !noalias !183, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !182, !noalias !183, !nonnull !6
  %i.p = zext i16 %i.i to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !182, !noalias !183, !nonnull !6
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %2, align 8                ; 7 uses
  %i.v = icmp eq ptr %i.u, null                   ; 3 uses
  %i.w = load i8, ptr %i.s, align 8, !range !75
  %i.x = load i64, ptr %i.t, align 8              ; 3 uses
  %i.y = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br label %.outer67

.outer67:                                         ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.al, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.am, %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.z = icmp ult i64 %.sroa.0.0.i.i.ph, %i.m     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.z, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.z, i64 %.sroa.0.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit76, label %infloop

.loopexit76:                                      ; preds = %.outer67
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !noalias !191, !noundef !6 ; 3 uses
  %.not.i.i = icmp eq i16 %i.ab, -1
  br i1 %.not.i.i, label %.loopexit15, label %bb.c

bb.c:                                             ; preds = %.loopexit76
  %i.ac = zext i16 %i.ab to i64                   ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !noalias !191, !noundef !6 ; 2 uses
  %i.af = and i16 %i.ae, %i.i
  %i.ag = zext i16 %i.af to i64
  %i.ah = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ag
  %i.ai = and i64 %i.ah, %i.p
  %i.aj = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ai
  br i1 %i.aj, label %.loopexit15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp eq i16 %i.ae, %i.g
  br i1 %i.ak, label %bb.e, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.al = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.am = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer67

bb.e:                                             ; preds = %bb.d
  %i.an = icmp samesign ugt i64 %i.d, %i.ac
  br i1 %i.an, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw [104 x i8], ptr %i.r, i64 %i.ac ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !191, !noundef !6
  %i.ar = icmp ne ptr %i.aq, null                 ; 2 uses
  %i.as = xor i1 %i.ar, %i.v
  br i1 %i.as, label %bb.g, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.ar, label %bb.h, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.au = load i64, ptr %i.at, align 8, !noalias !191, !noundef !6
  %i.av = icmp eq i64 %i.au, %i.x
  br i1 %i.av, label %.split.i.i, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !191, !noundef !6
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ax, ptr %i.y, i64 %i.x), !noalias !191
  %i.ay = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.v)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.ba = load i8, ptr %i.az, align 8, !range !75, !noalias !191, !noundef !6
  %i.bb = icmp eq i8 %i.ba, %i.w
  br i1 %i.bb, label %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit, label %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i

bb.i:                                             ; preds = %.invoke, %bb.ae, %bb.o, %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.t, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.cv, %bb.t ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit, label %bb.j

bb.j:                                             ; preds = %.body
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !210, !noundef !6
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !210, !nonnull !6, !noundef !6
  invoke void %i.bg(ptr noundef %i.be, ptr noundef %i.y, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit unwind label %bb.af, !inline_history !116

.loopexit15:                                      ; preds = %.loopexit76, %bb.c, %..loopexit15_crit_edge
  %.pre31 = phi ptr [ %.pre31.pre, %..loopexit15_crit_edge ], [ %i.u, %bb.c ], [ %i.u, %.loopexit76 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.bh, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit8: ; preds = %bb.ae, %.loopexit, %.loopexit15
  %i.bi = phi ptr [ %.pre31, %.loopexit15 ], [ %i.u, %.loopexit ], [ %i.u, %bb.ae ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit3, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !225, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !225, !nonnull !6, !noundef !6
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !225, !noundef !6
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !225, !noundef !6
  tail call void %i.bn(ptr noundef %i.bl, ptr noundef %i.bp, i64 noundef %i.br), !noalias !225, !inline_history !74
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit3

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit3: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECs2Bxje7pdMIr_13libp2p_server.exit8, %bb.k
  ret void

_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit: ; preds = %_RNvXsy_NtNtCscwxJ8MeEu7n_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i.i, %.split.i.i
  %i.bs = load i64, ptr %i.ao, align 8, !range !226, !noundef !6
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !6
  invoke void @_RNvMs0_NtNtCscwxJ8MeEu7n_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.bv)
          to label %._crit_edge unwind label %bb.i

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i64, ptr %i.l, align 8, !alias.scope !227, !noalias !230
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit
  %i.bw = phi i64 [ %.pre, %._crit_edge ], [ %i.m, %_RINvXs0_NtNtNtCscwxJ8MeEu7n_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs2Bxje7pdMIr_13libp2p_server.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.bx = icmp ult i64 %.sroa.0.0.i.i.ph.mux, %i.bw
  br i1 %i.bx, label %bb.n, label %.invoke

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.n, align 8, !alias.scope !227, !noalias !230, !nonnull !6, !noundef !6 ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  store i16 -1, ptr %i.bz, align 2, !noalias !232
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 0, ptr %i.ca, align 2, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.cb = load i64, ptr %i.c, align 8, !alias.scope !236, !noalias !237, !noundef !6 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, 88686269585142076
  tail call void @llvm.assume(i1 %i.cc)
  %.not.i.i4 = icmp samesign ugt i64 %i.cb, %i.ac
  br i1 %.not.i.i4, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2Bxje7pdMIr_13libp2p_server.exit.i, label %bb.o, !prof !239

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.ac, i64 noundef %i.cb) #39
          to label %.noexc5 unwind label %bb.i

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2Bxje7pdMIr_13libp2p_server.exit.i: ; preds = %bb.n
  %i.cd = load ptr, ptr %i.q, align 8, !alias.scope !236, !noalias !237, !nonnull !6, !noundef !6 ; 2 uses
  %i.ce = getelementptr inbounds nuw [104 x i8], ptr %i.cd, i64 %i.ac ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %i.ce, i64 104, i1 false), !noalias !240
  %i.cf = add nsw i64 %i.cb, -1                   ; 5 uses
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.cd, i64 %i.cf
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ce, ptr noundef nonnull align 8 dereferenceable(104) %i.cg, i64 104, i1 false), !noalias !241
  store i64 %i.cf, ptr %i.c, align 8, !alias.scope !236, !noalias !237
  %i.ch = icmp samesign ugt i64 %i.cf, %i.ac
  br i1 %i.ch, label %bb.p, label %bb.q

.invoke:                                          ; preds = %bb.e, %bb.m
  %i.ci = phi i64 [ %.sroa.0.0.i.i.ph.mux, %bb.m ], [ %i.ac, %bb.e ]
  %i.cj = phi i64 [ %i.bw, %bb.m ], [ %i.d, %bb.e ]
  %i.ck = phi ptr [ @78, %bb.m ], [ @6, %bb.e ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.cj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck) #39
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.cl = load i16, ptr %i.h, align 8, !alias.scope !227, !noalias !230, !noundef !6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.cn = load i16, ptr %i.cm, align 8, !noalias !232, !noundef !6 ; 2 uses
  %i.co = and i16 %i.cn, %i.cl
  %i.cp = zext i16 %i.co to i64
  br label %bb.r

bb.q:                                             ; preds = %bb.y, %bb.v, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBJ_5value11HeaderValueEE11swap_removeCs2Bxje7pdMIr_13libp2p_server.exit.i
  %i.cq = icmp eq i64 %i.cf, 0
  br i1 %i.cq, label %.loopexit, label %bb.z

bb.r:                                             ; preds = %.backedge, %bb.p
  %.sroa.01.0.i = phi i64 [ %i.cp, %bb.p ], [ %.sroa.01.0.i.be, %.backedge ] ; 4 uses
  %i.cr = icmp ult i64 %.sroa.01.0.i, %i.bw
  br i1 %i.cr, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.01.0.i
  %i.ct = load i16, ptr %i.cs, align 2, !noalias !232, !noundef !6 ; 2 uses
  %.not.i = icmp eq i16 %i.ct, -1
  %i.cu = zext i16 %i.ct to i64
  %.not35.i = icmp samesign ugt i64 %i.cf, %i.cu
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not35.i
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.invoke.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECs2Bxje7pdMIr_13libp2p_server(ptr noalias nofree noundef align 8 dereferenceable(104) %i.a) #37
          to label %.body unwind label %bb.ad, !noalias !232

bb.u:                                             ; preds = %bb.s
  %i.cw = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.u, %bb.r
  %.sroa.01.0.i.be = phi i64 [ %i.cw, %bb.u ], [ 0, %bb.r ]
  br label %bb.r

bb.v:                                             ; preds = %bb.s
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.sroa.01.0.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i16 %i.ab, ptr %i.cx, align 2, !noalias !232
  store i16 %i.cn, ptr %i.cy, align 2, !noalias !232
  %i.cz = load i64, ptr %i.ce, align 8, !range !226, !noalias !232, !noundef !6
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.w, label %bb.q

bb.w:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !noalias !232, !noundef !6 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !232, !noundef !6 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !227, !noalias !230, !noundef !6 ; 4 uses
  %i.dh = icmp ult i64 %i.dc, %i.dg
  br i1 %i.dh, label %bb.x, label %.invoke.i

bb.x:                                             ; preds = %bb.w
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !227, !noalias !230, !nonnull !6, !noundef !6 ; 2 uses
  %i.dk = getelementptr inbounds nuw [72 x i8], ptr %i.dj, i64 %i.dc ; 2 uses
end_hunk_0
