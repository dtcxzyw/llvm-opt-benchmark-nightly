Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str:bb.a
bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hk = mul i64 %.sroa.042.267.i.i.i.i.i.i, 10
  %i.hl = add nsw i64 %.sroa.15.268.i.i.i.i.i.i, -1 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i.i.i.i, i64 1
  %i.hn = zext nneg i32 %i.hi to i64
  %i.ho = add i64 %i.hk, %i.hn                    ; 2 uses
  %.not53.i.i.i.i.i.i = icmp eq i64 %i.hl, 0
  br i1 %.not53.i.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.o:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i
  %i.hp = load ptr, ptr %i.cx, align 8, !noalias !1535, !nonnull !11 ; 7 uses
  %i.hq = load i64, ptr %i.cy, align 8, !noalias !1535 ; 11 uses
  switch i64 %i.hq, label %thread-pre-split.i110.i.i.i.i.i [
    i64 1, label %bb.p
    i64 0, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i
  ]

bb.p:                                             ; preds = %bb.o
  %i.hr = load i8, ptr %i.hp, align 1, !alias.scope !1540, !noalias !1541, !noundef !11 ; 2 uses
  switch i8 %i.hr, label %bb.q [
    i8 43, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i116.i.i.i.i.i
    i8 45, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i116.i.i.i.i.i
  ]

thread-pre-split.i110.i.i.i.i.i:                  ; preds = %bb.o
  %.pr.i111.i.i.i.i.i = load i8, ptr %i.hp, align 1, !alias.scope !1540, !noalias !1541
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i110.i.i.i.i.i, %bb.p
  %i.hs = phi i8 [ %.pr.i111.i.i.i.i.i, %thread-pre-split.i110.i.i.i.i.i ], [ %i.hr, %bb.p ]
  %cond.i91.i.i.i.i.i = icmp eq i8 %i.hs, 43      ; 2 uses
  %i.ht = sext i1 %cond.i91.i.i.i.i.i to i64
  %.sroa.15.0.i92.i.i.i.i.i = add nsw i64 %i.hq, %i.ht ; 4 uses
  %.sroa.0.0.idx.i93.i.i.i.i.i = zext i1 %cond.i91.i.i.i.i.i to i64
  %.sroa.0.0.i94.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 %.sroa.0.0.idx.i93.i.i.i.i.i ; 2 uses
  %i.hu = icmp samesign ult i64 %.sroa.15.0.i92.i.i.i.i.i, 17
  br i1 %i.hu, label %.preheader.i103.i.i.i.i.i, label %.preheader56.i95.i.i.i.i.i.preheader

.preheader.i103.i.i.i.i.i:                        ; preds = %bb.q
  %.not5366.i104.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i92.i.i.i.i.i, 0
  br i1 %.not5366.i104.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i, label %.lr.ph.i105.i.i.i.i.i

.preheader56.i95.i.i.i.i.i:                       ; preds = %bb.r
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i98.i.i.i.i.i1328, i64 1
  %i.hw = add nsw i64 %.sroa.15.1.i97.i.i.i.i.i1327, -1 ; 2 uses
  %.not52.i99.i.i.i.i.i = icmp eq i64 %i.hw, 0
  br i1 %.not52.i99.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i, label %.preheader56.i95.i.i.i.i.i.preheader

.preheader56.i95.i.i.i.i.i.preheader:             ; preds = %bb.q, %.preheader56.i95.i.i.i.i.i
  %.sroa.0.1.i98.i.i.i.i.i1328 = phi ptr [ %i.hv, %.preheader56.i95.i.i.i.i.i ], [ %.sroa.0.0.i94.i.i.i.i.i, %bb.q ] ; 2 uses
  %.sroa.15.1.i97.i.i.i.i.i1327 = phi i64 [ %i.hw, %.preheader56.i95.i.i.i.i.i ], [ %.sroa.15.0.i92.i.i.i.i.i, %bb.q ]
  %.sroa.042.0.i96.i.i.i.i.i1326 = phi i64 [ %i.ie, %.preheader56.i95.i.i.i.i.i ], [ 0, %bb.q ] ; 2 uses
  %i.hx = icmp ugt i64 %.sroa.042.0.i96.i.i.i.i.i1326, 2305843009213693951
  br i1 %i.hx, label %.loopexit185.i.i.i.i.i, label %bb.r, !prof !24

bb.r:                                             ; preds = %.preheader56.i95.i.i.i.i.i.preheader
  %i.hy = shl nuw i64 %.sroa.042.0.i96.i.i.i.i.i1326, 3 ; 2 uses
  %i.hz = load i8, ptr %.sroa.0.1.i98.i.i.i.i.i1328, align 1, !alias.scope !1540, !noalias !1541, !noundef !11
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nsw i32 %i.ia, -48                  ; 2 uses
  %i.ic = icmp ugt i32 %i.ib, 7
  %i.id = zext nneg i32 %i.ib to i64
  %i.ie = add i64 %i.hy, %i.id                    ; 3 uses
  %i.if = icmp ult i64 %i.ie, %i.hy
  %or.cond181.i.i.i.i.i = select i1 %i.ic, i1 true, i1 %i.if, !prof !28
  br i1 %or.cond181.i.i.i.i.i, label %.loopexit185.i.i.i.i.i, label %.preheader56.i95.i.i.i.i.i, !prof !28

.lr.ph.i105.i.i.i.i.i:                            ; preds = %.preheader.i103.i.i.i.i.i, %bb.s
  %.sroa.0.269.i106.i.i.i.i.i = phi ptr [ %i.im, %bb.s ], [ %.sroa.0.0.i94.i.i.i.i.i, %.preheader.i103.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i107.i.i.i.i.i = phi i64 [ %i.il, %bb.s ], [ %.sroa.15.0.i92.i.i.i.i.i, %.preheader.i103.i.i.i.i.i ]
  %.sroa.042.267.i108.i.i.i.i.i = phi i64 [ %i.io, %bb.s ], [ 0, %.preheader.i103.i.i.i.i.i ]
  %i.ig = load i8, ptr %.sroa.0.269.i106.i.i.i.i.i, align 1, !alias.scope !1540, !noalias !1541, !noundef !11
  %i.ih = zext i8 %i.ig to i32
  %i.ii = add nsw i32 %i.ih, -48                  ; 2 uses
  %i.ij = icmp ult i32 %i.ii, 8
  br i1 %i.ij, label %bb.s, label %.loopexit185.i.i.i.i.i

bb.s:                                             ; preds = %.lr.ph.i105.i.i.i.i.i
  %i.ik = shl i64 %.sroa.042.267.i108.i.i.i.i.i, 3
  %i.il = add nsw i64 %.sroa.15.268.i107.i.i.i.i.i, -1 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i106.i.i.i.i.i, i64 1
  %i.in = zext nneg i32 %i.ii to i64
  %i.io = or disjoint i64 %i.ik, %i.in            ; 2 uses
  %.not53.i109.i.i.i.i.i = icmp eq i64 %i.il, 0
  br i1 %.not53.i109.i.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i, label %.lr.ph.i105.i.i.i.i.i

.loopexit.i52.i.i.i.i:                            ; preds = %bb.m, %.preheader56.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.not.i113.i.i.i.i.i = icmp slt i64 %i.gp, 0
  br i1 %.not.i113.i.i.i.i.i, label %bb.t, label %.thread.i.i.i.i.i, !prof !1542

.thread.i.i.i.i.i:                                ; preds = %.loopexit.i52.i.i.i.i
  %i.ip = icmp eq i64 %i.gp, 0
  br i1 %i.ip, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i, %bb.k, %bb.k
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1543
  %i.iq = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gp, i64 noundef range(i64 1, 9) 1) #32, !noalias !1543 ; 3 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.t, label %bb.u

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i: ; preds = %.preheader56.i.i.i.i.i.i, %bb.n
  %.sroa.10123.0.i.i.i.i.i = phi i64 [ %i.ho, %bb.n ], [ %i.he, %.preheader56.i.i.i.i.i.i ]
  %.sroa.10123.0.fr.i.i.i.i.i = freeze i64 %.sroa.10123.0.i.i.i.i.i ; 2 uses
  %i.is = icmp eq i64 %.sroa.10123.0.fr.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %i.is, i64 2, i64 3
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i

bb.t:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i, %.loopexit.i52.i.i.i.i
  %.sroa.4129.0.ph.i.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i ], [ 0, %.loopexit.i52.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4129.0.ph.i.i.i.i.i, i64 %i.gp) #35, !noalias !1536
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i: ; preds = %bb.u, %.thread.i.i.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCslbrwWrVtb7E_5uu_tr.exit.thread.i.i.i.i.i
  %.sroa.10131.0154.i.i.i.i.i = phi i64 [ %i.it, %bb.u ], [ 1, %.thread.i.i.i.i.i ], [ 1, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCslbrwWrVtb7E_5uu_tr.exit.thread.i.i.i.i.i ]
  %.sroa.077.1.extract.shift.i.i.i.i.i = lshr i64 %i.gp, 8
  %.sroa.077.1.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.077.1.extract.shift.i.i.i.i.i to i8
  %.sroa.077.2.extract.shift.i.i.i.i.i = and i64 %i.gp, -65536
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i

bb.u:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  %i.it = ptrtoint ptr %i.iq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.go, i64 %i.gp, i1 false), !noalias !1536
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i, %.preheader.i103.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.val88.i.i.i.i.i = phi ptr [ %i.hp, %.preheader.i103.i.i.i.i.i ], [ %i.go, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i ], [ %i.hp, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i ], [ %i.go, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ %i.hp, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i ], [ %i.go, %.preheader.i.i.i.i.i.i ]
  %.sroa.7.sroa.8.sroa.0.sroa.0.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i103.i.i.i.i.i ], [ %.sroa.077.2.extract.shift.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i ], [ 0, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i ], [ 0, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ %.sroa.067.2.extract.shift.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ]
  %.sroa.7.sroa.8.sroa.7.1.i.i.i.i.i = phi i64 [ 0, %.preheader.i103.i.i.i.i.i ], [ %.sroa.10131.0154.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i ], [ %.sroa.10119.0.fr.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i ], [ %.sroa.10123.0.fr.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ %.sroa.10127.0175.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ]
  %.sroa.7.sroa.7.1.i.i.i.i.i = phi i8 [ %.sroa.538.0.copyload.i.i.i.i.i, %.preheader.i103.i.i.i.i.i ], [ %.sroa.077.1.extract.trunc.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i ], [ %.sroa.538.0.copyload.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i ], [ %.sroa.538.0.copyload.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ %.sroa.067.1.extract.trunc.i.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i ], [ %.sroa.538.0.copyload.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.sroa.7.sroa.3.1.i.i.i.i.i = phi i64 [ 2, %.preheader.i103.i.i.i.i.i ], [ %i.gp, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i ], [ %spec.select182.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ %i.hq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i ], [ 2, %.preheader.i.i.i.i.i.i ]
  %.sroa.11.1.i.i.i.i.i = phi i64 [ undef, %.preheader.i103.i.i.i.i.i ], [ %i.gp, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ %i.hq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i ], [ undef, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i.i.i.i = phi i32 [ -1, %.preheader.i103.i.i.i.i.i ], [ 5, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit.thread148.i.i.i.i.i ], [ -1, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i ], [ -1, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i.i.i.i.i ], [ 5, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i ], [ -1, %.preheader.i.i.i.i.i.i ]
  %.val.i.i.i.i.i = load i64, ptr %i.bi, align 8, !range !17, !noalias !1535, !noundef !11 ; 2 uses
  %i.iu = icmp sgt i64 %.val.i.i.i.i.i, 0
  br i1 %i.iu, label %bb.v, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i

bb.v:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val88.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1544
  br label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i

.loopexit185.i.i.i.i.i:                           ; preds = %bb.r, %.preheader56.i95.i.i.i.i.i.preheader, %.lr.ph.i105.i.i.i.i.i
  %.not.i115.i.i.i.i.i = icmp slt i64 %i.hq, 0
  br i1 %.not.i115.i.i.i.i.i, label %bb.w, label %.thread156.i.i.i.i.i, !prof !1542

.thread156.i.i.i.i.i:                             ; preds = %.loopexit185.i.i.i.i.i
  %i.iv = icmp eq i64 %i.hq, 0
  br i1 %i.iv, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i116.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i116.i.i.i.i.i: ; preds = %.thread156.i.i.i.i.i, %bb.p, %bb.p
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1545
  %i.iw = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hq, i64 noundef range(i64 1, 9) 1) #32, !noalias !1545 ; 3 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.w, label %bb.x

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit112.i.i.i.i.i: ; preds = %.preheader56.i95.i.i.i.i.i, %bb.s
  %.sroa.10119.0.i.i.i.i.i = phi i64 [ %i.io, %bb.s ], [ %i.ie, %.preheader56.i95.i.i.i.i.i ]
  %.sroa.10119.0.fr.i.i.i.i.i = freeze i64 %.sroa.10119.0.i.i.i.i.i ; 2 uses
  %i.iy = icmp eq i64 %.sroa.10119.0.fr.i.i.i.i.i, 0
  %spec.select182.i.i.i.i.i = select i1 %i.iy, i64 2, i64 3
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i

bb.w:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i116.i.i.i.i.i, %.loopexit185.i.i.i.i.i
  %.sroa.4125.0.ph.i.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i116.i.i.i.i.i ], [ 0, %.loopexit185.i.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4125.0.ph.i.i.i.i.i, i64 %i.hq) #35, !noalias !1536
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i: ; preds = %bb.x, %.thread156.i.i.i.i.i, %bb.o
  %.sroa.10127.0175.i.i.i.i.i = phi i64 [ %i.iz, %bb.x ], [ 1, %.thread156.i.i.i.i.i ], [ 1, %bb.o ]
  %.sroa.067.1.extract.shift.i.i.i.i.i = lshr i64 %i.hq, 8
  %.sroa.067.1.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.067.1.extract.shift.i.i.i.i.i to i8
  %.sroa.067.2.extract.shift.i.i.i.i.i = and i64 %i.hq, -65536
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i

bb.x:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i116.i.i.i.i.i
  %i.iz = ptrtoint ptr %i.iw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iw, ptr nonnull align 1 %i.hp, i64 %i.hq, i1 false), !noalias !1536
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslbrwWrVtb7E_5uu_tr.exit118.thread170.i.i.i.i.i

bb.y:                                             ; preds = %.loopexit.i.i.i.i.i.i46.i
  %.sroa.648.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.538.0..sroa_idx.i10.i.i.i.i, align 8, !noalias !1510
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !1510
  switch i64 %i.fp, label %default.unreachable [
    i64 0, label %.thread.loopexit.i
    i64 1, label %.thread182.thread.i
    i64 2, label %bb.z
  ]

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i: ; preds = %bb.v, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !1535
  %.sroa.27.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.11.1.i.i.i.i.i to i8
  %.sroa.27.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.11.1.i.i.i.i.i, 8
  %.sroa.27.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.27.sroa.5.0.extract.shift.i.i to i56
  %.sroa.18.sroa.8.0.insert.ext.i.i = zext i8 %.sroa.7.sroa.7.1.i.i.i.i.i to i64
  %.sroa.18.sroa.8.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.18.sroa.8.0.insert.ext.i.i, 8
  %.sroa.18.sroa.8.0.insert.insert.i.i = or disjoint i64 %.sroa.18.sroa.8.0.insert.shift.i.i, %.sroa.7.sroa.8.sroa.0.sroa.0.1.i.i.i.i.i
  %.sroa.18.sroa.0.0.insert.ext.i.i = and i64 %.sroa.7.sroa.3.1.i.i.i.i.i, 255
  %.sroa.18.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.18.sroa.8.0.insert.insert.i.i, %.sroa.18.sroa.0.0.insert.ext.i.i
  br label %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i

bb.z:                                             ; preds = %bb.y
  %.sroa.648.0.copyload.i.i.i.i.fr.i = freeze i64 %.sroa.648.0.copyload.i.i.i.i.i ; 3 uses
  %.sroa.18.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.648.0.copyload.i.i.i.i.fr.i to i8 ; 4 uses
  %i.ja = icmp ugt i8 %.sroa.18.sroa.0.0.extract.trunc.i.i, 56
  br i1 %i.ja, label %.thread182.i, label %.thread124.loopexit.split.loop.exit706.i

.thread182.i:                                     ; preds = %bb.z
  %i.jb = icmp eq i8 %.sroa.18.sroa.0.0.extract.trunc.i.i, 58
  br i1 %i.jb, label %.thread182.thread.i, label %.thread124.loopexit.split.loop.exit666.i

.thread182.thread.i:                              ; preds = %.thread182.i, %bb.y, %.loopexit.i.i.i48.i, %.loopexit215.i.i.i.i, %.loopexit216.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  call void @llvm.experimental.noalias.scope.decl(metadata !1549)
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !1552
  store ptr %.sroa.0.0.i, ptr %i.bh, align 8, !noalias !1553
  store i64 %.sroa.3.0.i, ptr %i.cj, align 8, !noalias !1553
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i, 0 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit132.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i53.i

.lr.ph.i.i.i.i.i.i.i53.i:                         ; preds = %.thread182.thread.i
  %.val7.i.i.i.i.i.i.i54.i = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1554, !noalias !1555, !noundef !11
  %.not.i.i14.i.i.i.i.i.i55.i = icmp ne i8 %.val7.i.i.i.i.i.i.i54.i, 91
  %cond1885 = icmp eq i64 %.sroa.3.0.i, 1
  %or.cond1886 = or i1 %.not.i.i14.i.i.i.i.i.i55.i, %cond1885
  br i1 %or.cond1886, label %.loopexit132.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i53.i.1

.lr.ph.i.i.i.i.i.i.i53.i.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i53.i
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %.val7.i.i.i.i.i.i.i54.i.1 = load i8, ptr %i.jc, align 1, !alias.scope !1554, !noalias !1555, !noundef !11
  %.not.i.i14.i.i.i.i.i.i55.i.1 = icmp ne i8 %.val7.i.i.i.i.i.i.i54.i.1, 58
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.3.0.i, 1
  %or.cond1887 = or i1 %.not.i.i14.i.i.i.i.i.i55.i.1, %.not.i.i.i.i.i.i.i.i.i
  br i1 %or.cond1887, label %.loopexit132.i.i.i.i, label %bb.aa

.loopexit132.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i53.i, %.lr.ph.i.i.i.i.i.i.i53.i.1, %.thread182.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1552
  br label %bb.ci

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i53.i.1
  %i.jd = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bh, i64 noundef 2) #32, !noalias !1556 ; 2 uses
  %i.je = extractvalue { ptr, i64 } %i.jd, 0      ; 51 uses
  %i.jf = extractvalue { ptr, i64 } %i.jd, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !1552
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.je) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !1557
  store ptr %i.je, ptr %i.bg, align 8, !noalias !1558
  store i64 %i.jf, ptr %i.ck, align 8, !noalias !1558
  %i.jg = call { i64, i64 } @_RNvXsr_NtCsiBsA9HK2Eg7_3nom6traitsRShINtB5_13FindSubstringReE14find_substring(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 2) #32, !noalias !1559 ; 2 uses
  %i.jh = extractvalue { i64, i64 } %i.jg, 0
  %i.ji = trunc nuw i64 %i.jh to i1
  br i1 %i.ji, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.jj = extractvalue { i64, i64 } %i.jg, 1      ; 6 uses
  %i.jk = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg, i64 noundef %i.jj) #32, !noalias !1559 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.jj, %i.jf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.ae, !prof !24

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.jj, i64 noundef range(i64 0, -9223372036854775808) %i.jf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #33, !noalias !1560
  unreachable

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1557
  br label %bb.ci

bb.ae:                                            ; preds = %bb.ab
  %i.jl = extractvalue { ptr, i64 } %i.jk, 1      ; 4 uses
  %i.jm = extractvalue { ptr, i64 } %i.jk, 0      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !1557
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jm) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1561)
  call void @llvm.experimental.noalias.scope.decl(metadata !1562)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !1564
  store ptr %i.jm, ptr %i.bf, align 8, !noalias !1565
  store i64 %i.jl, ptr %i.cl, align 8, !noalias !1565
  %.not.i.i.i26.i.i.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i.i26.i.i.i.i, label %.loopexit.i.i.i60.i, label %.lr.ph.i.i.i.i27.i.i.i.i

.lr.ph.i.i.i.i27.i.i.i.i:                         ; preds = %bb.ae
  %.val7.i.i.i.i28.i.i.i.i = load i8, ptr %i.jm, align 1, !alias.scope !1566, !noalias !1567, !noundef !11
  %.not.i.i14.i.i.i30.i.i.i.i = icmp ne i8 %.val7.i.i.i.i28.i.i.i.i, 58
  %cond1888 = icmp eq i64 %i.jl, 1
  %or.cond1889 = or i1 %.not.i.i14.i.i.i30.i.i.i.i, %cond1888
  br i1 %or.cond1889, label %.loopexit.i.i.i60.i, label %.lr.ph.i.i.i.i27.i.i.i.i.1

.lr.ph.i.i.i.i27.i.i.i.i.1:                       ; preds = %.lr.ph.i.i.i.i27.i.i.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %.val7.i.i.i.i28.i.i.i.i.1 = load i8, ptr %i.jn, align 1, !alias.scope !1566, !noalias !1567, !noundef !11
  %.not.i.i14.i.i.i30.i.i.i.i.1 = icmp ne i8 %.val7.i.i.i.i28.i.i.i.i.1, 93
  %.not.i.i.i.i.i39.i.i.i.i = icmp eq i64 %i.jl, 1
  %or.cond1890 = or i1 %.not.i.i14.i.i.i30.i.i.i.i.1, %.not.i.i.i.i.i39.i.i.i.i
  br i1 %or.cond1890, label %.loopexit.i.i.i60.i, label %bb.af

.loopexit.i.i.i60.i:                              ; preds = %.lr.ph.i.i.i.i27.i.i.i.i, %.lr.ph.i.i.i.i27.i.i.i.i.1, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1564
  br label %bb.ci

bb.af:                                            ; preds = %.lr.ph.i.i.i.i27.i.i.i.i.1
  %i.jo = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bf, i64 noundef 2) #32, !noalias !1568 ; 2 uses
  %i.jp = extractvalue { ptr, i64 } %i.jo, 0      ; 2 uses
  %i.jq = extractvalue { ptr, i64 } %i.jo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !1564
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jp) ]
  switch i64 %i.jj, label %bb.ah [
    i64 0, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i
    i64 5, label %bb.ag
    i64 6, label %bb.bx
  ]

bb.ag:                                            ; preds = %bb.af
  %i.jr = load i8, ptr %i.je, align 1, !noalias !1569, !noundef !11
  switch i8 %i.jr, label %bb.ah [
    i8 97, label %bb.ai
    i8 98, label %bb.aj
    i8 99, label %bb.ak
    i8 100, label %bb.al
    i8 103, label %bb.am
    i8 108, label %bb.an
    i8 112, label %bb.ao
    i8 115, label %bb.ap
    i8 117, label %bb.aq
  ]

bb.ah:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ag, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !1570
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.je, i64 noundef %i.jj) #32, !noalias !1569
  %i.js = load i64, ptr %i.be, align 8, !range !17, !noalias !1570, !noundef !11 ; 3 uses
  %.not.i41.i.i.i.i = icmp eq i64 %i.js, -1
  br i1 %.not.i41.i.i.i.i, label %bb.ce, label %bb.cd

bb.ai:                                            ; preds = %bb.ag
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !noalias !1569, !noundef !11
  %i.jv = icmp eq i8 %i.ju, 108
  br i1 %i.jv, label %bb.ar, label %bb.ah

bb.aj:                                            ; preds = %bb.ag
  %i.jw = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !noalias !1569, !noundef !11
  %i.jy = icmp eq i8 %i.jx, 108
  br i1 %i.jy, label %bb.aw, label %bb.ah

bb.ak:                                            ; preds = %bb.ag
  %i.jz = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !1569, !noundef !11
  %i.kb = icmp eq i8 %i.ka, 110
  br i1 %i.kb, label %bb.az, label %bb.ah

bb.al:                                            ; preds = %bb.ag
  %i.kc = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.kd = load i8, ptr %i.kc, align 1, !noalias !1569, !noundef !11
  %i.ke = icmp eq i8 %i.kd, 105
  br i1 %i.ke, label %bb.bc, label %bb.ah

bb.am:                                            ; preds = %bb.ag
  %i.kf = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !1569, !noundef !11
  %i.kh = icmp eq i8 %i.kg, 114
  br i1 %i.kh, label %bb.bf, label %bb.ah

bb.an:                                            ; preds = %bb.ag
  %i.ki = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !noalias !1569, !noundef !11
  %i.kk = icmp eq i8 %i.kj, 111
  br i1 %i.kk, label %bb.bi, label %bb.ah

bb.ao:                                            ; preds = %bb.ag
  %i.kl = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.km = load i8, ptr %i.kl, align 1, !noalias !1569, !noundef !11
  switch i8 %i.km, label %bb.ah [
    i8 114, label %bb.bl
    i8 117, label %bb.bm
  ]

bb.ap:                                            ; preds = %bb.ag
  %i.kn = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !noalias !1569, !noundef !11
  %i.kp = icmp eq i8 %i.ko, 112
  br i1 %i.kp, label %bb.br, label %bb.ah

bb.aq:                                            ; preds = %bb.ag
  %i.kq = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.kr = load i8, ptr %i.kq, align 1, !noalias !1569, !noundef !11
  %i.ks = icmp eq i8 %i.kr, 112
  br i1 %i.ks, label %bb.bu, label %bb.ah

bb.ar:                                            ; preds = %bb.ai
  %i.kt = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.ku = load i8, ptr %i.kt, align 1, !noalias !1569, !noundef !11
  switch i8 %i.ku, label %bb.ah [
    i8 110, label %bb.as
    i8 112, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.kv = getelementptr inbounds nuw i8, ptr %i.je, i64 3
end_hunk_0
begin_hunk_1_@_RNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB5_8Sequence8from_str:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1714
  switch i64 %i.ade, label %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i
    i64 1, label %bb.hn
  ]

bb.hn:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i
  %i.adf = load i8, ptr %i.add, align 1, !alias.scope !1720, !noalias !1715, !noundef !11 ; 2 uses
  switch i8 %i.adf, label %bb.ho [
    i8 43, label %.loopexit.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i:       ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i38.i.i.i.i.i.i = load i8, ptr %i.add, align 1, !alias.scope !1720, !noalias !1715
  br label %bb.ho

bb.ho:                                            ; preds = %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i, %bb.hn
  %i.adg = phi i8 [ %.pr.i.i.i.i.i.i38.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i37.i.i.i.i.i.i ], [ %i.adf, %bb.hn ]
  %cond.i.i.i.i.i.i20.i.i.i.i.i.i = icmp eq i8 %i.adg, 43 ; 2 uses
  %i.adh = sext i1 %cond.i.i.i.i.i.i20.i.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i = add nsw i64 %i.ade, %i.adh ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i.i22.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i20.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.add, i64 %.sroa.0.0.idx.i.i.i.i.i.i22.i.i.i.i.i.i ; 3 uses
  %i.adi = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 3
  br i1 %i.adi, label %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i

.preheader.i.i.i.i.i.i32.i.i.i.i.i.i:             ; preds = %bb.ho
  %.not5465.i.i.i.i.i.i33.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 0
  br i1 %.not5465.i.i.i.i.i.i33.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i
  %i.adj = load i8, ptr %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, align 1, !alias.scope !1720, !noalias !1715, !noundef !11
  %i.adk = zext i8 %i.adj to i32
  %i.adl = add nsw i32 %i.adk, -48                ; 2 uses
  %i.adm = icmp ugt i32 %i.adl, 7
  br i1 %i.adm, label %.loopexit.i.i.i.i.i.i, label %bb.hp

bb.hp:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i
  %i.adn = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, 1
  %i.ado = trunc nuw nsw i32 %i.adl to i8         ; 2 uses
  br i1 %i.adn, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i

bb.hq:                                            ; preds = %bb.hr
  %i.adp = getelementptr inbounds nuw i8, ptr %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i, i64 1
  %i.adq = add nsw i64 %.sroa.15.163.i.i.i.i.i.i26.i.i.i.i.i.i, -1 ; 2 uses
  %i.adr = shl nuw i8 %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i, 3
  %i.ads = trunc nuw nsw i32 %i.adx to i8
  %i.adt = or disjoint i8 %i.adr, %i.ads          ; 2 uses
  %.not53.i.i.i.i.i.i28.i.i.i.i.i.i = icmp eq i64 %i.adq, 0
  br i1 %.not53.i.i.i.i.i.i28.i.i.i.i.i.i, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, label %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i

.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i:           ; preds = %bb.ho, %bb.hq
  %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i = phi ptr [ %i.adp, %bb.hq ], [ %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, %bb.ho ] ; 2 uses
  %.sroa.15.163.i.i.i.i.i.i26.i.i.i.i.i.i = phi i64 [ %i.adq, %bb.hq ], [ %.sroa.15.0.i.i.i.i.i.i21.i.i.i.i.i.i, %bb.ho ]
  %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i = phi i8 [ %i.adt, %bb.hq ], [ 0, %bb.ho ] ; 2 uses
  %i.adu = icmp ugt i8 %.sroa.043.062.i.i.i.i.i.i27.i.i.i.i.i.i, 31
  br i1 %i.adu, label %.loopexit.i.i.i.i.i.i, label %bb.hr, !prof !24

bb.hr:                                            ; preds = %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i
  %i.adv = load i8, ptr %.sroa.0.164.i.i.i.i.i.i25.i.i.i.i.i.i, align 1, !alias.scope !1720, !noalias !1715, !noundef !11
  %i.adw = zext i8 %i.adv to i32
  %i.adx = add nsw i32 %i.adw, -48                ; 2 uses
  %i.ady = icmp ugt i32 %i.adx, 7
  br i1 %i.ady, label %.loopexit.i.i.i.i.i.i, label %bb.hq

.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i:                 ; preds = %bb.hp
  %i.adz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i23.i.i.i.i.i.i, i64 1
  %.pre.i.i.i.i.i36.i.i.i.i.i.i = load i8, ptr %i.adz, align 1, !alias.scope !1720, !noalias !1715
  %i.aea = zext i8 %.pre.i.i.i.i.i36.i.i.i.i.i.i to i32
  %i.aeb = add nsw i32 %i.aea, -48                ; 2 uses
  %i.aec = icmp ult i32 %i.aeb, 8
  br i1 %i.aec, label %bb.hs, label %.loopexit.i.i.i.i.i.i

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i
  %i.aed = shl nuw nsw i8 %i.ado, 3
  %i.aee = trunc nuw nsw i32 %i.aeb to i8
  %i.aef = or disjoint i8 %i.aed, %i.aee
  br label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i: ; preds = %bb.hq, %bb.hs, %bb.hp, %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i
  %i.aeg = phi i8 [ %i.aef, %bb.hs ], [ 0, %.preheader.i.i.i.i.i.i32.i.i.i.i.i.i ], [ %i.ado, %bb.hp ], [ %i.adt, %bb.hq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1699
  br label %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.hr, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i, %bb.hn, %bb.hn, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i, %bb.hj, %bb.hi, %bb.hf
  %.sroa.8.029.i8.i.i.i.i.i.i = phi ptr [ %i.qw, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ %i.qw, %bb.hf ], [ %i.aco, %bb.hi ], [ %i.qw, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ %i.qw, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ %i.qw, %bb.hn ], [ %i.qw, %bb.hn ], [ %.sroa.0.0.i.i.lcssa13.i.i.i.i.i.i.i.i.i, %bb.hj ], [ %i.qw, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ %i.qw, %bb.hr ]
  %.sroa.13.028.i9.i.i.i.i.i.i = phi i64 [ %i.qx, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ %i.qx, %bb.hf ], [ %i.acp, %bb.hi ], [ %i.qx, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ %i.qx, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ %i.qx, %bb.hn ], [ %i.qx, %bb.hn ], [ %.sroa.3.0.i.i.lcssa16.i.i.i.i.i.i.i.i.i, %bb.hj ], [ %i.qx, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ %i.qx, %bb.hr ]
  %.sroa.18.027.i10.i.i.i.i.i.i = phi i8 [ 2, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i19.i.i.i.i.i.i ], [ 42, %bb.hf ], [ 42, %bb.hi ], [ 2, %.lr.ph.i.i.i.i.i.i35.i.i.i.i.i.i ], [ 2, %.lr.ph.preheader.i.i.i.i.i.i34.i.i.i.i.i.i ], [ 2, %bb.hn ], [ 2, %bb.hn ], [ 27, %bb.hj ], [ 2, %.preheader57.i.i.i.i.i.i24.i.i.i.i.i.i ], [ 2, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1699
  br label %bb.ht

bb.ht:                                            ; preds = %.loopexit.i.i.i.i.i.i, %.loopexit137.i.i.i.i.i.i
  %.sroa.18.0.ph.i.i.i.i = phi i8 [ 0, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.18.027.i10.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %.sroa.13.0.ph.i.i.i.i = phi i64 [ %.sroa.3.0.i, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.13.028.i9.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  %.sroa.8.0.ph.in.i.i.i.i = phi ptr [ %.sroa.0.0.i, %.loopexit137.i.i.i.i.i.i ], [ %.sroa.8.029.i8.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ]
  store i64 1, ptr %i.at, align 8, !noalias !1721
  store ptr %.sroa.8.0.ph.in.i.i.i.i, ptr %i.eg, align 8, !noalias !1721
  store i64 %.sroa.13.0.ph.i.i.i.i, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1721
  store i8 %.sroa.18.0.ph.i.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1721
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1721
  call fastcc void @_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_backslashINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2j_NtB6_9StreamingEEBH_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.at, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i) #32, !noalias !1722
  %i.aeh = load i64, ptr %i.at, align 8, !range !25, !noalias !1721, !noundef !11 ; 2 uses
  %i.aei = icmp eq i64 %i.aeh, 1
  br i1 %i.aei, label %bb.hu, label %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge

._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge: ; preds = %bb.ht
  %.sroa.044.0.copyload.i.pre.pre = load i64, ptr %i.eg, align 8, !noalias !1721
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !1723), !noalias !1615
  call void @llvm.experimental.noalias.scope.decl(metadata !1724), !noalias !1615
  call void @llvm.experimental.noalias.scope.decl(metadata !1725), !noalias !1615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1726
  store ptr %.sroa.0.0.i, ptr %i.a, align 8, !noalias !1727
  store i64 %.sroa.3.0.i, ptr %i.eh, align 8, !noalias !1727
  br i1 %.not.i.i.i.i.i.i.i, label %bb.hv, label %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i

_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i: ; preds = %bb.hu
  %i.aej = call { ptr, i64 } @_RNvXNtCsiBsA9HK2Eg7_3nom6traitsRShNtB2_5Input9take_from(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 1) #32, !noalias !1728 ; 2 uses
  %i.aek = extractvalue { ptr, i64 } %i.aej, 1
  %i.ael = extractvalue { ptr, i64 } %i.aej, 0    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1726
  %i.aem = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1729, !noalias !1730, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ael) ], !noalias !1615
  br label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1726
  store i56 0, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1721
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i
  %storemerge128.i.i.i = phi ptr [ %i.ael, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ], [ %.sroa.0.0.i, %bb.hv ] ; 2 uses
  %storemerge127.i.i.i = phi i64 [ %i.aek, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ], [ 0, %bb.hv ]
  %storemerge.i.i.i = phi i8 [ %i.aem, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ], [ 24, %bb.hv ]
  %.sink.i.i.i = phi i64 [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11single_charINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2f_NtB6_9StreamingEEBH_.exit.i.i.i ], [ 1, %bb.hv ]
  store ptr %storemerge128.i.i.i, ptr %i.eg, align 8, !noalias !1721
  store i64 %storemerge127.i.i.i, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1721
  store i8 %storemerge.i.i.i, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1721
  %i.aen = ptrtoint ptr %storemerge128.i.i.i to i64
  br label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i: ; preds = %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge, %bb.hw
  %.sroa.044.0.copyload.i.pre = phi i64 [ %.sroa.044.0.copyload.i.pre.pre, %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge ], [ %i.aen, %bb.hw ] ; 3 uses
  %i.aeo = phi i64 [ %i.aeh, %._RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i_crit_edge ], [ %.sink.i.i.i, %bb.hw ]
  switch i64 %i.aeo, label %default.unreachable [
    i64 -1, label %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge
    i64 0, label %.thread88
    i64 1, label %.thread
    i64 2, label %bb.hx
  ]

_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge: ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  %.sroa.445.0.copyload.i.pre = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1721
  %.sroa.546.0.copyload.i.pre = load i8, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1721
  br label %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i

.thread88:                                        ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %.thread.i

.thread:                                          ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit

_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i: ; preds = %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge
  %.sroa.546.0.copyload.i = phi i8 [ %.sroa.546.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ], [ %.sroa.3.0.i52.ph.i.i.i.i.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %i.aeg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ]
  %.sroa.445.0.copyload.i = phi i64 [ %.sroa.445.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ], [ %.sroa.3.0.i.i64.i.i.i.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %i.acw, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ]
  %.sroa.044.0.copyload.i = phi i64 [ %.sroa.044.0.copyload.i.pre, %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i._RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i_crit_edge ], [ %i.rx, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence43parse_octal_up_to_three_digits_with_warningINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2L_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ], [ %i.acz, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence22parse_octal_two_digitsINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitB2q_NtB6_9StreamingEEBH_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.aep = icmp ne i64 %.sroa.044.0.copyload.i, 0
  call void @llvm.assume(i1 %i.aep), !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.aeq = inttoptr i64 %.sroa.044.0.copyload.i to ptr
  %.sroa.582.9.insert.ext.i = zext i8 %.sroa.546.0.copyload.i to i64
  %.sroa.582.9.insert.shift.i = shl nuw nsw i64 %.sroa.582.9.insert.ext.i, 8
  br label %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i

bb.hx:                                            ; preds = %_RNvYNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence36parse_backslash_or_char_with_warningINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRShEE8call_mutBa_.exit.i
  %.sroa.7.sroa.5.0.copyload.i = load i8, ptr %.sroa.517.0..sroa_idx.i.i.i.i, align 8, !noalias !1721 ; 2 uses
  %.sroa.7.sroa.0.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1721
  %.sroa.731.i.sroa.0.0.copyload = load i56, ptr %.sroa.765.0..sroa_idx.i.i.i.i, align 1, !noalias !1721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.aer = icmp eq i8 %.sroa.7.sroa.5.0.copyload.i, 58
  br i1 %i.aer, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit, label %.thread124.i

.thread124.loopexit.split.loop.exit.i:            ; preds = %.thread110.i
  %i.aes = ptrtoint ptr %.sroa.7.096.i.i.i.i to i64
  br label %.thread124.i

.thread124.loopexit.split.loop.exit656.i:         ; preds = %.thread147.i
  %i.aet = ptrtoint ptr %.sroa.030.0.copyload.i.i.i.i.i to i64
  %.sroa.18.33.extract.shift.i.le.i = lshr i64 %.sroa.642.0.copyload.i.i.i.i.fr.i, 8
  %.sroa.18.33.extract.trunc.i.le773.i = trunc nuw i64 %.sroa.18.33.extract.shift.i.le.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit666.i:         ; preds = %.thread182.i
  %i.aeu = ptrtoint ptr %.sroa.036.0.copyload.i8.i.i.i.i to i64
  %sh.diff.i.le.i = lshr i64 %.sroa.648.0.copyload.i.i.i.i.fr.i, 8
  %i.aev = trunc nuw i64 %sh.diff.i.le.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit676.i:         ; preds = %.thread235.i
  %.sroa.11.0.ph.i.i.i.le753.i = ptrtoint ptr %i.pr to i64
  %.sroa.734.sroa.4.0.insert.ext.i.le733.i = zext i48 %.sroa.8258.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.4.0.insert.shift.i90.le.i = shl nuw i56 %.sroa.734.sroa.4.0.insert.ext.i.le733.i, 8
  %.sroa.734.sroa.0.0.insert.ext.i91.le.i = zext i8 %.sroa.7257.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.0.0.insert.insert.i92.le726.i = or disjoint i56 %.sroa.734.sroa.4.0.insert.shift.i90.le.i, %.sroa.734.sroa.0.0.insert.ext.i91.le.i
  br label %.thread124.i

.thread124.loopexit.split.loop.exit686.i:         ; preds = %bb.e
  %i.aew = ptrtoint ptr %.sroa.7.096.i.i.i.i to i64
  br label %.thread124.i

.thread124.loopexit.split.loop.exit696.i:         ; preds = %bb.h
  %i.aex = ptrtoint ptr %.sroa.030.0.copyload.i.i.i.i.i to i64
  %.sroa.18.33.extract.shift.i.le775.i = lshr i64 %.sroa.642.0.copyload.i.i.i.i.fr.i, 8
  %.sroa.18.33.extract.trunc.i.le.i = trunc nuw i64 %.sroa.18.33.extract.shift.i.le775.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit706.i:         ; preds = %bb.z
  %i.aey = ptrtoint ptr %.sroa.036.0.copyload.i8.i.i.i.i to i64
  %sh.diff.i.le769.i = lshr i64 %.sroa.648.0.copyload.i.i.i.i.fr.i, 8
  %i.aez = trunc nuw i64 %sh.diff.i.le769.i to i56
  br label %.thread124.i

.thread124.loopexit.split.loop.exit716.i:         ; preds = %bb.cu
  %.sroa.11.0.ph.i.i.i.le751.i = ptrtoint ptr %i.pr to i64
  %.sroa.734.sroa.4.0.insert.ext.i.le.i = zext i48 %.sroa.8258.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.4.0.insert.shift.i90.le731.i = shl nuw i56 %.sroa.734.sroa.4.0.insert.ext.i.le.i, 8
  %.sroa.734.sroa.0.0.insert.ext.i91.le729.i = zext i8 %.sroa.7257.0.copyload.i.i.i.i to i56
  %.sroa.734.sroa.0.0.insert.insert.i92.le.i = or disjoint i56 %.sroa.734.sroa.4.0.insert.shift.i90.le731.i, %.sroa.734.sroa.0.0.insert.ext.i91.le729.i
  br label %.thread124.i

.thread124.i:                                     ; preds = %.thread124.loopexit.split.loop.exit716.i, %.thread124.loopexit.split.loop.exit706.i, %.thread124.loopexit.split.loop.exit696.i, %.thread124.loopexit.split.loop.exit686.i, %.thread124.loopexit.split.loop.exit676.i, %.thread124.loopexit.split.loop.exit666.i, %.thread124.loopexit.split.loop.exit656.i, %.thread124.loopexit.split.loop.exit.i, %bb.hx
  %.sroa.79.6.ph.i = phi i56 [ %.sroa.731.i.sroa.0.0.copyload, %bb.hx ], [ %i.aez, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.18.33.extract.trunc.i.le773.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.19.33.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.18.33.extract.trunc.i.le.i, %.thread124.loopexit.split.loop.exit696.i ], [ %i.aev, %.thread124.loopexit.split.loop.exit666.i ], [ %.sroa.734.sroa.0.0.insert.insert.i92.le726.i, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.19.33.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit686.i ], [ %.sroa.734.sroa.0.0.insert.insert.i92.le.i, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.63.6.ph.i = phi i8 [ %.sroa.7.sroa.5.0.copyload.i, %bb.hx ], [ %.sroa.18.sroa.0.0.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.18.32.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.14.094.i.i.i.fr.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.18.32.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit696.i ], [ %.sroa.18.sroa.0.0.extract.trunc.i.i, %.thread124.loopexit.split.loop.exit666.i ], [ %.fr.i, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.14.094.i.i.i.fr.i, %.thread124.loopexit.split.loop.exit686.i ], [ %.fr.i, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.56.6.ph.i = phi i64 [ %.sroa.7.sroa.0.0.copyload.i, %bb.hx ], [ %.sroa.437.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit706.i ], [ %.sroa.431.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit656.i ], [ %.sroa.11.095.i.i.i.i, %.thread124.loopexit.split.loop.exit.i ], [ %.sroa.431.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit696.i ], [ %.sroa.437.0.copyload.i.i.i.i.i, %.thread124.loopexit.split.loop.exit666.i ], [ %i.ps, %.thread124.loopexit.split.loop.exit676.i ], [ %.sroa.11.095.i.i.i.i, %.thread124.loopexit.split.loop.exit686.i ], [ %i.ps, %.thread124.loopexit.split.loop.exit716.i ]
  %.sroa.44.6.ph.i = phi i64 [ %.sroa.044.0.copyload.i.pre, %bb.hx ], [ %i.aey, %.thread124.loopexit.split.loop.exit706.i ], [ %i.aet, %.thread124.loopexit.split.loop.exit656.i ], [ %i.aes, %.thread124.loopexit.split.loop.exit.i ], [ %i.aex, %.thread124.loopexit.split.loop.exit696.i ], [ %i.aeu, %.thread124.loopexit.split.loop.exit666.i ], [ %.sroa.11.0.ph.i.i.i.le753.i, %.thread124.loopexit.split.loop.exit676.i ], [ %i.aew, %.thread124.loopexit.split.loop.exit686.i ], [ %.sroa.11.0.ph.i.i.i.le751.i, %.thread124.loopexit.split.loop.exit716.i ] ; 2 uses
  %.sroa.63.6.ph.fr.i = freeze i8 %.sroa.63.6.ph.i ; 3 uses
  %i.afa = icmp ugt i8 %.sroa.63.6.ph.fr.i, 56
  br i1 %i.afa, label %bb.hy, label %.thread303.i

bb.hy:                                            ; preds = %.thread124.i
  switch i8 %.sroa.63.6.ph.fr.i, label %bb.ij [
    i8 57, label %.thread.i
    i8 58, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtCs7tKScEop1B6_5alloc3vec3VecIBv_NtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1k_11BadSequenceEEINtNtCsiBsA9HK2Eg7_3nom8internal3ErrINtNtB2p_5error5ErrorRShEEE6unwrapB1m_.exit
    i8 59, label %.thread303.i
  ]

_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i: ; preds = %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i
  %.sroa.79.6.i = phi i56 [ %.sroa.27.sroa.5.0.extract.trunc.i63.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.27.sroa.5.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.26.sroa.5.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.79.0.ph116528.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.63.6.i = phi i8 [ %.sroa.27.sroa.0.0.extract.trunc.i61.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.27.sroa.0.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.26.sroa.0.0.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 58, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.56.6.i = phi i64 [ %.sroa.17.sroa.18.sroa.17.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.7.sroa.8.sroa.7.1.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.25.34.copyload.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.56.0.ph120527.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.44.6.i = phi i64 [ %.sroa.17.sroa.18.sroa.0.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.sroa.0.0.insert.insert.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.582.9.insert.shift.i, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.19.32.insert.ext.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.sroa.0.0.insert.insert.i98.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.18.33.insert.insert.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 5 uses
  %.sroa.40.5.i = phi i32 [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ undef, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %i.es, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ 0, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %.sroa.19.6.i = phi i32 [ %.sroa.0.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.0.1.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ -1, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.13.24.extract.trunc.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.06.0.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ -1, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.1215.6.i = phi i64 [ %i.jq, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.gm, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %.sroa.445.0.copyload.i, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.443.0.copyload.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.qg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.fg, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ] ; 2 uses
  %.sroa.014.6.i = phi ptr [ %i.jp, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence11parse_classINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.gl, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence17parse_char_repeatINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.aeq, %_RINvXsg_NtCsiBsA9HK2Eg7_3nom8internalINtB6_3MapNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBP_8Sequence36parse_backslash_or_char_with_warningNCNvBL_8from_str0EINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBR_.exit.i ], [ %.sroa.042.0.copyload.i.i.i.i.i.i, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_rangeINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.qf, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence16parse_char_equalINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ], [ %i.ff, %_RINvXsf_NtCsiBsA9HK2Eg7_3nom8internalNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBF_8Sequence15parse_char_starINtB6_6ParserRShE7processINtB6_7OutputMNtB6_4EmitNtB6_5CheckNtB6_9StreamingEEBH_.exit.i ]
  %i.afb = icmp eq i64 %.sroa.1215.6.i, %.sroa.3.0.i
  br i1 %i.afb, label %bb.ib, label %bb.hz

bb.hz:                                            ; preds = %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1731
  store i64 %.sroa.02.0.i, ptr %i.bu, align 8, !noalias !1732
  store ptr %.sroa.9.0.i, ptr %.sroa.457.0..sroa_idx.i, align 8, !noalias !1732
  store i64 %.sroa.12.0.i, ptr %.sroa.558.0..sroa_idx.i, align 8, !noalias !1732
  store i32 %.sroa.19.6.i, ptr %i.cz, align 8, !noalias !1733
  store i32 %.sroa.40.5.i, ptr %.sroa.460.0..sroa_idx.i, align 4, !noalias !1733
  store i64 %.sroa.44.6.i, ptr %.sroa.561.0..sroa_idx.i, align 8, !noalias !1733
  store i64 %.sroa.56.6.i, ptr %.sroa.662.0..sroa_idx.i, align 8, !noalias !1733
  store i8 %.sroa.63.6.i, ptr %.sroa.763.0..sroa_idx.i, align 8, !noalias !1733
  store i56 %.sroa.79.6.i, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !1733
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  call void @llvm.experimental.noalias.scope.decl(metadata !1736), !noalias !1737
  %i.afc = icmp eq i64 %.sroa.12.0.i, %.sroa.02.0.i
  br i1 %i.afc, label %bb.ia, label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i

bb.ia:                                            ; preds = %bb.hz
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1q_11BadSequenceEE8grow_oneB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bu) #31, !noalias !1738
  %.pre.i = load ptr, ptr %.sroa.457.0..sroa_idx.i, align 8, !alias.scope !1739, !noalias !1740
  %.sroa.053.0.copyload.pre.i = load i64, ptr %i.bu, align 8, !alias.scope !1741, !noalias !1742
  br label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i

_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEEs0_0B1c_.exit.i: ; preds = %bb.ia, %bb.hz
  %.sroa.053.0.copyload.i = phi i64 [ %.sroa.02.0.i, %bb.hz ], [ %.sroa.053.0.copyload.pre.i, %bb.ia ]
  %i.afd = phi ptr [ %.sroa.9.0.i, %bb.hz ], [ %.pre.i, %bb.ia ] ; 2 uses
  %i.afe = getelementptr inbounds nuw [32 x i8], ptr %i.afd, i64 %.sroa.12.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.afe, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !noalias !1743
  %i.aff = add i64 %.sroa.12.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !1731
  br label %_RNCINvXNtCsiBsA9HK2Eg7_3nom5multiINtB5_5Many0INtNtB7_6branch6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtB1a_8Sequence16parse_char_rangeNvB16_15parse_char_starNvB16_17parse_char_repeatNvB16_11parse_classNvB16_16parse_char_equalINtNtB7_8internal3MapNvB16_36parse_backslash_or_char_with_warningNCNvB16_8from_str0EEEEINtB3J_6ParserRShE7processINtB3J_7OutputMNtB3J_4EmitB5K_NtB3J_9StreamingEE0B1c_.exit.i

bb.ib:                                            ; preds = %_RINvXs5_NtCsiBsA9HK2Eg7_3nom6branchINtB6_6ChoiceTNvMs2_NtCslbrwWrVtb7E_5uu_tr9operationNtBR_8Sequence16parse_char_rangeNvBN_15parse_char_starNvBN_17parse_char_repeatNvBN_11parse_classNvBN_16parse_char_equalINtNtB8_8internal3MapNvBN_36parse_backslash_or_char_with_warningNCNvBN_8from_str0EEEINtB3l_6ParserRShE7processINtB3l_7OutputMNtB3l_4EmitNtB3l_5CheckNtB3l_9StreamingEEBT_.exit.i
  %i.afg = ptrtoint ptr %.sroa.0.0.i to i64       ; 2 uses
  switch i32 %.sroa.19.6.i, label %bb.ic [
    i32 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 1, label %bb.id
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 5, label %bb.ie
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
  ]

bb.ic:                                            ; preds = %bb.ib
  %i.afh = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i: ; preds = %bb.ie, %bb.id, %bb.ic
  %i.afi = inttoptr i64 %.sroa.56.6.i to ptr
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afi, i64 noundef %.sroa.44.6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1744
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i

bb.id:                                            ; preds = %bb.ib
  %i.afj = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

bb.ie:                                            ; preds = %bb.ib
  %i.afk = icmp eq i64 %.sroa.44.6.i, 0
  br i1 %i.afk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i: ; preds = %bb.ie, %bb.id, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i, %bb.ic, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib, %bb.ib
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.afl = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %i.afl, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.afn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i ] ; 2 uses
  %i.afm = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.i, i64 %.sroa.0.03.i.i.i.i ; 5 uses
  %i.afn = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.afo = load i32, ptr %i.afm, align 8, !range !26, !alias.scope !1747, !noalias !1748, !noundef !11 ; 2 uses
  %i.afp = icmp eq i32 %i.afo, -1
  br i1 %i.afp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %bb.if

bb.if:                                            ; preds = %.lr.ph.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  switch i32 %i.afo, label %bb.ig [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 1, label %bb.ih
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 5, label %bb.ii
    i32 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 7, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 8, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 9, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 10, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
    i32 11, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i
  ]

bb.ig:                                            ; preds = %bb.if
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %.val.i.i.i.i.i.i107.i = load i64, ptr %i.afq, align 8, !range !12, !alias.scope !1750, !noalias !1748, !noundef !11 ; 2 uses
  %i.afr = icmp eq i64 %.val.i.i.i.i.i.i107.i, 0
  br i1 %i.afr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i: ; preds = %bb.ii, %bb.ih, %bb.ig
  %.val.i4.sink.i.i.i.i.i.i = phi i64 [ %.val.i1.i.i.i.i.i.i, %bb.ih ], [ %.val.i4.i.i.i.i.i.i, %bb.ii ], [ %.val.i.i.i.i.i.i107.i, %bb.ig ]
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %.val1.i5.i.i.i.i.i.i = load ptr, ptr %i.afs, align 8, !alias.scope !1751, !noalias !1748, !nonnull !11, !noundef !11
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i.i.i, i64 noundef %.val.i4.sink.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #32, !noalias !1752
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i

bb.ih:                                            ; preds = %bb.if
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %.val.i1.i.i.i.i.i.i = load i64, ptr %i.aft, align 8, !range !12, !alias.scope !1753, !noalias !1748, !noundef !11 ; 2 uses
  %i.afu = icmp eq i64 %.val.i1.i.i.i.i.i.i, 0
  br i1 %i.afu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

bb.ii:                                            ; preds = %bb.if
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %.val.i4.i.i.i.i.i.i = load i64, ptr %i.afv, align 8, !range !12, !alias.scope !1754, !noalias !1748, !noundef !11 ; 2 uses
  %i.afw = icmp eq i64 %.val.i4.i.i.i.i.i.i, 0
  br i1 %i.afw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i: ; preds = %bb.ii, %bb.ih, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECslbrwWrVtb7E_5uu_tr.exit.sink.split.i.i.i.i.i.i, %bb.ig, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %bb.if, %.lr.ph.i.i.i.i
  %i.afx = icmp eq i64 %i.afn, %.sroa.12.0.i
  br i1 %i.afx, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i
  %i.afy = icmp eq i64 %.sroa.02.0.i, 0
  br i1 %i.afy, label %bb.io, label %.sink.split

bb.ij:                                            ; preds = %bb.hy
  unreachable

.thread.loopexit.i:                               ; preds = %bb.ct, %bb.y, %bb.g, %bb.d
  %.sroa.7.096.i.i.i.lcssa.sink.i = phi ptr [ %.sroa.030.0.copyload.i.i.i.i.i, %bb.g ], [ %.sroa.036.0.copyload.i8.i.i.i.i, %bb.y ], [ %i.pr, %bb.ct ], [ %.sroa.7.096.i.i.i.i, %bb.d ]
  %i.afz = ptrtoint ptr %.sroa.7.096.i.i.i.lcssa.sink.i to i64
  br label %.thread.i

.thread303.i:                                     ; preds = %bb.hy, %.thread124.i
  %.sroa.19.0.insert.ext = zext nneg i8 %.sroa.63.6.ph.fr.i to i64
  %.sroa.19.1.insert.ext = zext i56 %.sroa.79.6.ph.i to i64
  %.sroa.19.1.insert.shift = shl nuw i64 %.sroa.19.1.insert.ext, 8
  %.sroa.19.1.insert.insert = or disjoint i64 %.sroa.19.1.insert.shift, %.sroa.19.0.insert.ext
  %i.aga = inttoptr i64 %.sroa.19.1.insert.insert to ptr
  br label %.thread.i

.thread.i:                                        ; preds = %bb.hy, %.thread.loopexit.i, %.thread88, %.thread303.i
  %.sroa.19.0 = phi ptr [ %i.aga, %.thread303.i ], [ undef, %.thread88 ], [ undef, %.thread.loopexit.i ], [ undef, %bb.hy ] ; 2 uses
  %.sroa.16.0 = phi i64 [ %.sroa.56.6.ph.i, %.thread303.i ], [ undef, %.thread88 ], [ undef, %.thread.loopexit.i ], [ undef, %bb.hy ] ; 2 uses
  %.sroa.12.0 = phi i64 [ %.sroa.44.6.ph.i, %.thread303.i ], [ %.sroa.044.0.copyload.i.pre, %.thread88 ], [ %i.afz, %.thread.loopexit.i ], [ %.sroa.44.6.ph.i, %bb.hy ] ; 2 uses
  %.sroa.626.0 = phi i64 [ 2, %.thread303.i ], [ 0, %.thread88 ], [ 0, %.thread.loopexit.i ], [ 0, %bb.hy ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  %i.agb = icmp eq i64 %.sroa.12.0.i, 0
  br i1 %i.agb, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs6JMX4GRUq9U_4core6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtB1j_11BadSequenceEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit.i113.i, label %.lr.ph.i.i.i110.i

.lr.ph.i.i.i110.i:                                ; preds = %.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i112.i
  %.sroa.0.03.i.i.i111.i = phi i64 [ %i.agd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i112.i ], [ 0, %.thread.i ] ; 2 uses
  %i.agc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.9.0.i, i64 %.sroa.0.03.i.i.i111.i ; 5 uses
  %i.agd = add nuw nsw i64 %.sroa.0.03.i.i.i111.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  %i.age = load i32, ptr %i.agc, align 8, !range !26, !alias.scope !1757, !noalias !1758, !noundef !11 ; 2 uses
  %i.agf = icmp eq i32 %i.age, -1
  br i1 %i.agf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i112.i, label %bb.ik

bb.ik:                                            ; preds = %.lr.ph.i.i.i110.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  switch i32 %i.age, label %bb.il [
    i32 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i112.i
    i32 1, label %bb.im
    i32 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i112.i
    i32 3, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i112.i
    i32 4, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceNtBZ_11BadSequenceEEB11_.exit.i.i.i112.i
    i32 5, label %bb.in
end_hunk_1
