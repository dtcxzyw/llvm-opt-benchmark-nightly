Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40154
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !177 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 6 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit, !prof !186

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.051.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit
  %.sroa.051.0 = phi i64 [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit
  %.pre.pre = phi i64 [ %.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ %i.g, %bb.b ]
  %.pr.pre.pre = phi i64 [ %.pr.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ %i.e, %bb.b ]
  %.sroa.051.2 = phi i64 [ %.sroa.051.0, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %.sroa.051.0, %bb.c ], [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %thread-pre-split.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #52 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge

._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge: ; preds = %bb.f
  %.pr.pre.pre.pre = load i64, ptr %i.d, align 8
  %.pre.pre.pre = load i64, ptr %0, align 8, !range !179
  br label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0CsgZAIVb0XKpv_9ssservice.exit.thread

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
  %i.ai = call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #52 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !31247)
  call void @llvm.experimental.noalias.scope.decl(metadata !31248)
  %i.ap = icmp ugt i64 %.lcssa59, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa59, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31249
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !31249
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #52, !noalias !31249
  %i.at = load i64, ptr %i.c, align 8, !range !181, !noalias !31249, !noundef !177
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31249
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !31249, !nonnull !177, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31249
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !31249
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !31249
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
  br i1 %.not56, label %bb.p, label %.peel.begin, !prof !289

.peel.begin:                                      ; preds = %.thread200, %bb.k
  %i.be = phi i64 [ %i.bb, %.thread200 ], [ %.sroa.025.2.lcssa, %bb.k ] ; 3 uses
  %.sroa.032.0208 = phi i64 [ %i.ba, %.thread200 ], [ %i.bd, %bb.k ] ; 6 uses
  %.sroa.025.315207 = phi i1 [ %i.bc, %.thread200 ], [ false, %bb.k ]
  %i.bf = phi i64 [ %i.az, %.thread200 ], [ %i.ah, %bb.k ]
  %.pre184206 = phi i64 [ %.pre185, %.thread200 ], [ %.pre186, %bb.k ] ; 3 uses
  %.pn = load ptr, ptr %i.r, align 8, !nonnull !177, !noundef !177
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn, i64 %.lcssa59 ; 3 uses
  br i1 %.sroa.025.315207, label %bb.l, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

bb.l:                                             ; preds = %.peel.begin
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0208) #52, !noalias !31250 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31251
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31251
  store i64 %.sroa.032.0208, ptr %i.t, align 8, !noalias !31251
  store i64 0, ptr %i.u, align 8, !noalias !31251
  store i64 %.sroa.032.0208, ptr %i.v, align 8, !noalias !31251
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %.val.i.i.i.i.peel = load ptr, ptr %.0.val, align 8, !noalias !31252, !nonnull !177, !noundef !177
  %i.bi = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i.i.peel, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31253 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1      ; 6 uses
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %.thread29.peel, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  %.not.i.i.i.i.peel = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31251
  %i.bm = ptrtoint ptr %i.bk to i64               ; 6 uses
  %i.bn = and i64 %i.bm, 3
  switch i64 %i.bn, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
    i64 0, label %.split38.peel
    i64 1, label %.split35.peel
  ], !prof !290

.split35.peel:                                    ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.bo = getelementptr i8, ptr %i.bk, i64 31
  %i.bp = load i8, ptr %i.bo, align 8, !range !291, !noundef !177
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.n, label %.thread44

bb.n:                                             ; preds = %.split35.peel
  %i.br = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31254
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !31255, !noalias !31254
  store i8 3, ptr %i.a, align 8, !alias.scope !31255, !noalias !31254
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31254
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader: ; preds = %bb.o, %.thread41.peel, %bb.n
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i

.split38.peel:                                    ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !291, !noundef !177
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %.thread41.peel, label %.thread44

.split.peel:                                      ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.bv = lshr i64 %i.bm, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !177, !noundef !177
  %i.ca = call noundef zeroext i1 %i.bz(i32 noundef %i.bw) #52, !inline_history !81
  br i1 %i.ca, label %.thread41.peel, label %.thread44

.thread41.peel:                                   ; preds = %.split.peel, %.split38.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31256
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

.thread29.peel:                                   ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31251
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %.thread29.peel, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.cb = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread29.peel ], [ %i.bk, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel ]
  %i.cc = phi i64 [ 55834574851, %.thread29.peel ], [ %i.bm, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel ] ; 3 uses
  %i.cd = lshr i64 %i.cc, 32
  %i.ce = icmp ult ptr %i.cb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.cd to i8
  %spec.select.i.i.i.peel = select i1 %i.ce, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.cf = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.cg, label %bb.o, label %.thread44

bb.o:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31257
  %i.ch = and i64 %i.cc, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.ci)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

bb.p:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #62
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31254
  %.val.i.i.i.i.pre = load ptr, ptr %.0.val, align 8, !noalias !31252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31251
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31251
  store i64 %.sroa.032.0208, ptr %i.t, align 8, !noalias !31251
  store i64 0, ptr %i.u, align 8, !noalias !31251
  store i64 %.sroa.032.0208, ptr %i.v, align 8, !noalias !31251
  %i.cj = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i.i.pre, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31253 ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1      ; 6 uses
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %.thread29, label %bb.q

.thread29:                                        ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31251
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.q:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit

.loopexit:                                        ; preds = %bb.q, %bb.m
  %i.cn = load i64, ptr %i.t, align 8, !noalias !31251, !noundef !177 ; 2 uses
  %i.co = load i64, ptr %i.u, align 8, !noalias !31251, !noundef !177 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.co, %i.cn
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.s, !prof !206

bb.r:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.co, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !31253
  unreachable

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31251
  %.not.i.i.i = icmp ugt i64 %i.co, %.sroa.032.0208
  br i1 %.not.i.i.i, label %bb.t, label %bb.w, !prof !186

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2266, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2268) #62, !noalias !31258
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31251
  %i.cp = ptrtoint ptr %i.cl to i64               ; 6 uses
  %i.cq = and i64 %i.cp, 3
  switch i64 %i.cq, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.unreachabledefault [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split38
    i64 1, label %.split35
  ], !prof !290

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.unreachabledefault: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel.unreachabledefault: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  unreachable

.split:                                           ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  %i.cr = lshr i64 %i.cp, 32
  %i.cs = trunc nuw i64 %i.cr to i32
  %i.ct = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !177, !noundef !177
  %i.cw = call noundef zeroext i1 %i.cv(i32 noundef %i.cs) #52, !inline_history !81
  br i1 %i.cw, label %.thread41, label %.thread44

.split38:                                         ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !range !291, !noundef !177
  %i.cz = icmp eq i8 %i.cy, 35
  br i1 %i.cz, label %.thread41, label %.thread44

.split35:                                         ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  %i.da = getelementptr i8, ptr %i.cl, i64 31
  %i.db = load i8, ptr %i.da, align 8, !range !291, !noundef !177
  %i.dc = icmp eq i8 %i.db, 35
  br i1 %i.dc, label %bb.v, label %.thread44

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit, %.thread29
  %i.dd = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread29 ], [ %i.cl, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit ]
  %i.de = phi i64 [ 55834574851, %.thread29 ], [ %i.cp, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = icmp ult ptr %i.dd, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.df to i8
  %spec.select.i.i.i = select i1 %i.dg, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.dh = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.di, label %bb.u, label %.thread44

.thread41:                                        ; preds = %.split, %.split38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31256
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge: ; preds = %.thread41, %bb.u, %bb.v
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i, !llvm.loop !31246

bb.u:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31257
  %i.dj = and i64 %i.de, 1095216660480
  %i.dk = icmp ne i64 %i.dj, 1095216660480
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 %i.dk)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

bb.v:                                             ; preds = %.split35
  %i.dl = getelementptr i8, ptr %i.cl, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31254
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  store ptr %i.dl, ptr %i.w, align 8, !alias.scope !31255, !noalias !31254
  store i8 3, ptr %i.a, align 8, !alias.scope !31255, !noalias !31254
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31254
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

.thread44:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split.peel, %.split38.peel, %.split35.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split35, %.split38
  %.ph = phi i64 [ %i.cp, %.split38 ], [ %i.cp, %.split35 ], [ %i.cp, %.split ], [ %i.de, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bm, %.split35.peel ], [ %i.bm, %.split38.peel ], [ %i.bm, %.split.peel ], [ %i.cc, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ]
  store i64 %.lcssa59, ptr %i.d, align 8
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.dm = add i64 %i.co, %.lcssa59                ; 5 uses
  store i64 %i.dm, ptr %i.d, align 8
  %i.dn = icmp eq i64 %i.co, 0
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.do = sub nsw i64 %i.dm, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

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
begin_hunk_1_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !177 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 6 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit, !prof !186

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.051.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit
  %.sroa.051.0 = phi i64 [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit
  %.pre.pre = phi i64 [ %.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ %i.g, %bb.b ]
  %.pr.pre.pre = phi i64 [ %.pr.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ %i.e, %bb.b ]
  %.sroa.051.2 = phi i64 [ %.sroa.051.0, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %.sroa.051.0, %bb.c ], [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %thread-pre-split.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #52 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge

._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge: ; preds = %bb.f
  %.pr.pre.pre.pre = load i64, ptr %i.d, align 8
  %.pre.pre.pre = load i64, ptr %0, align 8, !range !179
  br label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread

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
  %i.ai = call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #52 ; 2 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !31289)
  call void @llvm.experimental.noalias.scope.decl(metadata !31290)
  %i.ap = icmp ugt i64 %.lcssa46, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa46, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31291
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !31291
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #52, !noalias !31291
  %i.at = load i64, ptr %i.c, align 8, !range !181, !noalias !31291, !noundef !177
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31291
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !31291, !nonnull !177, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31291
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !31291
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !31291
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
  br i1 %.not56, label %bb.q, label %.peel.begin, !prof !289

.peel.begin:                                      ; preds = %.thread186, %bb.k
  %i.be = phi i64 [ %i.bb, %.thread186 ], [ %.sroa.025.2.lcssa, %bb.k ] ; 3 uses
  %.sroa.032.0194 = phi i64 [ %i.ba, %.thread186 ], [ %i.bd, %bb.k ] ; 6 uses
  %.sroa.025.315193 = phi i1 [ %i.bc, %.thread186 ], [ false, %bb.k ]
  %i.bf = phi i64 [ %i.az, %.thread186 ], [ %i.ah, %bb.k ]
  %.pre170192 = phi i64 [ %.pre171, %.thread186 ], [ %.pre172, %bb.k ] ; 3 uses
  %.pn = load ptr, ptr %i.r, align 8, !nonnull !177, !noundef !177
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn, i64 %.lcssa46 ; 3 uses
  br i1 %.sroa.025.315193, label %bb.l, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

bb.l:                                             ; preds = %.peel.begin
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0194) #52, !noalias !31292 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31293
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31293
  store i64 %.sroa.032.0194, ptr %i.t, align 8, !noalias !31293
  store i64 0, ptr %i.u, align 8, !noalias !31293
  store i64 %.sroa.032.0194, ptr %i.v, align 8, !noalias !31293
  %i.bi = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31294 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  %i.bl = extractvalue { i64, ptr } %i.bi, 1      ; 2 uses
  %.not.i.i.i.i.i.i.peel = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.peel, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel, %bb.m
  %.sroa.0.0.i.i.ph.peel = phi ptr [ %i.bl, %bb.m ], [ inttoptr (i64 55834574851 to ptr), %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31293
  %i.bm = ptrtoint ptr %.sroa.0.0.i.i.ph.peel to i64 ; 8 uses
  %i.bn = and i64 %i.bm, 3
  switch i64 %i.bn, label %.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
    i64 0, label %.split29.peel
    i64 1, label %.split28.peel
  ], !prof !230

.split28.peel:                                    ; preds = %bb.n
  %i.bo = getelementptr i8, ptr %.sroa.0.0.i.i.ph.peel, i64 31
  %i.bp = load i8, ptr %i.bo, align 8, !range !291, !noundef !177
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.o, label %.thread33

bb.o:                                             ; preds = %.split28.peel
  %i.br = getelementptr i8, ptr %.sroa.0.0.i.i.ph.peel, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31295
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !31296, !noalias !31295
  store i8 3, ptr %i.a, align 8, !alias.scope !31296, !noalias !31295
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31295
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader: ; preds = %.thread30.peel, %bb.p, %bb.o
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i

.split29.peel:                                    ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.ph.peel, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !291, !noundef !177
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31297
  %i.bz = and i64 %i.bm, 1095216660480
  %i.ca = icmp ne i64 %i.bz, 1095216660480
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.assume(i1 %i.ca)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

.split.peel:                                      ; preds = %bb.n
  %i.cb = lshr i64 %i.bm, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !177, !noundef !177
  %i.cg = call noundef zeroext i1 %i.cf(i32 noundef %i.cc) #52, !inline_history !81
  br i1 %i.cg, label %.thread30.peel, label %.thread33

.thread30.peel:                                   ; preds = %.split.peel, %.split29.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31298
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

bb.q:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #62
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31293
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31293
  store i64 %.sroa.032.0194, ptr %i.t, align 8, !noalias !31293
  store i64 0, ptr %i.u, align 8, !noalias !31293
  store i64 %.sroa.032.0194, ptr %i.v, align 8, !noalias !31293
  %i.ch = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31294 ; 2 uses
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = trunc nuw i64 %i.ci to i1
  br i1 %i.cj, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ck = extractvalue { i64, ptr } %i.ch, 1      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.r, %bb.m
  %i.cl = load i64, ptr %i.t, align 8, !noalias !31293, !noundef !177 ; 2 uses
  %i.cm = load i64, ptr %i.u, align 8, !noalias !31293, !noundef !177 ; 6 uses
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.cm, %i.cl
  br i1 %.not7.i.i.i.i.i.i, label %bb.s, label %bb.t, !prof !206

bb.s:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cm, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !31294
  unreachable

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31293
  %.not.i6.i.i.i.i.i = icmp ugt i64 %i.cm, %.sroa.032.0194
  br i1 %.not.i6.i.i.i.i.i, label %bb.u, label %bb.y, !prof !186

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2789) #62, !noalias !31299
  unreachable

bb.v:                                             ; preds = %bb.r, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.0.0.i.i.ph = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.ck, %bb.r ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31293
  %i.cn = ptrtoint ptr %.sroa.0.0.i.i.ph to i64   ; 8 uses
  %i.co = and i64 %i.cn, 3
  switch i64 %i.co, label %.unreachabledefault312 [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split29
    i64 1, label %.split28
  ], !prof !230

.unreachabledefault312:                           ; preds = %bb.v
  unreachable

.unreachabledefault:                              ; preds = %bb.n
  unreachable

.split:                                           ; preds = %bb.v
  %i.cp = lshr i64 %i.cn, 32
  %i.cq = trunc nuw i64 %i.cp to i32
  %i.cr = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !177, !noundef !177
  %i.cu = call noundef zeroext i1 %i.ct(i32 noundef %i.cq) #52, !inline_history !81
  br i1 %i.cu, label %.thread30, label %.thread33

.split29:                                         ; preds = %bb.v
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.ph, i64 16
  %i.cw = load i8, ptr %i.cv, align 8, !range !291, !noundef !177
  %i.cx = icmp eq i8 %i.cw, 35
  br i1 %i.cx, label %.thread30, label %.thread33

.split28:                                         ; preds = %bb.v
  %i.cy = getelementptr i8, ptr %.sroa.0.0.i.i.ph, i64 31
  %i.cz = load i8, ptr %i.cy, align 8, !range !291, !noundef !177
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31298
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge: ; preds = %.thread30, %bb.w, %bb.x
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i, !llvm.loop !31288

bb.w:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31297
  %i.df = and i64 %i.cn, 1095216660480
  %i.dg = icmp ne i64 %i.df, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.dg)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

bb.x:                                             ; preds = %.split28
  %i.dh = getelementptr i8, ptr %.sroa.0.0.i.i.ph, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31295
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  store ptr %i.dh, ptr %i.w, align 8, !alias.scope !31296, !noalias !31295
  store i8 3, ptr %i.a, align 8, !alias.scope !31296, !noalias !31295
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31295
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

.thread33:                                        ; preds = %.split.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split29.peel, %.split28.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split28, %.split29
  %.lcssa116 = phi i64 [ %i.cn, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.cn, %.split29 ], [ %i.cn, %.split28 ], [ %i.cn, %.split ], [ %i.bm, %.split28.peel ], [ %i.bm, %.split29.peel ], [ %i.bm, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ], [ %i.bm, %.split.peel ]
  store i64 %.lcssa46, ptr %i.d, align 8
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.y:                                             ; preds = %bb.t
  %i.di = add i64 %i.cm, %.lcssa46                ; 5 uses
  store i64 %i.di, ptr %i.d, align 8
  %i.dj = icmp eq i64 %i.cm, 0
  br i1 %i.dj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dk = sub nsw i64 %i.di, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

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
  br i1 %i.dn, label %bb.ad, label %thread-pre-split.outer.outer.backedge, !prof !186

thread-pre-split.outer.outer.backedge:            ; preds = %bb.ac, %bb.ad
  %.sroa.051.3.ph.ph.ph.be = phi i64 [ -1, %bb.ad ], [ %i.dm, %bb.ac ]
  br label %thread-pre-split.outer.outer

thread-pre-split.outer.outer:                     ; preds = %thread-pre-split.outer.outer.backedge, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread
  %.pre.ph = phi i64 [ %.pre.pre, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.pre170192, %thread-pre-split.outer.outer.backedge ]
  %.pr.pre.ph = phi i64 [ %.pr.pre.pre, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0CsgZAIVb0XKpv_9ssservice.exit.thread ], [ %i.di, %thread-pre-split.outer.outer.backedge ]
end_hunk_1
begin_hunk_2_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice:bb.a
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !177 ; 8 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 6 uses
  %i.h = trunc nuw i64 %1 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %2, -1025
  br i1 %i.i, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit, !prof !186

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b
  %i.j = add nuw i64 %2, 1024                     ; 3 uses
  %i.k = and i64 %i.j, 8191                       ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  %i.m = sub i64 %2, %i.k
  %i.n = add i64 %i.m, 9216                       ; 2 uses
  %.not = icmp ult i64 %i.n, %i.j
  %.sroa.5.1.i = select i1 %.not, i64 8192, i64 %i.n
  %.sroa.051.1 = select i1 %i.l, i64 %i.j, i64 %.sroa.5.1.i ; 2 uses
  %i.o = icmp eq i64 %2, 0
  br i1 %i.o, label %bb.c, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.c:                                             ; preds = %bb.a, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit
  %.sroa.051.0 = phi i64 [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit ], [ 8192, %bb.a ] ; 2 uses
  %i.p = sub nsw i64 %i.g, %i.e
  %i.q = icmp ult i64 %i.p, 32
  br i1 %i.q, label %bb.d, label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread

_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge, %bb.b, %bb.c, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit
  %.pre.pre = phi i64 [ %.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.g, %bb.c ], [ %i.g, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit ], [ %i.g, %bb.b ]
  %.pr.pre.pre = phi i64 [ %.pr.pre.pre.pre, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit ], [ %i.e, %bb.b ]
  %.sroa.051.2 = phi i64 [ %.sroa.051.0, %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge ], [ %.sroa.051.0, %bb.c ], [ %.sroa.051.1, %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit ], [ 8192, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br label %thread-pre-split.outer.outer

bb.d:                                             ; preds = %bb.c
  %i.x = tail call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #52 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.z to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.z, null
  br i1 %i.ac, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge

._RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread_crit_edge: ; preds = %bb.f
  %.pr.pre.pre.pre = load i64, ptr %i.d, align 8
  %.pre.pre.pre = load i64, ptr %0, align 8, !range !179
  br label %_RNCINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0CsgZAIVb0XKpv_9ssservice.exit.thread

thread-pre-split:                                 ; preds = %thread-pre-split.outer, %bb.z
  %.pre182 = phi i64 [ %.pre179201, %bb.z ], [ %.pre, %thread-pre-split.outer ]
  %i.ad = phi i64 [ %i.bf, %bb.z ], [ %.pre, %thread-pre-split.outer ] ; 3 uses
  %.pr = phi i64 [ %i.dm, %bb.z ], [ %.pr.pre, %thread-pre-split.outer ] ; 2 uses
  %.sroa.025.2.ph = phi i64 [ %i.be, %bb.z ], [ %.sroa.025.2.ph.ph, %thread-pre-split.outer ]
  %i.ae = sub i64 %i.ad, %.pr
  %i.af = icmp ult i64 %i.ae, 32                  ; 2 uses
  %i.ag = icmp eq i64 %i.ad, %i.g
  %or.cond116 = and i1 %i.ag, %i.af
  br i1 %or.cond116, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.af, %thread-pre-split
  %.pre181 = phi i64 [ %.pre182, %thread-pre-split ], [ %i.ea, %bb.af ] ; 2 uses
  %i.ah = phi i64 [ %i.ad, %thread-pre-split ], [ %i.ea, %bb.af ] ; 6 uses
  %.lcssa59 = phi i64 [ %.pr, %thread-pre-split ], [ %i.dx, %bb.af ] ; 14 uses
  %.sroa.025.2.lcssa = phi i64 [ %.sroa.025.2.ph, %thread-pre-split ], [ %i.dx, %bb.af ] ; 4 uses
  %.lcssa = phi i1 [ %i.af, %thread-pre-split ], [ %i.ec, %bb.af ]
  br i1 %.lcssa, label %bb.h, label %bb.g

.lr.ph:                                           ; preds = %thread-pre-split, %bb.af
  %i.ai = call fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef align 8 dereferenceable(24) %0) #52 ; 2 uses
  %i.aj = extractvalue { i64, ptr } %i.ai, 0
  %i.ak = extractvalue { i64, ptr } %i.ai, 1      ; 2 uses
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %bb.ac, label %bb.ad

bb.g:                                             ; preds = %._crit_edge
  %i.am = icmp sgt i64 %.lcssa59, -1
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw i64 %.lcssa59, 32
  %i.ao = icmp ugt i64 %.sroa.025.2.lcssa, %i.an
  br i1 %i.ao, label %bb.k, label %._crit_edge187

._crit_edge187:                                   ; preds = %bb.g
  %.pre188 = sub nsw i64 %i.ah, %.lcssa59
  br label %.thread195

bb.h:                                             ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !31322)
  call void @llvm.experimental.noalias.scope.decl(metadata !31323)
  %i.ap = icmp ugt i64 %.lcssa59, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa59, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31324
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !31324
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #52, !noalias !31324
  %i.at = load i64, ptr %i.c, align 8, !range !181, !noalias !31324, !noundef !177
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31324
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !31324, !nonnull !177, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31324
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !31324
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !31324
  %.pre.i = sub nsw i64 %i.as, %.lcssa59          ; 2 uses
  %i.ax = icmp samesign ugt i64 %.pre.i, 31
  call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp sgt i64 %.lcssa59, -1
  call void @llvm.assume(i1 %i.ay)
  br label %.thread195

.thread195:                                       ; preds = %.thread, %._crit_edge187
  %.pre-phi189 = phi i64 [ %.pre188, %._crit_edge187 ], [ %.pre.i, %.thread ]
  %.pre180 = phi i64 [ %.pre181, %._crit_edge187 ], [ %i.as, %.thread ]
  %i.az = phi i64 [ %i.ah, %._crit_edge187 ], [ %i.as, %.thread ]
  %.sroa.025.316 = phi i64 [ %.sroa.025.2.lcssa, %._crit_edge187 ], [ %.lcssa59, %.thread ]
  %i.ba = call i64 @llvm.umin.i64(i64 %.sroa.051.3.ph.ph.ph, i64 %.pre-phi189) ; 2 uses
  %i.bb = add i64 %i.ba, %.lcssa59                ; 2 uses
  %i.bc = icmp ult i64 %.sroa.025.316, %i.bb
  br label %.peel.begin

bb.k:                                             ; preds = %bb.g
  %i.bd = sub nuw i64 %.sroa.025.2.lcssa, %.lcssa59 ; 3 uses
  %.pre186 = sub nsw i64 %i.ah, %.lcssa59         ; 2 uses
  %.not56 = icmp ugt i64 %i.bd, %.pre186
  br i1 %.not56, label %bb.p, label %.peel.begin, !prof !289

.peel.begin:                                      ; preds = %.thread195, %bb.k
  %i.be = phi i64 [ %i.bb, %.thread195 ], [ %.sroa.025.2.lcssa, %bb.k ] ; 3 uses
  %.sroa.032.0203 = phi i64 [ %i.ba, %.thread195 ], [ %i.bd, %bb.k ] ; 6 uses
  %.sroa.025.315202 = phi i1 [ %i.bc, %.thread195 ], [ false, %bb.k ]
  %i.bf = phi i64 [ %i.az, %.thread195 ], [ %i.ah, %bb.k ]
  %.pre179201 = phi i64 [ %.pre180, %.thread195 ], [ %.pre181, %bb.k ] ; 3 uses
  %.pn = load ptr, ptr %i.r, align 8, !nonnull !177, !noundef !177
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn, i64 %.lcssa59 ; 3 uses
  br i1 %.sroa.025.315202, label %bb.l, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

bb.l:                                             ; preds = %.peel.begin
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0203) #52, !noalias !31325 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31326
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31326
  store i64 %.sroa.032.0203, ptr %i.t, align 8, !noalias !31326
  store i64 0, ptr %i.u, align 8, !noalias !31326
  store i64 %.sroa.032.0203, ptr %i.v, align 8, !noalias !31326
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.0.val) ]
  %i.bi = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31327 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1      ; 6 uses
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %.thread29.peel, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  %.not.i.i.i.i.peel = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31326
  %i.bm = ptrtoint ptr %i.bk to i64               ; 6 uses
  %i.bn = and i64 %i.bm, 3
  switch i64 %i.bn, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel.unreachabledefault [
    i64 2, label %.split.peel
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
    i64 0, label %.split38.peel
    i64 1, label %.split35.peel
  ], !prof !290

.split35.peel:                                    ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.bo = getelementptr i8, ptr %i.bk, i64 31
  %i.bp = load i8, ptr %i.bo, align 8, !range !291, !noundef !177
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %bb.n, label %.thread44

bb.n:                                             ; preds = %.split35.peel
  %i.br = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !31329, !noalias !31328
  store i8 3, ptr %i.a, align 8, !alias.scope !31329, !noalias !31328
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31328
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader: ; preds = %bb.o, %.thread41.peel, %bb.n
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i

.split38.peel:                                    ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bt = load i8, ptr %i.bs, align 8, !range !291, !noundef !177
  %i.bu = icmp eq i8 %i.bt, 35
  br i1 %i.bu, label %.thread41.peel, label %.thread44

.split.peel:                                      ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.bv = lshr i64 %i.bm, 32
  %i.bw = trunc nuw i64 %i.bv to i32
  %i.bx = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !177, !noundef !177
  %i.ca = call noundef zeroext i1 %i.bz(i32 noundef %i.bw) #52, !inline_history !81
  br i1 %i.ca, label %.thread41.peel, label %.thread44

.thread41.peel:                                   ; preds = %.split.peel, %.split38.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31330
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

.thread29.peel:                                   ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31326
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel: ; preds = %.thread29.peel, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  %i.cb = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread29.peel ], [ %i.bk, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel ]
  %i.cc = phi i64 [ 55834574851, %.thread29.peel ], [ %i.bm, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel ] ; 3 uses
  %i.cd = lshr i64 %i.cc, 32
  %i.ce = icmp ult ptr %i.cb, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.peel = trunc i64 %i.cd to i8
  %spec.select.i.i.i.peel = select i1 %i.ce, i8 %switch.idx.cast.i.i.i.peel, i8 -1 ; 2 uses
  %i.cf = icmp ne i8 %spec.select.i.i.i.peel, -1
  call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp eq i8 %spec.select.i.i.i.peel, 35
  br i1 %i.cg, label %bb.o, label %.thread44

bb.o:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31331
  %i.ch = and i64 %i.cc, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.ci)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

bb.p:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #62
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31326
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31326
  store i64 %.sroa.032.0203, ptr %i.t, align 8, !noalias !31326
  store i64 0, ptr %i.u, align 8, !noalias !31326
  store i64 %.sroa.032.0203, ptr %i.v, align 8, !noalias !31326
  %i.cj = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31327 ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1      ; 6 uses
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %.thread29, label %bb.q

.thread29:                                        ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31326
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.q:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit

.loopexit:                                        ; preds = %bb.q, %bb.m
  %i.cn = load i64, ptr %i.t, align 8, !noalias !31326, !noundef !177 ; 2 uses
  %i.co = load i64, ptr %i.u, align 8, !noalias !31326, !noundef !177 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.co, %i.cn
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.s, !prof !206

bb.r:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.co, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !31327
  unreachable

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31326
  %.not.i.i.i = icmp ugt i64 %i.co, %.sroa.032.0203
  br i1 %.not.i.i.i, label %bb.t, label %bb.w, !prof !186

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2266, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2268) #62, !noalias !31332
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31326
  %i.cp = ptrtoint ptr %i.cl to i64               ; 6 uses
  %i.cq = and i64 %i.cp, 3
  switch i64 %i.cq, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.unreachabledefault [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split38
    i64 1, label %.split35
  ], !prof !290

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.unreachabledefault: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel.unreachabledefault: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel
  unreachable

.split:                                           ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  %i.cr = lshr i64 %i.cp, 32
  %i.cs = trunc nuw i64 %i.cr to i32
  %i.ct = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !177, !noundef !177
  %i.cw = call noundef zeroext i1 %i.cv(i32 noundef %i.cs) #52, !inline_history !81
  br i1 %i.cw, label %.thread41, label %.thread44

.split38:                                         ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cy = load i8, ptr %i.cx, align 8, !range !291, !noundef !177
  %i.cz = icmp eq i8 %i.cy, 35
  br i1 %i.cz, label %.thread41, label %.thread44

.split35:                                         ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit
  %i.da = getelementptr i8, ptr %i.cl, i64 31
  %i.db = load i8, ptr %i.da, align 8, !range !291, !noundef !177
  %i.dc = icmp eq i8 %i.db, 35
  br i1 %i.dc, label %bb.v, label %.thread44

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit, %.thread29
  %i.dd = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread29 ], [ %i.cl, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit ]
  %i.de = phi i64 [ 55834574851, %.thread29 ], [ %i.cp, %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %i.df = lshr i64 %i.de, 32
  %i.dg = icmp ult ptr %i.dd, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.df to i8
  %spec.select.i.i.i = select i1 %i.dg, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.dh = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.dh)
  %i.di = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.di, label %bb.u, label %.thread44

.thread41:                                        ; preds = %.split, %.split38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31330
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge: ; preds = %.thread41, %bb.u, %bb.v
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i, !llvm.loop !31321

bb.u:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31331
  %i.dj = and i64 %i.de, 1095216660480
  %i.dk = icmp ne i64 %i.dj, 1095216660480
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 %i.dk)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

bb.v:                                             ; preds = %.split35
  %i.dl = getelementptr i8, ptr %i.cl, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31328
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  store ptr %i.dl, ptr %i.w, align 8, !alias.scope !31329, !noalias !31328
  store i8 3, ptr %i.a, align 8, !alias.scope !31329, !noalias !31328
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31328
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

.thread44:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split.peel, %.split38.peel, %.split35.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split35, %.split38
  %.ph = phi i64 [ %i.cp, %.split38 ], [ %i.cp, %.split35 ], [ %i.cp, %.split ], [ %i.de, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.bm, %.split35.peel ], [ %i.bm, %.split38.peel ], [ %i.bm, %.split.peel ], [ %i.cc, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ]
  store i64 %.lcssa59, ptr %i.d, align 8
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.w:                                             ; preds = %bb.s
  %i.dm = add i64 %i.co, %.lcssa59                ; 5 uses
  store i64 %i.dm, ptr %i.d, align 8
  %i.dn = icmp eq i64 %i.co, 0
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.do = sub nsw i64 %i.dm, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.y:                                             ; preds = %bb.w
  br i1 %i.h, label %thread-pre-split.outer, label %bb.z

thread-pre-split.outer:                           ; preds = %bb.y, %thread-pre-split.outer.outer
  %.pre = phi i64 [ %.pre.ph, %thread-pre-split.outer.outer ], [ %.pre179201, %bb.y ] ; 2 uses
  %.pr.pre = phi i64 [ %.pr.pre.ph, %thread-pre-split.outer.outer ], [ %i.dm, %bb.y ]
  %.sroa.025.2.ph.ph = phi i64 [ %.sroa.025.2.ph.ph.ph, %thread-pre-split.outer.outer ], [ %i.be, %bb.y ]
  br label %thread-pre-split

bb.z:                                             ; preds = %bb.y
  %i.dp = icmp eq i64 %i.co, %.sroa.051.3.ph.ph.ph
  br i1 %i.dp, label %bb.aa, label %thread-pre-split

bb.aa:                                            ; preds = %bb.z
end_hunk_2
