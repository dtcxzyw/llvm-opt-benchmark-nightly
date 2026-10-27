Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40153
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsgZAIVb0XKpv_9ssservice
define internal { ptr, ptr } @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake13clone_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsgZAIVb0XKpv_9ssservice(ptr noundef %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsgZAIVb0XKpv_9ssservice.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_set9ListEntryINtNtNtNtBN_7runtime4task4join10JoinHandleuEEE25increment_strong_count_inCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @217, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtCsczhfDQ1qNkX_5tokio4util4wake19wake_by_ref_arc_rawINtNtB4_17idle_notified_set9ListEntryINtNtNtNtB6_7runtime4task4join10JoinHandleuEEECsgZAIVb0XKpv_9ssservice(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call fastcc void @_RNvXs5_NtNtCsczhfDQ1qNkX_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleuEENtNtB7_4wake4Wake11wake_by_refCsgZAIVb0XKpv_9ssservice(ptr nonnull %i.a) #52
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !31243)
  call void @llvm.experimental.noalias.scope.decl(metadata !31244)
  %i.ap = icmp ugt i64 %.lcssa59, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa59, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31245
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !31245
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #52, !noalias !31245
  %i.at = load i64, ptr %i.c, align 8, !range !181, !noalias !31245, !noundef !177
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31245
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !31245, !nonnull !177, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31245
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !31245
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !31245
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
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0208) #52, !noalias !31246 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31247
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31247
  store i64 %.sroa.032.0208, ptr %i.t, align 8, !noalias !31247
  store i64 0, ptr %i.u, align 8, !noalias !31247
  store i64 %.sroa.032.0208, ptr %i.v, align 8, !noalias !31247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i.i.i.i.peel = load ptr, ptr %.0.val, align 8, !noalias !31248, !nonnull !177, !noundef !177
  %i.bi = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i.i.peel, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31249 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1      ; 6 uses
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %.thread29.peel, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  %.not.i.i.i.i.peel = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31247
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31250
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !31251, !noalias !31250
  store i8 3, ptr %i.a, align 8, !alias.scope !31251, !noalias !31250
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31250
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31252
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

.thread29.peel:                                   ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31247
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31253
  %i.ch = and i64 %i.cc, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.ci)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

bb.p:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre191, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #62
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31250
  %.val.i.i.i.i.pre = load ptr, ptr %.0.val, align 8, !noalias !31248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31247
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31247
  store i64 %.sroa.032.0208, ptr %i.t, align 8, !noalias !31247
  store i64 0, ptr %i.u, align 8, !noalias !31247
  store i64 %.sroa.032.0208, ptr %i.v, align 8, !noalias !31247
  %i.cj = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i.i.pre, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31249 ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1      ; 6 uses
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %.thread29, label %bb.q

.thread29:                                        ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31247
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.q:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit

.loopexit:                                        ; preds = %bb.q, %bb.m
  %i.cn = load i64, ptr %i.t, align 8, !noalias !31247, !noundef !177 ; 2 uses
  %i.co = load i64, ptr %i.u, align 8, !noalias !31247, !noundef !177 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.co, %i.cn
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.s, !prof !206

bb.r:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.co, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !31249
  unreachable

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31247
  %.not.i.i.i = icmp ugt i64 %i.co, %.sroa.032.0208
  br i1 %.not.i.i.i, label %bb.t, label %bb.w, !prof !186

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2266, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2268) #62, !noalias !31254
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31247
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31252
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge: ; preds = %.thread41, %bb.u, %bb.v
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i, !llvm.loop !31242

bb.u:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31253
  %i.dj = and i64 %i.de, 1095216660480
  %i.dk = icmp ne i64 %i.dj, 1095216660480
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 %i.dk)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

bb.v:                                             ; preds = %.split35
  %i.dl = getelementptr i8, ptr %i.cl, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31250
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  store ptr %i.dl, ptr %i.w, align 8, !alias.scope !31251, !noalias !31250
  store i8 3, ptr %i.a, align 8, !alias.scope !31251, !noalias !31250
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31250
end_hunk_0
begin_hunk_1_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice:bb.a
  %i.ds = inttoptr i64 %.sroa.8.1 to ptr
  %i.dt = insertvalue { i64, ptr } poison, i64 %.sroa.05.1, 0
  %i.du = insertvalue { i64, ptr } %i.dt, ptr %i.ds, 1
  ret { i64, ptr } %i.du

bb.ac:                                            ; preds = %.lr.ph
  %i.dv = ptrtoint ptr %i.ak to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.ad:                                            ; preds = %.lr.ph
  %i.dw = icmp eq ptr %i.ak, null
  %i.dx = load i64, ptr %i.d, align 8, !noundef !177 ; 5 uses
  %i.dy = icmp sgt i64 %i.dx, -1
  call void @llvm.assume(i1 %i.dy)
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dz = sub nsw i64 %i.dx, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.af:                                            ; preds = %bb.ad
  %i.ea = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 4 uses
  %i.eb = sub nsw i64 %i.ea, %i.dx
  %i.ec = icmp ult i64 %i.eb, 32                  ; 2 uses
  %i.ed = icmp eq i64 %i.ea, %i.g
  %or.cond = and i1 %i.ed, %i.ec
  br i1 %or.cond, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !31285)
  call void @llvm.experimental.noalias.scope.decl(metadata !31286)
  %i.ap = icmp ugt i64 %.lcssa46, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa46, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31287
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !31287
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #52, !noalias !31287
  %i.at = load i64, ptr %i.c, align 8, !range !181, !noalias !31287, !noundef !177
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31287
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !31287, !nonnull !177, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31287
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !31287
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !31287
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
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0194) #52, !noalias !31288 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31289
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31289
  store i64 %.sroa.032.0194, ptr %i.t, align 8, !noalias !31289
  store i64 0, ptr %i.u, align 8, !noalias !31289
  store i64 %.sroa.032.0194, ptr %i.v, align 8, !noalias !31289
  %i.bi = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31290 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = trunc nuw i64 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  %i.bl = extractvalue { i64, ptr } %i.bi, 1      ; 2 uses
  %.not.i.i.i.i.i.i.peel = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.peel, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel, %bb.m
  %.sroa.0.0.i.i.ph.peel = phi ptr [ %i.bl, %bb.m ], [ inttoptr (i64 55834574851 to ptr), %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31289
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !31292, !noalias !31291
  store i8 3, ptr %i.a, align 8, !alias.scope !31292, !noalias !31291
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31291
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31293
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31294
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

bb.q:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre177, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #62
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31291
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31289
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31289
  store i64 %.sroa.032.0194, ptr %i.t, align 8, !noalias !31289
  store i64 0, ptr %i.u, align 8, !noalias !31289
  store i64 %.sroa.032.0194, ptr %i.v, align 8, !noalias !31289
  %i.ch = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31290 ; 2 uses
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = trunc nuw i64 %i.ci to i1
  br i1 %i.cj, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ck = extractvalue { i64, ptr } %i.ch, 1      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %bb.v

.loopexit:                                        ; preds = %bb.r, %bb.m
  %i.cl = load i64, ptr %i.t, align 8, !noalias !31289, !noundef !177 ; 2 uses
  %i.cm = load i64, ptr %i.u, align 8, !noalias !31289, !noundef !177 ; 6 uses
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.cm, %i.cl
  br i1 %.not7.i.i.i.i.i.i, label %bb.s, label %bb.t, !prof !206

bb.s:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.cm, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !31290
  unreachable

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31289
  %.not.i6.i.i.i.i.i = icmp ugt i64 %i.cm, %.sroa.032.0194
  br i1 %.not.i6.i.i.i.i.i, label %bb.u, label %bb.y, !prof !186

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2789) #62, !noalias !31295
  unreachable

bb.v:                                             ; preds = %bb.r, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.0.0.i.i.ph = phi ptr [ inttoptr (i64 55834574851 to ptr), %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.ck, %bb.r ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31289
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31294
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge: ; preds = %.thread30, %bb.w, %bb.x
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i, !llvm.loop !31284

bb.w:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31293
  %i.df = and i64 %i.cn, 1095216660480
  %i.dg = icmp ne i64 %i.df, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.dg)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

bb.x:                                             ; preds = %.split28
  %i.dh = getelementptr i8, ptr %.sroa.0.0.i.i.ph, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31291
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dh) ]
  store ptr %i.dh, ptr %i.w, align 8, !alias.scope !31292, !noalias !31291
  store i8 3, ptr %i.a, align 8, !alias.scope !31292, !noalias !31291
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31291
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

.thread33:                                        ; preds = %.split.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel, %.split29.peel, %.split28.peel, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split28, %.split29
  %.lcssa116 = phi i64 [ %i.cn, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.cn, %.split29 ], [ %i.cn, %.split28 ], [ %i.cn, %.split ], [ %i.bm, %.split28.peel ], [ %i.bm, %.split29.peel ], [ %i.bm, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.peel ], [ %i.bm, %.split.peel ]
  store i64 %.lcssa46, ptr %i.d, align 8
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

end_hunk_1
begin_hunk_2_@_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice:bb.a
bb.ae:                                            ; preds = %.lr.ph
  %i.dr = ptrtoint ptr %i.ak to i64
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.af:                                            ; preds = %.lr.ph
  %i.ds = icmp eq ptr %i.ak, null
  %i.dt = load i64, ptr %i.d, align 8, !noundef !177 ; 5 uses
  %i.du = icmp sgt i64 %i.dt, -1
  call void @llvm.assume(i1 %i.du)
  br i1 %i.ds, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dv = sub nsw i64 %i.dt, %i.e
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

bb.ah:                                            ; preds = %bb.af
  %i.dw = load i64, ptr %0, align 8, !range !179, !noundef !177 ; 4 uses
  %i.dx = sub nsw i64 %i.dw, %i.dt
  %i.dy = icmp ult i64 %i.dx, 32                  ; 2 uses
  %i.dz = icmp eq i64 %i.dw, %i.g
  %or.cond = and i1 %i.dz, %i.dy
  br i1 %or.cond, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 2) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 14 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !31318)
  call void @llvm.experimental.noalias.scope.decl(metadata !31319)
  %i.ap = icmp ugt i64 %.lcssa59, -33
  br i1 %i.ap, label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw i64 %.lcssa59, 32
  %i.ar = shl nuw i64 %i.ah, 1
  %i.as = call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.aq) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31320
  %.val13.i.i = load ptr, ptr %i.r, align 8, !alias.scope !31320
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 %i.ah, ptr %.val13.i.i, i64 noundef %i.as, i64 noundef 1, i64 noundef 1) #52, !noalias !31320
  %i.at = load i64, ptr %i.c, align 8, !range !181, !noalias !31320, !noundef !177
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31320
  br label %_RNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsgZAIVb0XKpv_9ssservice.exit.thread

.thread:                                          ; preds = %bb.i
  %i.av = load ptr, ptr %i.s, align 8, !noalias !31320, !nonnull !177, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31320
  store ptr %i.av, ptr %i.r, align 8, !alias.scope !31320
  %i.aw = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.aw)
  store i64 %i.as, ptr %0, align 8, !alias.scope !31320
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
  %i.bh = call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.bg, i64 noundef %.sroa.032.0203) #52, !noalias !31321 ; 0 uses
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel: ; preds = %bb.l, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31322
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31322
  store i64 %.sroa.032.0203, ptr %i.t, align 8, !noalias !31322
  store i64 0, ptr %i.u, align 8, !noalias !31322
  store i64 %.sroa.032.0203, ptr %i.v, align 8, !noalias !31322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.bi = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31323 ; 2 uses
  %i.bj = extractvalue { i64, ptr } %i.bi, 0
  %i.bk = extractvalue { i64, ptr } %i.bi, 1      ; 6 uses
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %.thread29.peel, label %bb.m

bb.m:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  %.not.i.i.i.i.peel = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.peel, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit.peel: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31322
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31324
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  store ptr %i.br, ptr %i.w, align 8, !alias.scope !31325, !noalias !31324
  store i8 3, ptr %i.a, align 8, !alias.scope !31325, !noalias !31324
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31324
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31326
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

.thread29.peel:                                   ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31322
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31327
  %i.ch = and i64 %i.cc, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.ce)
  call void @llvm.assume(i1 %i.ci)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader

bb.p:                                             ; preds = %bb.k
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.bd, i64 noundef %.pre186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #62
  unreachable

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31322
  store ptr %i.bg, ptr %i.b, align 8, !noalias !31322
  store i64 %.sroa.032.0203, ptr %i.t, align 8, !noalias !31322
  store i64 0, ptr %i.u, align 8, !noalias !31322
  store i64 %.sroa.032.0203, ptr %i.v, align 8, !noalias !31322
  %i.cj = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !31323 ; 2 uses
  %i.ck = extractvalue { i64, ptr } %i.cj, 0
  %i.cl = extractvalue { i64, ptr } %i.cj, 1      ; 6 uses
  %i.cm = trunc nuw i64 %i.ck to i1
  br i1 %i.cm, label %.thread29, label %bb.q

.thread29:                                        ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31322
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.q:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit

.loopexit:                                        ; preds = %bb.q, %bb.m
  %i.cn = load i64, ptr %i.t, align 8, !noalias !31322, !noundef !177 ; 2 uses
  %i.co = load i64, ptr %i.u, align 8, !noalias !31322, !noundef !177 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.co, %i.cn
  br i1 %.not7.i.i.i.i, label %bb.r, label %bb.s, !prof !206

bb.r:                                             ; preds = %.loopexit
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.co, i64 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !31323
  unreachable

bb.s:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31322
  %.not.i.i.i = icmp ugt i64 %i.co, %.sroa.032.0203
  br i1 %.not.i.i.i, label %bb.t, label %bb.w, !prof !186

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2266, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2268) #62, !noalias !31328
  unreachable

_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31322
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31326
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge: ; preds = %.thread41, %bb.u, %bb.v
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i, !llvm.loop !31317

bb.u:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31327
  %i.dj = and i64 %i.de, 1095216660480
  %i.dk = icmp ne i64 %i.dj, 1095216660480
  call void @llvm.assume(i1 %i.dg)
  call void @llvm.assume(i1 %i.dk)
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

bb.v:                                             ; preds = %.split35
  %i.dl = getelementptr i8, ptr %i.cl, i64 -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31324
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dl) ]
  store ptr %i.dl, ptr %i.w, align 8, !alias.scope !31325, !noalias !31324
  store i8 3, ptr %i.a, align 8, !alias.scope !31325, !noalias !31324
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w) #52, !noalias !31324
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i.i.backedge

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux28set_disable_ip_fragmentationNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice:bb.a
  br i1 %0, label %bb.e, label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @__errno_location() #52
  %i.g = load i32, ptr %i.f, align 4, !noundef !177 ; 2 uses
  %i.h = load atomic ptr, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.h, @347
  br i1 %.not.i, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.d, !prof !191

bb.d:                                             ; preds = %bb.c
  call void @_RNvNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #52
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 4
  %i.i = call noundef i32 @_RNvXNtNtNtCsczhfDQ1qNkX_5tokio3net3udp3sysNtB4_9UdpSocketNtNtNtNtCs5Xr050g3D4S_3std2os2fd3raw7AsRawFd9as_raw_fd(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #52
  %i.j = call noundef i32 @setsockopt(i32 noundef %i.i, i32 noundef 41, i32 noundef 23, ptr noundef nonnull %i.a, i32 noundef 4) #52
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef ptr @__errno_location() #52
  %i.m = load i32, ptr %i.l, align 4, !noundef !177
  %i.n = load atomic ptr, ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i1 = icmp eq ptr %i.n, @347
  br i1 %.not.i1, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit2, label %bb.h, !prof !191

bb.h:                                             ; preds = %bb.g
  call void @_RNvNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #52
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
define internal fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 0, 66289) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40507)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !179, !alias.scope !40507, !noundef !177 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.c)
  %i.h = icmp eq i64 %4, 1
  %i.i = icmp samesign ult i64 %4, 1025
  %..i = select i1 %i.i, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.h, i64 8, i64 %..i
  %i.j = tail call i64 @llvm.umax.i64(i64 %.sroa.08.0.i, i64 %i.g) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40507
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.k, align 8, !alias.scope !40507
  call fastcc void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %i.j, i64 noundef range(i64 1, 17) %3, i64 noundef range(i64 0, 66289) %4) #52, !noalias !40507
  %i.l = load i64, ptr %i.a, align 8, !range !181, !noalias !40507, !noundef !177
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.n, align 8, !range !293, !noalias !40507, !noundef !177
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !40507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40507
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.q, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.o, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #61
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !noalias !40507, !nonnull !177, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40507
  store ptr %i.r, ptr %i.k, align 8, !alias.scope !40507
  %i.s = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.s)
  store i64 %i.j, ptr %0, align 8, !alias.scope !40507
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs8xUA7ZdjTE9_6base646engine6Engine6decode5innerNtNtB6_15general_purpose14GeneralPurposeECsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = and i64 %2, 3
  %i.c = add nuw i64 %2, 3
  %i.d = lshr i64 %i.c, 2                         ; 2 uses
  %i.e = mul nuw nsw i64 %i.d, 3                  ; 7 uses
  %i.f = icmp eq i64 %i.d, 0                      ; 2 uses
  br i1 %i.f, label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !40514
  %i.g = tail call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef range(i64 1, 17) 1) #52, !noalias !40514 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %i.g to i64
  br label %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %i.e) #61, !noalias !40515
  unreachable

_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.c
  %.sroa.10.0.i = phi i64 [ %i.i, %bb.c ], [ 1, %bb.a ]
  %i.j = inttoptr i64 %.sroa.10.0.i to ptr        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs_NtNtCs8xUA7ZdjTE9_6base646engine15general_purposeNtB4_14GeneralPurposeNtB6_6Engine15internal_decode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(324) @266, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull %i.j, i64 noundef %i.e, i64 noundef %i.b, i64 noundef %i.e) #52
  %i.k = load i64, ptr %i.a, align 8, !range !190, !noundef !177
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.e, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCsgZAIVb0XKpv_9ssservice.exit

bb.e:                                             ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.011.0.copyload = load i8, ptr %i.m, align 8 ; 2 uses
  %i.n = icmp eq i8 %.sroa.011.0.copyload, -1
  br i1 %i.n, label %bb.f, label %bb.g, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvXs1_NtNtCsgCecv3eZDcN_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.410.sroa.4.sroa.4.0..sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.410.sroa.4.sroa.4.0.copyload = load i64, ptr %.sroa.410.sroa.4.sroa.4.0..sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = call i64 @llvm.umin.i64(i64 %.sroa.410.sroa.4.sroa.4.0.copyload, i64 %i.e)
  store i64 %i.e, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select, ptr %.sroa.5.0..sroa_idx5, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.h, %bb.g, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE8truncateCsgZAIVb0XKpv_9ssservice.exit
  ret void

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @516, ptr noundef nonnull inttoptr (i64 139 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #62
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
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !40516
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB8_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice(ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40528
  store ptr %i.c, ptr %i.b, align 8, !noalias !40528
  store i64 32, ptr %i.d, align 8, !noalias !40528
  store i64 0, ptr %i.e, align 8, !noalias !40528
  store i64 32, ptr %i.f, align 8, !noalias !40528
  %.val.i = load ptr, ptr %.0.val, align 8, !noalias !40529, !nonnull !177, !noundef !177
  %i.h = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !40529 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 9 uses
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40528
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !noalias !40528, !noundef !177 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !40528, !noundef !177 ; 10 uses
  %.not7.i = icmp ugt i64 %i.m, %i.l
  br i1 %.not7.i, label %bb.e, label %bb.g, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !40529
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.j to i64                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40528
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split12
    i64 1, label %.split10
  ], !prof !290

default.unreachable:                              ; preds = %bb.f
  unreachable

.split:                                           ; preds = %bb.f
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !177, !noundef !177
  %i.u = call noundef zeroext i1 %i.t(i32 noundef %i.q) #52, !inline_history !81
  br i1 %i.u, label %.thread14, label %.loopexit

.split12:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !291, !noundef !177
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread14, label %.loopexit

.split10:                                         ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.j, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !291, !noundef !177
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40528
  %i.ag = inttoptr i64 %i.m to ptr
  %i.ah = icmp ult i64 %i.m, 33
  br i1 %i.ah, label %bb.h, label %bb.j, !prof !200

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !40530)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !40531, !noundef !177 ; 5 uses
  %i.ak = load i64, ptr %0, align 8, !range !179, !alias.scope !40531, !noundef !177
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.m, %i.al
  br i1 %i.am, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.h
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aj, i64 noundef %i.m, i64 noundef 1, i64 noundef 1) #52
  %i.an = load i64, ptr %i.ai, align 8, !alias.scope !40530, !noundef !177 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.h
  %i.ap = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i3 = icmp eq i64 %i.m, 0
  br i1 %.not.i3, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.aq = phi i64 [ %i.an, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !40530, !nonnull !177, !noundef !177
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.c, i64 %i.m, i1 false), !noalias !40530
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.av = add nuw i64 %i.au, %i.m
  store i64 %i.av, ptr %i.ai, align 8, !alias.scope !40530
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #62
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split10, %.split12, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.3.0 = phi ptr [ %i.ag, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ %i.j, %.split12 ], [ %i.j, %.split10 ], [ %i.ab, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.j, %.split ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ 1, %.split12 ], [ 1, %.split10 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ax = insertvalue { i64, ptr } %i.aw, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ax

.thread14:                                        ; preds = %.split, %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40532
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40532
  %i.ay = and i64 %.sroa.4.1.i.ph7, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.l:                                             ; preds = %.split10
  %i.ba = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40532
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  store ptr %i.ba, ptr %i.g, align 8, !alias.scope !40533, !noalias !40532
  store i8 3, ptr %i.a, align 8, !alias.scope !40533, !noalias !40532
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #52, !noalias !40532
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.k, %bb.l, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40532
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2b_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40555
  store ptr %i.c, ptr %i.b, align 8, !noalias !40555
  store i64 32, ptr %i.d, align 8, !noalias !40555
  store i64 0, ptr %i.e, align 8, !noalias !40555
  store i64 32, ptr %i.f, align 8, !noalias !40555
  %i.h = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !40556 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, ptr } %i.h, 1        ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !noalias !40555, !noundef !177 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !40555, !noundef !177 ; 9 uses
  %.not7.i.i.i = icmp ugt i64 %i.m, %i.l
  br i1 %.not7.i.i.i, label %bb.e, label %bb.f, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !40556
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40555
  %.not.i6.i.i = icmp ugt i64 %i.m, 32
  br i1 %.not.i6.i.i, label %bb.g, label %bb.i, !prof !186

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2789) #62, !noalias !40557
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40555
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40555
  %i.n = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split12
    i64 1, label %.split10
  ], !prof !290

default.unreachable:                              ; preds = %bb.h
  unreachable

.split:                                           ; preds = %bb.h
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !177, !noundef !177
  %i.u = call noundef zeroext i1 %i.t(i32 noundef %i.q) #52, !inline_history !81
  br i1 %i.u, label %.thread14, label %.loopexit

.split12:                                         ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !291, !noundef !177
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread14, label %.loopexit

.split10:                                         ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.k, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !291, !noundef !177
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
  call void @llvm.experimental.noalias.scope.decl(metadata !40558)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !40559, !noundef !177 ; 5 uses
  %i.aj = load i64, ptr %0, align 8, !range !179, !alias.scope !40559, !noundef !177
  %i.ak = sub i64 %i.aj, %i.ai
  %i.al = icmp ugt i64 %i.m, %i.ak
  br i1 %i.al, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.i
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ai, i64 noundef %i.m, i64 noundef 1, i64 noundef 1) #52
  %i.am = load i64, ptr %i.ah, align 8, !alias.scope !40558, !noundef !177 ; 2 uses
  %i.an = icmp sgt i64 %i.am, -1
  call void @llvm.assume(i1 %i.an)
  br label %bb.j

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.i
  %i.ao = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.ao)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit, label %bb.j

bb.j:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.ap = phi i64 [ %i.am, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i ], [ %i.ai, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !40558, !nonnull !177, !noundef !177
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %i.c, i64 %i.m, i1 false), !noalias !40558
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %bb.j
  %i.at = phi i64 [ %i.ap, %bb.j ], [ %i.ai, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.au = add nuw i64 %i.at, %i.m
  store i64 %i.au, ptr %i.ah, align 8, !alias.scope !40558
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split10, %.split12, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.3.0 = phi ptr [ %i.ag, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ %i.k, %.split12 ], [ %i.k, %.split10 ], [ %i.ab, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.k, %.split ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ 1, %.split12 ], [ 1, %.split10 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.aw = insertvalue { i64, ptr } %i.av, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.aw

.thread14:                                        ; preds = %.split, %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40560
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40560
  %i.ax = and i64 %.sroa.4.1.i.ph7, 1095216660480
  %i.ay = icmp ne i64 %i.ax, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.ay)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.l:                                             ; preds = %.split10
  %i.az = getelementptr i8, ptr %i.k, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40560
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  store ptr %i.az, ptr %i.g, align 8, !alias.scope !40561, !noalias !40560
  store i8 3, ptr %i.a, align 8, !alias.scope !40561, !noalias !40560
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #52, !noalias !40560
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.k, %bb.l, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40560
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice(ptr %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40573
  store ptr %i.c, ptr %i.b, align 8, !noalias !40573
  store i64 32, ptr %i.d, align 8, !noalias !40573
  store i64 0, ptr %i.e, align 8, !noalias !40573
  store i64 32, ptr %i.f, align 8, !noalias !40573
  %i.h = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.8.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !40574 ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 9 uses
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40573
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.d, align 8, !noalias !40573, !noundef !177 ; 2 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !40573, !noundef !177 ; 10 uses
  %.not7.i = icmp ugt i64 %i.m, %i.l
  br i1 %.not7.i, label %bb.e, label %bb.g, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !40574
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %i.j to i64                 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40573
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split12
    i64 1, label %.split10
  ], !prof !290

default.unreachable:                              ; preds = %bb.f
  unreachable

.split:                                           ; preds = %bb.f
  %i.p = lshr i64 %i.n, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !177, !noundef !177
  %i.u = call noundef zeroext i1 %i.t(i32 noundef %i.q) #52, !inline_history !81
  br i1 %i.u, label %.thread14, label %.loopexit

.split12:                                         ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load i8, ptr %i.v, align 8, !range !291, !noundef !177
  %i.x = icmp eq i8 %i.w, 35
  br i1 %i.x, label %.thread14, label %.loopexit

.split10:                                         ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.j, i64 31
  %i.z = load i8, ptr %i.y, align 8, !range !291, !noundef !177
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40573
  %i.ag = inttoptr i64 %i.m to ptr
  %i.ah = icmp ult i64 %i.m, 33
  br i1 %i.ah, label %bb.h, label %bb.j, !prof !200

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !40575)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !40576, !noundef !177 ; 5 uses
  %i.ak = load i64, ptr %0, align 8, !range !179, !alias.scope !40576, !noundef !177
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.m, %i.al
  br i1 %i.am, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.h
  call fastcc void @_RINvNvMs2_NtCsgCecv3eZDcN_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aj, i64 noundef %i.m, i64 noundef 1, i64 noundef 1) #52
  %i.an = load i64, ptr %i.ai, align 8, !alias.scope !40575, !noundef !177 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, -1
  call void @llvm.assume(i1 %i.ao)
  br label %bb.i

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.h
  %i.ap = icmp sgt i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i3 = icmp eq i64 %i.m, 0
  br i1 %.not.i3, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit, label %bb.i

bb.i:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.aq = phi i64 [ %i.an, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.thread.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !40575, !nonnull !177, !noundef !177
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull readonly align 1 %i.c, i64 %i.m, i1 false), !noalias !40575
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i, %bb.i
  %i.au = phi i64 [ %i.aq, %bb.i ], [ %i.aj, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.av = add nuw i64 %i.au, %i.m
  store i64 %i.av, ptr %i.ai, align 8, !alias.scope !40575
  br label %.loopexit

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.m, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #62
  unreachable

.loopexit:                                        ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split10, %.split12, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit
  %.sroa.3.0 = phi ptr [ %i.ag, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ %i.j, %.split12 ], [ %i.j, %.split10 ], [ %i.ab, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ %i.j, %.split ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsgZAIVb0XKpv_9ssservice.exit ], [ 1, %.split12 ], [ 1, %.split10 ], [ 1, %.split ], [ 1, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ax = insertvalue { i64, ptr } %i.aw, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ax

.thread14:                                        ; preds = %.split, %.split12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40577
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40577
  %i.ay = and i64 %.sroa.4.1.i.ph7, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  call void @llvm.assume(i1 %i.ad)
  call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.l:                                             ; preds = %.split10
  %i.ba = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40577
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  store ptr %i.ba, ptr %i.g, align 8, !alias.scope !40578, !noalias !40577
  store i8 3, ptr %i.a, align 8, !alias.scope !40578, !noalias !40577
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #52, !noalias !40577
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.k, %bb.l, %.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40577
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_end16small_probe_readINtNtNtCsdEV4Kvs1Ch8_6flate22gz4read9GzDecoderRShEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = call fastcc { i64, ptr } @_RNvXs4_NtNtCsdEV4Kvs1Ch8_6flate22gz4readINtB5_9GzDecoderRShENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read4readCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull %i.b, i64 noundef 32) #52 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = trunc nuw i64 %i.d to i1
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit
  %i.i = phi i64 [ %i.f, %.lr.ph ], [ %i.az, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit ] ; 4 uses
  %i.j = phi ptr [ %i.e, %.lr.ph ], [ %i.ay, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = and i64 %i.i, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
    i64 0, label %.split6
    i64 1, label %.split5
  ], !prof !230

default.unreachable:                              ; preds = %bb.b
  unreachable

.split:                                           ; preds = %bb.b
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !177, !noundef !177
  %i.q = call noundef zeroext i1 %i.p(i32 noundef %i.m) #52, !inline_history !81
end_hunk_3
begin_hunk_4_@_RNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB8_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 749 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.ez, %bb.k
  %.sroa.037.074.i.i.i.i.i = phi i32 [ 0, %bb.k ], [ %i.eg, %bb.ez ]
  %i.eg = add nuw nsw i32 %.sroa.037.074.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41999)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !42000
  %i.eh = load i8, ptr %i.ca, align 8, !range !180, !alias.scope !42001, !noundef !177
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB2_10DispatcherINtB2_6ServerINtNtNtB8_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1X_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtB8_4body8incoming8IncomingEB4z_EINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB8_5error5ErrorEINtNtB1Z_8tokio_rt7TokioIoB3F_ENtNtB4_4role6ServerE9poll_readCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %.backedge.i.i.i.i.i.i
  %i.ej = load i64, ptr %i.cc, align 8, !range !215, !alias.scope !42001, !noundef !177 ; 3 uses
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.m, label %bb.cn

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !42003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !42003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !42003
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.cw, align 8, !alias.scope !42004, !nonnull !177, !noundef !177
  %i.el = load i128, ptr %.val.i.i.i.i.i.i.i, align 16, !range !236, !noalias !42005, !noundef !177
  %.not.i.i.i.i.i.i.i.i = icmp eq i128 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.n, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB2_10DispatcherINtB2_6ServerINtNtNtB8_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1X_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtB8_4body8incoming8IncomingEB4z_EINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB8_5error5ErrorEINtNtB1Z_8tokio_rt7TokioIoB3F_ENtNtB4_4role6ServerE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !42006)
  %i.em = load i8, ptr %i.cx, align 8, !range !180, !alias.scope !42007, !noundef !177
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eo = load i32, ptr %i.cy, align 8, !range !197, !alias.scope !42007, !noundef !177 ; 2 uses
  %.not.i27.i.i.i.i.i.i.i = icmp eq i32 %i.eo, -1
  br i1 %.not.i27.i.i.i.i.i.i.i, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i, %bb.ae, %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.df, i64 7, i1 false), !noalias !42008
  %i.ep = load <2 x i64>, ptr %i.cb, align 8, !alias.scope !42007
  %i.eq = load i8, ptr %i.dh, align 2, !range !180, !alias.scope !42007, !noundef !177
  %i.er = load i8, ptr %i.di, align 4, !range !180, !alias.scope !42007, !noundef !177
  call void @llvm.experimental.noalias.scope.decl(metadata !42009)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.ab, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !42010
  %i.es = load i64, ptr %i.dl, align 8, !range !181, !alias.scope !42011, !noundef !177
  %i.et = load i64, ptr %i.dm, align 8, !alias.scope !42011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !42010
  store <2 x i64> %i.ep, ptr %i.q, align 16, !noalias !42012
  store <2 x ptr> %i.de, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !42012
  store ptr %i.dj, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !42012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !42012
  store i8 %i.eq, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !42012
  store i8 %i.er, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !42012
  call void @llvm.experimental.noalias.scope.decl(metadata !42013)
  %i.eu = load i64, ptr %i.dn, align 8, !alias.scope !42014, !noundef !177 ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.thread.i.i.i.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ew = trunc nuw i64 %i.es to i1
  br i1 %i.ew, label %bb.s, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ServerECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.ex = load ptr, ptr %i.dk, align 8, !alias.scope !42014, !nonnull !177, !noundef !177
  %i.ey = call noundef zeroext i1 @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role16is_complete_fast(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ex, i64 noundef %i.eu, i64 noundef %i.et) #52, !noalias !42015
  br i1 %i.ey, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ServerECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !42010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !42010
  br label %bb.v

_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ServerECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  call void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper5proto2h14roleNtB2_6ServerNtB4_16Http1Transaction5parse(ptr noalias nofree noundef nonnull sret([240 x i8]) align 8 captures(none) dereferenceable(240) %i.r, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.q) #52, !noalias !42016
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noalias !42010 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !42010
  %i.ez = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.ez, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ServerECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  %i.fa = load i8, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !range !260, !noalias !42010, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !42010
  %i.fb = call noundef nonnull align 8 ptr @_RNvXs2_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_5ParseE4from(i8 noundef %i.fa) #52, !noalias !42016
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ServerECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  %.sroa.428.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !42010
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(224) %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.4.i.sroa.4.0..sroa.529.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i, i64 224, i1 false), !noalias !42010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !42010
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.u, %.thread.i.i.i.i.i.i.i.i
  %i.fc = load i8, ptr %i.do, align 8, !range !180, !alias.scope !42011, !noundef !177
  %i.fd = trunc nuw i8 %i.fc to i1
  %.sroa.011.0.in.v.i.i.i.i.i.i.i.i.i = select i1 %i.fd, i64 136, i64 144
  %.sroa.011.0.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.011.0.in.v.i.i.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.011.0.in.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !42011, !noundef !177
  %i.fe = load i64, ptr %i.dn, align 8, !alias.scope !42011, !noundef !177 ; 3 uses
  %.not36.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.fe, %.sroa.011.0.i.i.i.i.i.i.i.i.i
  br i1 %.not36.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %.not37.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not37.i.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ff = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error13new_too_large() #52, !noalias !42016
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  store i64 %i.fe, ptr %i.dm, align 8, !alias.scope !42011
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.y ], [ 0, %bb.w ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.dl, align 8, !alias.scope !42011
  %i.fg = call fastcc { i64, ptr } @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE17poll_read_from_ioCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %i.by, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !42016 ; 2 uses
  %i.fh = extractvalue { i64, ptr } %i.fg, 0
  %i.fi = extractvalue { i64, ptr } %i.fg, 1      ; 2 uses
  switch i64 %i.fh, label %bb.aa [
    i64 2, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread152.i.i.i.i.i.i.i.i
    i64 0, label %bb.ab
  ]

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread152.i.i.i.i.i.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  %i.fj = load i8, ptr %i.cx, align 8, !range !180, !alias.scope !42007, !noundef !177
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.cf, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB2_10DispatcherINtB2_6ServerINtNtNtB8_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1X_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtB8_4body8incoming8IncomingEB4z_EINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB8_5error5ErrorEINtNtB1Z_8tokio_rt7TokioIoB3F_ENtNtB4_4role6ServerE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.fl = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_io(ptr noundef nonnull %i.fi) #52, !noalias !42016
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fm = icmp eq ptr %i.fi, null
  br i1 %i.fm, label %bb.ac, label %bb.q

bb.ac:                                            ; preds = %bb.ab
  %i.fn = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_incomplete() #52, !noalias !42016
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.aa, %bb.x, %bb.t
  %.sroa.11.1.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.ff, %bb.x ], [ %i.fn, %bb.ac ], [ %i.fb, %bb.t ], [ %i.fl, %bb.aa ] ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !42017)
  call void @llvm.experimental.noalias.scope.decl(metadata !42018)
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State10close_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.cb) #52, !noalias !42019
  call void @llvm.experimental.noalias.scope.decl(metadata !42020)
  %i.fo = load i64, ptr %i.dn, align 8, !alias.scope !42021 ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 0
  br i1 %i.fp, label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.cu, ptr noundef nonnull align 1 dereferenceable(224) %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i, i64 224, i1 false), !noalias !42022
  store i64 0, ptr %i.dl, align 8, !alias.scope !42011
  %i.fq = inttoptr i64 %.sroa.428.0.copyload.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  store i64 %.pr.i.i.i.i.i.i.i.i.i, ptr %i.s, align 8, !noalias !42022
  store ptr %i.fq, ptr %.sroa.4143.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !42022
  store i8 0, ptr %i.cx, align 8, !alias.scope !42007
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !42007, !noundef !177 ; 3 uses
  %.val117.i.i.i.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !42007 ; 4 uses
  %i.fr = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %i.fr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit126.i.i.i.i.i.i.i.i, label %bb.be

bb.ad:                                            ; preds = %bb.o
  %i.fs = load i64, ptr %i.cz, align 8, !alias.scope !42007, !noundef !177
  %i.ft = call { i64, i32 } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time3now(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.da) #52, !noalias !42023 ; 2 uses
  %i.fu = extractvalue { i64, i32 } %i.ft, 0
  %i.fv = extractvalue { i64, i32 } %i.ft, 1
  %i.fw = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.fu, i32 noundef %i.fv, i64 noundef %i.fs, i32 noundef %i.eo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2014) #52, !noalias !42023 ; 2 uses
  %i.fx = extractvalue { i64, i32 } %i.fw, 0      ; 2 uses
  %i.fy = extractvalue { i64, i32 } %i.fw, 1      ; 2 uses
  store i8 1, ptr %i.cx, align 8, !alias.scope !42007
  %i.fz = load ptr, ptr %i.db, align 8, !alias.scope !42007, !noundef !177
  %.not114.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not114.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.da, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.db, i64 noundef %i.fx, i32 noundef %i.fy) #52, !noalias !42023
  br label %bb.p

bb.af:                                            ; preds = %bb.ad
  %i.ga = call { ptr, ptr } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time11sleep_until(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.da, i64 noundef %i.fx, i32 noundef %i.fy) #52, !noalias !42023 ; 2 uses
  %i.gb = extractvalue { ptr, ptr } %i.ga, 0      ; 2 uses
  %i.gc = extractvalue { ptr, ptr } %i.ga, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gb) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  %.val118.i.i.i.i.i.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !42007, !noundef !177 ; 3 uses
  %.val119.i.i.i.i.i.i.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !42007 ; 4 uses
  %i.gd = icmp eq ptr %.val118.i.i.i.i.i.i.i.i, null
  br i1 %i.gd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val119.i.i.i.i.i.i.i.i) ]
  %i.ge = load ptr, ptr %.val119.i.i.i.i.i.i.i.i, align 8, !invariant.load !177, !noalias !42023 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void %i.ge(ptr noundef nonnull %.val118.i.i.i.i.i.i.i.i) #60, !noalias !42023, !inline_history !41823
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.gf = getelementptr inbounds nuw i8, ptr %.val119.i.i.i.i.i.i.i.i, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !range !179, !invariant.load !177, !noalias !42023 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.gi = getelementptr inbounds nuw i8, ptr %.val119.i.i.i.i.i.i.i.i, i64 16
  %i.gj = load i64, ptr %i.gi, align 8, !range !183, !invariant.load !177, !noalias !42023
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val118.i.i.i.i.i.i.i.i, i64 noundef %i.gg, i64 noundef range(i64 1, -9223372036854775807) %i.gj) #52, !noalias !42023
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ai, %bb.af
  store ptr %i.gb, ptr %i.db, align 8, !alias.scope !42007
  store ptr %i.gc, ptr %i.dc, align 8, !alias.scope !42007
  br label %bb.p

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i
  %i.gk = load ptr, ptr %i.dk, align 8, !alias.scope !42024, !nonnull !177, !noundef !177
  br label %bb.aj

_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ak, %bb.aj
  %.sroa.0.0.lcssa8.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i.i.i.i.i.i.i, %bb.aj ], [ %i.fo, %bb.ak ]
  call void @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dk, i64 noundef %.sroa.0.0.lcssa8.i.i.i.i.i.i.i.i.i.i) #52, !noalias !42019
  %.pr.i122.i.i.i.i.i.i.i.i = load i64, ptr %i.dn, align 8, !alias.scope !42021
  br label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ak, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.gn, %bb.ak ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !42025, !noundef !177
  switch i8 %i.gm, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i [
    i8 13, label %bb.ak
    i8 10, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.gn = add nuw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %i.fo
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i, label %bb.aj

_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i
  %i.go = phi i64 [ 0, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ServerECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i ], [ %.pr.i122.i.i.i.i.i.i.i.i, %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 16
  %i.gq = load i8, ptr %i.gp, align 8, !range !187, !alias.scope !42018, !noalias !42023, !noundef !177
  %i.gr = icmp ne i8 %i.gq, 0
  %.not.i123.i.i.i.i.i.i.i.i = icmp eq i64 %i.go, 0
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.gr, i1 %.not.i123.i.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ay, label %bb.al

bb.al:                                            ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !42026)
  call void @llvm.experimental.noalias.scope.decl(metadata !42027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !42028
  store ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !42029
  %i.gs = load i64, ptr %i.ea, align 8, !range !216, !alias.scope !42030, !noundef !177 ; 2 uses
  %i.gt = icmp ne i64 %i.gs, -9223372036854775805
  call void @llvm.assume(i1 %i.gt)
  %i.gu = icmp eq i64 %i.gs, -9223372036854775806
  br i1 %i.gu, label %bb.am, label %bb.bc

bb.am:                                            ; preds = %bb.al
  %i.gv = icmp ugt i64 %i.go, 23
  br i1 %i.gv, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.dk, align 8, !alias.scope !42030, !nonnull !177, !noundef !177 ; 2 uses
  %i.gw = load i128, ptr %.val2.i.i.i.i.i.i.i.i.i.i, align 1
  %i.gx = xor i128 %i.gw, 13360757032698011774056258059647930960
  %i.gy = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 1
  %i.ha = zext i64 %i.gz to i128
  %i.hb = xor i128 %i.ha, 724246167324658189
  %i.hc = or i128 %i.gx, %i.hb
  %i.hd = icmp ne i128 %i.hc, 0
  %i.he = zext i1 %i.hd to i32
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.an, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i.i

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !42029
  call void @_RNvXNtNtNtCsaI3lGUjttVO_5hyper5proto2h14roleNtB2_6ServerNtB4_16Http1Transaction8on_error(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #52, !noalias !42031
  %i.hg = load i64, ptr %i.o, align 8, !range !234, !noalias !42029, !noundef !177
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hg, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.ar

bb.an:                                            ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i
  %i.hh = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_version_h2() #52, !noalias !42031
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, align 8, !alias.scope !42032, !noalias !42033, !noundef !177 ; 3 uses
  %i.hi = getelementptr i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hi, align 8, !alias.scope !42032, !noalias !42033 ; 4 uses
  %i.hj = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.hj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.hk = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !177, !noalias !42034 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void %i.hk(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i) #60, !noalias !42034, !inline_history !41829
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !range !179, !invariant.load !177, !noalias !42034 ; 2 uses
  %i.hn = icmp eq i64 %i.hm, 0
  br i1 %i.hn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.ho = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.hp = load i64, ptr %i.ho, align 8, !range !183, !invariant.load !177, !noalias !42034
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hm, i64 noundef range(i64 1, -9223372036854775807) %i.hp) #52, !noalias !42034
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq, %bb.an
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 noundef 24, i64 noundef 8) #52, !noalias !42034
  br label %bb.bc

bb.ar:                                            ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !42029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false), !noalias !42029
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !42029
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.m, ptr noundef nonnull align 8 dereferenceable(96) %i.dd, i64 96, i1 false), !noalias !42035
  store i64 -1, ptr %i.dd, align 8, !alias.scope !42030
  %i.hq = load i64, ptr %i.m, align 8, !range !234, !alias.scope !42036, !noalias !42029, !noundef !177
  %i.hr = icmp eq i64 %i.hq, -1
  br i1 %i.hr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header3map9HeaderMapEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7ewmRfXve8r_4http6header3map9HeaderMapECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.m) #52, !noalias !42031
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header3map9HeaderMapEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header3map9HeaderMapEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !42029
  call fastcc void @_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE10write_headCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %i.by, ptr noalias nofree noundef align 8 captures(address) dereferenceable(112) %i.n, i64 noundef 2, i64 undef) #52, !noalias !42037
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !alias.scope !42030, !align !185, !noundef !177 ; 4 uses
  %i.hs = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.hs, label %bb.bd, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7ewmRfXve8r_4http6header3map9HeaderMapEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !42038, !noundef !177 ; 3 uses
  %i.ht = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ht, align 8, !noalias !42038 ; 4 uses
  %i.hu = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.hu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.hv = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !177, !noalias !42038 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void %i.hv(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i) #60, !noalias !42038, !inline_history !41834
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.hw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !range !179, !invariant.load !177, !noalias !42038 ; 2 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ia = load i64, ptr %i.hz, align 8, !range !183, !invariant.load !177, !noalias !42038
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.hx, i64 noundef range(i64 1, -9223372036854775807) %i.ia) #52, !noalias !42038
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aw, %bb.at
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef 24, i64 noundef 8) #52, !noalias !42038
  br label %bb.bd

bb.ax:                                            ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !42029
  br label %bb.bc

bb.ay:                                            ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State11close_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.cb) #52, !noalias !42019
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, align 8, !alias.scope !42018, !noalias !42039, !noundef !177 ; 3 uses
  %i.ib = getelementptr i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !42018, !noalias !42039 ; 4 uses
  %i.ic = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.ic, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread35.i.thread58.i.i.i.i.i.i, label %bb.az
end_hunk_4
begin_hunk_5_@_RNCNCINvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound12http_connectNtB7_17HttpConnectClient9establishNtNtB9_6stream19OutboundProxyStreamE0s2_0CsgZAIVb0XKpv_9ssservice:bb.a
  br i1 %i.cw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cx = load i64, ptr %i.av, align 8, !range !216, !alias.scope !45124, !noundef !177 ; 2 uses
  %i.cy = icmp ne i64 %i.cx, -9223372036854775805
  call void @llvm.assume(i1 %i.cy)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cx, -9223372036854775806
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !45124 ; 2 uses
  store i8 -1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !45124
  %.not21.i.i.i.i.i.i = icmp eq i8 %.sroa.6.0.copyload.i.i.i.i.i.i, -1
  br i1 %.not21.i.i.i.i.i.i, label %bb.ch, label %bb.cg

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !45125)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !45126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !45126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !45126
  %i.cz = load i64, ptr %i.ay, align 8, !range !190, !alias.scope !45127, !noundef !177
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.cz, 2
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.sink.split.i.i.i.i.i.i, label %_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtB5_8Dispatch10poll_readyCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i

_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtB5_8Dispatch10poll_readyCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i: ; preds = %bb.i
  %i.da = call fastcc noundef zeroext i1 @_RNvMs5_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_8CallbackINtNtCs7ewmRfXve8r_4http7request7RequestINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEINtNtB13_8response8ResponseNtNtNtB9_4body8incoming8IncomingEE13poll_canceledCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.ay, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !45128
  br i1 %i.da, label %bb.j, label %.thread.sink.split.i.i.i.i.i.i

bb.j:                                             ; preds = %_RNvXs8_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEENtB5_8Dispatch10poll_readyCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !45129)
  %i.db = load i8, ptr %i.az, align 8, !range !180, !alias.scope !45130, !noundef !177
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load i32, ptr %i.ba, align 8, !range !197, !alias.scope !45130, !noundef !177 ; 2 uses
  %.not.i27.i.i.i.i.i.i.i = icmp eq i32 %i.dd, -1
  br i1 %.not.i27.i.i.i.i.i.i.i, label %bb.l, label %bb.z

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i, %bb.aa, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.bh, i64 7, i1 false), !noalias !45131
  %i.de = load <2 x i64>, ptr %i.at, align 8, !alias.scope !45130
  %i.df = load i8, ptr %i.bj, align 2, !range !180, !alias.scope !45130, !noundef !177
  %i.dg = load i8, ptr %i.bk, align 4, !range !180, !alias.scope !45130, !noundef !177
  call void @llvm.experimental.noalias.scope.decl(metadata !45132)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.x, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !45133
  %i.dh = load i64, ptr %i.ap, align 8, !range !181, !alias.scope !45134, !noundef !177
  %i.di = load i64, ptr %i.bn, align 8, !alias.scope !45134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !45133
  store <2 x i64> %i.de, ptr %i.p, align 16, !noalias !45135
  store <2 x ptr> %i.bf, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !45135
  store ptr %i.bl, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !45135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !45135
  store i8 %i.df, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !45135
  store i8 %i.dg, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i.i, align 16, !noalias !45135
  call void @llvm.experimental.noalias.scope.decl(metadata !45136)
  %i.dj = load i64, ptr %i.bo, align 8, !alias.scope !45137, !noundef !177 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.thread.i.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dl = trunc nuw i64 %i.dh to i1
  br i1 %i.dl, label %bb.o, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.dm = load ptr, ptr %i.bm, align 8, !alias.scope !45137, !nonnull !177, !noundef !177
  %i.dn = call noundef zeroext i1 @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role16is_complete_fast(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef %i.dj, i64 noundef %i.di) #52, !noalias !45138
  br i1 %i.dn, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !45133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !45133
  br label %bb.r

_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @_RNvXs0_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14roleNtB5_6ClientNtB7_16Http1Transaction5parse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.p) #52, !noalias !45139
  %.pr.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !45133 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !45133
  %i.do = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -2
  br i1 %i.do, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  %i.dp = load i8, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !range !260, !noalias !45133, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !45133
  %i.dq = call noundef nonnull align 8 ptr @_RNvXs2_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_5ParseE4from(i8 noundef %i.dp) #52, !noalias !45139
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  %.sroa.428.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.428.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !45133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i.sroa.4.0..sroa.529.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !45133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !45133
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.r, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.q, %.thread.i.i.i.i.i.i.i.i
  %i.dr = load i8, ptr %i.bp, align 8, !range !180, !alias.scope !45134, !noundef !177
  %i.ds = trunc nuw i8 %i.dr to i1
  %.sroa.011.0.in.v.i.i.i.i.i.i.i.i.i = select i1 %i.ds, i64 1264, i64 1272
  %.sroa.011.0.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.011.0.in.v.i.i.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.011.0.in.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !45134, !noundef !177
  %i.dt = load i64, ptr %i.bo, align 8, !alias.scope !45134, !noundef !177 ; 3 uses
  %.not36.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.dt, %.sroa.011.0.i.i.i.i.i.i.i.i.i
  br i1 %.not36.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.not37.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not37.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.du = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error13new_too_large() #52, !noalias !45139
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  store i64 %i.dt, ptr %i.bn, align 8, !alias.scope !45134
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.sink.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.u ], [ 0, %bb.s ]
  store i64 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !45134
  %i.dv = call fastcc { i64, ptr } @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE17poll_read_from_ioCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1808) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #52, !noalias !45139 ; 2 uses
  %i.dw = extractvalue { i64, ptr } %i.dv, 0
  %i.dx = extractvalue { i64, ptr } %i.dv, 1      ; 2 uses
  switch i64 %i.dw, label %bb.w [
    i64 2, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread151.i.i.i.i.i.i.i.i
    i64 0, label %bb.x
  ]

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread151.i.i.i.i.i.i.i.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  %i.dy = load i8, ptr %i.az, align 8, !range !180, !alias.scope !45130, !noundef !177
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.bx, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB2_10DispatcherINtB2_6ClientINtNtCs9bnayhMRHjK_14http_body_util5empty5EmptyNtNtCsknai52m1gBp_5bytes5bytes5BytesEEB1f_INtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB2P_3net8outbound6stream19OutboundProxyStreamENtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.ea = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_io(ptr noundef nonnull %i.dx) #52, !noalias !45139
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.eb = icmp eq ptr %i.dx, null
  br i1 %i.eb, label %bb.y, label %bb.m

bb.y:                                             ; preds = %bb.x
  %i.ec = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_incomplete() #52, !noalias !45139
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.w, %bb.t, %bb.p
  %.sroa.11.1.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.du, %bb.t ], [ %i.ec, %bb.y ], [ %i.dq, %bb.p ], [ %i.ea, %bb.w ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !45140)
  call void @llvm.experimental.noalias.scope.decl(metadata !45141)
  %i.ed = load i8, ptr %i.bq, align 1, !range !198, !alias.scope !45142, !noundef !177
  %i.ee = icmp ne i8 %i.ed, 0
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State10close_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.at) #52, !noalias !45143
  call void @llvm.experimental.noalias.scope.decl(metadata !45144)
  %i.ef = load i64, ptr %i.bo, align 8, !alias.scope !45145, !noundef !177 ; 3 uses
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ax, ptr noundef nonnull align 1 dereferenceable(112) %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i, i64 112, i1 false), !noalias !45146
  store i64 0, ptr %i.ap, align 8, !alias.scope !45134
  %i.eh = inttoptr i64 %.sroa.428.0.copyload.i.i.i.i.i.i.i.i.i to ptr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i)
  store i64 %.pr.i.i.i.i.i.i.i.i.i, ptr %i.r, align 8, !noalias !45146
  store ptr %i.eh, ptr %.sroa.4142.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !45146
  store i8 0, ptr %i.az, align 8, !alias.scope !45130
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !45130, !noundef !177 ; 3 uses
  %.val117.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !45130 ; 4 uses
  %i.ei = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %i.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124.i.i.i.i.i.i.i.i, label %bb.aq

bb.z:                                             ; preds = %bb.k
  %i.ej = load i64, ptr %i.bb, align 8, !alias.scope !45130, !noundef !177
  %i.ek = call { i64, i32 } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time3now(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc) #52, !noalias !45147 ; 2 uses
  %i.el = extractvalue { i64, i32 } %i.ek, 0
  %i.em = extractvalue { i64, i32 } %i.ek, 1
  %i.en = call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.el, i32 noundef %i.em, i64 noundef %i.ej, i32 noundef %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2014) #52, !noalias !45147 ; 2 uses
  %i.eo = extractvalue { i64, i32 } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { i64, i32 } %i.en, 1      ; 2 uses
  store i8 1, ptr %i.az, align 8, !alias.scope !45130
  %i.eq = load ptr, ptr %i.bd, align 8, !alias.scope !45130, !noundef !177
  %.not114.i.i.i.i.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not114.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd, i64 noundef %i.eo, i32 noundef %i.ep) #52, !noalias !45147
  br label %bb.l

bb.ab:                                            ; preds = %bb.z
  %i.er = call { ptr, ptr } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time11sleep_until(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc, i64 noundef %i.eo, i32 noundef %i.ep) #52, !noalias !45147 ; 2 uses
  %i.es = extractvalue { ptr, ptr } %i.er, 0      ; 2 uses
  %i.et = extractvalue { ptr, ptr } %i.er, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %.val118.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !45130, !noundef !177 ; 3 uses
  %.val119.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !45130 ; 4 uses
  %i.eu = icmp eq ptr %.val118.i.i.i.i.i.i.i.i, null
  br i1 %i.eu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val119.i.i.i.i.i.i.i.i) ]
  %i.ev = load ptr, ptr %.val119.i.i.i.i.i.i.i.i, align 8, !invariant.load !177, !noalias !45147 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void %i.ev(ptr noundef nonnull %.val118.i.i.i.i.i.i.i.i) #60, !noalias !45147, !inline_history !44941
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ew = getelementptr inbounds nuw i8, ptr %.val119.i.i.i.i.i.i.i.i, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !range !179, !invariant.load !177, !noalias !45147 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %.val119.i.i.i.i.i.i.i.i, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !range !183, !invariant.load !177, !noalias !45147
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val118.i.i.i.i.i.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) %i.fa) #52, !noalias !45147
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae, %bb.ab
  store ptr %i.es, ptr %i.bd, align 8, !alias.scope !45130
  store ptr %i.et, ptr %i.be, align 8, !alias.scope !45130
  br label %bb.l

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i
  %i.fb = load ptr, ptr %i.bm, align 8, !alias.scope !45145, !nonnull !177, !noundef !177
  br label %bb.af

_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.sroa.0.0.lcssa8.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.04.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %i.ef, %bb.ag ]
  call void @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bm, i64 noundef %.sroa.0.0.lcssa8.i.i.i.i.i.i.i.i.i.i) #52, !noalias !45143
  %.val3.i.pre.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bo, align 8, !alias.scope !45142
  br label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ag, %.preheader.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.fe, %bb.ag ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !noalias !45148, !noundef !177
  switch i8 %i.fd, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i [
    i8 13, label %bb.ag
    i8 10, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af
  %i.fe = add nuw i64 %.sroa.0.04.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fe, %i.ef
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i, label %bb.af

_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i
  %.val3.i.pre.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i.i.i.i ], [ %.val3.i.pre.pre.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 16
  %i.fg = load i8, ptr %i.ff, align 8, !range !187, !alias.scope !45141, !noalias !45147, !noundef !177
  %i.fh = icmp eq i8 %i.fg, 0
  %i.fi = icmp ne i64 %.val3.i.pre.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ee, %i.fi
  %or.cond20.i.i.i.i.i.i.i.i.i = select i1 %i.fh, i1 true, i1 %or.cond.i.i.i.i.i.i.i.i.i
  br i1 %or.cond20.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !45149)
  call void @llvm.experimental.noalias.scope.decl(metadata !45150)
  %i.fj = load i64, ptr %i.av, align 8, !range !216, !alias.scope !45151, !noundef !177 ; 2 uses
  %i.fk = icmp ne i64 %i.fj, -9223372036854775805
  call void @llvm.assume(i1 %i.fk)
  %i.fl = icmp eq i64 %i.fj, -9223372036854775806
  %i.fm = icmp ugt i64 %.val3.i.pre.i.i.i.i.i.i.i.i.i, 23
  %or.cond.i.i.i.i.i.i.i.i.i.i = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.thread.i.i.i.i.i.i

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !45151, !nonnull !177, !noundef !177 ; 2 uses
  %i.fn = load i128, ptr %.val2.i.i.i.i.i.i.i.i.i.i, align 1
  %i.fo = xor i128 %i.fn, 13360757032698011774056258059647930960
  %i.fp = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.fq = load i64, ptr %i.fp, align 1
  %i.fr = zext i64 %i.fq to i128
  %i.fs = xor i128 %i.fr, 724246167324658189
  %i.ft = or i128 %i.fo, %i.fs
  %i.fu = icmp ne i128 %i.ft, 0
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.ai, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.thread.i.i.i.i.i.i

bb.ai:                                            ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i
  %i.fx = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_version_h2() #52, !noalias !45152
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, align 8, !alias.scope !45153, !noalias !45154, !noundef !177 ; 3 uses
  %i.fy = getelementptr i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !45153, !noalias !45154 ; 4 uses
  %i.fz = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.fz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.ga = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !177, !noalias !45155 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void %i.ga(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i) #60, !noalias !45155, !inline_history !44947
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gc = load i64, ptr %i.gb, align 8, !range !179, !invariant.load !177, !noalias !45155 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.ge = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !range !183, !invariant.load !177, !noalias !45155
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.gc, i64 noundef range(i64 1, -9223372036854775807) %i.gf) #52, !noalias !45155
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al, %bb.ai
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 noundef 24, i64 noundef 8) #52, !noalias !45156
  br label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.thread.i.i.i.i.i.i

bb.am:                                            ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB14_3net8outbound6stream19OutboundProxyStreamEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i.i
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State11close_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.at) #52, !noalias !45143
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, align 8, !alias.scope !45141, !noalias !45157, !noundef !177 ; 3 uses
  %i.gg = getelementptr i8, ptr %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gg, align 8, !alias.scope !45141, !noalias !45157 ; 4 uses
  %i.gh = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.gh, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.thread58.i.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.gi = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !177, !noalias !45158 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void %i.gi(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i) #60, !noalias !45158, !inline_history !44950
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !range !179, !invariant.load !177, !noalias !45158 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.thread58.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.gm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !range !183, !invariant.load !177, !noalias !45158
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.gk, i64 noundef range(i64 1, -9223372036854775807) %i.gn) #52, !noalias !45158
  br label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.thread58.i.i.i.i.i.i

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB10_3net8outbound6stream19OutboundProxyStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice.exit.thread.i.thread58.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap, %bb.am
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.11.1.ph.i.i.i.i.i.i.i.i, i64 noundef 24, i64 noundef 8) #52, !noalias !45159
  %i.go = load i64, ptr %i.av, align 8, !range !216, !alias.scope !45160, !noundef !177 ; 2 uses
  %i.gp = icmp ne i64 %i.go, -9223372036854775805
  call void @llvm.assume(i1 %i.gp)
  %i.gq = icmp eq i64 %i.go, -9223372036854775803
  br i1 %i.gq, label %.thread.sink.split.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i

bb.aq:                                            ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val117.i.i.i.i.i.i.i.i) ]
  %i.gr = load ptr, ptr %.val117.i.i.i.i.i.i.i.i, align 8, !invariant.load !177, !noalias !45147 ; 2 uses
  %.not.i.i.i122.i.i.i.i.i.i.i.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i122.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void %i.gr(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i) #60, !noalias !45147, !inline_history !44941
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.gs = getelementptr inbounds nuw i8, ptr %.val117.i.i.i.i.i.i.i.i, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !range !179, !invariant.load !177, !noalias !45147 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.gv = getelementptr inbounds nuw i8, ptr %.val117.i.i.i.i.i.i.i.i, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !range !183, !invariant.load !177, !noalias !45147
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) %i.gw) #52, !noalias !45147
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124.i.i.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123.i.i.i.i.i.i.i.i, %bb.as, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtB15_3net8outbound6stream19OutboundProxyStreamEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.bd, align 8, !alias.scope !45130
  store i8 0, ptr %i.bk, align 4, !alias.scope !45130
  call void @llvm.experimental.noalias.scope.decl(metadata !45161)
  %i.gx = load ptr, ptr %i.bl, align 8, !alias.scope !45162, !noundef !177 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaI3lGUjttVO_5hyper3ext13informational15OnInformationalEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124.i.i.i.i.i.i.i.i
  %i.gz = atomicrmw add ptr %i.gx, i64 -1 release, align 8, !noalias !45163
  %i.ha = icmp eq i64 %i.gz, 1
  br i1 %i.ha, label %bb.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaI3lGUjttVO_5hyper3ext13informational15OnInformationalEECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  fence acquire
end_hunk_5
begin_hunk_6_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0CsgZAIVb0XKpv_9ssservice:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !76500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !76500
  br label %bb.cx

bb.o:                                             ; preds = %_RNvXsu_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn12ClientConfigENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.4.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx25.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i, i64 7, i1 false), !noalias !76500
  %.sroa.723.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.723.0.copyload.i.i = load ptr, ptr %.sroa.723.0..sroa_idx.i.i, align 8, !alias.scope !76508, !noalias !76500 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.626.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i, i64 16, i1 false), !noalias !76500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !76500
  store i8 %i.bz, ptr %i.ae, align 8, !noalias !76500
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.sroa.723.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !76500
  call void @_RNvMNtCskLEkjrY29GY_16rustls_pki_types11server_nameNtB2_10ServerName8to_owned(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ae) #52, !noalias !76501
  call void @llvm.experimental.noalias.scope.decl(metadata !76509)
  %i.cc = icmp eq i8 %i.bz, 0
  %i.cd = ptrtoint ptr %.sroa.723.0.copyload.i.i to i64
  br i1 %i.cc, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !76510)
  %i.ce = icmp sgt ptr %.sroa.723.0.copyload.i.i, null
  br i1 %i.ce, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.q:                                             ; preds = %bb.p
  %.val1.i.i.i.i = load ptr, ptr %.sroa.626.0..sroa_idx.i.i, align 8, !alias.scope !76511, !noalias !76500, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !76512
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.q, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !76500
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.741.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1146.i.i)
  store i8 0, ptr %i.bo, align 8, !noalias !76500
  %.val8.i.i = load ptr, ptr %i.bv, align 8, !noalias !76500, !nonnull !177, !noundef !177 ; 4 uses
  %.val9.i.i = load i8, ptr %i.bw, align 8, !noalias !76500
  call void @llvm.experimental.noalias.scope.decl(metadata !76513)
  call void @llvm.experimental.noalias.scope.decl(metadata !76514)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !76515
  %i.cf = getelementptr i8, ptr %.val8.i.i, i64 40
  %.val.i.i10.i.i = load ptr, ptr %i.cf, align 8, !noalias !76516, !nonnull !177, !noundef !177
  %i.cg = getelementptr i8, ptr %.val8.i.i, i64 48
  %.val17.i.i.i.i = load i64, ptr %i.cg, align 8, !noalias !76516, !noundef !177
  call fastcc void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_hEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y, ptr nonnull %.val.i.i10.i.i, i64 %.val17.i.i.i.i) #52, !noalias !76516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !76517
  %i.ch = atomicrmw add ptr %.val8.i.i, i64 1 monotonic, align 8, !noalias !76516
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @_RNvMs2_NtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connectionNtB5_16ClientConnection13new_with_alpn(ptr noalias nofree noundef nonnull sret([1056 x i8]) align 8 captures(none) dereferenceable(1056) %i.x, ptr noundef nonnull %.val8.i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y) #52, !noalias !76518
  %i.cj = load i64, ptr %i.x, align 8, !range !190, !noalias !76517, !noundef !177 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 2
  br i1 %i.ck, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCskLEkjrY29GY_16rustls_pki_types11server_name10ServerNameECsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !76517
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.cl, i64 64, i1 false), !noalias !76517
  %i.cm = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCsb28OZjLZAOu_6rustls5error5ErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef 42, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.w) #59, !noalias !76516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !76517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !76517
  br label %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.u:                                             ; preds = %bb.r
  %.sroa.535.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.535.0.copyload37.i.i = load ptr, ptr %.sroa.535.0..sroa_idx36.i.i, align 8, !noalias !76519
  %.sroa.638.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.638.0.copyload40.i.i = load ptr, ptr %.sroa.638.0..sroa_idx39.i.i, align 8, !noalias !76519
  %.sroa.741.0..sroa_idx42.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %.sroa.741.i.i, ptr noundef nonnull align 8 dereferenceable(856) %.sroa.741.0..sroa_idx42.i.i, i64 856, i1 false), !noalias !76519
  %.sroa.4.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 880
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx6.i.i.i.i, align 8, !noalias !76517 ; 2 uses
  %.sroa.57.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(175) %.sroa.8.i.i, ptr noundef nonnull align 1 dereferenceable(175) %.sroa.57.0..sroa_idx.i.i.i.i, i64 175, i1 false), !noalias !76519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !76517
  %i.cn = trunc nuw i8 %.val9.i.i to i1
  %.off.i.i.i.i = add i8 %.sroa.4.0.copyload.i.i.i.i, -1
  %switch.i.i.i.i = icmp ult i8 %.off.i.i.i.i, 2
  %i.co = select i1 %i.cn, i1 %switch.i.i.i.i, i1 false
  %.sroa.010.0.i.i.i.i = select i1 %i.co, i64 0, i64 -9223372036854775808
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1146.i.i, i8 0, i64 16, i1 false), !alias.scope !76520, !noalias !76500
  br label %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.u, %bb.t
  %.sroa.944.0.i.i = phi i64 [ undef, %bb.t ], [ %.sroa.010.0.i.i.i.i, %bb.u ]
  %.sroa.743.0.i.i = phi i8 [ undef, %bb.t ], [ %.sroa.4.0.copyload.i.i.i.i, %bb.u ]
  %.sroa.638.0.i.i = phi ptr [ %i.cm, %bb.t ], [ %.sroa.638.0.copyload40.i.i, %bb.u ] ; 2 uses
  %.sroa.535.0.i.i = phi ptr [ %i.bl, %bb.t ], [ %.sroa.535.0.copyload37.i.i, %bb.u ] ; 2 uses
  %.sroa.033.0.i.i = phi i64 [ 4, %bb.t ], [ %i.cj, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !76515
  %.sroa.951.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(856) %.sroa.951.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(856) %.sroa.741.i.i, i64 856, i1 false), !noalias !76500
  %.sroa.1153.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(175) %.sroa.1153.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(175) %.sroa.8.i.i, i64 175, i1 false), !noalias !76500
  %.sroa.1456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4616
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1456.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1146.i.i, i64 16, i1 false), !noalias !76500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.741.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1146.i.i)
  %.sroa.749.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3552
  store ptr %.sroa.535.0.i.i, ptr %.sroa.749.0..sroa_idx.i.i, align 8, !noalias !76500
  %.sroa.850.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3560
  store ptr %.sroa.638.0.i.i, ptr %.sroa.850.0..sroa_idx.i.i, align 8, !noalias !76500
  %.sroa.1052.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4424
  store i8 %.sroa.743.0.i.i, ptr %.sroa.1052.0..sroa_idx.i.i, align 8, !noalias !76500
  %.sroa.1254.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4600
  store i64 %.sroa.944.0.i.i, ptr %.sroa.1254.0..sroa_idx.i.i, align 8, !noalias !76500
  %.sroa.1355.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4608
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.1355.0..sroa_idx.i.i, align 8, !noalias !76500
  %.sroa.1557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4632
  store ptr %i.bl, ptr %.sroa.1557.0..sroa_idx.i.i, align 8, !noalias !76500
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4640
  store ptr null, ptr %.sroa.16.0..sroa_idx.i.i, align 8, !noalias !76500
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4656
  store i8 0, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !noalias !76500
  br label %bb.v

bb.v:                                             ; preds = %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.m
  %i.cp = phi ptr [ %i.bi, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.ax, %bb.m ] ; 3 uses
  %i.cq = phi ptr [ %i.bm, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.phi.trans.insert.i, %bb.m ] ; 3 uses
  %i.cr = phi ptr [ %i.bn, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %i.bh, %bb.m ] ; 9 uses
  %.sroa.8.0.copyload.i.i.i.i = phi ptr [ %.sroa.638.0.i.i, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.8.0.copyload.i.i.pre.i.i, %bb.m ] ; 5 uses
  %.sroa.6.0.copyload.i.i.i.i = phi ptr [ %.sroa.535.0.i.i, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.6.0.copyload.i.i.pre.i.i, %bb.m ] ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i = phi i64 [ %.sroa.033.0.i.i, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.0.0.copyload.i.i.pre.i.i, %bb.m ] ; 3 uses
  %.sroa.0.079.i.i = phi ptr [ %i.bl, %_RINvMNtCs3Ol6WPi9G6e_12tokio_rustls6clientNtB3_12TlsConnector7connectINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ undef, %bb.m ]
  call void @llvm.experimental.noalias.scope.decl(metadata !76521)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !76522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !76523
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3552
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3568 ; 2 uses
  %.sroa.97.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3608 ; 2 uses
  %.sroa.97.0.copyload.i.i.i.i = load ptr, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76504, !noalias !76500 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3616 ; 2 uses
  %.sroa.10.0.copyload.i.i.i.i = load ptr, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76504, !noalias !76500 ; 4 uses
  store i64 2, ptr %i.cr, align 8, !alias.scope !76504, !noalias !76500
  %i.cs = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i.i.i.i, i64 1)
  switch i64 %i.cs, label %bb.w [
    i64 0, label %bb.x
    i64 2, label %bb.y
    i64 3, label %bb.z
    i64 1, label %bb.aa
  ], !prof !319

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.v
  %.sroa.11.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 3624
  %.sroa.616.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.616.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !76524
  %.sroa.918.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.918.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1040) %.sroa.11.0..sroa_idx.i.i.i.i, i64 1040, i1 false), !noalias !76524
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.v, align 8, !noalias !76523
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %.sroa.6.0.copyload.i.i.i.i, ptr %.sroa.415.0..sroa_idx.i.i.i.i, align 8, !noalias !76523
  %.sroa.5.0..sroa_idx.i.i11.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i11.i.i, align 8, !noalias !76523
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr %.sroa.97.0.copyload.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !76523
  %.sroa.817.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr %.sroa.10.0.copyload.i.i.i.i, ptr %.sroa.817.0..sroa_idx.i.i.i.i, align 8, !noalias !76523
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 1056
  %.val49.i.i.i.i = load i64, ptr %i.ct, align 8, !range !226, !noalias !76523, !noundef !177 ; 2 uses
  %i.cu = icmp sgt i64 %.val49.i.i.i.i, -1
  br i1 %i.cu, label %bb.cg, label %bb.ab

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !76523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.97.0.copyload.i.i.i.i) ]
  store ptr %.sroa.97.0.copyload.i.i.i.i, ptr %i.u, align 8, !noalias !76523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !76523
  store ptr %.sroa.6.0.copyload.i.i.i.i, ptr %i.t, align 8, !noalias !76523
  %.sroa.8.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.8.8..sroa_idx.i.i.i.i, align 8, !noalias !76523
  %.sroa.9.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !76524
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0.copyload.i.i.i.i) ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !76523
  store ptr %i.u, ptr %i.s, align 8, !noalias !76523
  store ptr %2, ptr %i.cv, align 8, !noalias !76523
  %i.cw = call { i64, ptr } @_RNvMs7_NtNtNtCsb28OZjLZAOu_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2287) #52, !noalias !76525 ; 2 uses
  %i.cx = extractvalue { i64, ptr } %i.cw, 0
  %i.cy = extractvalue { i64, ptr } %i.cw, 1      ; 2 uses
  %i.cz = trunc nuw i64 %i.cx to i1
  br i1 %i.cz, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %bb.v
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i.i.i.i) ]
  br label %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i

bb.aa:                                            ; preds = %bb.v
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @2392, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2394) #62, !noalias !76525
  unreachable

bb.ab:                                            ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %i.v, i64 1088 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 1112 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 8, !range !180, !noalias !76523, !noundef !177 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.v, i64 822 ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.v, i64 823 ; 4 uses
  %i.df = load i8, ptr %i.dd, align 2, !range !180, !noalias !76523, !noundef !177
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = load i8, ptr %i.de, align 1, !range !180, !noalias !76523
  %i.di = trunc nuw i8 %i.dh to i1
  %or.cond176.i.i.i.i = select i1 %i.dg, i1 %i.di, i1 false
  br i1 %or.cond176.i.i.i.i, label %._crit_edge181.i.i.i.i, label %.lr.ph180.i.i.i.i

.lr.ph180.i.i.i.i:                                ; preds = %bb.ab
  %i.dj = add nsw i64 %.val49.i.i.i.i, 9223372036854775807
  %switch.and.i.i.i.i = and i64 %i.dj, -3
  %switch.selectcmp.i.i.i.i = icmp eq i64 %switch.and.i.i.i.i, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.v, i64 176 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.v, i64 136 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 827 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.v, i64 1024 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.v, i64 856
  %i.du = getelementptr inbounds nuw i8, ptr %i.v, i64 828
  %i.dv = getelementptr inbounds nuw i8, ptr %i.v, i64 968
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit114.i.i.i.i, %.lr.ph180.i.i.i.i
  %.sroa.13.0178.i.i.i.i = phi i8 [ %i.dc, %.lr.ph180.i.i.i.i ], [ %.sroa.13.3.i.i.i.i, %.loopexit114.i.i.i.i ] ; 2 uses
  %.sroa.10.0177.i.i.i.i = phi i1 [ %switch.selectcmp.i.i.i.i, %.lr.ph180.i.i.i.i ], [ %.sroa.10.3.ph.i.i.i.i, %.loopexit114.i.i.i.i ] ; 5 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.bq, %bb.ac
  %.sroa.13.1.i.i.i.i = phi i8 [ %.sroa.13.0178.i.i.i.i, %bb.ac ], [ %.sroa.13.3.i.i.i.i, %bb.bq ] ; 2 uses
  %.promoted138.i.i.i.i.i = phi i1 [ %.sroa.10.0177.i.i.i.i, %bb.ac ], [ false, %bb.bq ]
  %i.dw = phi i8 [ %.sroa.13.0178.i.i.i.i, %bb.ac ], [ %i.fk, %bb.bq ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.sroa.07.1125.i127.i.i.i.i, %bb.bq ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 0, %bb.ac ], [ %.sroa.0.193217.i.i.i.i.i, %bb.bq ] ; 3 uses
  %i.dx = load i64, ptr %i.dk, align 8, !noalias !76526, !noundef !177
  %.not121.not.i.i.i.i.i = icmp ne i64 %i.dx, 0   ; 3 uses
  br i1 %.not121.not.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit76.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !76527
  store ptr %i.da, ptr %i.n, align 8, !noalias !76527
  store ptr %2, ptr %i.dl, align 8, !noalias !76527
  %i.dy = call { i64, ptr } @_RNvMs_NtCsb28OZjLZAOu_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dm, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2287) #52, !noalias !76528 ; 2 uses
  %i.dz = extractvalue { i64, ptr } %i.dy, 0
  %i.ea = extractvalue { i64, ptr } %i.dy, 1      ; 3 uses
  %i.eb = trunc nuw i64 %i.dz to i1
  br i1 %i.eb, label %.loopexit210.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !76527
  %i.ec = icmp eq ptr %i.ea, null
  br i1 %i.ec, label %.loopexit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = add i64 %.sroa.0.0.i.i.i.i.i, %i.ed     ; 2 uses
  %i.ef = load i64, ptr %i.dk, align 8, !noalias !76526, !noundef !177
  %.not.not.peel.i.i.i.i.i = icmp eq i64 %i.ef, 0
  br i1 %.not.not.peel.i.i.i.i.i, label %.loopexit76.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit76.i.i.i.i.i:                            ; preds = %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i, %bb.ad
  %.sroa.13.2.i.i.i.i = phi i8 [ %.sroa.13.7.i.i.i.i, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ %.sroa.13.1.i.i.i.i, %bb.ad ] ; 2 uses
  %i.eg = phi i8 [ %.lcssa153.i.i.i.i.i, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ %i.dw, %bb.ad ]
  %.sroa.0.193.i.i.i.i.i = phi i64 [ %.sroa.0.1122.lcssa.i.i.i.i.i, %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.ad ] ; 2 uses
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %.loopexit76.thread.i.i.i.i.i, label %bb.ap

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.af, %bb.ao
  %.sroa.0.1122.i.i.i.i.i = phi i64 [ %i.fi, %bb.ao ], [ %i.ee, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !76527
  store ptr %i.da, ptr %i.n, align 8, !noalias !76527
  store ptr %2, ptr %i.dl, align 8, !noalias !76527
  %i.ei = call { i64, ptr } @_RNvMs_NtCsb28OZjLZAOu_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dm, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2287) #52, !noalias !76528 ; 2 uses
  %i.ej = extractvalue { i64, ptr } %i.ei, 0
  %i.ek = extractvalue { i64, ptr } %i.ei, 1      ; 3 uses
  %i.el = trunc nuw i64 %i.ej to i1
  br i1 %i.el, label %.loopexit210.i.i.i.i.i, label %bb.an

.loopexit210.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.13.7.i.i.i.i = phi i8 [ %.sroa.13.1.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i ]
  %.lcssa153.i.i.i.i.i = phi i8 [ %i.dw, %.lr.ph.preheader.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1122.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.0.1122.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ek, %.lr.ph.i.i.i.i.i ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa.i.i.i.i.i) ]
  %i.em = ptrtoint ptr %.lcssa.i.i.i.i.i to i64   ; 5 uses
  %i.en = and i64 %i.em, 3                        ; 2 uses
  switch i64 %i.en, label %.loopexit210.i.i.i.i.i.unreachabledefault [
    i64 2, label %bb.ag
    i64 3, label %bb.ah
    i64 0, label %bb.ai
    i64 1, label %bb.aj
  ], !prof !230

.loopexit210.i.i.i.i.i.unreachabledefault:        ; preds = %.loopexit210.i.i.i.i.i
  unreachable

default.unreachable:                              ; preds = %bb.bm, %.loopexit75.i.i.i.i.i, %bb.ak, %bb.cs, %bb.cp, %._crit_edge.i.i.i.i, %bb.bz, %bb.bu, %bb.bj, %bb.bg, %bb.bb
  unreachable

bb.ag:                                            ; preds = %.loopexit210.i.i.i.i.i
  %i.eo = lshr i64 %i.em, 32
  %i.ep = trunc nuw i64 %i.eo to i32
  %i.eq = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52, !noalias !76528
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !noalias !76528, !nonnull !177, !noundef !177
  %i.et = call noundef i8 %i.es(i32 noundef %i.ep) #52, !noalias !76528, !inline_history !76430
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %.loopexit210.i.i.i.i.i
  %i.eu = lshr i64 %i.em, 32
  %i.ev = icmp ult ptr %.lcssa.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i.i.i = trunc i64 %i.eu to i8 ; 2 uses
  %i.ew = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ev)
  call void @llvm.assume(i1 %i.ew)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %.loopexit210.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i, i64 16
  %i.ey = load i8, ptr %i.ex, align 8, !range !291, !noalias !76528, !noundef !177
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i

bb.aj:                                            ; preds = %.loopexit210.i.i.i.i.i
  %i.ez = getelementptr i8, ptr %.lcssa.i.i.i.i.i, i64 31
  %i.fa = load i8, ptr %i.ez, align 8, !range !291, !noalias !76528, !noundef !177
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.et, %bb.ag ], [ %switch.idx.cast.i.i.i.i.i.i.i.i.i, %bb.ah ], [ %i.ey, %bb.ai ], [ %i.fa, %bb.aj ]
  %i.fb = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i, 13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !76527
  br i1 %i.fb, label %bb.ak, label %.loopexit.i.i.i.i

bb.ak:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !76529
  switch i64 %i.en, label %default.unreachable [
    i64 2, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
    i64 3, label %bb.al
    i64 0, label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i
    i64 1, label %bb.am
  ], !prof !230

bb.al:                                            ; preds = %bb.ak
  %i.fc = icmp ult ptr %.lcssa.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.fd = and i64 %i.em, 1095216660480
  %i.fe = icmp ne i64 %i.fd, 1095216660480
  call void @llvm.assume(i1 %i.fc)
  call void @llvm.assume(i1 %i.fe)
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ff = getelementptr i8, ptr %.lcssa.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ff) ]
  store ptr %i.ff, ptr %i.dn, align 8, !alias.scope !76530, !noalias !76529
  store i8 3, ptr %i.m, align 8, !alias.scope !76530, !noalias !76529
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dn) #52, !noalias !76531
  br label %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i

_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE8write_ioCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !76529
  br label %.loopexit76.i.i.i.i.i

bb.an:                                            ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !76527
  %i.fg = icmp eq ptr %i.ek, null
  br i1 %i.fg, label %.loopexit.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fh = ptrtoint ptr %i.ek to i64
  %i.fi = add i64 %.sroa.0.1122.i.i.i.i.i, %i.fh  ; 2 uses
  %i.fj = load i64, ptr %i.dk, align 8, !noalias !76526, !noundef !177
  %.not.not.i.i.i.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not.not.i.i.i.i.i, label %.loopexit76.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !76435

bb.ap:                                            ; preds = %bb.aq, %.loopexit76.thread.i.i.i.i.i, %.loopexit76.i.i.i.i.i
  %.sroa.13.3.i.i.i.i = phi i8 [ %.sroa.13.4.i.i.i.i, %.loopexit76.thread.i.i.i.i.i ], [ %.sroa.13.2.i.i.i.i, %.loopexit76.i.i.i.i.i ], [ 0, %bb.aq ] ; 4 uses
  %.sroa.0.193217.i.i.i.i.i = phi i64 [ %.sroa.0.193218.i.i.i.i.i, %.loopexit76.thread.i.i.i.i.i ], [ %.sroa.0.193.i.i.i.i.i, %.loopexit76.i.i.i.i.i ], [ %.sroa.0.193218.i.i.i.i.i, %bb.aq ] ; 2 uses
  %i.fk = phi i8 [ 1, %.loopexit76.thread.i.i.i.i.i ], [ 0, %.loopexit76.i.i.i.i.i ], [ 0, %bb.aq ]
  %.sroa.011.1.i.i.i.i.i = phi i1 [ true, %.loopexit76.thread.i.i.i.i.i ], [ %.not121.not.i.i.i.i.i, %.loopexit76.i.i.i.i.i ], [ %.not81220.i.i.i.i.i, %bb.aq ]
  br i1 %.promoted138.i.i.i.i.i, label %.thread.i.i.i.i.i, label %.lr.ph126.i.preheader.i.i.i.i

.lr.ph126.i.preheader.i.i.i.i:                    ; preds = %bb.ap
  %i.fl = load i64, ptr %i.dq, align 8, !noalias !76526, !noundef !177
  %i.fm = icmp ne i64 %i.fl, 0
  %i.fn = load i8, ptr %i.dr, align 1, !range !180, !noalias !76523
  %i.fo = trunc nuw i8 %i.fn to i1
end_hunk_6
begin_hunk_7_@_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound5chain8tls_wrap0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.lj = icmp eq ptr %.val.i59.i.i.i.i, null
  br i1 %i.lj, label %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %i.r, i64 1104
  %.val1.i.i.i.i.i = load ptr, ptr %i.lk, align 8, !alias.scope !76557, !noalias !76523
  %i.ll = getelementptr inbounds nuw i8, ptr %.val.i59.i.i.i.i, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !76525, !nonnull !177, !noundef !177
  call void %i.lm(ptr noundef %.val1.i.i.i.i.i) #52, !noalias !76525, !inline_history !76475
  br label %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.ci, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6common8TlsStateECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !76523
  br label %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i

.loopexit114.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i, %.thread.i.i.i.i, %.thread.i.i.i.i.i, %.loopexit.i.thread.i.i.i.i
  %i.ln = phi i8 [ 1, %.thread.i.i.i.i.i ], [ %i.jh, %.thread.i.i.i.i ], [ 1, %.loopexit.i.thread.i.i.i.i ], [ 1, %.loopexit.i.i.i.i.i ]
  %i.lo = phi i8 [ 1, %.thread.i.i.i.i.i ], [ %i.jg, %.thread.i.i.i.i ], [ 1, %.loopexit.i.thread.i.i.i.i ], [ 1, %.loopexit.i.i.i.i.i ]
  %.sroa.10.3.ph.i.i.i.i = phi i1 [ %.sroa.10.2.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.10.0177.i.i.i.i, %.thread.i.i.i.i ], [ %.sroa.10.0177.i.i.i.i, %.loopexit.i.thread.i.i.i.i ], [ %.sroa.10.0177.i.i.i.i, %.loopexit.i.i.i.i.i ]
  %i.lp = trunc nuw i8 %i.lo to i1
  %i.lq = trunc nuw i8 %i.ln to i1
  %or.cond.i.i.i.i = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %or.cond.i.i.i.i, label %._crit_edge181.i.i.i.i, label %bb.ac

._crit_edge.i.i.i.i:                              ; preds = %bb.co, %bb.y
  %.lcssa169.i.i.i.i = phi ptr [ %i.cy, %bb.y ], [ %i.mm, %bb.co ] ; 9 uses
  %i.lr = ptrtoint ptr %.lcssa169.i.i.i.i to i64  ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa169.i.i.i.i) ]
  %i.ls = and i64 %i.lr, 3                        ; 3 uses
  switch i64 %i.ls, label %default.unreachable [
    i64 2, label %bb.cj
    i64 3, label %bb.ck
    i64 0, label %bb.cl
    i64 1, label %bb.cm
  ], !prof !230

bb.cj:                                            ; preds = %._crit_edge.i.i.i.i
  %i.lt = lshr i64 %i.lr, 32
  %i.lu = trunc nuw i64 %i.lt to i32
  %i.lv = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52, !noalias !76525
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !noalias !76525, !nonnull !177, !noundef !177
  %i.ly = call noundef i8 %i.lx(i32 noundef %i.lu) #52, !noalias !76525, !inline_history !76476
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i
  %i.lz = lshr i64 %i.lr, 32
  %i.ma = icmp ult ptr %.lcssa169.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i = trunc i64 %i.lz to i8 ; 2 uses
  %i.mb = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ma)
  call void @llvm.assume(i1 %i.mb)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i
  %i.mc = getelementptr inbounds nuw i8, ptr %.lcssa169.i.i.i.i, i64 16
  %i.md = load i8, ptr %i.mc, align 8, !range !291, !noalias !76525, !noundef !177
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

bb.cm:                                            ; preds = %._crit_edge.i.i.i.i
  %i.me = getelementptr i8, ptr %.lcssa169.i.i.i.i, i64 31
  %i.mf = load i8, ptr %i.me, align 8, !range !291, !noalias !76525, !noundef !177
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i: ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj
  %.sroa.0.0.i60.i.i.i.i = phi i8 [ %i.ly, %bb.cj ], [ %switch.idx.cast.i.i.i.i.i.i.i, %bb.ck ], [ %i.md, %bb.cl ], [ %i.mf, %bb.cm ]
  %i.mg = icmp eq i8 %.sroa.0.0.i60.i.i.i.i, 13
  br i1 %i.mg, label %bb.cp, label %bb.cs

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %bb.co
  %i.mh = phi ptr [ %i.mm, %bb.co ], [ %i.cy, %bb.y ]
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i.i.i.i
  %i.mj = load ptr, ptr %i.u, align 8, !noalias !76523, !nonnull !177, !align !185, !noundef !177
  br label %bb.cv

bb.co:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !76523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !76523
  store ptr %i.u, ptr %i.s, align 8, !noalias !76523
  store ptr %2, ptr %i.cv, align 8, !noalias !76523
  %i.mk = call { i64, ptr } @_RNvMs7_NtNtNtCsb28OZjLZAOu_6rustls6server11server_conn10connectionNtB5_13AcceptedAlert5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @2287) #52, !noalias !76525 ; 2 uses
  %i.ml = extractvalue { i64, ptr } %i.mk, 0
  %i.mm = extractvalue { i64, ptr } %i.mk, 1      ; 2 uses
  %i.mn = trunc nuw i64 %i.ml to i1
  br i1 %i.mn, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.cp:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.420.i.i.i.i)
  %i.mo = load ptr, ptr %i.u, align 8, !noalias !76523, !nonnull !177, !align !185, !noundef !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.t, i64 56, i1 false), !noalias !76523
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %i.cr) #52, !noalias !76552
  store i64 3, ptr %i.cr, align 8, !alias.scope !76504, !noalias !76500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.420.i.i.i.i, i64 56, i1 false), !noalias !76524
  store ptr %i.mo, ptr %.sroa.97.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76504, !noalias !76500
  store ptr %.sroa.10.0.copyload.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76504, !noalias !76500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.420.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76559
  switch i64 %i.ls, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
    i64 3, label %bb.cq
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
    i64 1, label %bb.cr
  ], !prof !230

bb.cq:                                            ; preds = %bb.cp
  %i.mp = icmp ult ptr %.lcssa169.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.mq = and i64 %i.lr, 1095216660480
  %i.mr = icmp ne i64 %i.mq, 1095216660480
  call void @llvm.assume(i1 %i.mp)
  call void @llvm.assume(i1 %i.mr)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.ms = getelementptr i8, ptr %.lcssa169.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ms) ]
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ms, ptr %i.mt, align 8, !alias.scope !76560, !noalias !76559
  store i8 3, ptr %i.b, align 8, !alias.scope !76560, !noalias !76559
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mt) #52, !noalias !76561
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !76523
  br label %bb.cw

bb.cs:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i
  %i.mu = load ptr, ptr %i.u, align 8, !noalias !76523, !nonnull !177, !align !185, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76562
  switch i64 %i.ls, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit66.i.i.i.i
    i64 3, label %bb.ct
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit66.i.i.i.i
    i64 1, label %bb.cu
  ], !prof !230

bb.ct:                                            ; preds = %bb.cs
  %i.mv = icmp ult ptr %.lcssa169.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.mw = and i64 %i.lr, 1095216660480
  %i.mx = icmp ne i64 %i.mw, 1095216660480
  call void @llvm.assume(i1 %i.mv)
  call void @llvm.assume(i1 %i.mx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit66.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.my = getelementptr i8, ptr %.lcssa169.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.my) ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.my, ptr %i.mz, align 8, !alias.scope !76563, !noalias !76562
  store i8 3, ptr %i.a, align 8, !alias.scope !76563, !noalias !76562
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mz) #52, !noalias !76564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit66.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit66.i.i.i.i: ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76562
  br label %bb.cv

bb.cv:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit66.i.i.i.i, %bb.cn
  %.sroa.19.1.i.i.i = phi ptr [ %i.mu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit66.i.i.i.i ], [ %i.mj, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !76523
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb28OZjLZAOu_6rustls6vecbuf14ChunkVecBufferECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.t) #52, !noalias !76525
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i
  %.sroa.19.2.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.19.1.i.i.i, %bb.cv ]
  %.sroa.13.2.i.i.i = phi ptr [ undef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.10.0.copyload.i.i.i.i, %bb.cv ]
  %.sroa.0.2.i.i.i = phi i64 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ 2, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !76523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !76523
  br label %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i: ; preds = %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.z
  %.sroa.19.3.ph.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i, %bb.z ], [ %i.lf, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %i.kv, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i ]
  %.sroa.13.3.ph.i.i.i = phi ptr [ %.sroa.8.0.copyload.i.i.i.i, %bb.z ], [ %i.ld, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ], [ %.sroa.6.0.i93101.i.i.i.i, %_RNvXs6_NtCs3Ol6WPi9G6e_12tokio_rustls6clientINtB5_9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB7_6common9handshake9IoSession7into_ioCsgZAIVb0XKpv_9ssservice.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !76523
  br label %.thread.i

_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread21.i.i.i: ; preds = %_RNvMs_NtCs3Ol6WPi9G6e_12tokio_rustls6commonINtB4_6StreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamENtNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connection16ClientConnectionE9handshakeCsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !76523
  br label %bb.dk

_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.cw, %bb.cg
  %.sroa.25.i.sroa.5.0.i.i = phi i64 [ %.sroa.25.i.sroa.5.0.copyload.i.i, %bb.cg ], [ undef, %bb.cw ] ; 2 uses
  %.sroa.25.i.sroa.6.0.i.i = phi ptr [ %.sroa.25.i.sroa.6.0.copyload.i.i, %bb.cg ], [ undef, %bb.cw ] ; 3 uses
  %.sroa.25.i.sroa.7.0.i.i = phi i64 [ %.sroa.25.i.sroa.7.0.copyload.i.i, %bb.cg ], [ undef, %bb.cw ] ; 2 uses
  %.sroa.19.3.i.i.i = phi ptr [ %.sroa.19.0.copyload6.i.i.i, %bb.cg ], [ %.sroa.19.2.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.13.3.i.i.i = phi ptr [ %.sroa.13.0.copyload4.i.i.i, %bb.cg ], [ %.sroa.13.2.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.0.3.i.i.i = phi i64 [ %.sroa.0.0.copyload2.i.i.i, %bb.cg ], [ %.sroa.0.2.i.i.i, %bb.cw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !76523
  switch i64 %.sroa.0.3.i.i.i, label %bb.da [
    i64 -1, label %bb.dk
    i64 2, label %.thread.i
  ]

.thread.i:                                        ; preds = %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i
  %.sroa.13.319.i.i.i = phi ptr [ %.sroa.13.3.ph.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.13.3.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  %.sroa.19.318.i.i.i = phi ptr [ %.sroa.19.3.ph.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread.i.i.i ], [ %.sroa.19.3.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.319.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.318.i.i.i) ]
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice(ptr nonnull %.sroa.19.318.i.i.i) #52, !noalias !76565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %i.cr) #52, !noalias !76501
  br label %bb.cx

bb.cx:                                            ; preds = %.thread.i, %bb.n
  %i.na = phi ptr [ %i.bi, %bb.n ], [ %i.cp, %.thread.i ]
  %i.nb = phi ptr [ %i.bm, %bb.n ], [ %i.cq, %.thread.i ]
  %.sroa.474.0.i.i = phi ptr [ %i.cb, %bb.n ], [ %.sroa.13.319.i.i.i, %.thread.i ]
  %.sroa.0.1.i.i = phi ptr [ %i.bl, %bb.n ], [ %.sroa.0.079.i.i, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !76500
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 4680 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76566)
  call void @llvm.experimental.noalias.scope.decl(metadata !76567)
  call void @llvm.experimental.noalias.scope.decl(metadata !76568)
  %i.nd = load ptr, ptr %i.nc, align 8, !alias.scope !76569, !noalias !76500, !nonnull !177, !noundef !177
  %i.ne = atomicrmw add ptr %i.nd, i64 -1 release, align 8, !noalias !76570
  %i.nf = icmp eq i64 %i.ne, 1
  br i1 %i.nf, label %bb.cy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.cy:                                            ; preds = %bb.cx
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.nc) #59, !noalias !76501
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.cy, %bb.cx
  %i.ng = getelementptr inbounds nuw i8, ptr %1, i64 4720 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 8, !range !180, !noalias !76500, !noundef !177
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.dg, label %bb.df

bb.cz:                                            ; preds = %bb.h
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1829) #62, !noalias !76501
  unreachable

bb.da:                                            ; preds = %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.1161.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.25.i.sroa.0.i.i, i64 704, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1161.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.25.i.sroa.8.i.i, i64 368, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshake12MidHandshakeINtNtBI_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEEECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(1120) %i.cr) #52, !noalias !76501
  %.not.i.i.i = icmp ne i64 %.sroa.25.i.sroa.5.0.i.i, -1
  %i.nj = icmp eq i64 %.sroa.25.i.sroa.7.0.i.i, 2
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.nj, i1 false
  br i1 %or.cond.i.i, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.nk = load i8, ptr %.sroa.25.i.sroa.6.0.i.i, align 1, !noalias !76501, !noundef !177
  %i.nl = icmp eq i8 %i.nk, 104
  br i1 %i.nl, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.25.i.sroa.6.0.i.i, i64 1
  %i.nn = load i8, ptr %i.nm, align 1, !noalias !76501, !noundef !177
  %i.no = icmp eq i8 %i.nn, 50
  %i.np = zext i1 %i.no to i8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %.sroa.0.0.i.i = phi i8 [ %i.np, %bb.dc ], [ 0, %bb.db ], [ 0, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !76500
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 4680 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76571)
  call void @llvm.experimental.noalias.scope.decl(metadata !76572)
  call void @llvm.experimental.noalias.scope.decl(metadata !76573)
  %i.nr = load ptr, ptr %i.nq, align 8, !alias.scope !76574, !noalias !76500, !nonnull !177, !noundef !177
  %i.ns = atomicrmw add ptr %i.nr, i64 -1 release, align 8, !noalias !76575
  %i.nt = icmp eq i64 %i.ns, 1
  br i1 %i.nt, label %bb.de, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i

bb.de:                                            ; preds = %bb.dd
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCsb28OZjLZAOu_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.nq) #59, !noalias !76501
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i: ; preds = %bb.de, %bb.dd
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 4720
  store i8 0, ptr %i.nu, align 8, !noalias !76500
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsgZAIVb0XKpv_9ssservice.exit

bb.df:                                            ; preds = %bb.dg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit.i.i
  store i8 0, ptr %i.ng, align 8, !noalias !76500
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsgZAIVb0XKpv_9ssservice.exit

bb.dg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit.i.i
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEECsgZAIVb0XKpv_9ssservice(ptr %.sroa.0.1.i.i) #52, !noalias !76501
  br label %bb.df

bb.dh:                                            ; preds = %bb.d
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1828) #62, !noalias !76499
  unreachable

bb.di:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.474.1.i.i) ]
  %.phi.trans.insert187 = getelementptr inbounds nuw i8, ptr %1, i64 4737
  %.pre188 = load i8, ptr %.phi.trans.insert187, align 1, !range !180
  %i.nv = trunc nuw i8 %.pre188 to i1
  br i1 %i.nv, label %bb.do, label %bb.dn

bb.dj:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1831) #62
  unreachable

common.ret:                                       ; preds = %bb.dm, %bb.dk
  %storemerge = phi i8 [ 3, %bb.dk ], [ 1, %bb.dm ]
  store i8 %storemerge, ptr %i.ah, align 8
  ret void

bb.dk:                                            ; preds = %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.thread21.i.i.i, %_RNvXNtNtCs3Ol6WPi9G6e_12tokio_rustls6common9handshakeINtB2_12MidHandshakeINtNtB6_6client9TlsStreamINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.25.i.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !76500
  store i8 3, ptr %i.cq, align 1, !noalias !76500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i8 3, ptr %i.cp, align 8, !noalias !76497
  store i64 -2, ptr %0, align 8
  br label %common.ret

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i, %bb.df
  %i.nw = phi ptr [ %i.na, %bb.df ], [ %i.cp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ]
  %i.nx = phi ptr [ %i.nb, %bb.df ], [ %i.cq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ]
  %.sroa.876.sroa.2.0.i.i = phi i64 [ undef, %bb.df ], [ %.sroa.25.i.sroa.5.0.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ]
  %.sroa.876.sroa.3.0.i.i = phi ptr [ undef, %bb.df ], [ %.sroa.25.i.sroa.6.0.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ]
  %.sroa.876.sroa.4.0.i.i = phi i64 [ undef, %bb.df ], [ %.sroa.25.i.sroa.7.0.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ]
  %.sroa.073.1.i.i = phi i64 [ 2, %bb.df ], [ %.sroa.0.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ] ; 2 uses
  %.sroa.474.1.i.i = phi ptr [ %.sroa.474.0.i.i, %bb.df ], [ %.sroa.13.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ] ; 4 uses
  %.sroa.775.0.i.i = phi ptr [ undef, %bb.df ], [ %.sroa.19.3.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ]
  %.sroa.977.0.i.i = phi i8 [ undef, %bb.df ], [ %.sroa.0.0.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3Ol6WPi9G6e_12tokio_rustls6client12TlsConnectorECsgZAIVb0XKpv_9ssservice.exit14.i.i ]
  store i8 1, ptr %i.nx, align 1, !noalias !76500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i8 1, ptr %i.nw, align 8, !noalias !76497
  %i.ny = icmp eq i64 %.sroa.073.1.i.i, 2
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 4737 ; 3 uses
  br i1 %i.ny, label %bb.di, label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound3tls11tls_connect0ECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.867, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.1161.sroa.0.i.i, i64 704, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1271, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1161.sroa.8.i.i, i64 368, i1 false)
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 2336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1574, ptr noundef nonnull align 8 dereferenceable(32) %i.oa, i64 32, i1 false)
  store i8 0, ptr %i.nz, align 1
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  %.sroa.064.1 = phi i64 [ -1, %bb.dn ], [ %.sroa.073.1.i.i, %bb.dl ]
  %.sroa.465.1 = phi ptr [ %.sroa.465.0198, %bb.dn ], [ %.sroa.474.1.i.i, %bb.dl ]
  %.sroa.766.0 = phi ptr [ undef, %bb.dn ], [ %.sroa.775.0.i.i, %bb.dl ]
  %.sroa.968.0 = phi i64 [ undef, %bb.dn ], [ %.sroa.876.sroa.2.0.i.i, %bb.dl ]
  %.sroa.1069.0 = phi ptr [ undef, %bb.dn ], [ %.sroa.876.sroa.3.0.i.i, %bb.dl ]
  %.sroa.1170.0 = phi i64 [ undef, %bb.dn ], [ %.sroa.876.sroa.4.0.i.i, %bb.dl ]
  %.sroa.1372.0 = phi i8 [ undef, %bb.dn ], [ %.sroa.977.0.i.i, %bb.dl ]
  store i64 %.sroa.064.1, ptr %0, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.465.1, ptr %.sroa.465.0..sroa_idx, align 8
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.766.0, ptr %.sroa.766.0..sroa_idx, align 8
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %.sroa.867.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(704) %.sroa.867, i64 704, i1 false)
  %.sroa.968.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 %.sroa.968.0, ptr %.sroa.968.0..sroa_idx, align 8
  %.sroa.1069.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %.sroa.1069.0, ptr %.sroa.1069.0..sroa_idx, align 8
  %.sroa.1170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i64 %.sroa.1170.0, ptr %.sroa.1170.0..sroa_idx, align 8
  %.sroa.1271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 752
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1271.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.1271, i64 368, i1 false)
  %.sroa.1372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i8 %.sroa.1372.0, ptr %.sroa.1372.0..sroa_idx, align 8
  %.sroa.1574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1574.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1574, i64 32, i1 false)
  br label %common.ret

bb.dn:                                            ; preds = %bb.do, %bb.di
  %i.ob = phi ptr [ %i.oc, %bb.do ], [ %i.nz, %bb.di ]
  %.sroa.465.0198 = phi ptr [ %.sroa.465.0199, %bb.do ], [ %.sroa.474.1.i.i, %bb.di ]
  store i8 0, ptr %i.ob, align 1
  br label %bb.dm

bb.do:                                            ; preds = %.thread196, %bb.di
  %i.oc = phi ptr [ %i.an, %.thread196 ], [ %i.nz, %bb.di ]
  %.sroa.465.0199 = phi ptr [ %.sroa.6.0.copyload, %.thread196 ], [ %.sroa.474.1.i.i, %bb.di ]
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 1176
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(1160) %i.od) #52
  br label %bb.dn
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http5utils12connect_host0CsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(3536) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [96 x i8], align 8                ; 16 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [3504 x i8], align 16        ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_7
begin_hunk_8_@_RNCNvXs_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB6_11DnsResolverNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver8resolver10DnsResolve7resolve0CsgZAIVb0XKpv_9ssservice:bb.a

_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.thread74.i.thread.i, %.thread74.i.i, %bb.z, %bb.w, %bb.x
  %.sroa.43.4 = phi i64 [ %.sroa.43.1, %bb.w ], [ %.sroa.43.1, %bb.x ], [ %.sroa.43.0.copyload139, %.thread74.i.i ], [ %.sroa.43.0.copyload139, %bb.z ], [ %.sroa.43.0.copyload137, %.thread74.i.thread.i ] ; 2 uses
  %.sroa.37.4 = phi i32 [ %.sroa.37.1, %bb.w ], [ %.sroa.37.1, %bb.x ], [ %.sroa.37.0.copyload120, %.thread74.i.i ], [ %.sroa.37.0.copyload120, %bb.z ], [ %.sroa.37.0.copyload118, %.thread74.i.thread.i ] ; 2 uses
  %.sroa.18103.4 = phi i8 [ %.sroa.18103.1, %bb.w ], [ %.sroa.18103.1, %bb.x ], [ %.sroa.18103.0.copyload107, %.thread74.i.i ], [ %.sroa.18103.0.copyload107, %bb.z ], [ %.sroa.18103.0.copyload105, %.thread74.i.thread.i ] ; 2 uses
  %.sroa.0.4 = phi i16 [ %.sroa.0.1, %bb.w ], [ %.sroa.0.1, %bb.x ], [ %.sroa.0.0.copyload98, %.thread74.i.i ], [ %.sroa.0.0.copyload98, %bb.z ], [ %.sroa.0.0.copyload97, %.thread74.i.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !78228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !78228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !78227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !78227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !78227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !78227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !78227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !78227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !78227
  %i.pg = icmp eq i16 %.sroa.0.4, 2
  br i1 %i.pg, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit.thread, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.18103.4225 = phi i8 [ 5, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.18103.4, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.37.4224 = phi i32 [ %.sroa.37.2, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.37.4, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.43.4223 = phi i64 [ %.sroa.43.2, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.sroa.43.4, %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit ]
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
  %i.ph = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCs2Z77Vc7pSLS_13hickory_proto5error10ProtoErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef 20, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.av) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.29)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.40)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.45)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit88

bb.cp:                                            ; preds = %_RINvMNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB3_4Name9from_utf8ReECsgZAIVb0XKpv_9ssservice.exit
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
  store i8 1, ptr %i.pj, align 8, !alias.scope !78289
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 43664 ; 4 uses
  call void @_RNvMs_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB4_5Query3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.pk) #52
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 43744 ; 2 uses
  store i16 0, ptr %i.pl, align 16, !alias.scope !78290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 16 dereferenceable(80) %i.pi, i64 80, i1 false)
  %i.pm = call noundef nonnull align 8 ptr @_RNvMs_NtNtCs2Z77Vc7pSLS_13hickory_proto2op5queryNtB4_5Query8set_name(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.pk, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.au) #52 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 43752 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78291)
  call void @llvm.experimental.noalias.scope.decl(metadata !78292)
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %i.pn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.pk) #60
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 43748
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 43750
  %i.pq = load i16, ptr %i.pp, align 2, !alias.scope !78292
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 43836
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 43838
  store i16 %i.pq, ptr %i.ps, align 2, !alias.scope !78291
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 43832
  %i.pu = load <2 x i16>, ptr %i.pl, align 16, !alias.scope !78292
  store <2 x i16> %i.pu, ptr %i.pt, align 8, !alias.scope !78291
  store i16 0, ptr %i.po, align 4, !alias.scope !78293
  store i16 1, ptr %i.pr, align 4, !alias.scope !78294
  %i.pv = getelementptr inbounds nuw i8, ptr %1, i64 43840 ; 3 uses
  call void @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message5query(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.pv) #52
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 43979
  store i8 1, ptr %i.pw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr noundef nonnull align 16 dereferenceable(88) %i.pk, i64 88, i1 false)
  %i.px = call noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message9add_query(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.pv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.at) #52 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 43992 ; 3 uses
  call void @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message5query(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.py) #52
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 44131
  store i8 1, ptr %i.pz, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.as, ptr noundef nonnull align 8 dereferenceable(88) %i.pn, i64 88, i1 false)
  %i.qa = call noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message9add_query(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.py, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.as) #52 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.qb = load ptr, ptr %i.ay, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
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
  %i.qf = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB5_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1f_11DnsResolver6lookup0ENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.qd, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #52, !noalias !78295
  %i.qg = call fastcc noundef zeroext i1 @_RNvXs1_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB5_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1f_11DnsResolver6lookup0ENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.qe, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #52, !noalias !78295
  %.demorgan.i = or i1 %i.qf, %i.qg
  br i1 %.demorgan.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qh = load i64, ptr %i.qd, align 16, !range !190, !noalias !78296, !noundef !177
  %i.qi = icmp eq i64 %i.qh, 1
  br i1 %i.qi, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit.thread.i

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.cr
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.0.0.copyload6.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !78297 ; 5 uses
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 2, ptr %i.qd, align 16, !noalias !78296
  %.not.i = icmp eq i64 %.sroa.0.0.copyload6.i, -2
  br i1 %.not.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit.thread.i, label %bb.cs, !prof !208

bb.cs:                                            ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit.i
  %i.qj = load i64, ptr %i.qe, align 16, !range !190, !noalias !78298, !noundef !177
  %i.qk = icmp eq i64 %i.qj, 1
  br i1 %i.qk, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit5.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit5.thread.i

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit5.i: ; preds = %bb.cs
  %.sroa.4.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %1, i64 21880
  %.sroa.010.0.copyload11.i = load i64, ptr %.sroa.4.0..sroa_idx.i4.i, align 8, !noalias !78297 ; 5 uses
  store i64 2, ptr %i.qe, align 16, !noalias !78298
  %.not3.i = icmp eq i64 %.sroa.010.0.copyload11.i, -2
  br i1 %.not3.i, label %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit5.thread.i, label %bb.cv, !prof !208

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit.i, %bb.cr
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2443) #62, !noalias !78295
  unreachable

_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit5.thread.i: ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit5.i, %bb.cs
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2443) #62, !noalias !78295
  unreachable

bb.ct:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1921) #62
  unreachable

common.ret:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit88, %bb.cu
  %storemerge = phi i8 [ 3, %bb.cu ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit88 ]
  store i8 %storemerge, ptr %i.aw, align 4
  ret void

bb.cu:                                            ; preds = %bb.cq
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.cv:                                            ; preds = %_RNvMs_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB4_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1e_11DnsResolver6lookup0E11take_outputCsgZAIVb0XKpv_9ssservice.exit5.i
  %.sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 21888
  %.sroa.9179.sroa.0.0.copyload = load ptr, ptr %.sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i, align 16, !noalias !78299 ; 13 uses
  %.sroa.9179.sroa.5.0..sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 21896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9179.sroa.5.0..sroa.612.0..sroa.4.0..sroa_idx.i4.sroa_idx.i.sroa_idx, i64 136, i1 false)
  %.sroa.7177.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i, align 16, !noalias !78299 ; 13 uses
  %.sroa.7177.sroa.5.0..sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7177.sroa.5.0..sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx.i.sroa_idx, i64 136, i1 false)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1I_11DnsResolver6lookup0EECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.qd) #52
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCscVsx2cUGvkQ_12futures_util6future10maybe_done9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1I_11DnsResolver6lookup0EECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.qe) #52
  %i.ql = icmp eq i64 %.sroa.0.0.copyload6.i, -1  ; 2 uses
  %i.qm = icmp eq i64 %.sroa.010.0.copyload11.i, -1 ; 2 uses
  %i.qn = and i64 %.sroa.010.0.copyload11.i, %.sroa.0.0.copyload6.i
  %or.cond = icmp eq i64 %i.qn, -1
  br i1 %or.cond, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 43656
  %i.qp = load ptr, ptr %i.qo, align 8, !nonnull !177, !align !185, !noundef !177
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 288
  %i.qr = load i8, ptr %i.qq, align 8, !range !180, !noundef !177
  %i.qs = trunc nuw i8 %i.qr to i1
  br i1 %i.qs, label %bb.de, label %bb.dd

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7177.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9179.sroa.0.0.copyload) ]
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 43656
  %i.qu = load ptr, ptr %i.qt, align 8, !nonnull !177, !align !185, !noundef !177
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 288
  %i.qw = load i8, ptr %i.qv, align 8, !range !180, !noundef !177
  %i.qx = trunc nuw i8 %i.qw to i1
  br i1 %i.qx, label %.critedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !78300
  %i.qy = ptrtoint ptr %.sroa.9179.sroa.0.0.copyload to i64 ; 2 uses
  %i.qz = and i64 %i.qy, 3
  switch i64 %i.qz, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 3, label %bb.cz
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
    i64 1, label %bb.da
  ], !prof !230

default.unreachable:                              ; preds = %bb.ec, %bb.dv, %bb.dp, %bb.dh, %.critedge, %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.cy
  %i.ra = icmp ult ptr %.sroa.9179.sroa.0.0.copyload, inttoptr (i64 188978561024 to ptr)
  %i.rb = and i64 %i.qy, 1095216660480
  %i.rc = icmp ne i64 %i.rb, 1095216660480
  call void @llvm.assume(i1 %i.ra)
  call void @llvm.assume(i1 %i.rc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

bb.da:                                            ; preds = %bb.cy
  %i.rd = getelementptr i8, ptr %.sroa.9179.sroa.0.0.copyload, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rd) ]
  %i.re = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.rd, ptr %i.re, align 8, !alias.scope !78301, !noalias !78300
  store i8 3, ptr %i.f, align 8, !alias.scope !78301, !noalias !78300
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.re) #52, !noalias !78300
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.cy, %bb.cy, %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !78300
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit88

.critedge:                                        ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !78302
  %i.rf = ptrtoint ptr %.sroa.7177.sroa.0.0.copyload to i64 ; 2 uses
  %i.rg = and i64 %i.rf, 3
  switch i64 %i.rg, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit68
    i64 3, label %bb.db
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit68
    i64 1, label %bb.dc
  ], !prof !230

bb.db:                                            ; preds = %.critedge
  %i.rh = icmp ult ptr %.sroa.7177.sroa.0.0.copyload, inttoptr (i64 188978561024 to ptr)
  %i.ri = and i64 %i.rf, 1095216660480
  %i.rj = icmp ne i64 %i.ri, 1095216660480
  call void @llvm.assume(i1 %i.rh)
  call void @llvm.assume(i1 %i.rj)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit68

bb.dc:                                            ; preds = %.critedge
  %i.rk = getelementptr i8, ptr %.sroa.7177.sroa.0.0.copyload, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rk) ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.rk, ptr %i.rl, align 8, !alias.scope !78303, !noalias !78302
  store i8 3, ptr %i.e, align 8, !alias.scope !78303, !noalias !78302
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rl) #52, !noalias !78302
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit68

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit68: ; preds = %.critedge, %.critedge, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !78302
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit88

bb.dd:                                            ; preds = %bb.cw
  br i1 %i.ql, label %bb.dg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit

bb.de:                                            ; preds = %bb.cw
  br i1 %i.qm, label %bb.du, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit78

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i64 %.sroa.0.0.copyload6.i, ptr %i.ah, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.7177.sroa.0.0.copyload, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.10.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.10.0..sroa_idx9, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.9, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 44146
  %i.rn = load i16, ptr %i.rm, align 2, !noundef !177
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolver9store_dns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.ah, i16 noundef %i.rn) #52
  %.sroa.0186.0.copyload = load i64, ptr %i.ag, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.21.0.copyload = load i64, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.df

bb.df:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.21.0 = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71 ], [ %.sroa.21.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit ]
  %.sroa.14.0 = phi ptr [ inttoptr (i64 4 to ptr), %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71 ], [ %.sroa.14.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
  %.sroa.0186.0 = phi i64 [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71 ], [ %.sroa.0186.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit ] ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !78304)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !78304
  %i.rr = ptrtoint ptr %.val.i69 to i64           ; 2 uses
  %i.rs = and i64 %i.rr, 3
  switch i64 %i.rs, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71
    i64 3, label %bb.di
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71
    i64 1, label %bb.dj
  ], !prof !230

bb.di:                                            ; preds = %bb.dh
  %i.rt = icmp ult ptr %.val.i69, inttoptr (i64 188978561024 to ptr)
  %i.ru = and i64 %i.rr, 1095216660480
  %i.rv = icmp ne i64 %i.ru, 1095216660480
  call void @llvm.assume(i1 %i.rt)
  call void @llvm.assume(i1 %i.rv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71

bb.dj:                                            ; preds = %bb.dh
  %i.rw = getelementptr i8, ptr %.val.i69, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rw) ]
  %i.rx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.rw, ptr %i.rx, align 8, !alias.scope !78305, !noalias !78304
  store i8 3, ptr %i.d, align 8, !alias.scope !78305, !noalias !78304
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.rx) #52, !noalias !78304
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit71: ; preds = %bb.dh, %bb.dh, %bb.di, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !78304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.df

bb.dk:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.af, ptr %i.ae, align 8
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.4214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @1924, ptr %i.ad, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 45, ptr %i.ry, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr @1924, ptr %i.rz, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 45, ptr %i.sa, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr @1923, ptr %i.sb, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull @1922, ptr noundef nonnull %i.ae, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val.i69.pre = load ptr, ptr %i.af, align 8, !alias.scope !78304
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
  %i.sd = load i16, ptr %i.sc, align 2, !noundef !177
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolver9store_dns(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.ac, i16 noundef %i.sd) #52
  %i.se = icmp eq i64 %.sroa.0186.0, 0
  br i1 %i.se, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit73, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sf = shl nuw i64 %.sroa.0186.0, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0, i64 noundef %i.sf, i64 noundef range(i64 1, -9223372036854775807) 4) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit73

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit73: ; preds = %bb.dl, %bb.dm
  %.sroa.0186.0.copyload187 = load i64, ptr %i.ab, align 8
  %.sroa.14.0..sroa_idx190 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.14.0.copyload191 = load ptr, ptr %.sroa.14.0..sroa_idx190, align 8
  %.sroa.21.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.21.0.copyload197 = load i64, ptr %.sroa.21.0..sroa_idx196, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
end_hunk_8
begin_hunk_9_@_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14poll_read_headCsgZAIVb0XKpv_9ssservice:bb.a
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 5088
  %i.i = load i32, ptr %i.h, align 16, !range !197, !noundef !177 ; 2 uses
  %.not = icmp eq i32 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.r, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4848
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 5096 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 5177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %i.l, i64 7, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4824 ; 2 uses
  %i.n = load <2 x i64>, ptr %i.d, align 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 5186
  %i.p = load i8, ptr %i.o, align 2, !range !180, !noundef !177
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5188 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !range !180, !noundef !177
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 5160 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81438)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.4)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4752 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4760 ; 4 uses
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4784
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 47
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.4.i.sroa.4.0..sroa.529.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.x = insertelement <2 x ptr> poison, ptr %i.j, i64 0
  %i.y = insertelement <2 x ptr> %i.x, ptr %i.k, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !81439
  %i.z = load i64, ptr %1, align 16, !range !181, !alias.scope !81438, !noundef !177
  %i.aa = load i64, ptr %i.u, align 8, !alias.scope !81438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !81439
  store <2 x i64> %i.n, ptr %i.a, align 16, !noalias !81440
  store <2 x ptr> %i.y, ptr %.sroa.5.0..sroa_idx, align 16, !noalias !81440
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx, align 16, !noalias !81440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.8, i64 7, i1 false), !noalias !81440
  store i8 %i.p, ptr %.sroa.9.0..sroa_idx, align 1, !noalias !81440
  store i8 %i.r, ptr %.sroa.10.0..sroa_idx, align 16, !noalias !81440
  call void @llvm.experimental.noalias.scope.decl(metadata !81441)
  %i.ab = load i64, ptr %i.v, align 8, !alias.scope !81442, !noundef !177 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = trunc nuw i64 %i.z to i1
  br i1 %i.ad, label %bb.f, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.t, align 16, !alias.scope !81442, !nonnull !177, !noundef !177
  %i.af = call noundef zeroext i1 @_RNvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role16is_complete_fast(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ab, i64 noundef %i.aa) #52, !noalias !81443
  br i1 %i.af, label %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81439
  br label %bb.i

_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.f, %bb.e
  call void @_RNvXs0_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14roleNtB5_6ClientNtB7_16Http1Transaction5parse(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.a) #52, !noalias !81444
  %.pr.i = load i64, ptr %i.b, align 8, !noalias !81439 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !81439
  %i.ag = icmp eq i64 %.pr.i, -2
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i
  %i.ah = load i8, ptr %.sroa.428.0..sroa_idx.i, align 8, !range !260, !noalias !81439, !noundef !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81439
  %i.ai = call noundef nonnull align 8 ptr @_RNvXs2_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_5ParseE4from(i8 noundef %i.ah) #52, !noalias !81444
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread

bb.h:                                             ; preds = %_RINvNtNtNtCsaI3lGUjttVO_5hyper5proto2h14role13parse_headersNtB2_6ClientECsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.428.0.copyload.i = load i64, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !81439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %.sroa.4.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.i.sroa.4.0..sroa.529.0..sroa_idx.i.sroa_idx, i64 112, i1 false), !noalias !81439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !81439
  %.not.i = icmp eq i64 %.pr.i, -1
  br i1 %.not.i, label %bb.i, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %.thread, %bb.h
  %i.aj = load i8, ptr %i.w, align 16, !range !180, !alias.scope !81438, !noundef !177
  %i.ak = trunc nuw i8 %i.aj to i1
  %.sroa.011.0.in.v.i = select i1 %i.ak, i64 4792, i64 4800
  %.sroa.011.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.011.0.in.v.i
  %.sroa.011.0.i = load i64, ptr %.sroa.011.0.in.i, align 8, !alias.scope !81438, !noundef !177
  %i.al = load i64, ptr %i.v, align 8, !alias.scope !81438, !noundef !177 ; 3 uses
  %.not36.i = icmp ult i64 %i.al, %.sroa.011.0.i
  br i1 %.not36.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not37.i = icmp eq i64 %i.al, 0
  br i1 %.not37.i, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.am = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error13new_too_large() #52, !noalias !81444
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread

bb.l:                                             ; preds = %bb.j
  store i64 %i.al, ptr %i.u, align 8, !alias.scope !81438
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sink.i = phi i64 [ 1, %bb.l ], [ 0, %bb.j ]
  store i64 %.sink.i, ptr %1, align 16, !alias.scope !81438
  %i.an = call fastcc { i64, ptr } @_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB14_3net11http_stream15ProxyHttpStreamNtNtNtNtB12_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE17poll_read_from_ioCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 16 dereferenceable(4816) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #52, !noalias !81444 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 2 uses
  switch i64 %i.ao, label %bb.n [
    i64 2, label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread151
    i64 0, label %bb.o
  ]

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread151: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.aq = load i8, ptr %i.e, align 16, !range !180, !noundef !177
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.bp, label %bb.bo

bb.n:                                             ; preds = %bb.m
  %i.as = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error6new_io(ptr noundef nonnull %i.ap) #52, !noalias !81444
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.at = icmp eq ptr %i.ap, null
  br i1 %i.at, label %bb.p, label %bb.d

bb.p:                                             ; preds = %bb.o
  %i.au = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_incomplete() #52, !noalias !81444
  br label %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %bb.n, %bb.g, %bb.p, %bb.k
  %.sroa.11.1.ph = phi ptr [ %i.am, %bb.k ], [ %i.au, %bb.p ], [ %i.ai, %bb.g ], [ %i.as, %bb.n ] ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.experimental.noalias.scope.decl(metadata !81445)
  call void @llvm.experimental.noalias.scope.decl(metadata !81446)
  call void @llvm.experimental.noalias.scope.decl(metadata !81447)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 5191
  %i.aw = load i8, ptr %i.av, align 1, !range !198, !alias.scope !81446, !noundef !177
  %i.ax = icmp ne i8 %i.aw, 0
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State10close_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.d) #52, !noalias !81448
  call void @llvm.experimental.noalias.scope.decl(metadata !81449)
  %i.ay = load i64, ptr %i.v, align 8, !alias.scope !81450, !noundef !177 ; 3 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB14_3net11http_stream15ProxyHttpStreamNtNtNtNtB12_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i, label %.preheader.i.i

_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.h
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5143.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(112) %.sroa.4.i.sroa.4, i64 112, i1 false)
  store i64 0, ptr %1, align 16, !alias.scope !81438
  %i.ba = inttoptr i64 %.sroa.428.0.copyload.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 %.pr.i, ptr %i.c, align 8
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ba, ptr %.sroa.4142.0..sroa_idx, align 8
  store i8 0, ptr %i.e, align 16
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5128 ; 2 uses
  %.val = load ptr, ptr %i.bb, align 8, !noundef !177 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 5136
  %.val117 = load ptr, ptr %i.bc, align 16        ; 4 uses
  %i.bd = icmp eq ptr %.val, null
  br i1 %i.bd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124, label %bb.ah

bb.q:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 5080
  %i.bf = load i64, ptr %i.be, align 8, !noundef !177
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 5144 ; 3 uses
  %i.bh = tail call { i64, i32 } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time3now(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg) #52 ; 2 uses
  %i.bi = extractvalue { i64, i32 } %i.bh, 0
  %i.bj = extractvalue { i64, i32 } %i.bh, 1
  %i.bk = tail call { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.bi, i32 noundef %i.bj, i64 noundef %i.bf, i32 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2014) #52 ; 2 uses
  %i.bl = extractvalue { i64, i32 } %i.bk, 0      ; 2 uses
  %i.bm = extractvalue { i64, i32 } %i.bk, 1      ; 2 uses
  store i8 1, ptr %i.e, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 5128 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !noundef !177
  %.not114 = icmp eq ptr %i.bo, null
  br i1 %.not114, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time5reset(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bn, i64 noundef %i.bl, i32 noundef %i.bm) #52
  br label %bb.c

bb.s:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 5136 ; 2 uses
  %i.bq = tail call { ptr, ptr } @_RNvMs_NtNtCsaI3lGUjttVO_5hyper6common4timeNtB4_4Time11sleep_until(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg, i64 noundef %i.bl, i32 noundef %i.bm) #52 ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bq, 0      ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.bq, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bs) ]
  %.val118 = load ptr, ptr %i.bn, align 8, !noundef !177 ; 3 uses
  %.val119 = load ptr, ptr %i.bp, align 16        ; 4 uses
  %i.bt = icmp eq ptr %.val118, null
  br i1 %i.bt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val119) ]
  %i.bu = load ptr, ptr %.val119, align 8, !invariant.load !177 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void %i.bu(ptr noundef nonnull %.val118) #60, !inline_history !79
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.val119, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !179, !invariant.load !177 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %.val119, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !range !183, !invariant.load !177
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val118, i64 noundef %i.bw, i64 noundef range(i64 1, -9223372036854775807) %i.bz) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.s, %bb.v, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  store ptr %i.br, ptr %i.bn, align 8
  store ptr %i.bs, ptr %i.bp, align 16
  br label %bb.c

.preheader.i.i:                                   ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread
  %i.ca = load ptr, ptr %i.t, align 16, !alias.scope !81450, !nonnull !177, !noundef !177
  br label %bb.w

_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.lcssa8.i.i = phi i64 [ %.sroa.0.04.i.i, %bb.w ], [ %i.ay, %bb.x ]
  call void @_RNvMs_NtCsknai52m1gBp_5bytes9bytes_mutNtB4_8BytesMut17advance_unchecked(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %.sroa.0.0.lcssa8.i.i) #52, !noalias !81448
  %.val3.i.pre.pre.i = load i64, ptr %i.v, align 8, !alias.scope !81446
  br label %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB14_3net11http_stream15ProxyHttpStreamNtNtNtNtB12_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i

bb.w:                                             ; preds = %bb.x, %.preheader.i.i
  %.sroa.0.04.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.cd, %bb.x ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.0.04.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !81451, !noundef !177
  switch i8 %i.cc, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i [
    i8 13, label %bb.x
    i8 10, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.cd = add nuw i64 %.sroa.0.04.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cd, %i.ay
  br i1 %exitcond.not.i.i, label %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i, label %bb.w

_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB14_3net11http_stream15ProxyHttpStreamNtNtNtNtB12_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread
  %.val3.i.pre.i = phi i64 [ 0, %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit.thread ], [ %.val3.i.pre.pre.i, %_RNvXs1_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.11.1.ph, i64 16
  %i.cf = load i8, ptr %i.ce, align 8, !range !187, !alias.scope !81447, !noundef !177
  %i.cg = icmp eq i8 %i.cf, 0
  %i.ch = icmp ne i64 %.val3.i.pre.i, 0
  %or.cond.i = or i1 %i.ax, %i.ch
  %or.cond20.i = select i1 %i.cg, i1 true, i1 %or.cond.i
  br i1 %or.cond20.i, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB14_3net11http_stream15ProxyHttpStreamNtNtNtNtB12_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !81452)
  call void @llvm.experimental.noalias.scope.decl(metadata !81453)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 5048
  %i.cj = load i64, ptr %i.ci, align 8, !range !216, !alias.scope !81454, !noundef !177 ; 2 uses
  %i.ck = icmp ne i64 %i.cj, -9223372036854775805
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp eq i64 %i.cj, -9223372036854775806
  %i.cm = icmp ugt i64 %.val3.i.pre.i, 23
  %or.cond.i.i = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond.i.i, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14on_parse_errorCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.y
  %.val2.i.i = load ptr, ptr %i.t, align 16, !alias.scope !81454, !nonnull !177, !noundef !177 ; 2 uses
  %i.cn = load i128, ptr %.val2.i.i, align 1
  %i.co = xor i128 %i.cn, 13360757032698011774056258059647930960
  %i.cp = getelementptr i8, ptr %.val2.i.i, i64 16
  %i.cq = load i64, ptr %i.cp, align 1
  %i.cr = zext i64 %i.cq to i128
  %i.cs = xor i128 %i.cr, 724246167324658189
  %i.ct = or i128 %i.co, %i.cs
  %i.cu = icmp ne i128 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.z, label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14on_parse_errorCsgZAIVb0XKpv_9ssservice.exit.i

bb.z:                                             ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.cx = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error14new_version_h2() #52, !noalias !81455
  %.val.i.i.i.i = load ptr, ptr %.sroa.11.1.ph, align 8, !alias.scope !81456, !noalias !81457, !noundef !177 ; 3 uses
  %i.cy = getelementptr i8, ptr %.sroa.11.1.ph, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !81456, !noalias !81457 ; 4 uses
  %i.cz = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.cz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.da = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !177, !noalias !81458 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void %i.da(ptr noundef nonnull %.val.i.i.i.i) #60, !noalias !81458, !inline_history !81379
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !range !179, !invariant.load !177, !noalias !81458 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.df = load i64, ptr %i.de, align 8, !range !183, !invariant.load !177, !noalias !81458
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) %i.df) #52, !noalias !81458
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.ac, %bb.z
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.11.1.ph, i64 noundef 24, i64 noundef 8) #52, !noalias !81459
  br label %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14on_parse_errorCsgZAIVb0XKpv_9ssservice.exit.i

bb.ad:                                            ; preds = %_RNvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB4_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB14_3net11http_stream15ProxyHttpStreamNtNtNtNtB12_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB6_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE21consume_leading_linesCsgZAIVb0XKpv_9ssservice.exit.i
  call void @_RNvMs5_NtNtNtCsaI3lGUjttVO_5hyper5proto2h14connNtB5_5State11close_write(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %i.d) #52, !noalias !81448
  store i64 -2, ptr %0, align 8, !alias.scope !81445
  %.val.i.i.i = load ptr, ptr %.sroa.11.1.ph, align 8, !alias.scope !81447, !noalias !81460, !noundef !177 ; 3 uses
  %i.dg = getelementptr i8, ptr %.sroa.11.1.ph, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !81447, !noalias !81460 ; 4 uses
  %i.dh = icmp eq ptr %.val.i.i.i, null
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.di = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !177, !noalias !81461 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void %i.di(ptr noundef nonnull %.val.i.i.i) #60, !noalias !81461, !inline_history !81382
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !179, !invariant.load !177, !noalias !81461 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !183, !invariant.load !177, !noalias !81461
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) %i.dn) #52, !noalias !81461
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.ag, %bb.ad
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.11.1.ph, i64 noundef 24, i64 noundef 8) #52, !noalias !81462
  br label %_RINvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB3_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB11_3net11http_stream15ProxyHttpStreamNtNtNtNtBZ_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB5_4role6ClientE18on_read_head_errorTINtB7_11MessageHeadNtNtCs7ewmRfXve8r_4http6status10StatusCodeENtNtNtB9_4body6length13DecodedLengthNtB5_5WantsEECsgZAIVb0XKpv_9ssservice.exit

_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE14on_parse_errorCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i, %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i, %bb.y
  %.sroa.0.0.i.i = phi ptr [ %i.cx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaI3lGUjttVO_5hyper5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.11.1.ph, %bb.y ], [ %.sroa.11.1.ph, %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB10_3net11http_stream15ProxyHttpStreamNtNtNtNtBY_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ClientE13has_h2_prefixCsgZAIVb0XKpv_9ssservice.exit.i.i ]
  store i64 -1, ptr %0, align 8, !alias.scope !81445
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !81445
  br label %_RINvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB3_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB11_3net11http_stream15ProxyHttpStreamNtNtNtNtBZ_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB5_4role6ClientE18on_read_head_errorTINtB7_11MessageHeadNtNtCs7ewmRfXve8r_4http6status10StatusCodeENtNtNtB9_4body6length13DecodedLengthNtB5_5WantsEECsgZAIVb0XKpv_9ssservice.exit

bb.ah:                                            ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val117) ]
  %i.do = load ptr, ptr %.val117, align 8, !invariant.load !177 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i122, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void %i.do(ptr noundef nonnull %.val) #60, !inline_history !79
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %.val117, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !range !179, !invariant.load !177 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123: ; preds = %bb.aj
  %i.ds = getelementptr inbounds nuw i8, ptr %.val117, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !range !183, !invariant.load !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) %i.dt) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124: ; preds = %_RINvMs_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8BufferedINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoINtNtNtB15_3net11http_stream15ProxyHttpStreamNtNtNtNtB13_3net3tcp17auto_proxy_stream21AutoProxyClientStreamEEINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE5parseNtNtB7_4role6ClientECsgZAIVb0XKpv_9ssservice.exit, %bb.aj, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i123
  store ptr null, ptr %i.bb, align 8
  store i8 0, ptr %i.q, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !81463)
  %i.du = load ptr, ptr %i.s, align 8, !alias.scope !81463, !noundef !177 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaI3lGUjttVO_5hyper3ext13informational15OnInformationalEECsgZAIVb0XKpv_9ssservice.exit, label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_3pin3PinINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtNtCsaI3lGUjttVO_5hyper2rt5timer5Sleepp6OutputuEL_EEEECsgZAIVb0XKpv_9ssservice.exit124
  %i.dw = atomicrmw add ptr %i.du, i64 -1 release, align 8, !noalias !81464
end_hunk_9
begin_hunk_10_@_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB2_10DispatcherINtB2_6ServerINtNtNtB8_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1X_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtB8_4body8incoming8IncomingEB4z_EINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB8_5error5ErrorEINtNtB1Z_8tokio_rt7TokioIoB3F_ENtNtB4_4role6ServerE10poll_writeCsgZAIVb0XKpv_9ssservice:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !83608
  store i8 %.sroa.430.0.copyload.i.i, ptr %i.ap, align 1, !noalias !83608
  store i8 %.sroa.533.0.copyload.i.i, ptr %i.gc, align 1, !noalias !83608
  %i.st = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !83608 ; 2 uses
  %i.su = icmp ult i64 %i.st, 6
  call void @llvm.assume(i1 %i.su)
  %.not444.i.i = icmp eq i64 %i.st, 0
  br i1 %.not444.i.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dv, %bb.dt
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_service16make_bad_request(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ae) #52, !noalias !83609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !83608
  br label %bb.dm

bb.dv:                                            ; preds = %bb.dt
  %i.sv = getelementptr inbounds nuw i8, ptr %.val107, i64 672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !83608
  store ptr %i.sv, ptr %i.ao, align 8, !noalias !83608
  store ptr @_RNvXs5_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4378.0..sroa_idx.i.i, align 8, !noalias !83608
  store ptr %i.ap, ptr %i.gd, align 8, !noalias !83608
  store ptr @_RNvXs_NtCs7ewmRfXve8r_4http5errorNtB4_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4380.0..sroa_idx.i.i, align 8, !noalias !83608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !83608
  store ptr @801, ptr %i.an, align 8, !noalias !83608
  store i64 46, ptr %i.ge, align 8, !noalias !83608
  store ptr @801, ptr %i.gf, align 8, !noalias !83608
  store i64 46, ptr %i.gg, align 8, !noalias !83608
  store ptr @1069, ptr %i.gh, align 8, !noalias !83608
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull @1067, ptr noundef nonnull %i.ao, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.an) #52, !noalias !83609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !83608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !83608
  br label %bb.du

bb.dw:                                            ; preds = %bb.cq
  %i.sw = load atomic i64, ptr @_RNvCsJovr8ELaM0_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !83608 ; 2 uses
  %i.sx = icmp ult i64 %i.sw, 6
  call void @llvm.assume(i1 %i.sx)
  %.not443.i.i = icmp eq i64 %i.sw, 0
  br i1 %.not443.i.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  call void @_RNvNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_service16make_bad_request(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.ae) #52, !noalias !83609
  br label %bb.dm

bb.dy:                                            ; preds = %bb.dw
  %i.sy = getelementptr inbounds nuw i8, ptr %.val107, i64 672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !83608
  store ptr %i.sy, ptr %i.am, align 8, !noalias !83608
  store ptr @_RNvXs5_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4384.0..sroa_idx.i.i, align 8, !noalias !83608
  store ptr %i.a, ptr %i.fx, align 8, !noalias !83608
  store ptr @_RNvXsa_NtNtCs7ewmRfXve8r_4http6header5valueNtB5_18InvalidHeaderValueNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4386.0..sroa_idx.i.i, align 8, !noalias !83608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !83608
  store ptr @801, ptr %i.al, align 8, !noalias !83608
  store i64 46, ptr %i.fy, align 8, !noalias !83608
  store ptr @801, ptr %i.fz, align 8, !noalias !83608
  store i64 46, ptr %i.ga, align 8, !noalias !83608
  store ptr @1070, ptr %i.gb, align 8, !noalias !83608
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api3loguNtB2_12GlobalLoggerECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull @1067, ptr noundef nonnull %i.am, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al) #52, !noalias !83609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !83608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !83608
  br label %bb.dx

bb.dz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http6method6MethodECsgZAIVb0XKpv_9ssservice.exit224.i.i
  %i.sz = getelementptr inbounds nuw i8, ptr %.val107, i64 672
  call void @llvm.experimental.noalias.scope.decl(metadata !83712)
  %i.ta = load i16, ptr %i.sz, align 16, !range !178, !alias.scope !83712, !noalias !83608, !noundef !177
  %i.tb = icmp eq i16 %i.ta, 0
  br i1 %i.tb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit236.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.tc = getelementptr inbounds nuw i8, ptr %.val107, i64 680
  call void @llvm.experimental.noalias.scope.decl(metadata !83713)
  call void @llvm.experimental.noalias.scope.decl(metadata !83714)
  %.val.i.i.i234.i.i = load i64, ptr %i.tc, align 8, !alias.scope !83715, !noalias !83608 ; 2 uses
  %i.td = icmp eq i64 %.val.i.i.i234.i.i, 0
  br i1 %i.td, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit236.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.te = getelementptr inbounds nuw i8, ptr %.val107, i64 688
  %.val1.i.i.i235.i.i = load ptr, ptr %i.te, align 16, !alias.scope !83715, !noalias !83608, !nonnull !177, !noundef !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i235.i.i, i64 noundef %.val.i.i.i234.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !83716
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit236.i.i

bb.ec:                                            ; preds = %bb.ed, %bb.be
  store i8 0, ptr %i.nl, align 2, !noalias !83608
  %i.tf = getelementptr inbounds nuw i8, ptr %.val107, i64 715 ; 2 uses
  %i.tg = load i8, ptr %i.tf, align 1, !range !180, !noalias !83608, !noundef !177
  %i.th = trunc nuw i8 %i.tg to i1
  br i1 %i.th, label %bb.eh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.ed:                                            ; preds = %bb.be
  %i.ti = getelementptr inbounds nuw i8, ptr %.val107, i64 408
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http7request5PartsECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.ti) #52, !noalias !83609
  %i.tj = getelementptr inbounds nuw i8, ptr %.val107, i64 632
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.tj) #52, !noalias !83609
  br label %bb.ec

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.ei, %bb.eh, %bb.ec
  %i.tk = getelementptr inbounds nuw i8, ptr %.val107, i64 384 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83717)
  call void @llvm.experimental.noalias.scope.decl(metadata !83718)
  call void @llvm.experimental.noalias.scope.decl(metadata !83719)
  %i.tl = load ptr, ptr %i.tk, align 16, !alias.scope !83720, !noalias !83608, !nonnull !177, !noundef !177
  %i.tm = atomicrmw add ptr %i.tl, i64 -1 release, align 8, !noalias !83721
  %i.tn = icmp eq i64 %i.tm, 1
  br i1 %i.tn, label %bb.ee, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit237.i.i

bb.ee:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsczhfDQ1qNkX_5tokio4sync5mutex5MutexINtCshXcoQFZsaxY_14lru_time_cache8LruCacheNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressINtNtNtB7_11collections9vec_deque8VecDequeTINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client14HttpConnectionNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingENtNtCs5Xr050g3D4S_3std4time7InstantEEEEE9drop_slowB3M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.tk) #59, !noalias !83609
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit237.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit237.i.i: ; preds = %bb.ee, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.to = getelementptr inbounds nuw i8, ptr %.val107, i64 392 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83722)
  call void @llvm.experimental.noalias.scope.decl(metadata !83723)
  call void @llvm.experimental.noalias.scope.decl(metadata !83724)
  %i.tp = load ptr, ptr %i.to, align 8, !alias.scope !83725, !noalias !83608, !nonnull !177, !noundef !177
  %i.tq = atomicrmw add ptr %i.tp, i64 -1 release, align 8, !noalias !83726
  %i.tr = icmp eq i64 %i.tq, 1
  br i1 %i.tr, label %bb.ef, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancer12PingBalancerECsgZAIVb0XKpv_9ssservice.exit238.i.i

bb.ef:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit237.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancer17PingBalancerInnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.to) #59, !noalias !83609
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancer12PingBalancerECsgZAIVb0XKpv_9ssservice.exit238.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancer12PingBalancerECsgZAIVb0XKpv_9ssservice.exit238.i.i: ; preds = %bb.ef, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http11http_client10HttpClientNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEECsgZAIVb0XKpv_9ssservice.exit237.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %.val107, i64 400 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83727)
  call void @llvm.experimental.noalias.scope.decl(metadata !83728)
  %i.tt = load ptr, ptr %i.ts, align 16, !alias.scope !83729, !noalias !83608, !nonnull !177, !noundef !177
  %i.tu = atomicrmw add ptr %i.tt, i64 -1 release, align 8, !noalias !83730
  %i.tv = icmp eq i64 %i.tu, 1
  br i1 %i.tv, label %bb.eg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit239.i.i

bb.eg:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancer12PingBalancerECsgZAIVb0XKpv_9ssservice.exit238.i.i
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ts) #59, !noalias !83609
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit239.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit239.i.i: ; preds = %bb.eg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local13loadbalancing13ping_balancer12PingBalancerECsgZAIVb0XKpv_9ssservice.exit238.i.i
  store i8 0, ptr %i.tf, align 1, !noalias !83608
  %.sroa.151.0.copyload.pre.i = load ptr, ptr %.sroa.151.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !83731
  %.sroa.16.0.copyload.pre.i = load ptr, ptr %.sroa.16.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !83731
  br label %_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB4_11HttpService16serve_connection0CsgZAIVb0XKpv_9ssservice.exit.i

bb.eh:                                            ; preds = %bb.ec
  %i.tw = getelementptr inbounds nuw i8, ptr %.val107, i64 376 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83732)
  call void @llvm.experimental.noalias.scope.decl(metadata !83733)
  %i.tx = load ptr, ptr %i.tw, align 8, !alias.scope !83734, !noalias !83608, !nonnull !177, !noundef !177
  %i.ty = atomicrmw add ptr %i.tx, i64 -1 release, align 8, !noalias !83735
  %i.tz = icmp eq i64 %i.ty, 1
  br i1 %i.tz, label %bb.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit.i.i

bb.ei:                                            ; preds = %bb.eh
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.tw) #59, !noalias !83609
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local7context14ServiceContextEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB4_11HttpService16serve_connection0CsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.co, %bb.bg
  %.sink466.i.ph.i = phi i8 [ 3, %bb.bg ], [ 4, %bb.co ]
  store i8 %.sink466.i.ph.i, ptr %i.iu, align 8, !noalias !83608
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10339.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11340.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !83607
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  br label %_RNvXs6_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ServerINtNtNtBb_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1I_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtBb_4body8incoming8IncomingEB4k_ENtB5_8Dispatch8poll_msgCsgZAIVb0XKpv_9ssservice.exit.thread

_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB4_11HttpService16serve_connection0CsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit239.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.16.0.copyload.i = phi ptr [ @803, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.16.0.copyload.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit239.i.i ] ; 7 uses
  %.sroa.151.0.copyload.i = phi ptr [ %i.ra, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit.i.i ], [ %.sroa.151.0.copyload.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6config14HttpAuthConfigEECsgZAIVb0XKpv_9ssservice.exit239.i.i ] ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !83731 ; 3 uses
  %.sroa.9.0.copyload.i = load ptr, ptr %i.go, align 8, !noalias !83731 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.11.0..sroa_idx.i, i64 80, i1 false), !noalias !83731
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !83731
  %.sroa.13.0.copyload.i = load i16, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !83731
  %.sroa.14.0.copyload.i = load i8, ptr %.sroa.14.0..sroa_idx.i, align 2, !noalias !83731
  store i8 1, ptr %i.iu, align 8, !noalias !83608
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8334.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10339.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11340.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !83607
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  switch i64 %.sroa.0.0.copyload.i, label %_RNvXs6_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ServerINtNtNtBb_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1I_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtBb_4body8incoming8IncomingEB4k_ENtB5_8Dispatch8poll_msgCsgZAIVb0XKpv_9ssservice.exit [
    i64 -2, label %_RNvXs6_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ServerINtNtNtBb_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1I_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtBb_4body8incoming8IncomingEB4k_ENtB5_8Dispatch8poll_msgCsgZAIVb0XKpv_9ssservice.exit.thread
    i64 -1, label %bb.gp
  ]

_RNvXs6_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ServerINtNtNtBb_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1I_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtBb_4body8incoming8IncomingEB4k_ENtB5_8Dispatch8poll_msgCsgZAIVb0XKpv_9ssservice.exit.thread: ; preds = %_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB4_11HttpService16serve_connection0CsgZAIVb0XKpv_9ssservice.exit.i, %_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB4_11HttpService16serve_connection0CsgZAIVb0XKpv_9ssservice.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  br label %.loopexit

_RNvXs6_NtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB5_6ServerINtNtNtBb_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1I_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtBb_4body8incoming8IncomingEB4k_ENtB5_8Dispatch8poll_msgCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB4_11HttpService16serve_connection0CsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.11.i, i64 80, i1 false), !noalias !83736
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.151.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.16.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http12http_serviceNtB12_11HttpService16serve_connection0EECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %.val107) #52, !noalias !83737
  store i128 0, ptr %.val107, align 16, !noalias !83607
  %i.ua = icmp eq i64 %.sroa.0.0.copyload.i, -3
  br i1 %i.ua, label %.loopexit, label %bb.gu

bb.ej:                                            ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit.thread
  %i.ub = call fastcc noundef zeroext i1 @_RNvMs9_NtNtNtCsaI3lGUjttVO_5hyper5proto2h12ioINtB5_8WriteBufINtNtB7_6encode10EncodedBufNtNtCsknai52m1gBp_5bytes5bytes5BytesEE10can_bufferCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hv) #52
  br i1 %i.ub, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.uc = call fastcc { i64, ptr } @_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatchINtB2_10DispatcherINtB2_6ServerINtNtNtB8_7service4util9ServiceFnNCNCINvMs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http6serverNtB1X_21HttpConnectionHandler16serve_connectionNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamE00NtNtNtB8_4body8incoming8IncomingEB4z_EINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB8_5error5ErrorEINtNtB1Z_8tokio_rt7TokioIoB3F_ENtNtB4_4role6ServerE10poll_flushCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(704) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) #52 ; 2 uses
  %i.ud = extractvalue { i64, ptr } %i.uc, 0
  %i.ue = trunc nuw i64 %i.ud to i1
  br i1 %i.ue, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatch8OptGuardINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBK_5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit135, label %bb.em

bb.el:                                            ; preds = %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE14can_write_headCsgZAIVb0XKpv_9ssservice.exit.thread, %bb.ej
  %i.uf = load i64, ptr %i.ci, align 8, !range !216, !noundef !177 ; 2 uses
  %i.ug = icmp ne i64 %i.uf, -9223372036854775805
  call void @llvm.assume(i1 %i.ug)
  %i.uh = add i64 %i.uf, 9223372036854775806      ; 2 uses
  %i.ui = icmp ugt i64 %i.uh, 3
  %i.uj = icmp eq i64 %i.uh, 1
  %i.uk = or i1 %i.ui, %i.uj                      ; 2 uses
  br i1 %.not, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.ul = extractvalue { i64, ptr } %i.uc, 1      ; 2 uses
  %.not89 = icmp eq ptr %i.ul, null
  br i1 %.not89, label %.backedge, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatch8OptGuardINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBK_5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit135

bb.en:                                            ; preds = %bb.el
  br i1 %i.uk, label %bb.ew, label %bb.gd

bb.eo:                                            ; preds = %bb.el
  br i1 %i.uk, label %bb.ep, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatch8OptGuardINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBK_5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit135

bb.ep:                                            ; preds = %bb.eo
  %i.um = call fastcc noundef align 8 ptr @_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE8end_bodyCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(576) %0) #52 ; 2 uses
  %.not91 = icmp eq ptr %i.um, null
  br i1 %.not91, label %.backedge, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatch8OptGuardINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBK_5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit135

.thread:                                          ; preds = %bb.gg, %_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE18write_body_and_endCsgZAIVb0XKpv_9ssservice.exit, %bb.ez, %.thread236
  %.val.i.i = load ptr, ptr %i.ib, align 8, !noundef !177 ; 3 uses
  %.val1.i.i = load ptr, ptr %i.vb, align 8       ; 4 uses
  %i.un = icmp eq ptr %.val.i.i, null
  br i1 %i.un, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.eq

bb.eq:                                            ; preds = %.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.uo = load ptr, ptr %.val1.i.i, align 8, !invariant.load !177 ; 2 uses
  %.not.i.i.i.i.i.i128 = icmp eq ptr %i.uo, null
  br i1 %.not.i.i.i.i.i.i128, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void %i.uo(ptr noundef nonnull %.val.i.i) #60, !inline_history !83505
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.up = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.uq = load i64, ptr %i.up, align 8, !range !179, !invariant.load !177 ; 2 uses
  %i.ur = icmp eq i64 %i.uq, 0
  br i1 %i.ur, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i129

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i129: ; preds = %bb.es
  %i.us = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ut = load i64, ptr %i.us, align 8, !range !183, !invariant.load !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.uq, i64 noundef range(i64 1, -9223372036854775807) %i.ut) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i129, %bb.es, %.thread
  store ptr null, ptr %i.ib, align 8
  br label %.backedge

.loopexit250:                                     ; preds = %bb.gg, %bb.ez, %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.13.1 = phi ptr [ %i.vh, %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsgZAIVb0XKpv_9ssservice.exit ], [ %i.yl, %bb.gg ], [ %i.vg, %bb.ez ]
  %.val.i.i130 = load ptr, ptr %i.ib, align 8, !noundef !177 ; 3 uses
  %.val1.i.i131 = load ptr, ptr %i.vb, align 8    ; 4 uses
  %i.uu = icmp eq ptr %.val.i.i130, null
  br i1 %i.uu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i134, label %bb.et

bb.et:                                            ; preds = %.loopexit250
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i131) ]
  %i.uv = load ptr, ptr %.val1.i.i131, align 8, !invariant.load !177 ; 2 uses
  %.not.i.i.i.i.i.i132 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i.i.i.i.i132, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  call void %i.uv(ptr noundef nonnull %.val.i.i130) #60, !inline_history !83505
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %i.uw = getelementptr inbounds nuw i8, ptr %.val1.i.i131, i64 8
  %i.ux = load i64, ptr %i.uw, align 8, !range !179, !invariant.load !177 ; 2 uses
  %i.uy = icmp eq i64 %i.ux, 0
  br i1 %i.uy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i134, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i133

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i133: ; preds = %bb.ev
  %i.uz = getelementptr inbounds nuw i8, ptr %.val1.i.i131, i64 16
  %i.va = load i64, ptr %i.uz, align 8, !range !183, !invariant.load !177
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i130, i64 noundef %i.ux, i64 noundef range(i64 1, -9223372036854775807) %i.va) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i134

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtCsaI3lGUjttVO_5hyper5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i134: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i133, %bb.ev, %.loopexit250
  store ptr null, ptr %i.ib, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatch8OptGuardINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBK_5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit135

bb.ew:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.vb = getelementptr i8, ptr %i.ib, i64 8      ; 4 uses
  %.val116 = load ptr, ptr %i.vb, align 8, !nonnull !177, !align !185, !noundef !177
  %i.vc = getelementptr inbounds nuw i8, ptr %.val116, i64 24
  %i.vd = load ptr, ptr %i.vc, align 8, !invariant.load !177, !noalias !83738, !nonnull !177
  call void %i.vd(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.cc, ptr noundef nonnull %i.ic, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) #60, !inline_history !83509
  %i.ve = load i64, ptr %i.cc, align 8, !range !299, !noundef !177 ; 3 uses
  %i.vf = icmp eq i64 %i.ve, 3
  br i1 %i.vf, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsaI3lGUjttVO_5hyper5proto2h18dispatch8OptGuardINtNtNtCs9bnayhMRHjK_14http_body_util11combinators8box_body7BoxBodyNtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtBK_5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit135

bb.ey:                                            ; preds = %bb.ew
  %.sroa.3.sroa.042.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx38, align 8 ; 9 uses
  %.sroa.3.sroa.243.sroa.0.0.copyload = load ptr, ptr %.sroa.3.sroa.243.0..sroa.3.0..sroa_idx38.sroa_idx, align 8 ; 5 uses
  %.sroa.3.sroa.243.sroa.2.0.copyload = load i64, ptr %.sroa.3.sroa.243.sroa.2.0..sroa.3.sroa.243.0..sroa.3.0..sroa_idx38.sroa_idx.sroa_idx, align 8 ; 7 uses
  %.sroa.3.sroa.243.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.243.sroa.3.0..sroa.3.sroa.243.0..sroa.3.0..sroa_idx38.sroa_idx.sroa_idx, align 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.243.sroa.4, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.243.sroa.4.0..sroa.3.sroa.243.0..sroa.3.0..sroa_idx38.sroa_idx.sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  switch i64 %i.ve, label %bb.ff [
    i64 -3, label %bb.ez
    i64 -2, label %bb.fa
    i64 -1, label %bb.fr
  ]

bb.ez:                                            ; preds = %bb.ey
  %i.vg = call fastcc noundef align 8 ptr @_RNvMNtNtNtCsaI3lGUjttVO_5hyper5proto2h14connINtB2_4ConnINtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local4http8tokio_rt7TokioIoNtNtNtNtCsczhfDQ1qNkX_5tokio3net3tcp6stream9TcpStreamENtNtCsknai52m1gBp_5bytes5bytes5BytesNtNtB4_4role6ServerE8end_bodyCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(576) %0) #52 ; 2 uses
  %.not93 = icmp eq ptr %i.vg, null
  br i1 %.not93, label %.thread, label %.loopexit250

bb.fa:                                            ; preds = %bb.ey
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.sroa.042.0.copyload) ]
  %i.vh = call noundef nonnull align 8 ptr @_RNvMNtCsaI3lGUjttVO_5hyper5errorNtB2_5Error8new_user(i8 noundef 0) #52 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83739)
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !83740
  %i.vi = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !83740 ; 3 uses
  %i.vj = icmp eq ptr %i.vi, null
  br i1 %i.vj, label %bb.fb, label %_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsgZAIVb0XKpv_9ssservice.exit.i, !prof !182

bb.fb:                                            ; preds = %bb.fa
  call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #61, !noalias !83740
  unreachable

_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.fa
  store ptr %.sroa.3.sroa.042.0.copyload, ptr %i.vi, align 8, !noalias !83740
  %.val.i = load ptr, ptr %i.vh, align 8, !alias.scope !83739, !noundef !177 ; 3 uses
  %i.vk = getelementptr i8, ptr %i.vh, i64 8      ; 2 uses
  %.val1.i = load ptr, ptr %i.vk, align 8, !alias.scope !83739 ; 4 uses
  %i.vl = icmp eq ptr %.val.i, null
  br i1 %i.vl, label %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsgZAIVb0XKpv_9ssservice.exit, label %bb.fc

bb.fc:                                            ; preds = %_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.vm = load ptr, ptr %.val1.i, align 8, !invariant.load !177, !noalias !83739 ; 2 uses
  %.not.i.i.i136 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i.i136, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void %i.vm(ptr noundef nonnull %.val.i) #60, !noalias !83739, !inline_history !152
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %i.vn = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.vo = load i64, ptr %i.vn, align 8, !range !179, !invariant.load !177, !noalias !83739 ; 2 uses
  %i.vp = icmp eq i64 %i.vo, 0
  br i1 %i.vp, label %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.fe
  %i.vq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.vr = load i64, ptr %i.vq, align 8, !range !183, !invariant.load !177, !noalias !83739
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.vo, i64 noundef range(i64 1, -9223372036854775807) %i.vr) #52, !noalias !83739
  br label %_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsgZAIVb0XKpv_9ssservice.exit

_RINvMNtCsaI3lGUjttVO_5hyper5errorNtB3_5Error4withBv_ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvXs1_NtCsf3Ta7LF998c_4core7convertNtNtCsaI3lGUjttVO_5hyper5error5ErrorINtB5_4IntoINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB2e_4SyncEL_EE4intoCsgZAIVb0XKpv_9ssservice.exit.i, %bb.fe, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  store ptr %i.vi, ptr %i.vh, align 8, !alias.scope !83739
  store ptr @3515, ptr %i.vk, align 8, !alias.scope !83739
  br label %.loopexit250

bb.ff:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.366.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.3.sroa.243.sroa.4, i64 56, i1 false)
  store i64 %i.ve, ptr %i.ca, align 8
  store ptr %.sroa.3.sroa.042.0.copyload, ptr %.sroa.366.sroa.4.0..sroa_idx, align 8
  store ptr %.sroa.3.sroa.243.sroa.0.0.copyload, ptr %.sroa.366.sroa.5.0..sroa_idx, align 8
  store i64 %.sroa.3.sroa.243.sroa.2.0.copyload, ptr %.sroa.366.sroa.6.0..sroa_idx, align 8
  store ptr %.sroa.3.sroa.243.sroa.3.0.copyload, ptr %.sroa.366.sroa.7.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !83741)
  %i.vs = load i8, ptr %i.hw, align 2, !range !180, !alias.scope !83741
  %i.vt = trunc nuw i8 %i.vs to i1
  br i1 %i.vt, label %bb.fg, label %bb.fh
end_hunk_10
begin_hunk_11_@_RNvMs6_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_12TrySendErrorINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEE10into_errorCsgZAIVb0XKpv_9ssservice:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !89796, !nonnull !177, !noundef !177
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !89796
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret ptr %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs6_NtNtCsaI3lGUjttVO_5hyper6client8dispatchINtB5_12TrySendErrorINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtB9_4body8incoming8IncomingEE10into_errorCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(272) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !177, !align !185, !noundef !177
  %i.c = load i64, ptr %0, align 8, !range !234, !alias.scope !89799, !noundef !177
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs7ewmRfXve8r_4http7request5PartsECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %0) #52
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7ewmRfXve8r_4http7request7RequestNtNtNtCsaI3lGUjttVO_5hyper4body8incoming8IncomingEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs6_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE7optionsCsgZAIVb0XKpv_9ssservice(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp ugt i64 %.8.val, 13
  br i1 %i.a, label %_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 12, i64 noundef 14, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2244) #62
  unreachable

_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.b, align 1, !alias.scope !89802
  %i.c = trunc i16 %.sroa.02.0.copyload.i.i to i8 ; 2 uses
  %i.d = lshr i8 %i.c, 2
  %i.e = and i8 %i.d, 60
  %i.f = zext nneg i8 %i.e to i64                 ; 3 uses
  %i.g = icmp ult i8 %i.c, 80
  %.not = icmp ult i64 %.8.val, %i.f
  %or.cond = select i1 %i.g, i1 true, i1 %.not, !prof !206
  br i1 %or.cond, label %bb.d, label %bb.c, !prof !206

bb.c:                                             ; preds = %_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit
  %i.h = add nsw i64 %i.f, -20
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 20
  %i.j = insertvalue { ptr, i64 } poison, ptr %i.i, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %i.h, 1
  ret { ptr, i64 } %i.k

bb.d:                                             ; preds = %_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 20, i64 noundef %i.f, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2264) #62
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc i64 @_RNvMs6_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE7payloadCsgZAIVb0XKpv_9ssservice(ptr %.0.val, i64 %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp ugt i64 %.8.val, 13
  br i1 %i.a, label %_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit, label %bb.b, !prof !191

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 12, i64 noundef 14, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2244) #62
  unreachable

_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 12
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.b, align 1, !alias.scope !89805
  %i.c = lshr i16 %.sroa.02.0.copyload.i.i, 2
  %i.d = and i16 %i.c, 60
  %i.e = zext nneg i16 %i.d to i64                ; 3 uses
  %i.f = icmp ult i64 %.8.val, %i.e
  br i1 %i.f, label %bb.d, label %bb.c, !prof !186

bb.c:                                             ; preds = %_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit
  %i.g = sub nuw nsw i64 %.8.val, %i.e
  ret i64 %i.g

bb.d:                                             ; preds = %_RNvMs5_NtNtCsgNLA4kpd9RZ_7smoltcp4wire3tcpINtB5_6PacketRShE10header_lenCsgZAIVb0XKpv_9ssservice.exit
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.e, i64 noundef %.8.val, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2265) #62
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE19process_new_packetsCsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %3) unnamed_addr #0 {
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
  call fastcc void @_RNvXsj_NtCsb28OZjLZAOu_6rustls5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ai) #60
  call void @llvm.experimental.noalias.scope.decl(metadata !89874)
  %i.ak = load i8, ptr %i.aj, align 8, !range !244, !alias.scope !89874, !noundef !177
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !alias.scope !89874 ; 4 uses
  %.val1.i = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !89874, !nonnull !177, !align !185, !noundef !177 ; 3 uses
  %i.am = load ptr, ptr %.val1.i, align 8, !invariant.load !177, !noalias !89874 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void %i.am(ptr noundef nonnull %.val.i) #60, !noalias !89874, !inline_history !89808
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !179, !invariant.load !177, !noalias !89874 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !183, !invariant.load !177, !noalias !89874
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %i.ar) #52, !noalias !89874
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsb28OZjLZAOu_6rustls5error5ErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aj) #52
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1C_6client11client_conn20ClientConnectionDataEEL_ENtNtB1C_5error5ErrorEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.e, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDINtNtCsb28OZjLZAOu_6rustls12common_state5StateNtNtNtB1g_6client11client_conn20ClientConnectionDataEEL_EECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.63.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 840 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 864
  %.val26 = load i64, ptr %i.at, align 8, !noundef !177 ; 2 uses
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
  %i.db = call { ptr, i64 } @_RNvMs2_NtNtNtCsb28OZjLZAOu_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer10filled_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #52 ; 2 uses
  %i.dc = extractvalue { ptr, i64 } %i.db, 0      ; 9 uses
  %i.dd = extractvalue { ptr, i64 } %i.db, 1      ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !89875)
  call void @llvm.experimental.noalias.scope.decl(metadata !89876)
  %i.de = call noundef zeroext i1 @_RNvMNtNtNtCsb28OZjLZAOu_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer17has_message_ready(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as) #52, !noalias !89877
  br i1 %i.de, label %bb.ak, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !89878)
  call void @llvm.experimental.noalias.scope.decl(metadata !89879)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !89880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !89880
  %i.df = load i16, ptr %i.av, align 8, !range !342, !alias.scope !89881, !noundef !177
  %.not95.i.i = icmp eq i16 %i.df, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !89882
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dd
  store ptr %i.dc, ptr %i.y, align 8, !noalias !89882
  store ptr %i.dg, ptr %i.aw, align 8, !noalias !89882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !89882
  %i.dh = icmp ugt i64 %.promoted, %i.dd
  br i1 %i.dh, label %._crit_edge.i.i, label %.lr.ph.i.i, !prof !343

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.di = ptrtoint ptr %i.dc to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.ag, %.lr.ph.i.i
  %i.dj = phi i64 [ %.promoted, %.lr.ph.i.i ], [ %i.ex, %bb.ag ] ; 7 uses
  %i.dk = sub nuw nsw i64 %i.dd, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.dj
  store ptr %i.dl, ptr %i.x, align 8, !noalias !89882
  store i64 %i.dk, ptr %i.ax, align 8, !noalias !89882
  store i64 0, ptr %i.ay, align 8, !noalias !89882
  br i1 %.not95.i.i, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.j, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !89882
  call void @_RNvXs_NtNtCsb28OZjLZAOu_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #52, !noalias !89883
  %i.dm = load i8, ptr %i.w, align 8, !range !89884, !noalias !89882, !noundef !177 ; 2 uses
  switch i8 %i.dm, label %.split82.us.i.i [
    i8 -2, label %.split84.us.i.i
    i8 -1, label %bb.k
  ]

bb.k:                                             ; preds = %.split.us.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !89882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !89882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx.i.i, i64 24, i1 false), !noalias !89882
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %i.dn = load i8, ptr %i.ba, align 8, !range !232, !noalias !89882, !noundef !177
  %cond.i.i = icmp eq i8 %i.dn, 0
  br i1 %cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.do = load i64, ptr %i.bd, align 8, !alias.scope !89881, !noundef !177 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 230584300921369396
  call void @llvm.assume(i1 %i.dp)
  %.not.us.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.us.i.i, label %.split86.us.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @_RNvMNtCsb28OZjLZAOu_6rustls12record_layerNtB2_11RecordLayer16decrypt_incoming(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(968) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v) #52, !noalias !89883
  %i.dq = load i8, ptr %i.t, align 8, !range !244, !noalias !89882, !noundef !177
  %.not44.us.i.i = icmp eq i8 %i.dq, -1
  br i1 %.not44.us.i.i, label %bb.n, label %.split89.us.i.i

bb.n:                                             ; preds = %bb.m
  %i.dr = load i16, ptr %i.be, align 2, !range !342, !noalias !89882, !noundef !177 ; 2 uses
  %.not45.us.i.i = icmp eq i16 %i.dr, -1
  br i1 %.not45.us.i.i, label %bb.o, label %.split91.us.i.i

bb.o:                                             ; preds = %bb.n
  %i.ds = call noundef zeroext i1 @_RNvMNtNtNtCsb28OZjLZAOu_6rustls4msgs8deframer9handshakeNtB2_17HandshakeDeframer10is_aligned(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as) #52, !noalias !89883
  br i1 %i.ds, label %.split.us.i.i, label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE7deframeCsgZAIVb0XKpv_9ssservice.exit.thread52

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.ag
  %.lcssa67.i.i = phi i64 [ %i.ex, %bb.ag ], [ %.promoted, %bb.i ]
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa67.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.dd, i64 noundef range(i64 0, -9223372036854775808) %i.dd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2279) #62, !noalias !89883
  unreachable

.split.i.i:                                       ; preds = %bb.j, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !89882
  call void @_RNvXs_NtNtCsb28OZjLZAOu_6rustls4msgs8deframerNtB4_12DeframerIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #52, !noalias !89883
  %i.dt = load i8, ptr %i.w, align 8, !range !89884, !noalias !89882, !noundef !177 ; 2 uses
  switch i8 %i.dt, label %.split82.us.i.i [
    i8 -2, label %.split84.us.i.i
    i8 -1, label %bb.q
  ]

.split84.us.i.i:                                  ; preds = %.split.us.i.i, %.split.i.i
  store i64 %i.dj, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !89882
  store i16 -1, ptr %.sroa.3.0..sroa_idx.i.i, align 2
  store i8 -1, ptr %i.af, align 8
  br label %bb.p

bb.p:                                             ; preds = %.split82.us.i.i, %.split84.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RNvMs8_NtCsb28OZjLZAOu_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE7deframeCsgZAIVb0XKpv_9ssservice.exit

.split82.us.i.i:                                  ; preds = %.split.us.i.i, %.split.i.i
  %.us-phi.i.i = phi i8 [ %i.dt, %.split.i.i ], [ %i.dm, %.split.us.i.i ]
end_hunk_11
begin_hunk_12_@_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame7headers7HeadersNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame7headersNtB5_7HeadersNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame8priority16StreamDependencyNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !222, !noundef !177 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96843
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store ptr %i.d, ptr %i.a, align 8, !noalias !96843
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2980, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2981, i64 noundef 13, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2718, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2781, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2982, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2398) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96843
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame8priority8PriorityNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !222, !noundef !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96847
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !noalias !96847
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2677, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2436, i64 noundef 9, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2678, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2676) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96847
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame8settings8SettingsNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !align !222, !noundef !177
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs2dlyTE5y14r_2h25frame8settingsNtB5_8SettingsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(60) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25frame9stream_id8StreamIdNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !222, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96851
  store ptr %i.b, ptr %i.a, align 8, !noalias !96851
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2783, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2434) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96851
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25proto10connection5StateNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !177, !align !222, !noundef !177 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96855)
  %i.d = load i8, ptr %i.c, align 4, !range !198, !alias.scope !96855, !noundef !177
  switch i8 %i.d, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3466, i64 noundef 4) #52, !noalias !96855
  br label %_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96856
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.g, ptr %i.b, align 8, !noalias !96856
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3467, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1984, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2983) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96856
  br label %_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96856
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.j, ptr %i.a, align 8, !noalias !96856
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3025, i64 noundef 6, ptr noundef nonnull readonly %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1984, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2983) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96856
  br label %_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXsd_NtNtCs2dlyTE5y14r_2h25proto10connectionNtB5_5StateNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25proto5error5ErrorNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 9 uses
  %i.e = load i8, ptr %i.d, align 8, !range !198, !noalias !96859, !noundef !177
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96859
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.c, align 8, !noalias !96859
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2823, i64 noundef 5, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2433, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1984, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2983) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96859
  br label %_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96859
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.l, ptr %i.b, align 8, !noalias !96859
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2985, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2984, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1984, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2983) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96859
  br label %_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96859
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.o, ptr %i.a, align 8, !noalias !96859
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2988, i64 noundef 2, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2986, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2987) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96859
  br label %_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs5_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.i, %bb.b ], [ %i.m, %bb.c ], [ %i.p, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs2dlyTE5y14r_2h25proto5error9InitiatorNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !noundef !177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96862)
  %i.b = load i8, ptr %i.a, align 1, !range !198, !alias.scope !96862, !noundef !177 ; 2 uses
  %i.c = zext nneg i8 %i.b to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.c
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = zext nneg i8 %i.b to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.5917, i64 %i.d
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext) #52, !noalias !96862
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs7ewmRfXve8r_4http6header4name10HeaderNameNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  %i.b = tail call noundef zeroext i1 @_RNvXs4_NtNtCs7ewmRfXve8r_4http6header4nameNtB5_10HeaderNameNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCs7ewmRfXve8r_4http6header5value11HeaderValueNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCs7ewmRfXve8r_4http6header5valueNtB5_11HeaderValueNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !177, !noundef !177 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !177 ; 2 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.h = icmp samesign eq i64 %.val1, 0
  br i1 %i.h, label %_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.c, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.08.i.i, ptr %i.b, align 8, !captures !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1o_NtCsf3Ta7LF998c_4core3fmtRhNtB6_8LowerHex3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.46.0..sroa_idx.i.i, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noundef nonnull @468, ptr noundef nonnull %i.a) #52
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_10PayloadU16NtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs4base7PayloadNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCsb28OZjLZAOu_6rustls4msgs4baseNtB5_7PayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs5enums8HpkeAeadNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !align !246, !noundef !177
  %i.b = tail call noundef zeroext i1 @_RNvXs38_NtNtCsb28OZjLZAOu_6rustls4msgs5enumsNtB6_8HpkeAeadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake16EchConfigPayloadNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96866)
  %i.d = load i64, ptr %i.c, align 8, !range !189, !alias.scope !96866, !noundef !177
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96867
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.g, ptr %i.a, align 8, !noalias !96867
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2675, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2660, i64 noundef 7, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2899, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2901, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2900) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96867
  br label %_RNvXs4A_NtNtCsb28OZjLZAOu_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96867
  store ptr %i.c, ptr %i.b, align 8, !noalias !96867
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2898, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2897) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96867
  br label %_RNvXs4A_NtNtCsb28OZjLZAOu_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs4A_NtNtCsb28OZjLZAOu_6rustls4msgs9handshakeNtB6_16EchConfigPayloadNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake16UnknownExtensionNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96871
  store ptr %i.b, ptr %i.a, align 8, !noalias !96871
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2816, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2817, i64 noundef 3, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2814, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2441, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2815) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96871
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake17EchConfigContentsNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96875
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.e, ptr %i.a, align 8, !noalias !96875
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2946, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2947, i64 noundef 10, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2943, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2948, i64 noundef 19, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2781, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2949, i64 noundef 11, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2944, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2950, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2945) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96875
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake18EchConfigExtensionNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96879
  store ptr %i.b, ptr %i.a, align 8, !noalias !96879
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2675, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2902) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96879
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake20KeyExchangeAlgorithmNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !noundef !177
  %.val = load i8, ptr %i.a, align 1, !range !180, !noundef !177
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 5, i64 3
  %.1.i = select i1 %i.b, ptr @2819, ptr @2818
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i) #52
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !246, !noundef !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96883
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.c, ptr %i.a, align 8, !noalias !96883
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2933, i64 noundef 24, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2934, i64 noundef 6, ptr noundef nonnull readonly align 2 dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2931, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2935, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2932) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96883
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsb28OZjLZAOu_6rustls5error11other_error10OtherErrorNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96887
  store ptr %i.b, ptr %i.a, align 8, !noalias !96887
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2785, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2784) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96887
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsiwebgwkgVmN_10etherparse3err10value_type9ValueTypeNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !noundef !177
  %.val = load i8, ptr %i.a, align 1, !range !340, !noundef !177 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsiwebgwkgVmN_10etherparse3err10value_type9ValueTypeNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsiwebgwkgVmN_10etherparse3err10value_type9ValueTypeNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice.5914, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext) #52
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsiwebgwkgVmN_10etherparse3net14ip_number_impl8IpNumberNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !177, !noundef !177
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsiwebgwkgVmN_10etherparse3net14ip_number_implNtB5_8IpNumberNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #52
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks3net6option11ConnectOptsNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96891
  store ptr %i.b, ptr %i.a, align 8, !noalias !96891
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2915, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2509, i64 noundef 6, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2395, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2916, i64 noundef 15, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2912, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2917, i64 noundef 14, ptr noundef nonnull readonly %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2425, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2918, i64 noundef 3, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2913, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2919, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2914) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96891
  ret i1 %i.g
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks3net6option13UdpSocketOptsNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96895
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.a, align 8, !noalias !96895
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2693, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2694, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2528, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2695, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2398) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96895
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 4 uses
  %.val = load ptr, ptr %1, align 8               ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.g, align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96898)
  %i.h = load i16, ptr %i.f, align 8, !range !178, !alias.scope !96898, !noundef !177
  %i.i = trunc nuw i16 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96898
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.j, ptr %i.c, align 8, !noalias !96898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96898
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.k, ptr %i.b, align 8, !noalias !96898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96898
  store ptr %i.c, ptr %i.a, align 8, !noalias !96898
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !96898
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.l, align 8, !noalias !96898
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRtNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !96898
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.m = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @555, ptr noundef nonnull %i.a) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96898
  br label %_RNvXs4_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !96898
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.n, ptr %i.e, align 8, !noalias !96898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !96898
  store ptr %i.e, ptr %i.d, align 8, !noalias !96898
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_3net11socket_addr10SocketAddrNtB6_7Display3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !96898
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.o = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @474, ptr noundef nonnull %i.d) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !96898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !96898
  br label %_RNvXs4_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs4_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.1.in.i = phi i1 [ %i.m, %bb.b ], [ %i.o, %bb.c ]
  ret i1 %.sroa.0.1.in.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol11ListRequestNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3685, i64 noundef 11) #52
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol11PingRequestNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3751, i64 noundef 11) #52
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol11StatRequestNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96902
  store ptr %i.b, ptr %i.a, align 8, !noalias !96902
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3812, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3813, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3811) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96902
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol12ServerConfigNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [144 x i8], align 8               ; 21 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !96906
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 170
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96906
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store ptr %i.k, ptr %i.a, align 8, !noalias !96906
  store ptr %i.d, ptr %i.b, align 8, !noalias !96906
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @2841, ptr %i.l, align 8, !noalias !96906
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.m, align 8, !noalias !96906
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @2424, ptr %i.n, align 8, !noalias !96906
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.o, align 8, !noalias !96906
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @2425, ptr %i.p, align 8, !noalias !96906
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.q, align 8, !noalias !96906
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @2577, ptr %i.r, align 8, !noalias !96906
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.g, ptr %i.s, align 8, !noalias !96906
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @2425, ptr %i.t, align 8, !noalias !96906
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.h, ptr %i.u, align 8, !noalias !96906
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @2425, ptr %i.v, align 8, !noalias !96906
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.i, ptr %i.w, align 8, !noalias !96906
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @2425, ptr %i.x, align 8, !noalias !96906
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.j, ptr %i.y, align 8, !noalias !96906
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @2425, ptr %i.z, align 8, !noalias !96906
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.a, ptr %i.aa, align 8, !noalias !96906
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @3490, ptr %i.ab, align 8, !noalias !96906
  %i.ac = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2721, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @3492, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 9) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !96906
  ret i1 %i.ac
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol13RemoveRequestNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !246, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96910
  store ptr %i.b, ptr %i.a, align 8, !noalias !96910
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3608, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3491, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96910
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCslxdWNweD0x2_11shadowsocks7manager8protocol16ServerUserConfigNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96914
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %i.a, align 8, !noalias !96914
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3389, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2905, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2424, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2710, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @237) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96914
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata10openpgpkey10OPENPGPKEYNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96918
  store ptr %i.b, ptr %i.a, align 8, !noalias !96918
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2839, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2840, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2514) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96918
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata1a1ANtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !noundef !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96922
  store ptr %i.b, ptr %i.a, align 8, !noalias !96922
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3036, i64 noundef 1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3072) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96922
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata2mx2MXNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96926
  store ptr %i.b, ptr %i.a, align 8, !noalias !96926
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2842, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2843, i64 noundef 10, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2841, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2844, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @252) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96926
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3caa3CAANtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96930
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.e, ptr %i.a, align 8, !noalias !96930
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2996, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2997, i64 noundef 15, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2396, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2870, i64 noundef 14, ptr noundef nonnull readonly %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2781, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2998, i64 noundef 3, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2424, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2999, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2514) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96930
  ret i1 %i.f
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3opt10EdnsOptionNtB6_5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !177, !align !185, !noundef !177 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96934)
  %i.e = load i64, ptr %i.d, align 8, !range !269, !alias.scope !96934, !noundef !177 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !96935
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.c, align 8, !noalias !96935
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3247, i64 noundef 6, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3246) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !96935
  br label %_RNvXsI_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr5rdata3optNtB5_10EdnsOptionNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

end_hunk_12
begin_hunk_13_@_RNvXs9_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_5RulesNtNtCsf3Ta7LF998c_4core5clone5Clone5clone:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100668)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load <2 x i64>, ptr %i.r, align 8, !alias.scope !100668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100669)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !100670, !noundef !177 ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = add i64 %i.u, 1
  %i.x = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.w, i64 range(i64 8, 417) 24) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  br i1 %i.y, label %bb.i, label %bb.h, !prof !186

bb.h:                                             ; preds = %bb.g
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = add nuw i64 %i.z, 8
  %i.ab = and i64 %i.aa, -16                      ; 3 uses
  %i.ac = add i64 %i.u, 17                        ; 2 uses
  %i.ad = add i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = icmp ugt i64 %i.ad, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.ae, %i.af
  br i1 %or.cond.i.i.i.i, label %bb.i, label %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, !prof !188

_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %bb.l, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !100671
  %i.ah = tail call noundef align 16 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #52, !noalias !100671 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = tail call { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true) #52, !noalias !100671
  br label %bb.k

bb.j:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.ak = tail call { i64, i64 } @_RNvMNtCsbDKHzkXHCUM_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ad) #52, !noalias !100671
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn.i.i.i = phi { i64, i64 } [ %i.ak, %bb.j ], [ %i.aj, %bb.i ]
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0 ; 2 uses
  %.pre.i.i = add i64 %.sroa.7.0.ph.i.i.i, 17
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE17new_uninitializedCsgZAIVb0XKpv_9ssservice.exit.i.i

bb.l:                                             ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i
  %.sroa.0.0.i.i9.i.i.i.i = phi ptr [ %i.ah, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i.i.i, i64 %i.ab
  br label %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE17new_uninitializedCsgZAIVb0XKpv_9ssservice.exit.i.i

_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE17new_uninitializedCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %bb.l, %bb.k
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %bb.k ], [ %i.ac, %bb.l ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i, %bb.k ], [ %i.u, %bb.l ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.k ], [ %i.al, %bb.l ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100673)
  %i.am = load ptr, ptr %i.q, align 8, !alias.scope !100674, !nonnull !177, !noundef !177 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i, ptr nonnull align 1 %i.am, i64 %.pre-phi.i.i, i1 false), !noalias !100675
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !100674, !noundef !177 ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE17new_uninitializedCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.am, align 16, !noalias !100676
  %i.aq = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.ar = bitcast <16 x i1> %i.aq to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.at = ptrtoint ptr %i.am to i64
  br label %bb.m

bb.m:                                             ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.022.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.6.021.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.sroa.6.1.i.i.i.i, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.811.020.i.i.i.i = phi i16 [ %i.ar, %.lr.ph.i.i.i.i ], [ %i.bc, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ] ; 2 uses
  %.sroa.1012.019.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.bf, %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i ]
  %.not11.i.i.i.i.i = icmp eq i16 %.sroa.811.020.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.au = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.021.i.i.i.i, %bb.m ] ; 2 uses
  %i.av = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.022.i.i.i.i, %bb.m ]
  %.val9.i.i.i.i.i = load <16 x i8>, ptr %i.au, align 16, !noalias !100677
  %i.aw = icmp sgt <16 x i8> %.val9.i.i.i.i.i, splat (i8 -1)
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -384 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.aw to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i

_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.m
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.021.i.i.i.i, %bb.m ], [ %i.ay, %.lr.ph.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.0.022.i.i.i.i, %bb.m ], [ %i.ax, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.811.020.i.i.i.i, %bb.m ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.az = add i16 %.lcssa.i.i.i.i.i, -1
  %i.ba = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = and i16 %i.az, %.lcssa.i.i.i.i.i
  %i.bd = sub nsw i64 0, %i.bb
  %i.be = getelementptr inbounds [24 x i8], ptr %.sroa.0.1.i.i.i.i, i64 %i.bd ; 2 uses
  %i.bf = add i64 %.sroa.1012.019.i.i.i.i, -1     ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.at, %i.bg
  %.neg.i.i.i.i = sdiv exact i64 %i.bh, -24
  %i.bi = getelementptr inbounds [24 x i8], ptr %.sroa.0.0.i.i, i64 %.neg.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !100675
  %i.bj = getelementptr inbounds i8, ptr %i.be, i64 -24
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #52, !noalias !100675
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !100675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !100675
  %i.bl = icmp eq i64 %i.bf, 0
  br i1 %i.bl, label %_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i, label %bb.m

_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i: ; preds = %_RINvMsi_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE9next_implKb0_ECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i, %_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEE17new_uninitializedCsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !100674, !noundef !177
  br label %_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit

_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.f, %_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i
  %.sroa.7.0.i = phi i64 [ %i.ao, %_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ 0, %bb.f ]
  %.sroa.6.0.i = phi i64 [ %i.bn, %_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ 0, %bb.f ]
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.i.i, %_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ 0, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.i.i, %_RNvXsc_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtB5_13RawTableClone15clone_from_specCsgZAIVb0XKpv_9ssservice.exit.i.i ], [ @529, %bb.f ]
  %i.bo = extractvalue { ptr, ptr } %i.j, 0
  %i.bp = extractvalue { ptr, ptr } %i.j, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call fastcc void @_RNvXNtCsbDKHzkXHCUM_9hashbrown3mapINtB2_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl16sub_domains_tree10DomainPartNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.br, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bq) #52
  store i64 %.sroa.01.0, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.52, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.07.0, ptr %i.bs, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.58, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bo, ptr %i.bt, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bp, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.p, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.0.0.i, ptr %i.bu, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.5.0.i, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.6.0.i, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.7.0.i, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.s, ptr %.sroa.726.0..sroa_idx, align 8
  ret void

bb.n:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !198, !noundef !177 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs9_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_9InitiatorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.5917, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext) #52
  ret i1 %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCsb28OZjLZAOu_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !177, !noundef !177 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.e, align 8, !noundef !177 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 %.val3
  %i.g = icmp samesign eq i64 %.val3, 0
  br i1 %i.g, label %_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  br label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.c, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %.val2, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.08.i, ptr %i.b, align 8, !captures !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1o_NtCsf3Ta7LF998c_4core3fmtRhNtB6_8LowerHex3fmtCsgZAIVb0XKpv_9ssservice, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.h = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1, ptr noundef nonnull @468, ptr noundef nonnull %i.a) #52
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtNtCsb28OZjLZAOu_6rustls4msgs4base3hexRINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsC_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_12ResolveHostsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !198, !noundef !177 ; 2 uses
  %narrow = sub nuw nsw i8 6, %i.a
  %switch.offset = zext nneg i8 %narrow to i64
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsC_NtCs8AjStw0eGtC_16hickory_resolver6configNtB5_12ResolveHostsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load, i64 noundef %switch.offset) #52
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsF_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_16TcpRequestHeaderNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3223, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3224, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3222, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3225, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2497) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsG_NtNtCsgNLA4kpd9RZ_7smoltcp4wire2ipNtB5_8ProtocolNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !260, !noundef !177
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3226, i64 noundef 8) #52
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3227, i64 noundef 4) #52
  br label %bb.o

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3228, i64 noundef 4) #52
  br label %bb.o

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3229, i64 noundef 3) #52
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3230, i64 noundef 3) #52
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3231, i64 noundef 9) #52
  br label %bb.o

bb.h:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3232, i64 noundef 8) #52
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3233, i64 noundef 8) #52
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3234, i64 noundef 7) #52
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3235, i64 noundef 6) #52
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3236, i64 noundef 9) #52
  br label %bb.o

bb.m:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3237, i64 noundef 8) #52
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2675, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @255) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.h, %bb.g ], [ %i.i, %bb.h ], [ %i.j, %bb.i ], [ %i.k, %bb.j ], [ %i.l, %bb.k ], [ %i.m, %bb.l ], [ %i.n, %bb.m ], [ %i.p, %bb.n ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsH_NtCskLEkjrY29GY_16rustls_pki_types11server_nameNtB5_7DnsNameNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3239, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3238) #52
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
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3241, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3242, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3240, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3225, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2497) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsI_NtCsb28OZjLZAOu_6rustls5errorNtB5_18ExtendedKeyPurposeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !269, !noundef !177 ; 2 uses
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
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3243, i64 noundef 10) #52
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3244, i64 noundef 10) #52
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3221, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3245) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
end_hunk_13
begin_hunk_14_@_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame6reason6ReasonENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice:bb.a

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame7go_away6GoAwayENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3838) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame7headers11PushPromiseENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3839) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame7headers7HeadersENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3840) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame8priority8PriorityENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3841) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame8settings8SettingsENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3842) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25frame9stream_id8StreamIdENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3843) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25proto10connection5StateENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3844) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25proto5error5ErrorENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3845) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCs2dlyTE5y14r_2h25proto5error9InitiatorENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2983) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsf3Ta7LF998c_4core2io5error9ErrorKindENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3846) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtCsf3Ta7LF998c_4core3net7ip_addr6IpAddrENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2723) #60
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvXsx_NtCs1kwRxRulhfk_12tracing_core5fieldINtB5_10DebugValueRNtNtNtNtCs2dlyTE5y14r_2h25proto7streams5state5StateENtB5_5Value6recordCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !invariant.load !177, !nonnull !177
  tail call void %i.b(ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3847) #60
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
  %i.f = load i64, ptr %0, align 8, !range !226, !noundef !177 ; 2 uses
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
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3924, i64 noundef 3, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3923) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.d, align 8
  %i.l = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3926, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3925) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3928, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3927) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2439, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3929) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.a, align 8
  %i.p = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3931, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3930) #52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtCs2Z77Vc7pSLS_13hickory_proto2op6headerNtB5_11MessageTypeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !180, !noundef !177
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 8, i64 5
  %.1 = select i1 %i.b, ptr @2665, ptr @2671
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.) #52
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read10read_exactCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104418
  store ptr %.sroa.0.028.i, ptr %i.b, align 8, !noalias !104418
  store i64 %.sroa.7.026.i, ptr %i.e, align 8, !noalias !104418
  store i64 0, ptr %i.f, align 8, !noalias !104418
  store i64 %.sroa.7.026.i, ptr %i.g, align 8, !noalias !104418
  %.val.i.i = load ptr, ptr %.val, align 8, !noalias !104419, !nonnull !177, !noundef !177
  %i.i = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !104420 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 11 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104418
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !noalias !104418, !noundef !177 ; 2 uses
  %i.n = load i64, ptr %i.f, align 8, !noalias !104418, !noundef !177 ; 7 uses
  %.not7.i.i = icmp ugt i64 %i.n, %i.m
  br i1 %.not7.i.i, label %bb.e, label %bb.g, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.n, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104420
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.k to i64                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104418
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split9.i
    i64 1, label %.split8.i
  ], !prof !290

default.unreachable:                              ; preds = %bb.k, %bb.f
  unreachable

.split.i:                                         ; preds = %bb.f
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !177, !noundef !177
  %i.v = call noundef zeroext i1 %i.u(i32 noundef %i.r) #52, !inline_history !104413
  br i1 %i.v, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

.split9.i:                                        ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !291, !noundef !177
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

.split8.i:                                        ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.k, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !291, !noundef !177
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

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
  br i1 %i.ag, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104418
  %i.ah = icmp eq i64 %i.n, 0
  br i1 %i.ah, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ugt i64 %i.n, %.sroa.7.026.i
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !186

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %.sroa.7.026.i, i64 noundef %.sroa.7.026.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #62
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = sub nuw nsw i64 %.sroa.7.026.i, %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 %i.n
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split8.i, %.split9.i, %.split.i
  %.ph.i = phi ptr [ %i.k, %.split9.i ], [ %i.k, %.split8.i ], [ %i.k, %.split.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  %.sroa.4.1.i4.ph.i = phi i64 [ %i.o, %.split9.i ], [ %i.o, %.split8.i ], [ %i.o, %.split.i ], [ %.sroa.4.1.i.ph7.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104421
  %i.al = and i64 %.sroa.4.1.i4.ph.i, 3
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 1, label %bb.m
  ], !prof !230

bb.l:                                             ; preds = %bb.k
  %i.am = icmp ult ptr %.ph.i, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %.sroa.4.1.i4.ph.i, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %.ph.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.h, align 8, !alias.scope !104422, !noalias !104421
  store i8 3, ptr %i.a, align 8, !alias.scope !104422, !noalias !104421
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #52, !noalias !104423
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104421
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, %bb.j
  %.sroa.0.117.i = phi ptr [ %.sroa.0.028.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.ak, %bb.j ]
  %.sroa.7.115.i = phi i64 [ %.sroa.7.026.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aj, %bb.j ] ; 2 uses
  %i.aq = icmp eq i64 %.sroa.7.115.i, 0
  br i1 %i.aq, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.split.i, %.split9.i, %.split8.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.g, %bb.n, %bb.a
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %i.k, %.split9.i ], [ null, %bb.n ], [ %i.k, %.split.i ], [ @486, %bb.g ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.k, %.split8.i ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice(ptr %.val, ptr %.val1, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #52
  ret { i64, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read13read_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104435)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !104435, !noalias !104436, !noundef !177 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !104437, !noundef !177
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104438
  store ptr %.sroa.02.0.i.i, ptr %i.a, align 8, !noalias !104438
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i.i, ptr %i.j, align 8, !noalias !104438
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !104438
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.3.0.i.i, ptr %i.l, align 8, !noalias !104438
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !104439, !nonnull !177, !noundef !177
  %i.m = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #52, !noalias !104440 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.o to i64
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !noalias !104438, !noundef !177 ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !noalias !104438, !noundef !177 ; 3 uses
  %.not7.i.i.i = icmp ugt i64 %i.s, %i.r
  br i1 %.not7.i.i.i, label %bb.g, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit, !prof !206

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104440
  unreachable

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, %bb.e, %bb.f
  %.sroa.4.1.i.i.i = phi i64 [ 55834574851, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %.sroa.0.1.i.i.i = phi i64 [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB1A_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i ], [ 1, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104438
  %i.t = inttoptr i64 %.sroa.4.1.i.i.i to ptr
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.t, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read14read_buf_exactCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !noalias !104452, !noundef !177
  %i.e = load i64, ptr %i.c, align 8, !noalias !104452, !noundef !177 ; 2 uses
  %.not8.i = icmp eq i64 %i.d, %i.e
  br i1 %.not8.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi i64 [ %i.e, %.lr.ph.i ], [ %i.af, %.backedge.i ]
  %i.h = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #52 ; 10 uses
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
  ], !prof !230

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52, !noalias !104452
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !104452, !nonnull !177, !noundef !177
  %i.p = call noundef zeroext i1 %i.o(i32 noundef %i.l) #52, !noalias !104452, !inline_history !104443
  br i1 %i.p, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

.split6.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !291, !noalias !104452, !noundef !177
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

.split5.i:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.h, i64 31
  %i.u = load i8, ptr %i.t, align 8, !range !291, !noalias !104452, !noundef !177
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.f, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.w = lshr i64 %i.i, 32
  %i.x = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.z, label %bb.e, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.c, align 8, !noalias !104452, !noundef !177 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split6.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104453
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104454
  %i.ac = and i64 %i.i, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.f:                                             ; preds = %.split5.i
  %i.ae = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104455
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.f, align 8, !alias.scope !104456, !noalias !104455
  store i8 3, ptr %i.a, align 8, !alias.scope !104456, !noalias !104455
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #52, !noalias !104455
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104455
  %.pre.i = load i64, ptr %i.c, align 8, !noalias !104452
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, %bb.d
  %i.af = phi i64 [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !noalias !104452, !noundef !177
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.split.i, %.split6.i, %.split5.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %.backedge.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %i.h, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.h, %.split.i ], [ %i.h, %.split5.i ], [ @486, %bb.d ], [ %i.h, %.split6.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read14read_to_stringCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104461)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !104461, !noundef !177 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEECsgZAIVb0XKpv_9ssservice(ptr readonly %.val, ptr %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #52 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !104461, !nonnull !177, !noundef !177
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !104461, !noundef !177 ; 3 uses
  %i.j = sub nuw i64 %i.i, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104461
  call void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) #52, !noalias !104461
  %i.l = load i64, ptr %i.a, align 8, !range !181, !noalias !104461, !noundef !177
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104461
  %i.m = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.m)
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0ECsgZAIVb0XKpv_9ssservice.exit

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.f, 1
  %i.o = extractvalue { i64, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104461
  %i.p = trunc nuw i64 %i.o to i1
  %..i = select i1 %i.p, ptr %i.n, ptr @482
  %i.q = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0ECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.07.i = phi i64 [ %i.i, %bb.b ], [ %i.d, %bb.c ]
  %.merged.i = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.07.i, ptr %i.c, align 8, !alias.scope !104462
  ret { i64, ptr } %.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read16is_read_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB12_2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !180, !noundef !177
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !177 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !177
  %i.j = sub nuw i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.l = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.k, i64 noundef %i.j) #52 ; 0 uses
  store i8 1, ptr %i.c, align 8
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !177 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !177
  %i.q = sub nuw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104470
  store ptr %i.r, ptr %i.a, align 8, !noalias !104470
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !noalias !104470
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !104470
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.q, ptr %i.u, align 8, !noalias !104470
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %.val.i.i.i = load ptr, ptr %.val, align 8, !noalias !104471, !nonnull !177, !noundef !177
  %i.v = call { i64, ptr } @_RNvXs0_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #52, !noalias !104472 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.x to i64
  br label %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.s, align 8, !noalias !104470, !noundef !177 ; 2 uses
  %i.ab = load i64, ptr %i.t, align 8, !noalias !104470, !noundef !177 ; 4 uses
  %.not7.i.i.i = icmp ugt i64 %i.ab, %i.aa
  br i1 %.not7.i.i.i, label %bb.f, label %bb.g, !prof !206

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104472
  unreachable

_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.d, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.4.1.i.i.ph.i = phi i64 [ %i.z, %bb.d ], [ 55834574851, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104470
  %i.ac = inttoptr i64 %.sroa.4.1.i.i.ph.i to ptr
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104470
  %i.ad = load i8, ptr %i.c, align 8, !range !180, !noalias !104473, !noundef !177
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.o, align 8, !noalias !104473, !noundef !177
  %i.ag = load i64, ptr %i.m, align 8, !noalias !104473, !noundef !177
  %i.ah = sub i64 %i.af, %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %i.ah, %bb.h ], [ 0, %bb.g ]
  %.not.i.i = icmp ugt i64 %i.ab, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.j, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2266, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2268) #62, !noalias !104473
  unreachable

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.i
  %i.ai = load i64, ptr %i.m, align 8, !noalias !104473, !noundef !177
  %i.aj = add i64 %i.ai, %i.ab
  store i64 %i.aj, ptr %i.m, align 8, !noalias !104473
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtB6_5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.ac, %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtB14_2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read10read_exactCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104494
  store ptr %.sroa.0.031.i, ptr %i.b, align 8, !noalias !104494
  store i64 %.sroa.7.030.i, ptr %i.e, align 8, !noalias !104494
  store i64 0, ptr %i.f, align 8, !noalias !104494
  store i64 %.sroa.7.030.i, ptr %i.g, align 8, !noalias !104494
  %i.i = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !104495 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { i64, ptr } %i.i, 1        ; 11 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !noalias !104494, !noundef !177 ; 2 uses
  %i.n = load i64, ptr %i.f, align 8, !noalias !104494, !noundef !177 ; 6 uses
  %.not7.i.i.i.i = icmp ugt i64 %i.n, %i.m
  br i1 %.not7.i.i.i.i, label %bb.e, label %bb.f, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.n, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104495
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104494
  %.not.i6.i.i.i = icmp ugt i64 %i.n, %.sroa.7.030.i
  br i1 %.not.i6.i.i.i, label %bb.g, label %bb.i, !prof !186

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2789) #62, !noalias !104496
  unreachable

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104494
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104494
  %i.o = ptrtoint ptr %i.l to i64                 ; 6 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split9.i
    i64 1, label %.split8.i
  ], !prof !290

default.unreachable:                              ; preds = %bb.k, %bb.h
  unreachable

.split.i:                                         ; preds = %bb.h
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !177, !noundef !177
  %i.v = call noundef zeroext i1 %i.u(i32 noundef %i.r) #52, !inline_history !104489
  br i1 %i.v, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

.split9.i:                                        ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !291, !noundef !177
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

.split8.i:                                        ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.l, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !291, !noundef !177
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

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
  br i1 %i.ag, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.n, 0
  br i1 %i.ah, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = sub nuw nsw i64 %.sroa.7.030.i, %i.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 %i.n
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split8.i, %.split9.i, %.split.i
  %.ph.i = phi ptr [ %i.l, %.split9.i ], [ %i.l, %.split8.i ], [ %i.l, %.split.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  %.sroa.4.1.i4.ph.i = phi i64 [ %i.o, %.split9.i ], [ %i.o, %.split8.i ], [ %i.o, %.split.i ], [ %.sroa.4.1.i.ph7.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104497
  %i.ak = and i64 %.sroa.4.1.i4.ph.i, 3
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 1, label %bb.m
  ], !prof !230

bb.l:                                             ; preds = %bb.k
  %i.al = icmp ult ptr %.ph.i, inttoptr (i64 188978561024 to ptr)
  %i.am = and i64 %.sroa.4.1.i4.ph.i, 1095216660480
  %i.an = icmp ne i64 %i.am, 1095216660480
  call void @llvm.assume(i1 %i.al)
  call void @llvm.assume(i1 %i.an)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ao = getelementptr i8, ptr %.ph.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  store ptr %i.ao, ptr %i.h, align 8, !alias.scope !104498, !noalias !104497
  store i8 3, ptr %i.a, align 8, !alias.scope !104498, !noalias !104497
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #52, !noalias !104499
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104497
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, %bb.j
  %.sroa.0.117.i = phi ptr [ %.sroa.0.031.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aj, %bb.j ]
  %.sroa.7.115.i = phi i64 [ %.sroa.7.030.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ap = icmp eq i64 %.sroa.7.115.i, 0
  br i1 %i.ap, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Q_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.split.i, %.split9.i, %.split8.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.i, %bb.n, %bb.a
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %i.l, %.split9.i ], [ null, %bb.n ], [ %i.l, %.split.i ], [ @486, %bb.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.l, %.split8.i ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice(ptr %.val, ptr %.val1, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #52
  ret { i64, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read13read_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104521)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !104521, !noalias !104522, !noundef !177 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !104523, !noundef !177
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104524
  store ptr %.sroa.02.0.i.i, ptr %i.a, align 8, !noalias !104524
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i.i, ptr %i.j, align 8, !noalias !104524
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !104524
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.3.0.i.i, ptr %i.l, align 8, !noalias !104524
  %i.m = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #52, !noalias !104525 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i
  %i.p = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %i.j, align 8, !noalias !104524, !noundef !177 ; 2 uses
  %i.r = load i64, ptr %i.k, align 8, !noalias !104524, !noundef !177 ; 4 uses
  %.not7.i.i.i.i.i = icmp ugt i64 %i.r, %i.q
  br i1 %.not7.i.i.i.i.i, label %bb.f, label %bb.g, !prof !206

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.r, i64 noundef %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104525
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104524
  %.not.i6.i.i.i.i = icmp ugt i64 %i.r, %.sroa.3.0.i.i
  br i1 %.not.i6.i.i.i.i, label %bb.h, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit, !prof !186

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2789) #62, !noalias !104526
  unreachable

bb.i:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB3s_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104524
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104524
  %i.s = ptrtoint ptr %i.p to i64
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1Y_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.g, %bb.i, %bb.j
  %.sroa.4.1.i.i.i = phi i64 [ 55834574851, %bb.i ], [ %i.s, %bb.j ], [ %i.r, %bb.g ]
  %.sroa.0.1.i.i.i = phi i64 [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %bb.g ]
  %i.t = inttoptr i64 %.sroa.4.1.i.i.i to ptr
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.t, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_buf_exactCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !noalias !104538, !noundef !177
  %i.e = load i64, ptr %i.c, align 8, !noalias !104538, !noundef !177 ; 2 uses
  %.not8.i = icmp eq i64 %i.d, %i.e
  br i1 %.not8.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi i64 [ %i.e, %.lr.ph.i ], [ %i.af, %.backedge.i ]
  %i.h = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #52 ; 10 uses
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
  ], !prof !230

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52, !noalias !104538
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !104538, !nonnull !177, !noundef !177
  %i.p = call noundef zeroext i1 %i.o(i32 noundef %i.l) #52, !noalias !104538, !inline_history !104529
  br i1 %i.p, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

.split6.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !291, !noalias !104538, !noundef !177
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

.split5.i:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.h, i64 31
  %i.u = load i8, ptr %i.t, align 8, !range !291, !noalias !104538, !noundef !177
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.f, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.w = lshr i64 %i.i, 32
  %i.x = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.z, label %bb.e, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.c, align 8, !noalias !104538, !noundef !177 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split6.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104539
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104540
  %i.ac = and i64 %i.i, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.f:                                             ; preds = %.split5.i
  %i.ae = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104541
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.f, align 8, !alias.scope !104542, !noalias !104541
  store i8 3, ptr %i.a, align 8, !alias.scope !104542, !noalias !104541
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #52, !noalias !104541
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104541
  %.pre.i = load i64, ptr %i.c, align 8, !noalias !104538
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, %bb.d
  %i.af = phi i64 [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !noalias !104538, !noundef !177
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1U_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.split.i, %.split6.i, %.split5.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %.backedge.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %i.h, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.h, %.split.i ], [ %i.h, %.split5.i ], [ @486, %bb.d ], [ %i.h, %.split6.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_to_stringCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104547)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !104547, !noundef !177 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1R_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEECsgZAIVb0XKpv_9ssservice(ptr %.val, ptr %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #52 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !104547, !nonnull !177, !noundef !177
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !104547, !noundef !177 ; 3 uses
  %i.j = sub nuw i64 %i.i, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104547
  call void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) #52, !noalias !104547
  %i.l = load i64, ptr %i.a, align 8, !range !181, !noalias !104547, !noundef !177
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104547
  %i.m = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.m)
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0ECsgZAIVb0XKpv_9ssservice.exit

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.f, 1
  %i.o = extractvalue { i64, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104547
  %i.p = trunc nuw i64 %i.o to i1
  %..i = select i1 %i.p, ptr %i.n, ptr @482
  %i.q = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0ECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2k_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.07.i = phi i64 [ %i.i, %bb.b ], [ %i.d, %bb.c ]
  %.merged.i = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.07.i, ptr %i.c, align 8, !alias.scope !104548
  ret { i64, ptr } %.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read16is_read_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB10_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !180, !noundef !177
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !177 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !177
  %i.j = sub nuw i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.l = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.k, i64 noundef %i.j) #52 ; 0 uses
  store i8 1, ptr %i.c, align 8
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !177 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !177
  %i.q = sub nuw i64 %i.p, %i.n                   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104566
  store ptr %i.r, ptr %i.a, align 8, !noalias !104566
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !noalias !104566
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !104566
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.q, ptr %i.u, align 8, !noalias !104566
  %i.v = call { i64, ptr } @_RNvXs_NtNtCslxdWNweD0x2_11shadowsocks3net3tcpNtB4_9TcpStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #52, !noalias !104567 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i
  %i.y = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !noalias !104566, !noundef !177 ; 2 uses
  %i.aa = load i64, ptr %i.t, align 8, !noalias !104566, !noundef !177 ; 5 uses
  %.not7.i.i.i.i.i = icmp ugt i64 %i.aa, %i.z
  br i1 %.not7.i.i.i.i.i, label %bb.e, label %bb.f, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aa, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104567
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104566
  %.not.i6.i.i.i.i = icmp ugt i64 %i.aa, %i.q
  br i1 %.not.i6.i.i.i.i, label %bb.g, label %bb.j, !prof !186

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull inttoptr (i64 93 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2789) #62, !noalias !104568
  unreachable

bb.h:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104566
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104566
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit

bb.j:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.c, align 8, !range !180, !noalias !104569, !noundef !177
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.o, align 8, !noalias !104569, !noundef !177
  %i.ae = load i64, ptr %i.m, align 8, !noalias !104569, !noundef !177
  %i.af = sub i64 %i.ad, %i.ae
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.0.0.i.i = phi i64 [ %i.af, %bb.k ], [ 0, %bb.j ]
  %.not.i.i = icmp ugt i64 %i.aa, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.m, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2266, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2268) #62, !noalias !104569
  unreachable

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.l
  %i.ag = load i64, ptr %i.m, align 8, !noalias !104569, !noundef !177
  %i.ah = add i64 %i.ag, %i.aa
  store i64 %i.ah, ptr %i.m, align 8, !noalias !104569
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB1T_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.h, %bb.i, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.y, %bb.i ], [ inttoptr (i64 55834574851 to ptr), %bb.h ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read10read_exactCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 2 uses
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104580
  store ptr %.sroa.0.028.i, ptr %i.b, align 8, !noalias !104580
  store i64 %.sroa.7.026.i, ptr %i.e, align 8, !noalias !104580
  store i64 0, ptr %i.f, align 8, !noalias !104580
  store i64 %.sroa.7.026.i, ptr %i.g, align 8, !noalias !104580
  %i.i = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #52, !noalias !104581 ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 11 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104580
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.e, align 8, !noalias !104580, !noundef !177 ; 2 uses
  %i.n = load i64, ptr %i.f, align 8, !noalias !104580, !noundef !177 ; 7 uses
  %.not7.i.i = icmp ugt i64 %i.n, %i.m
  br i1 %.not7.i.i, label %bb.e, label %bb.g, !prof !206

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.n, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104581
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.k to i64                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104580
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %.split.i
    i64 3, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
    i64 0, label %.split9.i
    i64 1, label %.split8.i
  ], !prof !290

default.unreachable:                              ; preds = %bb.k, %bb.f
  unreachable

.split.i:                                         ; preds = %bb.f
  %i.q = lshr i64 %i.o, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !177, !noundef !177
  %i.v = call noundef zeroext i1 %i.u(i32 noundef %i.r) #52, !inline_history !104575
  br i1 %i.v, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

.split9.i:                                        ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !291, !noundef !177
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

.split8.i:                                        ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.k, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !291, !noundef !177
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

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
  br i1 %i.ag, label %bb.k, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104580
  %i.ah = icmp eq i64 %i.n, 0
  br i1 %i.ah, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp ugt i64 %i.n, %.sroa.7.026.i
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !186

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.n, i64 noundef %.sroa.7.026.i, i64 noundef %.sroa.7.026.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @484) #62
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = sub nuw nsw i64 %.sroa.7.026.i, %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 %i.n
  br label %bb.n

bb.k:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %.split8.i, %.split9.i, %.split.i
  %.ph.i = phi ptr [ %i.k, %.split9.i ], [ %i.k, %.split8.i ], [ %i.k, %.split.i ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  %.sroa.4.1.i4.ph.i = phi i64 [ %i.o, %.split9.i ], [ %i.o, %.split8.i ], [ %i.o, %.split.i ], [ %.sroa.4.1.i.ph7.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104582
  %i.al = and i64 %.sroa.4.1.i4.ph.i, 3
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 1, label %bb.m
  ], !prof !230

bb.l:                                             ; preds = %bb.k
  %i.am = icmp ult ptr %.ph.i, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %.sroa.4.1.i4.ph.i, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %.ph.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.h, align 8, !alias.scope !104583, !noalias !104582
  store i8 3, ptr %i.a, align 8, !alias.scope !104583, !noalias !104582
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #52, !noalias !104584
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104582
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, %bb.j
  %.sroa.0.117.i = phi ptr [ %.sroa.0.028.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.ak, %bb.j ]
  %.sroa.7.115.i = phi i64 [ %.sroa.7.026.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aj, %bb.j ] ; 2 uses
  %i.aq = icmp eq i64 %.sroa.7.115.i, 0
  br i1 %i.aq, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read18default_read_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.split.i, %.split9.i, %.split8.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.g, %bb.n, %bb.a
  %.sroa.09.0.i = phi ptr [ null, %bb.a ], [ %i.k, %.split9.i ], [ null, %bb.n ], [ %i.k, %.split.i ], [ @486, %bb.g ], [ %i.ac, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.k, %.split8.i ]
  ret ptr %.sroa.09.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read11read_to_endCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8
  %i.b = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice(ptr %.val, ptr %.val1, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #52
  ret { i64, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read13read_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104596)
  %.idx = shl nuw nsw i64 %2, 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.c
  br i1 %i.f, label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !104596, !noalias !104597, !noundef !177 ; 2 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !104598, !noundef !177
  br label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104599
  store ptr %.sroa.02.0.i.i, ptr %i.a, align 8, !noalias !104599
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %.sroa.3.0.i.i, ptr %i.j, align 8, !noalias !104599
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8, !noalias !104599
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.3.0.i.i, ptr %i.l, align 8, !noalias !104599
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.m = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #52, !noalias !104600 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = trunc nuw i64 %i.n to i1
  br i1 %i.p, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = ptrtoint ptr %i.o to i64
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !noalias !104599, !noundef !177 ; 2 uses
  %i.s = load i64, ptr %i.k, align 8, !noalias !104599, !noundef !177 ; 3 uses
  %.not7.i.i.i = icmp ugt i64 %i.s, %i.r
  br i1 %.not7.i.i.i, label %bb.g, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit, !prof !206

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.s, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104600
  unreachable

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB2_4Read13read_vectored0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i, %bb.e, %bb.f
  %.sroa.4.1.i.i.i = phi i64 [ 55834574851, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.q, %bb.e ], [ %i.s, %bb.f ]
  %.sroa.0.1.i.i.i = phi i64 [ 1, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionQNtNtNtB5_2io8io_slice10IoSliceMutE6map_orQShNCINvNtNtCsgCecv3eZDcN_5alloc2io4read21default_read_vectoredNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB1w_4Read13read_vectored0Es_0ECsgZAIVb0XKpv_9ssservice.exit.i ], [ 1, %bb.e ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104599
  %i.t = inttoptr i64 %.sroa.4.1.i.i.i to ptr
  %i.u = insertvalue { i64, ptr } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.v = insertvalue { i64, ptr } %i.u, ptr %i.t, 1
  ret { i64, ptr } %i.v
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_buf_exactCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !noalias !104612, !noundef !177
  %i.e = load i64, ptr %i.c, align 8, !noalias !104612, !noundef !177 ; 2 uses
  %.not8.i = icmp eq i64 %i.d, %i.e
  br i1 %.not8.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.g = phi i64 [ %i.e, %.lr.ph.i ], [ %i.af, %.backedge.i ]
  %i.h = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #52 ; 10 uses
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
  ], !prof !230

default.unreachable:                              ; preds = %bb.c
  unreachable

.split.i:                                         ; preds = %bb.c
  %i.k = lshr i64 %i.i, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52, !noalias !104612
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !noalias !104612, !nonnull !177, !noundef !177
  %i.p = call noundef zeroext i1 %i.o(i32 noundef %i.l) #52, !noalias !104612, !inline_history !104603
  br i1 %i.p, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

.split6.i:                                        ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.r = load i8, ptr %i.q, align 8, !range !291, !noalias !104612, !noundef !177
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %.thread.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

.split5.i:                                        ; preds = %bb.c
  %i.t = getelementptr i8, ptr %i.h, i64 31
  %i.u = load i8, ptr %i.t, align 8, !range !291, !noalias !104612, !noundef !177
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.f, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i: ; preds = %bb.c
  %i.w = lshr i64 %i.i, 32
  %i.x = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i = trunc i64 %i.w to i8
  %spec.select.i.i.i.i = select i1 %i.x, i8 %switch.idx.cast.i.i.i.i, i8 -1 ; 2 uses
  %i.y = icmp ne i8 %spec.select.i.i.i.i, -1
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i8 %spec.select.i.i.i.i, 35
  br i1 %i.z, label %bb.e, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.c, align 8, !noalias !104612, !noundef !177 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.g
  br i1 %i.ab, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit, label %.backedge.i

.thread.i:                                        ; preds = %.split6.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104613
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.e:                                             ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104614
  %i.ac = and i64 %i.i, 1095216660480
  %i.ad = icmp ne i64 %i.ac, 1095216660480
  call void @llvm.assume(i1 %i.x)
  call void @llvm.assume(i1 %i.ad)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.f:                                             ; preds = %.split5.i
  %i.ae = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104615
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  store ptr %i.ae, ptr %i.f, align 8, !alias.scope !104616, !noalias !104615
  store i8 3, ptr %i.a, align 8, !alias.scope !104616, !noalias !104615
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #52, !noalias !104615
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.f, %bb.e, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104615
  %.pre.i = load i64, ptr %i.c, align 8, !noalias !104612
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, %bb.d
  %i.af = phi i64 [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ag = load i64, ptr %i.b, align 8, !noalias !104612, !noundef !177
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit, label %bb.b

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read22default_read_buf_exactINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice.exit: ; preds = %.split.i, %.split6.i, %.split5.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i, %bb.d, %.backedge.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %.backedge.i ], [ %i.h, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit.i ], [ %i.h, %.split.i ], [ %i.h, %.split5.i ], [ @486, %bb.d ], [ %i.h, %.split6.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { i64, ptr } @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read14read_to_stringCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.val = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104621)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !104621, !noundef !177 ; 4 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = tail call fastcc { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io4read19default_read_to_endINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEECsgZAIVb0XKpv_9ssservice(ptr %.val, ptr %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0, i64 undef) #52 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !104621, !nonnull !177, !noundef !177
  %i.i = load i64, ptr %i.c, align 8, !alias.scope !104621, !noundef !177 ; 3 uses
  %i.j = sub nuw i64 %i.i, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104621
  call void @_RNvMNtCsf3Ta7LF998c_4core3stre9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.j) #52, !noalias !104621
  %i.l = load i64, ptr %i.a, align 8, !range !181, !noalias !104621, !noundef !177
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104621
  %i.m = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.m)
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0ECsgZAIVb0XKpv_9ssservice.exit

bb.c:                                             ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.f, 1
  %i.o = extractvalue { i64, ptr } %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104621
  %i.p = trunc nuw i64 %i.o to i1
  %..i = select i1 %i.p, ptr %i.n, ptr @482
  %i.q = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %..i, 1
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0ECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16append_to_stringNCINvB2_22default_read_to_stringINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamEE0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.07.i = phi i64 [ %i.i, %bb.b ], [ %i.d, %bb.c ]
  %.merged.i = phi { i64, ptr } [ %i.f, %bb.b ], [ %i.q, %bb.c ]
  store i64 %.sroa.0.07.i, ptr %i.c, align 8, !alias.scope !104622
  ret { i64, ptr } %.merged.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read16is_read_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_bufCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !180, !noundef !177
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !177 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !177
  %i.j = sub nuw i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.l = tail call { ptr, i64 } @_RNvXs0_NvMs2_NtNtCsf3Ta7LF998c_4core3mem12maybe_uninitSINtBb_11MaybeUninitpE13write_defaulthNtB5_11DefaultSpec13write_default(ptr noalias nofree noundef nonnull %i.k, i64 noundef %i.j) #52 ; 0 uses
  store i8 1, ptr %i.c, align 8
  br label %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !177 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !177
  %i.q = sub nuw i64 %i.p, %i.n                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104630
  store ptr %i.r, ptr %i.a, align 8, !noalias !104630
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.s, align 8, !noalias !104630
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.t, align 8, !noalias !104630
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.q, ptr %i.u, align 8, !noalias !104630
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.v = call { i64, ptr } @_RNvXs4_NtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_streamNtB5_21AutoProxyClientStreamNtNtNtCsczhfDQ1qNkX_5tokio2io10async_read9AsyncRead9poll_read(ptr noalias nofree noundef nonnull align 16 dereferenceable(3520) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a) #52, !noalias !104631 ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1        ; 2 uses
  %i.y = trunc nuw i64 %i.w to i1
  br i1 %i.y, label %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %i.x to i64
  br label %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i

bb.e:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.s, align 8, !noalias !104630, !noundef !177 ; 2 uses
  %i.ab = load i64, ptr %i.t, align 8, !noalias !104630, !noundef !177 ; 4 uses
  %.not7.i.i.i = icmp ugt i64 %i.ab, %i.aa
  br i1 %.not7.i.i.i, label %bb.f, label %bb.g, !prof !206

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #62, !noalias !104631
  unreachable

_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %bb.d, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.4.1.i.i.ph.i = phi i64 [ %i.z, %bb.d ], [ 55834574851, %_RNvMs8_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE11ensure_initCsgZAIVb0XKpv_9ssservice.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104630
  %i.ac = inttoptr i64 %.sroa.4.1.i.i.ph.i to ptr
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104630
  %i.ad = load i8, ptr %i.c, align 8, !range !180, !noalias !104632, !noundef !177
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.o, align 8, !noalias !104632, !noundef !177
  %i.ag = load i64, ptr %i.m, align 8, !noalias !104632, !noundef !177
  %i.ah = sub i64 %i.af, %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %i.ah, %bb.h ], [ 0, %bb.g ]
  %.not.i.i = icmp ugt i64 %i.ab, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.j, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i, !prof !186

bb.j:                                             ; preds = %bb.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2266, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2268) #62, !noalias !104632
  unreachable

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.i
  %i.ai = load i64, ptr %i.m, align 8, !noalias !104632, !noundef !177
  %i.aj = add i64 %i.ai, %i.ab
  store i64 %i.aj, ptr %i.m, align 8, !noalias !104632
  br label %_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit

_RINvNtNtCsgCecv3eZDcN_5alloc2io4read16default_read_bufNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtB2_4Read8read_buf0ECsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.0.0.i = phi ptr [ null, %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io12borrowed_bufINtB5_14BorrowedCursorhE15advance_checkedCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.ac, %_RNCNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common15SyncReadAdapterNtNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3net3tcp17auto_proxy_stream21AutoProxyClientStreamENtNtNtCsgCecv3eZDcN_5alloc2io4read4Read8read_buf0CsgZAIVb0XKpv_9ssservice.exit.thread.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtCsf3Ta7LF998c_4core2io5write5Write17is_write_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret i1 false
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtCsf3Ta7LF998c_4core2io5write5Write18write_all_vectoredCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i64, ptr %i.g, align 8, !noalias !104644, !noundef !177
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
  br i1 %i.l, label %bb.d, label %bb.c, !prof !182

bb.c:                                             ; preds = %._crit_edge.i
  %i.m = icmp eq i64 %2, %.sroa.05.0.lcssa.i
  br i1 %i.m, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2275) #62, !noalias !104644
  unreachable

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.05.0.lcssa.i
  %i.o = sub nuw nsw i64 %2, %.sroa.05.0.lcssa.i
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !104645, !nonnull !177, !align !185, !noundef !177
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.p, align 8, !alias.scope !104645, !nonnull !177, !align !185, !noundef !177
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.outer

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.outer: ; preds = %bb.k, %.lr.ph
  %.sroa.0.02142.ph = phi ptr [ %i.bb, %bb.k ], [ %i.n, %.lr.ph ] ; 4 uses
  %.sroa.6.041.ph = phi i64 [ %i.ba, %bb.k ], [ %i.o, %.lr.ph ] ; 7 uses
  br label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12

_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12: ; preds = %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.outer, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !104645)
  %.val.i.i = load ptr, ptr %.val.i, align 8, !noalias !104646, !nonnull !177, !noundef !177
  %i.r = call { i64, ptr } @_RNvXs1_NtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6streamNtB5_19OutboundProxyStreamNtNtNtCsczhfDQ1qNkX_5tokio2io11async_write10AsyncWrite19poll_write_vectored(ptr noalias nofree noundef nonnull align 8 dereferenceable(1160) %.val.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val1.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.02142.ph, i64 noundef range(i64 0, 576460752303423488) %.sroa.6.041.ph) #52, !noalias !104645 ; 2 uses
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
  ], !prof !230

default.unreachable:                              ; preds = %bb.e
  unreachable

.split:                                           ; preds = %bb.e
  %i.x = lshr i64 %i.v, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = call noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions() #52
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !177, !noundef !177
  %i.ac = call noundef zeroext i1 %i.ab(i32 noundef %i.y) #52, !inline_history !81
  br i1 %i.ac, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.thread.thread, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.i, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !291, !noundef !177
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %_RNvMs7_NtNtCsf3Ta7LF998c_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit12.thread.thread, label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split26:                                         ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %.sroa.3.0.i.i, i64 31
  %i.ah = load i8, ptr %i.ag, align 8, !range !291, !noundef !177
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
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.02142.ph, i64 %.idx.i1
  %i.ap = add nsw i64 %.idx.i1, -16
  %i.aq = lshr exact i64 %i.ap, 4
  %i.ar = add nuw nsw i64 %i.aq, 1
  br label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %bb.g, %.lr.ph.preheader.i2
  %.sroa.0.018.i4 = phi i64 [ %i.aw, %bb.g ], [ %i.v, %.lr.ph.preheader.i2 ] ; 3 uses
  %.sroa.05.017.i5 = phi i64 [ %i.ax, %bb.g ], [ 0, %.lr.ph.preheader.i2 ] ; 2 uses
  %.sroa.010.016.i6 = phi ptr [ %i.av, %bb.g ], [ %.sroa.0.02142.ph, %.lr.ph.preheader.i2 ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.010.016.i6, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !104647, !noundef !177 ; 2 uses
  %i.au = icmp ult i64 %.sroa.0.018.i4, %i.at
  br i1 %i.au, label %._crit_edge.i7, label %bb.g
end_hunk_14
