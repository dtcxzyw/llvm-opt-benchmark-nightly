Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.12?download=true
inline.NumInlined: 12919
inline.NumDeleted: 5719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting13write_rfc3339NtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core:bb.a
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
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !27 ; 2 uses
  %i.bl = zext i8 %i.bk to i32
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
  %i.cj = trunc i32 %i.v to i8
  %i.ck = add i8 %i.bk, %i.cj
  %i.cl = lshr i8 %i.ck, 1
  %i.cm = and i8 %i.cl, 31                        ; 2 uses
  %i.cn = udiv i8 %i.cm, 10
  %i.co = or disjoint i8 %i.cn, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.cp = load ptr, ptr %i.p, align 8, !alias.scope !12399, !nonnull !27, !noundef !27
  %i.cq = load i64, ptr %i.n, align 8, !alias.scope !12399, !noundef !27 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq
  store i8 %i.co, ptr %i.cs, align 1
  %i.ct = add nuw i64 %i.m, 5
  store i64 %i.ct, ptr %i.n, align 8, !alias.scope !12399
  %i.cu = urem i8 %i.cm, 10
  %i.cv = or disjoint i8 %i.cu, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.cw = load ptr, ptr %i.p, align 8, !alias.scope !12400, !nonnull !27, !noundef !27
  %i.cx = load i64, ptr %i.n, align 8, !alias.scope !12400, !noundef !27 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, -1
  call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i8 %i.cv, ptr %i.cz, align 1
  %i.da = add nuw nsw i64 %i.m, 6
  store i64 %i.da, ptr %i.n, align 8, !alias.scope !12400
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.db = load ptr, ptr %i.p, align 8, !alias.scope !12401, !nonnull !27, !noundef !27
  %i.dc = load i64, ptr %i.n, align 8, !alias.scope !12401, !noundef !27 ; 2 uses
  %i.dd = icmp sgt i64 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store i8 84, ptr %i.de, align 1
  %i.df = add nuw i64 %i.m, 7                     ; 2 uses
  store i64 %i.df, ptr %i.n, align 8, !alias.scope !12401
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !27 ; 3 uses
  %i.di = udiv i32 %i.dh, 3600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !noundef !27 ; 3 uses
  %i.dl = icmp ugt i32 %i.dk, 999999999           ; 2 uses
  %i.dm = add i32 %i.dk, -1000000000
  %storemerge = select i1 %i.dl, i32 %i.dm, i32 %i.dk
  store i32 %storemerge, ptr %i.g, align 4
  %i.dn = trunc i32 %i.di to i8                   ; 3 uses
  %i.do = icmp ugt i8 %i.dn, 99
  br i1 %i.do, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #49
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.dp = urem i32 %i.dh, 60
  %3 = zext i1 %i.dl to i32
  %.sroa.04.0 = add nuw nsw i32 %i.dp, %3
  %i.dq = udiv i32 %i.dh, 60
  %i.dr = urem i32 %i.dq, 60
  %i.ds = udiv i8 %i.dn, 10
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = icmp sgt i64 %i.df, -1
  call void @llvm.assume(i1 %i.du)
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.dv = load ptr, ptr %i.p, align 8, !alias.scope !12402, !nonnull !27, !noundef !27
  %i.dw = load i64, ptr %i.n, align 8, !alias.scope !12402, !noundef !27 ; 2 uses
  %i.dx = icmp sgt i64 %i.dw, -1
  call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw
  store i8 %i.dt, ptr %i.dy, align 1
  %i.dz = add nuw i64 %i.m, 8
  store i64 %i.dz, ptr %i.n, align 8, !alias.scope !12402
  %i.ea = urem i8 %i.dn, 10
  %i.eb = or disjoint i8 %i.ea, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ec = load ptr, ptr %i.p, align 8, !alias.scope !12403, !nonnull !27, !noundef !27
  %i.ed = load i64, ptr %i.n, align 8, !alias.scope !12403, !noundef !27 ; 2 uses
  %i.ee = icmp sgt i64 %i.ed, -1
  call void @llvm.assume(i1 %i.ee)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  store i8 %i.eb, ptr %i.ef, align 1
  %i.eg = add nuw nsw i64 %i.m, 9
  store i64 %i.eg, ptr %i.n, align 8, !alias.scope !12403
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.eh = load ptr, ptr %i.p, align 8, !alias.scope !12404, !nonnull !27, !noundef !27
  %i.ei = load i64, ptr %i.n, align 8, !alias.scope !12404, !noundef !27 ; 2 uses
  %i.ej = icmp sgt i64 %i.ei, -1
  call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  store i8 58, ptr %i.ek, align 1
  %i.el = add nuw nsw i64 %i.m, 10
  store i64 %i.el, ptr %i.n, align 8, !alias.scope !12404
  %i.em = trunc nuw nsw i32 %i.dr to i8           ; 2 uses
  %i.en = udiv i8 %i.em, 10
  %i.eo = or disjoint i8 %i.en, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ep = load ptr, ptr %i.p, align 8, !alias.scope !12405, !nonnull !27, !noundef !27
  %i.eq = load i64, ptr %i.n, align 8, !alias.scope !12405, !noundef !27 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, -1
  call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq
  store i8 %i.eo, ptr %i.es, align 1
  %i.et = add nuw i64 %i.m, 11
  store i64 %i.et, ptr %i.n, align 8, !alias.scope !12405
  %i.eu = urem i8 %i.em, 10
  %i.ev = or disjoint i8 %i.eu, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.ew = load ptr, ptr %i.p, align 8, !alias.scope !12406, !nonnull !27, !noundef !27
  %i.ex = load i64, ptr %i.n, align 8, !alias.scope !12406, !noundef !27 ; 2 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  store i8 %i.ev, ptr %i.ez, align 1
  %i.fa = add nuw nsw i64 %i.m, 12
  store i64 %i.fa, ptr %i.n, align 8, !alias.scope !12406
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.fb = load ptr, ptr %i.p, align 8, !alias.scope !12407, !nonnull !27, !noundef !27
  %i.fc = load i64, ptr %i.n, align 8, !alias.scope !12407, !noundef !27 ; 2 uses
  %i.fd = icmp sgt i64 %i.fc, -1
  call void @llvm.assume(i1 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fc
  store i8 58, ptr %i.fe, align 1
  %i.ff = add nuw nsw i64 %i.m, 13
  store i64 %i.ff, ptr %i.n, align 8, !alias.scope !12407
  %i.fg = trunc nuw nsw i32 %.sroa.04.0 to i8     ; 2 uses
  %i.fh = udiv i8 %i.fg, 10
  %i.fi = or disjoint i8 %i.fh, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.fj = load ptr, ptr %i.p, align 8, !alias.scope !12408, !nonnull !27, !noundef !27
  %i.fk = load i64, ptr %i.n, align 8, !alias.scope !12408, !noundef !27 ; 2 uses
  %i.fl = icmp sgt i64 %i.fk, -1
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fk
  store i8 %i.fi, ptr %i.fm, align 1
  %i.fn = add nuw i64 %i.m, 14
  store i64 %i.fn, ptr %i.n, align 8, !alias.scope !12408
  %i.fo = urem i8 %i.fg, 10
  %i.fp = or disjoint i8 %i.fo, 48
  call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.fq = load ptr, ptr %i.p, align 8, !alias.scope !12409, !nonnull !27, !noundef !27
  %i.fr = load i64, ptr %i.n, align 8, !alias.scope !12409, !noundef !27 ; 2 uses
  %i.fs = icmp sgt i64 %i.fr, -1
  call void @llvm.assume(i1 %i.fs)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fr
  store i8 %i.fp, ptr %i.ft, align 1
  %i.fu = add nuw i64 %i.m, 15
  store i64 %i.fu, ptr %i.n, align 8, !alias.scope !12409
  %i.fv = load i32, ptr %i.g, align 4, !noundef !27 ; 5 uses
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store <4 x i8> <i8 0, i8 1, i8 1, i8 1>, ptr %i.a, align 4
  %i.fx = call noundef zeroext i1 @_RINvMs0_NtNtCshmPyUV8PP35_6chrono6format10formattingNtB8_12OffsetFormat6formatNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread: ; preds = %bb.l, %bb.k, %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.fy = urem i32 %i.fv, 1000000
  %i.fz = udiv i32 %i.fv, 1000000
  %i.ga = icmp eq i32 %i.fy, 0
  br i1 %i.ga, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %i.fz, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.421.0..sroa_idx, align 8
  %i.gb = call noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @101, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.gb, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.gc = urem i32 %i.fv, 1000
  %i.gd = udiv i32 %i.fv, 1000
  %i.ge = icmp eq i32 %i.gc, 0
  br i1 %i.ge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.gd, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.425.0..sroa_idx, align 8
  %i.gf = call noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @102, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.gf, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, label %bb.g

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.429.0..sroa_idx, align 8
  %i.gg = call noundef zeroext i1 @_RNvYNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write9write_fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @103, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.gg, label %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, label %bb.g

_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs14kWLkQVSKO_14deltalake_core.exit.thread, %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread, %bb.g
  %.sroa.0.1 = phi i1 [ true, %_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit38.thread ], [ %i.fx, %bb.g ], [ true, %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs14kWLkQVSKO_14deltalake_core.exit.thread ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCshmPyUV8PP35_6chrono6format10formatting14write_hundredsNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i8 %1, 99                       ; 2 uses
  br i1 %i.a, label %bb.b, label %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit

_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit: ; preds = %bb.a
  %i.b = udiv i8 %1, 10
  %i.c = or disjoint i8 %i.b, 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !12418, !noundef !27 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !12418, !nonnull !27, !noundef !27
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !12418, !noundef !27 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store i8 %i.c, ptr %i.k, align 1
  %i.l = add nuw nsw i64 %i.e, 1
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !12418
  %i.m = urem i8 %1, 10
  %i.n = or disjoint i8 %i.m, 48
  tail call void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !12419, !nonnull !27, !noundef !27
  %i.p = load i64, ptr %i.d, align 8, !alias.scope !12419, !noundef !27 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  store i8 %i.n, ptr %i.r, align 1
  %i.s = add nuw i64 %i.e, 2
  store i64 %i.s, ptr %i.d, align 8, !alias.scope !12419
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RNvXsZ_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Write10write_char.exit
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvNtB19_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem14list_from_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvNtB19_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem15read_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvNtB19_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem16copy_atomic_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvNtB19_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_10filesystem9head_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvNtB19_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_4json20read_json_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvNtB19_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_4json20write_json_file_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvNtB19_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvNtB1j_7parquet23read_parquet_files_impl0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvXB19_INtB19_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1d_11engine_data10EngineDataEL_ENtNtB1d_5error5ErrorEB29_ENtNtNtNtB3Q_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB1n_11engine_data10EngineDataEL_ENtNtB1n_5error5ErrorEB2j_ENtNtNtNtB40_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvXB19_INtB19_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1d_8FileMetaNtNtB1d_5error5ErrorEB29_ENtNtNtNtB3Q_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtB1n_8FileMetaNtNtB1n_5error5ErrorEB2j_ENtNtNtNtB40_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvXB19_INtB19_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1d_5error5ErrorEB29_ENtNtNtNtB3Q_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXB1j_INtB1j_22BlockingStreamIteratorINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtB1n_5error5ErrorEB2j_ENtNtNtNtB40_4iter6traits8iterator8Iterator4next0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvXs0_NtB19_7parquetINtB3f_21DefaultParquetHandlerB29_ENtB1d_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXs0_NtB1j_7parquetINtB3p_21DefaultParquetHandlerB2j_ENtB1n_14ParquetHandler18write_parquet_file0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtCskQDtHcQtBkN_5tokio4task8blocking14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB15_23TokioBackgroundExecutorNtB17_12TaskExecutor8block_onNCNvXs0_NtB19_7parquetINtB3f_21DefaultParquetHandlerB29_ENtB1d_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvXs1_NtNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default8executor5tokioNtB1f_23TokioBackgroundExecutorNtB1h_12TaskExecutor8block_onNCNvXs0_NtB1j_7parquetINtB3p_21DefaultParquetHandlerB2j_ENtB1n_14ParquetHandler19read_parquet_footer0E00uECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret ptr %i.a
}

end_hunk_0
begin_hunk_1_@_RNvMs3_NtCsdl0l68gAy31_9arrow_ipc6writerINtB5_10FileWriterQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE6finishCs14kWLkQVSKO_14deltalake_core:bb.a

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 130 ; 2 uses
  %.val42 = load i16, ptr %i.p, align 2, !noundef !27 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.val43 = load i8, ptr %i.q, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18892)
  switch i16 %.val42, label %bb.c [
    i16 0, label %bb.d
    i16 1, label %bb.d
    i16 2, label %bb.d
    i16 3, label %bb.e
    i16 4, label %bb.f
  ], !prof !115

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !18893
  store i16 %.val42, ptr %i.d, align 2, !noalias !18893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18893
  store ptr %i.d, ptr %i.c, align 8, !noalias !18893
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtNtCsdl0l68gAy31_9arrow_ipc3gen6SchemaNtB4_15MetadataVersionNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !18893
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @90, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #46, !noalias !18893
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull inttoptr (i64 187 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #46, !noalias !18893
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.r = trunc nuw i8 %.val43 to i1
  %.val.i26.pre.i = load ptr, ptr %i.o, align 8, !alias.scope !18892, !noalias !18894 ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !18892, !noalias !18895, !nonnull !27, !align !34, !noundef !27 ; 2 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !18893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !18893
  store i32 0, ptr %i.e, align 4, !noalias !18893
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !18893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !18893
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i26.pre.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !18893
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !18893
  store i32 0, ptr %i.f, align 4, !noalias !18893
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i26.pre.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) 4), !noalias !18893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !18893
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 50, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.g, align 8, !range !37, !noundef !27
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !29, !noundef !27 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.t, label %bb.aw, label %bb.ax, !prof !28

bb.j:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs2_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder3new(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.k)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !27, !noundef !27
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !27
  %i.ab = invoke fastcc noundef i32 @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder13create_vectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %bb.l unwind label %bb.k

.body:                                            ; preds = %bb.ap, %bb.aq, %bb.k, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.ac, %bb.k ], [ %i.nh, %bb.aq ], [ %i.ng, %bb.ap ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2TwJzntlzha_11flatbuffers7builder17FlatBufferBuilderECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.k) #44
          to label %bb.av unwind label %bb.au

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.m, %bb.l, %bb.j
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !27, !noundef !27
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i64, ptr %i.af, align 8, !noundef !27
  %i.ah = invoke fastcc noundef i32 @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder13create_vectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMs1_NtCsdl0l68gAy31_9arrow_ipc6writerNtB5_17DictionaryTracker3new(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i4.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i131
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i.i133
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ab
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i5.i.i.i103
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i105
  %lpad.loopexit163 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i4.i.i.i81
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i83
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i4.i.i.i
  %lpad.loopexit170 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i60
  %lpad.loopexit173 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i5.i.i.i
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit178 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke262, %.invoke, %bb.n, %bb.p, %bb.s, %bb.t, %bb.u, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit, %bb.w, %bb.y, %._crit_edge.i.i.i, %bb.ad, %bb.ae, %bb.ai, %bb.am, %bb.ao, %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit, %_RNvXs_NtNtCs2pqxYH9ZEk8_3std2io5implsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_5Write9write_allCs14kWLkQVSKO_14deltalake_core.exit144
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit150, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit153, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit155, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit158, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit160, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit163, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit165, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit168, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit170, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit173, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit175, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit178, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsdl0l68gAy31_9arrow_ipc6writer17DictionaryTrackerECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(80) %i.j) #44
          to label %.body unwind label %bb.au

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !27, !noundef !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = invoke noundef i32 @_RNvMs_NtCsdl0l68gAy31_9arrow_ipc7convertNtB4_16IpcSchemaEncoder19schema_to_fb_offset(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ak)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.an = load i64, ptr %i.am, align 8, !noundef !27
  %.not38.not = icmp eq i64 %i.an, 0              ; 2 uses
  br i1 %.not38.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ap = invoke noundef i32 @_RNvNtCsdl0l68gAy31_9arrow_ipc7convert14metadata_to_fb(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.o, %bb.p
  %.sroa.68.0 = phi i32 [ undef, %bb.o ], [ %i.ap, %bb.p ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store i8 1, ptr %i.aq, align 8, !alias.scope !18896
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 38 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !18896, !noundef !27 ; 5 uses
  %2 = trunc i64 %i.as to i32
  %i.at = load i16, ptr %i.p, align 2, !noundef !27 ; 2 uses
  %i.au = icmp ne i16 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 114
  %i.aw = load i8, ptr %i.av, align 2, !range !38, !alias.scope !18897
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond.i.i = select i1 %i.au, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.r, label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !18898, !noundef !27
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.az, i64 2)
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.ay, align 8, !alias.scope !18898
  %i.ba = and i64 %i.as, 1                        ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.val1.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !18899, !noundef !27 ; 3 uses
  %i.bc = icmp sgt i64 %.val1.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bc)
  %i.bd = sub i64 %.val1.i.i.i.i, %i.as
  %.not.i.i.i.i = icmp ult i64 %i.bd, %i.ba
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %.noexc
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !18899, !noundef !27 ; 3 uses
  %i.be = icmp sgt i64 %.val.i.i.i.i, -1
  call void @llvm.assume(i1 %i.be)
  %i.bf = load i64, ptr %i.ar, align 8, !alias.scope !18899, !noundef !27 ; 2 uses
  %i.bg = sub i64 %.val.i.i.i.i, %i.bf
  %i.bh = icmp ult i64 %i.bg, %i.ba
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %.noexc, %bb.r
  %.val1.i3.i.i.i = phi i64 [ %.val1.i.i.i.i, %bb.r ], [ %.val.i.i.i.i, %.noexc ] ; 2 uses
  %i.bi = phi i64 [ %i.as, %bb.r ], [ %i.bf, %.noexc ]
  %i.bj = add i64 %i.bi, %i.ba                    ; 3 uses
  store i64 %i.bj, ptr %i.ar, align 8, !alias.scope !18898
  %i.bk = sub i64 %.val1.i3.i.i.i, %i.bj
  %.not.i4.i.i.i = icmp ult i64 %i.bk, 2
  br i1 %.not.i4.i.i.i, label %.lr.ph.i5.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i

.lr.ph.i5.i.i.i:                                  ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, %.noexc49
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %.lr.ph.i5.i.i.i
  %.val.i6.i.i.i = load i64, ptr %i.bb, align 8, !alias.scope !18900, !noundef !27 ; 3 uses
  %i.bl = icmp sgt i64 %.val.i6.i.i.i, -1
  call void @llvm.assume(i1 %i.bl)
  %i.bm = load i64, ptr %i.ar, align 8, !alias.scope !18900, !noundef !27 ; 2 uses
  %i.bn = sub i64 %.val.i6.i.i.i, %i.bm
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %.lr.ph.i5.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i: ; preds = %.noexc49, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %.val1.i.i.i = phi i64 [ %.val1.i3.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %.val.i6.i.i.i, %.noexc49 ] ; 4 uses
  %i.bp = phi i64 [ %i.bj, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ], [ %i.bm, %.noexc49 ] ; 2 uses
  %i.bq = add i64 %i.bp, 2                        ; 3 uses
  store i64 %i.bq, ptr %i.ar, align 8, !alias.scope !18898
  %i.br = sub i64 %.val1.i.i.i, %i.bq             ; 2 uses
  %i.bs = icmp ult i64 %.val1.i.i.i, %i.bq
  br i1 %i.bs, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i, !prof !44

.invoke:                                          ; preds = %.lr.ph.i.i.prol, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i, %.lr.ph.i.i, %bb.an, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i, %bb.aj, %bb.ag, %._crit_edge.i.i, %bb.z, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i
  %i.bt = phi i64 [ %i.ms, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ %i.br, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ %i.dg, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ %i.er, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ %i.fy, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ %i.gu, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 0, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 2, %bb.z ], [ %i.na, %bb.an ], [ %i.il, %._crit_edge.i.i ], [ %i.kt, %bb.ag ], [ %i.lh, %bb.aj ], [ %i.hk, %.lr.ph.i.i.prol ], [ %i.hu, %.lr.ph.i.i ], [ %i.ic, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ]
  %i.bu = phi i64 [ %.val1.i5.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ %.val1.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ %.val1.i.i.i57, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ %.val1.i.i.i76, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ %.val1.i.i.i97, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ %.pre-phi.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 2, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ 4, %bb.z ], [ %i.my, %bb.an ], [ %i.im, %._crit_edge.i.i ], [ %i.ku, %bb.ag ], [ %i.li, %bb.aj ], [ %i.hl, %.lr.ph.i.i.prol ], [ %i.hv, %.lr.ph.i.i ], [ %i.id, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ]
  %i.bv = phi i64 [ %.val1.i5.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ %.val1.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ %.val1.i.i.i57, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ %.val1.i.i.i76, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ %.val1.i.i.i97, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ %.val27.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.gw, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.gw, %bb.z ], [ %i.my, %bb.an ], [ %.val29.i.i, %._crit_edge.i.i ], [ %.val25.i.i, %bb.ag ], [ %.val.i.i101, %bb.aj ], [ %i.gw, %.lr.ph.i.i ], [ %i.gw, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ], [ %i.gw, %.lr.ph.i.i.prol ]
  %i.bw = phi ptr [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75 ], [ @60, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96 ], [ @258, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ @259, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ @260, %bb.z ], [ @270, %bb.an ], [ @261, %._crit_edge.i.i ], [ @262, %bb.ag ], [ @265, %bb.aj ], [ @239, %.lr.ph.i.i ], [ @239, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i ], [ @239, %.lr.ph.i.i.prol ]
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core5slice5index16slice_index_fail(i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw) #49
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i
  %.not.i9.i.i.i = icmp ugt i64 %i.bp, -3
  br i1 %.not.i9.i.i.i, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !28

.invoke262:                                       ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i129, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i98, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i77, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i58, %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @241, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #49
          to label %.cont263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont263:                                         ; preds = %.invoke262
  unreachable

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !18898, !nonnull !27, !noundef !27
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.br
  store i16 %i.at, ptr %i.by, align 1, !alias.scope !18901
  %i.bz = load i64, ptr %i.ar, align 8, !alias.scope !18898, !noundef !27
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !18902, !noundef !27 ; 3 uses
  %i.ce = load i64, ptr %i.cb, align 8, !range !36, !alias.scope !18902, !noundef !27
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.s, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i

bb.s:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.s, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema15MetadataVersionECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !18902, !nonnull !27, !noundef !27
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cd ; 2 uses
  store i32 %i.ca, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i16 4, ptr %i.cj, align 4
  %i.ck = add i64 %i.cd, 1
  store i64 %i.ck, ptr %i.cc, align 8, !alias.scope !18902
  %.pre = load i64, ptr %i.ar, align 8, !alias.scope !18903
  br label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.q
  %i.cl = phi i64 [ %.pre, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8push_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.as, %bb.q ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 9 uses
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !18903, !noundef !27
  %.sroa.0.0.i.i.i.i53 = call noundef i64 @llvm.umax.i64(i64 %i.cn, i64 4)
  store i64 %.sroa.0.0.i.i.i.i53, ptr %i.cm, align 8, !alias.scope !18903
  %i.co = sub i64 0, %i.cl
  %i.cp = and i64 %i.co, 3                        ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 21 uses
  %.val1.i.i.i.i54 = load i64, ptr %i.cq, align 8, !alias.scope !18904, !noundef !27 ; 3 uses
  %i.cr = icmp sgt i64 %.val1.i.i.i.i54, -1
  call void @llvm.assume(i1 %i.cr)
  %i.cs = sub i64 %.val1.i.i.i.i54, %i.cl
  %.not.i.i.i.i55 = icmp ult i64 %i.cs, %i.cp
  br i1 %.not.i.i.i.i55, label %.lr.ph.i.i.i.i60, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56

.lr.ph.i.i.i.i60:                                 ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit, %.noexc62
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %.lr.ph.i.i.i.i60
  %.val.i.i.i.i61 = load i64, ptr %i.cq, align 8, !alias.scope !18904, !noundef !27 ; 3 uses
  %i.ct = icmp sgt i64 %.val.i.i.i.i61, -1
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load i64, ptr %i.ar, align 8, !alias.scope !18904, !noundef !27 ; 2 uses
  %i.cv = sub i64 %.val.i.i.i.i61, %i.cu
  %i.cw = icmp ult i64 %i.cv, %i.cp
  br i1 %i.cw, label %.lr.ph.i.i.i.i60, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56: ; preds = %.noexc62, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit
  %.val1.i2.i.i.i = phi i64 [ %.val1.i.i.i.i54, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit ], [ %.val.i.i.i.i61, %.noexc62 ] ; 2 uses
  %i.cx = phi i64 [ %i.cl, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE11add_versionCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.cu, %.noexc62 ]
  %i.cy = add i64 %i.cx, %i.cp                    ; 3 uses
  store i64 %i.cy, ptr %i.ar, align 8, !alias.scope !18903
  %i.cz = sub i64 %.val1.i2.i.i.i, %i.cy
  %.not.i3.i.i.i = icmp ult i64 %i.cz, 4
  br i1 %.not.i3.i.i.i, label %.lr.ph.i4.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56, %.noexc63
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc63:                                         ; preds = %.lr.ph.i4.i.i.i
  %.val.i5.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18905, !noundef !27 ; 3 uses
  %i.da = icmp sgt i64 %.val.i5.i.i.i, -1
  call void @llvm.assume(i1 %i.da)
  %i.db = load i64, ptr %i.ar, align 8, !alias.scope !18905, !noundef !27 ; 2 uses
  %i.dc = sub i64 %.val.i5.i.i.i, %i.db
  %i.dd = icmp ult i64 %i.dc, 4
  br i1 %i.dd, label %.lr.ph.i4.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i: ; preds = %.noexc63, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56
  %.val1.i.i.i57 = phi i64 [ %.val1.i2.i.i.i, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56 ], [ %.val.i5.i.i.i, %.noexc63 ] ; 4 uses
  %i.de = phi i64 [ %i.cy, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i56 ], [ %i.db, %.noexc63 ] ; 3 uses
  %i.df = add i64 %i.de, 4                        ; 3 uses
  store i64 %i.df, ptr %i.ar, align 8, !alias.scope !18903
  %i.dg = sub i64 %.val1.i.i.i57, %i.df           ; 2 uses
  %i.dh = icmp ult i64 %.val1.i.i.i57, %i.df
  br i1 %i.dh, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i58, !prof !44

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i58: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i
  %.not.i8.i.i.i = icmp ugt i64 %i.de, -5
  br i1 %.not.i8.i.i.i, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !28

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i58
  %i.di = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 11 uses
  %.val.i.i.i59 = load ptr, ptr %i.di, align 8, !alias.scope !18903, !nonnull !27, !noundef !27
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i.i59, i64 %i.dg
  %i.dk = trunc i64 %i.de to i32
  %reass.sub = sub i32 %i.dk, %i.al
  %i.dl = add i32 %reass.sub, 4
  store i32 %i.dl, ptr %i.dj, align 1, !alias.scope !18906, !noalias !18907
  %i.dm = load i64, ptr %i.ar, align 8, !alias.scope !18903, !noundef !27
  %i.dn = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 7 uses
  %i.dp = load i64, ptr %i.do, align 8, !alias.scope !18908, !noundef !27 ; 3 uses
  %i.dq = load i64, ptr %i.dn, align 8, !range !36, !alias.scope !18908, !noundef !27
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.t
  %i.ds = trunc i64 %i.dm to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 4 uses
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !18908, !nonnull !27, !noundef !27
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dp ; 2 uses
  store i32 %i.ds, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i16 6, ptr %i.dw, align 4
  %i.dx = add i64 %i.dp, 1
  store i64 %i.dx, ptr %i.do, align 8, !alias.scope !18908
  invoke fastcc void @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder16push_slot_alwaysINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, i16 noundef 8, i32 noundef %i.ab) #47
          to label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.u
  invoke fastcc void @_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder16push_slot_alwaysINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorNtNtNtCsdl0l68gAy31_9arrow_ipc3gen4File5BlockEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k, i16 noundef 10, i32 noundef %i.ah) #47
          to label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE16add_dictionariesCs14kWLkQVSKO_14deltalake_core.exit
  br i1 %.not38.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit
  %i.dy = load i64, ptr %i.cm, align 8, !alias.scope !18909, !noundef !27
  %.sroa.0.0.i.i.i.i69 = call noundef i64 @llvm.umax.i64(i64 %i.dy, i64 4)
  store i64 %.sroa.0.0.i.i.i.i69, ptr %i.cm, align 8, !alias.scope !18909
  %i.dz = load i64, ptr %i.ar, align 8, !alias.scope !18909, !noundef !27 ; 3 uses
  %i.ea = sub i64 0, %i.dz
  %i.eb = and i64 %i.ea, 3                        ; 3 uses
  %.val1.i.i.i.i70 = load i64, ptr %i.cq, align 8, !alias.scope !18910, !noundef !27 ; 3 uses
  %i.ec = icmp sgt i64 %.val1.i.i.i.i70, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = sub i64 %.val1.i.i.i.i70, %i.dz
  %.not.i.i.i.i71 = icmp ult i64 %i.ed, %i.eb
  br i1 %.not.i.i.i.i71, label %.lr.ph.i.i.i.i83, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72

.lr.ph.i.i.i.i83:                                 ; preds = %bb.v, %.noexc85
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %.lr.ph.i.i.i.i83
  %.val.i.i.i.i84 = load i64, ptr %i.cq, align 8, !alias.scope !18910, !noundef !27 ; 3 uses
  %i.ee = icmp sgt i64 %.val.i.i.i.i84, -1
  call void @llvm.assume(i1 %i.ee)
  %i.ef = load i64, ptr %i.ar, align 8, !alias.scope !18910, !noundef !27 ; 2 uses
  %i.eg = sub i64 %.val.i.i.i.i84, %i.ef
  %i.eh = icmp ult i64 %i.eg, %i.eb
  br i1 %i.eh, label %.lr.ph.i.i.i.i83, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72: ; preds = %.noexc85, %bb.v
  %.val1.i2.i.i.i73 = phi i64 [ %.val1.i.i.i.i70, %bb.v ], [ %.val.i.i.i.i84, %.noexc85 ] ; 2 uses
  %i.ei = phi i64 [ %i.dz, %bb.v ], [ %i.ef, %.noexc85 ]
  %i.ej = add i64 %i.ei, %i.eb                    ; 3 uses
  store i64 %i.ej, ptr %i.ar, align 8, !alias.scope !18909
  %i.ek = sub i64 %.val1.i2.i.i.i73, %i.ej
  %.not.i3.i.i.i74 = icmp ult i64 %i.ek, 4
  br i1 %.not.i3.i.i.i74, label %.lr.ph.i4.i.i.i81, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75

.lr.ph.i4.i.i.i81:                                ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72, %.noexc86
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc86:                                         ; preds = %.lr.ph.i4.i.i.i81
  %.val.i5.i.i.i82 = load i64, ptr %i.cq, align 8, !alias.scope !18911, !noundef !27 ; 3 uses
  %i.el = icmp sgt i64 %.val.i5.i.i.i82, -1
  call void @llvm.assume(i1 %i.el)
  %i.em = load i64, ptr %i.ar, align 8, !alias.scope !18911, !noundef !27 ; 2 uses
  %i.en = sub i64 %.val.i5.i.i.i82, %i.em
  %i.eo = icmp ult i64 %i.en, 4
  br i1 %i.eo, label %.lr.ph.i4.i.i.i81, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75: ; preds = %.noexc86, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72
  %.val1.i.i.i76 = phi i64 [ %.val1.i2.i.i.i73, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72 ], [ %.val.i5.i.i.i82, %.noexc86 ] ; 4 uses
  %i.ep = phi i64 [ %i.ej, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i72 ], [ %i.em, %.noexc86 ] ; 3 uses
  %i.eq = add i64 %i.ep, 4                        ; 3 uses
  store i64 %i.eq, ptr %i.ar, align 8, !alias.scope !18909
  %i.er = sub i64 %.val1.i.i.i76, %i.eq           ; 2 uses
  %i.es = icmp ult i64 %.val1.i.i.i76, %i.eq
  br i1 %i.es, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i77, !prof !44

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i77: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit6.i.i.i75
  %.not.i8.i.i.i78 = icmp ugt i64 %i.ep, -5
  br i1 %.not.i8.i.i.i78, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !28

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i77
  %.val.i.i.i79 = load ptr, ptr %i.di, align 8, !alias.scope !18909, !nonnull !27, !noundef !27
  %i.et = getelementptr inbounds nuw i8, ptr %.val.i.i.i79, i64 %i.er
  %i.eu = trunc i64 %i.ep to i32
  %reass.sub197 = sub i32 %i.eu, %.sroa.68.0
  %i.ev = add i32 %reass.sub197, 4
  store i32 %i.ev, ptr %i.et, align 1, !alias.scope !18912, !noalias !18913
  %i.ew = load i64, ptr %i.ar, align 8, !alias.scope !18909, !noundef !27
  %i.ex = load i64, ptr %i.do, align 8, !alias.scope !18914, !noundef !27 ; 3 uses
  %i.ey = load i64, ptr %i.dn, align 8, !range !36, !alias.scope !18914, !noundef !27
  %i.ez = icmp eq i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.w, label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit

bb.w:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocE8grow_oneCsdl0l68gAy31_9arrow_ipc(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dn)
          to label %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.w, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushINtNtB8_10primitives9WIPOffsetINtNtB8_6vector6VectorINtB1d_15ForwardsUOffsetNtNtNtCsdl0l68gAy31_9arrow_ipc3gen6Schema8KeyValueEEEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.fa = trunc i64 %i.ew to i32
  %i.fb = load ptr, ptr %i.dt, align 8, !alias.scope !18914, !nonnull !27, !noundef !27
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ex ; 2 uses
  store i32 %i.fa, ptr %i.fc, align 4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i16 12, ptr %i.fd, align 4
  %i.fe = add i64 %i.ex, 1
  store i64 %i.fe, ptr %i.do, align 8, !alias.scope !18914
  br label %bb.x

bb.x:                                             ; preds = %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE19add_custom_metadataCs14kWLkQVSKO_14deltalake_core.exit, %_RNvMsa_NtNtCsdl0l68gAy31_9arrow_ipc3gen4FileINtB5_13FooterBuilderNtNtCs2TwJzntlzha_11flatbuffers7builder16DefaultAllocatorE17add_recordBatchesCs14kWLkQVSKO_14deltalake_core.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !18915)
  call void @llvm.experimental.noalias.scope.decl(metadata !18916)
  %i.ff = load i64, ptr %i.cm, align 8, !alias.scope !18917, !noundef !27
  %.sroa.0.0.i.i.i.i90 = call noundef i64 @llvm.umax.i64(i64 %i.ff, i64 4)
  store i64 %.sroa.0.0.i.i.i.i90, ptr %i.cm, align 8, !alias.scope !18917
  %i.fg = load i64, ptr %i.ar, align 8, !alias.scope !18917, !noundef !27 ; 3 uses
  %i.fh = sub i64 0, %i.fg
  %i.fi = and i64 %i.fh, 3                        ; 3 uses
  %.val1.i.i.i.i91 = load i64, ptr %i.cq, align 8, !alias.scope !18918, !noundef !27 ; 3 uses
  %i.fj = icmp sgt i64 %.val1.i.i.i.i91, -1
  call void @llvm.assume(i1 %i.fj)
  %i.fk = sub i64 %.val1.i.i.i.i91, %i.fg
  %.not.i.i.i.i92 = icmp ult i64 %i.fk, %i.fi
  br i1 %.not.i.i.i.i92, label %.lr.ph.i.i.i.i105, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93

.lr.ph.i.i.i.i105:                                ; preds = %bb.x, %.noexc107
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %.lr.ph.i.i.i.i105
  %.val.i.i.i.i106 = load i64, ptr %i.cq, align 8, !alias.scope !18918, !noundef !27 ; 3 uses
  %i.fl = icmp sgt i64 %.val.i.i.i.i106, -1
  call void @llvm.assume(i1 %i.fl)
  %i.fm = load i64, ptr %i.ar, align 8, !alias.scope !18918, !noundef !27 ; 2 uses
  %i.fn = sub i64 %.val.i.i.i.i106, %i.fm
  %i.fo = icmp ult i64 %i.fn, %i.fi
  br i1 %i.fo, label %.lr.ph.i.i.i.i105, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93: ; preds = %.noexc107, %bb.x
  %.val1.i3.i.i.i94 = phi i64 [ %.val1.i.i.i.i91, %bb.x ], [ %.val.i.i.i.i106, %.noexc107 ] ; 2 uses
  %i.fp = phi i64 [ %i.fg, %bb.x ], [ %i.fm, %.noexc107 ]
  %i.fq = add i64 %i.fp, %i.fi                    ; 3 uses
  store i64 %i.fq, ptr %i.ar, align 8, !alias.scope !18917
  %i.fr = sub i64 %.val1.i3.i.i.i94, %i.fq
  %.not.i4.i.i.i95 = icmp ult i64 %i.fr, 4
  br i1 %.not.i4.i.i.i95, label %.lr.ph.i5.i.i.i103, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96

.lr.ph.i5.i.i.i103:                               ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93, %.noexc108
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %.lr.ph.i5.i.i.i103
  %.val.i6.i.i.i104 = load i64, ptr %i.cq, align 8, !alias.scope !18919, !noundef !27 ; 3 uses
  %i.fs = icmp sgt i64 %.val.i6.i.i.i104, -1
  call void @llvm.assume(i1 %i.fs)
  %i.ft = load i64, ptr %i.ar, align 8, !alias.scope !18919, !noundef !27 ; 2 uses
  %i.fu = sub i64 %.val.i6.i.i.i104, %i.ft
  %i.fv = icmp ult i64 %i.fu, 4
  br i1 %i.fv, label %.lr.ph.i5.i.i.i103, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96: ; preds = %.noexc108, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93
  %.val1.i.i.i97 = phi i64 [ %.val1.i3.i.i.i94, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93 ], [ %.val.i6.i.i.i104, %.noexc108 ] ; 4 uses
  %i.fw = phi i64 [ %i.fq, %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i.i93 ], [ %i.ft, %.noexc108 ] ; 2 uses
  %i.fx = add i64 %i.fw, 4                        ; 3 uses
  store i64 %i.fx, ptr %i.ar, align 8, !alias.scope !18917
  %i.fy = sub i64 %.val1.i.i.i97, %i.fx           ; 2 uses
  %i.fz = icmp ult i64 %.val1.i.i.i97, %i.fx
  br i1 %i.fz, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i98, !prof !44

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i98: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit7.i.i.i96
  %.not.i9.i.i.i99 = icmp ugt i64 %i.fw, -5
  br i1 %.not.i9.i.i.i99, label %.invoke262, label %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !28

_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i.i98
  %.val.i.i.i100 = load ptr, ptr %i.di, align 8, !alias.scope !18917, !nonnull !27, !noundef !27
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i.i.i100, i64 %i.fy
  store i32 -252645136, ptr %i.ga, align 1, !alias.scope !18920
  %i.gb = load i64, ptr %i.ar, align 8, !alias.scope !18917, !noundef !27 ; 3 uses
  %i.gc = trunc i64 %i.gb to i32                  ; 6 uses
  %i.gd = load i64, ptr %i.do, align 8, !alias.scope !18921, !noundef !27 ; 2 uses
  %.not.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.gd, 3
  %i.ge = load ptr, ptr %i.dt, align 8, !alias.scope !18921, !nonnull !27, !noundef !27 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.idx.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = getelementptr i8, ptr %i.ge, i64 4
  %.val.i.i30.i.i = load i16, ptr %i.gh, align 4, !noalias !18922, !noundef !27
  %i.gi = invoke noundef i16 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1p_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator4foldtNCINvNvB2F_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.gf, i16 noundef %.val.i.i30.i.i)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %bb.y
  %i.gj = zext i16 %i.gi to i64
  %i.gk = add nuw nsw i64 %i.gj, 2
  %.pre.i.i = load i64, ptr %i.ar, align 8, !alias.scope !18923
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc111, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gl = phi i64 [ %.pre.i.i, %.noexc111 ], [ %i.gb, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.gk, %.noexc111 ], [ 4, %_RINvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB6_17FlatBufferBuilder4pushmECs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 5 uses
  %.val1.i31.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18923, !noundef !27 ; 3 uses
  %i.gm = icmp sgt i64 %.val1.i31.i.i, -1
  call void @llvm.assume(i1 %i.gm)
  %i.gn = sub i64 %.val1.i31.i.i, %i.gl           ; 2 uses
  %.not.i32.i.i = icmp ult i64 %i.gn, %.sroa.0.0.i.i
  br i1 %.not.i32.i.i, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i, %.noexc112
  invoke void @_RNvXs1_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_16DefaultAllocatorNtB5_9Allocator14grow_downwards(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc112:                                        ; preds = %.lr.ph.i.i.i
  %.val.i33.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18923, !noundef !27 ; 3 uses
  %i.go = icmp sgt i64 %.val.i33.i.i, -1
  call void @llvm.assume(i1 %i.go)
  %i.gp = load i64, ptr %i.ar, align 8, !alias.scope !18923, !noundef !27 ; 2 uses
  %i.gq = sub i64 %.val.i33.i.i, %i.gp            ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %.sroa.0.0.i.i
  br i1 %i.gr, label %.lr.ph.i.i.i, label %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.noexc112, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.pre-phi.i.i = phi i64 [ %i.gn, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.gq, %.noexc112 ] ; 3 uses
  %.val27.i.i = phi i64 [ %.val1.i31.i.i, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.val.i33.i.i, %.noexc112 ] ; 3 uses
  %i.gs = phi i64 [ %i.gl, %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterNtNtCs2TwJzntlzha_11flatbuffers7builder8FieldLocENCNvB1j_19get_vtable_byte_len0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2z_6max_by4foldtNvYtNtNtBc_3cmp3Ord3cmpE0ECs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.gp, %.noexc112 ] ; 6 uses
  %i.gt = add i64 %i.gs, %.sroa.0.0.i.i           ; 4 uses
  store i64 %i.gt, ptr %i.ar, align 8, !alias.scope !18921
  %i.gu = sub i64 %.val27.i.i, %i.gt              ; 4 uses
  %i.gv = icmp ult i64 %.pre-phi.i.i, %i.gu
  %.not.i34.i.i = icmp ugt i64 %i.gs, %.val27.i.i
  %or.cond.i.i.i = or i1 %.not.i34.i.i, %i.gv
  br i1 %or.cond.i.i.i, label %.invoke, label %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !44

_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RNvMs3_NtCs2TwJzntlzha_11flatbuffers7builderNtB5_17FlatBufferBuilder15ensure_capacityCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val26.i.i = load ptr, ptr %i.di, align 8, !alias.scope !18921, !nonnull !27, !noundef !27
  %i.gw = sub nuw i64 %.pre-phi.i.i, %i.gu        ; 10 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.val26.i.i, i64 %i.gu ; 5 uses
  %i.gy = icmp ugt i64 %i.gw, 1
  br i1 %i.gy, label %bb.z, label %.invoke, !prof !43

bb.z:                                             ; preds = %_RNvXsd_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index8IndexMutNtB5_17ReverseIndexRangeE9index_mutCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gz = trunc i64 %.sroa.0.0.i.i to i16
  store i16 %i.gz, ptr %i.gx, align 1
  %i.ha = icmp ugt i64 %i.gw, 3
  br i1 %i.ha, label %bb.aa, label %.invoke, !prof !43

bb.aa:                                            ; preds = %bb.z
  %3 = sub i32 %i.gc, %2
  %4 = trunc i32 %3 to i16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  store i16 %4, ptr %i.hb, align 1
  %i.hc = load ptr, ptr %i.dt, align 8, !alias.scope !18921, !nonnull !27, !noundef !27 ; 5 uses
  %i.hd = load i64, ptr %i.do, align 8, !alias.scope !18921, !noundef !27 ; 2 uses
  %.idx60.i.i = shl i64 %i.hd, 3                  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.idx60.i.i
  %i.hf = icmp eq i64 %i.hd, 0
  br i1 %i.hf, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.aa
  %i.hg = add i64 %.idx60.i.i, -8                 ; 2 uses
  %i.hh = and i64 %i.hg, 8
  %lcmp.mod.not.not = icmp eq i64 %i.hh, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hj = load i16, ptr %i.hi, align 4, !noundef !27
  %i.hk = zext i16 %i.hj to i64                   ; 3 uses
  %i.hl = add nuw nsw i64 %i.hk, 2                ; 2 uses
  %.not.i.i.i.prol = icmp ugt i64 %i.hl, %i.gw
  br i1 %.not.i.i.i.prol, label %.invoke, label %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol, !prof !44

_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol: ; preds = %.lr.ph.i.i.prol
  %i.hm = load i32, ptr %i.hc, align 4, !noundef !27
  %i.hn = sub i32 %i.gc, %i.hm
  %i.ho = trunc i32 %i.hn to i16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hk
  store i16 %i.ho, ptr %i.hq, align 1, !noalias !18924
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.05.059.i.i.unr = phi ptr [ %i.hc, %.lr.ph.i.i.preheader ], [ %i.hp, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.prol ]
  %i.hr = icmp eq i64 %i.hg, 0
  br i1 %i.hr, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1
  %.sroa.05.059.i.i = phi ptr [ %i.ii, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1 ], [ %.sroa.05.059.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 4
  %i.ht = load i16, ptr %i.hs, align 4, !noundef !27
  %i.hu = zext i16 %i.ht to i64                   ; 3 uses
  %i.hv = add nuw nsw i64 %i.hu, 2                ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.hv, %i.gw
  br i1 %.not.i.i.i, label %.invoke, label %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i, !prof !44

_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i: ; preds = %.lr.ph.i.i
  %i.hw = load i32, ptr %.sroa.05.059.i.i, align 4, !noundef !27
  %i.hx = sub i32 %i.gc, %i.hw
  %i.hy = trunc i32 %i.hx to i16
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hu
  store i16 %i.hy, ptr %i.hz, align 1, !noalias !18924
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 12
  %i.ib = load i16, ptr %i.ia, align 4, !noundef !27
  %i.ic = zext i16 %i.ib to i64                   ; 3 uses
  %i.id = add nuw nsw i64 %i.ic, 2                ; 2 uses
  %.not.i.i.i.1 = icmp ugt i64 %i.id, %i.gw
  br i1 %.not.i.i.i.1, label %.invoke, label %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1, !prof !44

_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1: ; preds = %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 8
  %i.if = load i32, ptr %i.ie, align 4, !noundef !27
  %i.ig = sub i32 %i.gc, %i.if
  %i.ih = trunc i32 %i.ig to i16
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.05.059.i.i, i64 16 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.ic
  store i16 %i.ih, ptr %i.ij, align 1, !noalias !18924
  %i.ik = icmp eq ptr %i.ii, %i.he
  br i1 %i.ik, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %_RNvMNtCs2TwJzntlzha_11flatbuffers13vtable_writerNtB2_12VTableWriter18write_field_offset.exit.i.i.1, %bb.aa
  %.val29.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18921, !noundef !27 ; 5 uses
  %i.il = sub i64 %.val29.i.i, %i.gt              ; 4 uses
  %i.im = sub i64 %.val29.i.i, %i.gs              ; 3 uses
  %i.in = icmp ult i64 %i.im, %i.il
  %.not.i35.i.i = icmp ugt i64 %i.gs, %.val29.i.i
  %or.cond.i36.i.i = or i1 %.not.i35.i.i, %i.in
  br i1 %or.cond.i36.i.i, label %.invoke, label %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i, !prof !44

_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %._crit_edge.i.i
  %.val28.i.i = load ptr, ptr %i.di, align 8, !alias.scope !18921, !nonnull !27, !noundef !27 ; 2 uses
  %i.io = sub nuw i64 %i.im, %i.il                ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.val28.i.i, i64 %i.il ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 3 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !alias.scope !18921, !nonnull !27, !noundef !27 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 5 uses
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !18921, !noundef !27 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18925)
  switch i64 %i.it, label %.lr.ph.i38.i.i [
    i64 0, label %.thread.i.i
    i64 1, label %._crit_edge.i.i.i
  ]

.lr.ph.i38.i.i:                                   ; preds = %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ab

._crit_edge.i.loopexit.i.i:                       ; preds = %.noexc119
  %.val.i.i39.pre.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18921, !noalias !18926
  %.val6.i.i.pre.i.i = load ptr, ptr %i.di, align 8, !alias.scope !18921, !noalias !18926
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.loopexit.i.i, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.val6.i.i.i.i = phi ptr [ %.val28.i.i, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.val6.i.i.pre.i.i, %._crit_edge.i.loopexit.i.i ]
  %.val.i.i39.i.i = phi i64 [ %.val29.i.i, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %.val.i.i39.pre.i.i, %._crit_edge.i.loopexit.i.i ] ; 3 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ], [ %i.jz, %._crit_edge.i.loopexit.i.i ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.sroa.05.0.lcssa.i.i.i
  %.val15.i.i.i = load i32, ptr %i.iw, align 4, !alias.scope !18925, !noalias !18927, !noundef !27
  %i.ix = icmp sgt i64 %.val.i.i39.i.i, -1
  call void @llvm.assume(i1 %i.ix)
  %i.iy = zext i32 %.val15.i.i.i to i64
  %i.iz = sub nsw i64 %.val.i.i39.i.i, %i.iy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18928
  store ptr %.val6.i.i.i.i, ptr %i.b, align 8, !noalias !18928
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.val.i.i39.i.i, ptr %i.ja, align 8, !noalias !18928
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.iz, ptr %i.jb, align 8, !noalias !18928
  %i.jc = invoke { ptr, i64 } @_RNvMs_NtCs2TwJzntlzha_11flatbuffers6vtableNtB4_6VTable8as_bytes(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc118 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc118:                                        ; preds = %._crit_edge.i.i.i
  %i.jd = extractvalue { ptr, i64 } %i.jc, 0
  %i.je = extractvalue { ptr, i64 } %i.jc, 1      ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.io, i64 %i.je)
  %i.jf = call i32 @memcmp(ptr nonnull %i.ip, ptr %i.jd, i64 %spec.store.select.i.i.i.i), !noalias !18926 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp eq i32 %i.jf, 0
  %i.ji = sub i64 %i.io, %i.je
  %spec.select.i.i.i.i = select i1 %i.jh, i64 %i.ji, i64 %i.jg ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18928
  %i.jj = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %i.jj, label %bb.ag, label %bb.ac

bb.ab:                                            ; preds = %.noexc119, %.lr.ph.i38.i.i
  %.sroa.01.024.i.i.i = phi i64 [ %i.it, %.lr.ph.i38.i.i ], [ %i.ka, %.noexc119 ] ; 2 uses
  %.sroa.05.023.i.i.i = phi i64 [ 0, %.lr.ph.i38.i.i ], [ %i.jz, %.noexc119 ] ; 2 uses
  %i.jk = lshr i64 %.sroa.01.024.i.i.i, 1         ; 2 uses
  %i.jl = add nuw nsw i64 %i.jk, %.sroa.05.023.i.i.i ; 3 uses
  %i.jm = icmp ult i64 %i.jl, %i.it
  call void @llvm.assume(i1 %i.jm)
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.jl
  %.val18.i.i.i = load i32, ptr %i.jn, align 4, !alias.scope !18925, !noalias !18927, !noundef !27
  %.val.i19.i.i.i = load i64, ptr %i.cq, align 8, !alias.scope !18921, !noalias !18926, !noundef !27 ; 3 uses
  %i.jo = icmp sgt i64 %.val.i19.i.i.i, -1
  call void @llvm.assume(i1 %i.jo)
  %i.jp = zext i32 %.val18.i.i.i to i64
  %i.jq = sub nsw i64 %.val.i19.i.i.i, %i.jp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18928
  %.val6.i20.i.i.i = load ptr, ptr %i.di, align 8, !alias.scope !18921, !noalias !18926, !nonnull !27, !noundef !27
  store ptr %.val6.i20.i.i.i, ptr %i.a, align 8, !noalias !18928
  store i64 %.val.i19.i.i.i, ptr %i.iu, align 8, !noalias !18928
  store i64 %i.jq, ptr %i.iv, align 8, !noalias !18928
  %i.jr = invoke { ptr, i64 } @_RNvMs_NtCs2TwJzntlzha_11flatbuffers6vtableNtB4_6VTable8as_bytes(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %.noexc119 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc119:                                        ; preds = %bb.ab
  %i.js = extractvalue { ptr, i64 } %i.jr, 0
  %i.jt = extractvalue { ptr, i64 } %i.jr, 1      ; 2 uses
  %spec.store.select.i21.i.i.i = call i64 @llvm.umin.i64(i64 %i.io, i64 %i.jt)
  %i.ju = call i32 @memcmp(ptr nonnull %i.ip, ptr %i.js, i64 %spec.store.select.i21.i.i.i), !noalias !18926 ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp eq i32 %i.ju, 0
  %i.jx = sub i64 %i.io, %i.jt
  %spec.select.i22.i.i.i = select i1 %i.jw, i64 %i.jx, i64 %i.jv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18928
  %i.jy = icmp sgt i64 %spec.select.i22.i.i.i, 0
  %i.jz = select i1 %i.jy, i64 %.sroa.05.023.i.i.i, i64 %i.jl, !unpredictable !27 ; 2 uses
  %i.ka = sub nuw nsw i64 %.sroa.01.024.i.i.i, %i.jk ; 2 uses
  %i.kb = icmp ugt i64 %i.ka, 1
  br i1 %i.kb, label %bb.ab, label %._crit_edge.i.loopexit.i.i

bb.ac:                                            ; preds = %.noexc118
  %spec.select.i.lobit.i.i.i = lshr i64 %spec.select.i.i.i.i, 63
  %i.kc = add nuw nsw i64 %spec.select.i.lobit.i.i.i, %.sroa.05.0.lcssa.i.i.i ; 4 uses
  %i.kd = icmp ule i64 %i.kc, %i.it
  call void @llvm.assume(i1 %i.kd)
  %i.ke = load i64, ptr %i.is, align 8, !alias.scope !18929, !noundef !27 ; 4 uses
  %i.kf = icmp ult i64 %i.ke, 2305843009213693952
  call void @llvm.assume(i1 %i.kf)
  %i.kg = icmp samesign ugt i64 %i.kc, %i.ke
  br i1 %i.kg, label %bb.ad, label %.thread.i.i, !prof !18930

.thread.i.i:                                      ; preds = %bb.ac, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.kh = phi i64 [ %i.ke, %bb.ac ], [ %i.it, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 4 uses
  %.sroa.4.0.i.ph54.i.i = phi i64 [ %i.kc, %bb.ac ], [ %i.it, %_RNvXsc_NtCs2TwJzntlzha_11flatbuffers7builderShINtNtNtCsbvkFyIu7lgC_4core3ops5index5IndexNtB5_17ReverseIndexRangeE5indexCs14kWLkQVSKO_14deltalake_core.exit.i.i ] ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %.in.i.i = load i64, ptr %i.ar, align 8, !alias.scope !18921, !noundef !27
  %i.kj = trunc i64 %.in.i.i to i32               ; 2 uses
  %i.kk = load i64, ptr %i.ki, align 8, !range !36, !alias.scope !18929, !noundef !27
  %i.kl = icmp eq i64 %i.kh, %i.kk
  br i1 %i.kl, label %bb.ae, label %.noexc121

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef range(i64 0, 2305843009213693952) %i.kc, i64 noundef %i.ke, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #46
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.ad
  unreachable
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.w = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt.exit7

bb.h:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt.exit7

_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt.exit7: ; preds = %bb.h, %bb.g, %bb.f, %.split8, %.split, %bb.c, %_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt.exit
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ true, %_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt.exit ], [ true, %.split8 ], [ true, %.split ], [ %i.w, %bb.g ], [ %i.x, %bb.h ], [ %i.v, %bb.f ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsbvkFyIu7lgC_4core3ops5rangeINtB4_5RangeyENtNtB8_3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !24048, !noalias !24049, !noundef !27 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split8

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit

.split8:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsC_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.c

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.c

_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsE_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.c

bb.c:                                             ; preds = %.split8, %.split, %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit
  %i.j = load ptr, ptr %1, align 8, !nonnull !27, !noundef !27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !27, !align !34, !noundef !27
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !27, !nonnull !27
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @907, i64 noundef 2) #47
  br i1 %i.o, label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.a, align 8, !alias.scope !24050, !noalias !24051, !noundef !27 ; 2 uses
  %i.r = and i32 %i.q, 33554432
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.q, 67108864
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @_RNvXsC_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7

bb.g:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7

bb.h:                                             ; preds = %bb.e
  %i.x = tail call noundef zeroext i1 @_RNvXsE_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7

_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit7: ; preds = %bb.h, %bb.g, %bb.f, %.split8, %.split, %bb.c, %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ true, %_RNvXsX_NtNtCsbvkFyIu7lgC_4core3fmt3numyNtB7_5Debug3fmt.exit ], [ true, %.split8 ], [ true, %.split ], [ %i.w, %bb.g ], [ %i.x, %bb.h ], [ %i.v, %bb.f ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCshmPyUV8PP35_6chrono6format10formattingINtB4_13DelayedFormatNtNtB6_8strftime13StrftimeItemsENtNtCsbvkFyIu7lgC_4core3fmt7Display3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 14 uses
  %i.h = alloca [12 x i8], align 8                ; 8 uses
  %i.i = alloca [12 x i8], align 4                ; 6 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 1                 ; 8 uses
  %i.m = alloca [4 x i8], align 1                 ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [4 x i8], align 4                 ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [4 x i8], align 4                 ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [4 x i8], align 4                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [4 x i8], align 4                ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [4 x i8], align 4                ; 4 uses
  %i.ag = alloca [4 x i8], align 4                ; 21 uses
  %i.ah = alloca [96 x i8], align 8               ; 14 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [8 x i8], align 8                ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [8 x i8], align 8                ; 8 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [8 x i8], align 8                ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 11 uses
  %i.av = alloca [24 x i8], align 8               ; 10 uses
  %i.aw = alloca [40 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 122 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 0, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 82 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 221 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24532)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !24533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.ay, i64 40, i1 false), !noalias !24532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !24533
  invoke void @_RNvXs_NtNtCshmPyUV8PP35_6chrono6format8strftimeNtB4_13StrftimeItemsNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.av, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.aw)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.a
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
  %2 = add nuw nsw i32 %spec.select.i131.i.i, 7
  %.pn.i.i.i = select i1 %i.cd, i32 %2, i32 %spec.select.i131.i.i
  %.sroa.0.0.neg.i.i.i = add nuw nsw i32 %i.bz, 6
  %3 = sub nsw i32 %.sroa.0.0.neg.i.i.i, %.pn.i.i.i
  %4 = trunc nsw i32 %3 to i16
  %.lhs.trunc1.i.i.i = add nsw i16 %4, 6
  %i.fx = sdiv i16 %.lhs.trunc1.i.i.i, 7          ; 2 uses
  %i.fy = trunc nuw nsw i16 %i.fx to i8           ; 2 uses
  %i.fz = udiv i8 %i.fy, 10
  %i.ga = icmp samesign ult i16 %i.fx, 10
  %i.gb = add nuw nsw i8 %i.fz, 48
  %i.gc = urem i8 %i.fy, 10
  %i.gd = or disjoint i8 %i.gc, 48
  %i.ge = trunc i32 %i.ci to i8
  %i.gf = srem i32 %i.cs, 100                     ; 4 uses
  %i.gg = icmp slt i32 %i.gf, 0
  %i.gh = add nsw i32 %i.gf, 100
  %spec.select.i.i.i = select i1 %i.gg, i32 %i.gh, i32 %i.gf ; 2 uses
  %i.gi = trunc nuw nsw i32 %spec.select.i.i.i to i8 ; 2 uses
  %i.gj = udiv i8 %i.gi, 10
  %i.gk = icmp samesign ult i32 %spec.select.i.i.i, 10
  %i.gl = add nuw nsw i8 %i.gj, 48
  %i.gm = urem i8 %i.gi, 10
  %i.gn = or disjoint i8 %i.gm, 48
  %i.go = sdiv i32 %i.cs, 100
  %.lobit.i.i.i = ashr i32 %i.gf, 31
  %.sroa.0.0.i.i.i = add nsw i32 %.lobit.i.i.i, %i.go
  %i.gp = trunc i32 %.sroa.0.0.i.i.i to i8        ; 3 uses
  %i.gq = udiv i8 %i.gp, 10
  %i.gr = icmp ult i8 %i.gp, 10
  %i.gs = add nuw nsw i8 %i.gq, 48
  %i.gt = urem i8 %i.gp, 10
  %i.gu = or disjoint i8 %i.gt, 48
  %.sroa.03.0.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 4 uses
  %spec.select.i = select i1 %i.ek, i32 %.neg.i.i, i32 0
  %i.gw = select i1 %i.ek, i32 %i.eo, i32 0
  %spec.select206.i = add nsw i32 %i.ej, %i.gw    ; 2 uses
  %i.gx = sdiv i32 %spec.select206.i, 100         ; 2 uses
  %i.gy = mul nsw i32 %spec.select206.i, 1461
  %i.gz = ashr i32 %i.gy, 2
  %i.ha = ashr i32 %i.gx, 2
  %i.hb = add i32 %i.eq, %spec.select.i
  %i.hc = sub i32 %i.hb, %i.gx
  %i.hd = add i32 %i.hc, %i.gz
  %narrow.i.i = add i32 %i.hd, %i.ha
  %i.he = sext i32 %narrow.i.i to i64
  %i.hf = mul nsw i64 %i.he, 86400
  %i.hg = add nsw i64 %i.er, %i.hf
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.415.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.hl = insertelement <2 x ptr> poison, ptr %.146.i.i, i64 0
  %i.hm = insertelement <2 x ptr> %i.hl, ptr %i.bt, i64 1
  %i.hn = shl nuw nsw i16 %i.cc, 3
  %switch.shiftamt = zext nneg i16 %i.hn to i56
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
  %i.ho = load i8, ptr %i.au, align 8, !range !69, !noalias !24533, !noundef !27
  switch i8 %i.ho, label %default.unreachable [
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
  %i.hp = load i8, ptr %i.eh, align 2, !range !40, !noalias !24533, !noundef !27 ; 18 uses
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
  %i.hq = phi i32 [ %i.ky, %.noexc13.i ], [ %i.cs, %bb.d ] ; 4 uses
end_hunk_2
begin_hunk_3_@_RNvYNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateNtNtCs8PD1TAMvwcd_18datafusion_session7session7Session21default_table_optionsCs14kWLkQVSKO_14deltalake_core:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !25890, !nonnull !27, !noundef !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @_RNvMsh_NtCsjhHCjzi9uUI_17datafusion_common6configNtB5_12TableOptions27combine_with_session_config(ptr noalias noundef nonnull sret([960 x i8]) align 8 captures(none) dereferenceable(960) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(960) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(880) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session15DeltaSessionExt27ensure_log_store_registeredB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(1680) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(192) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [17 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [88 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !27, !nonnull !27
  call void %i.f(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noundef nonnull %2) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !27, !noundef !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  invoke void @_RINvMs_NtCs4m0Tg8nAduX_20datafusion_execution11runtime_envNtB5_10RuntimeEnv12object_storeRNtNtB7_12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.f, %bb.e, %bb.k, %bb.j, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(88) %i.d) #44
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !range !45, !noundef !27
  %.not = icmp eq i64 %i.k, 20
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !25903)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25904)
  call void @llvm.experimental.noalias.scope.decl(metadata !25905)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !25906, !nonnull !27, !noundef !27
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !25906
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

bb.f:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.j unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit
  store i64 -9223372036854775711, ptr %0, align 16
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !27, !nonnull !27
  %i.t = invoke { ptr, ptr } %i.s(ptr noundef nonnull %2, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(17) %i.a)
          to label %bb.k unwind label %bb.b       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = invoke { ptr, ptr } @_RNvMs_NtCs4m0Tg8nAduX_20datafusion_execution11runtime_envNtB4_10RuntimeEnv21register_object_store(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.d, ptr noundef nonnull %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.v)
          to label %bb.l unwind label %bb.b       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.x = extractvalue { ptr, ptr } %i.w, 0        ; 3 uses
  %i.y = extractvalue { ptr, ptr } %i.w, 1
  store ptr %i.x, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !25907
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.m, %bb.l, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.o:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @1269, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias nonnull readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1284, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @1269, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsbvkFyIu7lgC_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1285, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB6_8TimeZone16timestamp_microsCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([28 x i8]) align 4 captures(none) dereferenceable(28) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i64 %2, 1000000
  %i.b = srem i64 %2, 1000000                     ; 3 uses
  %.lobit.i = ashr i64 %i.b, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.a      ; 2 uses
  %i.c = sdiv i64 %.sroa.0.0.i, 86400
  %i.d = srem i64 %.sroa.0.0.i, 86400             ; 3 uses
  %.lobit.i.i = ashr i64 %i.d, 63
  %.sroa.0.0.i.i = add nsw i64 %.lobit.i.i, %i.c
  %i.e = trunc nsw i64 %.sroa.0.0.i.i to i32
  %i.f = add nsw i32 %i.e, 719163
  %i.g = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.f), !noalias !25910 ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.d, 0
  %3 = select i1 %i.h, i64 86400, i64 0
  %spec.select.i.i = add nsw i64 %3, %i.d
  %i.i = icmp slt i64 %i.b, 0
  %4 = select i1 %i.i, i64 1000000, i64 0
  %spec.select.i = add nsw i64 %4, %i.b
  %5 = trunc nuw nsw i64 %spec.select.i to i32
  %i.j = mul nuw nsw i32 %5, 1000
  %i.k = trunc nuw nsw i64 %spec.select.i.i to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.g, ptr %i.l, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.k, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.j, ptr %.sroa.57.0..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ 0, %bb.b ], [ 2, %bb.a ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB6_8TimeZone20timestamp_millis_optCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([28 x i8]) align 4 captures(none) dereferenceable(28) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i64 %2, 1000
  %i.b = srem i64 %2, 1000                        ; 3 uses
  %.lobit.i = ashr i64 %i.b, 63
  %.sroa.0.0.i = add nsw i64 %.lobit.i, %i.a      ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  %3 = select i1 %i.c, i64 1000, i64 0
  %spec.select.i = add nsw i64 %3, %i.b
  %4 = trunc nuw nsw i64 %spec.select.i to i32
  %i.d = mul nuw nsw i32 %4, 1000000
  %i.e = sdiv i64 %.sroa.0.0.i, 86400
  %i.f = srem i64 %.sroa.0.0.i, 86400             ; 3 uses
  %.lobit.i.i = ashr i64 %i.f, 63
  %.sroa.0.0.i.i = add nsw i64 %.lobit.i.i, %i.e  ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  %5 = select i1 %i.g, i64 86400, i64 0
  %spec.select.i.i = add nsw i64 %5, %i.f
  %i.h = add nsw i64 %.sroa.0.0.i.i, -2146764485
  %or.cond.i = icmp ult i64 %i.h, -4294967296
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %.sroa.0.0.i.i to i32
  %i.j = add i32 %i.i, 719163
  %i.k = tail call noundef i32 @_RNvMNtNtCshmPyUV8PP35_6chrono5naive4dateNtB2_9NaiveDate25from_num_days_from_ce_opt(i32 noundef %i.j), !noalias !25913 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = trunc nuw nsw i64 %spec.select.i.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.m, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %.sroa.57.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %storemerge = phi i32 [ 0, %bb.c ], [ 2, %bb.a ], [ 2, %bb.b ]
  store i32 %storemerge, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @1269, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error6sourceCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7provideCs14kWLkQVSKO_14deltalake_core(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartNtNtCsbvkFyIu7lgC_4core5error5Error7type_idCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @1286, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11delete_fromBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25916
  %i.d = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 40, i64 noundef range(i64 8, 17) 8) #41, !noalias !25916 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11delete_from0E3newBR_.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #46
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11delete_from0EBT_(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #44
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider11delete_from0E3newBR_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @1287, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_argsBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [168 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.e, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25919
  %i.f = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 168, i64 noundef range(i64 8, 17) 8) #41, !noalias !25919 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0E3newBR_.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 168) #46
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0EBT_(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #44
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider14scan_with_args0E3newBR_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @1288, 1
  ret { ptr, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6updateBa_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %0, ptr nofree noundef nonnull readnone captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(144) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !25922
  %i.e = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 2673) 64, i64 noundef range(i64 8, 17) 8) #41, !noalias !25922 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0E3newBR_.exit, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #46
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0EBT_(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #44
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs6Po7BT7Nknu_5alloc5boxedINtB2_3BoxNCNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtNtCsanCXJAiNsO_18datafusion_catalog5table13TableProvider6update0E3newBR_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @1289, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error11descriptionBa_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @1269, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error5causeBa_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !113, !alias.scope !25925, !noundef !27 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775803
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 1, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 2, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 3, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 4, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 5, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 6, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
    i64 7, label %_RNvXs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB5_19CommitConflictErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source.exit
end_hunk_3
