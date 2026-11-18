Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !80 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !82, !noundef !80 ; 6 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit, !prof !92

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.051.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit
  %.sroa.051.0 = phi i64 [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit
  %.pre.pre = phi i64 [ %.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ %i.g, %bb.b ]
  %.pr.pre.pre = phi i64 [ %.pr.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ %i.e, %bb.b ]
  %.sroa.051.2 = phi i64 [ %.sroa.051.0, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge ], [ %.sroa.051.0, %bb.c ], [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %thread-pre-split.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #45 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread, label %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge

._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge: ; preds = %bb.f
  %.pr.pre.pre.pre = load i64, ptr %i.d, align 8
  %.pre.pre.pre = load i64, ptr %0, align 8, !range !82
  br label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

thread-pre-split:                                 ; preds = %thread-pre-split.outer, %bb.z
  %.pre187 = phi i64 [ %.pre184206, %bb.z ], [ %.pre, %thread-pre-split.outer ]
  %i.ad = phi i64 [ %i.bf, %bb.z ], [ %.pre, %thread-pre-split.outer ] ; 3 uses
  %.pr = phi i64 [ %i.dm, %bb.z ], [ %.pr.pre, %thread-pre-split.outer ] ; 2 uses
  %.sroa.025.2.ph = phi i64 [ %i.be, %bb.z ], [ %.sroa.025.2.ph.ph, %thread-pre-split.outer ]
  %i.ae = sub i64 %i.ad, %.pr
  %i.af = icmp ult i64 %i.ae, 32                  ; 2 uses
  %i.ag = icmp eq i64 %i.ad, %i.g
  %or.cond116 = and i1 %i.ag, %i.af
  br i1 %or.cond116, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %thread-pre-split
  %.pre186 = phi i64 [ %.pre187, %thread-pre-split ], [ %i.ea, %bb.af ] ; 2 uses
  %i.ah = phi i64 [ %i.ad, %thread-pre-split ], [ %i.ea, %bb.af ] ; 6 uses
  %.lcssa59 = phi i64 [ %.pr, %thread-pre-split ], [ %i.dx, %bb.af ] ; 14 uses
  %.sroa.025.2.lcssa = phi i64 [ %.sroa.025.2.ph, %thread-pre-split ], [ %i.dx, %bb.af ] ; 4 uses
  %.lcssa = phi i1 [ %i.af, %thread-pre-split ], [ %i.ec, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %thread-pre-split, %bb.af
  %i.ai = call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #45 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %._crit_edge
  %i.am = icmp sgt i64 %.lcssa59, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw i64 %.lcssa59, 32
  %i.ao = icmp ugt i64 %.sroa.025.2.lcssa, %i.an
  br i1 %i.ao, label %bb.k, label %._crit_edge192

._crit_edge192:                                   ; preds = %bb.g
  %.pre193 = sub nsw i64 %i.ah, %.lcssa59
  br label %.thread200

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !13563)
  call void @llvm.experimental.noalias.scope.decl(metadata !13564)
  %i.ap = icmp ugt i64 %.lcssa59, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa59, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13565
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !13565
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #45, !noalias !13565
  %i.at = load i64, ptr %i.c, align 8, !range !87, !noalias !13565, !noundef !80
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13565
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !13565, !nonnull !80, !noundef !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13565
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !13565
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !13565
  %.pre.i = sub nsw i64 %i.as, %.lcssa59          ; 2 uses
  %i.ax = icmp samesign ugt i64 %.pre.i, 31
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp sgt i64 %.lcssa59, -1
  call void @llvm.assume(i1 %i.ay)
  br label %.thread200

.thread200:                                       ; preds = %.thread, %._crit_edge192
  %.pre-phi194 = phi i64 [ %.pre193, %._crit_edge192 ], [ %.pre.i, %.thread ]
  %.pre185 = phi i64 [ %.pre186, %._crit_edge192 ], [ %i.as, %.thread ]
  %i.az = phi i64 [ %i.ah, %._crit_edge192 ], [ %i.as, %.thread ]
  %.sroa.025.316 = phi i64 [ %.sroa.025.2.lcssa, %._crit_edge192 ], [ %.lcssa59, %.thread ]
  %i.ba = call i64 @llvm.umin.i64(i64 %.sroa.051.3.ph.ph.ph, i64 %.pre-phi194) ; 2 uses
  %i.bb = add i64 %i.ba, %.lcssa59                ; 2 uses
  %i.bc = icmp ult i64 %.sroa.025.316, %i.bb
  br label %.peel.begin

bb.k:                                             ; preds = %bb.g
  %i.bd = sub nuw i64 %.sroa.025.2.lcssa, %.lcssa59 ; 3 uses
  %.pre191 = sub nsw i64 %i.ah, %.lcssa59         ; 2 uses
  %.not56 = icmp ugt i64 %i.bd, %.pre191
  br i1 %.not56, label %bb.p, label %.peel.begin, !prof !166

.peel.begin:                                      ; preds = %.thread200, %bb.k
  %i.be = phi i64 [ %i.bb, %.thread200 ], [ %.sroa.025.2.lcssa, %bb.k ] ; 3 uses
  %.sroa.032.0208 = phi i64 [ %i.ba, %.thread200 ], [ %i.bd, %bb.k ] ; 6 uses
  %.sroa.025.315207 = phi i1 [ %i.bc, %.thread200 ], [ false, %bb.k ]
  %i.bf = phi i64 [ %i.az, %.thread200 ], [ %i.ah, %bb.k ]
  %.pre184206 = phi i64 [ %.pre185, %.thread200 ], [ %.pre186, %bb.k ] ; 3 uses
  %.pn = load ptr, ptr %i.r, align 8, !nonnull !80, !noundef !80
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn, i64 %.lcssa59 ; 3 uses
  br i1 %.sroa.025.315207, label %bb.l, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel

bb.l:                                             ; preds = %.peel.begin
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0208) #45, !noalias !13566 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13567
  store ptr %i.bg, ptr %i.b, align 8, !noalias !13567
  store i64 %.sroa.032.0208, ptr %i.t, align 8, !noalias !13567
  store i64 0, ptr %i.u, align 8, !noalias !13567
  store i64 %.sroa.032.0208, ptr %i.v, align 8, !noalias !13567
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %.val.i.i.i.i.peel = load ptr, ptr %.0.val, align 8, !noalias !13568, !nonnull !80, !noundef !80
  %i.bi = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i.i.peel, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !13569 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1      ; 6 uses
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %.thread29.peel, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel
  %.not.i.i.i.i.peel = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13567
  %i.bm = ptrtoint ptr %i.bk to i64               ; 6 uses
  %i.bn = and i64 %i.bm, 3
  switch i64 %i.bn, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
    i64 0, label %.split38.peel
    i64 1, label %.split35.peel
  ], !prof !167

.split35.peel:                                    ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel
  %i.bo = getelementptr i8, ptr %i.bk, i64 31
  %i.bp = load i8, ptr %i.bo, align 8, !range !168, !noundef !80
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.n, label %.thread44

bb.n:                                             ; preds = %.split35.peel
  %i.br = getelementptr i8, ptr %i.bk, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13570
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !13571, !noalias !13570
  store i8 3, ptr %i.a, align 8, !alias.scope !13571, !noalias !13570
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #45, !noalias !13570
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader: ; preds = %bb.o, %.thread41.peel, %bb.n
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i

.split38.peel:                                    ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !168, !noundef !80
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %.thread41.peel, label %.thread44

.split.peel:                                      ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel
  %i.bv = lshr i64 %i.bm, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !80, !noundef !80
  %i.ca = call noundef zeroext i1 %i.bz(i32 noundef %i.bw) #45, !inline_history !47
  br i1 %i.ca, label %.thread41.peel, label %.thread44

.thread41.peel:                                   ; preds = %.split.peel, %.split38.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13572
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader

.thread29.peel:                                   ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13567
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %.thread29.peel, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel
  %i.cb = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread29.peel ], [ %i.bk, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel ]
  %i.cc = phi i64 [ 55834574851, %.thread29.peel ], [ %i.bm, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel ] ; 3 uses
  %i.cd = lshr i64 %i.cc, 32
  %i.ce = icmp ult ptr %i.cb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.cd to i8
  %spec.select.i.i.i.peel = select i1 %i.ce, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.cf = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.cg, label %bb.o, label %.thread44

bb.o:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13573
  %i.ch = and i64 %i.cc, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.ci)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader

bb.p:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #55
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13570
  %.val.i.i.i.i.pre = load ptr, ptr %.0.val, align 8, !noalias !13568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13567
  store ptr %i.bg, ptr %i.b, align 8, !noalias !13567
  store i64 %.sroa.032.0208, ptr %i.t, align 8, !noalias !13567
  store i64 0, ptr %i.u, align 8, !noalias !13567
  store i64 %.sroa.032.0208, ptr %i.v, align 8, !noalias !13567
  %i.cj = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i.i.pre, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !13569 ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1      ; 6 uses
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %.thread29, label %bb.q

.thread29:                                        ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13567
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.q:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit

.loopexit:                                        ; preds = %bb.q, %bb.m
  %i.cn = load i64, ptr %i.t, align 8, !noalias !13567, !noundef !80 ; 2 uses
  %i.co = load i64, ptr %i.u, align 8, !noalias !13567, !noundef !80 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.co, %i.cn
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.s, !prof !98

bb.r:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.co, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !13569
  unreachable

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13567
  %.not.i.i.i = icmp ugt i64 %i.co, %.sroa.032.0208
  br i1 %.not.i.i.i, label %bb.t, label %bb.w, !prof !92

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1224, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1226) #55, !noalias !13574
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13567
  %i.cp = ptrtoint ptr %i.cl to i64               ; 6 uses
  %i.cq = and i64 %i.cp, 3
  switch i64 %i.cq, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.unreachabledefault [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split38
    i64 1, label %.split35
  ], !prof !167

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.unreachabledefault: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel.unreachabledefault: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit.peel
  unreachable

.split:                                           ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit
  %i.cr = lshr i64 %i.cp, 32
  %i.cs = trunc nuw i64 %i.cr to i32
  %i.ct = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !80, !noundef !80
  %i.cw = call noundef zeroext i1 %i.cv(i32 noundef %i.cs) #45, !inline_history !47
  br i1 %i.cw, label %.thread41, label %.thread44

.split38:                                         ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !range !168, !noundef !80
  %i.cz = icmp eq i8 %i.cy, 35
  br i1 %i.cz, label %.thread41, label %.thread44

.split35:                                         ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit
  %i.da = getelementptr i8, ptr %i.cl, i64 31
  %i.db = load i8, ptr %i.da, align 8, !range !168, !noundef !80
  %i.dc = icmp eq i8 %i.db, 35
  br i1 %i.dc, label %bb.v, label %.thread44

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit, %.thread29
  %i.dd = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread29 ], [ %i.cl, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit ]
  %i.de = phi i64 [ 55834574851, %.thread29 ], [ %i.cp, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager.exit ] ; 3 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = icmp ult ptr %i.dd, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.df to i8
  %spec.select.i.i.i = select i1 %i.dg, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.dh = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.di, label %bb.u, label %.thread44

.thread41:                                        ; preds = %.split, %.split38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13572
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge: ; preds = %.thread41, %bb.u, %bb.v
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i, !llvm.loop !13562

bb.u:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13573
  %i.dj = and i64 %i.de, 1095216660480
  %i.dk = icmp ne i64 %i.dj, 1095216660480
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 %i.dk)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge

bb.v:                                             ; preds = %.split35
  %i.dl = getelementptr i8, ptr %i.cl, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13570
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  store ptr %i.dl, ptr %i.w, align 8, !alias.scope !13571, !noalias !13570
  store i8 3, ptr %i.a, align 8, !alias.scope !13571, !noalias !13570
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #45, !noalias !13570
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge

.thread44:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split.peel, %.split38.peel, %.split35.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split35, %.split38
  %.ph = phi i64 [ %i.cp, %.split38 ], [ %i.cp, %.split35 ], [ %i.cp, %.split ], [ %i.de, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bm, %.split35.peel ], [ %i.bm, %.split38.peel ], [ %i.bm, %.split.peel ], [ %i.cc, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ]
  store i64 %.lcssa59, ptr %i.d, align 8
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.dm = add i64 %i.co, %.lcssa59                ; 5 uses
  store i64 %i.dm, ptr %i.d, align 8
  %i.dn = icmp eq i64 %i.co, 0
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.do = sub nsw i64 %i.dm, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.y:                                             ; preds = %bb.w
  br i1 %i.h, label %thread-pre-split.outer, label %bb.z

thread-pre-split.outer:                           ; preds = %bb.y, %thread-pre-split.outer.outer
  %.pre = phi i64 [ %.pre.ph, %thread-pre-split.outer.outer ], [ %.pre184206, %bb.y ] ; 2 uses
  %.pr.pre = phi i64 [ %.pr.pre.ph, %thread-pre-split.outer.outer ], [ %i.dm, %bb.y ]
  %.sroa.025.2.ph.ph = phi i64 [ %.sroa.025.2.ph.ph.ph, %thread-pre-split.outer.outer ], [ %i.be, %bb.y ]
  br label %thread-pre-split

bb.z:                                             ; preds = %bb.y
  %i.dp = icmp eq i64 %i.co, %.sroa.051.3.ph.ph.ph
  br i1 %i.dp, label %bb.aa, label %thread-pre-split

end_hunk_0
begin_hunk_1_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !80 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !82, !noundef !80 ; 6 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit, !prof !92

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.051.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit
  %.sroa.051.0 = phi i64 [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit
  %.pre.pre = phi i64 [ %.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ %i.g, %bb.b ]
  %.pr.pre.pre = phi i64 [ %.pr.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ %i.e, %bb.b ]
  %.sroa.051.2 = phi i64 [ %.sroa.051.0, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge ], [ %.sroa.051.0, %bb.c ], [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %thread-pre-split.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #45 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread, label %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge

._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread_crit_edge: ; preds = %bb.f
  %.pr.pre.pre.pre = load i64, ptr %i.d, align 8
  %.pre.pre.pre = load i64, ptr %0, align 8, !range !82
  br label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread

thread-pre-split:                                 ; preds = %thread-pre-split.outer, %bb.ab
  %.pre173 = phi i64 [ %.pre170192, %bb.ab ], [ %.pre, %thread-pre-split.outer ]
  %i.ad = phi i64 [ %i.bf, %bb.ab ], [ %.pre, %thread-pre-split.outer ] ; 3 uses
  %.pr = phi i64 [ %i.di, %bb.ab ], [ %.pr.pre, %thread-pre-split.outer ] ; 2 uses
  %.sroa.025.2.ph = phi i64 [ %i.be, %bb.ab ], [ %.sroa.025.2.ph.ph, %thread-pre-split.outer ]
  %i.ae = sub i64 %i.ad, %.pr
  %i.af = icmp ult i64 %i.ae, 32                  ; 2 uses
  %i.ag = icmp eq i64 %i.ad, %i.g
  %or.cond105 = and i1 %i.ag, %i.af
  br i1 %or.cond105, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ah, %thread-pre-split
  %.pre172 = phi i64 [ %.pre173, %thread-pre-split ], [ %i.dw, %bb.ah ] ; 2 uses
  %i.ah = phi i64 [ %i.ad, %thread-pre-split ], [ %i.dw, %bb.ah ] ; 6 uses
  %.lcssa46 = phi i64 [ %.pr, %thread-pre-split ], [ %i.dt, %bb.ah ] ; 14 uses
  %.sroa.025.2.lcssa = phi i64 [ %.sroa.025.2.ph, %thread-pre-split ], [ %i.dt, %bb.ah ] ; 4 uses
  %.lcssa = phi i1 [ %i.af, %thread-pre-split ], [ %i.dy, %bb.ah ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %thread-pre-split, %bb.ah
  %i.ai = call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #45 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.ae, label %bb.af

bb.g:                                             ; preds = %._crit_edge
  %i.am = icmp sgt i64 %.lcssa46, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw i64 %.lcssa46, 32
  %i.ao = icmp ugt i64 %.sroa.025.2.lcssa, %i.an
  br i1 %i.ao, label %bb.k, label %._crit_edge178

._crit_edge178:                                   ; preds = %bb.g
  %.pre179 = sub nsw i64 %i.ah, %.lcssa46
  br label %.thread186

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !13605)
  call void @llvm.experimental.noalias.scope.decl(metadata !13606)
  %i.ap = icmp ugt i64 %.lcssa46, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa46, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13607
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !13607
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #45, !noalias !13607
  %i.at = load i64, ptr %i.c, align 8, !range !87, !noalias !13607, !noundef !80
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13607
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !13607, !nonnull !80, !noundef !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13607
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !13607
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !13607
  %.pre.i = sub nsw i64 %i.as, %.lcssa46          ; 2 uses
  %i.ax = icmp samesign ugt i64 %.pre.i, 31
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp sgt i64 %.lcssa46, -1
  call void @llvm.assume(i1 %i.ay)
  br label %.thread186

.thread186:                                       ; preds = %.thread, %._crit_edge178
  %.pre-phi180 = phi i64 [ %.pre179, %._crit_edge178 ], [ %.pre.i, %.thread ]
  %.pre171 = phi i64 [ %.pre172, %._crit_edge178 ], [ %i.as, %.thread ]
  %i.az = phi i64 [ %i.ah, %._crit_edge178 ], [ %i.as, %.thread ]
  %.sroa.025.316 = phi i64 [ %.sroa.025.2.lcssa, %._crit_edge178 ], [ %.lcssa46, %.thread ]
  %i.ba = call i64 @llvm.umin.i64(i64 %.sroa.051.3.ph.ph.ph, i64 %.pre-phi180) ; 2 uses
  %i.bb = add i64 %i.ba, %.lcssa46                ; 2 uses
  %i.bc = icmp ult i64 %.sroa.025.316, %i.bb
  br label %.peel.begin

bb.k:                                             ; preds = %bb.g
  %i.bd = sub nuw i64 %.sroa.025.2.lcssa, %.lcssa46 ; 3 uses
  %.pre177 = sub nsw i64 %i.ah, %.lcssa46         ; 2 uses
  %.not56 = icmp ugt i64 %i.bd, %.pre177
  br i1 %.not56, label %bb.q, label %.peel.begin, !prof !166

.peel.begin:                                      ; preds = %.thread186, %bb.k
  %i.be = phi i64 [ %i.bb, %.thread186 ], [ %.sroa.025.2.lcssa, %bb.k ] ; 3 uses
  %.sroa.032.0194 = phi i64 [ %i.ba, %.thread186 ], [ %i.bd, %bb.k ] ; 6 uses
  %.sroa.025.315193 = phi i1 [ %i.bc, %.thread186 ], [ false, %bb.k ]
  %i.bf = phi i64 [ %i.az, %.thread186 ], [ %i.ah, %bb.k ]
  %.pre170192 = phi i64 [ %.pre171, %.thread186 ], [ %.pre172, %bb.k ] ; 3 uses
  %.pn = load ptr, ptr %i.r, align 8, !nonnull !80, !noundef !80
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn, i64 %.lcssa46 ; 3 uses
  br i1 %.sroa.025.315193, label %bb.l, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel

bb.l:                                             ; preds = %.peel.begin
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0194) #45, !noalias !13608 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13609
  store ptr %i.bg, ptr %i.b, align 8, !noalias !13609
  store i64 %.sroa.032.0194, ptr %i.t, align 8, !noalias !13609
  store i64 0, ptr %i.u, align 8, !noalias !13609
  store i64 %.sroa.032.0194, ptr %i.v, align 8, !noalias !13609
  %i.bi = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !13610 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel
  %i.bl = extractvalue { i64, ptr } %i.bi, 1      ; 2 uses
  %.not.i.i.i.i.i.i.peel = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.peel, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel, %bb.m
  %.sroa.0.0.i.i.ph.peel = phi ptr [ %i.bl, %bb.m ], [ inttoptr (i64 55834574851 to ptr), %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.peel ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13609
  %i.bm = ptrtoint ptr %.sroa.0.0.i.i.ph.peel to i64 ; 8 uses
  %i.bn = and i64 %i.bm, 3
  switch i64 %i.bn, label %.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
    i64 0, label %.split29.peel
    i64 1, label %.split28.peel
  ], !prof !111

.split28.peel:                                    ; preds = %bb.n
  %i.bo = getelementptr i8, ptr %.sroa.0.0.i.i.ph.peel, i64 31
  %i.bp = load i8, ptr %i.bo, align 8, !range !168, !noundef !80
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.o, label %.thread33

bb.o:                                             ; preds = %.split28.peel
  %i.br = getelementptr i8, ptr %.sroa.0.0.i.i.ph.peel, i64 -1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13611
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !13612, !noalias !13611
  store i8 3, ptr %i.a, align 8, !alias.scope !13612, !noalias !13611
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #45, !noalias !13611
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader: ; preds = %.thread30.peel, %bb.p, %bb.o
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i

.split29.peel:                                    ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.ph.peel, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !168, !noundef !80
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %.thread30.peel, label %.thread33

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %bb.n
  %i.bv = lshr i64 %i.bm, 32
  %i.bw = icmp ult ptr %.sroa.0.0.i.i.ph.peel, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.bv to i8
  %spec.select.i.i.i.peel = select i1 %i.bw, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.bx = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.by, label %bb.p, label %.thread33

bb.p:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13613
  %i.bz = and i64 %i.bm, 1095216660480
  %i.ca = icmp ne i64 %i.bz, 1095216660480
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.assume(i1 %i.ca)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader

.split.peel:                                      ; preds = %bb.n
  %i.cb = lshr i64 %i.bm, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !80, !noundef !80
  %i.cg = call noundef zeroext i1 %i.cf(i32 noundef %i.cc) #45, !inline_history !47
  br i1 %i.cg, label %.thread30.peel, label %.thread33

.thread30.peel:                                   ; preds = %.split.peel, %.split29.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13614
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader

bb.q:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @353) #55
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13609
  store ptr %i.bg, ptr %i.b, align 8, !noalias !13609
  store i64 %.sroa.032.0194, ptr %i.t, align 8, !noalias !13609
  store i64 0, ptr %i.u, align 8, !noalias !13609
  store i64 %.sroa.032.0194, ptr %i.v, align 8, !noalias !13609
  %i.ch = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !13610 ; 2 uses
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = trunc nuw i64 %i.ci to i1
  br i1 %i.cj, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.ck = extractvalue { i64, ptr } %i.ch, 1      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.r, %bb.m
  %i.cl = load i64, ptr %i.t, align 8, !noalias !13609, !noundef !80 ; 2 uses
  %i.cm = load i64, ptr %i.u, align 8, !noalias !13609, !noundef !80 ; 6 uses
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.cm, %i.cl
  br i1 %.not7.i.i.i.i.i.i, label %bb.s, label %bb.t, !prof !98

bb.s:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cm, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !13610
  unreachable

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13609
  %.not.i6.i.i.i.i.i = icmp ugt i64 %i.cm, %.sroa.032.0194
  br i1 %.not.i6.i.i.i.i.i, label %bb.u, label %bb.y, !prof !92

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1080, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1684) #55, !noalias !13615
  unreachable

bb.v:                                             ; preds = %bb.r, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %.sroa.0.0.i.i.ph = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ %i.ck, %bb.r ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13609
  %i.cn = ptrtoint ptr %.sroa.0.0.i.i.ph to i64   ; 8 uses
  %i.co = and i64 %i.cn, 3
  switch i64 %i.co, label %.unreachabledefault312 [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split29
    i64 1, label %.split28
  ], !prof !111

.unreachabledefault312:                           ; preds = %bb.v
  unreachable

.unreachabledefault:                              ; preds = %bb.n
  unreachable

.split:                                           ; preds = %bb.v
  %i.cp = lshr i64 %i.cn, 32
  %i.cq = trunc nuw i64 %i.cp to i32
  %i.cr = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !80, !noundef !80
  %i.cu = call noundef zeroext i1 %i.ct(i32 noundef %i.cq) #45, !inline_history !47
  br i1 %i.cu, label %.thread30, label %.thread33

.split29:                                         ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.ph, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !168, !noundef !80
  %i.cx = icmp eq i8 %i.cw, 35
  br i1 %i.cx, label %.thread30, label %.thread33

.split28:                                         ; preds = %bb.v
  %i.cy = getelementptr i8, ptr %.sroa.0.0.i.i.ph, i64 31
  %i.cz = load i8, ptr %i.cy, align 8, !range !168, !noundef !80
  %i.da = icmp eq i8 %i.cz, 35
  br i1 %i.da, label %bb.x, label %.thread33

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.v
  %i.db = lshr i64 %i.cn, 32
  %i.dc = icmp ult ptr %.sroa.0.0.i.i.ph, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.db to i8
  %spec.select.i.i.i = select i1 %i.dc, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.dd = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.dd)
  %i.de = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.de, label %bb.w, label %.thread33

.thread30:                                        ; preds = %.split29, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13614
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge: ; preds = %.thread30, %bb.w, %bb.x
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i, !llvm.loop !13604

bb.w:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13613
  %i.df = and i64 %i.cn, 1095216660480
  %i.dg = icmp ne i64 %i.df, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.dg)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge

bb.x:                                             ; preds = %.split28
  %i.dh = getelementptr i8, ptr %.sroa.0.0.i.i.ph, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13611
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  store ptr %i.dh, ptr %i.w, align 8, !alias.scope !13612, !noalias !13611
  store i8 3, ptr %i.a, align 8, !alias.scope !13612, !noalias !13611
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #45, !noalias !13611
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i.i.backedge

.thread33:                                        ; preds = %.split.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split29.peel, %.split28.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split28, %.split29
  %.lcssa116 = phi i64 [ %i.cn, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.cn, %.split29 ], [ %i.cn, %.split28 ], [ %i.cn, %.split ], [ %i.bm, %.split28.peel ], [ %i.bm, %.split29.peel ], [ %i.bm, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ], [ %i.bm, %.split.peel ]
  store i64 %.lcssa46, ptr %i.d, align 8
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.y:                                             ; preds = %bb.t
  %i.di = add i64 %i.cm, %.lcssa46                ; 5 uses
  store i64 %i.di, ptr %i.d, align 8
  %i.dj = icmp eq i64 %i.cm, 0
  br i1 %i.dj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dk = sub nsw i64 %i.di, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.aa:                                            ; preds = %bb.y
  br i1 %i.h, label %thread-pre-split.outer, label %bb.ab

thread-pre-split.outer:                           ; preds = %bb.aa, %thread-pre-split.outer.outer
  %.pre = phi i64 [ %.pre.ph, %thread-pre-split.outer.outer ], [ %.pre170192, %bb.aa ] ; 2 uses
  %.pr.pre = phi i64 [ %.pr.pre.ph, %thread-pre-split.outer.outer ], [ %i.di, %bb.aa ]
  %.sroa.025.2.ph.ph = phi i64 [ %.sroa.025.2.ph.ph.ph, %thread-pre-split.outer.outer ], [ %i.be, %bb.aa ]
  br label %thread-pre-split

bb.ab:                                            ; preds = %bb.aa
  %i.dl = icmp eq i64 %i.cm, %.sroa.051.3.ph.ph.ph
  br i1 %i.dl, label %bb.ac, label %thread-pre-split

bb.ac:                                            ; preds = %bb.ab
  %i.dm = shl nuw i64 %.sroa.051.3.ph.ph.ph, 1
  %i.dn = icmp slt i64 %.sroa.051.3.ph.ph.ph, 0
  br i1 %i.dn, label %bb.ad, label %thread-pre-split.outer.outer.backedge, !prof !92

thread-pre-split.outer.outer.backedge:            ; preds = %bb.ac, %bb.ad
  %.sroa.051.3.ph.ph.ph.be = phi i64 [ -1, %bb.ad ], [ %i.dm, %bb.ac ]
  br label %thread-pre-split.outer.outer

thread-pre-split.outer.outer:                     ; preds = %thread-pre-split.outer.outer.backedge, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread
  %.pre.ph = phi i64 [ %.pre.pre, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread ], [ %.pre170192, %thread-pre-split.outer.outer.backedge ]
  %.pr.pre.ph = phi i64 [ %.pr.pre.pre, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0Csa7TLgTh0CeG_9ssmanager.exit.thread ], [ %i.di, %thread-pre-split.outer.outer.backedge ]
end_hunk_1
begin_hunk_2_@_RNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB7_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0Csa7TLgTh0CeG_9ssmanager:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEECsa7TLgTh0CeG_9ssmanager.exit74.i.i.i.i.i: ; preds = %bb.jv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCslXgxf2tUV4p_15futures_channel4mpsc12BoundedInnerNtNtCsi1FNhPBS7PW_11hickory_net4xfer17OneshotDnsRequestEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i71.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCs8AjStw0eGtC_16hickory_resolver11name_server14ConnectionMetaEECsa7TLgTh0CeG_9ssmanager.exit68.i.i.i.i.i
  %i.amo = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1187
  store i8 0, ptr %i.amo, align 1, !noalias !24273
  %i.amp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24481)
  call void @llvm.experimental.noalias.scope.decl(metadata !24482)
  %i.amq = load ptr, ptr %i.amp, align 8, !alias.scope !24483, !noalias !24273, !nonnull !80, !noundef !80
  %i.amr = atomicrmw add ptr %i.amq, i64 -1 release, align 8, !noalias !24484
  %i.ams = icmp eq i64 %i.amr, 1
  br i1 %i.ams, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i, label %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i

_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsi1FNhPBS7PW_11hickory_net4xfer12dns_exchange11DnsExchangeNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEECsa7TLgTh0CeG_9ssmanager.exit74.i.i.i.i.i
  store i8 1, ptr %i.lv, align 1, !noalias !24273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6252.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !24271
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9104.i.i.i.i.i)
  br label %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit

bb.jw:                                            ; preds = %bb.ja
  %i.amt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1288
  %i.amu = load i8, ptr %i.amt, align 8, !range !114, !noalias !24273, !noundef !80
  %cond.i76.i.i.i.i.i = icmp eq i8 %i.amu, 3
  br i1 %cond.i76.i.i.i.i.i, label %bb.jx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs1_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsa7TLgTh0CeG_9ssmanager.exit80.i.i.i.i.i

bb.jx:                                            ; preds = %bb.jw
  %i.amv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1272
  %.val.i77.i.i.i.i.i = load ptr, ptr %i.amv, align 8, !noalias !24273, !align !86, !noundef !80 ; 2 uses
  %.not.i.i.i78.i.i.i.i.i = icmp eq ptr %.val.i77.i.i.i.i.i, null
  br i1 %.not.i.i.i78.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs1_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsa7TLgTh0CeG_9ssmanager.exit80.i.i.i.i.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.amw = getelementptr i8, ptr %.sroa.01.0.i.i.i.i, i64 1280
  %.val1.i79.i.i.i.i.i = load i64, ptr %i.amw, align 8, !noalias !24273
  call fastcc void @_RNvMs3_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexINtB5_5MutexNtNtCs8AjStw0eGtC_16hickory_resolver16name_server_pool24NameServerTransportStateE12remove_wakerCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %.val.i77.i.i.i.i.i, i64 noundef %.val1.i79.i.i.i.i.i, i1 noundef zeroext true) #45, !noalias !24410
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs1_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsa7TLgTh0CeG_9ssmanager.exit80.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs1_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolNtBJ_11PoolContext15transport_state0ECsa7TLgTh0CeG_9ssmanager.exit80.i.i.i.i.i: ; preds = %bb.jy, %bb.jx, %bb.jw
  %i.amx = getelementptr inbounds nuw i8, ptr %i.akf, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !24273
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1120
  %.val25.i.i.i.i.i = load ptr, ptr %i.amy, align 8, !noalias !24273, !nonnull !80, !noundef !80
  %i.amz = getelementptr inbounds nuw i8, ptr %.val25.i.i.i.i.i, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.bc, ptr noundef nonnull align 8 dereferenceable(17) %i.amz, i64 17, i1 false), !noalias !24410
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1186
  %i.anb = load i8, ptr %i.ana, align 2, !range !114, !noalias !24273, !noundef !80
  %i.anc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1192
  call void @_RNvMs2_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolNtB5_24NameServerTransportState14error_received(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.amx, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(17) %i.bc, i8 noundef %i.anb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.anc) #45, !noalias !24410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !24273
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex10MutexGuardNtNtCs8AjStw0eGtC_16hickory_resolver16name_server_pool24NameServerTransportStateEECsa7TLgTh0CeG_9ssmanager(ptr nonnull %i.akf) #45, !noalias !24410
  br label %bb.iy

_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i: ; preds = %bb.jl, %bb.jb, %bb.ja, %bb.hu, %bb.hm
  %.sink.i.ph.i.i.i.i = phi i8 [ 7, %bb.ja ], [ 4, %bb.hu ], [ 5, %bb.jb ], [ 6, %bb.jl ], [ 3, %bb.hm ]
  store i8 %.sink.i.ph.i.i.i.i, ptr %i.lv, align 1, !noalias !24273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6252.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !24271
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9104.i.i.i.i.i)
  br label %bb.ka

_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %.sroa.16204.i.i.i.i.i.sroa.5.2 = phi i8 [ %.sroa.16204.i.i.i.i.i.sroa.5.1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.16204.i.i.i.i.i.sroa.5.3, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.sroa.0164.1.i.i.i.i.i = phi i64 [ %.sroa.0164.1.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.0164.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.5166.1.i.i.i.i.i = phi i8 [ %.sroa.5166.1.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.5166.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.sroa.9173.1.i.i.i.i.i = phi ptr [ %.sroa.9173.1.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.9173.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.sroa.10178.1.i.i.i.i.i = phi ptr [ %.sroa.10178.1.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.10178.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.sroa.11183.1.i.i.i.i.i = phi i8 [ %.sroa.11183.1.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.11183.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.sroa.13191.1.i.i.i.i.i = phi ptr [ %.sroa.13191.1.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.13191.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  %.sroa.14196.1.i.i.i.i.i = phi i8 [ %.sroa.14196.1.ph.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.sink.split.i.i.i.i.i ], [ %.sroa.14196.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ]
  store i8 1, ptr %i.lv, align 1, !noalias !24273
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6252.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !24271
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.33.sroa.3.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9104.i.i.i.i.i)
  %i.and = icmp eq i64 %.sroa.0164.1.i.i.i.i.i, -2
  br i1 %i.and, label %bb.ka, label %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit

bb.jz:                                            ; preds = %bb.aw
  call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @559) #55, !noalias !24485
  unreachable

bb.ka:                                            ; preds = %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i
  store i8 3, ptr %i.lo, align 8, !noalias !24271
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8170.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12188.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15201.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16204.i.i.i.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16204.i.i.i.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !24264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !24264
  %i.ane = add i64 %.sroa.08.0.i.i.i, 1           ; 2 uses
  %i.anf = load atomic i8, ptr %i.ln monotonic, align 1, !noalias !24264
  %i.ang = icmp ne i8 %i.anf, 0
  %i.anh = zext i1 %i.ang to i64
  %i.ani = add nuw nsw i64 %.sroa.010.0.i.i.i88, %i.anh ; 2 uses
  %i.anj = atomicrmw xchg ptr %i.ic, ptr %.sroa.01.0.i.i.i.i acq_rel, align 8, !alias.scope !24262, !noalias !24263 ; 5 uses
  %i.ank = icmp eq ptr %i.anj, null
  br i1 %i.ank, label %.critedge.i.i.i.i, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.anl = load ptr, ptr %i.ib, align 8, !alias.scope !24262, !noalias !24263, !nonnull !80, !noundef !80
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 16
  %i.ann = load ptr, ptr %i.anm, align 8, !noalias !24264, !nonnull !80, !noundef !80
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 16
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anj, i64 1640
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kc, %bb.kb
  %i.anq = load atomic ptr, ptr %i.anp acquire, align 8
  %.not.i24.i.i.i = icmp eq ptr %i.anq, %i.ano
  br i1 %.not.i24.i.i.i, label %bb.kc, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anj, i64 1656
  %i.ans = load i64, ptr %i.anr, align 8, !noundef !80
  %i.ant = add i64 %i.ans, 1
  %i.anu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1656
  store i64 %i.ant, ptr %i.anu, align 8, !noalias !24264
  store atomic ptr %i.anj, ptr %i.kt release, align 8, !noalias !24264
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anj, i64 1648
  store ptr %.sroa.01.0.i.i.i.i, ptr %i.anv, align 8
  br label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E4linkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.ka
  %i.anw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 1656
  store i64 1, ptr %i.anw, align 8, !noalias !24264
  store atomic ptr null, ptr %i.kt release, align 8, !noalias !24264
  br label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E4linkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E4linkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %.critedge.i.i.i.i, %bb.kd
  %i.anx = icmp ugt i64 %i.ani, 1
  %i.any = icmp eq i64 %i.ane, %.sroa.0.0.i.i.i.i
  %or.cond.i.i.i90 = select i1 %i.anx, i1 true, i1 %i.any
  br i1 %or.cond.i.i.i90, label %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNvXs5_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtBK_16FuturesUnorderedpENtNtCsaUkHVQFH9AD_12futures_core6stream6Stream9poll_next4BombNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB3h_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EECsa7TLgTh0CeG_9ssmanager.exit27.i.i.i

_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328: ; preds = %bb.ao
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i8 1, ptr %i.anz, align 8, !alias.scope !24262, !noalias !24263
  br label %bb.ke

_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i
  %.sroa.16204.i.i.i.i.i.sroa.5.0 = phi i8 [ undef, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.16204.i.i.i.i.i.sroa.5.2, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.14196.1.i.i73.i.i.i = phi i8 [ %.sroa.14196.2.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.14196.1.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.13191.1.i.i72.i.i.i = phi ptr [ %.sroa.13191.2.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.13191.1.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.11183.1.i.i71.i.i.i = phi i8 [ %.sroa.11183.2.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.11183.1.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.10178.1.i.i70.i.i.i = phi ptr [ %.sroa.10178.2.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.10178.1.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.9173.1.i.i69.i.i.i = phi ptr [ %.sroa.9173.2.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.9173.1.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.5166.1.i.i68.i.i.i = phi i8 [ %.sroa.5166.2.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.5166.1.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ]
  %.sroa.0164.1.i.i67.i.i.i = phi i64 [ -1, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i.i ], [ %.sroa.0164.1.i.i.i.i.i, %_RNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB4_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0Csa7TLgTh0CeG_9ssmanager.exit.i.i.i.i ] ; 2 uses
  %i.aoa = getelementptr inbounds i8, ptr %.sroa.01.0.i.i.i.i, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8170.i.i.i.i.i, i64 7, i1 false), !noalias !24486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12188.i.i.i.i.i, i64 7, i1 false), !noalias !24486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.15201.i.i.i.i.i, i64 31, i1 false), !noalias !24486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %.sroa.21.sroa.0, ptr noundef nonnull align 8 dereferenceable(58) %.sroa.16204.i.i.i.i.i.sroa.0, i64 58, i1 false), !noalias !24486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.21.sroa.6, ptr noundef nonnull align 1 dereferenceable(37) %.sroa.16204.i.i.i.i.i.sroa.6, i64 37, i1 false), !noalias !24486
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtCs8AjStw0eGtC_16hickory_resolver11name_serverINtBG_10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE4send0ECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.lu) #45, !noalias !24485
  %i.aob = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 824
  %i.aoc = load ptr, ptr %i.aob, align 8, !noalias !24271, !nonnull !80, !noundef !80
  store i8 1, ptr %i.lo, align 8, !noalias !24271
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8170.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12188.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15201.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16204.i.i.i.i.i.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16204.i.i.i.i.i.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !24264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !24264
  call fastcc void @_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E12release_taskCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull %i.aoa) #45, !noalias !24487
  %i.aod = icmp eq i64 %.sroa.0164.1.i.i67.i.i.i, -3
  br i1 %i.aod, label %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread, label %bb.ke

common.ret:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit, %bb.nw, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread
  %.sink = phi i8 [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op11dns_request10DnsRequestECsa7TLgTh0CeG_9ssmanager.exit ], [ 3, %bb.nw ], [ 4, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread ]
  store i8 %.sink, ptr %i.ck, align 8
  ret void

_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.sink.split: ; preds = %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E4linkCsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %bb.al, %bb.am
  %i.aoe = load ptr, ptr %i.ip, align 8, !noalias !24264, !nonnull !80, !align !86, !noundef !80
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 16
  %i.aog = load ptr, ptr %i.aof, align 8, !noalias !24264, !nonnull !80, !noundef !80
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.aoi = load ptr, ptr %i.aoh, align 8, !noalias !24264, !noundef !80
  call void %i.aog(ptr noundef %i.aoi) #45, !noalias !24264
  br label %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread

_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.sink.split, %bb.ao, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.6)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.ke:                                            ; preds = %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.0265.0346 = phi ptr [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %i.aoc, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 4 uses
  %.sroa.5266.0345 = phi i64 [ -2, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.0164.1.i.i67.i.i.i, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 6 uses
  %.sroa.11.0344 = phi i8 [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.5166.1.i.i68.i.i.i, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 6 uses
  %.sroa.427.sroa.4.0.copyload = phi ptr [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.9173.1.i.i69.i.i.i, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 6 uses
  %.sroa.427.sroa.5.0.copyload = phi ptr [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.10178.1.i.i70.i.i.i, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 5 uses
  %.sroa.427.sroa.6.0.copyload = phi i8 [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.11183.1.i.i71.i.i.i, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 5 uses
  %.sroa.427.sroa.8.0.copyload = phi ptr [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.13191.1.i.i72.i.i.i, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 5 uses
  %.sroa.427.sroa.9.0.copyload = phi i8 [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.14196.1.i.i73.i.i.i, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ] ; 5 uses
  %.sroa.21.sroa.5.0338 = phi i8 [ undef, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread328 ], [ %.sroa.16204.i.i.i.i.i.sroa.5.0, %_RNvXs1_NtNtNtCscVsx2cUGvkQ_12futures_util6stream6stream4nextINtB5_4NextINtNtB9_17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB22_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.49.sroa.2, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.49.sroa.6, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.17, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.20, i64 31, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %.sroa.49.sroa.10.sroa.0, ptr noundef nonnull align 8 dereferenceable(58) %.sroa.21.sroa.0, i64 58, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.49.sroa.10.sroa.3, ptr noundef nonnull align 1 dereferenceable(37) %.sroa.21.sroa.6, i64 37, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.sroa.6)
  %.not28 = icmp eq i64 %.sroa.5266.0345, -2
  br i1 %.not28, label %bb.kj, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0265.0346) ]
  store ptr %.sroa.0265.0346, ptr %i.ci, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19276)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20277)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.19276, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.sroa.9, i64 31, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(58) %.sroa.20277, ptr noundef nonnull align 8 dereferenceable(58) %.sroa.49.sroa.10.sroa.0, i64 58, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %.sroa.23, ptr noundef nonnull align 1 dereferenceable(37) %.sroa.49.sroa.10.sroa.3, i64 37, i1 false)
  %i.aoj = getelementptr inbounds nuw i8, ptr %1, i64 840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0265.0346) ]
  %i.aok = getelementptr inbounds nuw i8, ptr %.sroa.0265.0346, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.ch, ptr noundef nonnull readonly align 8 dereferenceable(17) %i.aok, i64 17, i1 false)
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 4 uses
  %i.aom = load i64, ptr %i.aol, align 8, !alias.scope !24488, !noundef !80 ; 3 uses
  %i.aon = icmp ugt i64 %i.aom, 2
  br i1 %i.aon, label %bb.kg, label %bb.kh

bb.kg:                                            ; preds = %bb.kf
  %i.aoo = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.aoq = load ptr, ptr %i.aop, align 8, !alias.scope !24488, !nonnull !80, !noundef !80
  %.pre778 = load i64, ptr %i.aoo, align 8, !alias.scope !24489
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i

bb.kh:                                            ; preds = %bb.kf
  %i.aor = getelementptr inbounds nuw i8, ptr %1, i64 841
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.kh, %bb.kg
  %i.aos = phi i64 [ %.pre778, %bb.kg ], [ %i.aom, %bb.kh ] ; 2 uses
  %.sink12.i.i = phi ptr [ %i.aoq, %bb.kg ], [ %i.aor, %bb.kh ]
  %.sink11.i.i = phi ptr [ %i.aoo, %bb.kg ], [ %i.aol, %bb.kh ]
  %.sink.i.i = phi i64 [ %i.aom, %bb.kg ], [ 2, %bb.kh ]
  %i.aot = icmp eq i64 %i.aos, %.sink.i.i
  br i1 %i.aot, label %bb.ki, label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E4pushCsa7TLgTh0CeG_9ssmanager.exit, !prof !92

bb.ki:                                            ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i
  call fastcc void @_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E21reserve_one_uncheckedCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aoj) #45, !noalias !24490
  %i.aou = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.aow = load ptr, ptr %i.aov, align 8, !alias.scope !24489, !nonnull !80, !noundef !80
  %.pre.i = load i64, ptr %i.aou, align 8, !alias.scope !24489
  br label %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E4pushCsa7TLgTh0CeG_9ssmanager.exit

_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E4pushCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.ki
  %i.aox = phi i64 [ %.pre.i, %bb.ki ], [ %i.aos, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.aow, %bb.ki ], [ %.sink12.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i ]
  %.sroa.0.0.i91 = phi ptr [ %i.aou, %bb.ki ], [ %.sink11.i.i, %_RNvMsd_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecANtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrj2_E10triple_mutCsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  %i.aoy = getelementptr inbounds nuw [17 x i8], ptr %.sroa.04.0.i, i64 %i.aox
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.aoy, ptr noundef nonnull readonly align 1 dereferenceable(17) %i.ch, i64 17, i1 false)
  %i.aoz = load i64, ptr %.sroa.0.0.i91, align 8, !alias.scope !24489, !noundef !80
  %i.apa = add i64 %i.aoz, 1
  store i64 %i.apa, ptr %.sroa.0.0.i91, align 8, !alias.scope !24489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  %i.apb = icmp eq i64 %.sroa.5266.0345, -1
  br i1 %i.apb, label %bb.kr, label %bb.ks

bb.kj:                                            ; preds = %bb.ke
  call void @llvm.experimental.noalias.scope.decl(metadata !24491)
  call void @llvm.experimental.noalias.scope.decl(metadata !24492)
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.apd = load i64, ptr %i.apc, align 8, !alias.scope !24493, !noundef !80 ; 2 uses
  %i.ape = icmp ugt i64 %i.apd, 2
  br i1 %i.ape, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.kj
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.apg = load ptr, ptr %i.apf, align 8, !alias.scope !24493, !nonnull !80, !noundef !80
  %i.aph = mul nuw i64 %i.apd, 17
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.apg, i64 noundef %i.aph, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !24493
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.kj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net7ip_addr6IpAddrEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24494)
  call void @llvm.experimental.noalias.scope.decl(metadata !24495)
  %i.apj = getelementptr inbounds nuw i8, ptr %1, i64 800 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.apj, align 8, !alias.scope !24496 ; 2 uses
  %i.apk = icmp eq ptr %.promoted.i.i, null
  br i1 %i.apk, label %_RNvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i, label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsa7TLgTh0CeG_9ssmanager.exit
  %i.apl = load ptr, ptr %i.api, align 8, !alias.scope !24497, !nonnull !80, !noundef !80
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 16
  br label %bb.kk

bb.kk:                                            ; preds = %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E6unlinkCsa7TLgTh0CeG_9ssmanager.exit.i.i, %.lr.ph.i.i92
  %i.apn = phi ptr [ %.promoted.i.i, %.lr.ph.i.i92 ], [ %i.aqc, %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E6unlinkCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24498)
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 1656
  %i.app = load i64, ptr %i.apo, align 8, !noalias !24497, !noundef !80
  %i.apq = add i64 %i.app, -1
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apn, i64 1640 ; 2 uses
  %i.aps = load atomic ptr, ptr %i.apr monotonic, align 8, !noalias !24497 ; 5 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apn, i64 1648 ; 2 uses
  %i.apu = load ptr, ptr %i.apt, align 8, !noalias !24497, !noundef !80 ; 4 uses
  %i.apv = load ptr, ptr %i.apm, align 8, !noalias !24497, !nonnull !80, !noundef !80
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 16
  store atomic ptr %i.apw, ptr %i.apr monotonic, align 8, !noalias !24497
  store ptr null, ptr %i.apt, align 8, !noalias !24497
  %i.apx = icmp eq ptr %i.aps, null
  br i1 %i.apx, label %.thread3.i.i.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aps, i64 1648
  store ptr %i.apu, ptr %i.apy, align 8, !noalias !24497
  %i.apz = icmp eq ptr %i.apu, null
  br i1 %i.apz, label %bb.km, label %.thread.i.i.i93

.thread3.i.i.i:                                   ; preds = %bb.kk
  %i.aqa = icmp eq ptr %i.apu, null
  br i1 %i.aqa, label %._crit_edge.loopexit.i.i, label %.thread.i.i.i93

.thread.i.i.i93:                                  ; preds = %.thread3.i.i.i, %bb.kl
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apu, i64 1640
  store atomic ptr %i.aps, ptr %i.aqb monotonic, align 8, !noalias !24497
  br label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E6unlinkCsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.km:                                            ; preds = %bb.kl
  store ptr %i.aps, ptr %i.apj, align 8, !alias.scope !24497
  br label %_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E6unlinkCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E6unlinkCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.km, %.thread.i.i.i93
  %i.aqc = phi ptr [ %i.apn, %.thread.i.i.i93 ], [ %i.aps, %bb.km ] ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 1656
  store i64 %i.apq, ptr %i.aqd, align 8, !noalias !24497
  %i.aqe = getelementptr inbounds i8, ptr %i.apn, i64 -16
  call fastcc void @_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E12release_taskCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull %i.aqe) #45, !noalias !24496
  br label %bb.kk

._crit_edge.loopexit.i.i:                         ; preds = %.thread3.i.i.i
  store ptr null, ptr %i.apj, align 8, !alias.scope !24497
  %i.aqf = getelementptr inbounds i8, ptr %i.apn, i64 -16
  call fastcc void @_RNvMs4_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00E12release_taskCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull %i.aqf) #45, !noalias !24496
  br label %_RNvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %._crit_edge.loopexit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecANtNtNtB4_3net7ip_addr6IpAddrj2_EECsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !24499)
  call void @llvm.experimental.noalias.scope.decl(metadata !24500)
  %i.aqg = load ptr, ptr %i.api, align 8, !alias.scope !24501, !nonnull !80, !noundef !80
  %i.aqh = atomicrmw add ptr %i.aqg, i64 -1 release, align 8, !noalias !24501
  %i.aqi = icmp eq i64 %i.aqh, 1
  br i1 %i.aqi, label %bb.kn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EECsa7TLgTh0CeG_9ssmanager.exit

bb.kn:                                            ; preds = %_RNvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB2u_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EE9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.api) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvXs8_NtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB1B_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.kn
  call void @llvm.experimental.noalias.scope.decl(metadata !24502)
  call void @llvm.experimental.noalias.scope.decl(metadata !24503)
  %i.aqj = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.aqk = load i64, ptr %i.aqj, align 8, !alias.scope !24504, !noundef !80 ; 4 uses
  %i.aql = icmp ugt i64 %i.aqk, 2
  %i.aqm = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  br i1 %i.aql, label %bb.ko, label %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EECsa7TLgTh0CeG_9ssmanager.exit
  %i.aqn = icmp eq i64 %i.aqk, 0
  br i1 %i.aqn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i.i94

bb.ko:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6stream17futures_unordered16FuturesUnorderedNCNCNCNvMs0_NtCs8AjStw0eGtC_16hickory_resolver16name_server_poolINtB24_9PoolStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE8try_send0s_00EECsa7TLgTh0CeG_9ssmanager.exit
  %i.aqo = getelementptr inbounds nuw i8, ptr %1, i64 904
  %i.aqp = load ptr, ptr %i.aqo, align 8, !alias.scope !24504, !nonnull !80, !noundef !80 ; 2 uses
  %i.aqq = load i64, ptr %i.aqm, align 8, !alias.scope !24504, !noundef !80 ; 2 uses
  %i.aqr = icmp eq i64 %i.aqq, 0
  br i1 %i.aqr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ko, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.aqt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ 0, %bb.ko ] ; 2 uses
  %i.aqs = getelementptr inbounds nuw [8 x i8], ptr %i.aqp, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.aqt = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24505)
  call void @llvm.experimental.noalias.scope.decl(metadata !24506)
  %i.aqu = load ptr, ptr %i.aqs, align 8, !alias.scope !24507, !noalias !24508, !nonnull !80, !noundef !80
  %i.aqv = atomicrmw add ptr %i.aqu, i64 -1 release, align 8, !noalias !24509
  %i.aqw = icmp eq i64 %i.aqv, 1
  br i1 %i.aqw, label %bb.kp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.kp:                                            ; preds = %.lr.ph.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEE9drop_slowB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aqs) #52, !noalias !24508
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.kp, %.lr.ph.i.i.i.i.i
  %i.aqx = icmp eq i64 %i.aqt, %i.aqq
  br i1 %i.aqx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtBG_4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEEECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %bb.ko
  %i.aqy = shl nuw i64 %i.aqk, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aqp, i64 noundef %i.aqy, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !24508
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsjcToxTEWQ5H_8smallvec8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EECsa7TLgTh0CeG_9ssmanager.exit

.lr.ph.i.i94:                                     ; preds = %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i
  %.sroa.02.05.i.i = phi i64 [ %i.ara, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEECsa7TLgTh0CeG_9ssmanager.exit.i.i ], [ 0, %_RNvXsq_CsjcToxTEWQ5H_8smallvecINtB5_8SmallVecAINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtCs8AjStw0eGtC_16hickory_resolver11name_server10NameServerNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEj2_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtB3Y_5range9RangeFullE9index_mutCsa7TLgTh0CeG_9ssmanager.exit.i.i ] ; 2 uses
  %i.aqz = getelementptr inbounds nuw [8 x i8], ptr %i.aqm, i64 %.sroa.02.05.i.i ; 2 uses
  %i.ara = add nuw nsw i64 %.sroa.02.05.i.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24510)
end_hunk_2
