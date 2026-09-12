Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.12?download=true
inline.NumInlined: 12919
inline.NumDeleted: 5719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5block5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core:bb.a
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !119

bb.f:                                             ; preds = %bb.a
  switch i8 %3, label %default.unreachable1 [
    i8 0, label %bb.t
    i8 2, label %bb.u
    i8 4, label %bb.v
    i8 1, label %bb.w
    i8 3, label %bb.x
  ], !prof !119

bb.g:                                             ; preds = %bb.b
  %i.a = cmpxchg ptr %0, ptr null, ptr %1 monotonic monotonic, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.b = cmpxchg ptr %0, ptr null, ptr %1 monotonic acquire, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.c = cmpxchg ptr %0, ptr null, ptr %1 monotonic seq_cst, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i1 } [ %i.a, %bb.g ], [ %i.b, %bb.h ], [ %i.c, %bb.i ], [ %i.d, %bb.k ], [ %i.e, %bb.l ], [ %i.f, %bb.m ], [ %i.g, %bb.n ], [ %i.h, %bb.o ], [ %i.i, %bb.p ], [ %i.j, %bb.q ], [ %i.k, %bb.r ], [ %i.l, %bb.s ], [ %i.m, %bb.t ], [ %i.n, %bb.u ], [ %i.o, %bb.v ]
  %.sroa.01.0 = extractvalue { ptr, i1 } %.pn, 0
  ret ptr %.sroa.01.0

bb.k:                                             ; preds = %bb.c
  %i.d = cmpxchg ptr %0, ptr null, ptr %1 release monotonic, align 8
  br label %bb.j

bb.l:                                             ; preds = %bb.c
  %i.e = cmpxchg ptr %0, ptr null, ptr %1 release acquire, align 8
  br label %bb.j

bb.m:                                             ; preds = %bb.c
  %i.f = cmpxchg ptr %0, ptr null, ptr %1 release seq_cst, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.d
  %i.g = cmpxchg ptr %0, ptr null, ptr %1 acquire monotonic, align 8
  br label %bb.j

bb.o:                                             ; preds = %bb.d
  %i.h = cmpxchg ptr %0, ptr null, ptr %1 acquire acquire, align 8
  br label %bb.j

bb.p:                                             ; preds = %bb.d
  %i.i = cmpxchg ptr %0, ptr null, ptr %1 acquire seq_cst, align 8
  br label %bb.j

bb.q:                                             ; preds = %bb.e
  %i.j = cmpxchg ptr %0, ptr null, ptr %1 acq_rel monotonic, align 8
  br label %bb.j

bb.r:                                             ; preds = %bb.e
  %i.k = cmpxchg ptr %0, ptr null, ptr %1 acq_rel acquire, align 8
  br label %bb.j

bb.s:                                             ; preds = %bb.e
  %i.l = cmpxchg ptr %0, ptr null, ptr %1 acq_rel seq_cst, align 8
  br label %bb.j

bb.t:                                             ; preds = %bb.f
  %i.m = cmpxchg ptr %0, ptr null, ptr %1 seq_cst monotonic, align 8
  br label %bb.j

bb.u:                                             ; preds = %bb.f
  %i.n = cmpxchg ptr %0, ptr null, ptr %1 seq_cst acquire, align 8
  br label %bb.j

bb.v:                                             ; preds = %bb.f
  %i.o = cmpxchg ptr %0, ptr null, ptr %1 seq_cst seq_cst, align 8
  br label %bb.j

bb.w:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @93, ptr noundef nonnull inttoptr (i64 105 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #49
  unreachable

bb.x:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @95, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #49
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting13write_rfc3339NtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [4 x i8], align 4                 ; 2 uses
  %i.j = load i32, ptr %1, align 4, !range !120, !noundef !27 ; 2 uses
  %i.k = ashr i32 %i.j, 13                        ; 4 uses
  store i32 %i.k, ptr %i.i, align 4
  %or.cond = icmp ult i32 %i.k, 10000
  br i1 %or.cond, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit33, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.l = call noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @100, ptr noundef nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.l, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs14kWLkQVSKO_14deltalake_core.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !12391
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit33, %bb.b
  %i.m = phi i64 [ %i.bi, %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit33 ], [ %.pre, %bb.b ] ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 30 uses
  %i.o = icmp sgt i64 %i.m, -1
  call void @llvm.assume(i1 %i.o)
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !12391, !nonnull !27, !noundef !27
  %i.r = load i64, ptr %i.n, align 8, !alias.scope !12391, !noundef !27 ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 45, ptr %i.t, align 1
  %i.u = add nuw i64 %i.m, 1                      ; 2 uses
  store i64 %i.u, ptr %i.n, align 8, !alias.scope !12391
  %i.v = lshr i32 %i.j, 3                         ; 2 uses
  %i.w = and i32 %i.v, 1023                       ; 3 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp samesign ult i32 %i.w, 733
  br i1 %i.y, label %bb.d, label %bb.e

_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit33: ; preds = %bb.a
  %.lhs.trunc = trunc nuw nsw i32 %i.k to i16
  %i.z = udiv i16 %.lhs.trunc, 100
  %i.aa = trunc nuw nsw i16 %i.z to i8            ; 2 uses
  %i.ab = udiv i8 %i.aa, 10
  %i.ac = or disjoint i8 %i.ab, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !12392, !noundef !27 ; 5 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !12392, !nonnull !27, !noundef !27
  %i.ai = load i64, ptr %i.ad, align 8, !alias.scope !12392, !noundef !27 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  store i8 %i.ac, ptr %i.ak, align 1
  %i.al = add nuw nsw i64 %i.ae, 1
  store i64 %i.al, ptr %i.ad, align 8, !alias.scope !12392
  %i.am = urem i8 %i.aa, 10
  %i.an = or disjoint i8 %i.am, 48
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ao = load ptr, ptr %i.ag, align 8, !alias.scope !12393, !nonnull !27, !noundef !27
  %i.ap = load i64, ptr %i.ad, align 8, !alias.scope !12393, !noundef !27 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  store i8 %i.an, ptr %i.ar, align 1
  %i.as = add nuw nsw i64 %i.ae, 2
  store i64 %i.as, ptr %i.ad, align 8, !alias.scope !12393
  %.lhs.trunc48 = trunc nuw i32 %i.k to i16
  %i.at = urem i16 %.lhs.trunc48, 100
  %i.au = trunc nuw nsw i16 %i.at to i8           ; 2 uses
  %i.av = udiv i8 %i.au, 10
  %i.aw = or disjoint i8 %i.av, 48
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ax = load ptr, ptr %i.ag, align 8, !alias.scope !12394, !nonnull !27, !noundef !27
  %i.ay = load i64, ptr %i.ad, align 8, !alias.scope !12394, !noundef !27 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, -1
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ay
  store i8 %i.aw, ptr %i.ba, align 1
  %i.bb = add nuw i64 %i.ae, 3
  store i64 %i.bb, ptr %i.ad, align 8, !alias.scope !12394
  %i.bc = urem i8 %i.au, 10
  %i.bd = or disjoint i8 %i.bc, 48
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.be = load ptr, ptr %i.ag, align 8, !alias.scope !12395, !nonnull !27, !noundef !27
  %i.bf = load i64, ptr %i.ad, align 8, !alias.scope !12395, !noundef !27 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  store i8 %i.bd, ptr %i.bh, align 1
  %i.bi = add nuw i64 %i.ae, 4                    ; 2 uses
  store i64 %i.bi, ptr %i.ad, align 8, !alias.scope !12395
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr @13, i64 %i.x
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !27
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = add nuw nsw i32 %i.w, %i.bl             ; 3 uses
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = trunc nuw nsw i32 %i.bn to i8           ; 2 uses
  %.cmp = icmp samesign ugt i32 %i.bm, 639
  %i.bp = zext i1 %.cmp to i8
  %i.bq = or disjoint i8 %i.bp, 48
  %i.br = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.br)
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.bs = load ptr, ptr %i.p, align 8, !alias.scope !12396, !nonnull !27, !noundef !27
  %i.bt = load i64, ptr %i.n, align 8, !alias.scope !12396, !noundef !27 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 %i.bq, ptr %i.bv, align 1
  %i.bw = add nuw i64 %i.m, 2
  store i64 %i.bw, ptr %i.n, align 8, !alias.scope !12396
  %.urem = add nsw i8 %i.bo, -10
  %.cmp43 = icmp samesign ult i32 %i.bm, 640
  %i.bx = select i1 %.cmp43, i8 %i.bo, i8 %.urem
  %i.by = or disjoint i8 %i.bx, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.bz = load ptr, ptr %i.p, align 8, !alias.scope !12397, !nonnull !27, !noundef !27
  %i.ca = load i64, ptr %i.n, align 8, !alias.scope !12397, !noundef !27 ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ca
  store i8 %i.by, ptr %i.cc, align 1
  %i.cd = add nuw nsw i64 %i.m, 3
  store i64 %i.cd, ptr %i.n, align 8, !alias.scope !12397
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ce = load ptr, ptr %i.p, align 8, !alias.scope !12398, !nonnull !27, !noundef !27
  %i.cf = load i64, ptr %i.n, align 8, !alias.scope !12398, !noundef !27 ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, -1
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i8 45, ptr %i.ch, align 1
  %i.ci = add nuw nsw i64 %i.m, 4
  store i64 %i.ci, ptr %i.n, align 8, !alias.scope !12398
  %3 = add nuw nsw i32 %i.v, %i.bl
  %4 = lshr i32 %3, 1
  %5 = trunc i32 %4 to i8
  %i.cj = and i8 %5, 31                           ; 2 uses
  %i.ck = udiv i8 %i.cj, 10
  %i.cl = or disjoint i8 %i.ck, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.cm = load ptr, ptr %i.p, align 8, !alias.scope !12399, !nonnull !27, !noundef !27
  %i.cn = load i64, ptr %i.n, align 8, !alias.scope !12399, !noundef !27 ; 2 uses
  %i.co = icmp sgt i64 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cn
  store i8 %i.cl, ptr %i.cp, align 1
  %i.cq = add nuw i64 %i.m, 5
  store i64 %i.cq, ptr %i.n, align 8, !alias.scope !12399
  %i.cr = urem i8 %i.cj, 10
  %i.cs = or disjoint i8 %i.cr, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ct = load ptr, ptr %i.p, align 8, !alias.scope !12400, !nonnull !27, !noundef !27
  %i.cu = load i64, ptr %i.n, align 8, !alias.scope !12400, !noundef !27 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  store i8 %i.cs, ptr %i.cw, align 1
  %i.cx = add nuw nsw i64 %i.m, 6
  store i64 %i.cx, ptr %i.n, align 8, !alias.scope !12400
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.cy = load ptr, ptr %i.p, align 8, !alias.scope !12401, !nonnull !27, !noundef !27
  %i.cz = load i64, ptr %i.n, align 8, !alias.scope !12401, !noundef !27 ; 2 uses
  %i.da = icmp sgt i64 %i.cz, -1
  call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  store i8 84, ptr %i.db, align 1
  %i.dc = add nuw i64 %i.m, 7                     ; 2 uses
  store i64 %i.dc, ptr %i.n, align 8, !alias.scope !12401
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !noundef !27 ; 3 uses
  %i.df = udiv i32 %i.de, 3600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !27 ; 3 uses
  %i.di = icmp ugt i32 %i.dh, 999999999           ; 2 uses
  %i.dj = add i32 %i.dh, -1000000000
  %storemerge = select i1 %i.di, i32 %i.dj, i32 %i.dh
  store i32 %storemerge, ptr %i.g, align 4
  %i.dk = trunc i32 %i.df to i8                   ; 3 uses
  %i.dl = icmp ugt i8 %i.dk, 99
  br i1 %i.dl, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #49
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.dm = urem i32 %i.de, 60
  %i.dn = zext i1 %i.di to i32
  %.sroa.04.0 = add nuw nsw i32 %i.dm, %i.dn
  %i.do = udiv i32 %i.de, 60
  %i.dp = urem i32 %i.do, 60
  %i.dq = udiv i8 %i.dk, 10
  %i.dr = or disjoint i8 %i.dq, 48
  %i.ds = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.ds)
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.dt = load ptr, ptr %i.p, align 8, !alias.scope !12402, !nonnull !27, !noundef !27
  %i.du = load i64, ptr %i.n, align 8, !alias.scope !12402, !noundef !27 ; 2 uses
  %i.dv = icmp sgt i64 %i.du, -1
  call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du
  store i8 %i.dr, ptr %i.dw, align 1
  %i.dx = add nuw i64 %i.m, 8
  store i64 %i.dx, ptr %i.n, align 8, !alias.scope !12402
  %i.dy = urem i8 %i.dk, 10
  %i.dz = or disjoint i8 %i.dy, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ea = load ptr, ptr %i.p, align 8, !alias.scope !12403, !nonnull !27, !noundef !27
  %i.eb = load i64, ptr %i.n, align 8, !alias.scope !12403, !noundef !27 ; 2 uses
  %i.ec = icmp sgt i64 %i.eb, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  store i8 %i.dz, ptr %i.ed, align 1
  %i.ee = add nuw nsw i64 %i.m, 9
  store i64 %i.ee, ptr %i.n, align 8, !alias.scope !12403
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ef = load ptr, ptr %i.p, align 8, !alias.scope !12404, !nonnull !27, !noundef !27
  %i.eg = load i64, ptr %i.n, align 8, !alias.scope !12404, !noundef !27 ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, -1
  call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  store i8 58, ptr %i.ei, align 1
  %i.ej = add nuw nsw i64 %i.m, 10
  store i64 %i.ej, ptr %i.n, align 8, !alias.scope !12404
  %i.ek = trunc nuw nsw i32 %i.dp to i8           ; 2 uses
  %i.el = udiv i8 %i.ek, 10
  %i.em = or disjoint i8 %i.el, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.en = load ptr, ptr %i.p, align 8, !alias.scope !12405, !nonnull !27, !noundef !27
  %i.eo = load i64, ptr %i.n, align 8, !alias.scope !12405, !noundef !27 ; 2 uses
  %i.ep = icmp sgt i64 %i.eo, -1
  call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eo
  store i8 %i.em, ptr %i.eq, align 1
  %i.er = add nuw i64 %i.m, 11
  store i64 %i.er, ptr %i.n, align 8, !alias.scope !12405
  %i.es = urem i8 %i.ek, 10
  %i.et = or disjoint i8 %i.es, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.eu = load ptr, ptr %i.p, align 8, !alias.scope !12406, !nonnull !27, !noundef !27
  %i.ev = load i64, ptr %i.n, align 8, !alias.scope !12406, !noundef !27 ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ev
  store i8 %i.et, ptr %i.ex, align 1
  %i.ey = add nuw nsw i64 %i.m, 12
  store i64 %i.ey, ptr %i.n, align 8, !alias.scope !12406
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ez = load ptr, ptr %i.p, align 8, !alias.scope !12407, !nonnull !27, !noundef !27
  %i.fa = load i64, ptr %i.n, align 8, !alias.scope !12407, !noundef !27 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.fb)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fa
  store i8 58, ptr %i.fc, align 1
  %i.fd = add nuw nsw i64 %i.m, 13
  store i64 %i.fd, ptr %i.n, align 8, !alias.scope !12407
  %i.fe = trunc nuw nsw i32 %.sroa.04.0 to i8     ; 2 uses
  %i.ff = udiv i8 %i.fe, 10
  %i.fg = or disjoint i8 %i.ff, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.fh = load ptr, ptr %i.p, align 8, !alias.scope !12408, !nonnull !27, !noundef !27
  %i.fi = load i64, ptr %i.n, align 8, !alias.scope !12408, !noundef !27 ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  store i8 %i.fg, ptr %i.fk, align 1
  %i.fl = add nuw i64 %i.m, 14
  store i64 %i.fl, ptr %i.n, align 8, !alias.scope !12408
  %i.fm = urem i8 %i.fe, 10
  %i.fn = or disjoint i8 %i.fm, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.fo = load ptr, ptr %i.p, align 8, !alias.scope !12409, !nonnull !27, !noundef !27
  %i.fp = load i64, ptr %i.n, align 8, !alias.scope !12409, !noundef !27 ; 2 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fp
  store i8 %i.fn, ptr %i.fr, align 1
  %i.fs = add nuw i64 %i.m, 15
  store i64 %i.fs, ptr %i.n, align 8, !alias.scope !12409
  %i.ft = load i32, ptr %i.g, align 4, !noundef !27 ; 5 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.a, align 4
  %i.fv = call noundef zeroext i1 @_RINvMs0_NtNtCshmPyUV8PP35_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread: ; preds = %bb.l, %bb.k, %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.fw = urem i32 %i.ft, 1000000
  %i.fx = udiv i32 %i.ft, 1000000
  %i.fy = icmp eq i32 %i.fw, 0
  br i1 %i.fy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.fx, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.fz = call noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @101, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.fz, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.ga = urem i32 %i.ft, 1000
  %i.gb = udiv i32 %i.ft, 1000
  %i.gc = icmp eq i32 %i.ga, 0
  br i1 %i.gc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.gb, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.gd = call noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @102, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.gd, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, label %bb.g

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCshmPyUV8PP35_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.az = load i8, ptr %i.av, align 8, !range !147, !noalias !24533, !noundef !27
  %.not204.not.i = icmp eq i8 %i.az, 7
  br i1 %.not204.not.i, label %.loopexit23, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bc = load i32, ptr %i.bb, align 4, !alias.scope !24531, !noalias !24532 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.018.0.copyload.i.i = load i32, ptr %i.bd, align 8, !alias.scope !24531, !noalias !24532
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.10.0.copyload.i.i = load i32, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !alias.scope !24531, !noalias !24532 ; 6 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.21.0.copyload.i.i = load i32, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !alias.scope !24531, !noalias !24532 ; 5 uses
  %i.be = load i64, ptr %0, align 8, !range !29, !alias.scope !24531, !noalias !24532
  %.not.i66.i = icmp eq i64 %i.be, -9223372036854775808 ; 4 uses
  %i.bf = trunc i32 %.sroa.018.0.copyload.i.i to i1 ; 13 uses
  %i.bg = urem i32 %.sroa.21.0.copyload.i.i, 1000000000 ; 9 uses
  %.sroa.4118.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bh = udiv i32 %.sroa.21.0.copyload.i.i, 1000
  %i.bi = urem i32 %i.bh, 1000000                 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bj = udiv i32 %.sroa.21.0.copyload.i.i, 1000000
  %.lhs.trunc13.i.i = trunc nuw nsw i32 %i.bj to i16
  %i.bk = urem i16 %.lhs.trunc13.i.i, 1000
  %.zext14.i.i = zext nneg i16 %i.bk to i32       ; 2 uses
  %.sroa.4110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.476.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.4106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.498.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bl = icmp eq i32 %i.bg, 0
  %i.bm = urem i32 %i.bg, 1000000
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = urem i32 %i.bg, 1000
  %i.bp = icmp eq i32 %i.bo, 0
  %.sroa.494.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bq = udiv i32 %i.bg, 1000
  %.sroa.490.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.br = udiv i32 %i.bg, 1000000
  %.sroa.486.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.bs = icmp ugt i32 %.sroa.10.0.copyload.i.i, 43199 ; 3 uses
  %.146.i.i = select i1 %i.bs, ptr @48, ptr @47
  %i.bt = select i1 %i.bs, ptr getelementptr inbounds nuw (i8, ptr @48, i64 2), ptr getelementptr inbounds nuw (i8, ptr @47, i64 2)
  %.sroa.078.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 11 uses
  %.sroa.379.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 88 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.not140.i.i = icmp eq i32 %i.bc, 0             ; 19 uses
  %i.by = lshr i32 %i.bc, 4
  %i.bz = and i32 %i.by, 511                      ; 9 uses
  %i.ca = and i32 %i.bc, 7
  %i.cb = add nuw nsw i32 %i.bz, %i.ca
  %.lhs.trunc9.i.i = trunc nuw nsw i32 %i.cb to i16
  %i.cc = urem i16 %.lhs.trunc9.i.i, 7            ; 6 uses
  %i.cd = icmp samesign ult i16 %i.cc, 6          ; 2 uses
  %narrow42.i.i = add nuw nsw i16 %i.cc, 1
  %narrow43.i.i = select i1 %i.cd, i16 %narrow42.i.i, i16 0
  %i.ce = zext nneg i16 %narrow43.i.i to i64      ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr @46, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr @38, i64 %i.ce ; 2 uses
  %i.ci = lshr i32 %i.bc, 3                       ; 3 uses
  %i.cj = and i32 %i.ci, 1023                     ; 7 uses
  %i.ck = zext nneg i32 %i.cj to i64              ; 7 uses
  %i.cl = icmp samesign ult i32 %i.cj, 733        ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr @13, i64 %i.ck ; 6 uses
  %i.cn = icmp ne i32 %i.bc, 0
  %or.cond5.i.i = select i1 %i.cn, i1 %i.bf, i1 false ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !alias.scope !24531, !noalias !24532 ; 7 uses
  %i.cs = ashr i32 %i.bc, 13                      ; 12 uses
  %or.cond.i121.i = icmp ult i32 %i.cs, 10000
  %.lhs.trunc31.i.i = trunc nuw nsw i32 %i.cs to i16 ; 2 uses
  %i.ct = udiv i16 %.lhs.trunc31.i.i, 100
  %i.cu = trunc nuw nsw i16 %i.ct to i8           ; 2 uses
  %i.cv = udiv i8 %i.cu, 10
  %i.cw = or disjoint i8 %i.cv, 48
  %i.cx = urem i8 %i.cu, 10
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = urem i16 %.lhs.trunc31.i.i, 100
  %i.da = trunc nuw nsw i16 %i.cz to i8           ; 2 uses
  %i.db = udiv i8 %i.da, 10
  %i.dc = or disjoint i8 %i.db, 48
  %i.dd = urem i8 %i.da, 10
  %i.de = or disjoint i8 %i.dd, 48
  %i.df = udiv i32 %.sroa.10.0.copyload.i.i, 3600 ; 2 uses
  %i.dg = trunc i32 %i.df to i8                   ; 4 uses
  %i.dh = icmp ugt i8 %i.dg, 99
  %i.di = udiv i32 %.sroa.10.0.copyload.i.i, 60
  %i.dj = urem i32 %i.di, 60                      ; 2 uses
  %i.dk = urem i32 %.sroa.10.0.copyload.i.i, 60
  %i.dl = udiv i8 %i.dg, 10                       ; 2 uses
  %i.dm = or disjoint i8 %i.dl, 48
  %i.dn = urem i8 %i.dg, 10
  %i.do = or disjoint i8 %i.dn, 48                ; 2 uses
  %i.dp = trunc nuw nsw i32 %i.dj to i8           ; 2 uses
  %i.dq = udiv i8 %i.dp, 10
  %i.dr = or disjoint i8 %i.dq, 48                ; 2 uses
  %i.ds = urem i8 %i.dp, 10
  %i.dt = or disjoint i8 %i.ds, 48                ; 2 uses
  %i.du = udiv i32 %.sroa.21.0.copyload.i.i, 1000000000
  %i.dv = add nuw nsw i32 %i.du, %i.dk            ; 2 uses
  %i.dw = trunc nuw nsw i32 %i.dv to i8           ; 2 uses
  %i.dx = udiv i8 %i.dw, 10
  %i.dy = or disjoint i8 %i.dx, 48                ; 2 uses
  %i.dz = urem i8 %i.dw, 10
  %i.ea = or disjoint i8 %i.dz, 48                ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.eh = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.ei = sext i32 %i.cr to i64
  %.sroa.057.0.i.i = select i1 %.not.i66.i, i64 0, i64 %i.ei
  %i.ej = add nsw i32 %i.cs, -1
  %i.ek = icmp slt i32 %i.cs, 1                   ; 2 uses
  %i.el = sub nsw i32 1, %i.cs
  %i.em = udiv i32 %i.el, 400
  %i.en = add nuw nsw i32 %i.em, 1                ; 2 uses
  %i.eo = mul nuw nsw i32 %i.en, 400
  %.neg.i.i = mul nsw i32 %i.en, -146097
  %i.ep = zext i32 %.sroa.10.0.copyload.i.i to i64
  %i.eq = add nuw nsw i32 %i.bz, -719163
  %i.er = sub nsw i64 %i.ep, %.sroa.057.0.i.i
  %.sroa.426.0..sroa_idx.i190.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.445.0..sroa_idx.i191.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.430.0..sroa_idx.i193.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.439.0..sroa_idx.i194.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.434.0..sroa_idx.i195.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.eu = zext nneg i32 %i.bg to i64
  %.sroa.426.0..sroa_idx.i182.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.445.0..sroa_idx.i183.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.430.0..sroa_idx.i185.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.439.0..sroa_idx.i186.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %.sroa.434.0..sroa_idx.i187.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ex = icmp samesign ult i32 %i.dv, 10
  %i.ey = icmp samesign ult i32 %i.dj, 10
  %i.ez = urem i32 %i.df, 12                      ; 2 uses
  %i.fa = icmp eq i32 %i.ez, 0
  %i.fb = trunc nuw nsw i32 %i.ez to i8
  %i.fc = select i1 %i.fa, i8 12, i8 %i.fb
  %.frozen.i.i = freeze i8 %i.fc                  ; 4 uses
  %.cmp9.i.i = icmp samesign ugt i8 %.frozen.i.i, 9
  %i.fd = icmp ult i8 %.frozen.i.i, 10            ; 2 uses
  %i.fe = select i1 %.cmp9.i.i, i8 49, i8 48
  %.urem10.i.i = add i8 %.frozen.i.i, -10
  %i.ff = select i1 %i.fd, i8 %.frozen.i.i, i8 %.urem10.i.i
  %i.fg = or disjoint i8 %i.ff, 48
  %i.fh = icmp ult i8 %i.dg, 10
  %i.fi = add nuw nsw i8 %i.dl, 48
  %i.fj = zext nneg i32 %i.bz to i64
  %.sroa.426.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.445.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.430.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.434.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %switch.idx.cast.i.i = trunc nuw nsw i16 %i.cc to i8
  %switch.offset.i.i = add nuw nsw i8 %switch.idx.cast.i.i, 49
  %i.fm = trunc i32 %i.bc to i8
  %i.fn = and i8 %i.fm, 15                        ; 4 uses
  %i.fo = trunc nuw nsw i32 %i.bz to i16
  %i.fp = add nuw nsw i16 %i.fo, 6
  %.lhs.trunc1.i142.i.i = sub nuw nsw i16 %i.fp, %i.cc ; 2 uses
  %i.fq = udiv i16 %.lhs.trunc1.i142.i.i, 7
  %i.fr = trunc nuw nsw i16 %i.fq to i8           ; 2 uses
  %i.fs = udiv i8 %i.fr, 10
  %i.ft = icmp samesign ult i16 %.lhs.trunc1.i142.i.i, 70
  %i.fu = add nuw nsw i8 %i.fs, 48
  %i.fv = urem i8 %i.fr, 10
  %i.fw = or disjoint i8 %i.fv, 48
  %spec.select.i131.i.i = zext nneg i16 %i.cc to i32 ; 2 uses
  %i.fx = add nuw nsw i32 %spec.select.i131.i.i, 7
  %.pn.i.i.i = select i1 %i.cd, i32 %i.fx, i32 %spec.select.i131.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.bz, 6
  %i.fy = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %i.fz = trunc nsw i32 %i.fy to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %i.fz, 6
  %i.ga = sdiv i16 %.lhs.trunc1.i.i.i, 7          ; 2 uses
  %i.gb = trunc nuw nsw i16 %i.ga to i8           ; 2 uses
  %i.gc = udiv i8 %i.gb, 10
  %i.gd = icmp samesign ult i16 %i.ga, 10
  %i.ge = add nuw nsw i8 %i.gc, 48
  %i.gf = urem i8 %i.gb, 10
  %i.gg = or disjoint i8 %i.gf, 48
  %i.gh = srem i32 %i.cs, 100                     ; 4 uses
  %i.gi = icmp slt i32 %i.gh, 0
  %i.gj = add nsw i32 %i.gh, 100
  %spec.select.i.i.i = select i1 %i.gi, i32 %i.gj, i32 %i.gh ; 2 uses
  %i.gk = trunc nuw nsw i32 %spec.select.i.i.i to i8 ; 2 uses
  %i.gl = udiv i8 %i.gk, 10
  %i.gm = icmp samesign ult i32 %spec.select.i.i.i, 10
  %i.gn = add nuw nsw i8 %i.gl, 48
  %i.go = urem i8 %i.gk, 10
  %i.gp = or disjoint i8 %i.go, 48
  %i.gq = sdiv i32 %i.cs, 100
  %.lobit.i.i.i = ashr i32 %i.gh, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.gq
  %i.gr = trunc i32 %.sroa.0.0.i.i.i to i8        ; 3 uses
  %i.gs = udiv i8 %i.gr, 10
  %i.gt = icmp ult i8 %i.gr, 10
  %i.gu = add nuw nsw i8 %i.gs, 48
  %i.gv = urem i8 %i.gr, 10
  %i.gw = or disjoint i8 %i.gv, 48
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 4 uses
  %spec.select.i = select i1 %i.ek, i32 %.neg.i.i, i32 0
  %i.gy = select i1 %i.ek, i32 %i.eo, i32 0
  %spec.select206.i = add nsw i32 %i.ej, %i.gy    ; 2 uses
  %i.gz = sdiv i32 %spec.select206.i, 100         ; 2 uses
  %i.ha = mul nsw i32 %spec.select206.i, 1461
  %i.hb = ashr i32 %i.ha, 2
  %i.hc = ashr i32 %i.gz, 2
  %i.hd = add i32 %i.eq, %spec.select.i
  %i.he = sub i32 %i.hd, %i.gz
  %i.hf = add i32 %i.he, %i.hb
  %narrow.i.i = add i32 %i.hf, %i.hc
  %i.hg = sext i32 %narrow.i.i to i64
  %i.hh = mul nsw i64 %i.hg, 86400
  %i.hi = add nsw i64 %i.er, %i.hh
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hn = insertelement <2 x ptr> poison, ptr %.146.i.i, i64 0
  %i.ho = insertelement <2 x ptr> %i.hn, ptr %i.bt, i64 1
  %i.hp = shl nuw nsw i16 %i.cc, 3
  %switch.shiftamt = zext nneg i16 %i.hp to i56
  %switch.downshift = lshr i56 13570401019048497, %switch.shiftamt
  %switch.masked = trunc i56 %switch.downshift to i8
  br label %bb.b

.loopexit.i:                                      ; preds = %.noexc84.i, %.noexc.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.noexc163.i.i, %.noexc161.i.i, %.noexc.peel.i.i
  %lpad.loopexit163.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.fc, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.noexc11, %.noexc10, %.noexc9, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i2.i, %bb.ff, %bb.fd, %.noexc152.i, %.noexc151.i, %.noexc150.i, %.noexc149.i, %.noexc148.i, %.noexc147.i, %.noexc146.i, %.noexc145.i, %.noexc144.i, %bb.fb, %.noexc141.i, %.noexc140.i, %.noexc139.i, %.noexc138.i, %.noexc137.i, %.noexc136.i, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str.exit15.i.i, %bb.fa, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i128.i, %.noexc132.i, %bb.ez, %.noexc129.i, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str.exit.i123.i, %bb.ew, %bb.ev, %bb.eo, %bb.en, %bb.ek, %bb.ej, %bb.ei, %bb.ef, %.noexc97.i, %bb.ee, %.noexc95.i, %bb.ed, %.noexc93.i, %bb.ec, %bb.eb, %bb.ea, %bb.dy, %bb.dx, %bb.dv, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str.exit159.i.i, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str.exit156.i.i, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str.exit153.i.i, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_str.exit.i.i, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit181.i.i, %bb.cc, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i176.i.i, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit175.i.i, %bb.bz, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i170.i.i, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit169.i.i, %bb.bw, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i164.i.i, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit163.i.i, %bb.bt, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i158.i.i, %bb.bq, %bb.bp, %bb.bo, %switch.lookup.i.i, %switch.lookup, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit155.i.i, %bb.bm, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i150.i.i, %bb.bk, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149.i.i, %bb.bj, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i144.i.i, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit137.i.i, %bb.bg, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i132.i.i, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit130.i.i, %bb.bd, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i125.i.i, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit124.i.i, %bb.az, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i119.i.i, %bb.au, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit118.i.i, %bb.as, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i113.i.i, %bb.aq, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit111.i.i, %bb.ap, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i106.i.i, %bb.an, %bb.am, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit103.i.i, %bb.al, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i98.i.i, %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.ai, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i.i.i
  %lpad.loopexit166.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.invoke240.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit163.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit166.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCshmPyUV8PP35_6chrono6format4ItemECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.au) #44
  br label %.body

bb.b:                                             ; preds = %.noexc4, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !24533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !24533
  %i.hq = load i8, ptr %i.au, align 8, !range !69, !noalias !24533, !noundef !27
  switch i8 %i.hq, label %default.unreachable [
    i8 0, label %bb.fd
    i8 1, label %bb.ff
    i8 2, label %bb.fd
    i8 3, label %bb.ff
    i8 4, label %bb.c
    i8 5, label %bb.ck
    i8 6, label %.loopexit
  ]

default.unreachable:                              ; preds = %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, %bb.cd, %bb.cb, %bb.by, %bb.bv, %bb.bs, %bb.bn, %bb.bl, %bb.bi, %bb.bf, %bb.bc, %bb.ay, %bb.ar, %bb.ao, %bb.ak, %bb.ah, %bb.z, %bb.y, %bb.c, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.hr = load i8, ptr %i.eh, align 2, !range !40, !noalias !24533, !noundef !27 ; 18 uses
  %.val.i = load i8, ptr %i.ba, align 1, !range !24534, !noalias !24533, !noundef !27
  call void @llvm.experimental.noalias.scope.decl(metadata !24535)
  switch i8 %.val.i, label %default.unreachable [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.h
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
    i8 8, label %bb.l
    i8 9, label %bb.m
    i8 10, label %bb.n
    i8 11, label %bb.o
    i8 12, label %bb.p
    i8 13, label %bb.q
    i8 14, label %bb.r
    i8 15, label %bb.s
    i8 16, label %bb.t
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.x
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %.invoke.i

bb.e:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.ag

bb.f:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.aj

bb.g:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.am

bb.h:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.an

bb.i:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.aq

bb.j:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.at

bb.k:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.aw

bb.l:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.ba

bb.m:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.be

bb.n:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bh

bb.o:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bk

bb.p:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %switch.lookup

bb.q:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %switch.lookup.i.i

bb.r:                                             ; preds = %bb.c
  br i1 %.not140.i.i, label %.loopexit, label %bb.bn

bb.s:                                             ; preds = %bb.c
  br i1 %i.bf, label %bb.br, label %.loopexit

bb.t:                                             ; preds = %bb.c
  br i1 %i.bf, label %bb.bu, label %.loopexit

bb.u:                                             ; preds = %bb.c
  br i1 %i.bf, label %bb.bx, label %.loopexit

bb.v:                                             ; preds = %bb.c
  br i1 %i.bf, label %bb.ca, label %.loopexit

bb.w:                                             ; preds = %bb.c
  br i1 %i.bf, label %bb.cd, label %.loopexit

bb.x:                                             ; preds = %bb.c
  br i1 %or.cond5.i.i, label %_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate16num_days_from_ce.exit.i, label %.loopexit

.invoke.i:                                        ; preds = %.noexc13.i, %bb.d
  %i.hs = phi i32 [ %i.la, %.noexc13.i ], [ %i.cs, %bb.d ] ; 4 uses
  %i.ht = add nsw i32 %i.hs, -1000
  %or.cond.i = icmp ult i32 %i.ht, 9000
  br i1 %or.cond.i, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i2.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs14kWLkQVSKO_14deltalake_core.exit.thread.i

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs14kWLkQVSKO_14deltalake_core.exit.thread.i: ; preds = %.invoke.i
  %i.hu = sext i32 %i.hs to i64
  %spec.select.i.i7 = icmp ugt i32 %i.hs, 9999
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCshmPyUV8PP35_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core:bb.a

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i113.i.i: ; preds = %bb.ar, %.noexc19.i
  %i.mp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24553, !noalias !24542, !noundef !27 ; 2 uses
  %i.mq = icmp sgt i64 %i.mp, -1
  call void @llvm.assume(i1 %i.mq)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc20.i:                                       ; preds = %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i113.i.i
  %i.mr = add nuw nsw i8 %i.mm, 48
  %i.ms = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24553, !noalias !24542, !nonnull !27, !noundef !27
  %i.mt = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24553, !noalias !24542, !noundef !27 ; 2 uses
  %i.mu = icmp sgt i64 %i.mt, -1
  call void @llvm.assume(i1 %i.mu)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mt
  store i8 %i.mr, ptr %i.mv, align 1, !noalias !24544
  %i.mw = add nuw i64 %i.mp, 1                    ; 2 uses
  store i64 %i.mw, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24553, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit118.i.i

bb.as:                                            ; preds = %bb.ar
  %i.mx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24554, !noalias !24542, !noundef !27 ; 2 uses
  %i.my = icmp sgt i64 %i.mx, -1
  call void @llvm.assume(i1 %i.my)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc21.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc21.i:                                       ; preds = %bb.as
  %i.mz = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24554, !noalias !24542, !nonnull !27, !noundef !27
  %i.na = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24554, !noalias !24542, !noundef !27 ; 2 uses
  %i.nb = icmp sgt i64 %i.na, -1
  call void @llvm.assume(i1 %i.nb)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.na
  store i8 32, ptr %i.nc, align 1, !noalias !24544
  %i.nd = add nuw i64 %i.mx, 1                    ; 2 uses
  store i64 %i.nd, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24554, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit118.i.i

_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit118.i.i: ; preds = %.noexc21.i, %.noexc20.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i
  %i.ne = phi i64 [ %.pre.i116.i.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i114.i.i ], [ %i.nd, %.noexc21.i ], [ %i.mw, %.noexc20.i ] ; 2 uses
  %i.nf = icmp sgt i64 %i.ne, -1
  call void @llvm.assume(i1 %i.nf)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc22.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc22.i:                                       ; preds = %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit118.i.i
  %i.ng = or disjoint i8 %i.mn, 48
  %i.nh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24552, !noalias !24542, !nonnull !27, !noundef !27
  %i.ni = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24552, !noalias !24542, !noundef !27 ; 2 uses
  %i.nj = icmp sgt i64 %i.ni, -1
  call void @llvm.assume(i1 %i.nj)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ni
  store i8 %i.ng, ptr %i.nk, align 1, !noalias !24544
  %i.nl = add nuw i64 %i.ne, 1
  store i64 %i.nl, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24552, !noalias !24542
  br label %.critedge.i

bb.at:                                            ; preds = %bb.j
  br i1 %i.cl, label %bb.au, label %.invoke240.i

bb.au:                                            ; preds = %bb.at
  %i.nm = load i8, ptr %i.cm, align 1, !noalias !24555, !noundef !27
  %i.nn = zext i8 %i.nm to i32
  %i.no = add nuw nsw i32 %i.cj, %i.nn
  %i.np = lshr i32 %i.no, 6
  %i.nq = add nsw i32 %i.np, -1
  %i.nr = udiv i32 %i.nq, 3
  %i.ns = add nuw nsw i32 %i.nr, 49               ; 2 uses
  %i.nt = and i32 %i.ns, 255                      ; 2 uses
  %i.nu = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24556, !noalias !24542, !noundef !27 ; 2 uses
  %i.nv = icmp sgt i64 %i.nu, -1
  call void @llvm.assume(i1 %i.nv)
  %i.nw = icmp samesign ult i32 %i.nt, 128        ; 2 uses
  %spec.select.i.i = select i1 %i.nw, i64 1, i64 2 ; 2 uses
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %spec.select.i.i)
          to label %.noexc23.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc23.i:                                       ; preds = %bb.au
  %i.nx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24556, !noalias !24542, !nonnull !27, !noundef !27
  %i.ny = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24556, !noalias !24542, !noundef !27 ; 2 uses
  %i.nz = icmp sgt i64 %i.ny, -1
  call void @llvm.assume(i1 %i.nz)
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.ny ; 2 uses
  %i.ob = trunc i32 %i.ns to i8                   ; 2 uses
  br i1 %i.nw, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i.i, label %bb.av

bb.av:                                            ; preds = %.noexc23.i
  %i.oc = and i8 %i.ob, 63
  %i.od = or disjoint i8 %i.oc, -128
  %i.oe = lshr i32 %i.nt, 6
  %i.of = trunc nuw nsw i32 %i.oe to i8
  %i.og = or disjoint i8 %i.of, -64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oa, i64 1
  store i8 %i.od, ptr %i.oh, align 1, !noalias !24544
  br label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i.i

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i.i: ; preds = %bb.av, %.noexc23.i
  %.sink.i.i = phi i8 [ %i.og, %bb.av ], [ %i.ob, %.noexc23.i ]
  store i8 %.sink.i.i, ptr %i.oa, align 1, !noalias !24544
  %i.oi = add nuw i64 %spec.select.i.i, %i.nu
  store i64 %i.oi, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24556, !noalias !24542
  br label %.critedge.i

.invoke240.i:                                     ; preds = %.noexc135.i, %.noexc130.i, %bb.dc, %bb.db, %bb.da, %bb.cy, %bb.ba, %bb.aw, %bb.at
  %i.oj = phi i64 [ %i.ck, %.noexc130.i ], [ %i.ck, %bb.at ], [ %i.yk, %bb.dc ], [ %i.ck, %bb.ba ], [ %i.ck, %bb.aw ], [ %i.xw, %bb.da ], [ %i.ck, %bb.cy ], [ %i.ck, %bb.db ], [ %i.ahh, %.noexc135.i ]
  %i.ok = phi i64 [ 733, %.noexc130.i ], [ 733, %bb.at ], [ 12, %bb.dc ], [ 733, %bb.ba ], [ 733, %bb.aw ], [ 12, %bb.da ], [ 733, %bb.cy ], [ 733, %bb.db ], [ 12, %.noexc135.i ]
  %i.ol = phi ptr [ @15, %.noexc130.i ], [ @15, %bb.at ], [ @30, %bb.dc ], [ @15, %bb.ba ], [ @15, %bb.aw ], [ @17, %bb.da ], [ @15, %bb.cy ], [ @15, %bb.db ], [ @98, %.noexc135.i ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.oj, i64 noundef %i.ok, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ol) #49
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

.cont.i:                                          ; preds = %.invoke240.i
  unreachable

bb.aw:                                            ; preds = %bb.k
  br i1 %i.cl, label %bb.ax, label %.invoke240.i

bb.ax:                                            ; preds = %bb.aw
  %i.om = load i8, ptr %i.cm, align 1, !noalias !24555, !noundef !27
  %i.on = zext i8 %i.om to i32
  %i.oo = add nuw nsw i32 %i.cj, %i.on            ; 3 uses
  %i.op = lshr i32 %i.oo, 6
  %i.oq = trunc nuw nsw i32 %i.op to i8           ; 2 uses
  %.cmp.i.i = icmp samesign ugt i32 %i.oo, 639
  %i.or = icmp samesign ult i32 %i.oo, 640        ; 2 uses
  br i1 %i.or, label %bb.ay, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i119.i.i

bb.ay:                                            ; preds = %bb.ax
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i
    i8 2, label %bb.az
    i8 1, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i119.i.i
  ]

._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i: ; preds = %bb.ay
  %.pre.i122.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24557, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit124.i.i

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i119.i.i: ; preds = %bb.ay, %bb.ax
  %i.os = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24558, !noalias !24542, !noundef !27 ; 2 uses
  %i.ot = icmp sgt i64 %i.os, -1
  call void @llvm.assume(i1 %i.ot)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc25.i:                                       ; preds = %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i119.i.i
  %i.ou = select i1 %.cmp.i.i, i8 49, i8 48
  %i.ov = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24558, !noalias !24542, !nonnull !27, !noundef !27
  %i.ow = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24558, !noalias !24542, !noundef !27 ; 2 uses
  %i.ox = icmp sgt i64 %i.ow, -1
  call void @llvm.assume(i1 %i.ox)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ow
  store i8 %i.ou, ptr %i.oy, align 1, !noalias !24544
  %i.oz = add nuw i64 %i.os, 1                    ; 2 uses
  store i64 %i.oz, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24558, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit124.i.i

bb.az:                                            ; preds = %bb.ay
  %i.pa = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24559, !noalias !24542, !noundef !27 ; 2 uses
  %i.pb = icmp sgt i64 %i.pa, -1
  call void @llvm.assume(i1 %i.pb)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc26.i:                                       ; preds = %bb.az
  %i.pc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24559, !noalias !24542, !nonnull !27, !noundef !27
  %i.pd = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24559, !noalias !24542, !noundef !27 ; 2 uses
  %i.pe = icmp sgt i64 %i.pd, -1
  call void @llvm.assume(i1 %i.pe)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pd
  store i8 32, ptr %i.pf, align 1, !noalias !24544
  %i.pg = add nuw i64 %i.pa, 1                    ; 2 uses
  store i64 %i.pg, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24559, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit124.i.i

_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit124.i.i: ; preds = %.noexc26.i, %.noexc25.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i
  %i.ph = phi i64 [ %.pre.i122.i.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i120.i.i ], [ %i.pg, %.noexc26.i ], [ %i.oz, %.noexc25.i ] ; 2 uses
  %i.pi = icmp sgt i64 %i.ph, -1
  call void @llvm.assume(i1 %i.pi)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc27.i:                                       ; preds = %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit124.i.i
  %.urem.i.i = add nsw i8 %i.oq, -10
  %i.pj = select i1 %i.or, i8 %i.oq, i8 %.urem.i.i
  %i.pk = or disjoint i8 %i.pj, 48
  %i.pl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24557, !noalias !24542, !nonnull !27, !noundef !27
  %i.pm = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24557, !noalias !24542, !noundef !27 ; 2 uses
  %i.pn = icmp sgt i64 %i.pm, -1
  call void @llvm.assume(i1 %i.pn)
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pm
  store i8 %i.pk, ptr %i.po, align 1, !noalias !24544
  %i.pp = add nuw i64 %i.ph, 1
  store i64 %i.pp, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24557, !noalias !24542
  br label %.critedge.i

bb.ba:                                            ; preds = %bb.l
  br i1 %i.cl, label %bb.bb, label %.invoke240.i

bb.bb:                                            ; preds = %bb.ba
  %i.pq = load i8, ptr %i.cm, align 1, !noalias !24555, !noundef !27
  %2 = zext i8 %i.pq to i32
  %3 = add nuw nsw i32 %i.ci, %2
  %4 = lshr i32 %3, 1
  %5 = trunc i32 %4 to i8
  %i.pr = and i8 %5, 31                           ; 3 uses
  %i.ps = udiv i8 %i.pr, 10
  %i.pt = urem i8 %i.pr, 10
  %i.pu = icmp samesign ult i8 %i.pr, 10
  br i1 %i.pu, label %bb.bc, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i125.i.i

bb.bc:                                            ; preds = %bb.bb
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i
    i8 2, label %bb.bd
    i8 1, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i125.i.i
  ]

._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i: ; preds = %bb.bc
  %.pre.i128.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24560, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit130.i.i

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i125.i.i: ; preds = %bb.bc, %bb.bb
  %i.pv = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24561, !noalias !24542, !noundef !27 ; 2 uses
  %i.pw = icmp sgt i64 %i.pv, -1
  call void @llvm.assume(i1 %i.pw)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc29.i:                                       ; preds = %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i125.i.i
  %i.px = or disjoint i8 %i.ps, 48
  %i.py = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24561, !noalias !24542, !nonnull !27, !noundef !27
  %i.pz = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24561, !noalias !24542, !noundef !27 ; 2 uses
  %i.qa = icmp sgt i64 %i.pz, -1
  call void @llvm.assume(i1 %i.qa)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.pz
  store i8 %i.px, ptr %i.qb, align 1, !noalias !24544
  %i.qc = add nuw i64 %i.pv, 1                    ; 2 uses
  store i64 %i.qc, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24561, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit130.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.qd = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24562, !noalias !24542, !noundef !27 ; 2 uses
  %i.qe = icmp sgt i64 %i.qd, -1
  call void @llvm.assume(i1 %i.qe)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc30.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc30.i:                                       ; preds = %bb.bd
  %i.qf = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24562, !noalias !24542, !nonnull !27, !noundef !27
  %i.qg = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24562, !noalias !24542, !noundef !27 ; 2 uses
  %i.qh = icmp sgt i64 %i.qg, -1
  call void @llvm.assume(i1 %i.qh)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 %i.qg
  store i8 32, ptr %i.qi, align 1, !noalias !24544
  %i.qj = add nuw i64 %i.qd, 1                    ; 2 uses
  store i64 %i.qj, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24562, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit130.i.i

_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit130.i.i: ; preds = %.noexc30.i, %.noexc29.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i
  %i.qk = phi i64 [ %.pre.i128.i.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i126.i.i ], [ %i.qj, %.noexc30.i ], [ %i.qc, %.noexc29.i ] ; 2 uses
  %i.ql = icmp sgt i64 %i.qk, -1
  call void @llvm.assume(i1 %i.ql)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc31.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc31.i:                                       ; preds = %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit130.i.i
  %i.qm = or disjoint i8 %i.pt, 48
  %i.qn = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24560, !noalias !24542, !nonnull !27, !noundef !27
  %i.qo = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24560, !noalias !24542, !noundef !27 ; 2 uses
  %i.qp = icmp sgt i64 %i.qo, -1
  call void @llvm.assume(i1 %i.qp)
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.qo
  store i8 %i.qm, ptr %i.qq, align 1, !noalias !24544
  %i.qr = add nuw i64 %i.qk, 1
  store i64 %i.qr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24560, !noalias !24542
  br label %.critedge.i

bb.be:                                            ; preds = %bb.m
  br i1 %i.gd, label %bb.bf, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i132.i.i

bb.bf:                                            ; preds = %bb.be
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i
    i8 2, label %bb.bg
    i8 1, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i132.i.i
  ]

._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i: ; preds = %bb.bf
  %.pre.i135.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24563, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit137.i.i

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i132.i.i: ; preds = %bb.bf, %bb.be
  %i.qs = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24564, !noalias !24542, !noundef !27 ; 2 uses
  %i.qt = icmp sgt i64 %i.qs, -1
  call void @llvm.assume(i1 %i.qt)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc33.i:                                       ; preds = %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i132.i.i
  %i.qu = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24564, !noalias !24542, !nonnull !27, !noundef !27
  %i.qv = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24564, !noalias !24542, !noundef !27 ; 2 uses
  %i.qw = icmp sgt i64 %i.qv, -1
  call void @llvm.assume(i1 %i.qw)
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.qv
  store i8 %i.ge, ptr %i.qx, align 1, !noalias !24544
  %i.qy = add nuw i64 %i.qs, 1                    ; 2 uses
  store i64 %i.qy, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24564, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit137.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.qz = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24565, !noalias !24542, !noundef !27 ; 2 uses
  %i.ra = icmp sgt i64 %i.qz, -1
  call void @llvm.assume(i1 %i.ra)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc34.i:                                       ; preds = %bb.bg
  %i.rb = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24565, !noalias !24542, !nonnull !27, !noundef !27
  %i.rc = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24565, !noalias !24542, !noundef !27 ; 2 uses
  %i.rd = icmp sgt i64 %i.rc, -1
  call void @llvm.assume(i1 %i.rd)
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rc
  store i8 32, ptr %i.re, align 1, !noalias !24544
  %i.rf = add nuw i64 %i.qz, 1                    ; 2 uses
  store i64 %i.rf, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24565, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit137.i.i

_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit137.i.i: ; preds = %.noexc34.i, %.noexc33.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i
  %i.rg = phi i64 [ %.pre.i135.i.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i133.i.i ], [ %i.rf, %.noexc34.i ], [ %i.qy, %.noexc33.i ] ; 2 uses
  %i.rh = icmp sgt i64 %i.rg, -1
  call void @llvm.assume(i1 %i.rh)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc35.i:                                       ; preds = %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit137.i.i
  %i.ri = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24563, !noalias !24542, !nonnull !27, !noundef !27
  %i.rj = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24563, !noalias !24542, !noundef !27 ; 2 uses
  %i.rk = icmp sgt i64 %i.rj, -1
  call void @llvm.assume(i1 %i.rk)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rj
  store i8 %i.gg, ptr %i.rl, align 1, !noalias !24544
  %i.rm = add nuw i64 %i.rg, 1
  store i64 %i.rm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24563, !noalias !24542
  br label %.critedge.i

bb.bh:                                            ; preds = %bb.n
  br i1 %i.ft, label %bb.bi, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i144.i.i

bb.bi:                                            ; preds = %bb.bh
  switch i8 %i.hr, label %default.unreachable [
    i8 0, label %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i
    i8 2, label %bb.bj
    i8 1, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i144.i.i
  ]

._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i: ; preds = %bb.bi
  %.pre.i147.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24566, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149.i.i

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i144.i.i: ; preds = %bb.bi, %bb.bh
  %i.rn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24567, !noalias !24542, !noundef !27 ; 2 uses
  %i.ro = icmp sgt i64 %i.rn, -1
  call void @llvm.assume(i1 %i.ro)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc36.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc36.i:                                       ; preds = %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit.i144.i.i
  %i.rp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24567, !noalias !24542, !nonnull !27, !noundef !27
  %i.rq = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24567, !noalias !24542, !noundef !27 ; 2 uses
  %i.rr = icmp sgt i64 %i.rq, -1
  call void @llvm.assume(i1 %i.rr)
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rq
  store i8 %i.fu, ptr %i.rs, align 1, !noalias !24544
  %i.rt = add nuw i64 %i.rn, 1                    ; 2 uses
  store i64 %i.rt, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24567, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.ru = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24568, !noalias !24542, !noundef !27 ; 2 uses
  %i.rv = icmp sgt i64 %i.ru, -1
  call void @llvm.assume(i1 %i.rv)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc37.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc37.i:                                       ; preds = %bb.bj
  %i.rw = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24568, !noalias !24542, !nonnull !27, !noundef !27
  %i.rx = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24568, !noalias !24542, !noundef !27 ; 2 uses
  %i.ry = icmp sgt i64 %i.rx, -1
  call void @llvm.assume(i1 %i.ry)
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rx
  store i8 32, ptr %i.rz, align 1, !noalias !24544
  %i.sa = add nuw i64 %i.ru, 1                    ; 2 uses
  store i64 %i.sa, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24568, !noalias !24542
  br label %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149.i.i

_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149.i.i: ; preds = %.noexc37.i, %.noexc36.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i
  %i.sb = phi i64 [ %.pre.i147.i.i, %._RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit2_crit_edge.i145.i.i ], [ %i.sa, %.noexc37.i ], [ %i.rt, %.noexc36.i ] ; 2 uses
  %i.sc = icmp sgt i64 %i.sb, -1
  call void @llvm.assume(i1 %i.sc)
  invoke void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 1)
          to label %.noexc38.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

.noexc38.i:                                       ; preds = %_RINvNvMNtNtCshmPyUV8PP35_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric9write_twoNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit149.i.i
  %i.sd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !24566, !noalias !24542, !nonnull !27, !noundef !27
  %i.se = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !24566, !noalias !24542, !noundef !27 ; 2 uses
end_hunk_2
