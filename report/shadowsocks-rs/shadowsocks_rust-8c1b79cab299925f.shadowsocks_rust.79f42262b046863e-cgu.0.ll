Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  tail call void @llvm.x86.sse2.pause(), !noalias !5663
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %._crit_edge.i.i.i.i19.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i17

bb.x:                                             ; preds = %._crit_edge.i.i.i.i19
  %i.cw = add nuw nsw i64 %.sroa.0.015.i.i.i.i, 1
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

bb.y:                                             ; preds = %._crit_edge.i.i.i.i19
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now() #30, !noalias !5663
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10: ; preds = %bb.y, %bb.x, %bb.t
  %.sroa.0.1.i.i.i.i11 = phi i64 [ 0, %bb.t ], [ %.sroa.0.015.i.i.i.i, %bb.y ], [ %i.cw, %bb.x ]
  %.sroa.06.1.i.i.i.i12 = phi i64 [ %.sroa.01.0.i.i.i.i.i9, %bb.t ], [ %.sroa.06.016.i.i.i.i, %bb.y ], [ %.sroa.06.016.i.i.i.i, %bb.x ] ; 2 uses
  %.sroa.02.1.i.i.i.i13 = phi i1 [ %.sroa.02.017.i.i.i.i, %bb.t ], [ true, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.cx = lshr i64 %.sroa.06.1.i.i.i.i12, 51
  %i.cy = icmp eq i64 %i.bo, %i.cx
  %or.cond.not.i.i.i.i14 = or i1 %.sroa.02.1.i.i.i.i13, %i.cy
  br i1 %or.cond.not.i.i.i.i14, label %bb.t, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %bb.k, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10, %bb.v, %bb.s, %bb.r, %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBP_3AnyNtNtBR_6marker4SendNtB26_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE6insertCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !5679, !noalias !5680 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5681, !noundef !14
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0EB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull %i.e, i1 noundef zeroext true) #36 ; 0 uses
  br label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !5682, !nonnull !14, !noundef !14 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.g, align 8, !alias.scope !5682, !noundef !14 ; 4 uses
  %i.h = lshr i64 %.val.i.i, 57
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i128, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.pn.i.i = phi i64 [ %.val.i.i, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.aj, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.ai, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !5683 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.k
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.o, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val5.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  %.val2.i.i = load i128, ptr %i.v, align 8, !noalias !5684
  %i.w = icmp eq i128 %.val.i.i.i, %.val2.i.i
  br i1 %i.w, label %bb.j, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !23

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.01.029.i.i, -1
  %i.y = and i16 %i.x, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !23

.thread24.i.i:                                    ; preds = %bb.e
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.0.017.i.i, %i.ac
  %i.ae = and i64 %i.ad, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ae, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noundef !14 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.an = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ao, 0
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aq
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !5685
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ar = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aq, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5686)
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.at = and i8 %i.ar, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add i64 %.sroa.3.0.i.ph.i, -16
  %i.aw = and i64 %i.av, %.val5.i
  store i8 %i.i, ptr %i.as, align 1, !noalias !5685
  %i.ax = getelementptr i8, ptr %.val.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store i8 %i.i, ptr %i.ay, align 1, !noalias !5685
  %i.az = load <2 x i64>, ptr %i.b, align 8, !alias.scope !5686, !noalias !5687
  %i.ba = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bb = sub <2 x i64> %i.az, %i.ba
  store <2 x i64> %i.bb, ptr %i.b, align 8, !alias.scope !5686, !noalias !5687
  %i.bc = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bd = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !5686
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5686
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5686
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !14, !noundef !14
  %i.bh = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !14, !align !27, !noundef !14
  store ptr %2, ptr %i.bf, align 8
  store ptr %3, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.34.0 = phi ptr [ undef, %bb.i ], [ %i.bi, %bb.j ]
  %.sroa.03.0 = phi ptr [ null, %bb.i ], [ %i.bg, %bb.j ]
  %i.bj = insertvalue { ptr, ptr } poison, ptr %.sroa.03.0, 0
  %i.bk = insertvalue { ptr, ptr } %i.bj, ptr %.sroa.34.0, 1
  ret { ptr, ptr } %i.bk
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime3now() #30 ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0) #30
  %i.g = load i64, ptr %i.a, align 8, !range !31, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !14 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !56, !noundef !14 ; 3 uses
  %i.m = urem i64 %i.j, 60                        ; 4 uses
  %i.n = udiv i64 %i.j, 60
  %i.o = urem i64 %i.n, 60                        ; 4 uses
  br i1 %i.h, label %bb.b, label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i64 0, %i.o
  %i.q = udiv i64 %i.j, 3600
  %i.r = urem i64 %i.q, 24                        ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread.i.i, label %.thread.i.i.thread, !prof !20

.thread.i.i.thread:                               ; preds = %bb.b
  %i.s = sub nuw nsw i32 1000000000, %i.l
  %i.t = xor i64 %i.m, -1
  br label %.thread43.i.i.thread

.thread.i.i:                                      ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.m
  %.not63 = icmp eq i64 %i.m, 0
  br i1 %.not63, label %.thread43.i.i, label %.thread43.i.i.thread, !prof !57

.thread43.i.i.thread:                             ; preds = %.thread.i.i, %.thread.i.i.thread
  %.sroa.04.040.i.i28 = phi i32 [ %i.s, %.thread.i.i.thread ], [ 0, %.thread.i.i ]
  %.sroa.09.041.i.i26 = phi i64 [ %i.t, %.thread.i.i.thread ], [ %i.u, %.thread.i.i ]
  %i.v = add nsw i64 %.sroa.09.041.i.i26, 60
  %i.w = xor i64 %i.o, -1
  br label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread

.thread43.i.i:                                    ; preds = %.thread.i.i
  %.not64 = icmp eq i64 %i.o, 0
  br i1 %.not64, label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i, label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread, !prof !57

_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread: ; preds = %.thread43.i.i, %.thread43.i.i.thread
  %.sroa.09.150.i.i36 = phi i64 [ %i.v, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %.sroa.016.051.i.i34 = phi i64 [ %i.w, %.thread43.i.i.thread ], [ %i.p, %.thread43.i.i ]
  %.sroa.04.040.i.i2733 = phi i32 [ %.sroa.04.040.i.i28, %.thread43.i.i.thread ], [ 0, %.thread43.i.i ]
  %i.x = add nsw i64 %.sroa.016.051.i.i34, 60
  %i.y = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.y, label %bb.p, label %bb.h

_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i: ; preds = %.thread43.i.i
  %.not65 = icmp eq i64 %i.r, 0
  %i.z = icmp ugt i64 %i.j, 185542587187199       ; 2 uses
  br i1 %.not65, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i
  br i1 %i.z, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp samesign ult i64 %i.j, 86400
  br i1 %i.aa, label %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp samesign ugt i64 %i.j, 377705203199
  br i1 %i.ab, label %bb.l, label %bb.f, !prof !54

bb.f:                                             ; preds = %bb.e
  %i.ac = udiv i64 %i.j, 86400
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i32 869850581, %i.ad        ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 3853261555       ; 2 uses
  %i.ah = lshr i64 %i.ag, 15
  %i.ai = lshr i64 %i.ag, 47
  %i.aj = trunc nuw nsw i64 %i.ai to i32          ; 3 uses
  %i.ak = trunc i64 %i.ah to i32
  %i.al = icmp ugt i32 %i.ak, 42920275
  %i.am = and i32 %i.aj, 3
  %i.an = icmp eq i32 %i.am, 0
  %.sroa.0.0.i.i.i.i = or i1 %i.al, %i.an         ; 2 uses
  %i.ao = lshr i32 %i.aj, 2
  %i.ap = add nuw nsw i32 %i.ae, %i.aj
  %i.aq = sub nuw nsw i32 %i.ap, %i.ao
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 3010298776       ; 2 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = lshr i64 %i.as, 40
  %i.av = trunc nuw nsw i64 %i.au to i32          ; 2 uses
  %i.aw = and i64 %i.at, 4294967295
  %i.ax = mul nuw nsw i64 %i.aw, 1461
  %i.ay = lshr i64 %i.ax, 34
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = zext i1 %.sroa.0.0.i.i.i.i to i32
  %i.bb = add nuw nsw i32 %i.az, %i.ba
  %i.bc = and i32 %i.av, 3
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = and i1 %.sroa.0.0.i.i.i.i, %i.bd
  %i.bf = shl nuw i32 %i.av, 10
  %i.bg = add nsw i32 %i.bf, 1858256896
  %i.bh = select i1 %i.be, i32 512, i32 0
  %i.bi = or disjoint i32 %i.bh, %i.bg
  %i.bj = or i32 %i.bi, %i.bb                     ; 2 uses
  %i.bk = icmp ne i32 %i.bj, 0
  call void @llvm.assume(i1 %i.bk)
  br label %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit

bb.g:                                             ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i
  br i1 %i.z, label %bb.p, label %bb.h

bb.h:                                             ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread, %bb.g
  %.sroa.09.150.i.i354353 = phi i64 [ %.sroa.09.150.i.i36, %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 0, %bb.g ] ; 2 uses
  %.sroa.04.040.i.i27324552 = phi i32 [ %.sroa.04.040.i.i2733, %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 0, %bb.g ] ; 2 uses
  %.sroa.016.1.i.i4751 = phi i64 [ %i.x, %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 0, %bb.g ] ; 2 uses
  %.pn = phi i64 [ 23, %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread ], [ 24, %bb.g ] ; 2 uses
  %i.bl = udiv i64 %i.j, 86400
  %i.bm = trunc nuw nsw i64 %i.bl to i32          ; 3 uses
  %i.bn = icmp samesign ult i64 %i.j, 86400
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bo = sub nuw nsw i32 2017281, %i.bm
  br label %_RNvMNtCsbPuM0779rnk_4time4dateNtB2_4Date15checked_sub_std.exit22.i

bb.j:                                             ; preds = %bb.h
  %1 = add i32 %i.bm, -4371588
  %or.cond.i.i19.i = icmp ult i32 %1, -7304484
  br i1 %or.cond.i.i19.i, label %bb.p, label %bb.k, !prof !54

bb.k:                                             ; preds = %bb.j
  %i.bp = sub i32 869850581, %i.bm                ; 2 uses
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = mul nuw nsw i64 %i.bq, 3853261555       ; 2 uses
  %i.bs = lshr i64 %i.br, 15
  %i.bt = lshr i64 %i.br, 47
  %i.bu = trunc nuw nsw i64 %i.bt to i32          ; 3 uses
  %i.bv = trunc i64 %i.bs to i32
  %i.bw = icmp ugt i32 %i.bv, 42920275
  %i.bx = and i32 %i.bu, 3
  %i.by = icmp eq i32 %i.bx, 0
  %.sroa.0.0.i.i.i20.i = or i1 %i.bw, %i.by       ; 2 uses
  %i.bz = lshr i32 %i.bu, 2
  %i.ca = add nuw nsw i32 %i.bp, %i.bu
  %i.cb = sub nuw nsw i32 %i.ca, %i.bz
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = mul nuw nsw i64 %i.cc, 3010298776       ; 2 uses
  %i.ce = lshr i64 %i.cd, 8
  %i.cf = lshr i64 %i.cd, 40
  %i.cg = trunc nuw nsw i64 %i.cf to i32          ; 2 uses
  %i.ch = and i64 %i.ce, 4294967295
  %i.ci = mul nuw nsw i64 %i.ch, 1461
  %i.cj = lshr i64 %i.ci, 34
  %i.ck = trunc nuw nsw i64 %i.cj to i32
  %i.cl = zext i1 %.sroa.0.0.i.i.i20.i to i32
  %i.cm = add nuw nsw i32 %i.ck, %i.cl
  %i.cn = and i32 %i.cg, 3
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = and i1 %.sroa.0.0.i.i.i20.i, %i.co
  %i.cq = shl nuw i32 %i.cg, 10
  %i.cr = add nsw i32 %i.cq, 1858256896
  %i.cs = select i1 %i.cp, i32 512, i32 0
  %i.ct = or disjoint i32 %i.cs, %i.cr
  %i.cu = or i32 %i.ct, %i.cm                     ; 2 uses
  %i.cv = icmp ne i32 %i.cu, 0
  call void @llvm.assume(i1 %i.cv)
  br label %_RNvMNtCsbPuM0779rnk_4time4dateNtB2_4Date15checked_sub_std.exit22.i

bb.l:                                             ; preds = %bb.e, %bb.c
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @824, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @301) #37, !noalias !5694
  unreachable

_RNvMNtCsbPuM0779rnk_4time4dateNtB2_4Date15checked_sub_std.exit22.i: ; preds = %bb.k, %bb.i
  %.sroa.0.0.i21.i = phi i32 [ %i.bo, %bb.i ], [ %i.cu, %bb.k ] ; 4 uses
  %i.cw = and i32 %.sroa.0.0.i21.i, 511
  %.not.i.i = icmp eq i32 %i.cw, 1
  br i1 %.not.i.i, label %bb.m, label %bb.n, !prof !23

bb.m:                                             ; preds = %_RNvMNtCsbPuM0779rnk_4time4dateNtB2_4Date15checked_sub_std.exit22.i
  %i.cx = icmp eq i32 %.sroa.0.0.i21.i, -10238975
  br i1 %i.cx, label %_RNvMNtCsbPuM0779rnk_4time4dateNtB2_4Date12previous_day.exit.i, label %bb.o

bb.n:                                             ; preds = %_RNvMNtCsbPuM0779rnk_4time4dateNtB2_4Date15checked_sub_std.exit22.i
  %i.cy = add i32 %.sroa.0.0.i21.i, -1            ; 2 uses
  %i.cz = icmp ne i32 %i.cy, 0
  call void @llvm.assume(i1 %i.cz)
  br label %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit

bb.o:                                             ; preds = %bb.m
  %i.da = ashr i32 %.sroa.0.0.i21.i, 10           ; 3 uses
  %i.db = add nsw i32 %i.da, -1                   ; 2 uses
  %i.dc = icmp slt i32 %i.da, 1
  %i.dd = sub nsw i32 1, %i.da
  %.sroa.07.0.i.i = select i1 %i.dc, i32 %i.dd, i32 %i.db
  %i.de = mul i32 %.sroa.07.0.i.i, 33555415
  %i.df = and i32 %i.de, 100695055
  %i.dg = icmp samesign ult i32 %i.df, 31745      ; 2 uses
  %i.dh = select i1 %i.dg, i32 512, i32 0
  %.sroa.04.0.i.i = select i1 %i.dg, i32 366, i32 365
  %i.di = shl i32 %i.db, 10
  %i.dj = or disjoint i32 %i.dh, %i.di
  %i.dk = or disjoint i32 %i.dj, %.sroa.04.0.i.i
  br label %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit

bb.p:                                             ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_sub_std.exit.i.thread, %bb.j, %bb.g
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @824, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @301) #37, !noalias !5694
  unreachable

_RNvMNtCsbPuM0779rnk_4time4dateNtB2_4Date12previous_day.exit.i: ; preds = %bb.m
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @799, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @301) #37, !noalias !5694
  unreachable

_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit: ; preds = %bb.d, %bb.f, %bb.n, %bb.o
  %.pn66 = phi i64 [ 0, %bb.f ], [ %.pn, %bb.n ], [ %.pn, %bb.o ], [ 0, %bb.d ]
  %.sroa.016.1.i.i46 = phi i64 [ 0, %bb.f ], [ %.sroa.016.1.i.i4751, %bb.n ], [ %.sroa.016.1.i.i4751, %bb.o ], [ 0, %bb.d ]
  %.sroa.04.040.i.i273244 = phi i32 [ 0, %bb.f ], [ %.sroa.04.040.i.i27324552, %bb.n ], [ %.sroa.04.040.i.i27324552, %bb.o ], [ 0, %bb.d ]
  %.sroa.09.150.i.i3542 = phi i64 [ 0, %bb.f ], [ %.sroa.09.150.i.i354353, %bb.n ], [ %.sroa.09.150.i.i354353, %bb.o ], [ 0, %bb.d ]
  %.sroa.02.0.i = phi i32 [ %i.bj, %bb.f ], [ %i.cy, %bb.n ], [ %i.dk, %bb.o ], [ 2017281, %bb.d ]
  %spec.select.i.i48 = sub nsw i64 %.pn66, %i.r
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %spec.select.i.i48, 48
  %.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.016.1.i.i46, 40
  %.sroa.3.0.insert.insert.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.2.0.insert.ext.i.i.i = shl nuw nsw i64 %.sroa.09.150.i.i3542, 32
  %.sroa.2.0.insert.shift.i.i.i = and i64 %.sroa.2.0.insert.ext.i.i.i, 1095216660480
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.3.0.insert.insert.i.i.i
  br label %bb.w

_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread: ; preds = %bb.a
  %i.dl = udiv i64 %i.j, 3600
  %i.dm = urem i64 %i.dl, 24
  %i.dn = icmp ugt i64 %i.j, 185542587187199
  br i1 %i.dn, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread
  %i.do = udiv i64 %i.j, 86400
  %i.dp = trunc nuw nsw i64 %i.do to i32          ; 2 uses
  %i.dq = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dp, i32 1) ; 2 uses
  %i.dr = extractvalue { i32, i1 } %i.dq, 0       ; 2 uses
  %i.ds = extractvalue { i32, i1 } %i.dq, 1
  %2 = add i32 %i.dr, -366
  %or.cond.i.i5 = icmp ult i32 %2, -365
  %or.cond.not = or i1 %or.cond.i.i5, %i.ds
  br i1 %or.cond.not, label %bb.s, label %bb.r, !prof !39

bb.r:                                             ; preds = %bb.q
  %i.dt = or disjoint i32 %i.dr, 2017280
  br label %_RNvXsb_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit

bb.s:                                             ; preds = %bb.q
  %i.du = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dp, i32 2440588) ; 2 uses
  %i.dv = extractvalue { i32, i1 } %i.du, 1
  br i1 %i.dv, label %bb.v, label %bb.t, !prof !23

bb.t:                                             ; preds = %bb.s
  %i.dw = extractvalue { i32, i1 } %i.du, 0       ; 2 uses
  %i.dx = add nsw i32 %i.dw, -5373485
  %or.cond.i.i.i6 = icmp ult i32 %i.dx, -7304484
  br i1 %or.cond.i.i.i6, label %bb.v, label %bb.u, !prof !54

bb.u:                                             ; preds = %bb.t
  %i.dy = add nuw nsw i32 %i.dw, 867409993        ; 2 uses
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = mul nuw nsw i64 %i.dz, 3853261555       ; 2 uses
  %i.eb = lshr i64 %i.ea, 15
  %i.ec = lshr i64 %i.ea, 47
  %i.ed = trunc nuw nsw i64 %i.ec to i32          ; 3 uses
  %i.ee = trunc i64 %i.eb to i32
  %i.ef = icmp ugt i32 %i.ee, 42920275
  %i.eg = and i32 %i.ed, 3
  %i.eh = icmp eq i32 %i.eg, 0
  %.sroa.0.0.i.i.i.i7 = or i1 %i.ef, %i.eh        ; 2 uses
  %i.ei = lshr i32 %i.ed, 2
  %i.ej = add nuw nsw i32 %i.dy, %i.ed
  %i.ek = sub nuw nsw i32 %i.ej, %i.ei
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %i.el, 3010298776       ; 2 uses
  %i.en = lshr i64 %i.em, 8
  %i.eo = lshr i64 %i.em, 40
  %i.ep = trunc nuw nsw i64 %i.eo to i32          ; 2 uses
  %i.eq = and i64 %i.en, 4294967295
  %i.er = mul nuw nsw i64 %i.eq, 1461
  %i.es = lshr i64 %i.er, 34
  %i.et = trunc nuw nsw i64 %i.es to i32
  %i.eu = zext i1 %.sroa.0.0.i.i.i.i7 to i32
  %i.ev = add nuw nsw i32 %i.et, %i.eu
  %i.ew = and i32 %i.ep, 3
  %i.ex = icmp eq i32 %i.ew, 0
  %i.ey = and i1 %.sroa.0.0.i.i.i.i7, %i.ex
  %i.ez = shl nuw i32 %i.ep, 10
  %i.fa = add nsw i32 %i.ez, 1858256896
  %i.fb = select i1 %i.ey, i32 512, i32 0
  %i.fc = or disjoint i32 %i.fb, %i.fa
  %i.fd = or i32 %i.fc, %i.ev
  br label %_RNvXsb_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit

bb.v:                                             ; preds = %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread, %bb.t, %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @798, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #37, !noalias !5695
  unreachable

_RNvXsb_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit: ; preds = %bb.r, %bb.u
  %.sroa.02.0.i8 = phi i32 [ %i.fd, %bb.u ], [ %i.dt, %bb.r ]
  %.sroa.4.0.insert.shift.i.i.i10 = shl nuw nsw i64 %i.dm, 48
  %.sroa.3.0.insert.shift.i.i.i12 = shl nuw nsw i64 %i.o, 40
  %.sroa.3.0.insert.insert.i.i.i13 = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i10, %.sroa.3.0.insert.shift.i.i.i12
  %.sroa.2.0.insert.shift.i.i.i15 = shl nuw nsw i64 %i.m, 32
  %.sroa.2.0.insert.insert.i.i.i16 = or disjoint i64 %.sroa.3.0.insert.insert.i.i.i13, %.sroa.2.0.insert.shift.i.i.i15
  br label %bb.w

bb.w:                                             ; preds = %_RNvXsb_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit, %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit
  %.sink = phi i32 [ %i.l, %_RNvXsb_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit ], [ %.sroa.04.040.i.i273244, %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit ]
  %.sroa.2.0.insert.insert.i.i.i16.sink = phi i64 [ %.sroa.2.0.insert.insert.i.i.i16, %_RNvXsb_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit ], [ %.sroa.2.0.insert.insert.i.i.i, %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit ]
  %.sroa.02.0.i8.sink = phi i32 [ %.sroa.02.0.i8, %_RNvXsb_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtB1a_4time8DurationE3add.exit ], [ %.sroa.02.0.i, %_RNvXsf_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTimeINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtNtB1a_4time8DurationE3sub.exit ]
  %.sroa.0.0.insert.ext.i.i.i17 = zext nneg i32 %.sink to i64
  %.sroa.0.0.insert.insert.i.i.i18 = or disjoint i64 %.sroa.2.0.insert.insert.i.i.i16.sink, %.sroa.0.0.insert.ext.i.i.i17
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.fe, ptr noundef nonnull readonly align 4 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @298, i64 12), i64 3, i1 false)
  store i64 %.sroa.0.0.insert.insert.i.i.i18, ptr %0, align 4, !noalias !14
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.02.0.i8.sink, ptr %.sroa.4.0..sroa_idx.i19, align 4, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_Cs88lzZUAp9Rb_12thread_localINtB5_11ThreadLocalINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEE6insertCsat9HgdBb3qc_16shadowsocks_rust(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %1, 63
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = shl nuw nsw i64 1, %1                    ; 3 uses
  %i.f = shl i64 40, %1                           ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp samesign ugt i64 %1, 57
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5729
  %i.g = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.f, i64 noundef range(i64 1, 9) 8) #30, !noalias !5729 ; 14 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader: ; preds = %bb.c
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %i.i = icmp samesign ult i64 %1, 3
  br i1 %i.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil.preheader, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader.new

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader.new: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.e, 9223372036854775800
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.f) #34, !noalias !5730
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader.new ], [ %i.q, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i ]
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5731
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !5731
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !5731
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !5731
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.4, align 8, !noalias !5731
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.5, align 8, !noalias !5731
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.6, align 8, !noalias !5731
  %i.q = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.r, i64 312
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.7, align 8, !noalias !5731
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit.unr-lcssa, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit.unr-lcssa: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil.preheader

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil.preheader: ; preds = %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit.unr-lcssa, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.preheader ], [ %i.q, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit.unr-lcssa ]
  %lcmp.mod16 = icmp samesign ult i64 %1, 3
  tail call void @llvm.assume(i1 %lcmp.mod16)
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil.preheader
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.s, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil ], [ %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.epil.init, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil ], [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil.preheader ]
  %i.s = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.epil, 1
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i.epil
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i8 0, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !5731
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil, !llvm.loop !5722

_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VecINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellIBv_NtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEE7reserveCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.epil, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit.unr-lcssa
  %i.u = cmpxchg ptr %i.b, ptr null, ptr %i.g acq_rel acquire, align 8 ; 2 uses
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  %i.w = extractvalue { ptr, i1 } %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.a
  %.sroa.01.0 = phi ptr [ %i.c, %bb.a ], [ %i.w, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtB4_4cell7RefCellINtNtBG_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEECsat9HgdBb3qc_16shadowsocks_rust.exit ], [ %i.g, %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 2 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0, i64 %2 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.z = load atomic i8, ptr %i.y acquire, align 1
  %.not.i = icmp eq i8 %i.z, 0
  %.not12 = icmp eq ptr %.sroa.01.0, null
  %.not = or i1 %.not12, %.not.i
  br i1 %.not, label %bb.k, label %bb.i

bb.f:                                             ; preds = %_RINvXsb_NtNtCsgCecv3eZDcN_5alloc5boxed4iterINtB8_3BoxSINtCs88lzZUAp9Rb_12thread_local5EntryINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtBa_3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEEINtNtNtNtB1w_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB3l_8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvBT_15allocate_bucketB1r_E0EECsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5732)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs88lzZUAp9Rb_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  %.sroa.0.03.i.i = phi i64 [ %i.ab, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs88lzZUAp9Rb_12thread_local5EntryINtNtB4_4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1kwRxRulhfk_12tracing_core8metadata11LevelFilterEEEECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ 0, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.0.03.i.i ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5734)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = load i8, ptr %i.ac, align 8, !range !19, !alias.scope !5735, !noundef !14
end_hunk_0
