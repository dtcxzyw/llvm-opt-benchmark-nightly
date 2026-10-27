Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsa7TLgTh0CeG_9ssmanager
define internal { ptr, ptr } @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsa7TLgTh0CeG_9ssmanager(ptr noundef %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsa7TLgTh0CeG_9ssmanager.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @184, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsa7TLgTh0CeG_9ssmanager(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCsa7TLgTh0CeG_9ssmanager(ptr nonnull %i.a) #45
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
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
  %i.br = getelementptr i8, ptr %i.bk, i64 -1     ; 2 uses
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
end_hunk_0
begin_hunk_1_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager:bb.a
  %i.ds = inttoptr i64 %.sroa.8.1 to ptr
  %i.dt = insertvalue { i64, ptr } poison, i64 %.sroa.05.1, 0
  %i.du = insertvalue { i64, ptr } %i.dt, ptr %i.ds, 1
  ret { i64, ptr } %i.du

bb.ac:                                            ; preds = %.lr.ph
  %i.dv = ptrtoint ptr %i.ak to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.ad:                                            ; preds = %.lr.ph
  %i.dw = icmp eq ptr %i.ak, null
  %i.dx = load i64, ptr %i.d, align 8, !noundef !80 ; 5 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy)
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dz = sub nsw i64 %i.dx, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsa7TLgTh0CeG_9ssmanager.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.ea = load i64, ptr %0, align 8, !range !82, !noundef !80 ; 4 uses
  %i.eb = sub nsw i64 %i.ea, %i.dx
  %i.ec = icmp ult i64 %i.eb, 32                  ; 2 uses
  %i.ed = icmp eq i64 %i.ea, %i.g
  %or.cond = and i1 %i.ed, %i.ec
  br i1 %or.cond, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
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
  %i.br = getelementptr i8, ptr %.sroa.0.0.i.i.ph.peel, i64 -1 ; 2 uses
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

end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux28set_disable_ip_fragmentationNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsa7TLgTh0CeG_9ssmanager:bb.a
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %0, label %bb.e, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @__errno_location() #45
  %i.g = load i32, ptr %i.f, align 4, !noundef !80 ; 2 uses
  %i.h = load atomic ptr, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.h, @300
  br i1 %.not.i, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.d, !prof !89

bb.d:                                             ; preds = %bb.c
  call void @_RNvNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #45
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 4
  %i.i = call noundef i32 @_RNvXNtNtNtCsczhfDQ1qNkX_5tokio3net3udp3sysNtB4_9UdpSocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #45
  %i.j = call noundef i32 @setsockopt(i32 noundef %i.i, i32 noundef 41, i32 noundef 23, ptr noundef nonnull %i.a, i32 noundef 4) #45
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @__errno_location() #45
  %i.m = load i32, ptr %i.l, align 4, !noundef !80
  %i.n = load atomic ptr, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i1 = icmp eq ptr %i.n, @300
  br i1 %.not.i1, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit2, label %bb.h, !prof !89

bb.h:                                             ; preds = %bb.g
  call void @_RNvNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #45
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit2

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit2: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

bb.i:                                             ; preds = %bb.b, %bb.f, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit ], [ null, %bb.f ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.d, %bb.c, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit2
  %.sroa.0.1.in.in.in.in = phi i32 [ %i.m, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit2 ], [ %i.g, %bb.c ], [ %i.g, %bb.d ]
  %.sroa.0.1.in.in.in = sext i32 %.sroa.0.1.in.in.in.in to i64
  %.sroa.0.1.in.in = shl nsw i64 %.sroa.0.1.in.in.in, 32
  %.sroa.0.1.in = or disjoint i64 %.sroa.0.1.in.in, 2
  %.sroa.0.1 = inttoptr i64 %.sroa.0.1.in to ptr
  br label %bb.i
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 1041) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16559)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !82, !alias.scope !16559, !noundef !80 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %i.f = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.b)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp samesign ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i, i64 %i.f) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16559
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.j, align 8, !alias.scope !16559
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %i.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 1041) %4) #45, !noalias !16559
  %i.k = load i64, ptr %i.a, align 8, !range !87, !noalias !16559, !noundef !80
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.m, align 8, !range !170, !noalias !16559, !noundef !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !16559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16559
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #54
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !noalias !16559, !nonnull !80, !noundef !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16559
  store ptr %i.q, ptr %i.j, align 8, !alias.scope !16559
  %i.r = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.r)
  store i64 %i.i, ptr %0, align 8, !alias.scope !16559
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6decode5innerNtNtB6_15general_purpose14GeneralPurposeECsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = and i64 %2, 3
  %i.c = add nuw i64 %2, 3
  %i.d = lshr i64 %i.c, 2                         ; 2 uses
  %i.e = mul nuw nsw i64 %i.d, 3                  ; 7 uses
  %i.f = icmp eq i64 %i.d, 0                      ; 2 uses
  br i1 %i.f, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !16566
  %i.g = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef range(i64 1, 17) 1) #45, !noalias !16566 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.g to i64
  br label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.e) #54, !noalias !16567
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.a, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.i, %bb.c ], [ 1, %bb.a ]
  %i.j = inttoptr i64 %.sroa.10.0.i to ptr        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs8xUA7ZdjTE9_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324) @227, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %i.j, i64 noundef %i.e, i64 noundef %i.b, i64 noundef %i.e) #45
  %i.k = load i64, ptr %i.a, align 8, !range !88, !noundef !80
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.e, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCsa7TLgTh0CeG_9ssmanager.exit

bb.e:                                             ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.011.0.copyload = load i8, ptr %i.m, align 8 ; 2 uses
  %i.n = icmp eq i8 %.sroa.011.0.copyload, -1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !92

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.410.sroa.4.sroa.4.0..sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.410.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.410.sroa.4.sroa.4.0..sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = call i64 @llvm.umin.i64(i64 %.sroa.410.sroa.4.sroa.4.0.copyload, i64 %i.e)
  store i64 %i.e, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select, ptr %.sroa.5.0..sroa_idx5, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.h, %bb.g, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCsa7TLgTh0CeG_9ssmanager.exit
  ret void

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @377, ptr noundef nonnull inttoptr (i64 139 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @379) #55
  unreachable

bb.g:                                             ; preds = %bb.e
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.5.sroa.0.0.copyload = load i56, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.027.0.insert.ext = zext i8 %.sroa.011.0.copyload to i64
  %.sroa.027.1.insert.ext = zext i56 %.sroa.5.sroa.0.0.copyload to i64
  %.sroa.027.1.insert.shift = shl nuw i64 %.sroa.027.1.insert.ext, 8
  %.sroa.027.1.insert.insert = or disjoint i64 %.sroa.027.1.insert.shift, %.sroa.027.0.insert.ext
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.027.1.insert.insert, ptr %i.o, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.4.0.copyload, ptr %.sroa.430.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !16568
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16580
  store ptr %i.c, ptr %i.b, align 8, !noalias !16580
  store i64 32, ptr %i.d, align 8, !noalias !16580
  store i64 0, ptr %i.e, align 8, !noalias !16580
  store i64 32, ptr %i.f, align 8, !noalias !16580
  %.val.i = load ptr, ptr %.0.val, align 8, !noalias !16581, !nonnull !80, !noundef !80
  %i.h = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !16581 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 9 uses
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16580
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !noalias !16580, !noundef !80 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !16580, !noundef !80 ; 10 uses
  %.not7.i = icmp ugt i64 %i.m, %i.l
  br i1 %.not7.i, label %bb.e, label %bb.g, !prof !98

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !16581
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.j to i64                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16580
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split12
    i64 1, label %.split10
  ], !prof !167

default.unreachable:                              ; preds = %bb.f
  unreachable

.split:                                           ; preds = %bb.f
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !80, !noundef !80
  %i.u = call noundef zeroext i1 %i.t(i32 noundef %i.q) #45, !inline_history !47
  br i1 %i.u, label %.thread14, label %.loopexit

.split12:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !168, !noundef !80
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread14, label %.loopexit

.split10:                                         ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.j, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !168, !noundef !80
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.l, label %.loopexit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.f, %.thread
  %i.ab = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread ], [ %i.j, %bb.f ] ; 2 uses
  %.sroa.4.1.i.ph7 = phi i64 [ 55834574851, %.thread ], [ %i.n, %bb.f ] ; 2 uses
  %i.ac = lshr i64 %.sroa.4.1.i.ph7, 32
  %i.ad = icmp ult ptr %i.ab, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.ac to i8
  %spec.select.i.i.i = select i1 %i.ad, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ae = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.af, label %bb.k, label %.loopexit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16580
  %i.ag = inttoptr i64 %i.m to ptr
  %i.ah = icmp ult i64 %i.m, 33
  br i1 %i.ah, label %bb.h, label %bb.j, !prof !102

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !16582)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !16583, !noundef !80 ; 5 uses
  %i.ak = load i64, ptr %0, align 8, !range !82, !alias.scope !16583, !noundef !80
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.m, %i.al
  br i1 %i.am, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !92

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %bb.h
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aj, i64 noundef %i.m, i64 noundef 1, i64 noundef 1) #45
  %i.an = load i64, ptr %i.ai, align 8, !alias.scope !16582, !noundef !80 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.h
  %i.ap = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i3 = icmp eq i64 %i.m, 0
  br i1 %.not.i3, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i
  %i.aq = phi i64 [ %i.an, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !16582, !nonnull !80, !noundef !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.c, i64 %i.m, i1 false), !noalias !16582
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i ]
  %i.av = add nuw i64 %i.au, %i.m
  store i64 %i.av, ptr %i.ai, align 8, !alias.scope !16582
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #55
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split10, %.split12, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.3.0 = phi ptr [ %i.ag, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit ], [ %i.j, %.split12 ], [ %i.j, %.split10 ], [ %i.ab, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.j, %.split ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit ], [ 1, %.split12 ], [ 1, %.split10 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ax = insertvalue { i64, ptr } %i.aw, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ax

.thread14:                                        ; preds = %.split, %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16584
  %i.ay = and i64 %.sroa.4.1.i.ph7, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

bb.l:                                             ; preds = %.split10
  %i.ba = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16584
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  store ptr %i.ba, ptr %i.g, align 8, !alias.scope !16585, !noalias !16584
  store i8 3, ptr %i.a, align 8, !alias.scope !16585, !noalias !16584
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #45, !noalias !16584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.k, %bb.l, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16584
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16607
  store ptr %i.c, ptr %i.b, align 8, !noalias !16607
  store i64 32, ptr %i.d, align 8, !noalias !16607
  store i64 0, ptr %i.e, align 8, !noalias !16607
  store i64 32, ptr %i.f, align 8, !noalias !16607
  %i.h = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !16608 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, ptr } %i.h, 1        ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !noalias !16607, !noundef !80 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !16607, !noundef !80 ; 9 uses
  %.not7.i.i.i = icmp ugt i64 %i.m, %i.l
  br i1 %.not7.i.i.i, label %bb.e, label %bb.f, !prof !98

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !16608
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16607
  %.not.i6.i.i = icmp ugt i64 %i.m, 32
  br i1 %.not.i6.i.i, label %bb.g, label %bb.i, !prof !92

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1080, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1684) #55, !noalias !16609
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16607
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16607
  %i.n = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split12
    i64 1, label %.split10
  ], !prof !167

default.unreachable:                              ; preds = %bb.h
  unreachable

.split:                                           ; preds = %bb.h
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !80, !noundef !80
  %i.u = call noundef zeroext i1 %i.t(i32 noundef %i.q) #45, !inline_history !47
  br i1 %i.u, label %.thread14, label %.loopexit

.split12:                                         ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !168, !noundef !80
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread14, label %.loopexit

.split10:                                         ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.k, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !168, !noundef !80
  %i.aa = icmp eq i8 %i.z, 35
  br i1 %i.aa, label %bb.l, label %.loopexit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.h, %.thread
  %i.ab = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread ], [ %i.k, %bb.h ] ; 2 uses
  %.sroa.4.1.i.ph7 = phi i64 [ 55834574851, %.thread ], [ %i.n, %bb.h ] ; 2 uses
  %i.ac = lshr i64 %.sroa.4.1.i.ph7, 32
  %i.ad = icmp ult ptr %i.ab, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.ac to i8
  %spec.select.i.i.i = select i1 %i.ad, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ae = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.af, label %bb.k, label %.loopexit

bb.i:                                             ; preds = %bb.f
  %i.ag = inttoptr i64 %i.m to ptr
  call void @llvm.experimental.noalias.scope.decl(metadata !16610)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !16611, !noundef !80 ; 5 uses
  %i.aj = load i64, ptr %0, align 8, !range !82, !alias.scope !16611, !noundef !80
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = icmp ugt i64 %i.m, %i.ak
  br i1 %i.al, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !92

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %bb.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ai, i64 noundef %i.m, i64 noundef 1, i64 noundef 1) #45
  %i.am = load i64, ptr %i.ah, align 8, !alias.scope !16610, !noundef !80 ; 2 uses
  %i.an = icmp sgt i64 %i.am, -1
  call void @llvm.assume(i1 %i.an)
  br label %bb.j

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.i
  %i.ao = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.ao)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i
  %i.ap = phi i64 [ %i.am, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.thread.i ], [ %i.ai, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !16610, !nonnull !80, !noundef !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.c, i64 %i.m, i1 false), !noalias !16610
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.j
  %i.at = phi i64 [ %i.ap, %bb.j ], [ %i.ai, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsa7TLgTh0CeG_9ssmanager.exit.i ]
  %i.au = add nuw i64 %i.at, %i.m
  store i64 %i.au, ptr %i.ah, align 8, !alias.scope !16610
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split10, %.split12, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.3.0 = phi ptr [ %i.ag, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit ], [ %i.k, %.split12 ], [ %i.k, %.split10 ], [ %i.ab, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.k, %.split ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsa7TLgTh0CeG_9ssmanager.exit ], [ 1, %.split12 ], [ 1, %.split10 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aw = insertvalue { i64, ptr } %i.av, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.aw

.thread14:                                        ; preds = %.split, %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16612
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16612
  %i.ax = and i64 %.sroa.4.1.i.ph7, 1095216660480
  %i.ay = icmp ne i64 %i.ax, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.ay)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

bb.l:                                             ; preds = %.split10
  %i.az = getelementptr i8, ptr %i.k, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16612
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  store ptr %i.az, ptr %i.g, align 8, !alias.scope !16613, !noalias !16612
  store i8 3, ptr %i.a, align 8, !alias.scope !16613, !noalias !16612
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #45, !noalias !16612
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.k, %bb.l, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16612
  br label %bb.b
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvNvXNvXs2_NtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque5drainINtBb_5DrainppENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropINtB5_9DropGuardppEB1j_4drop27join_head_and_tail_wrappingNtNtNtB1p_3net11socket_addr10SocketAddrNtNtBh_5alloc6GlobalECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #14 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !80 ; 2 uses
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !82, !noundef !80 ; 5 uses
  %.not = icmp ult i64 %i.e, %i.f
  %i.g = select i1 %.not, i64 0, i64 %i.f
  %.sroa.04.0 = sub nuw i64 %i.e, %i.g
  %i.h = add i64 %i.d, %2                         ; 2 uses
  %.not22 = icmp ult i64 %i.h, %i.f
  %i.i = select i1 %.not22, i64 0, i64 %i.f
  %.sroa.05.0 = sub nuw i64 %i.h, %i.i
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !80 ; 2 uses
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = load i64, ptr %0, align 8, !range !82, !noundef !80 ; 3 uses
  %.not23 = icmp ult i64 %i.l, %i.m
  %i.n = select i1 %.not23, i64 0, i64 %i.m
  %.sroa.05.2 = sub nuw i64 %i.l, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.val = phi i64 [ %i.m, %bb.c ], [ %i.f, %bb.b ]
  %.sroa.05.1 = phi i64 [ %.sroa.05.2, %bb.c ], [ %.sroa.05.0, %bb.b ]
  %.sroa.04.1 = phi i64 [ %i.k, %bb.c ], [ %.sroa.04.0, %bb.b ]
  %.sroa.0.0 = phi i64 [ %2, %bb.c ], [ %3, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_RNCNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound12http_connectNtB7_17HttpConnectClient9establishNtNtB9_6stream19OutboundProxyStreamE0s2_0Csa7TLgTh0CeG_9ssmanager:bb.a
  br i1 %i.cu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cv = load i64, ptr %i.av, align 8, !range !164, !alias.scope !18389, !noundef !80 ; 2 uses
  %i.cw = icmp ne i64 %i.cv, -9223372036854775805
  call void @llvm.assume(i1 %i.cw)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cv, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !18389 ; 2 uses
  store i8 -1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !18389
  %.not21.i.i.i.i.i.i = icmp eq i8 %.sroa.6.0.copyload.i.i.i.i.i.i, -1
  br i1 %.not21.i.i.i.i.i.i, label %bb.da, label %bb.cz

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !18390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !18391
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.0.i.i.i.i.i.i.i)
  %i.cx = load i64, ptr %i.ax, align 8, !range !88, !alias.scope !18392, !noundef !80
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cx, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.sink.split.i.i.i.i.i.i, label %_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtB5_8Dispatch10poll_readyCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtB5_8Dispatch10poll_readyCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.cy = call fastcc noundef zeroext i1 @_RNvMs5_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8CallbackINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE13poll_canceledCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #45, !noalias !18393
  br i1 %i.cy, label %bb.j, label %.thread.sink.split.i.i.i.i.i.i

bb.j:                                             ; preds = %_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtB5_8Dispatch10poll_readyCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18394)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !18395
  %i.cz = load i8, ptr %i.ay, align 8, !range !93, !alias.scope !18396, !noundef !80
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = load i32, ptr %i.az, align 8, !range !103, !alias.scope !18396, !noundef !80 ; 2 uses
  %.not.i27.i.i.i.i.i.i.i = icmp eq i32 %i.db, -1
  br i1 %.not.i27.i.i.i.i.i.i.i, label %bb.l, label %bb.z

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i, %bb.aa, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.bg, i64 7, i1 false), !noalias !18397
  %i.dc = load <2 x i64>, ptr %i.at, align 8, !alias.scope !18396
  %i.dd = load i8, ptr %i.bi, align 2, !range !93, !alias.scope !18396, !noundef !80
  %i.de = load i8, ptr %i.bj, align 4, !range !93, !alias.scope !18396, !noundef !80
  call void @llvm.experimental.noalias.scope.decl(metadata !18398)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !18399
  %i.df = load i64, ptr %i.ap, align 8, !range !87, !alias.scope !18400, !noundef !80
  %i.dg = load i64, ptr %i.bm, align 8, !alias.scope !18400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !18399
  store <2 x i64> %i.dc, ptr %i.q, align 16, !noalias !18401
  store <2 x ptr> %i.be, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !18401
  store ptr %i.bk, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !18401
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !18401
  store i8 %i.dd, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !18401
  store i8 %i.de, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !18401
  call void @llvm.experimental.noalias.scope.decl(metadata !18402)
  %i.dh = load i64, ptr %i.bn, align 8, !alias.scope !18403, !noundef !80 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %.thread.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = trunc nuw i64 %i.df to i1
  br i1 %i.dj, label %bb.o, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.dk = load ptr, ptr %i.bl, align 8, !alias.scope !18403, !nonnull !80, !noundef !80
  %i.dl = call noundef zeroext i1 @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role16is_complete_fast(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dk, i64 noundef %i.dh, i64 noundef %i.dg) #45, !noalias !18404
  br i1 %i.dl, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !18399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18399
  br label %bb.r

_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @_RNvXs0_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14roleNtB5_6ClientNtB7_16Http1Transaction5parse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.q) #45, !noalias !18405
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !18399 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !18399
  %i.dm = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.dm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  %i.dn = load i8, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !range !133, !noalias !18399, !noundef !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18399
  %i.do = call noundef nonnull align 8 ptr @_RNvXs2_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_5ParseE4from(i8 noundef %i.dn) #45, !noalias !18405
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  %.sroa.428.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !18399
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i.sroa.4.0..sroa.529.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !18399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !18399
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.r, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q, %.thread.i.i.i.i.i.i.i.i
  %i.dp = load i8, ptr %i.bo, align 8, !range !93, !alias.scope !18400, !noundef !80
  %i.dq = trunc nuw i8 %i.dp to i1
  %.sroa.011.0.in.v.i.i.i.i.i.i.i.i.i = select i1 %i.dq, i64 1264, i64 1272
  %.sroa.011.0.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.011.0.in.v.i.i.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.011.0.in.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !18400, !noundef !80
  %i.dr = load i64, ptr %i.bn, align 8, !alias.scope !18400, !noundef !80 ; 3 uses
  %.not36.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dr, %.sroa.011.0.i.i.i.i.i.i.i.i.i
  br i1 %.not36.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not37.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not37.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ds = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error13new_too_large() #45, !noalias !18405
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  store i64 %i.dr, ptr %i.bm, align 8, !alias.scope !18400
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.u ], [ 0, %bb.s ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !18400
  %i.dt = call fastcc { i64, ptr } @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE17poll_read_from_ioCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(1808) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #45, !noalias !18405 ; 2 uses
  %i.du = extractvalue { i64, ptr } %i.dt, 0
  %i.dv = extractvalue { i64, ptr } %i.dt, 1      ; 2 uses
  switch i64 %i.du, label %bb.w [
    i64 2, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread151.i.i.i.i.i.i.i.i
    i64 0, label %bb.x
  ]

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread151.i.i.i.i.i.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  %i.dw = load i8, ptr %i.ay, align 8, !range !93, !alias.scope !18396, !noundef !80
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.bx, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsa7TLgTh0CeG_9ssmanager.exit.thread57.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.dy = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_io(ptr noundef nonnull %i.dv) #45, !noalias !18405
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.dz = icmp eq ptr %i.dv, null
  br i1 %i.dz, label %bb.y, label %bb.m

bb.y:                                             ; preds = %bb.x
  %i.ea = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_incomplete() #45, !noalias !18405
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.w, %bb.t, %bb.p
  %.sroa.11.1.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.ds, %bb.t ], [ %i.ea, %bb.y ], [ %i.do, %bb.p ], [ %i.dy, %bb.w ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18406)
  call void @llvm.experimental.noalias.scope.decl(metadata !18407)
  %i.eb = load i8, ptr %i.bp, align 1, !range !95, !alias.scope !18408, !noundef !80
  %i.ec = icmp ne i8 %i.eb, 0
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State10close_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.at) #45, !noalias !18409
  call void @llvm.experimental.noalias.scope.decl(metadata !18410)
  %i.ed = load i64, ptr %i.bn, align 8, !alias.scope !18411, !noundef !80 ; 3 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5143.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(112) %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !18412
  store i64 0, ptr %i.ap, align 8, !alias.scope !18400
  %i.ef = inttoptr i64 %.sroa.428.0.copyload.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  store i64 %.pr.i.i.i.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !18412
  store ptr %i.ef, ptr %.sroa.4142.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !18412
  store i8 0, ptr %i.ay, align 8, !alias.scope !18396
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !18396, !noundef !80 ; 3 uses
  %.val117.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !18396 ; 4 uses
  %i.eg = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %i.eg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit124.i.i.i.i.i.i.i.i, label %bb.aq

bb.z:                                             ; preds = %bb.k
  %i.eh = load i64, ptr %i.ba, align 8, !alias.scope !18396, !noundef !80
  %i.ei = call { i64, i32 } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time3now(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb) #45, !noalias !18413 ; 2 uses
  %i.ej = extractvalue { i64, i32 } %i.ei, 0
  %i.ek = extractvalue { i64, i32 } %i.ei, 1
  %i.el = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.ej, i32 noundef %i.ek, i64 noundef %i.eh, i32 noundef %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1094) #45, !noalias !18413 ; 2 uses
  %i.em = extractvalue { i64, i32 } %i.el, 0      ; 2 uses
  %i.en = extractvalue { i64, i32 } %i.el, 1      ; 2 uses
  store i8 1, ptr %i.ay, align 8, !alias.scope !18396
  %i.eo = load ptr, ptr %i.bc, align 8, !alias.scope !18396, !noundef !80
  %.not114.i.i.i.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not114.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc, i64 noundef %i.em, i32 noundef %i.en) #45, !noalias !18413
  br label %bb.l

bb.ab:                                            ; preds = %bb.z
  %i.ep = call { ptr, ptr } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time11sleep_until(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bb, i64 noundef %i.em, i32 noundef %i.en) #45, !noalias !18413 ; 2 uses
  %i.eq = extractvalue { ptr, ptr } %i.ep, 0      ; 2 uses
  %i.er = extractvalue { ptr, ptr } %i.ep, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eq) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.er) ]
  %.val118.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !18396, !noundef !80 ; 3 uses
  %.val119.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !18396 ; 4 uses
  %i.es = icmp eq ptr %.val118.i.i.i.i.i.i.i.i, null
  br i1 %i.es, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val119.i.i.i.i.i.i.i.i) ]
  %i.et = load ptr, ptr %.val119.i.i.i.i.i.i.i.i, align 8, !invariant.load !80, !noalias !18413 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void %i.et(ptr noundef nonnull %.val118.i.i.i.i.i.i.i.i) #53, !noalias !18413, !inline_history !18182
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %.val119.i.i.i.i.i.i.i.i, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !82, !invariant.load !80, !noalias !18413 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %.val119.i.i.i.i.i.i.i.i, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !84, !invariant.load !80, !noalias !18413
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val118.i.i.i.i.i.i.i.i, i64 noundef %i.ev, i64 noundef range(i64 1, -9223372036854775807) %i.ey) #45, !noalias !18413
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae, %bb.ab
  store ptr %i.eq, ptr %i.bc, align 8, !alias.scope !18396
  store ptr %i.er, ptr %i.bd, align 8, !alias.scope !18396
  br label %bb.l

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i
  %i.ez = load ptr, ptr %i.bl, align 8, !alias.scope !18411, !nonnull !80, !noundef !80
  br label %bb.af

_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.0.lcssa8.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %i.ed, %bb.ag ]
  call void @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %.sroa.0.0.lcssa8.i.i.i.i.i.i.i.i.i.i) #45, !noalias !18409
  %.val3.i.pre.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !18408
  br label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ag, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.fc, %bb.ag ] ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i
  %i.fb = load i8, ptr %i.fa, align 1, !noalias !18414, !noundef !80
  switch i8 %i.fb, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i [
    i8 13, label %bb.ag
    i8 10, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.fc = add nuw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fc, %i.ed
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i, label %bb.af

_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i
  %.val3.i.pre.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i ], [ %.val3.i.pre.pre.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 16
  %i.fe = load i8, ptr %i.fd, align 8, !range !144, !alias.scope !18407, !noalias !18413, !noundef !80
  %i.ff = icmp eq i8 %i.fe, 0
  %i.fg = icmp ne i64 %.val3.i.pre.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ec, %i.fg
  %or.cond20.i.i.i.i.i.i.i.i.i = select i1 %i.ff, i1 true, i1 %or.cond.i.i.i.i.i.i.i.i.i
  br i1 %or.cond20.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !18415)
  call void @llvm.experimental.noalias.scope.decl(metadata !18416)
  %i.fh = load i64, ptr %i.av, align 8, !range !164, !alias.scope !18417, !noundef !80 ; 2 uses
  %i.fi = icmp ne i64 %i.fh, -9223372036854775805
  call void @llvm.assume(i1 %i.fi)
  %i.fj = icmp eq i64 %i.fh, -9223372036854775806
  %i.fk = icmp ugt i64 %.val3.i.pre.i.i.i.i.i.i.i.i.i, 23
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !18417, !nonnull !80, !noundef !80 ; 2 uses
  %i.fl = load i128, ptr %.val2.i.i.i.i.i.i.i.i.i.i, align 1
  %i.fm = xor i128 %i.fl, 13360757032698011774056258059647930960
  %i.fn = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.fo = load i64, ptr %i.fn, align 1
  %i.fp = zext i64 %i.fo to i128
  %i.fq = xor i128 %i.fp, 724246167324658189
  %i.fr = or i128 %i.fm, %i.fq
  %i.fs = icmp ne i128 %i.fr, 0
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ai, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i
  %i.fv = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_version_h2() #45, !noalias !18418
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, align 8, !alias.scope !18419, !noalias !18420, !noundef !80 ; 3 uses
  %i.fw = getelementptr i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fw, align 8, !alias.scope !18419, !noalias !18420 ; 4 uses
  %i.fx = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.fx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.fy = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !80, !noalias !18421 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void %i.fy(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i) #53, !noalias !18421, !inline_history !18188
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.fz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !range !82, !invariant.load !80, !noalias !18421 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.gd = load i64, ptr %i.gc, align 8, !range !84, !invariant.load !80, !noalias !18421
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ga, i64 noundef range(i64 1, -9223372036854775807) %i.gd) #45, !noalias !18421
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al, %bb.ai
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 noundef 24, i64 noundef 8) #45, !noalias !18422
  br label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i

bb.am:                                            ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State11close_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.at) #45, !noalias !18409
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, align 8, !alias.scope !18407, !noalias !18423, !noundef !80 ; 3 uses
  %i.ge = getelementptr i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ge, align 8, !alias.scope !18407, !noalias !18423 ; 4 uses
  %i.gf = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.gf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.gg = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !80, !noalias !18424 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void %i.gg(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i) #53, !noalias !18424, !inline_history !18191
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !range !82, !invariant.load !80, !noalias !18424 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.gk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.gl = load i64, ptr %i.gk, align 8, !range !84, !invariant.load !80, !noalias !18424
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.gi, i64 noundef range(i64 1, -9223372036854775807) %i.gl) #45, !noalias !18424
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap, %bb.am
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 noundef 24, i64 noundef 8) #45, !noalias !18425
  br label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val117.i.i.i.i.i.i.i.i) ]
  %i.gm = load ptr, ptr %.val117.i.i.i.i.i.i.i.i, align 8, !invariant.load !80, !noalias !18413 ; 2 uses
  %.not.i.i.i122.i.i.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not.i.i.i122.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void %i.gm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #53, !noalias !18413, !inline_history !18182
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gn = getelementptr inbounds nuw i8, ptr %.val117.i.i.i.i.i.i.i.i, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !range !82, !invariant.load !80, !noalias !18413 ; 2 uses
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit124.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.gq = getelementptr inbounds nuw i8, ptr %.val117.i.i.i.i.i.i.i.i, i64 16
  %i.gr = load i64, ptr %i.gq, align 8, !range !84, !invariant.load !80, !noalias !18413
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) %i.gr) #45, !noalias !18413
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit124.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit124.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123.i.i.i.i.i.i.i.i, %bb.as, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.bc, align 8, !alias.scope !18396
  store i8 0, ptr %i.bj, align 4, !alias.scope !18396
  call void @llvm.experimental.noalias.scope.decl(metadata !18426)
  %i.gs = load ptr, ptr %i.bk, align 8, !alias.scope !18427, !noundef !80 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaI3lGUjttVO_5hyper3ext13informational15OnInformationalEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit124.i.i.i.i.i.i.i.i
  %i.gu = atomicrmw add ptr %i.gs, i64 -1 release, align 8, !noalias !18428
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaI3lGUjttVO_5hyper3ext13informational15OnInformationalEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDNtNtNtCsaI3lGUjttVO_5hyper3ext13informational23OnInformationalCallbackNtNtCsf3Ta7LF998c_4core6marker4SendNtB1R_4SyncEL_E9drop_slowCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bk) #52, !noalias !18413
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaI3lGUjttVO_5hyper3ext13informational15OnInformationalEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaI3lGUjttVO_5hyper3ext13informational15OnInformationalEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i: ; preds = %bb.au, %bb.at, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsa7TLgTh0CeG_9ssmanager.exit124.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_RNCNCNvMs3_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB9_15TcpServerClient5serve00Csa7TLgTh0CeG_9ssmanager:bb.a
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %.sroa.4.0..sroa_idx24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx24.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i.i.i.i, i64 7, i1 false), !noalias !20472
  %.sroa.722.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.722.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.722.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !20480, !noalias !20472 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.625.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !20472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !20472
  store i8 %i.gb, ptr %i.af, align 8, !noalias !20472
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %.sroa.722.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  call void @_RNvMNtCskLEkjrY29GY_16rustls_pki_types11server_nameNtB2_10ServerName8to_owned(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af) #45, !noalias !20473
  call void @llvm.experimental.noalias.scope.decl(metadata !20481)
  %i.ge = icmp eq i8 %i.gb, 0
  %i.gf = ptrtoint ptr %.sroa.722.0.copyload.i.i.i.i.i to i64
  br i1 %i.ge, label %bb.ao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  call void @llvm.experimental.noalias.scope.decl(metadata !20482)
  %i.gg = icmp sgt ptr %.sroa.722.0.copyload.i.i.i.i.i, null
  br i1 %i.gg, label %bb.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.625.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !20483, !noalias !20472, !nonnull !80, !noundef !80
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !20484
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !20472
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.740.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1145.i.i.i.i.i)
  store i8 0, ptr %i.fo, align 8, !noalias !20472
  %.val7.i.i.i.i.i = load ptr, ptr %i.fx, align 8, !noalias !20472, !nonnull !80, !noundef !80 ; 4 uses
  %.val8.i.i.i.i.i = load i8, ptr %i.fy, align 8, !noalias !20472
  call void @llvm.experimental.noalias.scope.decl(metadata !20485)
  call void @llvm.experimental.noalias.scope.decl(metadata !20486)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !20487
  %i.gh = getelementptr i8, ptr %.val7.i.i.i.i.i, i64 40
  %.val.i.i9.i.i.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !20488, !nonnull !80, !noundef !80
  %i.gi = getelementptr i8, ptr %.val7.i.i.i.i.i, i64 48
  %.val17.i.i.i.i.i.i.i = load i64, ptr %i.gi, align 8, !noalias !20488, !noundef !80
  call fastcc void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.z, ptr nonnull %.val.i.i9.i.i.i.i.i, i64 %.val17.i.i.i.i.i.i.i) #45, !noalias !20488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !20489
  %i.gj = atomicrmw add ptr %.val7.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !20488
  %i.gk = icmp slt i64 %i.gj, 0
  br i1 %i.gk, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @_RNvMs2_NtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connectionNtB5_16ClientConnection13new_with_alpn(ptr noalias nofree noundef nonnull sret([1056 x i8]) align 8 captures(none) dereferenceable(1056) %i.y, ptr noundef nonnull %.val7.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z) #45, !noalias !20490
  %i.gl = load i64, ptr %i.y, align 8, !range !88, !noalias !20489, !noundef !80 ; 2 uses
  %i.gm = icmp eq i64 %i.gl, 2
  br i1 %i.gm, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !20489
  %i.gn = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.gn, i64 64, i1 false), !noalias !20489
  %i.go = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCsb28OZjLZAOu_6rustls5error5ErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.x) #52, !noalias !20488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !20489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !20489
  br label %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.aq
  %.sroa.534.0..sroa_idx35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.534.0.copyload36.i.i.i.i.i = load ptr, ptr %.sroa.534.0..sroa_idx35.i.i.i.i.i, align 8, !noalias !20491
  %.sroa.637.0..sroa_idx38.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.637.0.copyload39.i.i.i.i.i = load ptr, ptr %.sroa.637.0..sroa_idx38.i.i.i.i.i, align 8, !noalias !20491
  %.sroa.740.0..sroa_idx41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %.sroa.740.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(856) %.sroa.740.0..sroa_idx41.i.i.i.i.i, i64 856, i1 false), !noalias !20491
  %.sroa.4.0..sroa_idx6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 880
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx6.i.i.i.i.i.i.i, align 8, !noalias !20489 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(175) %.sroa.8.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(175) %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i, i64 175, i1 false), !noalias !20491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !20489
  %i.gp = trunc nuw i8 %.val8.i.i.i.i.i to i1
  %.off.i.i.i.i.i.i.i = add i8 %.sroa.4.0.copyload.i.i.i.i.i.i.i, -1
  %switch.i.i.i.i.i.i.i = icmp ult i8 %.off.i.i.i.i.i.i.i, 2
  %i.gq = select i1 %i.gp, i1 %switch.i.i.i.i.i.i.i, i1 false
  %.sroa.010.0.i.i.i.i.i.i.i = select i1 %i.gq, i64 0, i64 -9223372036854775808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1145.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !20492, !noalias !20472
  br label %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.sroa.943.0.i.i.i.i.i = phi i64 [ undef, %bb.as ], [ %.sroa.010.0.i.i.i.i.i.i.i, %bb.at ]
  %.sroa.742.0.i.i.i.i.i = phi i8 [ undef, %bb.as ], [ %.sroa.4.0.copyload.i.i.i.i.i.i.i, %bb.at ]
  %.sroa.637.0.i.i.i.i.i = phi ptr [ %i.go, %bb.as ], [ %.sroa.637.0.copyload39.i.i.i.i.i, %bb.at ] ; 2 uses
  %.sroa.534.0.i.i.i.i.i = phi ptr [ %i.fl, %bb.as ], [ %.sroa.534.0.copyload36.i.i.i.i.i, %bb.at ] ; 2 uses
  %.sroa.032.0.i.i.i.i.i = phi i64 [ 4, %bb.as ], [ %i.gl, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !20487
  %.sroa.950.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %.sroa.950.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(856) %.sroa.740.i.i.i.i.i, i64 856, i1 false), !noalias !20472
  %.sroa.1152.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(175) %.sroa.1152.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(175) %.sroa.8.i.i.i.i.i, i64 175, i1 false), !noalias !20472
  %.sroa.1455.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1455.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1145.i.i.i.i.i, i64 16, i1 false), !noalias !20472
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.740.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1145.i.i.i.i.i)
  %.sroa.748.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3712
  store ptr %.sroa.534.0.i.i.i.i.i, ptr %.sroa.748.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  %.sroa.849.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3720
  store ptr %.sroa.637.0.i.i.i.i.i, ptr %.sroa.849.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  %.sroa.1051.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4584
  store i8 %.sroa.742.0.i.i.i.i.i, ptr %.sroa.1051.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  %.sroa.1253.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4760
  store i64 %.sroa.943.0.i.i.i.i.i, ptr %.sroa.1253.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  %.sroa.1354.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4768
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.1354.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  %.sroa.1556.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4792
  store ptr %i.fl, ptr %.sroa.1556.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  %.sroa.16.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4800
  store ptr null, ptr %.sroa.16.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  %.sroa.18.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4816
  store i8 0, ptr %.sroa.18.0..sroa_idx.i.i.i.i.i, align 8, !noalias !20472
  br label %bb.au

bb.au:                                            ; preds = %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i, %bb.al
  %i.gr = phi ptr [ %i.fd, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %i.bi, %bb.al ] ; 4 uses
  %i.gs = phi ptr [ %i.fe, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.phi.trans.insert.i, %bb.al ] ; 4 uses
  %i.gt = phi ptr [ %i.ff, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %i.bt, %bb.al ] ; 3 uses
  %i.gu = phi ptr [ %i.fg, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.phi.trans.insert284.i.i, %bb.al ] ; 4 uses
  %i.gv = phi ptr [ %i.fh, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %i.dy, %bb.al ] ; 3 uses
  %i.gw = phi ptr [ %i.fi, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i, %bb.al ] ; 3 uses
  %i.gx = phi ptr [ %i.fm, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.phi.trans.insert.i.i.i.i, %bb.al ] ; 3 uses
  %i.gy = phi ptr [ %i.fn, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %i.fc, %bb.al ] ; 9 uses
  %.sroa.8.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.637.0.i.i.i.i.i, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.sroa.8.0.copyload.i.i.pre.i.i.i.i.i, %bb.al ] ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i = phi ptr [ %.sroa.534.0.i.i.i.i.i, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.sroa.6.0.copyload.i.i.pre.i.i.i.i.i, %bb.al ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = phi i64 [ %.sroa.032.0.i.i.i.i.i, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.pre.i.i.i.i.i, %bb.al ] ; 3 uses
  %.sroa.0.078.i.i.i.i.i = phi ptr [ %i.fl, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i ], [ undef, %bb.al ]
  call void @llvm.experimental.noalias.scope.decl(metadata !20493)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !20494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !20495
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3712
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3728 ; 2 uses
  %.sroa.97.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3768 ; 2 uses
  %.sroa.97.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !20476, !noalias !20472 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3776 ; 2 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !20476, !noalias !20472 ; 4 uses
  store i64 2, ptr %i.gy, align 8, !alias.scope !20476, !noalias !20472
  %i.gz = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 1)
  switch i64 %i.gz, label %bb.av [
    i64 0, label %bb.aw
    i64 2, label %bb.ax
    i64 3, label %bb.ay
    i64 1, label %bb.az
  ], !prof !187

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %bb.au
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3784
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.616.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !20496
  %.sroa.918.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.918.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i, i64 1040, i1 false), !noalias !20496
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.w, align 8, !noalias !20495
  %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20495
  %.sroa.5.0..sroa_idx.i.i10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store ptr %.sroa.8.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i10.i.i.i.i.i, align 8, !noalias !20495
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr %.sroa.97.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20495
  %.sroa.817.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  store ptr %.sroa.10.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.817.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20495
  %i.ha = getelementptr inbounds nuw i8, ptr %i.w, i64 1056
  %.val49.i.i.i.i.i.i.i = load i64, ptr %i.ha, align 8, !range !106, !noalias !20495, !noundef !80 ; 2 uses
  %i.hb = icmp sgt i64 %.val49.i.i.i.i.i.i.i, -1
  br i1 %i.hb, label %bb.df, label %bb.ba

bb.ax:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !20495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.97.0.copyload.i.i.i.i.i.i.i) ]
  store ptr %.sroa.97.0.copyload.i.i.i.i.i.i.i, ptr %i.v, align 8, !noalias !20495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !20495
  store ptr %.sroa.6.0.copyload.i.i.i.i.i.i.i, ptr %i.u, align 8, !noalias !20495
  %.sroa.8.8..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.8.8..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !20495
  %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.8..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i, i64 40, i1 false), !noalias !20496
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i.i.i.i.i.i.i) ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20495
  store ptr %i.v, ptr %i.t, align 8, !noalias !20495
  store ptr %2, ptr %i.hc, align 8, !noalias !20495
  %i.hd = call { i64, ptr } @_RNvMs7_NtNtNtCsb28OZjLZAOu_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1245) #45, !noalias !20497 ; 2 uses
  %i.he = extractvalue { i64, ptr } %i.hd, 0
  %i.hf = extractvalue { i64, ptr } %i.hd, 1      ; 2 uses
  %i.hg = trunc nuw i64 %i.he to i1
  br i1 %i.hg, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i.i.i.i.i.i.i) ]
  br label %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.au
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1325, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1327) #55, !noalias !20497
  unreachable

bb.ba:                                            ; preds = %bb.aw
  %i.hh = getelementptr inbounds nuw i8, ptr %i.w, i64 1088 ; 7 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.w, i64 1112 ; 3 uses
  %i.hj = load i8, ptr %i.hi, align 8, !range !93, !noalias !20495, !noundef !80 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.w, i64 822 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.w, i64 823 ; 4 uses
  %i.hm = load i8, ptr %i.hk, align 2, !range !93, !noalias !20495, !noundef !80
  %i.hn = trunc nuw i8 %i.hm to i1
  %i.ho = load i8, ptr %i.hl, align 1, !range !93, !noalias !20495
  %i.hp = trunc nuw i8 %i.ho to i1
  %or.cond176.i.i.i.i.i.i.i = select i1 %i.hn, i1 %i.hp, i1 false
  br i1 %or.cond176.i.i.i.i.i.i.i, label %._crit_edge181.i.i.i.i.i.i.i, label %.lr.ph180.i.i.i.i.i.i.i

.lr.ph180.i.i.i.i.i.i.i:                          ; preds = %bb.ba
  %i.hq = add nsw i64 %.val49.i.i.i.i.i.i.i, 9223372036854775807
  %switch.and.i.i.i.i.i.i.i = and i64 %i.hq, -3
  %switch.selectcmp.i.i.i.i.i.i.i = icmp eq i64 %switch.and.i.i.i.i.i.i.i, 0
  %i.hr = getelementptr inbounds nuw i8, ptr %i.w, i64 176 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.w, i64 136 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.w, i64 120 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.w, i64 827 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.w, i64 1024 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.w, i64 856
  %i.ib = getelementptr inbounds nuw i8, ptr %i.w, i64 828
  %i.ic = getelementptr inbounds nuw i8, ptr %i.w, i64 968
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit114.i.i.i.i.i.i.i, %.lr.ph180.i.i.i.i.i.i.i
  %.sroa.13.0178.i.i.i.i.i.i.i = phi i8 [ %i.hj, %.lr.ph180.i.i.i.i.i.i.i ], [ %.sroa.13.3.i.i.i.i.i.i.i, %.loopexit114.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0177.i.i.i.i.i.i.i = phi i1 [ %switch.selectcmp.i.i.i.i.i.i.i, %.lr.ph180.i.i.i.i.i.i.i ], [ %.sroa.10.3.ph.i.i.i.i.i.i.i, %.loopexit114.i.i.i.i.i.i.i ] ; 5 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.cp, %bb.bb
  %.sroa.13.1.i.i.i.i.i.i.i = phi i8 [ %.sroa.13.0178.i.i.i.i.i.i.i, %bb.bb ], [ %.sroa.13.3.i.i.i.i.i.i.i, %bb.cp ] ; 2 uses
  %.promoted138.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.10.0177.i.i.i.i.i.i.i, %bb.bb ], [ false, %bb.cp ]
  %i.id = phi i8 [ %.sroa.13.0178.i.i.i.i.i.i.i, %bb.bb ], [ %i.jr, %bb.cp ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bb ], [ %.sroa.07.1125.i127.i.i.i.i.i.i.i, %bb.cp ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bb ], [ %.sroa.0.193217.i.i.i.i.i.i.i.i, %bb.cp ] ; 3 uses
  %i.ie = load i64, ptr %i.hr, align 8, !noalias !20498, !noundef !80
  %.not121.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.ie, 0 ; 3 uses
  br i1 %.not121.not.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i, label %.loopexit76.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20499
  store ptr %i.hh, ptr %i.o, align 8, !noalias !20499
  store ptr %2, ptr %i.hs, align 8, !noalias !20499
  %i.if = call { i64, ptr } @_RNvMs_NtCsb28OZjLZAOu_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ht, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1245) #45, !noalias !20500 ; 2 uses
  %i.ig = extractvalue { i64, ptr } %i.if, 0
  %i.ih = extractvalue { i64, ptr } %i.if, 1      ; 3 uses
  %i.ii = trunc nuw i64 %i.ig to i1
  br i1 %i.ii, label %.loopexit210.i.i.i.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20499
  %i.ij = icmp eq ptr %i.ih, null
  br i1 %i.ij, label %.loopexit.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ik = ptrtoint ptr %i.ih to i64
  %i.il = add i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.ik ; 2 uses
  %i.im = load i64, ptr %i.hr, align 8, !noalias !20498, !noundef !80
  %.not.not.peel.i.i.i.i.i.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not.not.peel.i.i.i.i.i.i.i.i, label %.loopexit76.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.loopexit76.i.i.i.i.i.i.i.i:                      ; preds = %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i, %bb.bc
  %.sroa.13.2.i.i.i.i.i.i.i = phi i8 [ %.sroa.13.7.i.i.i.i.i.i.i, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i ], [ %.sroa.13.1.i.i.i.i.i.i.i, %bb.bc ] ; 2 uses
  %i.in = phi i8 [ %.lcssa153.i.i.i.i.i.i.i.i, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i ], [ %i.id, %bb.bc ]
  %.sroa.0.193.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.1122.lcssa.i.i.i.i.i.i.i.i, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %bb.bc ] ; 2 uses
  %i.io = trunc nuw i8 %i.in to i1
  br i1 %i.io, label %.loopexit76.thread.i.i.i.i.i.i.i.i, label %bb.bo

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.be, %bb.bn
  %.sroa.0.1122.i.i.i.i.i.i.i.i = phi i64 [ %i.jp, %bb.bn ], [ %i.il, %bb.be ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !20499
  store ptr %i.hh, ptr %i.o, align 8, !noalias !20499
  store ptr %2, ptr %i.hs, align 8, !noalias !20499
  %i.ip = call { i64, ptr } @_RNvMs_NtCsb28OZjLZAOu_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ht, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1245) #45, !noalias !20500 ; 2 uses
  %i.iq = extractvalue { i64, ptr } %i.ip, 0
  %i.ir = extractvalue { i64, ptr } %i.ip, 1      ; 3 uses
  %i.is = trunc nuw i64 %i.iq to i1
  br i1 %i.is, label %.loopexit210.i.i.i.i.i.i.i.i, label %bb.bm

.loopexit210.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.sroa.13.7.i.i.i.i.i.i.i = phi i8 [ %.sroa.13.1.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa153.i.i.i.i.i.i.i.i = phi i8 [ %i.id, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.0.1122.lcssa.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ %.sroa.0.1122.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ih, %.lr.ph.preheader.i.i.i.i.i.i.i.i ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa.i.i.i.i.i.i.i.i) ]
  %i.it = ptrtoint ptr %.lcssa.i.i.i.i.i.i.i.i to i64 ; 5 uses
  %i.iu = and i64 %i.it, 3                        ; 2 uses
  switch i64 %i.iu, label %.loopexit210.i.i.i.i.i.i.i.i.unreachabledefault [
    i64 2, label %bb.bf
    i64 3, label %bb.bg
    i64 0, label %bb.bh
    i64 1, label %bb.bi
  ], !prof !111

.loopexit210.i.i.i.i.i.i.i.i.unreachabledefault:  ; preds = %.loopexit210.i.i.i.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %bb.cl, %.loopexit75.i.i.i.i.i.i.i.i, %bb.bj, %bb.dr, %bb.do, %._crit_edge.i.i.i.i.i.i.i, %bb.cy, %bb.ct, %bb.ci, %bb.cf, %bb.ca
  unreachable

bb.bf:                                            ; preds = %.loopexit210.i.i.i.i.i.i.i.i
  %i.iv = lshr i64 %i.it, 32
  %i.iw = trunc nuw i64 %i.iv to i32
  %i.ix = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45, !noalias !20500
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !20500, !nonnull !80, !noundef !80
  %i.ja = call noundef i8 %i.iz(i32 noundef %i.iw) #45, !noalias !20500, !inline_history !20379
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %.loopexit210.i.i.i.i.i.i.i.i
  %i.jb = lshr i64 %i.it, 32
  %i.jc = icmp ult ptr %.lcssa.i.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.jb to i8 ; 2 uses
  %i.jd = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jc)
  call void @llvm.assume(i1 %i.jd)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %.loopexit210.i.i.i.i.i.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 16
  %i.jf = load i8, ptr %i.je, align 8, !range !168, !noalias !20500, !noundef !80
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.loopexit210.i.i.i.i.i.i.i.i
  %i.jg = getelementptr i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 31
  %i.jh = load i8, ptr %i.jg, align 8, !range !168, !noalias !20500, !noundef !80
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ja, %bb.bf ], [ %switch.idx.cast.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bg ], [ %i.jf, %bb.bh ], [ %i.jh, %bb.bi ]
  %i.ji = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, 13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20499
  br i1 %i.ji, label %bb.bj, label %.loopexit.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !20501
  switch i64 %i.iu, label %default.unreachable [
    i64 2, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i
    i64 3, label %bb.bk
    i64 0, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i
    i64 1, label %bb.bl
  ], !prof !111

bb.bk:                                            ; preds = %bb.bj
  %i.jj = icmp ult ptr %.lcssa.i.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.jk = and i64 %i.it, 1095216660480
  %i.jl = icmp ne i64 %i.jk, 1095216660480
  call void @llvm.assume(i1 %i.jj)
  call void @llvm.assume(i1 %i.jl)
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.jm = getelementptr i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jm) ]
  store ptr %i.jm, ptr %i.hu, align 8, !alias.scope !20502, !noalias !20501
  store i8 3, ptr %i.n, align 8, !alias.scope !20502, !noalias !20501
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hu) #45, !noalias !20503
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i

_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !20501
  br label %.loopexit76.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !20499
  %i.jn = icmp eq ptr %i.ir, null
  br i1 %i.jn, label %.loopexit.i.i.i.i.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jo = ptrtoint ptr %i.ir to i64
  %i.jp = add i64 %.sroa.0.1122.i.i.i.i.i.i.i.i, %i.jo ; 2 uses
  %i.jq = load i64, ptr %i.hr, align 8, !noalias !20498, !noundef !80
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.jq, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.loopexit76.thread.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !20384

bb.bo:                                            ; preds = %bb.bp, %.loopexit76.thread.i.i.i.i.i.i.i.i, %.loopexit76.i.i.i.i.i.i.i.i
  %.sroa.13.3.i.i.i.i.i.i.i = phi i8 [ %.sroa.13.4.i.i.i.i.i.i.i, %.loopexit76.thread.i.i.i.i.i.i.i.i ], [ %.sroa.13.2.i.i.i.i.i.i.i, %.loopexit76.i.i.i.i.i.i.i.i ], [ 0, %bb.bp ] ; 4 uses
  %.sroa.0.193217.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.193218.i.i.i.i.i.i.i.i, %.loopexit76.thread.i.i.i.i.i.i.i.i ], [ %.sroa.0.193.i.i.i.i.i.i.i.i, %.loopexit76.i.i.i.i.i.i.i.i ], [ %.sroa.0.193218.i.i.i.i.i.i.i.i, %bb.bp ] ; 2 uses
  %i.jr = phi i8 [ 1, %.loopexit76.thread.i.i.i.i.i.i.i.i ], [ 0, %.loopexit76.i.i.i.i.i.i.i.i ], [ 0, %bb.bp ]
  %.sroa.011.1.i.i.i.i.i.i.i.i = phi i1 [ true, %.loopexit76.thread.i.i.i.i.i.i.i.i ], [ %.not121.not.i.i.i.i.i.i.i.i, %.loopexit76.i.i.i.i.i.i.i.i ], [ %.not81220.i.i.i.i.i.i.i.i, %bb.bp ]
  br i1 %.promoted138.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %.lr.ph126.i.preheader.i.i.i.i.i.i.i

.lr.ph126.i.preheader.i.i.i.i.i.i.i:              ; preds = %bb.bo
  %i.js = load i64, ptr %i.hx, align 8, !noalias !20498, !noundef !80
  %i.jt = icmp ne i64 %i.js, 0
  %i.ju = load i8, ptr %i.hy, align 1, !range !93, !noalias !20495
  %i.jv = trunc nuw i8 %i.ju to i1
end_hunk_4
begin_hunk_5_@_RNCNCNvMs3_NtNtCs8UFHSMUhzWe_19shadowsocks_service6server8tcprelayNtB9_15TcpServerClient5serve00Csa7TLgTh0CeG_9ssmanager:bb.a
  %i.pq = icmp eq ptr %.val.i59.i.i.i.i.i.i.i, null
  br i1 %i.pq, label %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %i.s, i64 1104
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.pr, align 8, !alias.scope !20529, !noalias !20495
  %i.ps = getelementptr inbounds nuw i8, ptr %.val.i59.i.i.i.i.i.i.i, i64 24
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !20497, !nonnull !80, !noundef !80
  call void %i.pt(ptr noundef %.val1.i.i.i.i.i.i.i.i) #45, !noalias !20497, !inline_history !20424
  br label %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.dh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !20495
  br label %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i

.loopexit114.i.i.i.i.i.i.i:                       ; preds = %.loopexit.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i, %.loopexit.i.thread.i.i.i.i.i.i.i
  %i.pu = phi i8 [ 1, %.thread.i.i.i.i.i.i.i.i ], [ %i.no, %.thread.i.i.i.i.i.i.i ], [ 1, %.loopexit.i.thread.i.i.i.i.i.i.i ], [ 1, %.loopexit.i.i.i.i.i.i.i.i ]
  %i.pv = phi i8 [ 1, %.thread.i.i.i.i.i.i.i.i ], [ %i.nn, %.thread.i.i.i.i.i.i.i ], [ 1, %.loopexit.i.thread.i.i.i.i.i.i.i ], [ 1, %.loopexit.i.i.i.i.i.i.i.i ]
  %.sroa.10.3.ph.i.i.i.i.i.i.i = phi i1 [ %.sroa.10.2.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i ], [ %.sroa.10.0177.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i ], [ %.sroa.10.0177.i.i.i.i.i.i.i, %.loopexit.i.thread.i.i.i.i.i.i.i ], [ %.sroa.10.0177.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i ]
  %i.pw = trunc nuw i8 %i.pv to i1
  %i.px = trunc nuw i8 %i.pu to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %i.pw, i1 %i.px, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %._crit_edge181.i.i.i.i.i.i.i, label %bb.bb

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.dn, %bb.ax
  %.lcssa169.i.i.i.i.i.i.i = phi ptr [ %i.hf, %bb.ax ], [ %i.qt, %bb.dn ] ; 9 uses
  %i.py = ptrtoint ptr %.lcssa169.i.i.i.i.i.i.i to i64 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa169.i.i.i.i.i.i.i) ]
  %i.pz = and i64 %i.py, 3                        ; 3 uses
  switch i64 %i.pz, label %default.unreachable [
    i64 2, label %bb.di
    i64 3, label %bb.dj
    i64 0, label %bb.dk
    i64 1, label %bb.dl
  ], !prof !111

bb.di:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.qa = lshr i64 %i.py, 32
  %i.qb = trunc nuw i64 %i.qa to i32
  %i.qc = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45, !noalias !20497
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !noalias !20497, !nonnull !80, !noundef !80
  %i.qf = call noundef i8 %i.qe(i32 noundef %i.qb) #45, !noalias !20497, !inline_history !20425
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.qg = lshr i64 %i.py, 32
  %i.qh = icmp ult ptr %.lcssa169.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i.i.i.i = trunc i64 %i.qg to i8 ; 2 uses
  %i.qi = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.qh)
  call void @llvm.assume(i1 %i.qi)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i

bb.dk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.lcssa169.i.i.i.i.i.i.i, i64 16
  %i.qk = load i8, ptr %i.qj, align 8, !range !168, !noalias !20497, !noundef !80
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i

bb.dl:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ql = getelementptr i8, ptr %.lcssa169.i.i.i.i.i.i.i, i64 31
  %i.qm = load i8, ptr %i.ql, align 8, !range !168, !noalias !20497, !noundef !80
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.dj, %bb.di
  %.sroa.0.0.i60.i.i.i.i.i.i.i = phi i8 [ %i.qf, %bb.di ], [ %switch.idx.cast.i.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %i.qk, %bb.dk ], [ %i.qm, %bb.dl ]
  %i.qn = icmp eq i8 %.sroa.0.0.i60.i.i.i.i.i.i.i, 13
  br i1 %i.qn, label %bb.do, label %bb.dr

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ax, %bb.dn
  %i.qo = phi ptr [ %i.qt, %bb.dn ], [ %i.hf, %bb.ax ]
  %i.qp = icmp eq ptr %i.qo, null
  br i1 %i.qp, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.qq = load ptr, ptr %i.v, align 8, !noalias !20495, !nonnull !80, !align !86, !noundef !80
  br label %bb.du

bb.dn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !20495
  store ptr %i.v, ptr %i.t, align 8, !noalias !20495
  store ptr %2, ptr %i.hc, align 8, !noalias !20495
  %i.qr = call { i64, ptr } @_RNvMs7_NtNtNtCsb28OZjLZAOu_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @1245) #45, !noalias !20497 ; 2 uses
  %i.qs = extractvalue { i64, ptr } %i.qr, 0
  %i.qt = extractvalue { i64, ptr } %i.qr, 1      ; 2 uses
  %i.qu = trunc nuw i64 %i.qs to i1
  br i1 %i.qu, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.do:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.420.i.i.i.i.i.i.i)
  %i.qv = load ptr, ptr %i.v, align 8, !noalias !20495, !nonnull !80, !align !86, !noundef !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false), !noalias !20495
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %i.gy) #45, !noalias !20524
  store i64 3, ptr %i.gy, align 8, !alias.scope !20476, !noalias !20472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.i.i.i.i.i.i.i, i64 56, i1 false), !noalias !20496
  store ptr %i.qv, ptr %.sroa.97.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !20476, !noalias !20472
  store ptr %.sroa.10.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !20476, !noalias !20472
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.420.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20531
  switch i64 %i.pz, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
    i64 3, label %bb.dp
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
    i64 1, label %bb.dq
  ], !prof !111

bb.dp:                                            ; preds = %bb.do
  %i.qw = icmp ult ptr %.lcssa169.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.qx = and i64 %i.py, 1095216660480
  %i.qy = icmp ne i64 %i.qx, 1095216660480
  call void @llvm.assume(i1 %i.qw)
  call void @llvm.assume(i1 %i.qy)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.qz = getelementptr i8, ptr %.lcssa169.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qz) ]
  %i.ra = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.qz, ptr %i.ra, align 8, !alias.scope !20532, !noalias !20531
  store i8 3, ptr %i.c, align 8, !alias.scope !20532, !noalias !20531
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ra) #45, !noalias !20533
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i: ; preds = %bb.dq, %bb.dp, %bb.do, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20495
  br label %bb.dv

bb.dr:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i.i
  %i.rb = load ptr, ptr %i.v, align 8, !noalias !20495, !nonnull !80, !align !86, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20534
  switch i64 %i.pz, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit66.i.i.i.i.i.i.i
    i64 3, label %bb.ds
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit66.i.i.i.i.i.i.i
    i64 1, label %bb.dt
  ], !prof !111

bb.ds:                                            ; preds = %bb.dr
  %i.rc = icmp ult ptr %.lcssa169.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.rd = and i64 %i.py, 1095216660480
  %i.re = icmp ne i64 %i.rd, 1095216660480
  call void @llvm.assume(i1 %i.rc)
  call void @llvm.assume(i1 %i.re)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit66.i.i.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.rf = getelementptr i8, ptr %.lcssa169.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rf) ]
  %i.rg = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.rf, ptr %i.rg, align 8, !alias.scope !20535, !noalias !20534
  store i8 3, ptr %i.b, align 8, !alias.scope !20535, !noalias !20534
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rg) #45, !noalias !20536
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit66.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit66.i.i.i.i.i.i.i: ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20534
  br label %bb.du

bb.du:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit66.i.i.i.i.i.i.i, %bb.dm
  %.sroa.19.1.i.i.i.i.i.i = phi ptr [ %i.rb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit66.i.i.i.i.i.i.i ], [ %i.qq, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !20495
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb28OZjLZAOu_6rustls6vecbuf14ChunkVecBufferECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.u) #45, !noalias !20497
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i
  %.sroa.19.2.i.i.i.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i ], [ %.sroa.19.1.i.i.i.i.i.i, %bb.du ]
  %.sroa.13.2.i.i.i.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i ], [ %.sroa.10.0.copyload.i.i.i.i.i.i.i, %bb.du ]
  %.sroa.0.2.i.i.i.i.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i ], [ 2, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !20495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !20495
  br label %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i

_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, %bb.ay
  %.sroa.19.3.ph.i.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i.i.i, %bb.ay ], [ %i.pm, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i ], [ %i.pc, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ]
  %.sroa.13.3.ph.i.i.i.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i.i.i.i, %bb.ay ], [ %i.pk, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i ], [ %.sroa.6.0.i93101.i.i.i.i.i.i.i, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !20495
  br label %.thread.i.i.i.i

_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread21.i.i.i.i.i.i: ; preds = %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !20495
  br label %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i

_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i: ; preds = %bb.dv, %bb.df
  %.sroa.25.i.sroa.5.0.i.i.i.i.i = phi i64 [ %.sroa.25.i.sroa.5.0.copyload.i.i.i.i.i, %bb.df ], [ undef, %bb.dv ] ; 2 uses
  %.sroa.25.i.sroa.6.0.i.i.i.i.i = phi ptr [ %.sroa.25.i.sroa.6.0.copyload.i.i.i.i.i, %bb.df ], [ undef, %bb.dv ] ; 3 uses
  %.sroa.25.i.sroa.7.0.i.i.i.i.i = phi i64 [ %.sroa.25.i.sroa.7.0.copyload.i.i.i.i.i, %bb.df ], [ undef, %bb.dv ] ; 2 uses
  %.sroa.19.3.i.i.i.i.i.i = phi ptr [ %.sroa.19.0.copyload6.i.i.i.i.i.i, %bb.df ], [ %.sroa.19.2.i.i.i.i.i.i, %bb.dv ] ; 2 uses
  %.sroa.13.3.i.i.i.i.i.i = phi ptr [ %.sroa.13.0.copyload4.i.i.i.i.i.i, %bb.df ], [ %.sroa.13.2.i.i.i.i.i.i, %bb.dv ] ; 3 uses
  %.sroa.0.3.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i.i.i.i.i, %bb.df ], [ %.sroa.0.2.i.i.i.i.i.i, %bb.dv ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !20495
  switch i64 %.sroa.0.3.i.i.i.i.i.i, label %bb.dz [
    i64 -1, label %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i
    i64 2, label %.thread.i.i.i.i
  ]

.thread.i.i.i.i:                                  ; preds = %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i
  %.sroa.13.319.i.i.i.i.i.i = phi ptr [ %.sroa.13.3.ph.i.i.i.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i ], [ %.sroa.13.3.i.i.i.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.19.318.i.i.i.i.i.i = phi ptr [ %.sroa.19.3.ph.i.i.i.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread.i.i.i.i.i.i ], [ %.sroa.19.3.i.i.i.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.319.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.318.i.i.i.i.i.i) ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager(ptr nonnull %.sroa.19.318.i.i.i.i.i.i) #45, !noalias !20537
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i.i.i.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %i.gy) #45, !noalias !20473
  br label %bb.dw

bb.dw:                                            ; preds = %.thread.i.i.i.i, %bb.am
  %i.rh = phi ptr [ %i.fd, %bb.am ], [ %i.gr, %.thread.i.i.i.i ]
  %i.ri = phi ptr [ %i.fe, %bb.am ], [ %i.gs, %.thread.i.i.i.i ]
  %i.rj = phi ptr [ %i.ff, %bb.am ], [ %i.gt, %.thread.i.i.i.i ]
  %i.rk = phi ptr [ %i.fg, %bb.am ], [ %i.gu, %.thread.i.i.i.i ]
  %i.rl = phi ptr [ %i.fh, %bb.am ], [ %i.gv, %.thread.i.i.i.i ]
  %i.rm = phi ptr [ %i.fi, %bb.am ], [ %i.gw, %.thread.i.i.i.i ]
  %i.rn = phi ptr [ %i.fm, %bb.am ], [ %i.gx, %.thread.i.i.i.i ]
  %.sroa.473.0.i.i.i.i.i = phi ptr [ %i.gd, %bb.am ], [ %.sroa.13.319.i.i.i.i.i.i, %.thread.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.fl, %bb.am ], [ %.sroa.0.078.i.i.i.i.i, %.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !20472
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 4840 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20538)
  call void @llvm.experimental.noalias.scope.decl(metadata !20539)
  call void @llvm.experimental.noalias.scope.decl(metadata !20540)
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !20541, !noalias !20472, !nonnull !80, !noundef !80
  %i.rq = atomicrmw add ptr %i.rp, i64 -1 release, align 8, !noalias !20542
  %i.rr = icmp eq i64 %i.rq, 1
  br i1 %i.rr, label %bb.dx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ro) #52, !noalias !20473
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i: ; preds = %bb.dx, %bb.dw
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 4880 ; 2 uses
  %i.rt = load i8, ptr %i.rs, align 8, !range !93, !noalias !20472, !noundef !80
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.ee, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i

bb.dy:                                            ; preds = %bb.ag
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @989) #55, !noalias !20473
  unreachable

bb.dz:                                            ; preds = %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.1160.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.25.i.sroa.0.i.i.i.i.i, i64 704, i1 false), !noalias !20468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1160.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.25.i.sroa.8.i.i.i.i.i, i64 368, i1 false), !noalias !20468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i.i.i.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %i.gy) #45, !noalias !20473
  %.not.i.i.i.i.i.i = icmp ne i64 %.sroa.25.i.sroa.5.0.i.i.i.i.i, -1
  %i.rv = icmp eq i64 %.sroa.25.i.sroa.7.0.i.i.i.i.i, 2
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.rv, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.rw = load i8, ptr %.sroa.25.i.sroa.6.0.i.i.i.i.i, align 1, !noalias !20473, !noundef !80
  %i.rx = icmp eq i8 %i.rw, 104
  br i1 %i.rx, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.25.i.sroa.6.0.i.i.i.i.i, i64 1
  %i.rz = load i8, ptr %i.ry, align 1, !noalias !20473, !noundef !80
  %i.sa = icmp eq i8 %i.rz, 50
  %i.sb = zext i1 %i.sa to i8
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %.sroa.0.0.i.i.i.i.i = phi i8 [ %i.sb, %bb.eb ], [ 0, %bb.ea ], [ 0, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !20472
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 4840 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20543)
  call void @llvm.experimental.noalias.scope.decl(metadata !20544)
  call void @llvm.experimental.noalias.scope.decl(metadata !20545)
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !20546, !noalias !20472, !nonnull !80, !noundef !80
  %i.se = atomicrmw add ptr %i.sd, i64 -1 release, align 8, !noalias !20547
  %i.sf = icmp eq i64 %i.se, 1
  br i1 %i.sf, label %bb.ed, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

bb.ed:                                            ; preds = %bb.ec
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.sc) #52, !noalias !20473
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i: ; preds = %bb.ee, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  store i8 0, ptr %i.rs, align 8, !noalias !20472
  store i8 1, ptr %i.rn, align 1, !noalias !20472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 1, ptr %i.rm, align 8, !noalias !20469
  br label %bb.eg

bb.ee:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsa7TLgTh0CeG_9ssmanager(ptr %.sroa.0.1.i.i.i.i.i) #45, !noalias !20473
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i

bb.ef:                                            ; preds = %bb.ac
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @988) #55, !noalias !20471
  unreachable

bb.eg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i
  %i.sg = phi ptr [ %i.rh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i ], [ %i.gr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.sh = phi ptr [ %i.ri, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i ], [ %i.gs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.si = phi ptr [ %i.rj, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i ], [ %i.gt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.sj = phi ptr [ %i.rk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i ], [ %i.gu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %i.sk = phi ptr [ %i.rl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i ], [ %i.gv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 2 uses
  %.sroa.473.1.i.i.i167.i.i = phi ptr [ %.sroa.473.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.thread.i.i ], [ %.sroa.13.3.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.473.1.i.i.i167.i.i) ]
  %.phi.trans.insert187.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4897 ; 3 uses
  %.pre188.i.i.i = load i8, ptr %.phi.trans.insert187.i.i.i, align 1, !range !93, !noalias !20468
  %i.sl = trunc nuw i8 %.pre188.i.i.i to i1
  br i1 %i.sl, label %bb.ek, label %bb.ej

bb.eh:                                            ; preds = %bb.z
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @991) #55, !noalias !20548
  unreachable

_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.thread.i.i: ; preds = %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager.exit.thread21.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !20472
  store i8 3, ptr %i.gx, align 1, !noalias !20472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 3, ptr %i.gw, align 8, !noalias !20469
  store i8 3, ptr %i.gu, align 8, !noalias !20468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1160.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1160.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1271.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1574.i.i.i)
  br label %bb.ez

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i: ; preds = %bb.ed, %bb.ec
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 4880
  store i8 0, ptr %i.sm, align 8, !noalias !20472
  store i8 1, ptr %i.gx, align 1, !noalias !20472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i8 1, ptr %i.gw, align 8, !noalias !20469
  %i.sn = icmp eq i64 %.sroa.0.3.i.i.i.i.i.i, 2
  br i1 %i.sn, label %bb.eg, label %bb.ei

bb.ei:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsa7TLgTh0CeG_9ssmanager.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.867.i.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.1160.sroa.0.i.i.i.i.i, i64 704, i1 false), !noalias !20468
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1271.i.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1160.sroa.8.i.i.i.i.i, i64 368, i1 false), !noalias !20468
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 2496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1574.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.so, i64 32, i1 false), !noalias !20468
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 4897
  store i8 0, ptr %i.sp, align 1, !noalias !20468
  br label %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i

bb.ej:                                            ; preds = %bb.ek, %bb.eg
  %i.sq = phi ptr [ %i.sw, %bb.ek ], [ %i.sg, %bb.eg ]
  %i.sr = phi ptr [ %i.sx, %bb.ek ], [ %i.sh, %bb.eg ]
  %i.ss = phi ptr [ %i.sy, %bb.ek ], [ %i.si, %bb.eg ]
  %i.st = phi ptr [ %i.sz, %bb.ek ], [ %i.sj, %bb.eg ]
  %i.su = phi ptr [ %i.ta, %bb.ek ], [ %i.sk, %bb.eg ]
  %i.sv = phi ptr [ %i.tb, %bb.ek ], [ %.phi.trans.insert187.i.i.i, %bb.eg ]
  %.sroa.465.0198.i.i.i = phi ptr [ %.sroa.465.0199.i.i.i, %bb.ek ], [ %.sroa.473.1.i.i.i167.i.i, %bb.eg ]
  store i8 0, ptr %i.sv, align 1, !noalias !20468
  br label %_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i

bb.ek:                                            ; preds = %bb.eg, %.thread196.i.i.i
  %i.sw = phi ptr [ %i.dz, %.thread196.i.i.i ], [ %i.sg, %bb.eg ]
  %i.sx = phi ptr [ %i.ea, %.thread196.i.i.i ], [ %i.sh, %bb.eg ]
  %i.sy = phi ptr [ %i.eb, %.thread196.i.i.i ], [ %i.si, %bb.eg ]
  %i.sz = phi ptr [ %i.ec, %.thread196.i.i.i ], [ %i.sj, %bb.eg ]
  %i.ta = phi ptr [ %i.ed, %.thread196.i.i.i ], [ %i.sk, %bb.eg ]
  %i.tb = phi ptr [ %i.ee, %.thread196.i.i.i ], [ %.phi.trans.insert187.i.i.i, %bb.eg ]
  %.sroa.465.0199.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i, %.thread196.i.i.i ], [ %.sroa.473.1.i.i.i167.i.i, %bb.eg ]
  %i.tc = getelementptr inbounds nuw i8, ptr %1, i64 1336
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.tc) #45, !noalias !20548
  br label %bb.ej

_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0Csa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.ej, %bb.ei
  %i.td = phi ptr [ %i.sq, %bb.ej ], [ %i.gr, %bb.ei ] ; 3 uses
  %i.te = phi ptr [ %i.sr, %bb.ej ], [ %i.gs, %bb.ei ] ; 3 uses
  %i.tf = phi ptr [ %i.ss, %bb.ej ], [ %i.gt, %bb.ei ] ; 2 uses
  %i.tg = phi ptr [ %i.st, %bb.ej ], [ %i.gu, %bb.ei ]
  %i.th = phi ptr [ %i.su, %bb.ej ], [ %i.gv, %bb.ei ]
  %.sroa.064.1.i.i.i = phi i64 [ -1, %bb.ej ], [ %.sroa.0.3.i.i.i.i.i.i, %bb.ei ] ; 3 uses
  %.sroa.465.1.i.i.i = phi ptr [ %.sroa.465.0198.i.i.i, %bb.ej ], [ %.sroa.13.3.i.i.i.i.i.i, %bb.ei ] ; 3 uses
  %.sroa.766.0.i.i.i = phi ptr [ undef, %bb.ej ], [ %.sroa.19.3.i.i.i.i.i.i, %bb.ei ]
  %.sroa.968.0.i.i.i = phi i64 [ undef, %bb.ej ], [ %.sroa.25.i.sroa.5.0.i.i.i.i.i, %bb.ei ]
  %.sroa.1069.0.i.i.i = phi ptr [ undef, %bb.ej ], [ %.sroa.25.i.sroa.6.0.i.i.i.i.i, %bb.ei ]
  %.sroa.1170.0.i.i.i = phi i64 [ undef, %bb.ej ], [ %.sroa.25.i.sroa.7.0.i.i.i.i.i, %bb.ei ]
  %.sroa.1372.0.i.i.i = phi i8 [ undef, %bb.ej ], [ %.sroa.0.0.i.i.i.i.i, %bb.ei ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.976.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.867.i.i.i, i64 704, i1 false), !noalias !20549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1271.i.i.i, i64 368, i1 false), !noalias !20549
  %.sroa.15.1128..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.15.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.15.1128..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1574.i.i.i, i64 32, i1 false), !noalias !20549
  store i8 1, ptr %i.tg, align 8, !noalias !20468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1160.sroa.0.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1160.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.867.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1271.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1574.i.i.i)
  %i.ti = icmp eq i64 %.sroa.064.1.i.i.i, -2
  br i1 %i.ti, label %bb.ez, label %bb.fa

bb.el:                                            ; preds = %bb.ey, %bb.h
  %i.tj = phi ptr [ %i.bi, %bb.h ], [ %i.ug, %bb.ey ] ; 3 uses
  %i.tk = phi ptr [ %.phi.trans.insert.i, %bb.h ], [ %i.uh, %bb.ey ] ; 3 uses
  %i.tl = phi ptr [ %i.bt, %bb.h ], [ %i.ui, %bb.ey ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !20456
end_hunk_5
begin_hunk_6_@_RNCNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB6_11DnsResolverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver8resolver10DnsResolve7resolve0Csa7TLgTh0CeG_9ssmanager:bb.a

_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %.thread74.i.thread.i, %.thread74.i.i, %bb.z, %bb.w, %bb.x
  %.sroa.43.4 = phi i64 [ %.sroa.43.1, %bb.w ], [ %.sroa.43.1, %bb.x ], [ %.sroa.43.0.copyload139, %.thread74.i.i ], [ %.sroa.43.0.copyload139, %bb.z ], [ %.sroa.43.0.copyload137, %.thread74.i.thread.i ] ; 2 uses
  %.sroa.37.4 = phi i32 [ %.sroa.37.1, %bb.w ], [ %.sroa.37.1, %bb.x ], [ %.sroa.37.0.copyload120, %.thread74.i.i ], [ %.sroa.37.0.copyload120, %bb.z ], [ %.sroa.37.0.copyload118, %.thread74.i.thread.i ] ; 2 uses
  %.sroa.18103.4 = phi i8 [ %.sroa.18103.1, %bb.w ], [ %.sroa.18103.1, %bb.x ], [ %.sroa.18103.0.copyload107, %.thread74.i.i ], [ %.sroa.18103.0.copyload107, %bb.z ], [ %.sroa.18103.0.copyload105, %.thread74.i.thread.i ] ; 2 uses
  %.sroa.0.4 = phi i16 [ %.sroa.0.1, %bb.w ], [ %.sroa.0.1, %bb.x ], [ %.sroa.0.0.copyload98, %.thread74.i.i ], [ %.sroa.0.0.copyload98, %bb.z ], [ %.sroa.0.0.copyload97, %.thread74.i.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !31674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !31674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !31673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !31673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !31673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !31673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !31673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !31673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !31673
  %i.pg = icmp eq i16 %.sroa.0.4, 2
  br i1 %i.pg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit.thread, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.18103.4225 = phi i8 [ 5, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit.thread ], [ %.sroa.18103.4, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.37.4224 = phi i32 [ %.sroa.37.2, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit.thread ], [ %.sroa.37.4, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.43.4223 = phi i64 [ %.sroa.43.2, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit.thread ], [ %.sroa.43.4, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 %.sroa.18103.4225, ptr %i.av, align 8
  %.sroa.29.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29, i64 3, i1 false)
  %.sroa.37.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %.sroa.37.4224, ptr %.sroa.37.8..sroa_idx, align 4
  %.sroa.40.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, i64 32, i1 false)
  %.sroa.43.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %.sroa.43.4223, ptr %.sroa.43.8..sroa_idx, align 8
  %i.ph = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCs2Z77Vc7pSLS_13hickory_proto5error10ProtoErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef 20, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.av) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit88

bb.cp:                                            ; preds = %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.4.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %1, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.4.0..sroa_idx154, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.18, i64 6, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.29, i64 3, i1 false)
  %.sroa.8.0..sroa_idx157 = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.8.0..sroa_idx157, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.40, i64 32, i1 false)
  %.sroa.10158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10158.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.45, i64 24, i1 false)
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i16 %.sroa.0.4, ptr %i.pi, align 16
  %.sroa.5.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 %.sroa.18103.4, ptr %.sroa.5.0..sroa_idx155, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %.sroa.37.4, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %.sroa.43.4, ptr %.sroa.9.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45)
  %i.pj = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 1, ptr %i.pj, align 8, !alias.scope !31735
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 43664 ; 4 uses
  call void @_RNvMs_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB4_5Query3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.pk) #45
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 43744 ; 2 uses
  store i16 0, ptr %i.pl, align 16, !alias.scope !31736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 16 dereferenceable(80) %i.pi, i64 80, i1 false)
  %i.pm = call noundef nonnull align 8 ptr @_RNvMs_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB4_5Query8set_name(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.pk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.au) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 43752 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31737)
  call void @llvm.experimental.noalias.scope.decl(metadata !31738)
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %i.pn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pk) #53
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 43748
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 43750
  %i.pq = load i16, ptr %i.pp, align 2, !alias.scope !31738
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 43836
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 43838
  store i16 %i.pq, ptr %i.ps, align 2, !alias.scope !31737
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 43832
  %i.pu = load <2 x i16>, ptr %i.pl, align 16, !alias.scope !31738
  store <2 x i16> %i.pu, ptr %i.pt, align 8, !alias.scope !31737
  store i16 0, ptr %i.po, align 4, !alias.scope !31739
  store i16 1, ptr %i.pr, align 4, !alias.scope !31740
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 43840 ; 3 uses
  call void @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message5query(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.pv) #45
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 43979
  store i8 1, ptr %i.pw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr noundef nonnull align 16 dereferenceable(88) %i.pk, i64 88, i1 false)
  %i.px = call noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message9add_query(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.pv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.at) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 43992 ; 3 uses
  call void @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message5query(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.py) #45
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 44131
  store i8 1, ptr %i.pz, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.as, ptr noundef nonnull align 8 dereferenceable(88) %i.pn, i64 88, i1 false)
  %i.qa = call noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message9add_query(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.py, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.as) #45 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.qb = load ptr, ptr %i.ay, align 8, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  %.sroa.7164.sroa.8.0..sroa.7164.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %.sroa.7164.sroa.8.0..sroa.7164.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(152) %i.pv, i64 152, i1 false)
  %.sroa.9166.sroa.8.0..sroa.9166.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 43488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %.sroa.9166.sroa.8.0..sroa.9166.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %i.py, i64 152, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 0, ptr %i.qc, align 16
  %.sroa.7164.sroa.7.0..sroa.7164.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21704
  store ptr %i.qb, ptr %.sroa.7164.sroa.7.0..sroa.7164.0..sroa_idx.sroa_idx, align 8
  %.sroa.7164.sroa.9.0..sroa.7164.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21864
  store i8 0, ptr %.sroa.7164.sroa.9.0..sroa.7164.0..sroa_idx.sroa_idx, align 8
  %.sroa.8165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21872
  store i64 0, ptr %.sroa.8165.0..sroa_idx, align 16
  %.sroa.9166.sroa.7.0..sroa.9166.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 43480
  store ptr %i.qb, ptr %.sroa.9166.sroa.7.0..sroa.9166.0..sroa_idx.sroa_idx, align 8
  %.sroa.9166.sroa.9.0..sroa.9166.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 43640
  store i8 0, ptr %.sroa.9166.sroa.9.0..sroa.9166.0..sroa_idx.sroa_idx, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.a, %bb.cp
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 4 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 21872 ; 4 uses
  %i.qf = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB5_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1f_11DnsResolver6lookup0ENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 16 %i.qd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #45, !noalias !31741
  %i.qg = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB5_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1f_11DnsResolver6lookup0ENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 16 %i.qe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #45, !noalias !31741
  %.demorgan.i = or i1 %i.qf, %i.qg
  br i1 %.demorgan.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qh = load i64, ptr %i.qd, align 16, !range !88, !noalias !31742, !noundef !80
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit.thread.i

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.cr
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload6.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !31743 ; 5 uses
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 2, ptr %i.qd, align 16, !noalias !31742
  %.not.i = icmp eq i64 %.sroa.0.0.copyload6.i, -2
  br i1 %.not.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit.thread.i, label %bb.cs, !prof !201

bb.cs:                                            ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.qj = load i64, ptr %i.qe, align 16, !range !88, !noalias !31744, !noundef !80
  %i.qk = icmp eq i64 %i.qj, 1
  br i1 %i.qk, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit5.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit5.thread.i

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit5.i: ; preds = %bb.cs
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %1, i64 21880
  %.sroa.010.0.copyload11.i = load i64, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !31743 ; 5 uses
  store i64 2, ptr %i.qe, align 16, !noalias !31744
  %.not3.i = icmp eq i64 %.sroa.010.0.copyload11.i, -2
  br i1 %.not3.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit5.thread.i, label %bb.cv, !prof !201

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.cr
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1374) #55, !noalias !31741
  unreachable

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit5.thread.i: ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit5.i, %bb.cs
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1374) #55, !noalias !31741
  unreachable

bb.ct:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1030) #55
  unreachable

common.ret:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit88, %bb.cu
  %storemerge = phi i8 [ 3, %bb.cu ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit88 ]
  store i8 %storemerge, ptr %i.aw, align 4
  ret void

bb.cu:                                            ; preds = %bb.cq
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cv:                                            ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsa7TLgTh0CeG_9ssmanager.exit5.i
  %.sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 21888
  %.sroa.9179.sroa.0.0.copyload = load ptr, ptr %.sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i, align 16, !noalias !31745 ; 13 uses
  %.sroa.9179.sroa.5.0..sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9179.sroa.5.0..sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i.sroa_idx, i64 136, i1 false)
  %.sroa.7177.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !31745 ; 13 uses
  %.sroa.7177.sroa.5.0..sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7177.sroa.5.0..sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i.sroa_idx, i64 136, i1 false)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1I_11DnsResolver6lookup0EECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 16 %i.qd) #45
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1I_11DnsResolver6lookup0EECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 16 %i.qe) #45
  %i.ql = icmp eq i64 %.sroa.0.0.copyload6.i, -1  ; 2 uses
  %i.qm = icmp eq i64 %.sroa.010.0.copyload11.i, -1 ; 2 uses
  %i.qn = and i64 %.sroa.010.0.copyload11.i, %.sroa.0.0.copyload6.i
  %or.cond = icmp eq i64 %i.qn, -1
  br i1 %or.cond, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 43656
  %i.qp = load ptr, ptr %i.qo, align 8, !nonnull !80, !align !86, !noundef !80
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 288
  %i.qr = load i8, ptr %i.qq, align 8, !range !93, !noundef !80
  %i.qs = trunc nuw i8 %i.qr to i1
  br i1 %i.qs, label %bb.de, label %bb.dd

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7177.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9179.sroa.0.0.copyload) ]
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 43656
  %i.qu = load ptr, ptr %i.qt, align 8, !nonnull !80, !align !86, !noundef !80
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 288
  %i.qw = load i8, ptr %i.qv, align 8, !range !93, !noundef !80
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %.critedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !31746
  %i.qy = ptrtoint ptr %.sroa.9179.sroa.0.0.copyload to i64 ; 2 uses
  %i.qz = and i64 %i.qy, 3
  switch i64 %i.qz, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit
    i64 3, label %bb.cz
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit
    i64 1, label %bb.da
  ], !prof !111

default.unreachable:                              ; preds = %bb.ec, %bb.dv, %bb.dp, %bb.dh, %.critedge, %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.ra = icmp ult ptr %.sroa.9179.sroa.0.0.copyload, inttoptr (i64 188978561024 to ptr)
  %i.rb = and i64 %i.qy, 1095216660480
  %i.rc = icmp ne i64 %i.rb, 1095216660480
  call void @llvm.assume(i1 %i.ra)
  call void @llvm.assume(i1 %i.rc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit

bb.da:                                            ; preds = %bb.cy
  %i.rd = getelementptr i8, ptr %.sroa.9179.sroa.0.0.copyload, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rd) ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.rd, ptr %i.re, align 8, !alias.scope !31747, !noalias !31746
  store i8 3, ptr %i.f, align 8, !alias.scope !31747, !noalias !31746
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.re) #45, !noalias !31746
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.cy, %bb.cy, %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31746
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit88

.critedge:                                        ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !31748
  %i.rf = ptrtoint ptr %.sroa.7177.sroa.0.0.copyload to i64 ; 2 uses
  %i.rg = and i64 %i.rf, 3
  switch i64 %i.rg, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit68
    i64 3, label %bb.db
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit68
    i64 1, label %bb.dc
  ], !prof !111

bb.db:                                            ; preds = %.critedge
  %i.rh = icmp ult ptr %.sroa.7177.sroa.0.0.copyload, inttoptr (i64 188978561024 to ptr)
  %i.ri = and i64 %i.rf, 1095216660480
  %i.rj = icmp ne i64 %i.ri, 1095216660480
  call void @llvm.assume(i1 %i.rh)
  call void @llvm.assume(i1 %i.rj)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit68

bb.dc:                                            ; preds = %.critedge
  %i.rk = getelementptr i8, ptr %.sroa.7177.sroa.0.0.copyload, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rk) ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.rk, ptr %i.rl, align 8, !alias.scope !31749, !noalias !31748
  store i8 3, ptr %i.e, align 8, !alias.scope !31749, !noalias !31748
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rl) #45, !noalias !31748
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit68

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit68: ; preds = %.critedge, %.critedge, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31748
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit88

bb.dd:                                            ; preds = %bb.cw
  br i1 %i.ql, label %bb.dg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit

bb.de:                                            ; preds = %bb.cw
  br i1 %i.qm, label %bb.du, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit78

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.0.0.copyload6.i, ptr %i.ah, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.7177.sroa.0.0.copyload, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.10.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 44146
  %i.rn = load i16, ptr %i.rm, align 2, !noundef !80
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolver9store_dns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.ah, i16 noundef %i.rn) #45
  %.sroa.0186.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.df

bb.df:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.21.0 = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71 ], [ %.sroa.21.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit ]
  %.sroa.14.0 = phi ptr [ inttoptr (i64 4 to ptr), %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71 ], [ %.sroa.14.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit ] ; 3 uses
  %.sroa.0186.0 = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71 ], [ %.sroa.0186.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit ] ; 3 uses
  br i1 %i.qm, label %bb.do, label %bb.dl

bb.dg:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7177.sroa.0.0.copyload) ]
  store ptr %.sroa.7177.sroa.0.0.copyload, ptr %i.af, align 8
  %i.ro = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.rp = icmp ult i64 %i.ro, 6
  call void @llvm.assume(i1 %i.rp)
  %i.rq = icmp samesign ugt i64 %i.ro, 3
  br i1 %i.rq, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.dk
  %.val.i69 = phi ptr [ %.sroa.7177.sroa.0.0.copyload, %bb.dg ], [ %.val.i69.pre, %bb.dk ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31750
  %i.rr = ptrtoint ptr %.val.i69 to i64           ; 2 uses
  %i.rs = and i64 %i.rr, 3
  switch i64 %i.rs, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71
    i64 3, label %bb.di
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71
    i64 1, label %bb.dj
  ], !prof !111

bb.di:                                            ; preds = %bb.dh
  %i.rt = icmp ult ptr %.val.i69, inttoptr (i64 188978561024 to ptr)
  %i.ru = and i64 %i.rr, 1095216660480
  %i.rv = icmp ne i64 %i.ru, 1095216660480
  call void @llvm.assume(i1 %i.rt)
  call void @llvm.assume(i1 %i.rv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71

bb.dj:                                            ; preds = %bb.dh
  %i.rw = getelementptr i8, ptr %.val.i69, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rw) ]
  %i.rx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.rw, ptr %i.rx, align 8, !alias.scope !31751, !noalias !31750
  store i8 3, ptr %i.d, align 8, !alias.scope !31751, !noalias !31750
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rx) #45, !noalias !31750
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit71: ; preds = %bb.dh, %bb.dh, %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.df

bb.dk:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.af, ptr %i.ae, align 8
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @1033, ptr %i.ad, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 45, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr @1033, ptr %i.rz, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 45, ptr %i.sa, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @1032, ptr %i.sb, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull @1031, ptr noundef nonnull %i.ae, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val.i69.pre = load ptr, ptr %i.af, align 8, !alias.scope !31750
  br label %bb.dh

bb.dl:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store i64 %.sroa.010.0.copyload11.i, ptr %i.ac, align 8
  %.sroa.815.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.9179.sroa.0.0.copyload, ptr %.sroa.815.0..sroa_idx16, align 8
  %.sroa.1021.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.1021.0..sroa_idx22, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.14, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 44146
  %i.sd = load i16, ptr %i.sc, align 2, !noundef !80
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolver9store_dns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.ac, i16 noundef %i.sd) #45
  %i.se = icmp eq i64 %.sroa.0186.0, 0
  br i1 %i.se, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit73, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sf = shl nuw i64 %.sroa.0186.0, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0, i64 noundef %i.sf, i64 noundef range(i64 1, -9223372036854775807) 4) #45
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit73

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsa7TLgTh0CeG_9ssmanager.exit73: ; preds = %bb.dl, %bb.dm
  %.sroa.0186.0.copyload187 = load i64, ptr %i.ab, align 8
  %.sroa.14.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.14.0.copyload191 = load ptr, ptr %.sroa.14.0..sroa_idx190, align 8
  %.sroa.21.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.21.0.copyload197 = load i64, ptr %.sroa.21.0..sroa_idx196, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
end_hunk_6
begin_hunk_7_@_RNvMs5_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8CallbackINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE4sendCsa7TLgTh0CeG_9ssmanager:bb.a
  %i.c = alloca [232 x i8], align 8               ; 5 uses
  %i.d = load i64, ptr %0, align 8, !range !87, !noundef !80
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = load i64, ptr %i.f, align 8, !range !87, !noundef !80
  %i.i = load ptr, ptr %i.g, align 8
  store i64 0, ptr %i.f, align 8
  %i.j = trunc nuw i64 %i.h to i1
  br i1 %i.j, label %bb.h, label %bb.i, !prof !89

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = load i64, ptr %i.f, align 8, !range !87, !noundef !80
  %i.l = load ptr, ptr %i.g, align 8
  store i64 0, ptr %i.f, align 8
  %i.m = trunc nuw i64 %i.k to i1
  br i1 %i.m, label %bb.d, label %bb.f, !prof !89

bb.d:                                             ; preds = %bb.c
  call fastcc void @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB4_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEINtNtNtB2g_6client8dispatch12TrySendErrorINtNtB1z_7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEEE4sendCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(232) %i.c, ptr noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(232) %1) #45
  %i.n = load i64, ptr %i.c, align 8, !range !125, !alias.scope !36457, !noundef !80
  %i.o = icmp eq i64 %i.n, -3
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEINtNtNtB1O_6client8dispatch12TrySendErrorINtNtB17_7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEINtNtNtB1J_6client8dispatch12TrySendErrorINtNtB12_7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.c) #45
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEINtNtNtB1O_6client8dispatch12TrySendErrorINtNtB17_7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEEEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEINtNtNtB1O_6client8dispatch12TrySendErrorINtNtB17_7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1221, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #55
  unreachable

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtB1O_5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEINtNtNtB1O_6client8dispatch12TrySendErrorINtNtB17_7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEEEECsa7TLgTh0CeG_9ssmanager.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8CallbackINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1w_8response8ResponseNtNtNtBI_4body8incoming8IncomingEEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #45
  ret void

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = load i64, ptr %1, align 8, !range !118, !noundef !80 ; 2 uses
  %.not = icmp eq i64 %i.p, -2
  br i1 %.not, label %bb.l, label %bb.j

bb.i:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1221, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1223) #55
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !80, !align !86, !noundef !80
  %i.s = icmp eq i64 %i.p, -1
  br i1 %i.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http7request5PartsECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(224) %1) #45
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.j, %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %i.a, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.u, i64 152, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEEECsa7TLgTh0CeG_9ssmanager.exit
  call fastcc void @_RNvMs_NtNtCsczhfDQ1qNkX_5tokio4sync7oneshotINtB4_6SenderINtNtCsf3Ta7LF998c_4core6result6ResultINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtB2g_5error5ErrorEE4sendCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.b, ptr noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(152) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = load i64, ptr %i.b, align 8, !range !118, !alias.scope !36458, !noundef !80
  %i.w = icmp eq i64 %i.v, -2
  br i1 %i.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtB1O_5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtB1J_5error5ErrorEECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.b) #45
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtB1O_5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuIBC_INtNtCs7ewmRfXve8r_4http8response8ResponseNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtB1O_5error5ErrorEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE19process_new_packetsCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [168 x i8], align 8               ; 6 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [168 x i8], align 8               ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 15 uses
  %i.g = alloca [168 x i8], align 8               ; 6 uses
  %i.h = alloca [168 x i8], align 8               ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %i.j = alloca [168 x i8], align 8               ; 10 uses
  %i.k = alloca [168 x i8], align 8               ; 9 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.424.i.i = alloca [31 x i8], align 1      ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [64 x i8], align 8                ; 15 uses
  %i.u = alloca [64 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [64 x i8], align 8                ; 13 uses
  %.sroa.6.i.i = alloca [31 x i8], align 1        ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.0.i = alloca [18 x i8], align 8          ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 5 uses
  %i.ab = alloca [64 x i8], align 8               ; 18 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [64 x i8], align 8               ; 4 uses
  %i.ae = alloca [64 x i8], align 8               ; 5 uses
  %i.af = alloca [64 x i8], align 8               ; 14 uses
  %i.ag = alloca [16 x i8], align 8               ; 16 uses
  %i.ah = alloca [64 x i8], align 8               ; 4 uses
  %i.ai = alloca [64 x i8], align 8               ; 9 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 14 uses
  %.sroa.0.0.copyload = load i8, ptr %i.aj, align 8 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 904 ; 6 uses
  %.sroa.63.0.copyload = load ptr, ptr %.sroa.63.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 912 ; 6 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  store i8 16, ptr %i.aj, align 8
  %.not = icmp eq i8 %.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 920
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i8 %.sroa.0.0.copyload, ptr %i.ai, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, i64 7, i1 false)
  %.sroa.63.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.63.0.copyload, ptr %.sroa.63.0..sroa_idx4, align 8
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call fastcc void @_RNvXsj_NtCsb28OZjLZAOu_6rustls5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ai) #53
  call void @llvm.experimental.noalias.scope.decl(metadata !36527)
  %i.ak = load i8, ptr %i.aj, align 8, !range !122, !alias.scope !36527, !noundef !80
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !alias.scope !36527 ; 4 uses
  %.val1.i = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !36527, !nonnull !80, !align !86, !noundef !80 ; 3 uses
  %i.am = load ptr, ptr %.val1.i, align 8, !invariant.load !80, !noalias !36527 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void %i.am(ptr noundef nonnull %.val.i) #53, !noalias !36527, !inline_history !36461
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !82, !invariant.load !80, !noalias !36527 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !84, !invariant.load !80, !noalias !36527
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %i.ar) #45, !noalias !36527
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

bb.f:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb28OZjLZAOu_6rustls5error5ErrorECsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aj) #45
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.e, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1g_6client11client_conn20ClientConnectionDataEEL_EECsa7TLgTh0CeG_9ssmanager.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 864
  %.val26 = load i64, ptr %i.at, align 8, !noundef !80 ; 2 uses
  store i64 %.val26, ptr %i.ag, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 9 uses
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 808 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.i.i, i64 7 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.t, i64 26 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 960 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 821
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %.sroa.424.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.424.i.i, i64 7
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 26 ; 3 uses
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.8.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 18
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 28 ; 2 uses
  %.sroa.2.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.ac, i64 18
  %.sroa.3.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 823
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 825 ; 3 uses
  %.sroa.4.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 815 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %.sroa.428.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.529.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.434.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.535.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 820
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 813 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.424.sroa.4.0..sroa.424.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 9
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 827
  br label %bb.h

bb.h:                                             ; preds = %bb.ce, %bb.g
  %.promoted = phi i64 [ %.val26, %bb.g ], [ %i.ja, %bb.ce ] ; 3 uses
  %.sroa.9.0 = phi ptr [ %.sroa.7.0.copyload, %bb.g ], [ %i.iu, %bb.ce ] ; 17 uses
  %.sroa.0.0 = phi ptr [ %.sroa.63.0.copyload, %bb.g ], [ %i.iv, %bb.ce ] ; 14 uses
  %i.db = call { ptr, i64 } @_RNvMs2_NtNtNtCsb28OZjLZAOu_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer10filled_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #45 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 9 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1      ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36528)
  call void @llvm.experimental.noalias.scope.decl(metadata !36529)
  %i.de = call noundef zeroext i1 @_RNvMNtNtNtCsb28OZjLZAOu_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17has_message_ready(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as) #45, !noalias !36530
  br i1 %i.de, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !36531)
  call void @llvm.experimental.noalias.scope.decl(metadata !36532)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !36533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !36533
  %i.df = load i16, ptr %i.av, align 8, !range !206, !alias.scope !36534, !noundef !80
  %.not95.i.i = icmp eq i16 %i.df, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !36535
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  store ptr %i.dc, ptr %i.y, align 8, !noalias !36535
  store ptr %i.dg, ptr %i.aw, align 8, !noalias !36535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !36535
  %i.dh = icmp ugt i64 %.promoted, %i.dd
  br i1 %i.dh, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !207

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.di = ptrtoint ptr %i.dc to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.ag, %.lr.ph.i.i
  %i.dj = phi i64 [ %.promoted, %.lr.ph.i.i ], [ %i.ex, %bb.ag ] ; 7 uses
  %i.dk = sub nuw nsw i64 %i.dd, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dj
  store ptr %i.dl, ptr %i.x, align 8, !noalias !36535
  store i64 %i.dk, ptr %i.ax, align 8, !noalias !36535
  store i64 0, ptr %i.ay, align 8, !noalias !36535
  br i1 %.not95.i.i, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.j, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !36535
  call void @_RNvXs_NtNtCsb28OZjLZAOu_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #45, !noalias !36536
  %i.dm = load i8, ptr %i.w, align 8, !range !36537, !noalias !36535, !noundef !80 ; 2 uses
  switch i8 %i.dm, label %.split82.us.i.i [
    i8 -2, label %.split84.us.i.i
    i8 -1, label %bb.k
  ]

bb.k:                                             ; preds = %.split.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !36535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !36535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i, i64 24, i1 false), !noalias !36535
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %i.dn = load i8, ptr %i.ba, align 8, !range !108, !noalias !36535, !noundef !80
  %cond.i.i = icmp eq i8 %i.dn, 0
  br i1 %cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = load i64, ptr %i.bd, align 8, !alias.scope !36534, !noundef !80 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 230584300921369396
  call void @llvm.assume(i1 %i.dp)
  %.not.us.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.us.i.i, label %.split86.us.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_RNvMNtCsb28OZjLZAOu_6rustls12record_layerNtB2_11RecordLayer16decrypt_incoming(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v) #45, !noalias !36536
  %i.dq = load i8, ptr %i.t, align 8, !range !122, !noalias !36535, !noundef !80
  %.not44.us.i.i = icmp eq i8 %i.dq, -1
  br i1 %.not44.us.i.i, label %bb.n, label %.split89.us.i.i

bb.n:                                             ; preds = %bb.m
  %i.dr = load i16, ptr %i.be, align 2, !range !206, !noalias !36535, !noundef !80 ; 2 uses
  %.not45.us.i.i = icmp eq i16 %i.dr, -1
  br i1 %.not45.us.i.i, label %bb.o, label %.split91.us.i.i

bb.o:                                             ; preds = %bb.n
  %i.ds = call noundef zeroext i1 @_RNvMNtNtNtCsb28OZjLZAOu_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer10is_aligned(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as) #45, !noalias !36536
  br i1 %i.ds, label %.split.us.i.i, label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE7deframeCsa7TLgTh0CeG_9ssmanager.exit.thread52

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.ag
  %.lcssa67.i.i = phi i64 [ %i.ex, %bb.ag ], [ %.promoted, %bb.i ]
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa67.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.dd, i64 noundef range(i64 0, -9223372036854775808) %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1237) #55, !noalias !36536
  unreachable

.split.i.i:                                       ; preds = %bb.j, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !36535
  call void @_RNvXs_NtNtCsb28OZjLZAOu_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #45, !noalias !36536
  %i.dt = load i8, ptr %i.w, align 8, !range !36537, !noalias !36535, !noundef !80 ; 2 uses
  switch i8 %i.dt, label %.split82.us.i.i [
    i8 -2, label %.split84.us.i.i
    i8 -1, label %bb.q
  ]

.split84.us.i.i:                                  ; preds = %.split.us.i.i, %.split.i.i
  store i64 %i.dj, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !36535
  store i16 -1, ptr %.sroa.3.0..sroa_idx.i.i, align 2
  store i8 -1, ptr %i.af, align 8
  br label %bb.p

bb.p:                                             ; preds = %.split82.us.i.i, %.split84.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE7deframeCsa7TLgTh0CeG_9ssmanager.exit

.split82.us.i.i:                                  ; preds = %.split.us.i.i, %.split.i.i
  %.us-phi.i.i = phi i8 [ %i.dt, %.split.i.i ], [ %i.dm, %.split.us.i.i ]
end_hunk_7
begin_hunk_8_@_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame7go_away6GoAwayNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame7go_awayNtB5_6GoAwayNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame7headers11PushPromiseNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCs2dlyTE5y14r_2h25frame7headersNtB5_11PushPromiseNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame7headers7HeadersNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame7headersNtB5_7HeadersNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame8priority16StreamDependencyNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !153, !noundef !80 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40589
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store ptr %i.d, ptr %i.a, align 8, !noalias !40589
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1847, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1848, i64 noundef 13, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1364, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1618, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1679, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1849, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40589
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame8priority8PriorityNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !153, !noundef !80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40593
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !noalias !40593
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1585, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1367, i64 noundef 9, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1364, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1586, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1584) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40593
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame8settings8SettingsNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !align !153, !noundef !80
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame8settingsNtB5_8SettingsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(60) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame9stream_id8StreamIdNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !153, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40597
  store ptr %i.b, ptr %i.a, align 8, !noalias !40597
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1681, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1365) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40597
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25proto10connection5StateNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !80, !align !153, !noundef !80 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40601)
  %i.d = load i8, ptr %i.c, align 4, !range !95, !alias.scope !40601, !noundef !80
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2286, i64 noundef 4) #45, !noalias !40601
  br label %_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40602
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.g, ptr %i.b, align 8, !noalias !40602
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2287, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1072, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1850) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40602
  br label %_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40602
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.j, ptr %i.a, align 8, !noalias !40602
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1889, i64 noundef 6, ptr noundef nonnull readonly %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1072, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1850) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40602
  br label %_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25proto5error5ErrorNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 9 uses
  %i.e = load i8, ptr %i.d, align 8, !range !95, !noalias !40605, !noundef !80
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40605
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.c, align 8, !noalias !40605
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1703, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1364, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1072, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1850) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40605
  br label %_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40605
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.l, ptr %i.b, align 8, !noalias !40605
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1852, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1851, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1072, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1850) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40605
  br label %_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40605
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.a, align 8, !noalias !40605
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1855, i64 noundef 2, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1853, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1854) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40605
  br label %_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.b ], [ %i.m, %bb.c ], [ %i.p, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25proto5error9InitiatorNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40608)
  %i.b = load i8, ptr %i.a, align 1, !range !95, !alias.scope !40608, !noundef !80 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.3238, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext) #45, !noalias !40608
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !80 ; 2 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.h = icmp samesign eq i64 %.val1, 0
  br i1 %i.h, label %_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsa7TLgTh0CeG_9ssmanager.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.c, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.08.i.i, ptr %i.b, align 8, !captures !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1o_NtCsf3Ta7LF998c_4core3fmtRhNtB6_8LowerHex3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.46.0..sroa_idx.i.i, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noundef nonnull @335, ptr noundef nonnull %i.a) #45
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsa7TLgTh0CeG_9ssmanager.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsa7TLgTh0CeG_9ssmanager.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i.i

_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs4base7PayloadNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_7PayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs5enums8HpkeAeadNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !align !181, !noundef !80
  %i.b = tail call noundef zeroext i1 @_RNvXs38_NtNtCsb28OZjLZAOu_6rustls4msgs5enumsNtB6_8HpkeAeadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake16EchConfigPayloadNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40612)
  %i.d = load i64, ptr %i.c, align 8, !range !115, !alias.scope !40612, !noundef !80
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40613
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.a, align 8, !noalias !40613
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1583, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1769, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1767, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1770, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1768) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40613
  br label %_RNvXs4A_NtNtCsb28OZjLZAOu_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40613
  store ptr %i.c, ptr %i.b, align 8, !noalias !40613
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1766, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1765) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40613
  br label %_RNvXs4A_NtNtCsb28OZjLZAOu_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs4A_NtNtCsb28OZjLZAOu_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake16UnknownExtensionNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40617
  store ptr %i.b, ptr %i.a, align 8, !noalias !40617
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1694, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1695, i64 noundef 3, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1692, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1372, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1693) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40617
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40621
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.a, align 8, !noalias !40621
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1813, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1814, i64 noundef 10, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1810, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1815, i64 noundef 19, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1679, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1816, i64 noundef 11, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1811, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1817, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1812) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40621
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake18EchConfigExtensionNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40625
  store ptr %i.b, ptr %i.a, align 8, !noalias !40625
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1583, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1771) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40625
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80
  %.val = load i8, ptr %i.a, align 1, !range !93, !noundef !80
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 5, i64 3
  %.1.i = select i1 %i.b, ptr @1697, ptr @1696
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i) #45
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !181, !noundef !80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40629
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !noalias !40629
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1800, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1801, i64 noundef 6, ptr noundef nonnull readonly align 2 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1798, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1802, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1799) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40629
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls5error11other_error10OtherErrorNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40633
  store ptr %i.b, ptr %i.a, align 8, !noalias !40633
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1683, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1682) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40633
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks3net6option11ConnectOptsNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40637
  store ptr %i.b, ptr %i.a, align 8, !noalias !40637
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1784, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1785, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1328, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1786, i64 noundef 15, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1781, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1787, i64 noundef 14, ptr noundef nonnull readonly %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1356, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1788, i64 noundef 3, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1782, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1789, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1783) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40637
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks3net6option13UdpSocketOptsNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40641
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8, !noalias !40641
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1596, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1597, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1451, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1598, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1331) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40641
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.g, align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40644)
  %i.h = load i16, ptr %i.f, align 8, !range !81, !alias.scope !40644, !noundef !80
  %i.i = trunc nuw i16 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40644
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.c, align 8, !noalias !40644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40644
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.k, ptr %i.b, align 8, !noalias !40644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40644
  store ptr %i.c, ptr %i.a, align 8, !noalias !40644
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !40644
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.l, align 8, !noalias !40644
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRtNtB6_7Display3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !40644
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.m = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @412, ptr noundef nonnull %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40644
  br label %_RNvXs4_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !40644
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.n, ptr %i.e, align 8, !noalias !40644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !40644
  store ptr %i.e, ptr %i.d, align 8, !noalias !40644
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_7Display3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !40644
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.o = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @341, ptr noundef nonnull %i.d) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !40644
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !40644
  br label %_RNvXs4_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs4_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol11ListRequestNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2479, i64 noundef 11) #45
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol11PingRequestNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2545, i64 noundef 11) #45
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol11StatRequestNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40648
  store ptr %i.b, ptr %i.a, align 8, !noalias !40648
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2600, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2601, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2599) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40648
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol12ServerConfigNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 21 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40652
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 170
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40652
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %i.k, ptr %i.a, align 8, !noalias !40652
  store ptr %i.d, ptr %i.b, align 8, !noalias !40652
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @1720, ptr %i.l, align 8, !noalias !40652
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.m, align 8, !noalias !40652
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @1355, ptr %i.n, align 8, !noalias !40652
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.o, align 8, !noalias !40652
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @1356, ptr %i.p, align 8, !noalias !40652
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.q, align 8, !noalias !40652
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @1500, ptr %i.r, align 8, !noalias !40652
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.s, align 8, !noalias !40652
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @1356, ptr %i.t, align 8, !noalias !40652
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.u, align 8, !noalias !40652
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @1356, ptr %i.v, align 8, !noalias !40652
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %i.w, align 8, !noalias !40652
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @1356, ptr %i.x, align 8, !noalias !40652
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.j, ptr %i.y, align 8, !noalias !40652
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @1356, ptr %i.z, align 8, !noalias !40652
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.a, ptr %i.aa, align 8, !noalias !40652
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @2288, ptr %i.ab, align 8, !noalias !40652
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1621, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @2290, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40652
  ret i1 %i.ac
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol13RemoveRequestNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !181, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40656
  store ptr %i.b, ptr %i.a, align 8, !noalias !40656
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2406, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2289, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @190) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40656
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol16ServerUserConfigNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40660
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !40660
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2215, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1774, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1355, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1609, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @201) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40660
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata10openpgpkey10OPENPGPKEYNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40664
  store ptr %i.b, ptr %i.a, align 8, !noalias !40664
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1718, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1719, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1437) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40664
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata1a1ANtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40668
  store ptr %i.b, ptr %i.a, align 8, !noalias !40668
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1892, i64 noundef 1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1926) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40668
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata2mx2MXNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40672
  store ptr %i.b, ptr %i.a, align 8, !noalias !40672
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1721, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1722, i64 noundef 10, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1720, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1723, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @215) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40672
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3caa3CAANtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40676
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !40676
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1863, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1864, i64 noundef 15, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1329, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1749, i64 noundef 14, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1679, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1865, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1355, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1866, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1437) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40676
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3opt10EdnsOptionNtB6_5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !80, !align !86, !noundef !80 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40680)
  %i.e = load i64, ptr %i.d, align 8, !range !147, !alias.scope !40680, !noundef !80 ; 2 uses
  %i.f = xor i64 %i.e, -9223372036854775808
  %i.g = icmp slt i64 %i.e, 0
  %i.h = select i1 %i.g, i64 %i.f, i64 2
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40681
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.c, align 8, !noalias !40681
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2084, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2083) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40681
  br label %_RNvXsI_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3optNtB5_10EdnsOptionNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

end_hunk_8
begin_hunk_9_@_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtB5_8Dispatch8recv_msgCsa7TLgTh0CeG_9ssmanager:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !align !86, !noundef !80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  store ptr null, ptr %i.ai, align 8
  %.not7.i = icmp eq ptr %i.aj, null
  store atomic i8 0, ptr %i.ag seq_cst, align 8
  br i1 %.not7.i, label %_RNvMs4_CsaaBHDuKNmAh_4wantNtB5_5Taker6signal.exit, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsfIIJaM61v70_8try_lock6LockedINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsfIIJaM61v70_8try_lock6LockedINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !80, !noundef !80
  tail call void %i.an(ptr noundef %i.al) #45, !inline_history !42733
  br label %_RNvMs4_CsaaBHDuKNmAh_4wantNtB5_5Taker6signal.exit

_RNvMs4_CsaaBHDuKNmAh_4wantNtB5_5Taker6signal.exit: ; preds = %bb.i, %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCsfIIJaM61v70_8try_lock6LockedINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsa7TLgTh0CeG_9ssmanager.exit.i
  %.val18 = load ptr, ptr %i.aa, align 8, !nonnull !80, !noundef !80 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val18, i64 440 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !range !93, !noundef !80
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE5closeCsa7TLgTh0CeG_9ssmanager.exit, label %bb.l

bb.l:                                             ; preds = %_RNvMs4_CsaaBHDuKNmAh_4wantNtB5_5Taker6signal.exit
  store i8 1, ptr %i.ao, align 8
  br label %_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE5closeCsa7TLgTh0CeG_9ssmanager.exit

_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE5closeCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvMs4_CsaaBHDuKNmAh_4wantNtB5_5Taker6signal.exit, %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.val18, i64 448
  %i.as = atomicrmw or ptr %i.ar, i64 1 release, align 8 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val18, i64 384
  tail call void @_RNvMs5_NtNtCsczhfDQ1qNkX_5tokio4sync6notifyNtB5_6Notify14notify_waiters(ptr noundef nonnull align 8 %i.at) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !42755
  store ptr @334, ptr %i.c, align 8, !noalias !42755
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr null, ptr %i.au, align 8, !noalias !42755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !42755
  store ptr %i.c, ptr %i.b, align 8, !noalias !42755
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.av, align 8, !noalias !42755
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.aw, align 8, !noalias !42755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42755
  call fastcc void @_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE4recvCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(248) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !42756
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.ay = load i64, ptr %i.ax, align 8, !range !118, !alias.scope !42757, !noalias !42755, !noundef !80 ; 4 uses
  %i.az = icmp eq i64 %i.ay, -2
  br i1 %i.az, label %_RINvNtNtCsaI3lGUjttVO_5hyper6common4task12now_or_neverNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtBY_17UnboundedReceiverINtNtNtB6_6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB2L_8response8ResponseNtNtNtB6_4body8incoming8IncomingEEE4recv0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i, label %_RINvNtNtCsaI3lGUjttVO_5hyper6common4task12now_or_neverNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtBY_17UnboundedReceiverINtNtNtB6_6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB2L_8response8ResponseNtNtNtB6_4body8incoming8IncomingEEE4recv0ECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtNtCsaI3lGUjttVO_5hyper6common4task12now_or_neverNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtBY_17UnboundedReceiverINtNtNtB6_6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB2L_8response8ResponseNtNtNtB6_4body8incoming8IncomingEEE4recv0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE5closeCsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42755
  %.val.i10.i = load ptr, ptr %i.c, align 8, !noalias !42755, !nonnull !80, !align !86, !noundef !80
  %.val1.i11.i = load ptr, ptr %i.au, align 8, !noalias !42755, !noundef !80
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i10.i, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !42755, !nonnull !80, !noundef !80
  call void %i.bb(ptr noundef %.val1.i11.i) #45, !noalias !42755, !inline_history !42742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42755
  br label %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit.thread

_RINvNtNtCsaI3lGUjttVO_5hyper6common4task12now_or_neverNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtBY_17UnboundedReceiverINtNtNtB6_6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB2L_8response8ResponseNtNtNtB6_4body8incoming8IncomingEEE4recv0ECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RNvMsa_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc4chanINtB5_2RxINtNtNtCsaI3lGUjttVO_5hyper6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB1O_8response8ResponseNtNtNtB10_4body8incoming8IncomingEENtNtB7_9unbounded9SemaphoreE5closeCsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(224) %i.a, i64 224, i1 false), !noalias !42758
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i, i64 16, i1 false), !noalias !42758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !42755
  %.val.i.i = load ptr, ptr %i.c, align 8, !noalias !42755, !nonnull !80, !align !86, !noundef !80
  %.val1.i.i = load ptr, ptr %i.au, align 8, !noalias !42755, !noundef !80
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !42755, !nonnull !80, !noundef !80
  call void %i.bd(ptr noundef %.val1.i.i) #45, !noalias !42755, !inline_history !42742
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !42755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !42755
  %cond.i = icmp eq i64 %i.ay, -1
  br i1 %cond.i, label %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit.thread, label %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit

_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit.thread: ; preds = %_RINvNtNtCsaI3lGUjttVO_5hyper6common4task12now_or_neverNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtBY_17UnboundedReceiverINtNtNtB6_6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB2L_8response8ResponseNtNtNtB6_4body8incoming8IncomingEEE4recv0ECsa7TLgTh0CeG_9ssmanager.exit.thread.i, %_RINvNtNtCsaI3lGUjttVO_5hyper6common4task12now_or_neverNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtBY_17UnboundedReceiverINtNtNtB6_6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB2L_8response8ResponseNtNtNtB6_4body8incoming8IncomingEEE4recv0ECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.r

_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvNtNtCsaI3lGUjttVO_5hyper6common4task12now_or_neverNCNvMs1_NtNtNtCsczhfDQ1qNkX_5tokio4sync4mpsc9unboundedINtBY_17UnboundedReceiverINtNtNtB6_6client8dispatch8EnvelopeINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB2L_8response8ResponseNtNtNtB6_4body8incoming8IncomingEEE4recv0ECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.024, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.0.i, i64 224, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !42759
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %.not17 = icmp eq i64 %i.ay, 2
  br i1 %.not17, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ay, ptr %i.f, align 8
  %.sroa.9.224..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.be = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error12new_canceled() #45 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !42760)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !42761
  %i.bf = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !42761 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.n, label %_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !83

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #54, !noalias !42761
  unreachable

_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.m
  store ptr %i.o, ptr %i.bf, align 8, !noalias !42761
  %.val.i20 = load ptr, ptr %i.be, align 8, !alias.scope !42760, !noundef !80 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %.val1.i = load ptr, ptr %i.bh, align 8, !alias.scope !42760 ; 4 uses
  %i.bi = icmp eq ptr %.val.i20, null
  br i1 %i.bi, label %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsa7TLgTh0CeG_9ssmanager.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.bj = load ptr, ptr %.val1.i, align 8, !invariant.load !80, !noalias !42760 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %i.bj(ptr noundef nonnull %.val.i20) #53, !noalias !42760, !inline_history !42752
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !82, !invariant.load !80, !noalias !42760 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsa7TLgTh0CeG_9ssmanager.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !84, !invariant.load !80, !noalias !42760
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i20, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) %i.bo) #45, !noalias !42760
  br label %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsa7TLgTh0CeG_9ssmanager.exit

_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsa7TLgTh0CeG_9ssmanager.exit.i, %bb.q, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  store ptr %i.bf, ptr %i.be, align 8, !alias.scope !42760
  store ptr @2309, ptr %i.bh, align 8, !alias.scope !42760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.e, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.024, i64 224, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  store ptr %i.be, ptr %.sroa.411.0..sroa_idx, align 8
  call fastcc void @_RNvMs5_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8CallbackINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE4sendCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(232) %i.e) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit.thread, %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit, %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsa7TLgTh0CeG_9ssmanager.exit
  %.sroa.0.3 = phi ptr [ null, %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsa7TLgTh0CeG_9ssmanager.exit ], [ %i.o, %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit ], [ %i.o, %_RNvMs1_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8ReceiverINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE8try_recvCsa7TLgTh0CeG_9ssmanager.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_14ResolverConfigNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1966, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1967, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1963, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1968, i64 noundef 6, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1964, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1969, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1965) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !95, !noundef !80 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.3238, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #45
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.e, align 8, !noundef !80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 %.val3
  %i.g = icmp samesign eq i64 %.val3, 0
  br i1 %i.g, label %_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.c, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %.val2, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.08.i, ptr %i.b, align 8, !captures !173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1o_NtCsf3Ta7LF998c_4core3fmtRhNtB6_8LowerHex3fmtCsa7TLgTh0CeG_9ssmanager, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.h = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @335, ptr noundef nonnull %i.a) #45
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsC_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_12ResolveHostsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !95, !noundef !80 ; 2 uses
  %narrow = sub nuw nsw i8 6, %i.a
  %switch.offset = zext nneg i8 %narrow to i64
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsC_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_12ResolveHostsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef %switch.offset) #45
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_16TcpRequestHeaderNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2072, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2073, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2071, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2074, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1428) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsH_NtCskLEkjrY29GY_16rustls_pki_types11server_nameNtB5_7DnsNameNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2076, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2075) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsH_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_17TcpResponseHeaderNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2078, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2079, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2077, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2074, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1428) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsI_NtCsb28OZjLZAOu_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !147, !noundef !80 ; 2 uses
  %i.c = xor i64 %i.b, -9223372036854775808
  %i.d = icmp slt i64 %i.b, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2080, i64 noundef 10) #45
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2081, i64 noundef 10) #45
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2070, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2082) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsJ_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_16HandshakeRequestNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2093, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2094, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1437) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsf3Ta7LF998c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1819, i64 noundef 5) #45
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsM_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_17HandshakeResponseNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2104, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2105, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @218) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsN_NtCslxdWNweD0x2_11shadowsocks6configNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !182, !noundef !80
  %switch.tableidx = add nsw i8 %i.a, -1          ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsN_NtCslxdWNweD0x2_11shadowsocks6configNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsN_NtCslxdWNweD0x2_11shadowsocks6configNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.3239, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #45
  ret i1 %i.d
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsO_NtCslxdWNweD0x2_11shadowsocks6configNtB5_12ServerWeightNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2114, i64 noundef 12, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2115, i64 noundef 10, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2112, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2116, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2113) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsQ_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !80 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsv_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXs9_NtNtNtCsf3Ta7LF998c_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsx_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
end_hunk_9
begin_hunk_10_@_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame6reason6ReasonENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame7go_away6GoAwayENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2622) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame7headers11PushPromiseENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2623) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame7headers7HeadersENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2624) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame8priority8PriorityENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2625) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame8settings8SettingsENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2626) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame9stream_id8StreamIdENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2627) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25proto10connection5StateENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2628) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25proto5error5ErrorENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2629) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25proto5error9InitiatorENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1850) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsf3Ta7LF998c_4core2io5error9ErrorKindENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2630) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1623) #53
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtNtCs2dlyTE5y14r_2h25proto7streams5state5StateENtB5_5Value6recordCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !80, !nonnull !80
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2631) #53
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCslxdWNweD0x2_11shadowsocks7manager8protocolNtB5_14ManagerRequestNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !106, !noundef !80 ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %i.h = add i64 %i.f, -9223372036854775807
  %i.i = select i1 %i.g, i64 %i.h, i64 0
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2708, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2707) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.d, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2710, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2709) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2712, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2711) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1370, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2713) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2715, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2714) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtCs2Z77Vc7pSLS_13hickory_proto2op6headerNtB5_11MessageTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !93, !noundef !80
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 8, i64 5
  %.1 = select i1 %i.b, ptr @2716, ptr @1579
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #45
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read10read_exactCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.028.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.117.i, %bb.n ] ; 3 uses
  %.sroa.7.026.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.115.i, %bb.n ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44848
  store ptr %.sroa.0.028.i, ptr %i.b, align 8, !noalias !44848
  store i64 %.sroa.7.026.i, ptr %i.e, align 8, !noalias !44848
  store i64 0, ptr %i.f, align 8, !noalias !44848
  store i64 %.sroa.7.026.i, ptr %i.g, align 8, !noalias !44848
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !44849, !nonnull !80, !noundef !80
  %i.i = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !44850 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 11 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44848
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !noalias !44848, !noundef !80 ; 2 uses
  %i.n = load i64, ptr %i.f, align 8, !noalias !44848, !noundef !80 ; 7 uses
  %.not7.i.i = icmp ugt i64 %i.n, %i.m
  br i1 %.not7.i.i, label %bb.e, label %bb.g, !prof !98

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.n, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !44850
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.k to i64                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44848
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split9.i
    i64 1, label %.split8.i
  ], !prof !167

default.unreachable:                              ; preds = %bb.k, %bb.f
  unreachable

.split.i:                                         ; preds = %bb.f
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !80, !noundef !80
  %i.v = call noundef zeroext i1 %i.u(i32 noundef %i.r) #45, !inline_history !44843
  br i1 %i.v, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

.split9.i:                                        ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !168, !noundef !80
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

.split8.i:                                        ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.k, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !168, !noundef !80
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.f, %.thread.i
  %i.ac = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread.i ], [ %i.k, %bb.f ] ; 3 uses
  %.sroa.4.1.i.ph7.i = phi i64 [ 55834574851, %.thread.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.ad = lshr i64 %.sroa.4.1.i.ph7.i, 32
  %i.ae = icmp ult ptr %i.ac, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ad to i8
  %spec.select.i.i.i.i = select i1 %i.ae, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.af = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.ag, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44848
  %i.ah = icmp eq i64 %i.n, 0
  br i1 %i.ah, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ugt i64 %i.n, %.sroa.7.026.i
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !92

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %.sroa.7.026.i, i64 noundef %.sroa.7.026.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @350) #55
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = sub nuw nsw i64 %.sroa.7.026.i, %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 %i.n
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split8.i, %.split9.i, %.split.i
  %.ph.i = phi ptr [ %i.k, %.split9.i ], [ %i.k, %.split8.i ], [ %i.k, %.split.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  %.sroa.4.1.i4.ph.i = phi i64 [ %i.o, %.split9.i ], [ %i.o, %.split8.i ], [ %i.o, %.split.i ], [ %.sroa.4.1.i.ph7.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44851
  %i.al = and i64 %.sroa.4.1.i4.ph.i, 3
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i
    i64 1, label %bb.m
  ], !prof !111

bb.l:                                             ; preds = %bb.k
  %i.am = icmp ult ptr %.ph.i, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %.sroa.4.1.i4.ph.i, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %.ph.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.h, align 8, !alias.scope !44852, !noalias !44851
  store i8 3, ptr %i.a, align 8, !alias.scope !44852, !noalias !44851
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #45, !noalias !44853
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44851
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.j
  %.sroa.0.117.i = phi ptr [ %.sroa.0.028.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.ak, %bb.j ]
  %.sroa.7.115.i = phi i64 [ %.sroa.7.026.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.aj, %bb.j ] ; 2 uses
  %i.aq = icmp eq i64 %.sroa.7.115.i, 0
  br i1 %i.aq, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %.split.i, %.split9.i, %.split8.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.g, %bb.n, %bb.a
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %i.k, %.split9.i ], [ null, %bb.n ], [ %i.k, %.split.i ], [ @352, %bb.g ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.k, %.split8.i ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read11read_to_endCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager(ptr %.val, ptr %.val1, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #45
  ret { i64, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read13read_vectoredCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44865)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !44865, !noalias !44866, !noundef !80 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !44867, !noundef !80
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44868
  store ptr %.sroa.02.0.i.i, ptr %i.a, align 8, !noalias !44868
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i.i, ptr %i.j, align 8, !noalias !44868
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !44868
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.3.0.i.i, ptr %i.l, align 8, !noalias !44868
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !44869, !nonnull !80, !noundef !80
  %i.m = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #45, !noalias !44870 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.o to i64
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !noalias !44868, !noundef !80 ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !noalias !44868, !noundef !80 ; 3 uses
  %.not7.i.i.i = icmp ugt i64 %i.s, %i.r
  br i1 %.not7.i.i.i, label %bb.g, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit, !prof !98

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !44870
  unreachable

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.e, %bb.f
  %.sroa.4.1.i.i.i = phi i64 [ 55834574851, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %.sroa.0.1.i.i.i = phi i64 [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i ], [ 1, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44868
  %i.t = inttoptr i64 %.sroa.4.1.i.i.i to ptr
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.t, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read14read_buf_exactCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !noalias !44882, !noundef !80
  %i.e = load i64, ptr %i.c, align 8, !noalias !44882, !noundef !80 ; 2 uses
  %.not8.i = icmp eq i64 %i.d, %i.e
  br i1 %.not8.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi i64 [ %i.e, %.lr.ph.i ], [ %i.af, %.backedge.i ]
  %i.h = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #45 ; 10 uses
  %.not2.i = icmp eq ptr %i.h, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split6.i
    i64 1, label %.split5.i
  ], !prof !111

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45, !noalias !44882
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !44882, !nonnull !80, !noundef !80
  %i.p = call noundef zeroext i1 %i.o(i32 noundef %i.l) #45, !noalias !44882, !inline_history !44873
  br i1 %i.p, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

.split6.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !168, !noalias !44882, !noundef !80
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

.split5.i:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.h, i64 31
  %i.u = load i8, ptr %i.t, align 8, !range !168, !noalias !44882, !noundef !80
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.f, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.w = lshr i64 %i.i, 32
  %i.x = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.z, label %bb.e, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.c, align 8, !noalias !44882, !noundef !80 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split6.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44883
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44884
  %i.ac = and i64 %i.i, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

bb.f:                                             ; preds = %.split5.i
  %i.ae = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44885
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.f, align 8, !alias.scope !44886, !noalias !44885
  store i8 3, ptr %i.a, align 8, !alias.scope !44886, !noalias !44885
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #45, !noalias !44885
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44885
  %.pre.i = load i64, ptr %i.c, align 8, !noalias !44882
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.d
  %i.af = phi i64 [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !noalias !44882, !noundef !80
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %.split.i, %.split6.i, %.split5.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %.backedge.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %i.h, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.h, %.split.i ], [ %i.h, %.split5.i ], [ @352, %bb.d ], [ %i.h, %.split6.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read14read_to_stringCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44891)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !44891, !noundef !80 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsa7TLgTh0CeG_9ssmanager(ptr readonly %.val, ptr %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #45 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !44891, !nonnull !80, !noundef !80
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !44891, !noundef !80 ; 3 uses
  %i.j = sub nuw i64 %i.i, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44891
  call void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) #45, !noalias !44891
  %i.l = load i64, ptr %i.a, align 8, !range !87, !noalias !44891, !noundef !80
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44891
  %i.m = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.m)
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.f, 1
  %i.o = extractvalue { i64, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44891
  %i.p = trunc nuw i64 %i.o to i1
  %..i = select i1 %i.p, ptr %i.n, ptr @348
  %i.q = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.07.i = phi i64 [ %i.i, %bb.b ], [ %i.d, %bb.c ]
  %.merged.i = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.07.i, ptr %i.c, align 8, !alias.scope !44892
  ret { i64, ptr } %.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read16is_read_vectoredCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !93, !noundef !80
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !80
  %i.j = sub nuw i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.l = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.k, i64 noundef %i.j) #45 ; 0 uses
  store i8 1, ptr %i.c, align 8
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !80
  %i.q = sub nuw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44900
  store ptr %i.r, ptr %i.a, align 8, !noalias !44900
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !noalias !44900
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !44900
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.q, ptr %i.u, align 8, !noalias !44900
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !44901, !nonnull !80, !noundef !80
  %i.v = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #45, !noalias !44902 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0Csa7TLgTh0CeG_9ssmanager.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.x to i64
  br label %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0Csa7TLgTh0CeG_9ssmanager.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.s, align 8, !noalias !44900, !noundef !80 ; 2 uses
  %i.ab = load i64, ptr %i.t, align 8, !noalias !44900, !noundef !80 ; 4 uses
  %.not7.i.i.i = icmp ugt i64 %i.ab, %i.aa
  br i1 %.not7.i.i.i, label %bb.f, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !44902
  unreachable

_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0Csa7TLgTh0CeG_9ssmanager.exit.thread.i: ; preds = %bb.d, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.4.1.i.i.ph.i = phi i64 [ %i.z, %bb.d ], [ 55834574851, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44900
  %i.ac = inttoptr i64 %.sroa.4.1.i.i.ph.i to ptr
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read8read_buf0ECsa7TLgTh0CeG_9ssmanager.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44900
  %i.ad = load i8, ptr %i.c, align 8, !range !93, !noalias !44903, !noundef !80
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.o, align 8, !noalias !44903, !noundef !80
  %i.ag = load i64, ptr %i.m, align 8, !noalias !44903, !noundef !80
  %i.ah = sub i64 %i.af, %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %i.ah, %bb.h ], [ 0, %bb.g ]
  %.not.i.i = icmp ugt i64 %i.ab, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.j, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !92

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1224, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1226) #55, !noalias !44903
  unreachable

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.i
  %i.ai = load i64, ptr %i.m, align 8, !noalias !44903, !noundef !80
  %i.aj = add i64 %i.ai, %i.ab
  store i64 %i.aj, ptr %i.m, align 8, !noalias !44903
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read8read_buf0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read8read_buf0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0Csa7TLgTh0CeG_9ssmanager.exit.thread.i, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.ac, %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0Csa7TLgTh0CeG_9ssmanager.exit.thread.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read10read_exactCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.lr.ph.i
  %.sroa.0.031.i = phi ptr [ %1, %.lr.ph.i ], [ %.sroa.0.117.i, %bb.n ] ; 3 uses
  %.sroa.7.030.i = phi i64 [ %2, %.lr.ph.i ], [ %.sroa.7.115.i, %bb.n ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44924
  store ptr %.sroa.0.031.i, ptr %i.b, align 8, !noalias !44924
  store i64 %.sroa.7.030.i, ptr %i.e, align 8, !noalias !44924
  store i64 0, ptr %i.f, align 8, !noalias !44924
  store i64 %.sroa.7.030.i, ptr %i.g, align 8, !noalias !44924
  %i.i = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #45, !noalias !44925 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, ptr } %i.i, 1        ; 11 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !noalias !44924, !noundef !80 ; 2 uses
  %i.n = load i64, ptr %i.f, align 8, !noalias !44924, !noundef !80 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.n, %i.m
  br i1 %.not7.i.i.i.i, label %bb.e, label %bb.f, !prof !98

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.n, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !44925
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44924
  %.not.i6.i.i.i = icmp ugt i64 %i.n, %.sroa.7.030.i
  br i1 %.not.i6.i.i.i, label %bb.g, label %bb.i, !prof !92

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1080, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1684) #55, !noalias !44926
  unreachable

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44924
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44924
  %i.o = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split9.i
    i64 1, label %.split8.i
  ], !prof !167

default.unreachable:                              ; preds = %bb.k, %bb.h
  unreachable

.split.i:                                         ; preds = %bb.h
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !80, !noundef !80
  %i.v = call noundef zeroext i1 %i.u(i32 noundef %i.r) #45, !inline_history !44919
  br i1 %i.v, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

.split9.i:                                        ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !168, !noundef !80
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

.split8.i:                                        ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.l, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !168, !noundef !80
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.h, %.thread.i
  %i.ac = phi ptr [ inttoptr (i64 55834574851 to ptr), %.thread.i ], [ %i.l, %bb.h ] ; 3 uses
  %.sroa.4.1.i.ph7.i = phi i64 [ 55834574851, %.thread.i ], [ %i.o, %bb.h ] ; 2 uses
  %i.ad = lshr i64 %.sroa.4.1.i.ph7.i, 32
  %i.ae = icmp ult ptr %i.ac, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ad to i8
  %spec.select.i.i.i.i = select i1 %i.ae, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.af = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.ag, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.n, 0
  br i1 %i.ah, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = sub nuw nsw i64 %.sroa.7.030.i, %i.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 %i.n
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split8.i, %.split9.i, %.split.i
  %.ph.i = phi ptr [ %i.l, %.split9.i ], [ %i.l, %.split8.i ], [ %i.l, %.split.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  %.sroa.4.1.i4.ph.i = phi i64 [ %i.o, %.split9.i ], [ %i.o, %.split8.i ], [ %i.o, %.split.i ], [ %.sroa.4.1.i.ph7.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44927
  %i.ak = and i64 %.sroa.4.1.i4.ph.i, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i
    i64 1, label %bb.m
  ], !prof !111

bb.l:                                             ; preds = %bb.k
  %i.al = icmp ult ptr %.ph.i, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %.sroa.4.1.i4.ph.i, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.ph.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.h, align 8, !alias.scope !44928, !noalias !44927
  store i8 3, ptr %i.a, align 8, !alias.scope !44928, !noalias !44927
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #45, !noalias !44929
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44927
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.j
  %.sroa.0.117.i = phi ptr [ %.sroa.0.031.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.aj, %bb.j ]
  %.sroa.7.115.i = phi i64 [ %.sroa.7.030.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ap = icmp eq i64 %.sroa.7.115.i, 0
  br i1 %i.ap, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %.split.i, %.split9.i, %.split8.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.i, %bb.n, %bb.a
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %i.l, %.split9.i ], [ null, %bb.n ], [ %i.l, %.split.i ], [ @352, %bb.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.l, %.split8.i ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr %.val, ptr %.val1, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #45
  ret { i64, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read13read_vectoredCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44951)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !44951, !noalias !44952, !noundef !80 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !44953, !noundef !80
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44954
  store ptr %.sroa.02.0.i.i, ptr %i.a, align 8, !noalias !44954
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i.i, ptr %i.j, align 8, !noalias !44954
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !44954
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.3.0.i.i, ptr %i.l, align 8, !noalias !44954
  %i.m = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #45, !noalias !44955 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.j, align 8, !noalias !44954, !noundef !80 ; 2 uses
  %i.r = load i64, ptr %i.k, align 8, !noalias !44954, !noundef !80 ; 4 uses
  %.not7.i.i.i.i.i = icmp ugt i64 %i.r, %i.q
  br i1 %.not7.i.i.i.i.i, label %bb.f, label %bb.g, !prof !98

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.r, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !44955
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44954
  %.not.i6.i.i.i.i = icmp ugt i64 %i.r, %.sroa.3.0.i.i
  br i1 %.not.i6.i.i.i.i, label %bb.h, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit, !prof !92

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1080, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1684) #55, !noalias !44956
  unreachable

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44954
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44954
  %i.s = ptrtoint ptr %i.p to i64
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.sroa.4.1.i.i.i = phi i64 [ 55834574851, %bb.i ], [ %i.s, %bb.j ], [ %i.r, %bb.g ]
  %.sroa.0.1.i.i.i = phi i64 [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %bb.g ]
  %i.t = inttoptr i64 %.sroa.4.1.i.i.i to ptr
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.t, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_buf_exactCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !noalias !44968, !noundef !80
  %i.e = load i64, ptr %i.c, align 8, !noalias !44968, !noundef !80 ; 2 uses
  %.not8.i = icmp eq i64 %i.d, %i.e
  br i1 %.not8.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi i64 [ %i.e, %.lr.ph.i ], [ %i.af, %.backedge.i ]
  %i.h = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #45 ; 10 uses
  %.not2.i = icmp eq ptr %i.h, null
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split6.i
    i64 1, label %.split5.i
  ], !prof !111

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45, !noalias !44968
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !44968, !nonnull !80, !noundef !80
  %i.p = call noundef zeroext i1 %i.o(i32 noundef %i.l) #45, !noalias !44968, !inline_history !44959
  br i1 %i.p, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

.split6.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !168, !noalias !44968, !noundef !80
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

.split5.i:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.h, i64 31
  %i.u = load i8, ptr %i.t, align 8, !range !168, !noalias !44968, !noundef !80
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.f, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.w = lshr i64 %i.i, 32
  %i.x = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.z, label %bb.e, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.c, align 8, !noalias !44968, !noundef !80 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split6.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44969
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44970
  %i.ac = and i64 %i.i, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

bb.f:                                             ; preds = %.split5.i
  %i.ae = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44971
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.f, align 8, !alias.scope !44972, !noalias !44971
  store i8 3, ptr %i.a, align 8, !alias.scope !44972, !noalias !44971
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #45, !noalias !44971
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44971
  %.pre.i = load i64, ptr %i.c, align 8, !noalias !44968
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.d
  %i.af = phi i64 [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !noalias !44968, !noundef !80
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %.split.i, %.split6.i, %.split5.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %.backedge.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %i.h, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.h, %.split.i ], [ %i.h, %.split5.i ], [ @352, %bb.d ], [ %i.h, %.split6.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_to_stringCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44977)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !44977, !noundef !80 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsa7TLgTh0CeG_9ssmanager(ptr %.val, ptr %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #45 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !44977, !nonnull !80, !noundef !80
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !44977, !noundef !80 ; 3 uses
  %i.j = sub nuw i64 %i.i, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44977
  call void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) #45, !noalias !44977
  %i.l = load i64, ptr %i.a, align 8, !range !87, !noalias !44977, !noundef !80
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44977
  %i.m = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.m)
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0ECsa7TLgTh0CeG_9ssmanager.exit

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.f, 1
  %i.o = extractvalue { i64, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44977
  %i.p = trunc nuw i64 %i.o to i1
  %..i = select i1 %i.p, ptr %i.n, ptr @348
  %i.q = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.07.i = phi i64 [ %i.i, %bb.b ], [ %i.d, %bb.c ]
  %.merged.i = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.07.i, ptr %i.c, align 8, !alias.scope !44978
  ret { i64, ptr } %.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read16is_read_vectoredCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !93, !noundef !80
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !80
  %i.j = sub nuw i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.l = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.k, i64 noundef %i.j) #45 ; 0 uses
  store i8 1, ptr %i.c, align 8
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !80
  %i.q = sub nuw i64 %i.p, %i.n                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44996
  store ptr %i.r, ptr %i.a, align 8, !noalias !44996
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !noalias !44996
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !44996
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.q, ptr %i.u, align 8, !noalias !44996
  %i.v = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #45, !noalias !44997 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i
  %i.y = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !noalias !44996, !noundef !80 ; 2 uses
  %i.aa = load i64, ptr %i.t, align 8, !noalias !44996, !noundef !80 ; 5 uses
  %.not7.i.i.i.i.i = icmp ugt i64 %i.aa, %i.z
  br i1 %.not7.i.i.i.i.i, label %bb.e, label %bb.f, !prof !98

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aa, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #55, !noalias !44997
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44996
  %.not.i6.i.i.i.i = icmp ugt i64 %i.aa, %i.q
  br i1 %.not.i6.i.i.i.i, label %bb.g, label %bb.j, !prof !92

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @1080, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1684) #55, !noalias !44998
  unreachable

bb.h:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44996
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsa7TLgTh0CeG_9ssmanager.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44996
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsa7TLgTh0CeG_9ssmanager.exit

bb.j:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.c, align 8, !range !93, !noalias !44999, !noundef !80
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.o, align 8, !noalias !44999, !noundef !80
  %i.ae = load i64, ptr %i.m, align 8, !noalias !44999, !noundef !80
  %i.af = sub i64 %i.ad, %i.ae
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i = phi i64 [ %i.af, %bb.k ], [ 0, %bb.j ]
  %.not.i.i = icmp ugt i64 %i.aa, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.m, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i, !prof !92

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1224, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1226) #55, !noalias !44999
  unreachable

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %bb.l
  %i.ag = load i64, ptr %i.m, align 8, !noalias !44999, !noundef !80
  %i.ah = add i64 %i.ag, %i.aa
  store i64 %i.ah, ptr %i.m, align 8, !noalias !44999
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.h, %bb.i, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.y, %bb.i ], [ inttoptr (i64 55834574851 to ptr), %bb.h ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtCsf3Ta7LF998c_4core2io5write5Write17is_write_vectoredCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtCsf3Ta7LF998c_4core2io5write5Write18write_all_vectoredCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %.idx.i = shl nuw nsw i64 %2, 4                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = add nsw i64 %.idx.i, -16
  %i.e = lshr exact i64 %i.d, 4
  %i.f = add nuw nsw i64 %i.e, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.05.017.i = phi i64 [ %i.j, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.016.i = phi ptr [ %i.i, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !45011, !noundef !80
  %.not62 = icmp eq i64 %i.h, 0
  br i1 %.not62, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.05.017.i, 1
  %i.k = icmp eq ptr %i.i, %i.b
  br i1 %i.k, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.0.lcssa.i = phi i64 [ %.sroa.05.017.i, %.lr.ph.i ], [ %i.f, %bb.b ] ; 5 uses
  %i.l = icmp ugt i64 %.sroa.05.0.lcssa.i, %2
  br i1 %i.l, label %bb.d, label %bb.c, !prof !83

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = icmp eq i64 %2, %.sroa.05.0.lcssa.i
  br i1 %i.m, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1233) #55, !noalias !45011
  unreachable

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.05.0.lcssa.i
  %i.o = sub nuw nsw i64 %2, %.sroa.05.0.lcssa.i
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !45012, !nonnull !80, !align !86, !noundef !80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.p, align 8, !alias.scope !45012, !nonnull !80, !align !86, !noundef !80
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.outer

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.outer: ; preds = %bb.k, %.lr.ph
  %.sroa.0.02142.ph = phi ptr [ %i.bb, %bb.k ], [ %i.n, %.lr.ph ] ; 4 uses
  %.sroa.6.041.ph = phi i64 [ %i.ba, %bb.k ], [ %i.o, %.lr.ph ] ; 7 uses
  br label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12: ; preds = %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.outer, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !45012)
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !45013, !nonnull !80, !noundef !80
  %i.r = call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.02142.ph, i64 noundef range(i64 0, 576460752303423488) %.sroa.6.041.ph) #45, !noalias !45012 ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0        ; 2 uses
  %i.t = icmp eq i64 %i.s, 2
  %i.u = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  %.sroa.3.0.i.i = select i1 %i.t, ptr inttoptr (i64 55834574851 to ptr), ptr %i.u ; 11 uses
  %i.v = ptrtoint ptr %.sroa.3.0.i.i to i64       ; 5 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i) ]
  %i.w = and i64 %i.v, 3
  switch i64 %i.w, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split27
    i64 1, label %.split26
  ], !prof !111

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.x = lshr i64 %i.v, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !80, !noundef !80
  %i.ac = call noundef zeroext i1 %i.ab(i32 noundef %i.y) #45, !inline_history !47
  br i1 %i.ac, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.thread.thread, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !168, !noundef !80
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.thread.thread, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split26:                                         ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %.sroa.3.0.i.i, i64 31
  %i.ah = load i8, ptr %i.ag, align 8, !range !168, !noundef !80
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %bb.o, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %bb.e
  %i.aj = lshr i64 %i.v, 32
  %i.ak = icmp ult ptr %.sroa.3.0.i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.aj to i8
  %spec.select.i.i.i = select i1 %i.ak, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.al = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.am, label %bb.n, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.f:                                             ; preds = %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12
  %i.an = icmp eq ptr %i.u, null
  br i1 %i.an, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph.preheader.i2

.lr.ph.preheader.i2:                              ; preds = %bb.f
  %.idx.i1 = shl nuw nsw i64 %.sroa.6.041.ph, 4   ; 2 uses
end_hunk_10
