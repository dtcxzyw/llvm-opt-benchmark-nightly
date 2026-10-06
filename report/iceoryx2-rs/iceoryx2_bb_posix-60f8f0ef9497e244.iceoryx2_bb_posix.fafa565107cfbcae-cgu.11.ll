Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_posix-60f8f0ef9497e244.iceoryx2_bb_posix.fafa565107cfbcae-cgu.11?download=true
inline.NumInlined: 52
inline.NumDeleted: 29
begin_hunk_0_@_RNvMs2_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix19file_descriptor_setNtB5_17FileDescriptorSet8add_impl:bb.a
bb.g:                                             ; preds = %bb.d
  %i.ad = or i64 %i.y, %i.aa
  store i64 %i.ad, ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !noundef !5
  %i.ag = add nuw nsw i32 %i.p, 1
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.af, i32 %i.ag)
  store i32 %i.ah, ptr %i.ae, align 8
  %i.ai = load i64, ptr %1, align 8, !range !10, !alias.scope !39, !noundef !5
  %i.aj = icmp eq i64 %i.m, %i.ai
  br i1 %i.aj, label %bb.h, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCslxWRlZ2j4ks_17iceoryx2_bb_posix(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #15
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit: ; preds = %bb.g, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !39, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.m
  store i32 %i.p, ptr %i.am, align 4
  %i.an = add nuw nsw i64 %i.m, 1
  store i64 %i.an, ptr %i.l, align 8, !alias.scope !39
  %i.ao = load ptr, ptr %i.j, align 8, !nonnull !5, !align !8, !noundef !5
  store ptr %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.ap, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.j:                                             ; preds = %bb.f, %bb.c
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %bb.c ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.aq, align 8
  store ptr null, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16socket_ancillaryNtB5_15SocketAncillary16prepare_for_send(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.d = load i8, ptr %i.c, align 8, !range !11, !noundef !5
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3185
  %i.g = load i8, ptr %i.f, align 1, !range !11, !noundef !5
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 3 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.e, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3072) %i.m, i8 0, i64 3072, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3186
  store i8 0, ptr %i.n, align 2
  br label %bb.c

.lr.ph.preheader:                                 ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.j, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx
  br label %.lr.ph

bb.e:                                             ; preds = %bb.h, %bb.c
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ %i.ax, %bb.h ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i32, ptr %i.t, align 8, !range !12, !noundef !5
  %i.v = trunc nuw i32 %i.u to i1
  br i1 %i.v, label %bb.i, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit
  %i.w = phi i64 [ %i.ad, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.03.032 = phi ptr [ %i.x, %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit ], [ %i.r, %.lr.ph.preheader ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.03.032, i64 8 ; 2 uses
  %i.y = load i32, ptr %.sroa.03.032, align 4, !noundef !5
  %i.z = load i64, ptr %i.b, align 8, !range !10, !alias.scope !44, !noundef !5
  %i.aa = icmp eq i64 %i.w, %i.z
  br i1 %i.aa, label %bb.f, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit

bb.f:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCslxWRlZ2j4ks_17iceoryx2_bb_posix(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #15
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit: ; preds = %.lr.ph, %bb.f
  %i.ab = load ptr, ptr %i.o, align 8, !alias.scope !44, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.w
  store i32 %i.y, ptr %i.ac, align 4
  %i.ad = add i64 %i.w, 1                         ; 2 uses
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !44
  %i.ae = icmp eq ptr %i.x, %i.s
  br i1 %i.ae, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclE8push_mutCslxWRlZ2j4ks_17iceoryx2_bb_posix.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = icmp ugt i64 %i.ag, 15
  br i1 %i.ah, label %bb.g, label %.thread

bb.g:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.aj = load ptr, ptr %i.ai, align 8, !noundef !5 ; 6 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %.thread, label %bb.h, !prof !45

.thread:                                          ; preds = %._crit_edge, %bb.g
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #14
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i32 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i64 0, ptr %i.aj, align 8
  store i32 1, ptr %i.al, align 4
  %i.am = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.an = load i64, ptr %i.p, align 8, !noundef !5
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 2 uses
  %i.ap = add nuw i64 %i.ao, 16
  %i.aq = and i64 %i.ap, 4294967292
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.as = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6string6memcpy(ptr noundef nonnull %i.ar, ptr noundef nonnull readonly align 4 %i.am, i64 noundef %i.ao) #13 ; 0 uses
  store i64 %i.aq, ptr %i.aj, align 8, !noalias !46
  %i.at = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.au = icmp ult i64 %i.at, 1152921504606846976
  call void @llvm.assume(i1 %i.au)
  %i.av = shl nuw nsw i64 %i.at, 2
  %i.aw = add nuw nsw i64 %i.av, 20
  %i.ax = and i64 %i.aw, 4294967288
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VeclENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslxWRlZ2j4ks_17iceoryx2_bb_posix(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #13
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVeclENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslxWRlZ2j4ks_17iceoryx2_bb_posix(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.ay, i64 12, i1 false)
  %i.az = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 1152921504606846976
  call void @llvm.assume(i1 %i.ba)
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.p, %bb.e
  %.sroa.0.1 = phi i64 [ %i.br, %bb.p ], [ %.sroa.0.0, %bb.e ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3168
  store i64 %.sroa.0.1, ptr %i.bc, align 8
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bf = load i64, ptr %i.be, align 8, !noundef !5
  %i.bg = icmp ugt i64 %i.bf, 15
  br i1 %i.bg, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %bb.q, label %.thread29

bb.m:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.bl = load ptr, ptr %i.bk, align 8, !noundef !5
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.sroa.014.0 = phi ptr [ %i.bl, %bb.m ], [ null, %bb.k ]
  %i.bm = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6select11CMSG_NXTHDR(ptr noundef nonnull %i.bd, ptr noundef %.sroa.014.0) #13 ; 2 uses
  %.not25 = icmp eq ptr %i.bm, null
  br i1 %.not25, label %bb.o, label %bb.p, !prof !9

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.q
  %.sink40 = phi ptr [ %i.bt, %bb.q ], [ %i.bm, %bb.n ] ; 6 uses
  %1 = getelementptr inbounds nuw i8, ptr %.sink40, i64 8
  store i32 1, ptr %1, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink40, i64 12
  store i32 0, ptr %i.bn, align 4
  store i64 0, ptr %.sink40, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink40, i64 12
  store i32 2, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.sink40, i64 16
  %i.bq = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6string6memcpy(ptr noundef nonnull %i.bp, ptr noundef nonnull %i.a, i64 noundef 12) #13 ; 0 uses
  store i64 28, ptr %.sink40, align 8
  %i.br = add nuw nsw i64 %.sroa.0.0, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.q:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.bt = load ptr, ptr %i.bs, align 8, !noundef !5 ; 2 uses
  %.not26 = icmp eq ptr %i.bt, null
  br i1 %.not26, label %.thread29, label %bb.p, !prof !45

.thread29:                                        ; preds = %bb.l, %bb.q
  call void @_RNvNtCs8Chj7Szqq0n_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 94, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #14
  unreachable

bb.r:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs4_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix16socket_ancillaryNtB5_15SocketAncillary21extract_received_data(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [12 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %bb.b, label %.outer._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.q = load ptr, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.b
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.outer, %.lr.ph.lr.ph
  %.sroa.09.1.ph51 = phi ptr [ %i.q, %.lr.ph.lr.ph ], [ %i.ar, %.outer ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.1.ph51, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !noundef !5
  %.not46 = icmp eq i32 %i.x, 1
  br i1 %.not46, label %.split.us, label %.lr.ph47

.outer._crit_edge:                                ; preds = %.outer, %bb.a, %bb.b
  ret void

.split.us:                                        ; preds = %.lr.ph47, %.lr.ph.split
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.1.ph51, i64 12
  %i.z = load i32, ptr %i.y, align 4, !noundef !5 ; 2 uses
  switch i32 %i.z, label %bb.c [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

.lr.ph47:                                         ; preds = %.lr.ph.split, %.lr.ph47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverNtB6_5Debug3fmtBA_, ptr %.sroa.419.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aa = load i32, ptr %i.w, align 8, !noundef !5
  store i32 %i.aa, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  store <2 x ptr> <ptr @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt, ptr @26>, ptr %.sroa.423.0..sroa_idx, align 8
  store ptr @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.j, ptr noundef nonnull @27, ptr noundef nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ab = load i32, ptr %i.w, align 8, !noundef !5
  %.not = icmp eq i32 %i.ab, 1
  br i1 %.not, label %.split.us, label %.lr.ph47

bb.c:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.z, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %i.b, align 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverNtB6_5Debug3fmtBA_, ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  store ptr @_RNvXs9_NtNtNtCs8Chj7Szqq0n_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.443.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.b, ptr noundef nonnull @25, ptr noundef nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.outer

bb.d:                                             ; preds = %.split.us
  %i.ac = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.ad = and i64 %i.ac, 3
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.1.ph51, i64 16
  %i.ag = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6string6memcpy(ptr noundef nonnull %i.d, ptr noundef nonnull %i.af, i64 noundef 12) #13 ; 0 uses
  %i.ah = load i32, ptr %i.s, align 8, !noundef !5
  store i32 1, ptr %i.t, align 8
  %i.ai = load <2 x i32>, ptr %i.d, align 8
  store <2 x i32> %i.ai, ptr %.sroa.4.0..sroa_idx, align 4
  store i32 %i.ah, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.outer

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix20unix_datagram_socket20UnixDatagramReceiverNtB6_5Debug3fmtBA_, ptr %.sroa.435.0..sroa_idx, align 8
  call void @_RNvCsjTb8cw1cD0P_12iceoryx2_log24___internal_print_log_msg(i8 noundef 3, ptr noundef nonnull @1, ptr noundef nonnull %i.g, ptr noundef nonnull @23, ptr noundef nonnull inttoptr (i64 95 to ptr)) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load i64, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %i.aj = phi i64 [ %i.ac, %bb.d ], [ %.pre, %bb.f ]
  %.not52 = icmp eq i64 %i.aj, 0
  br i1 %.not52, label %.outer, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.1.ph51, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph50, %bb.n
  %.sroa.0.048 = phi i64 [ 0, %.lr.ph50 ], [ %i.bb, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.f, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sroa.0.048
  %i.am = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6string6memcpy(ptr noundef nonnull %i.f, ptr noundef nonnull %i.al, i64 noundef 4) #13 ; 0 uses
  %i.an = load i32, ptr %i.f, align 4, !noundef !5 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.outer

bb.j:                                             ; preds = %bb.h
  %i.ap = call { i32, i8 } @_RNvMs_NtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptorNtB4_14FileDescriptor3new(i32 noundef %i.an) #13 ; 2 uses
  %i.aq = extractvalue { i32, i8 } %i.ap, 1       ; 2 uses
  %.not44 = icmp eq i8 %i.aq, 2
  br i1 %.not44, label %bb.m, label %bb.k

.outer:                                           ; preds = %bb.n, %bb.g, %bb.i, %bb.e, %bb.c
  %i.ar = call noundef ptr @_RNvNtNtNtCs8JF6YcdXpCX_18iceoryx2_pal_posix2os5posix6select11CMSG_NXTHDR(ptr noundef nonnull %i.l, ptr noundef nonnull %.sroa.09.1.ph51) #13 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.outer._crit_edge, label %.lr.ph.split

bb.k:                                             ; preds = %bb.j
  %i.at = extractvalue { i32, i8 } %i.ap, 0
  %i.au = load i64, ptr %i.u, align 8, !alias.scope !49, !noundef !5 ; 3 uses
  %i.av = load i64, ptr %0, align 8, !range !10, !alias.scope !49, !noundef !5
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorE8push_mutBJ_.exit

bb.l:                                             ; preds = %bb.k
  call void @_RNvMs4_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorE8push_mutBJ_.exit

_RNvMsG_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix15file_descriptor14FileDescriptorE8push_mutBJ_.exit: ; preds = %bb.k, %bb.l
  %i.ax = load ptr, ptr %i.v, align 8, !alias.scope !49, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.au ; 2 uses
  store i32 %i.at, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i8 %i.aq, ptr %i.az, align 4
  %i.ba = add i64 %i.au, 1
  store i64 %i.ba, ptr %i.u, align 8, !alias.scope !49
end_hunk_0
