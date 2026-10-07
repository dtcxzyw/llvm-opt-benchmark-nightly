Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/metrics_example.metrics_example.daac9157df9ac627-cgu.13?download=true
inline.NumInlined: 1562
inline.NumDeleted: 725
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCskFgHTArva8k_13netlink_proto8protocol8protocol9RequestIdINtBP_14PendingRequestINtNtCsgV0iE8Xkxiy_15futures_channel4mpsc15UnboundedSenderINtNtCsgUwh0qa7Dto_19netlink_packet_core7message14NetlinkMessageNtNtCs3LwfirTY3Ij_20netlink_packet_route7message19RouteNetlinkMessageEEENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiLZOIpitoQl_15metrics_example:bb.a
bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
  call void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !noalias !2601
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !2602, !noalias !2603, !nonnull !9, !noundef !9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val5.i = load i64, ptr %i.d, align 8, !alias.scope !2602, !noalias !2603, !noundef !9 ; 3 uses
  %i.e = lshr i64 %i.c, 57
  %i.f = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn.i.i = phi i64 [ %i.c, %bb.a ], [ %i.ah, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.a ], [ %.sroa.4.120.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.04.122.i.i, %bb.e ]
  %i.i = phi i64 [ 0, %bb.a ], [ %i.ag, %bb.e ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !2604 ; 3 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.h
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.l, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.029.i.i = phi i16 [ %i.w, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.0.017.i.i, %i.n
  %i.p = and i64 %i.o, %.val5.i
  %i.q = load ptr, ptr %0, align 8, !alias.scope !2602, !noalias !2605, !nonnull !9, !noundef !9
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameINtB2_10EquivalentBq_E10equivalentCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !2606
  br i1 %i.u, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2d_11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsiLZOIpitoQl_15metrics_example.exit, label %bb.c, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.d, !prof !14

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.v = add i16 %.sroa.01.029.i.i, -1
  %i.w = and i16 %i.v, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.y = bitcast <16 x i1> %i.x to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread24.i.i, !prof !14

.thread24.i.i:                                    ; preds = %bb.d
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.y, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.0.017.i.i, %i.aa
  %i.ac = and i64 %i.ab, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ac, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ad = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %i.af = icmp eq i16 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.ag = add i64 %i.i, 16                        ; 2 uses
  %i.ah = add i64 %i.ag, %.sroa.0.017.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !9
  %i.ak = icmp sgt i8 %i.aj, -1
  br i1 %i.ak, label %bb.g, label %bb.h, !prof !14

bb.g:                                             ; preds = %bb.f
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.al = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.am = bitcast <16 x i1> %i.al to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.am, 0
  %i.an = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.am, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  call void @llvm.assume(i1 %.not.i23.i.i)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ao, %bb.g ], [ %.sroa.4.121.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2607)
  %i.ap = load ptr, ptr %0, align 8, !alias.scope !2607, !nonnull !9, !noundef !9 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !2607, !noundef !9
  %i.as = and i8 %i.ar, 1
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.av = add i64 %.sroa.3.0.i.ph.i, -16
  %i.aw = load i64, ptr %i.d, align 8, !alias.scope !2607, !noundef !9
  %i.ax = and i64 %i.aw, %i.av
  store i8 %i.f, ptr %i.aq, align 1, !noalias !2607
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  store i8 %i.f, ptr %i.az, align 1, !noalias !2607
  %i.ba = load <2 x i64>, ptr %i.au, align 8, !alias.scope !2607
  %i.bb = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.at, i64 0
  %i.bc = sub <2 x i64> %i.ba, %i.bb
  store <2 x i64> %i.bc, ptr %i.au, align 8, !alias.scope !2607
  %i.bd = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.be = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -8
  store ptr %1, ptr %i.bf, align 8, !noalias !2607
  br label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2d_11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsiLZOIpitoQl_15metrics_example.exit

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTRNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameuEE25find_or_find_insert_indexNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0NCINvB2d_11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsiLZOIpitoQl_15metrics_example.exit: ; preds = %.lr.ph.i.i, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ true, %.lr.ph.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE18disconnect_sendersCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !noalias !2636 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !noalias !2636
  %i.h = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit.thread

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.017.0.copyload38 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx39, i64 16, i1 false)
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.068.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.s, %.backedge.i ] ; 3 uses
  %.sroa.07.067.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.t, %.backedge.i ] ; 2 uses
  %.sroa.0.066.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.039.065.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.039.0.be.i, %.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.068.i, 1
  %i.l = and i64 %i.k, 31                         ; 3 uses
  %i.m = icmp eq i64 %i.l, 31
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i32 %.sroa.0.066.i, 7
  br i1 %i.n, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !2636

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.066.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.o = mul nuw i32 %.sroa.0.066.i, %.sroa.0.066.i ; 2 uses
  %xtraiter105 = and i32 %i.o, 7                  ; 3 uses
  %i.p = icmp ult i32 %.sroa.0.066.i, 3
  br i1 %i.p, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter109 = and i32 %i.o, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  %niter110.next.7 = add i32 %niter110, 8         ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.l, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.039.065.i, null
  %or.cond.i = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEEEECsiLZOIpitoQl_15metrics_example.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !2610

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.r = add i32 %.sroa.0.066.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit60.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.039.0.be.i = phi ptr [ %.sroa.039.3.i, %.loopexit60.i ], [ %.sroa.039.065.i, %.loopexit.i ], [ %i.y, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.ai, %.loopexit60.i ], [ %i.r, %.loopexit.i ], [ %.sroa.0.066.i, %bb.j ], [ %.sroa.0.066.i, %bb.k ]
  %i.s = load atomic i64, ptr %i.d acquire, align 128, !noalias !2636 ; 2 uses
  %i.t = load atomic ptr, ptr %i.f acquire, align 8, !noalias !2636
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %._crit_edge.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEEEECsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.039.3.i = phi ptr [ %.sroa.039.065.i, %bb.e ], [ %i.x, %bb.f ] ; 8 uses
  %i.w = icmp eq ptr %.sroa.07.067.i, null
  br i1 %i.w, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCsiLZOIpitoQl_15metrics_example()
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEEEECsiLZOIpitoQl_15metrics_example.exit.i unwind label %.body.loopexit

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEEEECsiLZOIpitoQl_15metrics_example.exit.i
  %i.y = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEE13new_zeroed_inCsiLZOIpitoQl_15metrics_example()
          to label %bb.h unwind label %bb.p, !noalias !2636 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.z = cmpxchg ptr %i.f, ptr null, ptr %i.y release monotonic, align 8, !noalias !2636
  %i.aa = extractvalue { ptr, i1 } %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.y, ptr %i.j release, align 8, !noalias !2636
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp eq ptr %.sroa.039.3.i, null
  br i1 %i.ab, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.3.i, i64 noundef 1000, i64 noundef 8) #23, !noalias !2636
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEEEECsiLZOIpitoQl_15metrics_example.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.067.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtCsG258MDvU3F_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEEEEECsiLZOIpitoQl_15metrics_example.exit.i ], [ %i.y, %bb.i ] ; 3 uses
  %i.ac = add i64 %.sroa.03.068.i, 2
  %i.ad = cmpxchg weak ptr %i.d, i64 %.sroa.03.068.i, i64 %i.ac seq_cst acquire, align 8, !noalias !2636
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.m, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i24.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i24.i: ; preds = %bb.l
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.066.i, i32 6) ; 2 uses
  %i.ae = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i25.i = icmp eq i32 %.sroa.0.066.i, 0
  br i1 %.not.i25.i, label %.loopexit60.i, label %.lr.ph.i28.i.preheader

.lr.ph.i28.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i24.i
  %xtraiter = and i32 %i.ae, 5                    ; 3 uses
  %i.af = icmp ult i32 %.sroa.0.066.i, 3
  br i1 %i.af, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.i28.i.preheader.new

.lr.ph.i28.i.preheader.new:                       ; preds = %.lr.ph.i28.i.preheader
  %unroll_iter = and i32 %i.ae, 56
  br label %.lr.ph.i28.i

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.i28.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i28.i.preheader.new ], [ %niter.next.7, %.lr.ph.i28.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit60.i.loopexit.unr-lcssa, label %.lr.ph.i28.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.q, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.039.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit.thread41, !prof !14

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #32
          to label %.noexc5 unwind label %.body.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit.thread41: ; preds = %bb.n
  store atomic ptr %.sroa.039.3.i, ptr %i.f release, align 8, !noalias !2636
  %i.ag = atomicrmw add ptr %i.d, i64 2 release, align 8, !noalias !2636 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 992
  store atomic ptr %.sroa.039.3.i, ptr %i.ah release, align 8, !noalias !2636
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.017.0.copyload44 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx45, i64 16, i1 false)
  br label %bb.r

.loopexit60.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i28.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit60.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %.loopexit60.i.loopexit.unr-lcssa, %.lr.ph.i28.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i28.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2636
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit60.i, label %.lr.ph.i28.i.epil, !llvm.loop !2611

.loopexit60.i:                                    ; preds = %.loopexit60.i.loopexit.unr-lcssa, %.lr.ph.i28.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i24.i
  %i.ai = add i32 %.sroa.0.066.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.039.1.ph.i = phi ptr [ %.sroa.039.065.i, %bb.d ], [ %.sroa.039.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.039.1.ph.i, null
  br i1 %i.aj, label %.body.thread, label %.thread51.i

.thread51.i:                                      ; preds = %bb.p
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.1.ph.i, i64 noundef 1000, i64 noundef 8) #23, !noalias !2636
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.l, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.413.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.039.4.i = phi ptr [ %.sroa.039.3.i, %bb.m ], [ %.sroa.039.0.be.i, %.backedge.i ] ; 2 uses
  %i.ak = icmp eq ptr %.sroa.039.4.i, null
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.039.4.i, i64 noundef 1000, i64 noundef 8) #23, !noalias !2636
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit

.body.loopexit:                                   ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.loopexit.split-lp:                          ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCsiLZOIpitoQl_15metrics_example:bb.a

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !2646, !noalias !2647, !noundef !9 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store atomic ptr %i.cb, ptr %i.cd release, align 8, !noalias !2648
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !2648, !nonnull !9, !noundef !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 2 uses
  %i.ch = atomicrmw xchg ptr %i.cg, i32 1 release, align 4, !noalias !2648
  %i.ci = icmp eq i32 %i.ch, -1
  br i1 %i.ci, label %bb.ad, label %.noexc6.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.cj = invoke noundef zeroext i1 @_RNvNtNtNtNtCsG258MDvU3F_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cg)
          to label %.noexc6.i.i unwind label %bb.w, !noalias !2639 ; 0 uses

_RNCNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsiLZOIpitoQl_15metrics_example.exit.i.i.i.i: ; preds = %bb.z, %.lr.ph.i.i.i.i
  %i.ck = add nuw nsw i64 %.sroa.02.010.i.i.i.i, 1
  %i.cl = icmp eq ptr %i.bs, %i.bq
  br i1 %i.cl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryEECsiLZOIpitoQl_15metrics_example.exit.i.i, label %.lr.ph.i.i.i.i

.noexc6.i.i:                                      ; preds = %bb.ad, %bb.ac
  %i.cm = icmp samesign ult i64 %.sroa.02.010.i.i.i.i, %i.bk
  call void @llvm.assume(i1 %i.cm)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryE6removeCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef %.sroa.02.010.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46)
          to label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i unwind label %bb.w, !noalias !2639

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i: ; preds = %.noexc6.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !alias.scope !2649, !noalias !2639 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %i.cn = icmp eq ptr %.pr.i.i, null
  br i1 %i.cn, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryEECsiLZOIpitoQl_15metrics_example.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i
  %i.co = atomicrmw sub ptr %.pr.i.i, i64 1 release, align 8, !noalias !2650
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryEECsiLZOIpitoQl_15metrics_example.exit.i.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs8D2T2XYq3d4_16futures_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryEECsiLZOIpitoQl_15metrics_example.exit.i.i unwind label %bb.w, !noalias !2639

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryEECsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %_RNCNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB4_5Waker10try_select0CsiLZOIpitoQl_15metrics_example.exit.i.i.i.i, %bb.af, %bb.ae, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker10try_select.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2639
  invoke fastcc void @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB2_5Waker6notify(ptr noalias nofree noundef align 8 dereferenceable(48) %i.bi)
          to label %bb.ag unwind label %bb.w, !noalias !2639

bb.ag:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc5waker5EntryEECsiLZOIpitoQl_15metrics_example.exit.i.i
  %i.cq = load i64, ptr %i.bj, align 8, !noalias !2639, !noundef !9 ; 2 uses
  %i.cr = icmp ult i64 %i.cq, 384307168202282326
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp eq i64 %i.cq, 0
  br i1 %i.cs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !2639, !noundef !9 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 384307168202282326
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp eq i64 %i.cu, 0
  %i.cx = zext i1 %i.cw to i8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.0.0.i.i = phi i8 [ %i.cx, %bb.ah ], [ 0, %bb.ag ]
  store atomic i8 %.sroa.0.0.i.i, ptr %i.ap seq_cst, align 8, !noalias !2639
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  br i1 %i.bg, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2639
  %i.da = and i64 %i.cz, 9223372036854775807
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %.noexc11, !prof !20

.noexc11:                                         ; preds = %bb.ak
  %i.dc = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #30
  br i1 %i.dc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %.noexc11
  store atomic i8 1, ptr %i.cy monotonic, align 4, !noalias !2639
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.al, %.noexc11, %bb.ak, %bb.aj
  %i.dd = atomicrmw xchg ptr %i.bd, i32 0 release, align 4, !noalias !2639
  %i.de = icmp eq i32 %i.dd, 2
  br i1 %i.de, label %bb.am, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit.thread, !prof !14

bb.am:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bd)
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit.thread

bb.an:                                            ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2639
  unreachable

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit.thread: ; preds = %bb.am, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ap

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit.thread
  %.sroa.017.0.copyload40 = phi i64 [ %.sroa.017.0.copyload38, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit.thread ], [ %.sroa.017.0.copyload, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCsiLZOIpitoQl_15metrics_example.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !alias.scope !2639
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.017.0.copyload40, -2
  br i1 %.not, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.017.0.copyload40, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit.thread, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCsiLZOIpitoQl_15metrics_example.exit
  store i64 2, ptr %0, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

.body.thread29:                                   ; preds = %bb.w, %bb.t, %.body.thread
  %eh.lpad-body27 = phi { ptr, i32 } [ %eh.lpad-body28, %.body.thread ], [ %i.bb, %bb.w ], [ %i.az, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body27

.body.thread:                                     ; preds = %.body.loopexit, %.body.loopexit.split-lp, %.thread51.i, %bb.p
  %eh.lpad-body28 = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread51.i ], [ %lpad.thr_comm.i, %bb.p ], [ %lpad.loopexit, %.body.loopexit ], [ %lpad.loopexit.split-lp, %.body.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #31
          to label %.body.thread29 unwind label %bb.ar

bb.ar:                                            ; preds = %.body.thread
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE18disconnect_sendersCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE20disconnect_receiversCsiLZOIpitoQl_15metrics_example(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04953.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04953.i, 7
  br i1 %i.h, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04953.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw i32 %.sroa.0.04953.i, %.sroa.0.04953.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04953.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod20 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !2651

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.04953.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.049.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o                   ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 2 uses
  br i1 %i.t, label %.lr.ph59.i, label %._crit_edge60.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], [ %.sroa.0.049.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i   ; 2 uses
  %xtraiter21 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter25 = and i32 %i.w, 56
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter26 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter26.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter26.next.7 = add i32 %niter26, 8           ; 2 uses
  %niter26.ncmp.7 = icmp eq i32 %niter26.next.7, %unroll_iter25
  br i1 %niter26.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod23.not = icmp eq i32 %xtraiter21, 0
  br i1 %lcmp.mod23.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter21, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter22 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter22.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter22.next = add i32 %epil.iter22, 1     ; 2 uses
  %epil.iter22.cmp.not = icmp eq i32 %epil.iter22.next, %xtraiter21
  br i1 %epil.iter22.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !llvm.loop !2652

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge60.i:                                  ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit, label %bb.e

.lr.ph59.i:                                       ; preds = %.loopexit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i
  %i.ab = phi i64 [ %i.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i ], [ %i.s, %.loopexit.i ]
  %.sroa.05.057.i = phi i64 [ %i.bh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i ], [ %i.p, %.loopexit.i ]
  %.sroa.011.156.i = phi ptr [ %.sroa.011.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i ], [ %.sroa.011.0.i, %.loopexit.i ] ; 10 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.f, label %bb.h

bb.e:                                             ; preds = %._crit_edge60.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 1000, i64 noundef 8) #23
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit

bb.f:                                             ; preds = %.lr.ph59.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.156.i, i64 992 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ag, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ah = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter33 = and i32 %i.ah, 7                  ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter37 = and i32 %i.ah, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter38 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter38.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter38.next.7 = add i32 %niter38, 8           ; 2 uses
  %niter38.ncmp.7 = icmp eq i32 %niter38.next.7, %unroll_iter37
  br i1 %niter38.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod35.not = icmp eq i32 %xtraiter33, 0
  br i1 %lcmp.mod35.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod36 = icmp ne i32 %xtraiter33, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter34 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter34.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter34.next = add i32 %epil.iter34, 1     ; 2 uses
  %epil.iter34.cmp.not = icmp eq i32 %epil.iter34.next, %xtraiter33
  br i1 %epil.iter34.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2653

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.aj = add i32 %.sroa.0.02.i.i, 1
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.am = load atomic ptr, ptr %i.ad acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.156.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.156.i, i64 noundef 1000, i64 noundef 8) #23
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i

bb.h:                                             ; preds = %.lr.ph59.i
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.156.i, i64 %i.ac ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i33.i, 7
  br i1 %i.as, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i
  %i.at = mul nuw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i ; 2 uses
  %xtraiter27 = and i32 %i.at, 7                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i33.i, 3
  br i1 %i.au, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter31 = and i32 %i.at, 56
  br label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter32.next.7 = add i32 %niter32, 8           ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i.i40.i.epil

.lr.ph.i.i40.i.epil:                              ; preds = %.lr.ph.i.i40.i.epil, %.lr.ph.i.i40.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i.i40.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i.i40.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter28.next = add i32 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil, !llvm.loop !2654

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i, %bb.i
  %i.av = add i32 %.sroa.0.02.i33.i, 1
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %i.az = load i64, ptr %i.an, align 8, !range !29, !alias.scope !2665, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 6 uses
  switch i64 %i.az, label %default.unreachable [
    i64 0, label %bb.l
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.j
  ]

default.unreachable:                              ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i
  unreachable

bb.j:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !2668, !nonnull !9, !noundef !9
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !2668
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCslROgKrQpzM9_17opentelemetry_sdk8resource8ResourceE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i

bb.l:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  %i.be = load ptr, ptr %i.ba, align 8, !alias.scope !2671, !nonnull !9, !noundef !9
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !2671
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs5GOyS9hQAaF_13futures_timer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i

bb.n:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i
  tail call void @_RNvXs4_NtNtCsG258MDvU3F_3std4sync4mpmcINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBS_3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i

bb.o:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i
  tail call void @_RNvXs4_NtNtCsG258MDvU3F_3std4sync4mpmcINtB5_6SenderINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCslROgKrQpzM9_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBS_3ops4drop4Drop4dropCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageECsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i
  %.sroa.011.2.i = phi ptr [ %i.am, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i ], [ %.sroa.011.156.i, %bb.j ], [ %.sroa.011.156.i, %bb.k ], [ %.sroa.011.156.i, %bb.l ], [ %.sroa.011.156.i, %bb.m ], [ %.sroa.011.156.i, %bb.n ], [ %.sroa.011.156.i, %bb.o ] ; 2 uses
  %i.bh = add i64 %.sroa.05.057.i, 2              ; 3 uses
  %i.bi = lshr i64 %i.bh, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bi, %i.o
  br i1 %.not.i, label %._crit_edge60.i, label %.lr.ph59.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit: ; preds = %._crit_edge60.i, %bb.e
  %i.bj = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bj, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427 = alloca [16 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB18_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECsiLZOIpitoQl_15metrics_example.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !2715
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2715
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %bb.b
  %.sroa.0.043.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.043.be.i, %.backedge.i ] ; 14 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %i.ab, %.backedge.i ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %i.aa, %.backedge.i ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.u, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.v = mul nuw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter107 = and i32 %i.v, 7                  ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter111 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

.backedge.sink.split.i:                           ; preds = %bb.k, %bb.d
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2715
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %.backedge.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %epil.iter108.next = add i32 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %.backedge.i, label %.lr.ph.i.i.epil, !llvm.loop !2674

.backedge.i.loopexit92.unr-lcssa:                 ; preds = %.lr.ph.i23.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %.backedge.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %.backedge.i, label %.lr.ph.i23.i.epil, !llvm.loop !2675

.backedge.i.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.i33.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i, label %.lr.ph.i33.i.epil.preheader

.lr.ph.i33.i.epil.preheader:                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i33.i.epil

.lr.ph.i33.i.epil:                                ; preds = %.lr.ph.i33.i.epil, %.lr.ph.i33.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i, label %.lr.ph.i33.i.epil, !llvm.loop !2676

.backedge.i:                                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.epil, %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.epil, %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i, %.backedge.sink.split.i, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !2715
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2715
  %.sroa.0.043.be.i = add i32 %.sroa.0.043.i, 1
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !2715 ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.r, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.unshifted.i = xor i64 %i.ac, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.af = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.x, %i.af
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ag = and i64 %i.ac, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCsiLZOIpitoQl_15metrics_example.exit, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ai = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ai, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2715
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.aj, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.l, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.ak, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i, label %.backedge.sink.split.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i: ; preds = %bb.k
  %.not.i20.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i20.i, label %.backedge.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i
  %i.al = mul nuw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter101 = and i32 %i.al, 7                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.am, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter105 = and i32 %i.al, 56
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %niter106.next.7 = add i32 %niter106, 8         ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105
  br i1 %niter106.ncmp.7, label %.backedge.i.loopexit92.unr-lcssa, label %.lr.ph.i23.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i: ; preds = %bb.j
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i30.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i30.i, label %.backedge.i, label %.lr.ph.i33.i.preheader

.lr.ph.i33.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.ao, label %.lr.ph.i33.i.epil.preheader, label %.lr.ph.i33.i.preheader.new

.lr.ph.i33.i.preheader.new:                       ; preds = %.lr.ph.i33.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i, %.lr.ph.i33.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.i.preheader.new ], [ %niter.next.7, %.lr.ph.i33.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.loopexit93.unr-lcssa, label %.lr.ph.i33.i

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 992 ; 2 uses
  %i.ar = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !2715 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i37.i:                                     ; preds = %bb.m, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aw, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.m ] ; 6 uses
  %i.at = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.at, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i37.i
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2715
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i37.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.au = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter113 = and i32 %i.au, 7                 ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.av, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter117 = and i32 %i.au, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter118 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter118.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %niter118.next.7 = add i32 %niter118, 8         ; 2 uses
  %niter118.ncmp.7 = icmp eq i32 %niter118.next.7, %unroll_iter117
  br i1 %niter118.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod115.not = icmp eq i32 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod116 = icmp ne i32 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter114 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter114.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2715
  %epil.iter114.next = add i32 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i32 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2677

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, %bb.n
  %i.aw = add i32 %.sroa.0.02.i.i, 1
  %i.ax = load atomic ptr, ptr %i.aq acquire, align 8, !noalias !2715 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.m
  %.lcssa.i.i = phi ptr [ %i.ar, %bb.m ], [ %i.ax, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.az = and i64 %.sroa.01.0.i, -2
  %i.ba = add i64 %i.az, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 992
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8, !noalias !2715
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = zext i1 %i.bd to i64
  %spec.select17.i = or disjoint i64 %i.ba, %i.be
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !2715
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !2715
  br label %bb.o

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.h
  %i.bf = load i32, ptr %i.i, align 8, !range !22, !noundef !9 ; 2 uses
  %.not = icmp eq i32 %i.bf, -1
  br i1 %.not, label %bb.y, label %bb.x

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i, %bb.l
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !2715
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2715
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !2716
  %i.bj = and i64 %i.bi, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i.i6:                                      ; preds = %bb.o, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8
  %.sroa.0.02.i.i7 = phi i32 [ %i.bo, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 6 uses
  %i.bl = icmp ult i32 %.sroa.0.02.i.i7, 7
  br i1 %i.bl, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i6
  call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2716
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10: ; preds = %.lr.ph.i.i6
  %.not.i.i.i11 = icmp eq i32 %.sroa.0.02.i.i7, 0
  br i1 %.not.i.i.i11, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10
  %i.bm = mul nuw i32 %.sroa.0.02.i.i7, %.sroa.0.02.i.i7 ; 2 uses
  %xtraiter119 = and i32 %i.bm, 7                 ; 3 uses
  %i.bn = icmp ult i32 %.sroa.0.02.i.i7, 3
  br i1 %i.bn, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter123 = and i32 %i.bm, 56
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter124 = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter124.next.7, %.lr.ph.i.i.i14 ]
  call void @llvm.x86.sse2.pause(), !noalias !2716
  call void @llvm.x86.sse2.pause(), !noalias !2716
  call void @llvm.x86.sse2.pause(), !noalias !2716
  call void @llvm.x86.sse2.pause(), !noalias !2716
  call void @llvm.x86.sse2.pause(), !noalias !2716
  call void @llvm.x86.sse2.pause(), !noalias !2716
  call void @llvm.x86.sse2.pause(), !noalias !2716
  call void @llvm.x86.sse2.pause(), !noalias !2716
  %niter124.next.7 = add i32 %niter124, 8         ; 2 uses
  %niter124.ncmp.7 = icmp eq i32 %niter124.next.7, %unroll_iter123
  br i1 %niter124.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14
  %lcmp.mod121.not = icmp eq i32 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter119, 0
  call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter120 = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i.i.i14.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2716
  %epil.iter120.next = add i32 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i32 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil, !llvm.loop !2680

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i10, %bb.p
  %i.bo = add i32 %.sroa.0.02.i.i7, 1
  %i.bp = load atomic i64, ptr %i.bh acquire, align 8, !noalias !2716
  %i.bq = and i64 %i.bp, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, %bb.o
  %.sroa.026.0.copyload = load i64, ptr %i.bg, align 8, !noalias !2716 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427.0..sroa_idx, i64 16, i1 false)
  %i.bs = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 31
  br i1 %i.bt, label %.lr.ph.i1.i, label %bb.t

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i, %bb.s
  %.sroa.0.03.i.i4 = phi i64 [ %i.cc, %bb.s ], [ 0, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.bw = load atomic i64, ptr %i.bv acquire, align 8, !noalias !2716
  %i.bx = and i64 %i.bw, 2
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.q, label %.lr.ph.i1.i.1

bb.q:                                             ; preds = %.lr.ph.i1.i
  %i.bz = atomicrmw or ptr %i.bv, i64 4 acq_rel, align 8, !noalias !2716
  %i.ca = and i64 %i.bz, 2
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.q, %.lr.ph.i1.i
  %i.cc = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8, !noalias !2716
  %i.cg = and i64 %i.cf, 2
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i1.i.1
  %i.ci = atomicrmw or ptr %i.ce, i64 4 acq_rel, align 8, !noalias !2716
  %i.cj = and i64 %i.ci, 2
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i1.i.1
  %exitcond.not.i.i5.1 = icmp eq i64 %i.cc, 30
  br i1 %exitcond.not.i.i5.1, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i, label %.lr.ph.i1.i

bb.t:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i
  %i.cl = atomicrmw or ptr %i.bh, i64 2 acq_rel, align 8, !noalias !2716
  %i.cm = and i64 %i.cl, 4
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit, label %bb.u

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i: ; preds = %bb.w, %bb.s, %bb.u
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1000, i64 noundef 8) #23, !noalias !2716
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit

bb.u:                                             ; preds = %bb.t
  %i.co = icmp samesign ult i64 %i.s, 29
  br i1 %i.co, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.u, %bb.w
  %.sroa.0.03.i4.i = phi i64 [ %i.cp, %bb.w ], [ %i.bs, %bb.u ] ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8, !noalias !2716
  %i.ct = and i64 %i.cs, 2
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i3.i
  %i.cv = atomicrmw or ptr %i.cr, i64 4 acq_rel, align 8, !noalias !2716
  %i.cw = and i64 %i.cv, 2
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.cp, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.v, %bb.q, %bb.r, %bb.t, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i
  %i.cy = icmp eq i64 %.sroa.026.0.copyload, -1
  br i1 %i.cy, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit.thread, label %bb.ao

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCsiLZOIpitoQl_15metrics_example.exit
  %i.cz = load i64, ptr %i.h, align 8, !noundef !9 ; 2 uses
  %i.da = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.db = extractvalue { i64, i32 } %i.da, 0      ; 2 uses
  %i.dc = icmp eq i64 %i.db, %i.cz
  br i1 %i.dc, label %.split, label %bb.al

bb.y:                                             ; preds = %.split, %bb.al, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCsiLZOIpitoQl_15metrics_example.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2717
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.dd = load i8, ptr %i.o, align 8, !range !23, !noalias !2718, !noundef !9
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.i.i, !prof !20

_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.i.i: ; preds = %bb.y
  %i.df = call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellINtNtB1i_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2a_B28_4with7CONTEXT27___rust_std_internal_init_fnECsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !2717 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1P_B1N_4withNCNvMs1_NtB1R_4listINtB31_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECsiLZOIpitoQl_15metrics_example.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.i.i, %bb.y
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.df, %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.i.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.dh = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2717, !noundef !9 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2717
  %.not.i.i.i18 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i18, label %bb.z, label %bb.af, !prof !14

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2717
  %i.di = call noundef nonnull ptr @_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !2717 ; 2 uses
  store ptr %i.di, ptr %i.e, align 8, !noalias !2717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2717
  store ptr %i.g, ptr %i.c, align 8, !noalias !2717
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB7_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0CsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.di)
          to label %bb.ac unwind label %bb.aa, !noalias !2717

bb.aa:                                            ; preds = %bb.z
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2719)
  call void @llvm.experimental.noalias.scope.decl(metadata !2720)
  call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  %i.dk = load ptr, ptr %i.e, align 8, !alias.scope !2722, !noalias !2717, !nonnull !9, !noundef !9
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !2723
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs8D2T2XYq3d4_16futures_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit.i.i.i unwind label %bb.ae, !noalias !2717

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2717
  call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  %i.dn = load ptr, ptr %i.e, align 8, !alias.scope !2727, !noalias !2717, !nonnull !9, !noundef !9
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !2728
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit19.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs8D2T2XYq3d4_16futures_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #30, !noalias !2717
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit19.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit19.i.i.i: ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2717
  br label %_RINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB18_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECsiLZOIpitoQl_15metrics_example.exit

bb.ae:                                            ; preds = %bb.ak, %bb.ab
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !noalias !2717
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ab, %bb.aa
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %i.dj, %bb.aa ], [ %i.dx, %bb.aj ], [ %i.dj, %bb.ab ], [ %i.dx, %bb.ak ]
  resume { ptr, i32 } %.pn.pn.i.i.i

bb.af:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2717
  store ptr %i.dh, ptr %i.d, align 8, !noalias !2717
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store atomic i64 0, ptr %i.dr release, align 8, !noalias !2717
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store atomic ptr null, ptr %i.ds release, align 8, !noalias !2717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2717
  store ptr %i.g, ptr %i.b, align 8, !noalias !2717
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB7_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0CsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.dh)
          to label %bb.ag unwind label %bb.aj, !noalias !2717

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2717
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2717
  %i.dt = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2717, !noundef !9 ; 3 uses
  store ptr %i.dt, ptr %i.a, align 8, !noalias !2717
  store ptr %i.dh, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2717
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextEECsiLZOIpitoQl_15metrics_example.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = atomicrmw sub ptr %i.dt, i64 1 release, align 8, !noalias !2729
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextEECsiLZOIpitoQl_15metrics_example.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs8D2T2XYq3d4_16futures_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #30, !noalias !2717
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextEECsiLZOIpitoQl_15metrics_example.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextEECsiLZOIpitoQl_15metrics_example.exit.i.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2717
  br label %_RINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB18_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECsiLZOIpitoQl_15metrics_example.exit

bb.aj:                                            ; preds = %bb.af
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !2730
  %i.dz = icmp eq i64 %i.dy, 1
  br i1 %i.dz, label %bb.ak, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context5InnerE9drop_slowCs8D2T2XYq3d4_16futures_executor(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit.i.i.i unwind label %bb.ae, !noalias !2717

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1P_B1N_4withNCNvMs1_NtB1R_4listINtB31_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1p_6option6OptionQIB24_INtNtB1p_4cell4CellIB24_BQ_EEEEEE9call_onceCsiLZOIpitoQl_15metrics_example.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1a_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs0_0CsiLZOIpitoQl_15metrics_example(ptr nonnull %i.f) #34, !noalias !2717
  br label %_RINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB18_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECsiLZOIpitoQl_15metrics_example.exit

_RINvMNtNtNtCsG258MDvU3F_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB18_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECsiLZOIpitoQl_15metrics_example.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextECsiLZOIpitoQl_15metrics_example.exit19.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsG258MDvU3F_3std4sync4mpmc7context7ContextEECsiLZOIpitoQl_15metrics_example.exit.i.i.i, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellINtNtBY_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1P_B1N_4withNCNvMs1_NtB1R_4listINtB31_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECsiLZOIpitoQl_15metrics_example.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2717
  br label %bb.b

.split:                                           ; preds = %bb.x
  %i.ea = extractvalue { i64, i32 } %i.da, 1      ; 2 uses
  %i.eb = icmp ult i32 %i.ea, 1000000000
  call void @llvm.assume(i1 %i.eb)
  %.not33 = icmp samesign ult i32 %i.ea, %i.bf
  br i1 %.not33, label %bb.y, label %bb.am

bb.al:                                            ; preds = %bb.x
  %.not32 = icmp slt i64 %i.db, %i.cz
  br i1 %.not32, label %bb.y, label %bb.am

bb.am:                                            ; preds = %.split, %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ec, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit.thread, %bb.ao, %bb.am
  %.sink = phi i64 [ -1, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit.thread ], [ %.sroa.026.0.copyload, %bb.ao ], [ -1, %bb.am ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ed, align 8
  br label %bb.an

bb.ao:                                            ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCsiLZOIpitoQl_15metrics_example.exit
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.427, i64 16, i1 false)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE18disconnect_sendersCsiLZOIpitoQl_15metrics_example(ptr noundef nonnull align 128 %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCsG258MDvU3F_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.e) #34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE20disconnect_receiversCsiLZOIpitoQl_15metrics_example(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = atomicrmw or ptr %i.a, i64 1 seq_cst, align 8
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.f = and i64 %i.e, 62
  %i.g = icmp eq i64 %i.f, 62
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.04951.i = phi i32 [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %bb.b ] ; 6 uses
  %i.h = icmp ult i32 %.sroa.0.04951.i, 7
  br i1 %i.h, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %.sroa.0.04951.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw i32 %.sroa.0.04951.i, %.sroa.0.04951.i ; 2 uses
  %xtraiter = and i32 %i.i, 7                     ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.04951.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.i, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod20 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !2731

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, %bb.c
  %i.k = add i32 %.sroa.0.04951.i, 1              ; 2 uses
  %i.l = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.m = and i64 %i.l, 62
  %i.n = icmp eq i64 %i.m, 62
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %bb.b
  %.sroa.0.0.lcssa.i = phi i64 [ %i.e, %bb.b ], [ %i.l, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.049.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.k, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %i.o = lshr i64 %.sroa.0.0.lcssa.i, 1           ; 2 uses
  %i.p = load atomic i64, ptr %0 acquire, align 128 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %i.t = icmp ne i64 %i.s, %i.o                   ; 2 uses
  %i.u = icmp eq ptr %i.r, null
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, %._crit_edge.i
  %.sroa.011.0.i = phi ptr [ %i.r, %._crit_edge.i ], [ %i.z, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ] ; 2 uses
  br i1 %i.t, label %.lr.ph57.i, label %._crit_edge58.i

.preheader.i:                                     ; preds = %._crit_edge.i, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i
  %.sroa.0.1.i = phi i32 [ %i.y, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i ], [ %.sroa.0.049.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.v = icmp ult i32 %.sroa.0.1.i, 7
  br i1 %i.v, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i: ; preds = %.preheader.i
  %.not.i23.i = icmp eq i32 %.sroa.0.1.i, 0
  br i1 %.not.i23.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i
  %i.w = mul nuw i32 %.sroa.0.1.i, %.sroa.0.1.i   ; 2 uses
  %xtraiter21 = and i32 %i.w, 7                   ; 3 uses
  %i.x = icmp ult i32 %.sroa.0.1.i, 3
  br i1 %i.x, label %.lr.ph.i26.i.epil.preheader, label %.lr.ph.i26.i.preheader.new

.lr.ph.i26.i.preheader.new:                       ; preds = %.lr.ph.i26.i.preheader
  %unroll_iter25 = and i32 %i.w, 56
  br label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i, %.lr.ph.i26.i.preheader.new
  %niter26 = phi i32 [ 0, %.lr.ph.i26.i.preheader.new ], [ %niter26.next.7, %.lr.ph.i26.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter26.next.7 = add i32 %niter26, 8           ; 2 uses
  %niter26.ncmp.7 = icmp eq i32 %niter26.next.7, %unroll_iter25
  br i1 %niter26.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, label %.lr.ph.i26.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i
  %lcmp.mod23.not = icmp eq i32 %xtraiter21, 0
  br i1 %lcmp.mod23.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil.preheader

.lr.ph.i26.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.preheader
  %lcmp.mod24 = icmp ne i32 %xtraiter21, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.lr.ph.i26.i.epil

.lr.ph.i26.i.epil:                                ; preds = %.lr.ph.i26.i.epil, %.lr.ph.i26.i.epil.preheader
  %epil.iter22 = phi i32 [ 0, %.lr.ph.i26.i.epil.preheader ], [ %epil.iter22.next, %.lr.ph.i26.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter22.next = add i32 %epil.iter22, 1     ; 2 uses
  %epil.iter22.cmp.not = icmp eq i32 %epil.iter22.next, %xtraiter21
  br i1 %epil.iter22.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i, label %.lr.ph.i26.i.epil, !llvm.loop !2732

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.loopexit.unr-lcssa, %.lr.ph.i26.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i22.i, %bb.d
  %i.y = add i32 %.sroa.0.1.i, 1
  %i.z = atomicrmw xchg ptr %i.q, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i = icmp eq ptr %i.z, null
  br i1 %.old2.i, label %.preheader.i, label %.loopexit.i

._crit_edge58.i:                                  ; preds = %bb.j, %.loopexit.i
  %.sroa.011.1.lcssa.i = phi ptr [ %.sroa.011.0.i, %.loopexit.i ], [ %.sroa.011.2.i, %bb.j ] ; 2 uses
  %.sroa.05.0.lcssa.i = phi i64 [ %i.p, %.loopexit.i ], [ %i.az, %bb.j ]
  %i.aa = icmp eq ptr %.sroa.011.1.lcssa.i, null
  br i1 %i.aa, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit, label %bb.e

.lr.ph57.i:                                       ; preds = %.loopexit.i, %bb.j
  %i.ab = phi i64 [ %i.ba, %bb.j ], [ %i.s, %.loopexit.i ]
  %.sroa.05.055.i = phi i64 [ %i.az, %bb.j ], [ %i.p, %.loopexit.i ]
  %.sroa.011.154.i = phi ptr [ %.sroa.011.2.i, %bb.j ], [ %.sroa.011.0.i, %.loopexit.i ] ; 5 uses
  %i.ac = and i64 %i.ab, 31                       ; 2 uses
  %.not19.i = icmp eq i64 %i.ac, 31
  br i1 %.not19.i, label %bb.f, label %bb.h

bb.e:                                             ; preds = %._crit_edge58.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i, i64 noundef 11424, i64 noundef 16) #23
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit

bb.f:                                             ; preds = %.lr.ph57.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.154.i, i64 11408 ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i31.i:                                     ; preds = %bb.f, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.f ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ag, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i31.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i31.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ah = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter33 = and i32 %i.ah, 7                  ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter37 = and i32 %i.ah, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter38 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter38.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter38.next.7 = add i32 %niter38, 8           ; 2 uses
  %niter38.ncmp.7 = icmp eq i32 %niter38.next.7, %unroll_iter37
  br i1 %niter38.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod35.not = icmp eq i32 %xtraiter33, 0
  br i1 %lcmp.mod35.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod36 = icmp ne i32 %xtraiter33, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter34 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter34.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter34.next = add i32 %epil.iter34, 1     ; 2 uses
  %epil.iter34.cmp.not = icmp eq i32 %epil.iter34.next, %xtraiter33
  br i1 %epil.iter34.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2733

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.aj = add i32 %.sroa.0.02.i.i, 1
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.am = load atomic ptr, ptr %i.ad acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.154.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.154.i, i64 noundef 11424, i64 noundef 16) #23
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph57.i
  %i.an = getelementptr inbounds nuw [368 x i8], ptr %.sroa.011.154.i, i64 %i.ac ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 352 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i33.i, 7
  br i1 %i.as, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i
  %i.at = mul nuw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i ; 2 uses
  %xtraiter27 = and i32 %i.at, 7                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i33.i, 3
  br i1 %i.au, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter31 = and i32 %i.at, 56
  br label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter32 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter32.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter32.next.7 = add i32 %niter32, 8           ; 2 uses
  %niter32.ncmp.7 = icmp eq i32 %niter32.next.7, %unroll_iter31
  br i1 %niter32.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod29.not = icmp eq i32 %xtraiter27, 0
  br i1 %lcmp.mod29.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod30 = icmp ne i32 %xtraiter27, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %.lr.ph.i.i40.i.epil

.lr.ph.i.i40.i.epil:                              ; preds = %.lr.ph.i.i40.i.epil, %.lr.ph.i.i40.i.epil.preheader
  %epil.iter28 = phi i32 [ 0, %.lr.ph.i.i40.i.epil.preheader ], [ %epil.iter28.next, %.lr.ph.i.i40.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter28.next = add i32 %epil.iter28, 1     ; 2 uses
  %epil.iter28.cmp.not = icmp eq i32 %epil.iter28.next, %xtraiter27
  br i1 %epil.iter28.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil, !llvm.loop !2734

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i36.i, %bb.i
  %i.av = add i32 %.sroa.0.02.i33.i, 1
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, %bb.h
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef align 16 dereferenceable(352) %i.an)
  br label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i
  %.sroa.011.2.i = phi ptr [ %.sroa.011.154.i, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i ], [ %i.am, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i ] ; 2 uses
  %i.az = add i64 %.sroa.05.055.i, 2              ; 3 uses
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.ba, %i.o
  br i1 %.not.i, label %._crit_edge58.i, label %.lr.ph57.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit: ; preds = %._crit_edge58.i, %bb.e
  %i.bb = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bb, ptr %0 release, align 128
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCsiLZOIpitoQl_15metrics_example.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCsiLZOIpitoQl_15metrics_example(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.422 = alloca [344 x i8], align 8         ; 2 uses
  %i.a = load atomic i64, ptr %1 acquire, align 128, !noalias !2744
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8, !noalias !2744
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %bb.a
  %.sroa.0.043.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.043.be.i, %.backedge.i ] ; 14 uses
  %.sroa.012.0.i = phi ptr [ %i.c, %bb.a ], [ %i.o, %.backedge.i ] ; 7 uses
  %.sroa.07.0.i = phi i64 [ %i.a, %bb.a ], [ %i.n, %.backedge.i ] ; 5 uses
  %i.e = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.f = and i64 %i.e, 31                         ; 5 uses
  %i.g = icmp eq i64 %i.f, 31
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.h, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.i = mul nuw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter85 = and i32 %i.i, 7                   ; 3 uses
  %i.j = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter89 = and i32 %i.i, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter90 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter90.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %niter90.next.7 = add i32 %niter90, 8           ; 2 uses
  %niter90.ncmp.7 = icmp eq i32 %niter90.next.7, %unroll_iter89
  br i1 %niter90.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.l = and i64 %.sroa.07.0.i, 1
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.h

.backedge.sink.split.i:                           ; preds = %bb.j, %bb.c
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2744
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod87.not = icmp eq i32 %xtraiter85, 0
  br i1 %lcmp.mod87.not, label %.backedge.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod88 = icmp ne i32 %xtraiter85, 0
  tail call void @llvm.assume(i1 %lcmp.mod88)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter86 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter86.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %epil.iter86.next = add i32 %epil.iter86, 1     ; 2 uses
  %epil.iter86.cmp.not = icmp eq i32 %epil.iter86.next, %xtraiter85
  br i1 %epil.iter86.cmp.not, label %.backedge.i, label %.lr.ph.i.i.epil, !llvm.loop !2737

.backedge.i.loopexit72.unr-lcssa:                 ; preds = %.lr.ph.i23.i
  %lcmp.mod81.not = icmp eq i32 %xtraiter79, 0
  br i1 %lcmp.mod81.not, label %.backedge.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %.backedge.i.loopexit72.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod82 = icmp ne i32 %xtraiter79, 0
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter80 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter80.next, %.lr.ph.i23.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %epil.iter80.next = add i32 %epil.iter80, 1     ; 2 uses
  %epil.iter80.cmp.not = icmp eq i32 %epil.iter80.next, %xtraiter79
  br i1 %epil.iter80.cmp.not, label %.backedge.i, label %.lr.ph.i23.i.epil, !llvm.loop !2738

.backedge.i.loopexit73.unr-lcssa:                 ; preds = %.lr.ph.i33.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i, label %.lr.ph.i33.i.epil.preheader

.lr.ph.i33.i.epil.preheader:                      ; preds = %.backedge.i.loopexit73.unr-lcssa, %.lr.ph.i33.i.preheader
  %lcmp.mod78 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod78)
  br label %.lr.ph.i33.i.epil

.lr.ph.i33.i.epil:                                ; preds = %.lr.ph.i33.i.epil, %.lr.ph.i33.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i, label %.lr.ph.i33.i.epil, !llvm.loop !2739

.backedge.i:                                      ; preds = %.backedge.i.loopexit73.unr-lcssa, %.lr.ph.i33.i.epil, %.backedge.i.loopexit72.unr-lcssa, %.lr.ph.i23.i.epil, %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i, %.backedge.sink.split.i, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i
  %i.n = load atomic i64, ptr %1 acquire, align 128, !noalias !2744
  %i.o = load atomic ptr, ptr %i.b acquire, align 8, !noalias !2744
  %.sroa.0.043.be.i = add i32 %.sroa.0.043.i, 1
  br label %bb.b

bb.e:                                             ; preds = %bb.d
  fence seq_cst
  %i.p = load atomic i64, ptr %i.d monotonic, align 128, !noalias !2744 ; 3 uses
  %i.q = lshr i64 %i.p, 1
  %i.r = icmp eq i64 %i.e, %i.q
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.unshifted.i = xor i64 %i.p, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %i.s = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.k, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = and i64 %i.p, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCsiLZOIpitoQl_15metrics_example.exit, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2744
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.w, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.k, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i

bb.j:                                             ; preds = %bb.h
  %i.x = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.x, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i, label %.backedge.sink.split.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i: ; preds = %bb.j
  %.not.i20.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i20.i, label %.backedge.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i19.i
  %i.y = mul nuw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter79 = and i32 %i.y, 7                   ; 3 uses
  %i.z = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.z, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter83 = and i32 %i.y, 56
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %niter84 = phi i32 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter84.next.7, %.lr.ph.i23.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %niter84.next.7 = add i32 %niter84, 8           ; 2 uses
  %niter84.ncmp.7 = icmp eq i32 %niter84.next.7, %unroll_iter83
  br i1 %niter84.ncmp.7, label %.backedge.i.loopexit72.unr-lcssa, label %.lr.ph.i23.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i: ; preds = %bb.i
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i, i32 6) ; 2 uses
  %i.aa = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i30.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i30.i, label %.backedge.i, label %.lr.ph.i33.i.preheader

.lr.ph.i33.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i29.i
  %xtraiter = and i32 %i.aa, 5                    ; 3 uses
  %i.ab = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.ab, label %.lr.ph.i33.i.epil.preheader, label %.lr.ph.i33.i.preheader.new

.lr.ph.i33.i.preheader.new:                       ; preds = %.lr.ph.i33.i.preheader
  %unroll_iter = and i32 %i.aa, 56
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i, %.lr.ph.i33.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.i.preheader.new ], [ %niter.next.7, %.lr.ph.i33.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.loopexit73.unr-lcssa, label %.lr.ph.i33.i

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 30
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 11408 ; 2 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8, !noalias !2744 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i37.i:                                     ; preds = %bb.l, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.aj, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.l ] ; 6 uses
  %i.ag = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.ag, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i37.i
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2744
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i37.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i
  %i.ah = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter91 = and i32 %i.ah, 7                  ; 3 uses
  %i.ai = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.ai, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter95 = and i32 %i.ah, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter96 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter96.next.7, %.lr.ph.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %niter96.next.7 = add i32 %niter96, 8           ; 2 uses
  %niter96.ncmp.7 = icmp eq i32 %niter96.next.7, %unroll_iter95
  br i1 %niter96.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod93.not = icmp eq i32 %xtraiter91, 0
  br i1 %lcmp.mod93.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod94 = icmp ne i32 %xtraiter91, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter92 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter92.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2744
  %epil.iter92.next = add i32 %epil.iter92, 1     ; 2 uses
  %epil.iter92.cmp.not = icmp eq i32 %epil.iter92.next, %xtraiter91
  br i1 %epil.iter92.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2740

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i, %bb.m
  %i.aj = add i32 %.sroa.0.02.i.i, 1
  %i.ak = load atomic ptr, ptr %i.ad acquire, align 8, !noalias !2744 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.l
  %.lcssa.i.i = phi ptr [ %i.ae, %bb.l ], [ %i.ak, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.am = and i64 %.sroa.01.0.i, -2
  %i.an = add i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 11408
  %i.ap = load atomic ptr, ptr %i.ao monotonic, align 8, !noalias !2744
  %i.aq = icmp ne ptr %i.ap, null
  %i.ar = zext i1 %i.aq to i64
  %spec.select17.i = or disjoint i64 %i.an, %i.ar
  store atomic ptr %.lcssa.i.i, ptr %i.b release, align 8, !noalias !2744
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !2744
  br label %bb.n

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.as, align 8
  br label %bb.w

bb.n:                                             ; preds = %bb.k, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE9wait_nextCsiLZOIpitoQl_15metrics_example.exit.i
  %i.at = getelementptr inbounds nuw [368 x i8], ptr %.sroa.012.0.i, i64 %i.f ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 352 ; 3 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8, !noalias !2745
  %i.aw = and i64 %i.av, 1
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i4, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

.lr.ph.i.i4:                                      ; preds = %bb.n, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6
  %.sroa.0.02.i.i5 = phi i32 [ %i.bb, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6 ], [ 0, %bb.n ] ; 6 uses
  %i.ay = icmp ult i32 %.sroa.0.02.i.i5, 7
  br i1 %i.ay, label %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i4
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread9functions9yield_now(), !noalias !2745
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6

_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %.lr.ph.i.i4
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.02.i.i5, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i8
  %i.az = mul nuw i32 %.sroa.0.02.i.i5, %.sroa.0.02.i.i5 ; 2 uses
  %xtraiter97 = and i32 %i.az, 7                  ; 3 uses
  %i.ba = icmp ult i32 %.sroa.0.02.i.i5, 3
  br i1 %i.ba, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter101 = and i32 %i.az, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter102 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter102.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  %niter102.next.7 = add i32 %niter102, 8         ; 2 uses
  %niter102.ncmp.7 = icmp eq i32 %niter102.next.7, %unroll_iter101
  br i1 %niter102.ncmp.7, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod99.not = icmp eq i32 %xtraiter97, 0
  br i1 %lcmp.mod99.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter97, 0
  tail call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter98 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter98.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2745
  %epil.iter98.next = add i32 %epil.iter98, 1     ; 2 uses
  %epil.iter98.cmp.not = icmp eq i32 %epil.iter98.next, %xtraiter97
  br i1 %epil.iter98.cmp.not, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, label %.lr.ph.i.i.i12.epil, !llvm.loop !2743

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCskKLDkoKarTP_4core3numm15overflowing_pow.exit.i.i.i8, %bb.o
  %i.bb = add i32 %.sroa.0.02.i.i5, 1
  %i.bc = load atomic i64, ptr %i.au acquire, align 8, !noalias !2745
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i4, label %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i

_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i: ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i6, %bb.n
  %.sroa.021.0.copyload = load i64, ptr %i.at, align 16, !noalias !2745 ; 2 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.422, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.422.0..sroa_idx, i64 344, i1 false)
  %i.bf = add nuw nsw i64 %i.f, 1                 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 31
  br i1 %i.bg, label %.lr.ph.i1.i, label %bb.s

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i, %bb.r
  %.sroa.0.03.i.i2 = phi i64 [ %i.bp, %bb.r ], [ 0, %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [368 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i2
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 352 ; 2 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8, !noalias !2745
  %i.bk = and i64 %i.bj, 2
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.p, label %.lr.ph.i1.i.1

bb.p:                                             ; preds = %.lr.ph.i1.i
  %i.bm = atomicrmw or ptr %i.bi, i64 4 acq_rel, align 8, !noalias !2745
  %i.bn = and i64 %i.bm, 2
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.p, %.lr.ph.i1.i
  %i.bp = add nuw nsw i64 %.sroa.0.03.i.i2, 2     ; 2 uses
  %i.bq = getelementptr inbounds nuw [368 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 720 ; 2 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !2745
  %i.bt = and i64 %i.bs, 2
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i1.i.1
  %i.bv = atomicrmw or ptr %i.br, i64 4 acq_rel, align 8, !noalias !2745
  %i.bw = and i64 %i.bv, 2
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i1.i.1
  %exitcond.not.i.i3.1 = icmp eq i64 %i.bp, 30
  br i1 %exitcond.not.i.i3.1, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i, label %.lr.ph.i1.i

bb.s:                                             ; preds = %_RNvMNtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB2_4SlotNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10wait_writeCsiLZOIpitoQl_15metrics_example.exit.i
  %i.by = atomicrmw or ptr %i.au, i64 2 acq_rel, align 8, !noalias !2745
  %i.bz = and i64 %i.by, 4
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit, label %bb.t

_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i: ; preds = %bb.v, %bb.r, %bb.t
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 11424, i64 noundef 16) #23, !noalias !2745
  br label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit

bb.t:                                             ; preds = %bb.s
  %i.cb = icmp samesign ult i64 %i.f, 29
  br i1 %i.cb, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.t, %bb.v
  %.sroa.0.03.i4.i = phi i64 [ %i.cc, %bb.v ], [ %i.bf, %bb.t ] ; 2 uses
  %i.cc = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cd = getelementptr inbounds nuw [368 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 352 ; 2 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8, !noalias !2745
  %i.cg = and i64 %i.cf, 2
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i3.i
  %i.ci = atomicrmw or ptr %i.ce, i64 4 acq_rel, align 8, !noalias !2745
  %i.cj = and i64 %i.ci, 2
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.cc, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit: ; preds = %bb.u, %bb.p, %bb.q, %bb.s, %_RNvMs_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB4_5BlockNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE7destroyCsiLZOIpitoQl_15metrics_example.exit.sink.split.i
  %i.cl = icmp eq i64 %.sroa.021.0.copyload, -1
  br i1 %i.cl, label %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit.thread, label %bb.x

bb.w:                                             ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit.thread, %bb.x, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCsiLZOIpitoQl_15metrics_example.exit
  %.sink = phi i64 [ -1, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit.thread ], [ %.sroa.021.0.copyload, %bb.x ], [ -1, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCsiLZOIpitoQl_15metrics_example.exit ]
  store i64 %.sink, ptr %0, align 16
  ret void

_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit.thread: ; preds = %bb.g, %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.cm, align 8
  br label %bb.w

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsG258MDvU3F_3std4sync4mpmc4listINtB5_7ChannelNtNtNtCslROgKrQpzM9_17opentelemetry_sdk5trace6export8SpanDataE4readCsiLZOIpitoQl_15metrics_example.exit
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.420.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.422, i64 344, i1 false)
  br label %bb.w
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs3_NtNtCsf6yrgnUmEzM_17prometheus_client7metrics6familyINtB5_6FamilyNtNtCsfX6MfzXxCho_14libp2p_metrics5swarm13AddressLabelsNtNtB7_7counter7CounterE13get_or_createCsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2799)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !2799, !noalias !2800, !nonnull !9, !noundef !9 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 13 uses
  %i.f = load atomic i64, ptr %i.e monotonic, align 8, !noalias !2801 ; 4 uses
  %i.g = and i64 %i.f, 8
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp ugt i64 %i.f, -17
  %or.cond.i.i = or i1 %i.i, %i.h
  br i1 %or.cond.i.i, label %_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, label %_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, !prof !37

_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i: ; preds = %bb.a
  %i.j = add nuw i64 %i.f, 16
  %i.k = cmpxchg weak ptr %i.e, i64 %i.f, i64 %i.j acquire monotonic, align 8, !noalias !2801
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.k, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.b, label %_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, !prof !34

_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i: ; preds = %_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i, %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.e, i1 noundef zeroext false, i64 undef, i32 noundef -1), !noalias !2801 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i, %_RNvMs8_NtCsbNxlIVSzhBv_11parking_lot10raw_rwlockNtB5_9RawRwLock20try_lock_shared_fast.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2802, !noalias !2803, !noundef !9
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.r = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsfX6MfzXxCho_14libp2p_metrics5swarm13AddressLabelsECsiLZOIpitoQl_15metrics_example(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !noalias !2804 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  %i.s = lshr i64 %i.r, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !2807, !noalias !2808, !noundef !9 ; 2 uses
  %i.w = load ptr, ptr %i.m, align 8, !alias.scope !2807, !noalias !2808, !nonnull !9, !noundef !9 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.noexc.i.i
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i.i ], [ %i.ap, %bb.f ]
  %.pn.i.i.i.i.i = phi i64 [ %i.r, %.noexc.i.i ], [ %i.aq, %bb.f ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.v ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.z, align 1, !noalias !2809 ; 2 uses
  %i.aa = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %i.y
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %.not.i.not30.i.i.i.i.i = icmp eq i16 %i.ab, 0
end_hunk_1
