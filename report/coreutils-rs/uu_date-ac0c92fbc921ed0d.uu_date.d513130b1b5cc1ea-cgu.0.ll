Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_date-ac0c92fbc921ed0d.uu_date.d513130b1b5cc1ea-cgu.0?download=true
inline.NumInlined: 1460
inline.NumDeleted: 758
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCsiibOIv6tv3q_7uu_date28strip_parenthesized_comments:bb.a

bb.v:                                             ; preds = %bb.u
  %i.cm = or disjoint i8 %i.cc, -32
  store i8 %i.cm, ptr %i.bs, align 1, !noalias !2979
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.ca, ptr %i.cn, align 1, !noalias !2979
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.bw, ptr %i.co, align 1, !noalias !2979
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

bb.w:                                             ; preds = %bb.u
  store i8 %i.ch, ptr %i.bs, align 1, !noalias !2979
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 %i.ce, ptr %i.cp, align 1, !noalias !2979
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i8 %i.ca, ptr %i.cq, align 1, !noalias !2979
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  store i8 %i.bw, ptr %i.cr, align 1, !noalias !2979
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.s, %bb.t, %bb.v, %bb.w
  %i.cs = add nuw i64 %.sroa.0.0.i9, %i.q         ; 2 uses
  store i64 %i.cs, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.k
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define { i32, i8 } @_RNvCsiibOIv6tv3q_7uu_date35parse_military_timezone_with_offset(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %i.a = add i64 %1, -4
  %or.cond = icmp ult i64 %i.a, -3
  br i1 %or.cond, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = load i8, ptr %0, align 1, !noalias !2986, !noundef !6 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i: ; preds = %bb.b
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !2986, !noundef !6
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.d

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i
  %i.q = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !2986, !noundef !6
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i, label %bb.d

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i
  %i.aa = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !2986, !noundef !6
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i
  %.sroa.0.0.ph = phi ptr [ %i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i ], [ %i.r, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i ], [ %i.ab, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i ], [ %i.c, %bb.c ] ; 10 uses
  %.sroa.4.0.i.ph = phi i32 [ %i.n, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i ], [ %i.y, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i ], [ %i.aj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i ], [ %i.p, %bb.c ] ; 4 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nsw i32 %.sroa.4.0.i.ph, -65
  %or.cond2 = icmp ult i32 %i.al, 26
  %i.am = or disjoint i32 %.sroa.4.0.i.ph, 32
  %spec.select = select i1 %or.cond2, i32 %i.am, i32 %.sroa.4.0.i.ph ; 8 uses
  %i.an = add nsw i32 %spec.select, -123
  %or.cond4 = icmp ult i32 %i.an, -26
  %i.ao = icmp eq i32 %spec.select, 106
  %or.cond13 = or i1 %i.ao, %or.cond4
  br i1 %or.cond13, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = ptrtoint ptr %i.b to i64
  %i.aq = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.ar = sub nuw i64 %i.ap, %i.aq                ; 6 uses
  %i.as = icmp eq ptr %.sroa.0.0.ph, %i.b
  br i1 %i.as, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load i8, ptr %.sroa.0.0.ph, align 1, !noalias !2987, !noundef !6 ; 7 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i54

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i54: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 1 ; 2 uses
  %i.aw = and i8 %i.at, 31
  %i.ax = zext nneg i8 %i.aw to i32               ; 3 uses
  %i.ay = icmp ne ptr %i.av, %i.b
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.av, align 1, !noalias !2987, !noundef !6
  %i.ba = shl nuw nsw i32 %i.ax, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %i.at, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i57, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = zext nneg i8 %i.at to i32
  br label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i57: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i54
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 2 ; 2 uses
  %i.bh = icmp ne ptr %i.bg, %i.b
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = load i8, ptr %i.bg, align 1, !noalias !2987, !noundef !6
  %i.bj = shl nuw nsw i32 %i.bc, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = shl nuw nsw i32 %i.ax, 12
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = icmp samesign ugt i8 %i.at, -17
  br i1 %i.bp, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i58, label %bb.h

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i58: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i57
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 3 ; 2 uses
  %i.br = icmp ne ptr %i.bq, %i.b
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = load i8, ptr %i.bq, align 1, !noalias !2987, !noundef !6
  %i.bt = shl nuw nsw i32 %i.ax, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bm, 6
  %i.bw = and i8 %i.bs, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i54, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i58, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i57
  %.sroa.4.0.i55.ph = phi i32 [ %i.bo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit14.i57 ], [ %i.bz, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit16.i58 ], [ %i.bd, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiibOIv6tv3q_7uu_date.exit12.i54 ], [ %i.bf, %bb.g ] ; 2 uses
  %i.ca = icmp samesign ult i32 %.sroa.4.0.i55.ph, 1114112
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = add nsw i32 %.sroa.4.0.i55.ph, -48
  %or.cond5 = icmp ult i32 %i.cb, 10
  br i1 %or.cond5, label %bb.j, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.i:                                             ; preds = %bb.e, %bb.v
  %.sroa.038.0 = phi i32 [ %.sroa.551.0.extract.trunc, %bb.v ], [ 0, %bb.e ]
  %i.cc = add nsw i32 %spec.select, -97           ; 2 uses
  %or.cond7 = icmp ult i32 %i.cc, 9
  br i1 %or.cond7, label %bb.x, label %bb.w

bb.j:                                             ; preds = %bb.h
  %cond = icmp eq i64 %i.ar, 1
  br i1 %cond, label %bb.k, label %thread-pre-split.i

bb.k:                                             ; preds = %bb.j
  switch i8 %i.at, label %bb.r [
    i8 43, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
    i8 45, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.j
  switch i8 %i.at, label %bb.r [
    i8 43, label %bb.l
    i8 45, label %bb.m
  ]

bb.l:                                             ; preds = %thread-pre-split.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 1
  %i.ce = add nsw i64 %i.ar, -1
  br label %bb.r

bb.m:                                             ; preds = %thread-pre-split.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph, i64 1 ; 2 uses
  %i.cg = add nsw i64 %i.ar, -1                   ; 2 uses
  %i.ch = icmp samesign ult i64 %i.ar, 9
  br i1 %i.ch, label %.lr.ph143.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.p, %bb.q, %bb.u, %6, %12, %20, %28, %36, %40, %47, %.preheader.i
  %.sroa.086.1.i = phi i32 [ %i.dh, %bb.q ], [ %49, %47 ], [ %i.du, %bb.u ], [ 0, %.preheader.i ], [ %4, %6 ], [ %14, %12 ], [ %22, %20 ], [ %30, %28 ], [ %38, %36 ], [ %42, %40 ], [ %i.cv, %bb.p ]
  %i.ci = zext i32 %.sroa.086.1.i to i64
  %i.cj = shl nuw i64 %i.ci, 32
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit

.lr.ph.i:                                         ; preds = %bb.m, %bb.p
  %.sroa.0.1138.i = phi ptr [ %i.ck, %bb.p ], [ %i.cf, %bb.m ] ; 3 uses
  %.sroa.26.1137.i = phi i64 [ %i.cl, %bb.p ], [ %i.cg, %bb.m ]
  %.sroa.086.0136.i = phi i32 [ %i.cv, %bb.p ], [ 0, %bb.m ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i, i64 1
  %i.cl = add nsw i64 %.sroa.26.1137.i, -1        ; 2 uses
  %i.cm = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i, i32 10) ; 2 uses
  %i.cn = extractvalue { i32, i1 } %i.cm, 0
  %i.co = extractvalue { i32, i1 } %i.cm, 1
  br i1 %i.co, label %.loopexit114.sink.split.i, label %bb.n, !prof !11

bb.n:                                             ; preds = %.lr.ph.i
  %i.cp = load i8, ptr %.sroa.0.1138.i, align 1, !alias.scope !2988, !noundef !6
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 10
  br i1 %i.cs, label %bb.o, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ct = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.cn, i32 %i.cr) ; 2 uses
  %i.cu = extractvalue { i32, i1 } %i.ct, 1
  br i1 %i.cu, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.p, !prof !11

bb.p:                                             ; preds = %bb.o
  %i.cv = extractvalue { i32, i1 } %i.ct, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.cl, 0
  br i1 %.not104.i, label %.loopexit.i, label %.lr.ph.i

.loopexit114.sink.split.i:                        ; preds = %.lr.ph.i, %.preheader115.i
  %.sroa.0.3147.lcssa.sink.i = phi ptr [ %.sroa.0.3147.i, %.preheader115.i ], [ %.sroa.0.1138.i, %.lr.ph.i ]
  %.sink190.i = phi i64 [ 513, %.preheader115.i ], [ 769, %.lr.ph.i ]
  %i.cw = load i8, ptr %.sroa.0.3147.lcssa.sink.i, align 1, !alias.scope !2988, !noundef !6
  %i.cx = add i8 %i.cw, -48
  %i.cy = icmp ult i8 %i.cx, 10
  %i.cz = select i1 %i.cy, i64 %.sink190.i, i64 257
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit

.lr.ph143.i:                                      ; preds = %bb.m, %bb.q
  %.sroa.0.2142.i = phi ptr [ %i.dg, %bb.q ], [ %i.cf, %bb.m ] ; 2 uses
  %.sroa.26.2141.i = phi i64 [ %i.df, %bb.q ], [ %i.cg, %bb.m ]
  %.sroa.086.2140.i = phi i32 [ %i.dh, %bb.q ], [ 0, %bb.m ]
  %i.da = load i8, ptr %.sroa.0.2142.i, align 1, !alias.scope !2988, !noundef !6
  %i.db = zext i8 %i.da to i32
  %i.dc = add nsw i32 %i.db, -48                  ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 10
  br i1 %i.dd, label %bb.q, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.q:                                             ; preds = %.lr.ph143.i
  %i.de = mul i32 %.sroa.086.2140.i, 10
  %i.df = add nsw i64 %.sroa.26.2141.i, -1        ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i, i64 1
  %i.dh = sub i32 %i.de, %i.dc                    ; 2 uses
  %.not105.i = icmp eq i64 %i.df, 0
  br i1 %.not105.i, label %.loopexit.i, label %.lr.ph143.i

bb.r:                                             ; preds = %bb.k, %bb.l, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.ce, %bb.l ], [ %i.ar, %thread-pre-split.i ], [ %i.ar, %bb.k ] ; 9 uses
  %.sroa.0.0.i60 = phi ptr [ %i.cd, %bb.l ], [ %.sroa.0.0.ph, %thread-pre-split.i ], [ %.sroa.0.0.ph, %bb.k ] ; 8 uses
  %i.di = icmp samesign ult i64 %.sroa.26.0.i, 8
  br i1 %i.di, label %.preheader.i, label %.preheader115.i

.preheader.i:                                     ; preds = %bb.r
  %.not107148.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not107148.i, label %.loopexit.i, label %.lr.ph152.i

.preheader115.i:                                  ; preds = %bb.r, %bb.u
  %.sroa.0.3147.i = phi ptr [ %i.dj, %bb.u ], [ %.sroa.0.0.i60, %bb.r ] ; 3 uses
  %.sroa.26.3146.i = phi i64 [ %i.dk, %bb.u ], [ %.sroa.26.0.i, %bb.r ]
  %.sroa.086.3145.i = phi i32 [ %i.du, %bb.u ], [ 0, %bb.r ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i, i64 1
  %i.dk = add nsw i64 %.sroa.26.3146.i, -1        ; 2 uses
  %i.dl = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i, i32 10) ; 2 uses
  %i.dm = extractvalue { i32, i1 } %i.dl, 0
  %i.dn = extractvalue { i32, i1 } %i.dl, 1
  br i1 %i.dn, label %.loopexit114.sink.split.i, label %bb.s, !prof !11

bb.s:                                             ; preds = %.preheader115.i
  %i.do = load i8, ptr %.sroa.0.3147.i, align 1, !alias.scope !2988, !noundef !6
  %i.dp = zext i8 %i.do to i32
  %i.dq = add nsw i32 %i.dp, -48                  ; 2 uses
  %i.dr = icmp ult i32 %i.dq, 10
  br i1 %i.dr, label %bb.t, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ds = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.dm, i32 %i.dq) ; 2 uses
  %i.dt = extractvalue { i32, i1 } %i.ds, 1
  br i1 %i.dt, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.du = extractvalue { i32, i1 } %i.ds, 0       ; 2 uses
  %.not106.i = icmp eq i64 %i.dk, 0
  br i1 %.not106.i, label %.loopexit.i, label %.preheader115.i

.lr.ph152.i:                                      ; preds = %.preheader.i
  %2 = load i8, ptr %.sroa.0.0.i60, align 1, !alias.scope !2988, !noundef !6
  %3 = zext i8 %2 to i32
  %4 = add nsw i32 %3, -48                        ; 3 uses
  %5 = icmp ult i32 %4, 10
  br i1 %5, label %6, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

6:                                                ; preds = %.lr.ph152.i
  %.not107.i = icmp eq i64 %.sroa.26.0.i, 1
  br i1 %.not107.i, label %.loopexit.i, label %.lr.ph152.i.1

.lr.ph152.i.1:                                    ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 1
  %8 = load i8, ptr %7, align 1, !alias.scope !2988, !noundef !6
  %9 = zext i8 %8 to i32
  %10 = add nsw i32 %9, -48                       ; 2 uses
  %11 = icmp ult i32 %10, 10
  br i1 %11, label %12, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

12:                                               ; preds = %.lr.ph152.i.1
  %13 = mul nuw nsw i32 %4, 10
  %14 = add nuw nsw i32 %10, %13                  ; 2 uses
  %.not107.i.1 = icmp eq i64 %.sroa.26.0.i, 2
  br i1 %.not107.i.1, label %.loopexit.i, label %.lr.ph152.i.2

.lr.ph152.i.2:                                    ; preds = %12
  %15 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 2
  %16 = load i8, ptr %15, align 1, !alias.scope !2988, !noundef !6
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %17, -48                      ; 2 uses
  %19 = icmp ult i32 %18, 10
  br i1 %19, label %20, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

20:                                               ; preds = %.lr.ph152.i.2
  %21 = mul nuw nsw i32 %14, 10
  %22 = add nuw nsw i32 %18, %21                  ; 2 uses
  %.not107.i.2 = icmp eq i64 %.sroa.26.0.i, 3
  br i1 %.not107.i.2, label %.loopexit.i, label %.lr.ph152.i.3

.lr.ph152.i.3:                                    ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 3
  %24 = load i8, ptr %23, align 1, !alias.scope !2988, !noundef !6
  %25 = zext i8 %24 to i32
  %26 = add nsw i32 %25, -48                      ; 2 uses
  %27 = icmp ult i32 %26, 10
  br i1 %27, label %28, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

28:                                               ; preds = %.lr.ph152.i.3
  %29 = mul nuw nsw i32 %22, 10
  %30 = add nuw nsw i32 %26, %29                  ; 2 uses
  %.not107.i.3 = icmp eq i64 %.sroa.26.0.i, 4
  br i1 %.not107.i.3, label %.loopexit.i, label %.lr.ph152.i.4

.lr.ph152.i.4:                                    ; preds = %28
  %31 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 4
  %32 = load i8, ptr %31, align 1, !alias.scope !2988, !noundef !6
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, -48                      ; 2 uses
  %35 = icmp ult i32 %34, 10
  br i1 %35, label %36, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

36:                                               ; preds = %.lr.ph152.i.4
  %37 = mul i32 %30, 10
  %38 = add i32 %34, %37                          ; 2 uses
  %.not107.i.4 = icmp eq i64 %.sroa.26.0.i, 5
  br i1 %.not107.i.4, label %.loopexit.i, label %.lr.ph152.i.5

.lr.ph152.i.5:                                    ; preds = %36
  %39 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 5
  %i.dv = load i8, ptr %39, align 1, !alias.scope !2988, !noundef !6
  %i.dw = zext i8 %i.dv to i32
  %i.dx = add nsw i32 %i.dw, -48                  ; 2 uses
  %i.dy = icmp ult i32 %i.dx, 10
  br i1 %i.dy, label %40, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

40:                                               ; preds = %.lr.ph152.i.5
  %41 = mul i32 %38, 10
  %42 = add i32 %i.dx, %41                        ; 2 uses
  %.not107.i.5 = icmp eq i64 %.sroa.26.0.i, 6
  br i1 %.not107.i.5, label %.loopexit.i, label %.lr.ph152.i.6

.lr.ph152.i.6:                                    ; preds = %40
  %43 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60, i64 6
  %44 = load i8, ptr %43, align 1, !alias.scope !2988, !noundef !6
  %45 = zext i8 %44 to i32
  %i.dz = add nsw i32 %45, -48                    ; 2 uses
  %46 = icmp ult i32 %i.dz, 10
  br i1 %46, label %47, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

47:                                               ; preds = %.lr.ph152.i.6
  %48 = mul i32 %42, 10
  %49 = add i32 %i.dz, %48
  br label %.loopexit.i

_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit: ; preds = %.loopexit114.sink.split.i, %.loopexit.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.cz, %.loopexit114.sink.split.i ], [ %i.cj, %.loopexit.i ] ; 2 uses
  %i.ea = trunc i64 %.sroa.12.0.insert.insert.i to i1
  br i1 %i.ea, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread, label %bb.v

bb.v:                                             ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit
  %.sroa.551.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i, 32
  %.sroa.551.0.extract.trunc = trunc nuw i64 %.sroa.551.0.extract.shift to i32
  br label %bb.i

bb.w:                                             ; preds = %bb.i
  %i.eb = add nsw i32 %spec.select, -107
  %or.cond9 = icmp ult i32 %i.eb, 3
  br i1 %or.cond9, label %bb.ab, label %bb.y

bb.x:                                             ; preds = %bb.i
  %i.ec = add nsw i32 %spec.select, -96
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.ed = add nsw i32 %spec.select, -110
  %or.cond11 = icmp ult i32 %i.ed, 12
  br i1 %or.cond11, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = icmp eq i32 %spec.select, 122
  br i1 %i.ee, label %bb.ab, label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

bb.aa:                                            ; preds = %bb.y
  %i.ef = sub nsw i32 109, %spec.select
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.z, %bb.aa, %bb.x
  %.sroa.040.0 = phi i32 [ %i.ec, %bb.x ], [ 0, %bb.z ], [ %i.ef, %bb.aa ], [ %i.cc, %bb.w ]
  %i.eg = sub i32 %.sroa.038.0, %.sroa.040.0      ; 3 uses
  %i.eh = icmp slt i32 %i.eg, 0
  %i.ei = icmp sgt i32 %i.eg, 23
  %. = select i1 %i.ei, i8 2, i8 0
  %.sroa.042.0 = select i1 %i.eh, i8 1, i8 %.
  %i.ej = srem i32 %i.eg, 24                      ; 3 uses
  %i.ek = icmp slt i32 %i.ej, 0
  %i.el = add nsw i32 %i.ej, 24
  %spec.select.i = select i1 %i.ek, i32 %i.el, i32 %i.ej
  br label %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread

_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread: ; preds = %bb.o, %bb.n, %.lr.ph143.i, %bb.s, %bb.t, %.lr.ph152.i, %.lr.ph152.i.1, %.lr.ph152.i.2, %.lr.ph152.i.3, %.lr.ph152.i.4, %.lr.ph152.i.5, %.lr.ph152.i.6, %bb.k, %bb.k, %bb.h, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit, %bb.d, %bb.z, %bb.a, %bb.ab
  %.sroa.8.2 = phi i8 [ %.sroa.042.0, %bb.ab ], [ -1, %bb.a ], [ -1, %.lr.ph152.i ], [ -1, %bb.z ], [ -1, %bb.d ], [ -1, %bb.h ], [ -1, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit ], [ -1, %bb.k ], [ -1, %bb.k ], [ -1, %.lr.ph143.i ], [ -1, %bb.s ], [ -1, %.lr.ph152.i.6 ], [ -1, %.lr.ph152.i.5 ], [ -1, %.lr.ph152.i.4 ], [ -1, %.lr.ph152.i.3 ], [ -1, %.lr.ph152.i.2 ], [ -1, %.lr.ph152.i.1 ], [ -1, %bb.t ], [ -1, %bb.n ], [ -1, %bb.o ]
  %.sroa.0.2 = phi i32 [ %spec.select.i, %bb.ab ], [ undef, %bb.a ], [ undef, %.lr.ph152.i ], [ undef, %bb.z ], [ undef, %bb.d ], [ undef, %bb.h ], [ undef, %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit ], [ undef, %bb.k ], [ undef, %bb.k ], [ undef, %.lr.ph143.i ], [ undef, %bb.s ], [ undef, %.lr.ph152.i.6 ], [ undef, %.lr.ph152.i.5 ], [ undef, %.lr.ph152.i.4 ], [ undef, %.lr.ph152.i.3 ], [ undef, %.lr.ph152.i.2 ], [ undef, %.lr.ph152.i.1 ], [ undef, %bb.t ], [ undef, %bb.n ], [ undef, %bb.o ]
  %i.em = insertvalue { i32, i8 } poison, i32 %.sroa.0.2, 0
  %i.en = insertvalue { i32, i8 } %i.em, i8 %.sroa.8.2, 1
  ret { i32, i8 } %i.en
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsiibOIv6tv3q_7uu_date36format_date_with_locale_aware_months(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %4, i1 noundef zeroext %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [100 x i8], align 1               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.643.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.6.i.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 23 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %i.ab = alloca [40 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [100 x i8], align 1              ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [56 x i8], align 8               ; 12 uses
  %i.ak = alloca [24 x i8], align 8               ; 12 uses
  %i.al = alloca [112 x i8], align 8              ; 13 uses
  %i.am = alloca [24 x i8], align 8               ; 16 uses
  %i.an = alloca [56 x i8], align 8               ; 8 uses
  %i.ao = alloca [24 x i8], align 8               ; 15 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 13 uses
  %i.as = alloca [19 x i8], align 1               ; 3 uses
  %i.at = alloca [24 x i8], align 8               ; 14 uses
  %i.au = alloca [48 x i8], align 8               ; 9 uses
  %i.av = alloca [24 x i8], align 8               ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [112 x i8], align 8              ; 10 uses
  br i1 %5, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = tail call noundef zeroext i1 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8datetime21should_use_icu_locale() #33
  br i1 %i.ba, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i = load i32, ptr %i.bb, align 8, !noalias !3368
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8datetime22localize_format_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %.sroa.0.0.copyload.i) #33, !noalias !3369
  %.sroa.0.0.copyload = load i64, ptr %i.ay, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.c ], [ undef, %bb.a ], [ undef, %bb.b ] ; 3 uses
  %.sroa.0.090 = phi i64 [ %.sroa.0.0.copyload, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ] ; 4 uses
  %.not = icmp eq i64 %.sroa.0.090, -1            ; 2 uses
  %.sroa.4.0 = select i1 %.not, i64 %3, i64 %.sroa.11.0 ; 14 uses
  %.sroa.0.0 = select i1 %.not, ptr %2, ptr %.sroa.8.0 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3370)
  call void @llvm.experimental.noalias.scope.decl(metadata !3371)
  %i.bc = call fastcc noundef zeroext i1 @_RNvXst_NtNtCs6JMX4GRUq9U_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.4.0) #35
  br i1 %i.bc, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp slt i64 %.sroa.4.0, 0
  br i1 %.not.i.i, label %bb.aa, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.bd = icmp eq i64 %.sroa.4.0, 0
  br i1 %i.bd, label %_RNvCsiibOIv6tv3q_7uu_date24substitute_epoch_seconds.exit.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.f
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3372
  %i.be = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %.sroa.4.0, i64 noundef range(i64 1, 9) 1) #33, !noalias !3372 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3373
  %i.bg = load i64, ptr %1, align 8, !alias.scope !3371, !noalias !3374, !noundef !6
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !alias.scope !3371, !noalias !3374, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !alias.scope !3371, !noalias !3374, !noundef !6
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.bm, align 8, !alias.scope !3371, !noalias !3374, !noundef !6 ; 6 uses
  %i.bn = ptrtoint ptr %.val.i to i64
  %i.bo = and i64 %i.bn, 7                        ; 2 uses
  switch i64 %i.bo, label %bb.h [
    i64 1, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i
    i64 2, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i
    i64 3, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i
    i64 0, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i
    i64 4, label %bb.i
    i64 5, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bp = getelementptr i8, ptr %.val.i, i64 -20
  %i.bq = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8, !noalias !3375
  %i.br = icmp slt i64 %i.bq, 0
  br i1 %i.br, label %bb.j, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.bs = getelementptr i8, ptr %.val.i, i64 -21
  %i.bt = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !3375
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i: ; preds = %bb.k, %bb.i, %bb.g, %bb.g, %bb.g, %bb.g
  %.sroa.79.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.79.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.bj, i64 12, i1 false), !noalias !3374
  %i.bv = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.bg, ptr %i.bv, align 8, !noalias !3373
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %i.bi, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !3373
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %.val.i, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !3373
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !3373
  store i32 0, ptr %i.au, align 8, !noalias !3373
  %i.bw = call noundef i64 @_RNvMCs65h624QUiyW_14parse_datetimeNtB2_14ParsedDateTime17unix_epoch_second(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.au) #33, !noalias !3375 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3376
  %i.bx = icmp slt i64 %i.bw, 0
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !3377
  br i1 %i.bx, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i
  %i.by = call noundef dereferenceable_or_null(19) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 19, i64 noundef range(i64 1, 9) 1) #33, !noalias !3378 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.n, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiibOIv6tv3q_7uu_date.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #37, !noalias !3377
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiibOIv6tv3q_7uu_date.exit.i.i: ; preds = %bb.m
  store i64 19, ptr %i.ar, align 8, !noalias !3376
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.by, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !3376
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !3376
  br label %bb.q

bb.o:                                             ; preds = %_RNvXs2_NtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone4reprNtB5_4ReprNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i
  %i.ca = call noundef dereferenceable_or_null(20) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 20, i64 noundef range(i64 1, 9) 1) #33, !noalias !3379 ; 4 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.p, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiibOIv6tv3q_7uu_date.exit13.i.i

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 20) #37, !noalias !3377
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiibOIv6tv3q_7uu_date.exit13.i.i: ; preds = %bb.o
  store i64 20, ptr %i.ar, align 8, !noalias !3376
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ca, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !3376
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCs6JMX4GRUq9U_4core3num3imp9int_log108u64_impl:bb.a
  %i.k = add nuw nsw i32 %i.f, 514288
  %i.l = and i32 %i.j, %i.k
  %i.m = xor i32 %i.i, %i.l
  %i.n = lshr i32 %i.m, 17
  %i.o = add nuw nsw i32 %i.n, %.sroa.05.1
  ret i32 %i.o
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix14is_interrupted(i32 noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i32 %0, 4
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 44) i8 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind(i32 noundef %0) unnamed_addr #12 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.0.0 = phi i8 [ %switch.load, %switch.lookup ], [ 43, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtCs7tKScEop1B6_5alloc6string6StringNtB2_3Any7type_idCsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @225, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs6JMX4GRUq9U_4core3anyNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintNtB2_3Any7type_idCsiibOIv6tv3q_7uu_date(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @3, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsiibOIv6tv3q_7uu_date16format_modifiersNtB2_11FormatErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load i64, ptr %0, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  %i.o = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %i.n, ptr noalias nofree noundef nonnull %i.a, i64 noundef 20) #33 ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 16 uses
  %.not.i = icmp slt i64 %i.q, 0
  br i1 %.not.i, label %bb.f, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.thread, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.c
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4640
  %i.s = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 1) #33, !noalias !4640 ; 18 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs3JjgEOiFeOI_4jiff5error5ErrorNtB6_7Display3fmtCsiibOIv6tv3q_7uu_date, ptr %.sroa.46.0..sroa_idx, align 8
  %i.v = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !6, !align !13, !noundef !6
  %i.y = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noundef nonnull @143, ptr noundef nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit83, %bb.d
  %.sroa.0.1.in = phi i1 [ %i.et, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit83 ], [ %i.y, %bb.d ]
  ret i1 %.sroa.0.1.in

bb.f:                                             ; preds = %bb.b, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.b ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.q) #37
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.p, i64 %i.q, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %cond156 = icmp eq i64 %i.q, 1
  %i.z = load i8, ptr %i.s, align 1, !alias.scope !4641, !noalias !4642 ; 2 uses
  br i1 %cond156, label %bb.h, label %thread-pre-split.i

bb.h:                                             ; preds = %bb.g
  switch i8 %i.z, label %bb.o [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.g
  switch i8 %i.z, label %bb.o [
    i8 43, label %bb.i
    i8 45, label %bb.j
  ]

bb.i:                                             ; preds = %thread-pre-split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ab = add nsw i64 %i.q, -1
  br label %bb.o

bb.j:                                             ; preds = %thread-pre-split.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.ad = add nsw i64 %i.q, -1                    ; 2 uses
  %i.ae = icmp samesign ult i64 %i.q, 17
  br i1 %i.ae, label %.lr.ph141.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.m
  %.sroa.0.1136.i = phi ptr [ %i.af, %bb.m ], [ %i.ac, %bb.j ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.ag, %bb.m ], [ %i.ad, %bb.j ]
  %.sroa.084.0134.i = phi i64 [ %i.ar, %bb.m ], [ 0, %bb.j ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.ag = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.ah = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 0
  %i.aj = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.aj, label %.loopexit, label %bb.k, !prof !11

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !4641, !noalias !4642, !noundef !6
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ai, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %.loopexit, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.ar = extractvalue { i64, i1 } %i.ap, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.ag, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %bb.j, %bb.n
  %.sroa.0.2140.i = phi ptr [ %i.ay, %bb.n ], [ %i.ac, %bb.j ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.ax, %bb.n ], [ %i.ad, %bb.j ]
  %.sroa.084.2138.i = phi i64 [ %i.ba, %bb.n ], [ 0, %bb.j ]
  %i.as = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !4641, !noalias !4642, !noundef !6
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.lr.ph141.i
  %i.aw = mul i64 %.sroa.084.2138.i, 10
  %i.ax = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = sub i64 %i.aw, %i.az                    ; 2 uses
  %.not103.i = icmp eq i64 %i.ax, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.o:                                             ; preds = %bb.h, %bb.i, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.ab, %bb.i ], [ %i.q, %thread-pre-split.i ], [ %i.q, %bb.h ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.i ], [ %i.s, %thread-pre-split.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.bb = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.bb, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.o
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.o, %bb.r
  %.sroa.0.3145.i = phi ptr [ %i.bc, %bb.r ], [ %.sroa.0.0.i, %bb.o ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.bd, %bb.r ], [ %.sroa.26.0.i, %bb.o ]
  %.sroa.084.3143.i = phi i64 [ %i.bo, %bb.r ], [ 0, %bb.o ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.bd = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.be = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bg, label %.loopexit, label %bb.p, !prof !11

bb.p:                                             ; preds = %.preheader111.i
  %i.bh = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !4641, !noalias !4642, !noundef !6
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 2 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bf, i64 %i.bl) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  br i1 %i.bn, label %.loopexit, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bo = extractvalue { i64, i1 } %i.bm, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.bd, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.s
  %.sroa.0.4149.i = phi ptr [ %i.bv, %bb.s ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.bu, %bb.s ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.bx, %bb.s ], [ 0, %.preheader.i ]
  %i.bp = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !4641, !noalias !4642, !noundef !6
  %i.bq = zext i8 %i.bp to i32
  %i.br = add nsw i32 %i.bq, -48                  ; 2 uses
  %i.bs = icmp ult i32 %i.br, 10
  br i1 %i.bs, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph150.i
  %i.bt = mul i64 %.sroa.084.4147.i, 10
  %i.bu = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %.not105.i = icmp eq i64 %i.bu, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.loopexit:                                        ; preds = %.lr.ph.i, %bb.l, %bb.k, %.lr.ph141.i, %.preheader111.i, %bb.p, %bb.q, %.lr.ph150.i, %bb.h, %bb.h, %.thread
  %.ph = phi ptr [ %i.s, %.preheader111.i ], [ %i.s, %.lr.ph141.i ], [ %i.s, %.lr.ph150.i ], [ %i.s, %bb.h ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.s, %bb.h ], [ %i.s, %bb.q ], [ %i.s, %bb.p ], [ %i.s, %bb.k ], [ %i.s, %bb.l ], [ %i.s, %.lr.ph.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.q) #36
  %i.by = load i8, ptr %i.g, align 8, !range !7, !noundef !6
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.v, label %bb.w

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.m, %bb.n, %bb.r, %bb.s, %.preheader.i
  %.sroa.1590.0 = phi i64 [ %i.bo, %bb.r ], [ %i.ba, %bb.n ], [ %i.bx, %bb.s ], [ 0, %.preheader.i ], [ %i.ar, %bb.m ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 5, i64 noundef %.sroa.1590.0) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %bb.v, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.ca = phi ptr [ %.ph, %bb.v ], [ %.ph, %bb.w ], [ %i.s, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %.sroa.01.0.not = phi i1 [ true, %bb.v ], [ false, %bb.w ], [ false, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !6, !noundef !6
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !6 ; 16 uses
  %.not.i43 = icmp slt i64 %i.ce, 0
  br i1 %.not.i43, label %bb.x, label %bb.u, !prof !19

bb.u:                                             ; preds = %bb.t
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.thread140, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i44

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i44: ; preds = %bb.u
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !4643
  %i.cg = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.ce, i64 noundef range(i64 1, 9) 1) #33, !noalias !4643 ; 18 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.x, label %bb.y

bb.v:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.q, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx87, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.q, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.t

bb.w:                                             ; preds = %.loopexit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cj = load double, ptr %i.ci, align 8, !noundef !6
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 5, double noundef %i.cj) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.x:                                             ; preds = %bb.t, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i44
  %.sroa.4101.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i44 ], [ 0, %bb.t ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4101.0.ph, i64 %i.ce) #37
  unreachable

bb.y:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i44
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %i.cc, i64 %i.ce, i1 false)
  %cond = icmp eq i64 %i.ce, 1
  %i.ck = load i8, ptr %i.cg, align 1, !alias.scope !4644, !noalias !4645 ; 2 uses
  br i1 %cond, label %bb.z, label %thread-pre-split.i78

bb.z:                                             ; preds = %bb.y
  switch i8 %i.ck, label %bb.ag [
    i8 43, label %.thread140
    i8 45, label %.thread140
  ]

thread-pre-split.i78:                             ; preds = %bb.y
  switch i8 %i.ck, label %bb.ag [
    i8 43, label %bb.aa
    i8 45, label %bb.ab
  ]

bb.aa:                                            ; preds = %thread-pre-split.i78
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cm = add nsw i64 %i.ce, -1
  br label %bb.ag

bb.ab:                                            ; preds = %thread-pre-split.i78
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 2 uses
  %i.co = add nsw i64 %i.ce, -1                   ; 2 uses
  %i.cp = icmp samesign ult i64 %i.ce, 17
  br i1 %i.cp, label %.lr.ph141.i58, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %bb.ab, %bb.ae
  %.sroa.0.1136.i49 = phi ptr [ %i.cq, %bb.ae ], [ %i.cn, %bb.ab ] ; 2 uses
  %.sroa.26.1135.i50 = phi i64 [ %i.cr, %bb.ae ], [ %i.co, %bb.ab ]
  %.sroa.084.0134.i51 = phi i64 [ %i.dc, %bb.ae ], [ 0, %bb.ab ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i49, i64 1
  %i.cr = add nsw i64 %.sroa.26.1135.i50, -1      ; 2 uses
  %i.cs = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i51, i64 10) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 0
  %i.cu = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.cu, label %.thread140, label %bb.ac, !prof !11

bb.ac:                                            ; preds = %.lr.ph.i48
  %i.cv = load i8, ptr %.sroa.0.1136.i49, align 1, !alias.scope !4644, !noalias !4645, !noundef !6
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.ad, label %.thread140

bb.ad:                                            ; preds = %bb.ac
  %i.cz = zext nneg i32 %i.cx to i64
  %i.da = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ct, i64 %i.cz) ; 2 uses
  %i.db = extractvalue { i64, i1 } %i.da, 1
  br i1 %i.db, label %.thread140, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.dc = extractvalue { i64, i1 } %i.da, 0       ; 2 uses
  %.not102.i53 = icmp eq i64 %i.cr, 0
  br i1 %.not102.i53, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80, label %.lr.ph.i48

.lr.ph141.i58:                                    ; preds = %bb.ab, %bb.af
  %.sroa.0.2140.i59 = phi ptr [ %i.dj, %bb.af ], [ %i.cn, %bb.ab ] ; 2 uses
  %.sroa.26.2139.i60 = phi i64 [ %i.di, %bb.af ], [ %i.co, %bb.ab ]
  %.sroa.084.2138.i61 = phi i64 [ %i.dl, %bb.af ], [ 0, %bb.ab ]
  %i.dd = load i8, ptr %.sroa.0.2140.i59, align 1, !alias.scope !4644, !noalias !4645, !noundef !6
  %i.de = zext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48                  ; 2 uses
  %i.dg = icmp ult i32 %i.df, 10
  br i1 %i.dg, label %bb.af, label %.thread140

bb.af:                                            ; preds = %.lr.ph141.i58
  %i.dh = mul i64 %.sroa.084.2138.i61, 10
  %i.di = add nsw i64 %.sroa.26.2139.i60, -1      ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i59, i64 1
  %i.dk = zext nneg i32 %i.df to i64
  %i.dl = sub i64 %i.dh, %i.dk                    ; 2 uses
  %.not103.i62 = icmp eq i64 %i.di, 0
  br i1 %.not103.i62, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80, label %.lr.ph141.i58

bb.ag:                                            ; preds = %bb.z, %bb.aa, %thread-pre-split.i78
  %.sroa.26.0.i63 = phi i64 [ %i.cm, %bb.aa ], [ %i.ce, %thread-pre-split.i78 ], [ %i.ce, %bb.z ] ; 4 uses
  %.sroa.0.0.i64 = phi ptr [ %i.cl, %bb.aa ], [ %i.cg, %thread-pre-split.i78 ], [ %i.cg, %bb.z ] ; 2 uses
  %i.dm = icmp samesign ult i64 %.sroa.26.0.i63, 16
  br i1 %i.dm, label %.preheader.i71, label %.preheader111.i65

.preheader.i71:                                   ; preds = %bb.ag
  %.not105146.i72 = icmp eq i64 %.sroa.26.0.i63, 0
  br i1 %.not105146.i72, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80, label %.lr.ph150.i73

.preheader111.i65:                                ; preds = %bb.ag, %bb.aj
  %.sroa.0.3145.i66 = phi ptr [ %i.dn, %bb.aj ], [ %.sroa.0.0.i64, %bb.ag ] ; 2 uses
  %.sroa.26.3144.i67 = phi i64 [ %i.do, %bb.aj ], [ %.sroa.26.0.i63, %bb.ag ]
  %.sroa.084.3143.i68 = phi i64 [ %i.dz, %bb.aj ], [ 0, %bb.ag ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i66, i64 1
  %i.do = add nsw i64 %.sroa.26.3144.i67, -1      ; 2 uses
  %i.dp = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i68, i64 10) ; 2 uses
  %i.dq = extractvalue { i64, i1 } %i.dp, 0
  %i.dr = extractvalue { i64, i1 } %i.dp, 1
  br i1 %i.dr, label %.thread140, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %.preheader111.i65
  %i.ds = load i8, ptr %.sroa.0.3145.i66, align 1, !alias.scope !4644, !noalias !4645, !noundef !6
  %i.dt = zext i8 %i.ds to i32
  %i.du = add nsw i32 %i.dt, -48                  ; 2 uses
  %i.dv = icmp ult i32 %i.du, 10
  br i1 %i.dv, label %bb.ai, label %.thread140

bb.ai:                                            ; preds = %bb.ah
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dq, i64 %i.dw) ; 2 uses
  %i.dy = extractvalue { i64, i1 } %i.dx, 1
  br i1 %i.dy, label %.thread140, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai
  %i.dz = extractvalue { i64, i1 } %i.dx, 0       ; 2 uses
  %.not104.i70 = icmp eq i64 %i.do, 0
  br i1 %.not104.i70, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80, label %.preheader111.i65

.lr.ph150.i73:                                    ; preds = %.preheader.i71, %bb.ak
  %.sroa.0.4149.i74 = phi ptr [ %i.eg, %bb.ak ], [ %.sroa.0.0.i64, %.preheader.i71 ] ; 2 uses
  %.sroa.26.4148.i75 = phi i64 [ %i.ef, %bb.ak ], [ %.sroa.26.0.i63, %.preheader.i71 ]
  %.sroa.084.4147.i76 = phi i64 [ %i.ei, %bb.ak ], [ 0, %.preheader.i71 ]
  %i.ea = load i8, ptr %.sroa.0.4149.i74, align 1, !alias.scope !4644, !noalias !4645, !noundef !6
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nsw i32 %i.eb, -48                  ; 2 uses
  %i.ed = icmp ult i32 %i.ec, 10
  br i1 %i.ed, label %bb.ak, label %.thread140

bb.ak:                                            ; preds = %.lr.ph150.i73
  %i.ee = mul i64 %.sroa.084.4147.i76, 10
  %i.ef = add nsw i64 %.sroa.26.4148.i75, -1      ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i74, i64 1
  %i.eh = zext nneg i32 %i.ec to i64
  %i.ei = add i64 %i.ee, %i.eh                    ; 2 uses
  %.not105.i77 = icmp eq i64 %i.ef, 0
  br i1 %.not105.i77, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80, label %.lr.ph150.i73

.thread140:                                       ; preds = %.lr.ph.i48, %bb.ad, %bb.ac, %.lr.ph141.i58, %.preheader111.i65, %bb.ah, %bb.ai, %.lr.ph150.i73, %bb.z, %bb.z, %bb.u
  %.ph148 = phi ptr [ inttoptr (i64 1 to ptr), %bb.u ], [ %i.cg, %.preheader111.i65 ], [ %i.cg, %.lr.ph150.i73 ], [ %i.cg, %bb.z ], [ %i.cg, %.lr.ph141.i58 ], [ %i.cg, %bb.z ], [ %i.cg, %bb.ai ], [ %i.cg, %bb.ah ], [ %i.cg, %bb.ac ], [ %i.cg, %bb.ad ], [ %i.cg, %.lr.ph.i48 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph148, i64 noundef %i.ce) #36
  %i.ej = load i8, ptr %i.e, align 8, !range !7, !noundef !6
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.an, label %bb.ao

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80: ; preds = %bb.ae, %bb.af, %bb.aj, %bb.ak, %.preheader.i71
  %.sroa.1597.0 = phi i64 [ %i.dz, %bb.aj ], [ %i.dl, %bb.af ], [ %i.ei, %bb.ak ], [ 0, %.preheader.i71 ], [ %i.dc, %bb.ae ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 9, i64 noundef %.sroa.1597.0) #33
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80
  %i.el = phi ptr [ %.ph148, %bb.ao ], [ %i.cg, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit80 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 42, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.em = icmp eq i64 %i.ce, 0
  br i1 %i.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.el, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4646
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit

bb.an:                                            ; preds = %.thread140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.ce, ptr %i.d, align 8
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.ph148, ptr %.sroa.592.0..sroa_idx, align 8
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ce, ptr %.sroa.893.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 9, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @228, i64 noundef 42, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit

bb.ao:                                            ; preds = %.thread140
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eo = load double, ptr %i.en, align 8, !noundef !6
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsiibOIv6tv3q_7uu_date(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @227, i64 noundef 9, double noundef %i.eo) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.al

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit: ; preds = %bb.am, %bb.al, %bb.an
  %i.ep = icmp eq i64 %i.q, 0
  %or.cond = or i1 %.sroa.01.0.not, %i.ep
  br i1 %or.cond, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit86, label %bb.aq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit86: ; preds = %bb.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.i, ptr %i.b, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  %i.eq = load ptr, ptr %1, align 8, !nonnull !6, !noundef !6
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !6, !align !13, !noundef !6
  %i.et = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.es, ptr noundef nonnull @143, ptr noundef nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !4647)
  %.val.i81 = load i64, ptr %i.i, align 8, !range !9, !alias.scope !4647, !noundef !6 ; 2 uses
  %i.eu = icmp eq i64 %.val.i81, 0
  br i1 %i.eu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit83, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit86
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val1.i82 = load ptr, ptr %i.ev, align 8, !alias.scope !4647, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i82, i64 noundef %.val.i81, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4647
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit83

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit83: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit86, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.e

bb.aq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4648
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsiibOIv6tv3q_7uu_date.exit86
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvXs0_CsiibOIv6tv3q_7uu_dateNtB5_13Rfc3339FormatINtNtCs6JMX4GRUq9U_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.c, align 8
  switch i64 %1, label %bb.e [
    i64 4, label %bb.b
    i64 7, label %bb.c
    i64 2, label %bb.d
  ], !prof !4649

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 1
  %i.e = icmp ne i32 %i.d, 1702125924
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = load i32, ptr %0, align 1
  %i.i = xor i32 %i.h, 1868785011
  %i.j = getelementptr i8, ptr %0, i64 3
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 1935961711
  %i.m = or i32 %i.i, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.q = load i16, ptr %0, align 1
  %i.r = icmp ne i16 %i.q, 29550
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsiibOIv6tv3q_7uu_date, ptr %.sroa.43.0..sroa_idx, align 8
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @229, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #34
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 2, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterhEINtNtCs7tKScEop1B6_5alloc3vec3VechENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0ENtNtNtB9_6traits8iterator8Iterator4nextB29_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4678)
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !4678
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx12.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i, %bb.a
  %.sroa.8.sroa.0.0.copyload3640.i = phi ptr [ %.sroa.8.sroa.0.0.copyload36.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i ], [ %.promoted.i, %bb.a ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4679)
  %.not.i.i = icmp eq ptr %.sroa.8.sroa.0.0.copyload3640.i, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4680)
  call void @llvm.experimental.noalias.scope.decl(metadata !4681)
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !4682, !nonnull !6, !noundef !6
  %i.k = load ptr, ptr %i.e, align 8, !alias.scope !4682, !nonnull !6, !noundef !6 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not6.i.i, label %bb.d, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiibOIv6tv3q_7uu_date.exit.i

bb.d:                                             ; preds = %bb.c
  %.val4.i.i = load i64, ptr %i.f, align 8, !alias.scope !4683 ; 2 uses
  %i.l = icmp eq i64 %.val4.i.i, 0
  br i1 %i.l, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.sroa.0.0.copyload3640.i, i64 noundef %.val4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !4684
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i: ; preds = %bb.e, %bb.d
  store ptr null, ptr %0, align 8, !alias.scope !4683
  br label %bb.f

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEhNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECsiibOIv6tv3q_7uu_date.exit.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store ptr %i.m, ptr %i.e, align 8, !alias.scope !4682
  %i.n = load i8, ptr %i.k, align 1, !noalias !4682, !noundef !6
  br label %_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit

bb.f:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterhEEECsiibOIv6tv3q_7uu_date.exit.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4685)
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !4686, !noalias !4687, !noundef !6 ; 4 uses
  %.not.i2.i = icmp eq ptr %i.o, null
  br i1 %.not.i2.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !4688)
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterhENCNvCsiibOIv6tv3q_7uu_date20escape_invalid_bytes0EEINtB5_8FuseImplBY_E4nextB1K_.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !4689, !noalias !4690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4691
  %.val.i.i.i = load i8, ptr %i.o, align 1, !noalias !4691, !noundef !6 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4692
  store i8 %.val.i.i.i, ptr %i.b, align 1, !noalias !4692
  %i.r = add i8 %.val.i.i.i, -32
  %spec.select.i.i.i.i.i = icmp ult i8 %i.r, 95
end_hunk_1
