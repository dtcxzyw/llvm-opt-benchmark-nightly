Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.09?download=true
inline.NumInlined: 646
inline.NumDeleted: 291
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read16default_read_bufNCNvYINtNtCs7ZUl82OSlxp_6rustls6stream6StreamNtNtNtNtB10_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamENtB2_4Read8read_buf0ECsi17nFaBu4HY_10ech_client:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 3 uses
  %i.f = sub i64 %i.c, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !range !26, !noundef !12
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsj6eKBz9Db1c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.g, i64 noundef %i.f) ; 0 uses
  store i8 1, ptr %i.h, align 8
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.a, %bb.b
  %i.l = tail call { i64, ptr } @_RNvXs_NtCs7ZUl82OSlxp_6rustls6streamINtB4_6StreamNtNtNtNtB6_6client11client_conn10connection16ClientConnectionNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read4readCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.g, i64 noundef range(i64 0, -9223372036854775808) %i.f) ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc nuw i64 %i.m to i1
  br i1 %i.p, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit
  %.not = icmp ult i64 %i.f, %i.o
  br i1 %.not, label %bb.d, label %bb.e, !prof !29

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = add i64 %i.e, %i.o
  store i64 %i.q, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.e ], [ %i.n, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 8 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = load i64, ptr %0, align 8, !range !19, !noundef !12 ; 3 uses
  %i.g = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %2, -1025
  br i1 %i.h, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit, !prof !29

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit: ; preds = %bb.b
  %i.i = add nuw i64 %2, 1024                     ; 3 uses
  %i.j = and i64 %i.i, 8191                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = sub i64 %2, %i.j
  %i.m = add i64 %i.l, 9216                       ; 2 uses
  %.not29 = icmp ult i64 %i.m, %i.i
  %.sroa.5.1.i = select i1 %.not29, i64 8192, i64 %i.m
  %.sroa.053.1 = select i1 %i.k, i64 %i.i, i64 %.sroa.5.1.i ; 2 uses
  %i.n = icmp eq i64 %2, 0
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit
  %.sroa.053.0 = phi i64 [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.o = sub nsw i64 %i.f, %i.d
  %i.p = icmp ult i64 %i.o, 32
  br i1 %i.p, label %bb.d, label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread

_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread: ; preds = %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit
  %.pre = phi i64 [ %.pre.pre, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge ], [ %i.d, %bb.c ], [ %i.d, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit ], [ %i.d, %bb.b ]
  %.sroa.053.2 = phi i64 [ %.sroa.053.0, %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge ], [ %.sroa.053.0, %bb.c ], [ %.sroa.053.1, %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit ], [ 8192, %bb.b ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.v = tail call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %.loopexit, label %._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge

._RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread_crit_edge: ; preds = %bb.f
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %_RNCINvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_endINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEE0Csi17nFaBu4HY_10ech_client.exit.thread

._crit_edge:                                      ; preds = %bb.ai, %.outer
  %.sroa.027.2.lcssa = phi i64 [ %.sroa.027.2.ph, %.outer ], [ %i.dt, %bb.ai ]
  %.lcssa32 = phi i64 [ %i.dh, %.outer ], [ %i.dt, %bb.ai ] ; 2 uses
  %.lcssa = phi i1 [ %i.dk, %.outer ], [ %i.dy, %bb.ai ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %.outer, %bb.ai
  %i.ab = call fastcc { i64, ptr } @_RINvNvNtNtCs4wP2HXfJTCR_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.ab, 0
  %i.ad = extractvalue { i64, ptr } %i.ab, 1      ; 2 uses
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %bb.af, label %bb.ag

bb.g:                                             ; preds = %bb.i, %._crit_edge
  %i.af = phi i64 [ %i.an, %bb.i ], [ %.lcssa32, %._crit_edge ] ; 7 uses
  %.sroa.027.3 = phi i64 [ %i.an, %bb.i ], [ %.sroa.027.2.lcssa, %._crit_edge ] ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw i64 %i.af, 32
  %i.ai = icmp ugt i64 %.sroa.027.3, %i.ah
  %i.aj = load ptr, ptr %i.q, align 8, !nonnull !12, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.af ; 3 uses
  br i1 %i.ai, label %bb.j, label %.thread

bb.h:                                             ; preds = %._crit_edge
  %i.al = call { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %.lcssa32, i64 noundef 32, i64 noundef 1, i64 noundef 1)
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %.not = icmp eq i64 %i.am, -1
  br i1 %.not, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.an = load i64, ptr %i.c, align 8, !noundef !12 ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.g

.thread:                                          ; preds = %bb.g
  %i.ap = load i64, ptr %0, align 8, !range !19, !noundef !12
  %i.aq = sub nsw i64 %i.ap, %i.af
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %.sroa.053.3.ph.ph)
  br label %.peel.begin

bb.j:                                             ; preds = %bb.g
  %i.ar = sub nuw i64 %.sroa.027.3, %i.af         ; 3 uses
  %.pre110 = load i64, ptr %0, align 8, !range !19
  %.pre112 = sub nsw i64 %.pre110, %i.af          ; 2 uses
  %.not60 = icmp ugt i64 %i.ar, %.pre112
  br i1 %.not60, label %bb.p, label %.peel.begin, !prof !30

.peel.begin:                                      ; preds = %.thread, %bb.j
  %.sroa.034.0121 = phi i64 [ %..i, %.thread ], [ %i.ar, %bb.j ] ; 8 uses
  %i.as = add i64 %.sroa.034.0121, %i.af
  %.not59.not = icmp ult i64 %.sroa.027.3, %i.as
  br i1 %.not59.not, label %bb.k, label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.peel

bb.k:                                             ; preds = %.peel.begin
  %i.at = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsj6eKBz9Db1c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.ak, i64 noundef %.sroa.034.0121), !noalias !546 ; 0 uses
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.peel

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.peel: ; preds = %bb.k, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !547
  store ptr %i.ak, ptr %i.b, align 8, !noalias !547
  store i64 %.sroa.034.0121, ptr %i.r, align 8, !noalias !547
  store i64 0, ptr %i.s, align 8, !noalias !547
  store i64 %.sroa.034.0121, ptr %i.t, align 8, !noalias !547
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.au = call { i64, ptr } @_RNvXs2_NtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompatINtB5_17AsyncIoStdAsTokioINtB5_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEENtNtNtB1N_2io10async_read9AsyncRead9poll_readCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !548 ; 2 uses
  %i.av = extractvalue { i64, ptr } %i.au, 0
  %i.aw = trunc nuw i64 %i.av to i1
  br i1 %i.aw, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel, label %bb.l

bb.l:                                             ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.peel
  %i.ax = extractvalue { i64, ptr } %i.au, 1      ; 2 uses
  %.not.i.i.i.i.peel = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit106, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel

_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel: ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.peel, %bb.l
  %i.ay = phi ptr [ %i.ax, %bb.l ], [ inttoptr (i64 55834574851 to ptr), %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.peel ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !547
  %i.az = ptrtoint ptr %i.ay to i64               ; 4 uses
  %i.ba = and i64 %i.az, 3
  switch i64 %i.ba, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel.unreachabledefault [
    i64 2, label %bb.o
    i64 3, label %.split24.peel
    i64 0, label %.split25.peel
    i64 1, label %.split.peel
  ], !prof !18

.split.peel:                                      ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  %i.bb = getelementptr i8, ptr %i.ay, i64 31
  %i.bc = load i8, ptr %i.bb, align 8, !range !31, !noundef !12
  %i.bd = icmp eq i8 %i.bc, 35
  br i1 %i.bd, label %bb.m, label %.loopexit129

bb.m:                                             ; preds = %.split.peel
  %i.be = getelementptr i8, ptr %i.ay, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.be) ]
  store ptr %i.be, ptr %i.u, align 8, !alias.scope !549
  store i8 3, ptr %i.a, align 8, !alias.scope !549
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader: ; preds = %.thread27.peel, %bb.n, %bb.m
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i

.split25.peel:                                    ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !range !31, !noundef !12
  %i.bh = icmp eq i8 %i.bg, 35
  br i1 %i.bh, label %.thread27.peel, label %.loopexit129

.split24.peel:                                    ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  %i.bi = lshr i64 %i.az, 32
  %i.bj = icmp ult ptr %i.ay, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.bi to i8
  %spec.select.i.i.i.peel = select i1 %i.bj, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.bk = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.bl, label %bb.n, label %.loopexit129

bb.n:                                             ; preds = %.split24.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bm = and i64 %i.az, 1095216660480
  %i.bn = icmp ne i64 %i.bm, 1095216660480
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.assume(i1 %i.bn)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader

bb.o:                                             ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.peel unwind label %.loopexit.split-lp

.noexc.peel:                                      ; preds = %bb.o
  %i.bp = lshr i64 %i.az, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !12, !noundef !12
  %i.bt = invoke noundef zeroext i1 %i.bs(i32 noundef %i.bq)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel unwind label %.loopexit.split-lp, !inline_history !3

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %.noexc.peel
  br i1 %i.bt, label %.thread27.peel, label %.loopexit129

.thread27.peel:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split25.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader

bb.p:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ar, i64 noundef %.pre112, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
  unreachable

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !547
  store ptr %i.ak, ptr %i.b, align 8, !noalias !547
  store i64 %.sroa.034.0121, ptr %i.r, align 8, !noalias !547
  store i64 0, ptr %i.s, align 8, !noalias !547
  store i64 %.sroa.034.0121, ptr %i.t, align 8, !noalias !547
  %i.bu = call { i64, ptr } @_RNvXs2_NtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompatINtB5_17AsyncIoStdAsTokioINtB5_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEENtNtNtB1N_2io10async_read9AsyncRead9poll_readCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b), !noalias !548 ; 2 uses
  %i.bv = extractvalue { i64, ptr } %i.bu, 0
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16, label %bb.q

bb.q:                                             ; preds = %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i
  %i.bx = extractvalue { i64, ptr } %i.bu, 1      ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i, label %.loopexit106, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16

.loopexit106:                                     ; preds = %bb.q, %bb.l
  %i.by = load i64, ptr %i.r, align 8, !noalias !547, !noundef !12 ; 2 uses
  %i.bz = load i64, ptr %i.s, align 8, !noalias !547, !noundef !12 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.bz, %i.by
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.s, !prof !32

bb.r:                                             ; preds = %.loopexit106
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bz, i64 noundef %i.by, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25, !noalias !548
  unreachable

bb.s:                                             ; preds = %.loopexit106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !547
  %.not.i.i = icmp ult i64 %.sroa.034.0121, %i.bz
  br i1 %.not.i.i, label %bb.t, label %bb.aa, !prof !29

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25, !noalias !546
  unreachable

_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16: ; preds = %bb.q, %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i
  %i.ca = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i ], [ %i.bx, %bb.q ] ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !547
  %i.cb = ptrtoint ptr %i.ca to i64               ; 4 uses
  %i.cc = and i64 %i.cb, 3
  switch i64 %i.cc, label %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16.unreachabledefault [
    i64 2, label %bb.u
    i64 3, label %.split24
    i64 0, label %.split25
    i64 1, label %.split
  ], !prof !18

_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16.unreachabledefault: ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  unreachable

_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel.unreachabledefault: ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.peel
  unreachable

bb.u:                                             ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %.loopexit107

.noexc:                                           ; preds = %bb.u
  %i.ce = lshr i64 %i.cb, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !12, !noundef !12
  %i.ci = invoke noundef zeroext i1 %i.ch(i32 noundef %i.cf)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %.loopexit107, !inline_history !3

.split24:                                         ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cj = lshr i64 %i.cb, 32
  %i.ck = icmp ult ptr %i.ca, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.cj to i8
  %spec.select.i.i.i = select i1 %i.ck, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.cl = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.cl)
  %i.cm = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.cm, label %bb.v, label %.loopexit129

.split25:                                         ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.co = load i8, ptr %i.cn, align 8, !range !31, !noundef !12
  %i.cp = icmp eq i8 %i.co, 35
  br i1 %i.cp, label %.thread27, label %.loopexit129

.split:                                           ; preds = %_RNvYINtNtCs6HdZZ4a9Zp9_12tokio_rustls6common15SyncReadAdapterINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read8read_bufCsi17nFaBu4HY_10ech_client.exit.thread16
  %i.cq = getelementptr i8, ptr %i.ca, i64 31
  %i.cr = load i8, ptr %i.cq, align 8, !range !31, !noundef !12
  %i.cs = icmp eq i8 %i.cr, 35
  br i1 %i.cs, label %bb.w, label %.loopexit129

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.ci, label %.thread27, label %.loopexit129

.thread27:                                        ; preds = %.split25, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge

bb.v:                                             ; preds = %.split24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ct = and i64 %i.cb, 1095216660480
  %i.cu = icmp ne i64 %i.ct, 1095216660480
  call void @llvm.assume(i1 %i.ck)
  call void @llvm.assume(i1 %i.cu)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge

bb.w:                                             ; preds = %.split
  %i.cv = getelementptr i8, ptr %i.ca, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  store ptr %i.cv, ptr %i.u, align 8, !alias.scope !549
  store i8 3, ptr %i.a, align 8, !alias.scope !549
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge

_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i.backedge: ; preds = %bb.w, %bb.v, %.thread27
  br label %_RNvMs6_NtNtCsj6eKBz9Db1c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsi17nFaBu4HY_10ech_client.exit.i.i, !llvm.loop !545

bb.x:                                             ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi

.loopexit107:                                     ; preds = %bb.u, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.o, %.noexc.peel
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp, %.loopexit107
  %.lcssa83 = phi ptr [ %i.ca, %.loopexit107 ], [ %i.ay, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit107 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %.lcssa83) #21
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

.loopexit129:                                     ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split24.peel, %.split25.peel, %.split.peel, %.split25, %.split24, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit
  %.lcssa82 = phi ptr [ %i.ca, %.split25 ], [ %i.ca, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.ca, %.split ], [ %i.ca, %.split24 ], [ %i.ay, %.split.peel ], [ %i.ay, %.split25.peel ], [ %i.ay, %.split24.peel ], [ %i.ay, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ]
  %i.cx = ptrtoint ptr %.lcssa82 to i64
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1B_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %i.e, ptr noundef nonnull align 8 dereferenceable(1144) %i.o, i64 1144, i1 false)
  invoke fastcc void @_RNvXs6_NtCs6HdZZ4a9Zp9_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(1144) %i.e)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.w

bb.w:                                             ; preds = %bb.f, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %0, ptr noundef nonnull align 8 dereferenceable(1144) %i.o, i64 1144, i1 false)
  br label %bb.at

bb.x:                                             ; preds = %bb.u
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.at) #21
          to label %.thread119 unwind label %bb.z

bb.y:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.450.sroa.4.0..sroa.450.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 2, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %.sroa.450.0..sroa_idx, align 8
  br label %bb.ac

bb.z:                                             ; preds = %bb.x, %.body, %bb.bk, %3, %.thread102, %bb.bp, %bb.bo, %.loopexit.split-lp
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aa:                                            ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.thread119.sink.split

bb.ab:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %1, ptr noundef nonnull align 8 dereferenceable(1144) %i.d, i64 1144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.ad:                                            ; preds = %bb.j
  %i.az = load i64, ptr %i.j, align 8, !range !17, !noundef !12
  switch i64 %i.az, label %bb.af [
    i64 2, label %bb.ae
    i64 0, label %bb.ao
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.ba = load i8, ptr %.sroa.538.0..sroa_idx, align 1, !range !26, !noundef !12
  store i8 %i.ba, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %i.g, ptr noundef nonnull align 8 dereferenceable(1144) %i.o, i64 1144, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB27_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(1144) %1)
          to label %bb.as unwind label %bb.ar

bb.af:                                            ; preds = %bb.ad
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %i.h, ptr noundef nonnull align 8 dereferenceable(1144) %i.o, i64 1144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs7ZUl82OSlxp_6rustls4conn16ConnectionCommonNtNtNtBG_6client11client_conn20ClientConnectionDataEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %i.bd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10connection16ClientConnectionECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.ag, !noalias !977

bb.ag:                                            ; preds = %bb.af
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 1088
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common8TlsStateECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bf) #21
          to label %.body.i unwind label %bb.an, !noalias !977

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10connection16ClientConnectionECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.af
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 1088 ; 4 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !21, !alias.scope !978, !noalias !977, !noundef !12
  %i.bi = icmp sgt i64 %i.bh, -1
  br i1 %i.bi, label %bb.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common8TlsStateECsi17nFaBu4HY_10ech_client.exit.i

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10connection16ClientConnectionECsi17nFaBu4HY_10ech_client.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.ai, !noalias !977

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %.body.i unwind label %bb.aj, !noalias !977

bb.aj:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !noalias !977
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bg)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common8TlsStateECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.al, !noalias !977

.body.i:                                          ; preds = %bb.al, %bb.ai, %bb.ag
  %.pn.i = phi { ptr, i32 } [ %i.be, %bb.ag ], [ %i.bq, %bb.al ], [ %i.bj, %bb.ai ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 1120
  %.val3.i = load ptr, ptr %i.bl, align 8, !alias.scope !979, !noalias !977, !align !22, !noundef !12 ; 2 uses
  %i.bm = icmp eq ptr %.val3.i, null
  br i1 %i.bm, label %.body, label %bb.ak

bb.ak:                                            ; preds = %.body.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 1128
  %.val4.i = load ptr, ptr %i.bn, align 8, !alias.scope !979, !noalias !977
  %i.bo = getelementptr inbounds nuw i8, ptr %.val3.i, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !977, !nonnull !12, !noundef !12
  invoke void %i.bp(ptr noundef %.val4.i)
          to label %.body unwind label %bb.an, !noalias !977, !inline_history !0

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common8TlsStateECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsi17nFaBu4HY_10ech_client.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn10connection16ClientConnectionECsi17nFaBu4HY_10ech_client.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 1120
  %.val.i80 = load ptr, ptr %i.br, align 8, !alias.scope !979, !noalias !977, !align !22, !noundef !12 ; 2 uses
  %i.bs = icmp eq ptr %.val.i80, null
  br i1 %i.bs, label %_RNvXs6_NtCs6HdZZ4a9Zp9_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsi17nFaBu4HY_10ech_client.exit, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common8TlsStateECsi17nFaBu4HY_10ech_client.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 1128
  %.val2.i = load ptr, ptr %i.bt, align 8, !alias.scope !979, !noalias !977
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i80, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !977, !nonnull !12, !noundef !12
  invoke void %i.bv(ptr noundef %.val2.i)
          to label %_RNvXs6_NtCs6HdZZ4a9Zp9_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsi17nFaBu4HY_10ech_client.exit unwind label %bb.ap, !inline_history !980

bb.an:                                            ; preds = %bb.ak, %bb.ag
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22, !noalias !977
  unreachable

bb.ao:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.h

bb.ap:                                            ; preds = %bb.am
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.ak, %bb.ap
  %eh.lpad-body = phi { ptr, i32 } [ %i.bx, %bb.ap ], [ %.pn.i, %bb.ak ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.bc) #21
          to label %.thread119 unwind label %bb.z

_RNvXs6_NtCs6HdZZ4a9Zp9_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common8TlsStateECsi17nFaBu4HY_10ech_client.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 2, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %.sroa.441.0..sroa_idx, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %_RNvXs6_NtCs6HdZZ4a9Zp9_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB7_6common9handshake9IoSession7into_ioCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ac

bb.ar:                                            ; preds = %bb.ae
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.thread119.sink.split

bb.as:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %1, ptr noundef nonnull align 8 dereferenceable(1144) %i.g, i64 1144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 -1, ptr %0, align 8
  br label %bb.aq

bb.at:                                            ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13AcceptedAlertECsi17nFaBu4HY_10ech_client.exit, %bb.ac, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

.thread119.sink.split:                            ; preds = %bb.ar, %bb.aa
  %.sink = phi ptr [ %i.d, %bb.aa ], [ %i.g, %bb.ar ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.ay, %bb.aa ], [ %i.by, %bb.ar ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1144) %1, ptr noundef nonnull align 8 dereferenceable(1144) %.sink, i64 1144, i1 false)
  br label %.thread119

.thread119:                                       ; preds = %.thread119.sink.split, %bb.bk, %bb.x, %.body, %bb.bi, %bb.bp, %.thread137, %.loopexit.split-lp
  %.pn67.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.df, %bb.bi ], [ %.pn.pn110.ph, %bb.bp ], [ %.pn.pn110.ph, %.thread137 ], [ %i.dh, %bb.bk ], [ %i.aw, %bb.x ], [ %eh.lpad-body, %.body ], [ %.pn67.pn.ph, %.thread119.sink.split ]
  resume { ptr, i32 } %.pn67.pn

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit143 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.o, %bb.k
  %lpad.loopexit.split-lp144 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit143, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp144, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1s_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(1144) %i.o) #21
          to label %.thread119 unwind label %bb.z

bb.au:                                            ; preds = %bb.bc, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.n, ptr %i.l, align 8
  store ptr %2, ptr %i.q, align 8
  %i.bz = invoke { i64, ptr } @_RNvMs7_NtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @71)
          to label %bb.av unwind label %.thread112.thread129 ; 2 uses

.thread112.thread129:                             ; preds = %bb.au
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.thread102

.thread131:                                       ; preds = %bb.bg
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.av:                                            ; preds = %bb.au
  %i.cc = extractvalue { i64, ptr } %i.bz, 0
  %i.cd = extractvalue { i64, ptr } %i.bz, 1      ; 11 uses
  %i.ce = trunc nuw i64 %i.cc to i1               ; 2 uses
  br i1 %i.ce, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.cf = ptrtoint ptr %i.cd to i64               ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  %i.cg = and i64 %i.cf, 3                        ; 2 uses
  switch i64 %i.cg, label %default.unreachable [
    i64 2, label %bb.ax
    i64 3, label %bb.ay
    i64 0, label %bb.az
    i64 1, label %bb.ba
  ], !prof !18

default.unreachable:                              ; preds = %bb.bl, %bb.be, %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc82 unwind label %3

.noexc82:                                         ; preds = %bb.ax
  %i.ci = lshr i64 %i.cf, 32
  %i.cj = trunc nuw i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !12, !noundef !12
  %i.cm = invoke noundef i8 %i.cl(i32 noundef %i.cj)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit unwind label %3, !inline_history !5

bb.ay:                                            ; preds = %bb.aw
  %i.cn = lshr i64 %i.cf, 32
  %i.co = icmp ult ptr %i.cd, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.cn to i8  ; 2 uses
  %i.cp = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.co)
  call void @llvm.assume(i1 %i.cp)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.az:                                            ; preds = %bb.aw
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cr = load i8, ptr %i.cq, align 8, !range !31, !noundef !12
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.ba:                                            ; preds = %bb.aw
  %i.cs = getelementptr i8, ptr %i.cd, i64 31
  %i.ct = load i8, ptr %i.cs, align 8, !range !31, !noundef !12
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.bb:                                            ; preds = %bb.av
  %i.cu = icmp eq ptr %i.cd, null
  br i1 %i.cu, label %.loopexit146, label %bb.bc

.loopexit146:                                     ; preds = %bb.bb, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %i.cv = phi ptr [ %i.cd, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.bb ] ; 3 uses
  %i.cw = phi i64 [ %i.cf, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.107.0.copyload, ptr %.sroa.428.0..sroa_idx, align 8
  br i1 %i.ce, label %bb.be, label %bb.bh

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.au

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.ba, %bb.az, %bb.ay, %.noexc82
  %.sroa.0.0.i = phi i8 [ %i.ct, %bb.ba ], [ %switch.idx.cast.i.i.i, %bb.ay ], [ %i.cr, %bb.az ], [ %i.cm, %.noexc82 ]
  %i.cx = icmp eq i8 %.sroa.0.0.i, 13
  br i1 %i.cx, label %bb.bd, label %.loopexit146

bb.bd:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs6HdZZ4a9Zp9_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB27_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(1144) %1)
          to label %bb.bl unwind label %bb.bk

bb.be:                                            ; preds = %.loopexit146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.cy = and i64 %i.cw, 3
  switch i64 %i.cy, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit
    i64 3, label %bb.bf
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit
    i64 1, label %bb.bg
  ], !prof !18

bb.bf:                                            ; preds = %bb.be
  %i.cz = icmp ult ptr %i.cv, inttoptr (i64 188978561024 to ptr)
  %i.da = and i64 %i.cw, 1095216660480
  %i.db = icmp ne i64 %i.da, 1095216660480
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.assume(i1 %i.db)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit

bb.bg:                                            ; preds = %bb.be
  %i.dc = getelementptr i8, ptr %i.cv, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.dc, ptr %i.dd, align 8, !alias.scope !981
  store i8 3, ptr %i.b, align 8, !alias.scope !981
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit unwind label %.thread131

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.bg, %bb.be, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit, %.loopexit146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  invoke void @_RNvXs0_NtNtCs4wP2HXfJTCR_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de)
          to label %.thread119 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.bh
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VechEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.de)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13AcceptedAlertECsi17nFaBu4HY_10ech_client.exit

bb.bk:                                            ; preds = %bb.bd
  %i.dh = landingpad { ptr, i32 }
          cleanup
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.cd) #21
          to label %.thread119 unwind label %bb.z

bb.bl:                                            ; preds = %bb.bd
  store i64 3, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.518, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.620, i64 56, i1 false)
  store ptr %.sroa.107.0.copyload, ptr %.sroa.107.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i64 %i.cg, label %default.unreachable [
    i64 2, label %.critedge
    i64 3, label %bb.bm
    i64 0, label %.critedge
    i64 1, label %bb.bn
  ], !prof !18

bb.bm:                                            ; preds = %bb.bl
  %i.di = icmp ult ptr %i.cd, inttoptr (i64 188978561024 to ptr)
  %i.dj = and i64 %i.cf, 1095216660480
  %i.dk = icmp ne i64 %i.dj, 1095216660480
  call void @llvm.assume(i1 %i.di)
  call void @llvm.assume(i1 %i.dk)
  br label %.critedge

bb.bn:                                            ; preds = %bb.bl
  %i.dl = getelementptr i8, ptr %i.cd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !alias.scope !982
  store i8 3, ptr %i.a, align 8, !alias.scope !982
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm)
  br label %.critedge

.critedge:                                        ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13AcceptedAlertECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13AcceptedAlertECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls6vecbuf14ChunkVecBufferECsi17nFaBu4HY_10ech_client.exit.i, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.at

.thread137:                                       ; preds = %bb.bo
  br i1 %.sroa.059.0108.ph, label %bb.bp, label %.thread119

3:                                                ; preds = %.noexc82, %bb.ax
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.cd) #21
          to label %.thread102 unwind label %bb.z

.thread102:                                       ; preds = %3, %.thread112.thread129
  %.pn.pn111 = phi { ptr, i32 } [ %i.ca, %.thread112.thread129 ], [ %lpad.thr_comm, %3 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %.sroa.107.0.copyload) #21
          to label %bb.bo unwind label %bb.z

bb.bo:                                            ; preds = %.thread102, %.thread131
  %.pn.pn110.ph = phi { ptr, i32 } [ %i.cb, %.thread131 ], [ %.pn.pn111, %.thread102 ] ; 2 uses
  %.sroa.059.0108.ph = phi i1 [ false, %.thread131 ], [ true, %.thread102 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs7ZUl82OSlxp_6rustls6server11server_conn10connection13AcceptedAlertECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m) #21
          to label %.thread137 unwind label %bb.z

bb.bp:                                            ; preds = %.thread137
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBE_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #21
          to label %.thread119 unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXNtNtNtCskruEhpekJ3V_5tokio2io4util9write_allINtB2_8WriteAllINtNtCs6HdZZ4a9Zp9_12tokio_rustls6client9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtNtB8_3net3tcp6stream9TcpStreamEEEENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollCsi17nFaBu4HY_10ech_client(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre = load i64, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsi17nFaBu4HY_10ech_client.exit, %bb.a
  %i.c = phi i64 [ %i.n, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsi17nFaBu4HY_10ech_client.exit ], [ %.pre, %bb.a ] ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.f = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12
  %i.g = tail call { i64, ptr } @_RNvXsa_NtCs6HdZZ4a9Zp9_12tokio_rustls6clientINtB5_9TlsStreamINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtBZ_17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEEENtNtNtB2B_2io11async_write10AsyncWrite10poll_writeCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(1144) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.c) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 4 uses
  switch i64 %i.h, label %bb.d [
    i64 2, label %.loopexit
    i64 0, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12
  %i.l = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !captures !986
  store i64 0, ptr %i.b, align 8
  %.not.i = icmp ult i64 %i.l, %i.j
  br i1 %.not.i, label %bb.f, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsi17nFaBu4HY_10ech_client.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @20, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #25, !noalias !987
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = sub nuw nsw i64 %i.l, %i.j               ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !captures !986
  store i64 %i.n, ptr %i.b, align 8
  %i.o = icmp eq ptr %i.i, null
  br i1 %i.o, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsi17nFaBu4HY_10ech_client.exit, %bb.b, %bb.d
  %.sroa.5.1 = phi ptr [ %i.i, %bb.d ], [ undef, %bb.c ], [ inttoptr (i64 98784247811 to ptr), %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsi17nFaBu4HY_10ech_client.exit ], [ null, %bb.b ]
  %.sroa.0.1 = phi i64 [ 0, %bb.d ], [ 1, %bb.c ], [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh8split_atCsi17nFaBu4HY_10ech_client.exit ], [ 0, %bb.b ]
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.5.1, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCshVVPy9isBpn_6webpki11verify_cert26RequiredEkuNotFoundContextNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXs5_NtCshVVPy9isBpn_6webpki11verify_certNtB5_26RequiredEkuNotFoundContextNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCshVVPy9isBpn_6webpki5error18InvalidNameContextNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !991
  store ptr %i.b, ptr %i.a, align 8, !noalias !991
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 8, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !991
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCshVVPy9isBpn_6webpki5error36UnsupportedSignatureAlgorithmContextNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !995
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !995
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 36, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 22, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 20, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !995
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCshVVPy9isBpn_6webpki5error48UnsupportedSignatureAlgorithmForPublicKeyContextNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !999
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !999
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 48, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 22, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !999
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtCshVVPy9isBpn_6webpki5error9DerTypeIdNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.val = load i8, ptr %i.a, align 1, !range !1002, !noundef !12
  %i.b = zext nneg i8 %.val to i64
  %i.c = load ptr, ptr @_RNvNvXsp_NtCshVVPy9isBpn_6webpki5errorNtB7_9DerTypeIdNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES, align 8, !noalias !1003, !nonnull !12, !noundef !12
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsp_NtCshVVPy9isBpn_6webpki5errorNtB7_9DerTypeIdNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noalias !1003, !noundef !12
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsp_NtCshVVPy9isBpn_6webpki5errorNtB7_9DerTypeIdNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 27, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs4okMlIQ9Z13_2h25frame6reason6ReasonNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !36, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtNtCs4okMlIQ9Z13_2h25frame6reasonNtB5_6ReasonNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs4okMlIQ9Z13_2h25frame7headers11PushPromiseNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs4okMlIQ9Z13_2h25frame7headersNtB5_11PushPromiseNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs4okMlIQ9Z13_2h25frame7headers7HeadersNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs4okMlIQ9Z13_2h25frame7headersNtB5_7HeadersNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtCs4okMlIQ9Z13_2h25proto10connection5StateNtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !12, !align !36, !noundef !12 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.d = load i8, ptr %i.c, align 4, !range !16, !alias.scope !1007, !noalias !1008, !noundef !12
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 4), !noalias !1007
  br label %_RNvXs8_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_5StateNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1009
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.g, ptr %i.b, align 8, !noalias !1009
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1009
  br label %_RNvXs8_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_5StateNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1009
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.j, ptr %i.a, align 8, !noalias !1009
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 6, ptr noundef nonnull readonly %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1009
  br label %_RNvXs8_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_5StateNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit

_RNvXs8_NtNtCs4okMlIQ9Z13_2h25proto10connectionNtB5_5StateNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRNtNtNtNtCsjXdHNeFfodD_13hickory_proto2rr5rdata5hinfo5HINFONtB6_5Debug3fmtCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !12, !align !22, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1013
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8, !noalias !1013
end_hunk_1
