Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.01?download=true
inline.NumInlined: 588
inline.NumDeleted: 197
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs0_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast7cst2astINtB6_7BuilderNtNtBa_6parser6ParserE11integer_litmEBa_:bb.a
  %i.as = load i8, ptr %i.aq, align 1, !alias.scope !41, !noundef !5 ; 2 uses
  switch i8 %i.as, label %bb.m [
    i8 43, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread
    i8 45, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread
  ]

thread-pre-split.i.i:                             ; preds = %bb.k
  %.pr.i.i = load i8, ptr %i.aq, align 1, !alias.scope !41
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split.i.i, %bb.l
  %i.at = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.as, %bb.l ]
  %cond.i.i = icmp eq i8 %i.at, 43                ; 2 uses
  %i.au = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.ar, %i.au      ; 10 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.0.0.idx.i.i ; 9 uses
  %i.av = icmp samesign ult i64 %.sroa.15.0.i.i, 9
  br i1 %i.av, label %.preheader.i.i, label %.preheader64.split.us.i.i.preheader

.preheader64.split.us.i.i:                        ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i246, i64 1
  %i.ax = add nsw i64 %.sroa.15.1.us.i.i245, -1   ; 2 uses
  %.not55.us.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not55.us.i.i, label %.loopexit.i.i, label %.preheader64.split.us.i.i.preheader

.preheader64.split.us.i.i.preheader:              ; preds = %bb.m, %.preheader64.split.us.i.i
  %.sroa.0.1.us.i.i246 = phi ptr [ %i.aw, %.preheader64.split.us.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 3 uses
  %.sroa.15.1.us.i.i245 = phi i64 [ %i.ax, %.preheader64.split.us.i.i ], [ %.sroa.15.0.i.i, %bb.m ]
  %.sroa.045.0.us.i.i244 = phi i32 [ %i.bf, %.preheader64.split.us.i.i ], [ 0, %bb.m ]
  %i.ay = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.us.i.i244, i32 range(i32 8, 17) 10) ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1
  br i1 %i.az, label %.split.us.i.i, label %bb.n, !prof !11

bb.n:                                             ; preds = %.preheader64.split.us.i.i.preheader
  %i.ba = extractvalue { i32, i1 } %i.ay, 0       ; 2 uses
  %i.bb = load i8, ptr %.sroa.0.1.us.i.i246, align 1, !alias.scope !41, !noundef !5
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nsw i32 %i.bc, -48                  ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 9
  %i.bf = add i32 %i.bd, %i.ba                    ; 3 uses
  %i.bg = icmp ult i32 %i.bf, %i.ba
  %or.cond = select i1 %i.be, i1 true, i1 %i.bg, !prof !12
  br i1 %or.cond, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread, label %.preheader64.split.us.i.i, !prof !12

.preheader.i.i:                                   ; preds = %bb.m
  %.not5674.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5674.i.i, label %.loopexit.i.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.preheader.i.i
  %i.bh = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !41, !noundef !5
  %i.bi = zext i8 %i.bh to i32
  %i.bj = add nsw i32 %i.bi, -48                  ; 3 uses
  %i.bk = icmp ult i32 %i.bj, 10
  br i1 %i.bk, label %bb.o, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.o:                                             ; preds = %.lr.ph.split.us.i.i
  %.not56.us.i.i = icmp eq i64 %.sroa.15.0.i.i, 1
  br i1 %.not56.us.i.i, label %.loopexit.i.i, label %.lr.ph.split.us.i.i.1

.lr.ph.split.us.i.i.1:                            ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !41, !noundef !5
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.p, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.p:                                             ; preds = %.lr.ph.split.us.i.i.1
  %i.bq = mul nuw nsw i32 %i.bj, 10
  %i.br = add nuw nsw i32 %i.bo, %i.bq            ; 2 uses
  %.not56.us.i.i.1 = icmp eq i64 %.sroa.15.0.i.i, 2
  br i1 %.not56.us.i.i.1, label %.loopexit.i.i, label %.lr.ph.split.us.i.i.2

.lr.ph.split.us.i.i.2:                            ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !41, !noundef !5
  %i.bu = zext i8 %i.bt to i32
  %i.bv = add nsw i32 %i.bu, -48                  ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 10
  br i1 %i.bw, label %bb.q, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.q:                                             ; preds = %.lr.ph.split.us.i.i.2
  %i.bx = mul nuw nsw i32 %i.br, 10
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %.not56.us.i.i.2 = icmp eq i64 %.sroa.15.0.i.i, 3
  br i1 %.not56.us.i.i.2, label %.loopexit.i.i, label %.lr.ph.split.us.i.i.3

.lr.ph.split.us.i.i.3:                            ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !41, !noundef !5
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 10
  br i1 %i.cd, label %bb.r, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.r:                                             ; preds = %.lr.ph.split.us.i.i.3
  %i.ce = mul nuw nsw i32 %i.by, 10
  %i.cf = add nuw nsw i32 %i.cc, %i.ce            ; 2 uses
  %.not56.us.i.i.3 = icmp eq i64 %.sroa.15.0.i.i, 4
  br i1 %.not56.us.i.i.3, label %.loopexit.i.i, label %.lr.ph.split.us.i.i.4

.lr.ph.split.us.i.i.4:                            ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !alias.scope !41, !noundef !5
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.s, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.s:                                             ; preds = %.lr.ph.split.us.i.i.4
  %i.cl = mul i32 %i.cf, 10
  %i.cm = add i32 %i.cj, %i.cl                    ; 2 uses
  %.not56.us.i.i.4 = icmp eq i64 %.sroa.15.0.i.i, 5
  br i1 %.not56.us.i.i.4, label %.loopexit.i.i, label %.lr.ph.split.us.i.i.5

.lr.ph.split.us.i.i.5:                            ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 5
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !41, !noundef !5
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, -48                  ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 10
  br i1 %i.cr, label %bb.t, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.t:                                             ; preds = %.lr.ph.split.us.i.i.5
  %i.cs = mul i32 %i.cm, 10
  %i.ct = add i32 %i.cq, %i.cs                    ; 2 uses
  %.not56.us.i.i.5 = icmp eq i64 %.sroa.15.0.i.i, 6
  br i1 %.not56.us.i.i.5, label %.loopexit.i.i, label %.lr.ph.split.us.i.i.6

.lr.ph.split.us.i.i.6:                            ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 6
  %i.cv = load i8, ptr %i.cu, align 1, !alias.scope !41, !noundef !5
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.u, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.u:                                             ; preds = %.lr.ph.split.us.i.i.6
  %i.cz = mul i32 %i.ct, 10
  %i.da = add i32 %i.cx, %i.cz                    ; 2 uses
  %.not56.us.i.i.6 = icmp eq i64 %.sroa.15.0.i.i, 7
  br i1 %.not56.us.i.i.6, label %.loopexit.i.i, label %.lr.ph.split.us.i.i.7

.lr.ph.split.us.i.i.7:                            ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 7
  %i.dc = load i8, ptr %i.db, align 1, !alias.scope !41, !noundef !5
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.v, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.v:                                             ; preds = %.lr.ph.split.us.i.i.7
  %i.dg = mul i32 %i.da, 10
  %i.dh = add i32 %i.de, %i.dg
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader64.split.us.i.i, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %.preheader.i.i
  %.sroa.045.1.i.i = phi i32 [ %i.dh, %bb.v ], [ 0, %.preheader.i.i ], [ %i.bj, %bb.o ], [ %i.br, %bb.p ], [ %i.by, %bb.q ], [ %i.cf, %bb.r ], [ %i.cm, %bb.s ], [ %i.ct, %bb.t ], [ %i.da, %bb.u ], [ %i.bf, %.preheader64.split.us.i.i ]
  %i.di = zext i32 %.sroa.045.1.i.i to i64
  %i.dj = shl nuw i64 %i.di, 32
  br label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit

.split.us.i.i:                                    ; preds = %.preheader64.split.us.i.i.preheader
  %i.dk = load i8, ptr %.sroa.0.1.us.i.i246, align 1, !alias.scope !41, !noundef !5
  %i.dl = add i8 %i.dk, -48
  %i.dm = icmp ult i8 %i.dl, 10
  %spec.select.i.i = select i1 %i.dm, i64 513, i64 257
  br label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit

bb.w:                                             ; preds = %bb.j
  %i.dn = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aq, i64 noundef %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 2)
          to label %bb.x unwind label %bb.f

bb.x:                                             ; preds = %bb.w
  br i1 %i.dn, label %bb.y, label %.invoke, !prof !13

bb.y:                                             ; preds = %bb.x
  %i.do = add i64 %i.ar, -2                       ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aq, i64 2 ; 3 uses
  switch i64 %i.do, label %thread-pre-split.i.i118 [
    i64 0, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread
    i64 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  %i.dq = load i8, ptr %i.dp, align 1, !alias.scope !46, !noundef !5 ; 2 uses
  switch i8 %i.dq, label %bb.aa [
    i8 43, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread
    i8 45, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread
  ]

thread-pre-split.i.i118:                          ; preds = %bb.y
  %.pr.i.i119 = load i8, ptr %i.dp, align 1, !alias.scope !46
  br label %bb.aa

bb.aa:                                            ; preds = %thread-pre-split.i.i118, %bb.z
  %i.dr = phi i8 [ %.pr.i.i119, %thread-pre-split.i.i118 ], [ %i.dq, %bb.z ]
  %cond.i.i96 = icmp eq i8 %i.dr, 43              ; 2 uses
  %i.ds = sext i1 %cond.i.i96 to i64
  %.sroa.15.0.i.i97 = add nsw i64 %i.do, %i.ds    ; 4 uses
  %.sroa.0.0.idx.i.i98 = zext i1 %cond.i.i96 to i64
  %.sroa.0.0.i.i99 = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.0.0.idx.i.i98 ; 2 uses
  %i.dt = icmp samesign ult i64 %.sroa.15.0.i.i97, 9
  br i1 %i.dt, label %.preheader.i.i110.a, label %.preheader64.split.us.i.i101.preheader

.preheader64.split.us.i.i101:                     ; preds = %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i104174, i64 1
  %i.dv = add nsw i64 %.sroa.15.1.us.i.i103173, -1 ; 2 uses
  %i.dw = shl nuw i32 %.sroa.045.0.us.i.i102172, 3
  %i.dx = or disjoint i32 %i.eb, %i.dw            ; 2 uses
  %.not55.us.i.i105 = icmp eq i64 %i.dv, 0
  br i1 %.not55.us.i.i105, label %.loopexit.i.i108, label %.preheader64.split.us.i.i101.preheader

.preheader64.split.us.i.i101.preheader:           ; preds = %bb.aa, %.preheader64.split.us.i.i101
  %.sroa.0.1.us.i.i104174 = phi ptr [ %i.du, %.preheader64.split.us.i.i101 ], [ %.sroa.0.0.i.i99, %bb.aa ] ; 2 uses
  %.sroa.15.1.us.i.i103173 = phi i64 [ %i.dv, %.preheader64.split.us.i.i101 ], [ %.sroa.15.0.i.i97, %bb.aa ]
  %.sroa.045.0.us.i.i102172 = phi i32 [ %i.dx, %.preheader64.split.us.i.i101 ], [ 0, %bb.aa ] ; 2 uses
  %i.dy = icmp ugt i32 %.sroa.045.0.us.i.i102172, 536870911
  %i.dz = load i8, ptr %.sroa.0.1.us.i.i104174, align 1, !alias.scope !46, !noundef !5 ; 2 uses
  br i1 %i.dy, label %.split.us.i.i106, label %bb.ab, !prof !11

bb.ab:                                            ; preds = %.preheader64.split.us.i.i101.preheader
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nsw i32 %i.ea, -48                  ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 8
  br i1 %i.ec, label %.preheader64.split.us.i.i101, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

.preheader.i.i110.a:                              ; preds = %bb.aa
  %.not5674.i.i111.a = icmp eq i64 %.sroa.15.0.i.i97, 0
  br i1 %.not5674.i.i111.a, label %.loopexit.i.i108, label %.lr.ph.split.us.i.i113.a

.lr.ph.split.us.i.i113.a:                         ; preds = %.preheader.i.i110.a, %bb.ac
  %.sroa.0.277.us.i.i114 = phi ptr [ %4, %bb.ac ], [ %.sroa.0.0.i.i99, %.preheader.i.i110.a ] ; 2 uses
  %.sroa.15.276.us.i.i115 = phi i64 [ %3, %bb.ac ], [ %.sroa.15.0.i.i97, %.preheader.i.i110.a ]
  %.sroa.045.275.us.i.i116 = phi i32 [ %5, %bb.ac ], [ 0, %.preheader.i.i110.a ]
  %i.ed = load i8, ptr %.sroa.0.277.us.i.i114, align 1, !alias.scope !46, !noundef !5
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add nsw i32 %i.ee, -48                  ; 2 uses
  %i.eg = icmp ult i32 %i.ef, 8
  br i1 %i.eg, label %bb.ac, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread

bb.ac:                                            ; preds = %.lr.ph.split.us.i.i113.a
  %2 = shl i32 %.sroa.045.275.us.i.i116, 3
  %3 = add nsw i64 %.sroa.15.276.us.i.i115, -1    ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0.277.us.i.i114, i64 1
  %5 = or disjoint i32 %i.ef, %2                  ; 2 uses
  %.not56.us.i.i117 = icmp eq i64 %3, 0
  br i1 %.not56.us.i.i117, label %.loopexit.i.i108, label %.lr.ph.split.us.i.i113.a

.loopexit.i.i108:                                 ; preds = %.preheader64.split.us.i.i101, %bb.ac, %.preheader.i.i110.a
  %.sroa.045.1.i.i109 = phi i32 [ %5, %bb.ac ], [ 0, %.preheader.i.i110.a ], [ %i.dx, %.preheader64.split.us.i.i101 ]
  %i.eh = zext i32 %.sroa.045.1.i.i109 to i64
  %i.ei = shl nuw i64 %i.eh, 32
  br label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit

.split.us.i.i106:                                 ; preds = %.preheader64.split.us.i.i101.preheader
  %i.ej = and i8 %i.dz, -8
  %i.ek = icmp eq i8 %i.ej, 48
  %spec.select.i.i107 = select i1 %i.ek, i64 513, i64 257
  br label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit

_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread: ; preds = %bb.n, %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.1, %.lr.ph.split.us.i.i.2, %.lr.ph.split.us.i.i.3, %.lr.ph.split.us.i.i.4, %.lr.ph.split.us.i.i.5, %.lr.ph.split.us.i.i.6, %.lr.ph.split.us.i.i.7, %bb.ab, %.lr.ph.split.us.i.i113.a, %bb.l, %bb.l, %bb.k, %bb.z, %bb.z, %bb.y
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.aj

_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148: ; preds = %bb.ah, %.lr.ph.split.i.i.a, %bb.af, %bb.af, %bb.ae
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.aj

_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit: ; preds = %.split.us.i.i127, %.loopexit.i.i129, %.split.us.i.i106, %.loopexit.i.i108, %.split.us.i.i, %.loopexit.i.i
  %.sroa.530.0.in.in = phi i64 [ %i.ei, %.loopexit.i.i108 ], [ %spec.select.i.i, %.split.us.i.i ], [ %spec.select.i.i107, %.split.us.i.i106 ], [ %i.dj, %.loopexit.i.i ], [ %spec.select.i.i128, %.split.us.i.i127 ], [ %i.fb, %.loopexit.i.i129 ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 3 uses
  %i.eo = trunc i64 %.sroa.530.0.in.in to i1
  br i1 %i.eo, label %bb.aj, label %bb.ao

bb.ad:                                            ; preds = %bb.i
  br i1 %i.ap, label %bb.ae, label %.invoke, !prof !13

.invoke:                                          ; preds = %bb.ad, %bb.x
  %i.ep = phi ptr [ @5, %bb.x ], [ @6, %bb.ad ]
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ep) #19
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.eq = add i64 %i.ao, -2                       ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.an, i64 2 ; 3 uses
  switch i64 %i.eq, label %thread-pre-split.i.i134 [
    i64 0, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148
    i64 1, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !51, !noundef !5 ; 2 uses
  switch i8 %i.es, label %bb.ag [
    i8 43, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148
    i8 45, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148
  ]

thread-pre-split.i.i134:                          ; preds = %bb.ae
  %.pr.i.i135 = load i8, ptr %i.er, align 1, !alias.scope !51
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split.i.i134, %bb.af
  %i.et = phi i8 [ %.pr.i.i135, %thread-pre-split.i.i134 ], [ %i.es, %bb.af ]
  %cond.i.i122 = icmp eq i8 %i.et, 43             ; 2 uses
  %i.eu = sext i1 %cond.i.i122 to i64
  %.sroa.15.0.i.i123 = add nsw i64 %i.eq, %i.eu   ; 4 uses
  %.sroa.0.0.idx.i.i124 = zext i1 %cond.i.i122 to i64
  %.sroa.0.0.i.i125 = getelementptr inbounds nuw i8, ptr %i.er, i64 %.sroa.0.0.idx.i.i124 ; 2 uses
  %i.ev = icmp samesign ult i64 %.sroa.15.0.i.i123, 9
  br i1 %i.ev, label %.preheader.i.i131, label %.preheader64.split.i.i.preheader

.preheader.i.i131:                                ; preds = %bb.ag
  %.not5674.i.i132 = icmp eq i64 %.sroa.15.0.i.i123, 0
  br i1 %.not5674.i.i132, label %.loopexit.i.i129, label %.lr.ph.split.i.i.a

.preheader64.split.i.i:                           ; preds = %bb.ah
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i177, i64 1
  %i.ex = add nsw i64 %.sroa.15.1.i.i176, -1      ; 2 uses
  %i.ey = shl nuw i32 %.sroa.045.0.i.i175, 4
  %i.ez = or disjoint i32 %spec.select81.i.i, %i.ey ; 2 uses
  %.not55.i.i = icmp eq i64 %i.ex, 0
  br i1 %.not55.i.i, label %.loopexit.i.i129, label %.preheader64.split.i.i.preheader

.loopexit.i.i129:                                 ; preds = %.preheader64.split.i.i, %bb.ai, %.preheader.i.i131
  %.sroa.045.1.i.i130 = phi i32 [ %9, %bb.ai ], [ 0, %.preheader.i.i131 ], [ %i.ez, %.preheader64.split.i.i ]
  %i.fa = zext i32 %.sroa.045.1.i.i130 to i64
  %i.fb = shl nuw i64 %i.fa, 32
  br label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit

.preheader64.split.i.i.preheader:                 ; preds = %bb.ag, %.preheader64.split.i.i
  %.sroa.0.1.i.i177 = phi ptr [ %i.ew, %.preheader64.split.i.i ], [ %.sroa.0.0.i.i125, %bb.ag ] ; 2 uses
  %.sroa.15.1.i.i176 = phi i64 [ %i.ex, %.preheader64.split.i.i ], [ %.sroa.15.0.i.i123, %bb.ag ]
  %.sroa.045.0.i.i175 = phi i32 [ %i.ez, %.preheader64.split.i.i ], [ 0, %bb.ag ] ; 2 uses
  %i.fc = icmp ugt i32 %.sroa.045.0.i.i175, 268435455
  %i.fd = load i8, ptr %.sroa.0.1.i.i177, align 1, !alias.scope !51, !noundef !5 ; 2 uses
  %i.fe = zext i8 %i.fd to i32                    ; 2 uses
  %i.ff = icmp ugt i8 %i.fd, 57                   ; 2 uses
  %i.fg = add nsw i32 %i.fe, -65                  ; 2 uses
  %i.fh = add nsw i32 %i.fe, -48                  ; 2 uses
  br i1 %i.fc, label %.split.us.i.i127, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %.preheader64.split.i.i.preheader
  %i.fi = and i32 %i.fg, -33
  %i.fj = add nuw nsw i32 %i.fi, 10
  %spec.select81.i.i = select i1 %i.ff, i32 %i.fj, i32 %i.fh ; 2 uses
  %i.fk = icmp ult i32 %spec.select81.i.i, 16
  br i1 %i.fk, label %.preheader64.split.i.i, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148

.split.us.i.i127:                                 ; preds = %.preheader64.split.i.i.preheader
  %i.fl = and i32 %i.fg, -34
  %i.fm = add nuw nsw i32 %i.fl, 10
  %.sroa.02.0.i58.i.i = select i1 %i.ff, i32 %i.fm, i32 %i.fh
  %i.fn = icmp ult i32 %.sroa.02.0.i58.i.i, 16
  %spec.select.i.i128 = select i1 %i.fn, i64 513, i64 257
  br label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit

.lr.ph.split.i.i.a:                               ; preds = %.preheader.i.i131, %bb.ai
  %.sroa.0.277.i.i = phi ptr [ %8, %bb.ai ], [ %.sroa.0.0.i.i125, %.preheader.i.i131 ] ; 2 uses
  %.sroa.15.276.i.i = phi i64 [ %7, %bb.ai ], [ %.sroa.15.0.i.i123, %.preheader.i.i131 ]
  %.sroa.045.275.i.i = phi i32 [ %9, %bb.ai ], [ 0, %.preheader.i.i131 ]
  %i.fo = load i8, ptr %.sroa.0.277.i.i, align 1, !alias.scope !51, !noundef !5 ; 2 uses
  %i.fp = zext i8 %i.fo to i32                    ; 2 uses
  %i.fq = icmp ugt i8 %i.fo, 57
  %i.fr = add nsw i32 %i.fp, -65
  %i.fs = and i32 %i.fr, -33
  %i.ft = add nuw nsw i32 %i.fs, 10
  %i.fu = add nsw i32 %i.fp, -48
  %spec.select82.i.i.a = select i1 %i.fq, i32 %i.ft, i32 %i.fu ; 2 uses
  %i.fv = icmp ult i32 %spec.select82.i.i.a, 16
  br i1 %i.fv, label %bb.ai, label %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148

bb.ai:                                            ; preds = %.lr.ph.split.i.i.a
  %6 = shl i32 %.sroa.045.275.i.i, 4
  %7 = add nsw i64 %.sroa.15.276.i.i, -1          ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.277.i.i, i64 1
  %9 = or disjoint i32 %spec.select82.i.i.a, %6   ; 2 uses
  %.not56.i.i = icmp eq i64 %7, 0
  br i1 %.not56.i.i, label %.loopexit.i.i129, label %.lr.ph.split.i.i.a

bb.aj:                                            ; preds = %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148, %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread, %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit
  %i.fw = phi ptr [ %i.el, %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread ], [ %i.en, %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit ], [ %i.em, %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit.thread148 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !56
  store i32 0, ptr %i.f, align 4, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !56
  store i32 -1, ptr %i.e, align 4, !noalias !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !56
  store ptr %i.f, ptr %i.d, align 8, !noalias !56
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !56
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.fx, align 8, !noalias !56
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !56
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fy, ptr noundef nonnull @7, ptr noundef nonnull %i.d)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !56
  %i.fz = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.s, ptr %i.fz, align 4, !alias.scope !56
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 %i.u, ptr %i.ga, align 8, !alias.scope !56
  store i32 1, ptr %i.g, align 8, !alias.scope !56
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !59, !noalias !62, !noundef !5 ; 3 uses
  %i.gd = load i64, ptr %i.fw, align 8, !range !32, !alias.scope !59, !noalias !62, !noundef !5
  %i.ge = icmp eq i64 %i.gc, %i.gd
  br i1 %i.ge, label %bb.ak, label %bb.bc

bb.ak:                                            ; preds = %.noexc
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6errors5ErrorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fw)
          to label %bb.bc unwind label %bb.al, !noalias !62

bb.al:                                            ; preds = %bb.ak
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6errors5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g) #18
          to label %.body unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.an:                                            ; preds = %bb.as
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %_RNvXs9_Cs897I0O1htiw_10num_traitsmNtB5_3Num14from_str_radix.exit
  %.sroa.530.0.in = lshr i64 %.sroa.530.0.in.in, 32
  %.sroa.530.0 = trunc nuw i64 %.sroa.530.0.in to i32
  %i.gi = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.530.0, i32 %.sroa.04.1) ; 2 uses
  %i.gj = extractvalue { i32, i1 } %i.gi, 1
  br i1 %i.gj, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gk = extractvalue { i32, i1 } %i.gi, 0
  store ptr %i.w, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.1, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.gk, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.s, ptr %.sroa.672.0..sroa_idx, align 4
  %.sroa.773.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.u, ptr %.sroa.773.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.az, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.hc, %bb.az ], [ %i.gl, %bb.aq ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit: ; preds = %bb.ap
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bb

bb.as:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !64
  store i32 0, ptr %i.c, align 4, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !64
  store i32 -1, ptr %i.b, align 4, !noalias !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !64
  store ptr %i.c, ptr %i.a, align 8, !noalias !64
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !64
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gn, align 8, !noalias !64
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !64
  %i.go = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.go, ptr noundef nonnull @7, ptr noundef nonnull %i.a)
          to label %bb.at unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.s, ptr %i.gp, align 4, !alias.scope !64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %i.u, ptr %i.gq, align 8, !alias.scope !64
  store i32 1, ptr %i.h, align 8, !alias.scope !64
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !67, !noalias !70, !noundef !5 ; 3 uses
  %i.gt = load i64, ptr %i.en, align 8, !range !32, !alias.scope !67, !noalias !70, !noundef !5
  %i.gu = icmp eq i64 %i.gs, %i.gt
  br i1 %i.gu, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6errors5ErrorE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %bb.ax unwind label %bb.av, !noalias !70

bb.av:                                            ; preds = %bb.au
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsfF8zpZz1lvn_13yara_x_parser3ast6errors5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h) #18
          to label %.body unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ax:                                            ; preds = %bb.au, %bb.at
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !67, !noalias !70, !nonnull !5, !noundef !5
  %i.gz = getelementptr inbounds nuw [40 x i8], ptr %i.gy, i64 %i.gs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gz, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.ha = add i64 %i.gs, 1
  store i64 %i.ha, ptr %i.gr, align 8, !alias.scope !67, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bc, %bb.ax
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.hb, align 8
  store ptr null, ptr %0, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit141 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit141: ; preds = %bb.ay
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfF8zpZz1lvn_13yara_x_parser(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit141, %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsfF8zpZz1lvn_13yara_x_parser.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bc:                                            ; preds = %bb.ak, %.noexc
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !59, !noalias !62, !nonnull !5, !noundef !5
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %i.hf, i64 %i.gc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hg, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.hh = add i64 %i.gc, 1
  store i64 %i.hh, ptr %i.gb, align 8, !alias.scope !59, !noalias !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ay

bb.bd:                                            ; preds = %.body
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
