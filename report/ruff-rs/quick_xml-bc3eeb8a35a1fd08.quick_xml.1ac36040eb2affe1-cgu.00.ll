Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/quick_xml-bc3eeb8a35a1fd08.quick_xml.1ac36040eb2affe1-cgu.00?download=true
inline.NumInlined: 172
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtCs2isvxI5XMib_9quick_xml6escape12parse_number:bb.a
  store i32 120, ptr %i.a, align 4
  %i.b = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %1, -1                           ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not124 = icmp eq i64 %1, 1
  br i1 %.not124, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !noundef !6    ; 3 uses
  switch i8 %i.e, label %bb.e [
    i8 43, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %cond146 = icmp eq i64 %1, 1
  %cond182 = icmp eq i8 %i.e, 43
  %or.cond = and i1 %cond146, %cond182
  br i1 %or.cond, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.e
  %cond.i = icmp eq i8 %i.e, 43                   ; 2 uses
  %i.f = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %1, %i.f            ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.g = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.g, label %.preheader.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i:                          ; preds = %bb.g
  %.not55.us.i = icmp eq i64 %i.i, 0
  br i1 %.not55.us.i, label %.loopexit.i, label %.preheader64.split.us.i.preheader

.preheader64.split.us.i.preheader:                ; preds = %thread-pre-split.i, %.preheader64.split.us.i
  %.sroa.0.1.us.i212 = phi ptr [ %i.h, %.preheader64.split.us.i ], [ %.sroa.0.0.i, %thread-pre-split.i ] ; 2 uses
  %.sroa.15.1.us.i211 = phi i64 [ %i.i, %.preheader64.split.us.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.045.0.us.i210 = phi i32 [ %i.q, %.preheader64.split.us.i ], [ 0, %thread-pre-split.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i212, i64 1
  %i.i = add nsw i64 %.sroa.15.1.us.i211, -1      ; 2 uses
  %i.j = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.us.i210, i32 10) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.j, 1
  %i.m = load i8, ptr %.sroa.0.1.us.i212, align 1, !alias.scope !395, !noundef !6 ; 2 uses
  br i1 %i.l, label %.split.us.i, label %bb.f, !prof !162

bb.f:                                             ; preds = %.preheader64.split.us.i.preheader
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ult i32 %i.o, 10
  br i1 %i.p, label %bb.g, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = add i32 %i.o, %i.k                       ; 3 uses
  %i.r = icmp ult i32 %i.q, %i.k
  br i1 %i.r, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %.preheader64.split.us.i, !prof !162

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5674.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5674.i, label %.loopexit.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.preheader.i
  %i.s = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !395, !noundef !6
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 3 uses
  %i.v = icmp ult i32 %i.u, 10
  br i1 %i.v, label %bb.h, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %.not56.us.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.us.i, label %.loopexit.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !395, !noundef !6
  %i.y = zext i8 %i.x to i32
  %i.z = add nsw i32 %i.y, -48                    ; 2 uses
  %i.aa = icmp ult i32 %i.z, 10
  br i1 %i.aa, label %bb.i, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.i:                                             ; preds = %.lr.ph.split.us.i.1
  %i.ab = mul nuw nsw i32 %i.u, 10
  %i.ac = add nuw nsw i32 %i.z, %i.ab             ; 2 uses
  %.not56.us.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.us.i.1, label %.loopexit.i, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !395, !noundef !6
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.j, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.j:                                             ; preds = %.lr.ph.split.us.i.2
  %i.ai = mul nuw nsw i32 %i.ac, 10
  %i.aj = add nuw nsw i32 %i.ag, %i.ai            ; 2 uses
  %.not56.us.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.us.i.2, label %.loopexit.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !395, !noundef !6
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ult i32 %i.an, 10
  br i1 %i.ao, label %bb.k, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.k:                                             ; preds = %.lr.ph.split.us.i.3
  %i.ap = mul nuw nsw i32 %i.aj, 10
  %i.aq = add nuw nsw i32 %i.an, %i.ap            ; 2 uses
  %.not56.us.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.us.i.3, label %.loopexit.i, label %.lr.ph.split.us.i.4

.lr.ph.split.us.i.4:                              ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !395, !noundef !6
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.l, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.l:                                             ; preds = %.lr.ph.split.us.i.4
  %i.aw = mul i32 %i.aq, 10
  %i.ax = add i32 %i.au, %i.aw                    ; 2 uses
  %.not56.us.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.us.i.4, label %.loopexit.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !395, !noundef !6
  %i.ba = zext i8 %i.az to i32
  %i.bb = add nsw i32 %i.ba, -48                  ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 10
  br i1 %i.bc, label %bb.m, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.m:                                             ; preds = %.lr.ph.split.us.i.5
  %i.bd = mul i32 %i.ax, 10
  %i.be = add i32 %i.bb, %i.bd                    ; 2 uses
  %.not56.us.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.us.i.5, label %.loopexit.i, label %.lr.ph.split.us.i.6

.lr.ph.split.us.i.6:                              ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !395, !noundef !6
  %i.bh = zext i8 %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -48                  ; 2 uses
  %i.bj = icmp ult i32 %i.bi, 10
  br i1 %i.bj, label %bb.n, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.n:                                             ; preds = %.lr.ph.split.us.i.6
  %i.bk = mul i32 %i.be, 10
  %i.bl = add i32 %i.bi, %i.bk                    ; 2 uses
  %.not56.us.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.us.i.6, label %.loopexit.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !395, !noundef !6
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nsw i32 %i.bo, -48                  ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 10
  br i1 %i.bq, label %bb.o, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.o:                                             ; preds = %.lr.ph.split.us.i.7
  %i.br = mul i32 %i.bl, 10
  %i.bs = add i32 %i.bp, %i.br
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader64.split.us.i, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.bs, %bb.o ], [ 0, %.preheader.i ], [ %i.u, %bb.h ], [ %i.ac, %bb.i ], [ %i.aj, %bb.j ], [ %i.aq, %bb.k ], [ %i.ax, %bb.l ], [ %i.be, %bb.m ], [ %i.bl, %bb.n ], [ %i.q, %.preheader64.split.us.i ]
  %i.bt = zext i32 %.sroa.045.1.i to i64
  %i.bu = shl nuw i64 %i.bt, 32
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.split.us.i:                                      ; preds = %.preheader64.split.us.i.preheader
  %i.bv = add i8 %i.m, -48
  %i.bw = icmp ult i8 %i.bv, 10
  %spec.select.i = select i1 %i.bw, i64 513, i64 257
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit: ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %.split.us.i ], [ %i.bu, %.loopexit.i ] ; 3 uses
  %i.bx = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bx, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.p

bb.p:                                             ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  %.sroa.058.0.in.in = phi i64 [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit ], [ %.sroa.8.0.insert.insert.i125, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140 ] ; 2 uses
  %.sroa.058.0.in = lshr i64 %.sroa.058.0.in.in, 32 ; 2 uses
  %i.by = icmp eq i64 %.sroa.058.0.in, 0
  br i1 %i.by, label %bb.v, label %bb.u

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread: ; preds = %bb.g, %bb.f, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7, %bb.s, %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.a, %bb.t, %bb.r, %bb.e, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140, %bb.c, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit, %bb.b, %bb.q, %bb.q, %bb.d, %bb.d
  %.sroa.6.sroa.0.0.in = phi i64 [ 0, %bb.d ], [ 0, %bb.q ], [ 0, %bb.d ], [ 257, %bb.s ], [ 0, %bb.q ], [ %.sroa.8.0.insert.insert.i, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit ], [ 257, %bb.r ], [ 257, %.lr.ph.split.us.i ], [ 1, %bb.b ], [ 257, %bb.e ], [ 257, %.lr.ph.split.i ], [ %.sroa.8.0.insert.insert.i125, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140 ], [ 1, %bb.c ], [ 257, %bb.t ], [ 257, %.lr.ph.split.i.a ], [ 257, %.lr.ph.split.i.5 ], [ 257, %.lr.ph.split.i.4 ], [ 257, %.lr.ph.split.i.3 ], [ 257, %.lr.ph.split.i.2 ], [ 257, %.lr.ph.split.i.1 ], [ 257, %.lr.ph.split.us.i.7 ], [ 257, %.lr.ph.split.us.i.6 ], [ 257, %.lr.ph.split.us.i.5 ], [ 257, %.lr.ph.split.us.i.4 ], [ 257, %.lr.ph.split.us.i.3 ], [ 257, %.lr.ph.split.us.i.2 ], [ 257, %.lr.ph.split.us.i.1 ], [ 513, %bb.g ], [ 257, %bb.f ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.q ], [ 0, %bb.d ], [ 1, %bb.s ], [ 0, %bb.q ], [ 1, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit ], [ 1, %bb.r ], [ 1, %.lr.ph.split.us.i ], [ 1, %bb.b ], [ 1, %bb.e ], [ 1, %.lr.ph.split.i ], [ 1, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140 ], [ 1, %bb.c ], [ 1, %bb.t ], [ 1, %.lr.ph.split.i.a ], [ 1, %.lr.ph.split.i.5 ], [ 1, %.lr.ph.split.i.4 ], [ 1, %.lr.ph.split.i.3 ], [ 1, %.lr.ph.split.i.2 ], [ 1, %.lr.ph.split.i.1 ], [ 1, %.lr.ph.split.us.i.7 ], [ 1, %.lr.ph.split.us.i.6 ], [ 1, %.lr.ph.split.us.i.5 ], [ 1, %.lr.ph.split.us.i.4 ], [ 1, %.lr.ph.split.us.i.3 ], [ 1, %.lr.ph.split.us.i.2 ], [ 1, %.lr.ph.split.us.i.1 ], [ 1, %bb.f ], [ 1, %bb.g ]
  %i.bz = and i64 %.sroa.6.sroa.0.0.in, 65280
  br label %bb.v

bb.q:                                             ; preds = %bb.c
  %i.ca = load i8, ptr %i.d, align 1, !noundef !6 ; 3 uses
  switch i8 %i.ca, label %bb.r [
    i8 43, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
  ]

bb.r:                                             ; preds = %bb.q
  %cond = icmp eq i64 %i.c, 1
  %cond181 = icmp eq i8 %i.ca, 43
  %or.cond196 = and i1 %cond, %cond181
  br i1 %or.cond196, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %thread-pre-split.i138

thread-pre-split.i138:                            ; preds = %bb.r
  %cond.i126 = icmp eq i8 %i.ca, 43               ; 2 uses
  %i.cb = sext i1 %cond.i126 to i64
  %.sroa.15.0.i127 = add nsw i64 %i.c, %i.cb      ; 10 uses
  %.sroa.0.0.idx.i128 = zext i1 %cond.i126 to i64
  %.sroa.0.0.i129 = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.0.idx.i128 ; 9 uses
  %i.cc = icmp samesign ult i64 %.sroa.15.0.i127, 9
  br i1 %i.cc, label %.preheader.i135, label %.preheader64.split.i.preheader

.preheader.i135:                                  ; preds = %thread-pre-split.i138
  %.not5674.i136 = icmp eq i64 %.sroa.15.0.i127, 0
  br i1 %.not5674.i136, label %.loopexit.i133, label %.lr.ph.split.i

.preheader64.split.i:                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i162, i64 1
  %i.ce = add nsw i64 %.sroa.15.1.i161, -1        ; 2 uses
  %i.cf = shl nuw i32 %.sroa.045.0.i160, 4
  %i.cg = or disjoint i32 %spec.select81.i, %i.cf ; 2 uses
  %.not55.i = icmp eq i64 %i.ce, 0
  br i1 %.not55.i, label %.loopexit.i133, label %.preheader64.split.i.preheader

.loopexit.i133:                                   ; preds = %.preheader64.split.i, %10, %20, %32, %44, %56, %68, %72, %84, %.preheader.i135
  %.sroa.045.1.i134 = phi i32 [ %86, %84 ], [ 0, %.preheader.i135 ], [ %spec.select82.i, %10 ], [ %22, %20 ], [ %34, %32 ], [ %46, %44 ], [ %58, %56 ], [ %70, %68 ], [ %74, %72 ], [ %i.cg, %.preheader64.split.i ]
  %i.ch = zext i32 %.sroa.045.1.i134 to i64
  %i.ci = shl nuw i64 %i.ch, 32
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140

.preheader64.split.i.preheader:                   ; preds = %thread-pre-split.i138, %.preheader64.split.i
  %.sroa.0.1.i162 = phi ptr [ %i.cd, %.preheader64.split.i ], [ %.sroa.0.0.i129, %thread-pre-split.i138 ] ; 2 uses
  %.sroa.15.1.i161 = phi i64 [ %i.ce, %.preheader64.split.i ], [ %.sroa.15.0.i127, %thread-pre-split.i138 ]
  %.sroa.045.0.i160 = phi i32 [ %i.cg, %.preheader64.split.i ], [ 0, %thread-pre-split.i138 ] ; 2 uses
  %i.cj = icmp ugt i32 %.sroa.045.0.i160, 268435455
  %i.ck = load i8, ptr %.sroa.0.1.i162, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = icmp ugt i8 %i.ck, 57                   ; 2 uses
  %i.cn = add nsw i32 %i.cl, -65                  ; 2 uses
  %i.co = add nsw i32 %i.cl, -48                  ; 2 uses
  br i1 %i.cj, label %.split.us.i131, label %bb.s, !prof !162

bb.s:                                             ; preds = %.preheader64.split.i.preheader
  %i.cp = and i32 %i.cn, -33
  %i.cq = add nuw nsw i32 %i.cp, 10
  %spec.select81.i = select i1 %i.cm, i32 %i.cq, i32 %i.co ; 2 uses
  %i.cr = icmp ult i32 %spec.select81.i, 16
  br i1 %i.cr, label %.preheader64.split.i, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

.split.us.i131:                                   ; preds = %.preheader64.split.i.preheader
  %i.cs = and i32 %i.cn, -34
  %i.ct = add nuw nsw i32 %i.cs, 10
  %.sroa.02.0.i58.i = select i1 %i.cm, i32 %i.ct, i32 %i.co
  %i.cu = icmp ult i32 %.sroa.02.0.i58.i, 16
  %spec.select.i132 = select i1 %i.cu, i64 513, i64 257
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140

.lr.ph.split.i:                                   ; preds = %.preheader.i135
  %2 = load i8, ptr %.sroa.0.0.i129, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %3 = zext i8 %2 to i32                          ; 2 uses
  %4 = icmp ugt i8 %2, 57
  %5 = add nsw i32 %3, -65
  %6 = and i32 %5, -33
  %7 = add nuw nsw i32 %6, 10
  %8 = add nsw i32 %3, -48
  %spec.select82.i = select i1 %4, i32 %7, i32 %8 ; 3 uses
  %9 = icmp ult i32 %spec.select82.i, 16
  br i1 %9, label %10, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

10:                                               ; preds = %.lr.ph.split.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i127, 1
  br i1 %.not56.i, label %.loopexit.i133, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %10
  %11 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 1
  %12 = load i8, ptr %11, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %13 = zext i8 %12 to i32                        ; 2 uses
  %14 = icmp ugt i8 %12, 57
  %15 = add nsw i32 %13, -65
  %16 = and i32 %15, -33
  %17 = add nuw nsw i32 %16, 10
  %18 = add nsw i32 %13, -48
  %spec.select82.i.1 = select i1 %14, i32 %17, i32 %18 ; 2 uses
  %19 = icmp ult i32 %spec.select82.i.1, 16
  br i1 %19, label %20, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

20:                                               ; preds = %.lr.ph.split.i.1
  %21 = shl nuw nsw i32 %spec.select82.i, 4
  %22 = or disjoint i32 %spec.select82.i.1, %21   ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i127, 2
  br i1 %.not56.i.1, label %.loopexit.i133, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %20
  %23 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 2
  %24 = load i8, ptr %23, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %25 = zext i8 %24 to i32                        ; 2 uses
  %26 = icmp ugt i8 %24, 57
  %27 = add nsw i32 %25, -65
  %28 = and i32 %27, -33
  %29 = add nuw nsw i32 %28, 10
  %30 = add nsw i32 %25, -48
  %spec.select82.i.2 = select i1 %26, i32 %29, i32 %30 ; 2 uses
  %31 = icmp ult i32 %spec.select82.i.2, 16
  br i1 %31, label %32, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

32:                                               ; preds = %.lr.ph.split.i.2
  %33 = shl nuw nsw i32 %22, 4
  %34 = or disjoint i32 %spec.select82.i.2, %33   ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i127, 3
  br i1 %.not56.i.2, label %.loopexit.i133, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %32
  %35 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 3
  %36 = load i8, ptr %35, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %37 = zext i8 %36 to i32                        ; 2 uses
  %38 = icmp ugt i8 %36, 57
  %39 = add nsw i32 %37, -65
  %40 = and i32 %39, -33
  %41 = add nuw nsw i32 %40, 10
  %42 = add nsw i32 %37, -48
  %spec.select82.i.3 = select i1 %38, i32 %41, i32 %42 ; 2 uses
  %43 = icmp ult i32 %spec.select82.i.3, 16
  br i1 %43, label %44, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

44:                                               ; preds = %.lr.ph.split.i.3
  %45 = shl nuw nsw i32 %34, 4
  %46 = or disjoint i32 %spec.select82.i.3, %45   ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i127, 4
  br i1 %.not56.i.3, label %.loopexit.i133, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %44
  %47 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 4
  %48 = load i8, ptr %47, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %49 = zext i8 %48 to i32                        ; 2 uses
  %50 = icmp ugt i8 %48, 57
  %51 = add nsw i32 %49, -65
  %52 = and i32 %51, -33
  %53 = add nuw nsw i32 %52, 10
  %54 = add nsw i32 %49, -48
  %spec.select82.i.4 = select i1 %50, i32 %53, i32 %54 ; 2 uses
  %55 = icmp ult i32 %spec.select82.i.4, 16
  br i1 %55, label %56, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

56:                                               ; preds = %.lr.ph.split.i.4
  %57 = shl i32 %46, 4
  %58 = or disjoint i32 %spec.select82.i.4, %57   ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i127, 5
  br i1 %.not56.i.4, label %.loopexit.i133, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %56
  %59 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 5
  %60 = load i8, ptr %59, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %61 = zext i8 %60 to i32                        ; 2 uses
  %62 = icmp ugt i8 %60, 57
  %63 = add nsw i32 %61, -65
  %64 = and i32 %63, -33
  %65 = add nuw nsw i32 %64, 10
  %66 = add nsw i32 %61, -48
  %spec.select82.i.5 = select i1 %62, i32 %65, i32 %66 ; 2 uses
  %67 = icmp ult i32 %spec.select82.i.5, 16
  br i1 %67, label %68, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

68:                                               ; preds = %.lr.ph.split.i.5
  %69 = shl i32 %58, 4
  %70 = or disjoint i32 %spec.select82.i.5, %69   ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i127, 6
  br i1 %.not56.i.5, label %.loopexit.i133, label %.lr.ph.split.i.a

.lr.ph.split.i.a:                                 ; preds = %68
  %71 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 6
  %i.cv = load i8, ptr %71, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = icmp ugt i8 %i.cv, 57
  %i.cy = add nsw i32 %i.cw, -65
  %i.cz = and i32 %i.cy, -33
  %i.da = add nuw nsw i32 %i.cz, 10
  %i.db = add nsw i32 %i.cw, -48
  %spec.select82.i.a = select i1 %i.cx, i32 %i.da, i32 %i.db ; 2 uses
  %i.dc = icmp ult i32 %spec.select82.i.a, 16
  br i1 %i.dc, label %72, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

72:                                               ; preds = %.lr.ph.split.i.a
  %73 = shl i32 %70, 4
  %74 = or disjoint i32 %spec.select82.i.a, %73   ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i127, 7
  br i1 %.not56.i.6, label %.loopexit.i133, label %bb.t

bb.t:                                             ; preds = %72
  %75 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i129, i64 7
  %76 = load i8, ptr %75, align 1, !alias.scope !398, !noundef !6 ; 2 uses
  %77 = zext i8 %76 to i32                        ; 2 uses
  %78 = icmp ugt i8 %76, 57
  %79 = add nsw i32 %77, -65
  %80 = and i32 %79, -33
  %81 = add nuw nsw i32 %80, 10
  %82 = add nsw i32 %77, -48
  %spec.select82.i.7 = select i1 %78, i32 %81, i32 %82 ; 2 uses
  %83 = icmp ult i32 %spec.select82.i.7, 16
  br i1 %83, label %84, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

84:                                               ; preds = %bb.t
  %85 = shl i32 %74, 4
  %86 = or disjoint i32 %spec.select82.i.7, %85
  br label %.loopexit.i133

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit140: ; preds = %.loopexit.i133, %.split.us.i131
  %.sroa.8.0.insert.insert.i125 = phi i64 [ %spec.select.i132, %.split.us.i131 ], [ %i.ci, %.loopexit.i133 ] ; 3 uses
  %i.dd = trunc i64 %.sroa.8.0.insert.insert.i125 to i1
  br i1 %i.dd, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.p

bb.u:                                             ; preds = %bb.p
  %.sroa.058.0 = trunc nuw i64 %.sroa.058.0.in to i32
  %i.de = xor i32 %.sroa.058.0, 55296
  %i.df = add i32 %i.de, -1114112
  %i.dg = icmp ult i32 %i.df, -1112064
  %spec.select = select i1 %i.dg, i64 2, i64 255
  %i.dh = and i64 %.sroa.058.0.in.in, -4294967296
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, %bb.u
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread ], [ %spec.select, %bb.u ], [ 3, %bb.p ]
  %.sroa.6.0.insert.insert = phi i64 [ %i.bz, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread ], [ %i.dh, %bb.u ], [ 0, %bb.p ]
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.0.2
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs2isvxI5XMib_9quick_xml6escape20normalize_xml10_eols(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.d = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !401, !nonnull !6, !noundef !6
  %i.e = tail call { i64, ptr } %i.d(i8 noundef 13, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %i.c), !noalias !401, !inline_history !404 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i64, ptr } %i.e, 1
  %i.i = tail call noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs2isvxI5XMib_9quick_xml(ptr noundef %i.h, ptr noundef nonnull readonly %1) ; 8 uses
  %.not.i34 = icmp ult i64 %i.i, %2
  tail call void @llvm.assume(i1 %.not.i34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.j = load i64, ptr %i.a, align 8, !range !160, !noundef !6
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !161, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e, !prof !162

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.m, i64 %i.q) #11
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.n, align 8, !nonnull !6, !noundef !6
  %i.s = icmp ule i64 %2, %i.m
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.m, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  %i.t = icmp eq i64 %i.i, 0                      ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !405, !noundef !6
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.h, label %.invoke

.loopexit:                                        ; preds = %bb.v, %bb.m, %bb.l, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %.invoke, %bb.k, %bb.n, %bb.h, %.split.i49
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2isvxI5XMib_9quick_xml(ptr noalias noundef align 8 dereferenceable(24) %i.b) #12
          to label %bb.z unwind label %bb.y

bb.h:                                             ; preds = %bb.f, %bb.e
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.i)
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %bb.h
  %i.x = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !408, !noundef !6 ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  call void @llvm.assume(i1 %i.y)
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.noexc40
  %i.z = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !408, !nonnull !6, !noundef !6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull readonly align 1 %1, i64 %i.i, i1 false)
  %.pre.i = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !408
  br label %bb.k

.invoke:                                          ; preds = %.split7.i46, %bb.o, %bb.q, %bb.f
  %i.ab = phi i64 [ 0, %bb.f ], [ %.sroa.05.0, %bb.q ], [ %.sroa.05.0, %bb.o ], [ %.sroa.05.0, %.split7.i46 ]
  %i.ac = phi i64 [ %i.i, %bb.f ], [ %i.aq, %bb.q ], [ %i.aq, %bb.o ], [ %i.aq, %.split7.i46 ]
  %i.ad = phi ptr [ @23, %bb.f ], [ @24, %bb.q ], [ @24, %bb.o ], [ @24, %.split7.i46 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.ab, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad) #11
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %bb.n
  unreachable

bb.k:                                             ; preds = %bb.i, %.noexc40
  %i.ae = phi i64 [ %.pre.i, %bb.i ], [ %i.x, %.noexc40 ]
  %i.af = add i64 %i.ae, %i.i
  store i64 %i.af, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !408
  %i.ag = invoke noundef i64 @_RNvNtCs2isvxI5XMib_9quick_xml6escape24normalize_xml10_eol_step(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.i, i32 noundef 10)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.k, %bb.v
  %.sroa.05.0 = phi i64 [ %i.bf, %bb.v ], [ %i.ag, %bb.k ] ; 10 uses
  %i.ah = icmp ugt i64 %.sroa.05.0, %2
  br i1 %i.ah, label %bb.n, label %bb.l, !prof !162

bb.l:                                             ; preds = %.preheader
  %i.ai = sub nuw nsw i64 %2, %.sroa.05.0         ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.05.0 ; 6 uses
  %i.ak = load atomic ptr, ptr @_RNvNvNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !411, !nonnull !6, !noundef !6
  %i.al = invoke { i64, ptr } %i.ak(i8 noundef 13, ptr noundef nonnull readonly %i.aj, ptr noundef nonnull readonly %i.c)
          to label %.noexc unwind label %.loopexit, !inline_history !404 ; 2 uses

.noexc:                                           ; preds = %bb.l
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.noexc
  %i.ao = extractvalue { i64, ptr } %i.al, 1
  %i.ap = invoke noundef i64 @_RNvXNtCsiVHPhtDv1FH_6memchr3extPhNtB2_7Pointer8distanceCs2isvxI5XMib_9quick_xml(ptr noundef %i.ao, ptr noundef nonnull readonly %i.aj)
          to label %bb.o unwind label %.loopexit  ; 6 uses

bb.n:                                             ; preds = %.preheader
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #11
          to label %bb.j unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.m
  %.not.i = icmp ult i64 %i.ap, %i.ai
  call void @llvm.assume(i1 %.not.i)
  %i.aq = add nuw i64 %i.ap, %.sroa.05.0          ; 7 uses
  %i.ar = load i8, ptr %i.aj, align 1, !alias.scope !414, !noundef !6
  %i.as = icmp sgt i8 %i.ar, -65
  br i1 %i.as, label %bb.p, label %.invoke

bb.p:                                             ; preds = %bb.o
  %.not6.i45 = icmp ult i64 %i.aq, %2
  br i1 %.not6.i45, label %bb.q, label %.split7.i46

.split7.i46:                                      ; preds = %bb.p
  %i.at = icmp eq i64 %i.aq, %2
  br i1 %i.at, label %bb.t, label %.invoke

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !414, !noundef !6
  %i.aw = icmp sgt i8 %i.av, -65
  br i1 %i.aw, label %bb.t, label %.invoke

bb.r:                                             ; preds = %.noexc
  %.not.i48 = icmp ult i64 %.sroa.05.0, %2
  br i1 %.not.i48, label %bb.s, label %.split.i49

bb.s:                                             ; preds = %bb.r
  %i.ax = load i8, ptr %i.aj, align 1, !alias.scope !417, !noundef !6
  %i.ay = icmp sgt i8 %i.ax, -65
  br i1 %i.ay, label %.split.i49, label %.thread79

bb.t:                                             ; preds = %bb.q, %.split7.i46
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2isvxI5XMib_9quick_xml(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ap)
          to label %.noexc54 unwind label %.loopexit

.noexc54:                                         ; preds = %bb.t
  %i.az = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !420, !noundef !6 ; 3 uses
  %i.ba = icmp sgt i64 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %.not.i52 = icmp eq i64 %i.ap, 0
  br i1 %.not.i52, label %bb.v, label %bb.u
end_hunk_0
