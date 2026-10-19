Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_mount-62935f02ee7d47fb.deltalake_mount.5a283505b379d850-cgu.05?download=true
inline.NumInlined: 262
inline.NumDeleted: 119
begin_hunk_0_@_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs7JU2D1aBbVY_15deltalake_mount:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB6_9scheduler12multi_thread6handle6HandleEE10bind_innerCs7JU2D1aBbVY_15deltalake_mount(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %1, ptr %i.d, align 8
  store ptr %2, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !5, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB4_11ShardedListINtNtNtB8_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB19_9scheduler12multi_thread6handle6HandleEENtNtB17_4core6HeaderE10lock_shardCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  %.sroa.02.0 = phi i1 [ true, %bb.c ], [ %.sroa.02.1, %bb.d ]
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB1H_9scheduler12multi_thread6handle6HandleEENtNtB1F_4core6HeaderEECs7JU2D1aBbVY_15deltalake_mount.exit, %bb.f
  %.sroa.02.1 = phi i1 [ false, %bb.f ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB1H_9scheduler12multi_thread6handle6HandleEENtNtB1F_4core6HeaderEECs7JU2D1aBbVY_15deltalake_mount.exit ], [ true, %bb.h ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load atomic i8, ptr %i.j acquire, align 8
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.m = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  invoke void @_RNvMs0_NtNtCskQDtHcQtBkN_5tokio4util12sharded_listINtB5_10ShardGuardINtNtNtB9_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB19_9scheduler12multi_thread6handle6HandleEENtNtB17_4core6HeaderE4pushCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.m)
          to label %bb.i unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = cmpxchg ptr %.sroa.0.0.copyload, i8 1, i8 0 release monotonic, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB1H_9scheduler12multi_thread6handle6HandleEENtNtB1F_4core6HeaderEECs7JU2D1aBbVY_15deltalake_mount.exit, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs1_NtCs8fBJGmGoRiY_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %.sroa.0.0.copyload, i1 noundef zeroext false)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB1H_9scheduler12multi_thread6handle6HandleEENtNtB1F_4core6HeaderEECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.d

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit8: ; preds = %bb.j, %bb.i
  %.sroa.0.0 = phi ptr [ %i.p, %bb.i ], [ null, %bb.j ]
  ret ptr %.sroa.0.0

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB1H_9scheduler12multi_thread6handle6HandleEENtNtB1F_4core6HeaderEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.g, %bb.h
  %i.q = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask8shutdown(ptr noundef nonnull %i.q)
          to label %bb.j unwind label %bb.d

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio4util12sharded_list10ShardGuardINtNtNtBN_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB1H_9scheduler12multi_thread6handle6HandleEENtNtB1F_4core6HeaderEECs7JU2D1aBbVY_15deltalake_mount.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit8

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.b
  br i1 %.sroa.02.0, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit

bb.k:                                             ; preds = %bb.l, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task8NotifiedINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit
  invoke void @_RNvXsd_NtNtCskQDtHcQtBkN_5tokio7runtime4taskINtB5_4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCskQDtHcQtBkN_5tokio7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtBL_9scheduler12multi_thread6handle6HandleEEECs7JU2D1aBbVY_15deltalake_mount.exit unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertBR_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !57, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !57, !noundef !3 ; 2 uses
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE7reserveNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0EBU_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
  %i.d = xor i64 %.val2.i, 7237128888997146477    ; 3 uses
  %i.e = tail call noundef i64 @llvm.fshl.i64(i64 %i.d, i64 %i.d, i64 13)
  %i.f = xor i64 %.val.i, 8317987319222330741
  %i.g = add i64 %i.d, %i.f                       ; 3 uses
  %i.h = xor i64 %i.e, %i.g                       ; 3 uses
  %i.i = xor i64 %.val2.i, 8387220255154660723    ; 3 uses
  %i.j = xor i64 %.val.i, 7816392313619706465
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = add i64 %i.h, %i.k                       ; 3 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 17)
  %i.n = xor i64 %i.l, %i.m                       ; 3 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 %i.i, i64 16)
  %i.p = xor i64 %i.o, %i.k                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 32)
  %i.r = add i64 %i.p, %i.q                       ; 2 uses
  %i.s = add i64 %i.n, %i.r                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 13)
  %i.u = xor i64 %i.s, %i.t                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 32)
  %i.w = xor i64 %i.v, 255
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 21)
  %i.y = xor i64 %i.x, %i.r                       ; 3 uses
  %i.z = add i64 %i.w, %i.y                       ; 2 uses
  %i.aa = add i64 %i.u, %i.z                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 17)
  %i.ac = xor i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 13)
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.af = xor i64 %i.z, %i.ae                     ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 32)
  %i.ah = add i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = add i64 %i.ac, %i.ah                    ; 3 uses
  %i.aj = xor i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 17)
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 21)
  %i.am = xor i64 %i.al, %i.ah                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32)
  %i.ao = add i64 %i.am, %i.an                    ; 2 uses
  %i.ap = add i64 %i.aj, %i.ao                    ; 3 uses
  %i.aq = xor i64 %i.ak, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 16)
  %i.at = xor i64 %i.as, %i.ao                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 32)
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %i.aw = add i64 %i.aq, %i.av
  %i.ax = xor i64 %i.ar, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 21)
  %i.ba = xor i64 %i.az, %i.av                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 16)
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.bd = add i64 %i.ba, %i.bc                    ; 2 uses
  %i.be = xor i64 %i.bb, %i.bd                    ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 21)
  %i.bg = add i64 %i.ax, %i.bd                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 32)
  %i.bi = xor i64 %i.ay, %i.bf
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %.val.i6 = load ptr, ptr %1, align 8, !alias.scope !58, !nonnull !3, !noundef !3 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.bl, align 8, !alias.scope !58, !noundef !3 ; 3 uses
  %i.bm = lshr i64 %i.bk, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 3 uses
  %i.bo = insertelement <16 x i8> poison, i8 %i.bn, i64 0
  %i.bp = shufflevector <16 x i8> %i.bo, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.noexc
  %.pn.i.i = phi i64 [ %i.bk, %.noexc ], [ %i.cp, %bb.e ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.124.i.i, %bb.e ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.126.i.i, %bb.e ]
  %i.bq = phi i64 [ 0, %.noexc ], [ %i.co, %bb.e ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i6, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i31.i.i = load <16 x i8>, ptr %i.br, align 1, !noalias !59 ; 3 uses
  %i.bs = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, %i.bp
  %i.bt = bitcast <16 x i1> %i.bs to i16          ; 2 uses
  %.not32.i.i = icmp eq i16 %i.bt, 0
  br i1 %.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.033.i.i = phi i16 [ %i.ce, %bb.c ], [ %i.bt, %bb.b ] ; 3 uses
  %i.bu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.033.i.i, i1 true)
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = add i64 %.sroa.0.021.i.i, %i.bv
  %i.bx = and i64 %i.bw, %.val7.i
  %i.by = load ptr, ptr %1, align 8, !alias.scope !58, !noalias !60, !nonnull !3, !noundef !3
  %i.bz = sub nsw i64 0, %i.bx                    ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -24
  %i.cc = invoke noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs7JU2D1aBbVY_15deltalake_mount6config14MountConfigKeyINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %.lr.ph.i.i
  br i1 %i.cc, label %bb.h, label %bb.c, !prof !6

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.d, !prof !4

bb.c:                                             ; preds = %.noexc7
  %i.cd = add i16 %.sroa.01.033.i.i, -1
  %i.ce = and i16 %i.cd, %.sroa.01.033.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i31.i.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not.i.i.i, label %bb.e, label %.thread28.i.i, !prof !4

.thread28.i.i:                                    ; preds = %bb.d
  %i.ch = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cg, i1 true)
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = add i64 %.sroa.0.021.i.i, %i.ci
  %i.ck = and i64 %i.cj, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread28.i.i, %._crit_edge.i.i
  %.sroa.4.125.i.i = phi i64 [ %i.ck, %.thread28.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cl = icmp eq <16 x i8> %.sroa.0.0.copyload.i31.i.i, splat (i8 -1)
  %i.cm = bitcast <16 x i1> %i.cl to i16
  %i.cn = icmp eq i16 %i.cm, 0
  br i1 %i.cn, label %bb.e, label %bb.f, !prof !4

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.126.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.124.i.i = phi i64 [ %.sroa.4.125.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.co = add i64 %i.bq, 16                       ; 2 uses
  %i.cp = add i64 %i.co, %.sroa.0.021.i.i
  br label %bb.b

bb.f:                                             ; preds = %.thread.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i6, i64 %.sroa.4.125.i.i
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !3
  %i.cs = icmp sgt i8 %i.cr, -1
  br i1 %i.cs, label %bb.g, label %bb.j, !prof !4

bb.g:                                             ; preds = %bb.f
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i6, align 16
  %i.ct = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.cu, 0
  %i.cv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cu, i1 true)
  %i.cw = zext nneg i16 %i.cv to i64
  call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.j

bb.h:                                             ; preds = %.noexc7
  %i.cx = load ptr, ptr %1, align 8, !alias.scope !58, !nonnull !3, !noundef !3
  %i.cy = getelementptr inbounds [24 x i8], ptr %i.cx, i64 %i.bz
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %.sroa.3.0.i.ph.i = phi i64 [ %i.cw, %bb.g ], [ %.sroa.4.125.i.i, %bb.f ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.da = load ptr, ptr %1, align 8, !alias.scope !61, !nonnull !3, !noundef !3 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.3.0.i.ph.i ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !noalias !62, !noundef !3
  %i.dd = and i8 %i.dc, 1
  %i.de = zext nneg i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dg = add i64 %.sroa.3.0.i.ph.i, -16
  %i.dh = load i64, ptr %i.bl, align 8, !alias.scope !61, !noundef !3
  %i.di = and i64 %i.dh, %i.dg
  store i8 %i.bn, ptr %i.db, align 1, !noalias !62
  %i.dj = getelementptr i8, ptr %i.da, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  store i8 %i.bn, ptr %i.dk, align 1, !noalias !62
  %i.dl = load <2 x i64>, ptr %i.df, align 8, !alias.scope !61
  %i.dm = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.de, i64 0
  %i.dn = sub <2 x i64> %i.dl, %i.dm
  store <2 x i64> %i.dn, ptr %i.df, align 8, !alias.scope !61
  %i.do = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.dp = getelementptr inbounds [24 x i8], ptr %i.da, i64 %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.lr.ph.i.i, %bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef align 8 dereferenceable(24) %2) #16
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.l:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtNtB9_6stream8buffered8BufferedINtNtB1w_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterINtNtNtB2I_3ops5range5RangeyEEEENCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB6v_10get_ranges00EEINtNtB61_3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEENtNtNtB2I_6future6future6Future4pollCs7JU2D1aBbVY_15deltalake_mount(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.9.sroa.12.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterINtNtNtB2u_3ops5range5RangeyEEEENCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEB6h_10get_ranges00EENtB5_9TryStream13try_poll_nextCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = load i64, ptr %i.b, align 8, !range !7, !noundef !3 ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 -9223372036854775788, label %bb.c
    i64 -9223372036854775789, label %bb.d
    i64 -9223372036854775790, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  store i64 -9223372036854775790, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  ret void

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.740.0..sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.753.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.652.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.039.0.copyload = load ptr, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !69
  store ptr %.sroa.039.0.copyload, ptr %i.a, align 8, !alias.scope !70, !noalias !71
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtNtB9_6stream8buffered8BufferedINtNtB1w_3map3MapINtNtB9_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterINtNtNtB2I_3ops5range5RangeyEEEENCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EEINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEENtNtNtB2I_6future6future6Future4pollB4B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.9.sroa.12.sroa.12 = alloca [24 x i8], align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.740.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs2_NtCs7cL0Iqqqcdm_12futures_core6streamINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterINtNtNtB2u_3ops5range5RangeyEEEENCNCNvYNtNtCs7JU2D1aBbVY_15deltalake_mount4file23MountFileStorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore10get_ranges00EENtB5_9TryStream13try_poll_nextB4n_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
  %i.e = load i64, ptr %i.b, align 8, !range !7, !noundef !3 ; 2 uses
  switch i64 %i.e, label %bb.f [
    i64 -9223372036854775788, label %bb.c
    i64 -9223372036854775789, label %bb.d
    i64 -9223372036854775790, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %i.c, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.457.0..sroa_idx, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 0, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  store i64 -9223372036854775790, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  ret void

bb.f:                                             ; preds = %bb.b
  %.sroa.7.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.740.0..sroa_idx, align 8
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx.sroa_idx, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.753.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.753.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.652.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  store i64 %i.e, ptr %0, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.450.0..sroa_idx, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.sroa.0.0.copyload, ptr %.sroa.551.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.039.0.copyload = load ptr, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.740.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !79
  store ptr %.sroa.039.0.copyload, ptr %i.a, align 8, !alias.scope !80, !noalias !81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.355.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.12.sroa.12, i64 24, i1 false)
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB6_3VecNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEINtB4_10SpecExtendBT_INtNtCsbvkFyIu7lgC_4core6option8IntoIterBT_EE11spec_extendCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !79
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.b

bb.h:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.12.sroa.12)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXs2_Cs3JXekYNd0JR_7dashmapINtB5_7DashMapNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EEINtNtB5_1t3MapBF_B13_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE7__insertCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [104 x i8], align 8               ; 10 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 5 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  store ptr %2, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !noalias !124
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val11.i = load ptr, ptr %i.h, align 8, !alias.scope !123, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val12.i = load i64, ptr %i.i, align 8, !alias.scope !123, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !124
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load <2 x i64>, ptr %i.g, align 8, !alias.scope !122 ; 3 uses
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.l = xor <2 x i64> %i.k, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.l, ptr %i.b, align 16, !alias.scope !125, !noalias !124
  %i.m = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.n = xor <2 x i64> %i.m, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.n, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !125, !noalias !124
  store <2 x i64> %i.j, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !125, !noalias !124
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !125, !noalias !124
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs7JU2D1aBbVY_15deltalake_mount(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val11.i, i64 noundef %.val12.i) #17, !noalias !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
end_hunk_0
