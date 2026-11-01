Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FulluENvNtNtCs5Xr050g3D4S_3std2io5stdio6stdoutEINtNtB9_5layer5LayerB17_E9on_recordCsat9HgdBb3qc_16shadowsocks_rust:bb.a

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1z_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.al, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.s, %bb.r, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  br i1 %i.am, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.du = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.dv = and i64 %i.du, 9223372036854775807
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, label %bb.v, !prof !20

bb.v:                                             ; preds = %bb.u
  %i.dx = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.dx, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, label %bb.w

bb.w:                                             ; preds = %bb.v
  store atomic i8 1, ptr %i.dt monotonic, align 8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13: ; preds = %bb.w, %bb.v, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.dy = atomicrmw add ptr %i.al, i32 -1073741823 release, align 4
  %i.dz = add i32 %i.dy, -1073741823              ; 2 uses
  %or.cond.not.i.i.i14 = icmp ult i32 %i.dz, 1073741824
  br i1 %or.cond.not.i.i.i14, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15, label %bb.x, !prof !44

bb.x:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.al, i32 noundef %i.dz) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i13, %bb.x
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 80 ; 3 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8, !noalias !14593 ; 2 uses
  %i.ec = and i64 %i.eb, 3                        ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 2
  br i1 %i.ed, label %._crit_edge.i.i.i.i25, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16, !prof !46

._crit_edge.i.i.i.i25:                            ; preds = %.backedge.i.i.i.i22, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14593
  store i64 2, ptr %i.b, align 8, !noalias !14593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14593
  store ptr %i.b, ptr %i.a, align 8, !noalias !14593
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i26 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i26, align 8, !noalias !14593
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !14593
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15, %.backedge.i.i.i.i22
  %i.ee = phi i64 [ %i.el, %.backedge.i.i.i.i22 ], [ %i.ec, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15 ]
  %.sroa.05.0.i.i4.i.i.i.i17 = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i24, %.backedge.i.i.i.i22 ], [ %i.eb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit15 ] ; 5 uses
  %.in.i.i.i.i18 = lshr i64 %.sroa.05.0.i.i4.i.i.i.i17, 2
  %i.ef = and i64 %.in.i.i.i.i18, 562949953421311 ; 2 uses
  %i.eg = icmp eq i64 %i.ef, 1
  %i.eh = icmp eq i64 %i.ee, 1
  %.sroa.0.0.i.i.i.i.i.i19 = and i1 %i.eh, %i.eg
  br i1 %.sroa.0.0.i.i.i.i.i.i19, label %bb.y, label %.thread.i.i.i.i20

bb.y:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16
  %i.ei = and i64 %.sroa.05.0.i.i4.i.i.i.i17, -2251799813685248
  %i.ej = or disjoint i64 %i.ei, 3
  %i.ek = cmpxchg ptr %i.ea, i64 %.sroa.05.0.i.i4.i.i.i.i17, i64 %i.ej acq_rel acquire, align 8, !noalias !14593 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i27 = extractvalue { i64, i1 } %i.ek, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i27, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29.sink.split, label %.backedge.i.i.i.i22

.backedge.i.i.i.i22:                              ; preds = %.thread.i.i.i.i20, %bb.y
  %.pn.i.i.i.i23 = phi { i64, i1 } [ %i.ek, %bb.y ], [ %i.er, %.thread.i.i.i.i20 ]
  %.sroa.05.0.i.i.be.i.i.i.i24 = extractvalue { i64, i1 } %.pn.i.i.i.i23, 0 ; 2 uses
  %i.el = and i64 %.sroa.05.0.i.i.be.i.i.i.i24, 3 ; 2 uses
  %i.em = icmp eq i64 %i.el, 2
  br i1 %i.em, label %._crit_edge.i.i.i.i25, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16, !prof !47

.thread.i.i.i.i20:                                ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i16
  %i.en = and i64 %.sroa.05.0.i.i4.i.i.i.i17, -2251799813685245
  %i.eo = shl nuw nsw i64 %i.ef, 2
  %i.ep = add nsw i64 %i.eo, -4
  %i.eq = or i64 %i.ep, %i.en
  %i.er = cmpxchg ptr %i.ea, i64 %.sroa.05.0.i.i4.i.i.i.i17, i64 %i.eq acq_rel acquire, align 8, !noalias !14593 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i21 = extractvalue { i64, i1 } %i.er, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i21, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit29, label %.backedge.i.i.i.i22
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB5_9DirectiveNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.01.i.i.i.i.i.i.i = alloca [64 x i8], align 16 ; 5 uses
  %.sroa.36.i.i.i.i.i.i.i = alloca [10 x i8], align 1 ; 4 uses
  %.sroa.37.i.i.i.i.i.i = alloca [10 x i8], align 1 ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !24, !noundef !14
  %.not = icmp eq i64 %i.e, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d) #30
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ -1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.f, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val8 = load i64, ptr %i.g, align 8, !noundef !14 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14650)
  %i.h = mul nuw nsw i64 %.val8, 48               ; 2 uses
  %i.i = icmp eq i64 %.val8, 0
  br i1 %i.i, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14651
  %i.j = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.h, i64 noundef range(i64 1, 9) 8) #30, !noalias !14651 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #34, !noalias !14652
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.val8
  %.sroa.01.32..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i.i.i.i.i, i64 32
  %.sroa.36.792..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.36.i.i.i.i.i.i.i, i64 7
  br label %bb.f

bb.f:                                             ; preds = %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, %.lr.ph.i.i
  %.sroa.0.070.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.o, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ] ; 11 uses
  %.sroa.7.069.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.p, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ] ; 2 uses
  %.sroa.10.068.i.i = phi i64 [ %.val8, %.lr.ph.i.i ], [ %i.m, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ]
  %i.m = add nsw i64 %.sroa.10.068.i.i, -1        ; 2 uses
  %i.n = icmp eq ptr %.sroa.0.070.i.i, %i.l
  br i1 %i.n, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 48
  %i.p = add nuw nsw i64 %.sroa.7.069.i.i, 1
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %.sroa.7.069.i.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14653)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14654
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.070.i.i) #30, !noalias !14655
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 24
  %i.s = load i8, ptr %i.r, align 8, !range !21, !alias.scope !14656, !noalias !14657, !noundef !14 ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.s, -1
  br i1 %.not.i.i.i, label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14658)
  switch i8 %i.s, label %default.unreachable [
    i8 0, label %bb.i
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i
    i8 5, label %bb.m
    i8 6, label %bb.n
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 25
  %i.u = load i8, ptr %i.t, align 1, !range !19, !alias.scope !14659, !noalias !14657, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !14659, !noalias !14657, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !14659, !noalias !14657, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.l:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !14659, !noalias !14657, !noundef !14
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.m:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !14659, !noalias !14657, !nonnull !14, !noundef !14 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !noalias !14660
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.aj, label %bb.ai

bb.n:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 32
  %.val.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !14659, !noalias !14657 ; 32 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14660
  %i.ag = tail call noalias noundef align 16 dereferenceable_or_null(832) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 832, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !14660 ; 37 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, !prof !23

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 832) #34, !noalias !14660
  unreachable

_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14661)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i.i.i.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14662)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.i.i.i.i.i.i.i)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14663)
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 120
  %.val29.i.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !14664, !noalias !14660, !nonnull !14, !noundef !14
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 128
  %.val30.i.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !14664, !noalias !14660, !noundef !14 ; 4 uses
  %i.al = shl nuw nsw i64 %.val30.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.am = icmp eq i64 %.val30.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14665
  %i.an = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.al, i64 noundef range(i64 1, 9) 4) #30, !noalias !14665 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.al) #34, !noalias !14666
  unreachable

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.an, ptr nonnull readonly align 4 %.val29.i.i.i.i.i.i.i.i, i64 %i.al, i1 false), !noalias !14667
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.r ], [ inttoptr (i64 4 to ptr), %_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternE13new_uninit_inCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 392
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !14664, !noalias !14660, !noundef !14
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 480
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 504
  %.val27.i.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !14664, !noalias !14660, !nonnull !14, !noundef !14
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 512
  %.val28.i.i.i.i.i.i.i.i = load i64, ptr %i.at, align 8, !alias.scope !14664, !noalias !14660, !noundef !14 ; 4 uses
  %i.au = shl nuw nsw i64 %.val28.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.av = icmp eq i64 %.val28.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14668
  %i.aw = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.au, i64 noundef range(i64 1, 9) 4) #30, !noalias !14668 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.au) #34, !noalias !14669
  unreachable

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr nonnull readonly align 4 %.val27.i.i.i.i.i.i.i.i, i64 %i.au, i1 false), !noalias !14670
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i: ; preds = %bb.u, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %.sroa.540.0.i.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.u ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 800
  %i.az = load i8, ptr %i.ay, align 16, !range !28, !alias.scope !14664, !noalias !14660, !noundef !14
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 792
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !14664, !noalias !14660, !noundef !14
  %i.bc = load i64, ptr %i.ar, align 16, !range !31, !alias.scope !14664, !noalias !14660, !noundef !14 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 488
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !14664, !noalias !14660
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 520
  %i.bg = load i32, ptr %i.bf, align 8, !range !13, !alias.scope !14664, !noalias !14660, !noundef !14 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 524
  %i.bi = load i32, ptr %i.bh, align 4, !alias.scope !14664, !noalias !14660
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 528
  %i.bk = load i32, ptr %i.bj, align 16, !range !13, !alias.scope !14664, !noalias !14660, !noundef !14 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 532
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !14664, !noalias !14660
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 408
  %.val25.i.i.i.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !14664, !noalias !14660, !nonnull !14, !noundef !14
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 416
  %.val26.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 16, !alias.scope !14664, !noalias !14660, !noundef !14 ; 4 uses
  %i.bp = shl nuw nsw i64 %.val26.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.bq = icmp eq i64 %.val26.i.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14671
  %i.br = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bp, i64 noundef range(i64 1, 9) 4) #30, !noalias !14671 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bp) #34, !noalias !14672
  unreachable

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.br, ptr nonnull readonly align 4 %.val25.i.i.i.i.i.i.i.i, i64 %i.bp, i1 false), !noalias !14673
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i: ; preds = %bb.x, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i
  %.sroa.543.0.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %bb.x ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit32.i.i.i.i.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 432
  %.val23.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 16, !alias.scope !14664, !noalias !14660, !nonnull !14, !noundef !14
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 440
  %.val24.i.i.i.i.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !14664, !noalias !14660, !noundef !14 ; 4 uses
  %i.bv = shl nuw nsw i64 %.val24.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.bw = icmp eq i64 %.val24.i.i.i.i.i.i.i.i, 0
  br i1 %i.bw, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14674
  %i.bx = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bv, i64 noundef range(i64 1, 9) 4) #30, !noalias !14674 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.bv) #34, !noalias !14675
  unreachable

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull readonly align 4 %.val23.i.i.i.i.i.i.i.i, i64 %i.bv, i1 false), !noalias !14676
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i
  %.sroa.546.0.i.i.i.i.i.i.i.i = phi ptr [ %i.bx, %bb.aa ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit34.i.i.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 448
  %i.ca = load i64, ptr %i.bz, align 16, !alias.scope !14664, !noalias !14660, !noundef !14
  %i.cb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 464
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 16, !alias.scope !14664, !noalias !14660, !nonnull !14, !noundef !14
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 472
  %.val22.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !14664, !noalias !14660, !noundef !14 ; 4 uses
  %i.cd = shl nuw nsw i64 %.val22.i.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.ce = icmp eq i64 %.val22.i.i.i.i.i.i.i.i, 0
  br i1 %i.ce, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14677
  %i.cf = tail call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cd, i64 noundef range(i64 1, 9) 4) #30, !noalias !14677 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.cd) #34, !noalias !14678
  unreachable

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cf, ptr nonnull readonly align 4 %.val.i.i.i.i.i.i.i.i, i64 %i.cd, i1 false), !noalias !14679
  br label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i
  %.sroa.549.0.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %bb.ad ], [ inttoptr (i64 4 to ptr), %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit36.i.i.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 104
  %i.ci = load i8, ptr %i.ch, align 8, !range !28, !alias.scope !14664, !noalias !14660, !noundef !14 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ci, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 80 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 16, !alias.scope !14664, !noalias !14660, !nonnull !14, !noundef !14
  %i.cl = atomicrmw add ptr %i.ck, i64 1 monotonic, align 8, !noalias !14680
  %i.cm = icmp slt i64 %i.cl, 0
  br i1 %i.cm, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %2 = load <2 x ptr>, ptr %i.cj, align 16, !alias.scope !14664, !noalias !14660
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 96
  %i.co = load i64, ptr %i.cn, align 16, !alias.scope !14664, !noalias !14660, !noundef !14
  br label %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  tail call void @llvm.trap()
  unreachable

_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i: ; preds = %bb.af, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i
  %.sroa.05.sroa.5.0.i.i.i.i.i.i.i.i = phi i64 [ %i.co, %bb.af ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i ]
  %3 = phi <2 x ptr> [ %2, %bb.af ], [ undef, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit38.i.i.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.32..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.cp, i64 32, i1 false), !noalias !14681
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.36.792..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(3) %i.cq, i64 3, i1 false), !noalias !14681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ai, i64 32, i1 false), !noalias !14681
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 816
  %i.cs = load <2 x i32>, ptr %i.cr, align 16, !alias.scope !14682, !noalias !14660
  %i.ct = load ptr, ptr %.val.i.i.i.i, align 16, !alias.scope !14682, !noalias !14660, !nonnull !14, !noundef !14 ; 2 uses
  %i.cu = atomicrmw add ptr %i.ct, i64 1 monotonic, align 8, !noalias !14683
  %i.cv = icmp slt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ah, label %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i

bb.ah:                                            ; preds = %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  tail call void @llvm.trap()
  unreachable

_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %_RNvXsD_NtNtCsb6671No4yaL_14regex_automata3dfa5denseINtB5_3DFAINtNtCsgCecv3eZDcN_5alloc3vec3VecmEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 136
  %i.cx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 536
  %i.cy = trunc nuw i64 %i.bc to i1
  %.sroa.512.0.i.i.i.i.i.i.i.i = select i1 %i.cy, i64 %i.be, i64 undef
  %i.cz = trunc nuw i32 %i.bg to i1
  %.sroa.514.0.i.i.i.i.i.i.i.i = select i1 %i.cz, i32 %i.bi, i32 undef
  %i.da = trunc nuw i32 %i.bk to i1
  %.sroa.516.0.i.i.i.i.i.i.i.i = select i1 %i.da, i32 %i.bm, i32 undef
  %i.db = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !14682, !noalias !14660, !noundef !14
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.01.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !14684
  %.sroa.13.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.13.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.cw, i64 256, i1 false), !noalias !14660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.sroa.37.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(10) %.sroa.36.i.i.i.i.i.i.i, i64 10, i1 false), !noalias !14685
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i.i.i)
  store ptr %i.ct, ptr %i.ag, align 16, !noalias !14684
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.dc, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  store <2 x ptr> %3, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store i64 %.sroa.05.sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i8 %i.ci, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.101.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store i64 %.val30.i.i.i.i.i.i.i.i, ptr %.sroa.101.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  store i64 %.val30.i.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.14.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 392
  store i64 %i.aq, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.15.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 400
  store i64 %.val26.i.i.i.i.i.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.16.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 408
  store ptr %.sroa.543.0.i.i.i.i.i.i.i.i, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.17.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 416
  store i64 %.val26.i.i.i.i.i.i.i.i, ptr %.sroa.17.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.18.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 424
  store i64 %.val24.i.i.i.i.i.i.i.i, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.19.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 432
  store ptr %.sroa.546.0.i.i.i.i.i.i.i.i, ptr %.sroa.19.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.20.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 440
  store i64 %.val24.i.i.i.i.i.i.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.21.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 448
  store i64 %i.ca, ptr %.sroa.21.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 456
  store i64 %.val22.i.i.i.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 464
  store ptr %.sroa.549.0.i.i.i.i.i.i.i.i, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.24.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 472
  store i64 %.val22.i.i.i.i.i.i.i.i, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 480
  store i64 %i.bc, ptr %.sroa.25.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 488
  store i64 %.sroa.512.0.i.i.i.i.i.i.i.i, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.27.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 496
  store i64 %.val28.i.i.i.i.i.i.i.i, ptr %.sroa.27.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 504
  store ptr %.sroa.540.0.i.i.i.i.i.i.i.i, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.29.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 512
  store i64 %.val28.i.i.i.i.i.i.i.i, ptr %.sroa.29.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.30.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 520
  store i32 %i.bg, ptr %.sroa.30.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.31.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 524
  store i32 %.sroa.514.0.i.i.i.i.i.i.i.i, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !14684
  %.sroa.32.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 528
  store i32 %i.bk, ptr %.sroa.32.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.33.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 532
  store i32 %.sroa.516.0.i.i.i.i.i.i.i.i, ptr %.sroa.33.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !14684
  %.sroa.34.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 536
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.34.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(256) %i.cx, i64 256, i1 false), !noalias !14660
  %.sroa.35.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 792
  store i64 %i.bb, ptr %.sroa.35.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14684
  %.sroa.36.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 800
  store i8 %i.az, ptr %.sroa.36.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  %.sroa.37.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %.sroa.37.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(10) %.sroa.37.i.i.i.i.i.i, i64 10, i1 false), !noalias !14684
  %.sroa.382.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 816
  store <2 x i32> %i.cs, ptr %.sroa.382.0..sroa_idx.i.i.i.i.i.i, align 16, !noalias !14684
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.37.i.i.i.i.i.i)
  %i.dd = ptrtoint ptr %i.ag to i64
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.ai:                                            ; preds = %bb.m
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.070.i.i, i64 40
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !14659, !noalias !14657, !noundef !14
  %i.dg = ptrtoint ptr %i.ac to i64
  br label %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i

bb.aj:                                            ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.ai, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.5.sroa.6.0.i.i.i = phi i64 [ undef, %bb.g ], [ undef, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.h ], [ %i.df, %bb.ai ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ]
  %.sroa.5.sroa.5.0.i.i.i = phi i64 [ undef, %bb.g ], [ undef, %bb.i ], [ %i.w, %bb.j ], [ %i.y, %bb.k ], [ %i.aa, %bb.l ], [ undef, %bb.h ], [ %i.dg, %bb.ai ], [ %i.dd, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ]
  %.sroa.5.sroa.0.0.i.i.i = phi i8 [ undef, %bb.g ], [ %i.u, %bb.i ], [ undef, %bb.j ], [ undef, %bb.k ], [ undef, %bb.l ], [ undef, %bb.h ], [ undef, %bb.ai ], [ undef, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field12MatchPatternENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !14652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14654
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i8 %i.s, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !14652
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  store i8 %.sroa.5.sroa.0.0.i.i.i, ptr %.sroa.524.0..sroa_idx.i.i, align 1, !noalias !14652
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %.sroa.5.sroa.5.0.i.i.i, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !14652
  %.sroa.827.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 %.sroa.5.sroa.6.0.i.i.i, ptr %.sroa.827.0..sroa_idx.i.i, align 8, !noalias !14652
  %i.dh = icmp eq i64 %i.m, 0
  br i1 %i.dh, label %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.f

_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.f, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i, %bb.c
  %.sroa.10.0.i119.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.c ], [ %i.j, %_RNvXss_NtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5fieldNtB5_5MatchNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit.i.i ], [ %i.j, %bb.f ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !range !24, !noundef !14
  %.not7 = icmp eq i64 %i.dj, -1
  br i1 %.not7, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.di) #30
  %.sroa.03.0.copyload = load i64, ptr %i.b, align 8
  br label %bb.al

bb.al:                                            ; preds = %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit, %bb.ak
  %.sroa.03.0 = phi i64 [ %.sroa.03.0.copyload, %bb.ak ], [ -1, %_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env5field5MatchENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dm = load i64, ptr %1, align 8, !range !22, !noundef !14
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0, ptr %i.dn, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val8, ptr %i.do, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i119.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val8, ptr %.sroa.510.0..sroa_idx, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.03.0, ptr %i.dp, align 8
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.55.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false)
  store i64 %i.dm, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write17is_write_vectored(ptr noalias nofree readonly align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noalias noundef ptr @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write5flush(ptr noalias nofree readnone align 4 captures(none) %0) unnamed_addr #8 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCsat9HgdBb3qc_16shadowsocks_rust6configNtB5_15LogFormatConfigNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @759) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtCsf3Ta7LF998c_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @800, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @745, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @725) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsc_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_14AnyValueParser10parse_ref_Csat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i8 range(i8 0, 3) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = tail call fastcc { i64, ptr } @_RNvXsd_NtNtCslDQ48jUgq5Q_12clap_builder7builder12value_parserFG_RL0_eEINtNtCsf3Ta7LF998c_4core6result6ResultjNtNtNtB1b_3num5error13ParseIntErrorENtB5_16TypedValueParser9parse_refCsat9HgdBb3qc_16shadowsocks_rust(ptr readonly %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) #30 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14688
  %i.f = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !noalias !14688 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #34, !noalias !14688
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.c to i64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx6, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  store ptr %i.f, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @801, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @21, i64 16, i1 false)
  br label %bb.e

end_hunk_0
