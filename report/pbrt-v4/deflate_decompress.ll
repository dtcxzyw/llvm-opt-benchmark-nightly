Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/deflate_decompress?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@libdeflate_deflate_decompress_ex:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7520 ; 3 uses
  %i.e = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 6944 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5336 ; 3 uses
  %i.i = ptrtoint ptr %3 to i64                   ; 2 uses
  %scevgep.i = getelementptr i8, ptr %0, i64 144
  %scevgep660.i = getelementptr i8, ptr %0, i64 256
  %scevgep664.i = getelementptr i8, ptr %0, i64 280
  %scevgep668.i = getelementptr i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %.thread561.i, %bb.a
  %.0484.i = phi ptr [ %3, %bb.a ], [ %.3487.i, %.thread561.i ] ; 4 uses
  %.0460.i = phi ptr [ %1, %bb.a ], [ %.23483.i, %.thread561.i ] ; 8 uses
  %.0436.i = phi i64 [ 0, %bb.a ], [ %.27.i, %.thread561.i ] ; 4 uses
  %.0413.i = phi i32 [ 0, %bb.a ], [ %.22435.i, %.thread561.i ] ; 6 uses
  %.0403.i = phi i64 [ 0, %bb.a ], [ %.23.i, %.thread561.i ] ; 4 uses
  %i.j = icmp ugt i32 %.0413.i, 16
  br i1 %i.j, label %.loopexit592.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %.0460.i to i64
  %i.l = sub i64 %i.c, %i.k
  %i.m = icmp ugt i64 %i.l, 7
  br i1 %i.m, label %bb.d, label %.preheader591.preheader.i, !prof !27

.preheader591.preheader.i:                        ; preds = %bb.c
  %i.n = zext nneg i32 %.0413.i to i64            ; 8 uses
  %.not.i = icmp eq ptr %.0460.i, %i.b
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i533.i = load i64, ptr %.0460.i, align 1, !alias.scope !25, !noalias !28
  %i.o = zext nneg i32 %.0413.i to i64            ; 2 uses
  %i.p = shl i64 %.0.copyload.i533.i, %i.o
  %i.q = or i64 %i.p, %.0436.i
  %i.r = lshr i64 %i.o, 3
  %i.s = xor i64 %i.r, 7
  %i.t = getelementptr inbounds nuw i8, ptr %.0460.i, i64 %i.s
  %i.u = or i32 %.0413.i, 56
  br label %.loopexit592.i

bb.e:                                             ; preds = %.preheader591.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0460.i, i64 1
  %i.w = load i8, ptr %.0460.i, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, %i.n
  %i.z = or i64 %i.y, %.0436.i
  br label %.preheader591.i.1

bb.f:                                             ; preds = %.preheader591.preheader.i
  %i.aa = add i64 %.0403.i, 1
  br label %.preheader591.i.1

.preheader591.i.1:                                ; preds = %bb.f, %bb.e
  %.2462.i = phi ptr [ %i.v, %bb.e ], [ %.0460.i, %bb.f ] ; 4 uses
  %.2438.i = phi i64 [ %i.z, %bb.e ], [ %.0436.i, %bb.f ] ; 2 uses
  %.2405.i = phi i64 [ %.0403.i, %bb.e ], [ %i.aa, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %i.n, 8
  %.not.i.1 = icmp eq ptr %.2462.i, %i.b
  br i1 %.not.i.1, label %bb.h, label %bb.g, !prof !9

bb.g:                                             ; preds = %.preheader591.i.1
  %i.ab = getelementptr inbounds nuw i8, ptr %.2462.i, i64 1
  %i.ac = load i8, ptr %.2462.i, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.ad = zext i8 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, %indvars.iv.next.i
  %i.af = or i64 %i.ae, %.2438.i
  br label %.preheader591.i.2

bb.h:                                             ; preds = %.preheader591.i.1
  %i.ag = add i64 %.2405.i, 1
  br label %.preheader591.i.2

.preheader591.i.2:                                ; preds = %bb.h, %bb.g
  %.2462.i.1 = phi ptr [ %i.ab, %bb.g ], [ %.2462.i, %bb.h ] ; 4 uses
  %.2438.i.1 = phi i64 [ %i.af, %bb.g ], [ %.2438.i, %bb.h ] ; 2 uses
  %.2405.i.1 = phi i64 [ %.2405.i, %bb.g ], [ %i.ag, %bb.h ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %i.n, 16
  %.not.i.2 = icmp eq ptr %.2462.i.1, %i.b
  br i1 %.not.i.2, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %.preheader591.i.2
  %i.ah = getelementptr inbounds nuw i8, ptr %.2462.i.1, i64 1
  %i.ai = load i8, ptr %.2462.i.1, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, %indvars.iv.next.i.1
  %i.al = or i64 %i.ak, %.2438.i.1
  br label %.preheader591.i.3

bb.j:                                             ; preds = %.preheader591.i.2
  %i.am = add i64 %.2405.i.1, 1
  br label %.preheader591.i.3

.preheader591.i.3:                                ; preds = %bb.j, %bb.i
  %.2462.i.2 = phi ptr [ %i.ah, %bb.i ], [ %.2462.i.1, %bb.j ] ; 4 uses
  %.2438.i.2 = phi i64 [ %i.al, %bb.i ], [ %.2438.i.1, %bb.j ] ; 2 uses
  %.2405.i.2 = phi i64 [ %.2405.i.1, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.n, 24
  %.not.i.3 = icmp eq ptr %.2462.i.2, %i.b
  br i1 %.not.i.3, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %.preheader591.i.3
  %i.an = getelementptr inbounds nuw i8, ptr %.2462.i.2, i64 1
  %i.ao = load i8, ptr %.2462.i.2, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.ap = zext i8 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, %indvars.iv.next.i.2
  %i.ar = or i64 %i.aq, %.2438.i.2
  br label %.preheader591.i.4

bb.l:                                             ; preds = %.preheader591.i.3
  %i.as = add i64 %.2405.i.2, 1
  br label %.preheader591.i.4

.preheader591.i.4:                                ; preds = %bb.l, %bb.k
  %.2462.i.3 = phi ptr [ %i.an, %bb.k ], [ %.2462.i.2, %bb.l ] ; 4 uses
  %.2438.i.3 = phi i64 [ %i.ar, %bb.k ], [ %.2438.i.2, %bb.l ] ; 2 uses
  %.2405.i.3 = phi i64 [ %.2405.i.2, %bb.k ], [ %i.as, %bb.l ] ; 2 uses
  %indvars.iv.next.i.3 = or disjoint i64 %i.n, 32 ; 2 uses
  %.not.i.4 = icmp eq ptr %.2462.i.3, %i.b
  br i1 %.not.i.4, label %bb.n, label %bb.m, !prof !9

bb.m:                                             ; preds = %.preheader591.i.4
  %i.at = getelementptr inbounds nuw i8, ptr %.2462.i.3, i64 1
  %i.au = load i8, ptr %.2462.i.3, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, %indvars.iv.next.i.3
  %i.ax = or i64 %i.aw, %.2438.i.3
  br label %bb.o

bb.n:                                             ; preds = %.preheader591.i.4
  %i.ay = add i64 %.2405.i.3, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2462.i.4 = phi ptr [ %i.at, %bb.m ], [ %.2462.i.3, %bb.n ] ; 5 uses
  %.2438.i.4 = phi i64 [ %i.ax, %bb.m ], [ %.2438.i.3, %bb.n ] ; 3 uses
  %.2405.i.4 = phi i64 [ %.2405.i.3, %bb.m ], [ %i.ay, %bb.n ] ; 3 uses
  %indvars.iv.next.i.4 = add nuw nsw i64 %i.n, 40 ; 2 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next.i.3, 48
  br i1 %i.az, label %.preheader591.i.5, label %.loopexit592.loopexit.i

.preheader591.i.5:                                ; preds = %bb.o
  %.not.i.5 = icmp eq ptr %.2462.i.4, %i.b
  br i1 %.not.i.5, label %bb.q, label %bb.p, !prof !9

bb.p:                                             ; preds = %.preheader591.i.5
  %i.ba = getelementptr inbounds nuw i8, ptr %.2462.i.4, i64 1
  %i.bb = load i8, ptr %.2462.i.4, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, %indvars.iv.next.i.4
  %i.be = or i64 %i.bd, %.2438.i.4
  br label %bb.r

bb.q:                                             ; preds = %.preheader591.i.5
  %i.bf = add i64 %.2405.i.4, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2462.i.5 = phi ptr [ %i.ba, %bb.p ], [ %.2462.i.4, %bb.q ] ; 5 uses
  %.2438.i.5 = phi i64 [ %i.be, %bb.p ], [ %.2438.i.4, %bb.q ] ; 3 uses
  %.2405.i.5 = phi i64 [ %.2405.i.4, %bb.p ], [ %i.bf, %bb.q ] ; 3 uses
  %indvars.iv.next.i.5 = add nuw nsw i64 %i.n, 48 ; 2 uses
  %i.bg = icmp ult i32 %.0413.i, 8
  br i1 %i.bg, label %.preheader591.i.6, label %.loopexit592.loopexit.i

.preheader591.i.6:                                ; preds = %bb.r
  %.not.i.6 = icmp eq ptr %.2462.i.5, %i.b
  br i1 %.not.i.6, label %bb.t, label %bb.s, !prof !9

bb.s:                                             ; preds = %.preheader591.i.6
  %i.bh = getelementptr inbounds nuw i8, ptr %.2462.i.5, i64 1
  %i.bi = load i8, ptr %.2462.i.5, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, %indvars.iv.next.i.5
  %i.bl = or i64 %i.bk, %.2438.i.5
  br label %bb.u

bb.t:                                             ; preds = %.preheader591.i.6
  %i.bm = add i64 %.2405.i.5, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2462.i.6 = phi ptr [ %i.bh, %bb.s ], [ %.2462.i.5, %bb.t ]
  %.2438.i.6 = phi i64 [ %i.bl, %bb.s ], [ %.2438.i.5, %bb.t ]
  %.2405.i.6 = phi i64 [ %.2405.i.5, %bb.s ], [ %i.bm, %bb.t ]
  %indvars.iv.next.i.6 = or disjoint i64 %i.n, 56
  br label %.loopexit592.loopexit.i

.loopexit592.loopexit.i:                          ; preds = %bb.u, %bb.r, %bb.o
  %.2462.i.lcssa = phi ptr [ %.2462.i.6, %bb.u ], [ %.2462.i.5, %bb.r ], [ %.2462.i.4, %bb.o ]
  %.2438.i.lcssa = phi i64 [ %.2438.i.6, %bb.u ], [ %.2438.i.5, %bb.r ], [ %.2438.i.4, %bb.o ]
  %.2405.i.lcssa = phi i64 [ %.2405.i.6, %bb.u ], [ %.2405.i.5, %bb.r ], [ %.2405.i.4, %bb.o ]
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.6, %bb.u ], [ %indvars.iv.next.i.5, %bb.r ], [ %indvars.iv.next.i.4, %bb.o ]
  %i.bn = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.loopexit592.i

.loopexit592.i:                                   ; preds = %.loopexit592.loopexit.i, %bb.d, %bb.b
  %.3463.i = phi ptr [ %.0460.i, %bb.b ], [ %i.t, %bb.d ], [ %.2462.i.lcssa, %.loopexit592.loopexit.i ] ; 4 uses
  %.3439.i = phi i64 [ %.0436.i, %bb.b ], [ %i.q, %bb.d ], [ %.2438.i.lcssa, %.loopexit592.loopexit.i ] ; 6 uses
  %.2415.i = phi i32 [ %.0413.i, %bb.b ], [ %i.u, %bb.d ], [ %i.bn, %.loopexit592.loopexit.i ] ; 2 uses
  %.3406.i = phi i64 [ %.0403.i, %bb.b ], [ %.0403.i, %bb.d ], [ %.2405.i.lcssa, %.loopexit592.loopexit.i ] ; 5 uses
  %7 = lshr i64 %.3439.i, 1
  %8 = trunc i64 %7 to i32
  %i.bo = and i32 %8, 3
  %i.bp = lshr i64 %.3439.i, 3                    ; 3 uses
  %i.bq = add i32 %.2415.i, -3                    ; 3 uses
  switch i32 %i.bo, label %default.unreachable [
    i32 2, label %bb.v
    i32 0, label %bb.bv
    i32 1, label %bb.cb
    i32 3, label %deflate_decompress_default.exit
  ], !prof !29

bb.v:                                             ; preds = %.loopexit592.i
  %i.br = lshr i64 %.3439.i, 13                   ; 2 uses
  %i.bs = and i64 %i.br, 15                       ; 4 uses
  %i.bt = lshr i64 %.3439.i, 17
  %i.bu = add i32 %.2415.i, -17
  store i8 0, ptr %i.d, align 4, !tbaa !32, !alias.scope !24, !noalias !33
  %i.bv = add nuw nsw i64 %i.bs, 3
  br label %bb.w

.preheader585.i:                                  ; preds = %.loopexit581.i
  %i.bw = trunc i64 %i.bp to i32
  %i.bx = and i32 %i.bw, 31
  %9 = lshr i64 %.3439.i, 8
  %i.by = add nuw nsw i32 %i.bx, 257              ; 2 uses
  %10 = trunc i64 %9 to i32
  %i.bz = and i32 %10, 31
  %i.ca = add nuw nsw i32 %i.bz, 1                ; 2 uses
  %.not = icmp eq i64 %i.bs, 15
  br i1 %.not, label %._crit_edge.i, label %.lr.ph623.i.preheader

.lr.ph623.i.preheader:                            ; preds = %.preheader585.i
  %i.cb = add nuw nsw i64 %i.bs, 4                ; 2 uses
  %i.cc = and i64 %i.br, 3                        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %i.cc, 3
  br i1 %lcmp.mod.not, label %.lr.ph623.i.prol.loopexit, label %.lr.ph623.i.prol

.lr.ph623.i.prol:                                 ; preds = %.lr.ph623.i.preheader, %.lr.ph623.i.prol
  %indvars.iv680.i.prol = phi i64 [ %indvars.iv.next681.i.prol, %.lr.ph623.i.prol ], [ %i.cb, %.lr.ph623.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph623.i.prol ], [ 0, %.lr.ph623.i.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr @deflate_decompress_default.deflate_precode_lens_permutation, i64 %indvars.iv680.i.prol
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !10, !noalias !34
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  store i8 0, ptr %i.cg, align 1, !tbaa !10, !alias.scope !24, !noalias !33
  %indvars.iv.next681.i.prol = add nuw nsw i64 %indvars.iv680.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %i.ch = xor i64 %i.cc, %prol.iter.next
  %prol.iter.cmp.not = icmp eq i64 %i.ch, 3
  br i1 %prol.iter.cmp.not, label %.lr.ph623.i.prol.loopexit, label %.lr.ph623.i.prol, !llvm.loop !17

.lr.ph623.i.prol.loopexit:                        ; preds = %.lr.ph623.i.prol, %.lr.ph623.i.preheader
  %indvars.iv680.i.unr = phi i64 [ %i.cb, %.lr.ph623.i.preheader ], [ %indvars.iv.next681.i.prol, %.lr.ph623.i.prol ]
  %i.ci = add nsw i64 %i.bs, -12
  %i.cj = icmp ult i64 %i.ci, 3
  br i1 %i.cj, label %._crit_edge.i, label %.lr.ph623.i

bb.w:                                             ; preds = %.loopexit581.i, %bb.v
  %indvars.iv675.i = phi i64 [ 0, %bb.v ], [ %indvars.iv.next676.i, %.loopexit581.i ] ; 3 uses
  %.4407620.i = phi i64 [ %.3406.i, %bb.v ], [ %.7410.i, %.loopexit581.i ] ; 4 uses
  %.3416619.i = phi i32 [ %i.bu, %bb.v ], [ %i.es, %.loopexit581.i ] ; 5 uses
  %.4440618.i = phi i64 [ %i.bt, %bb.v ], [ %i.er, %.loopexit581.i ] ; 4 uses
  %.4464617.i = phi ptr [ %.3463.i, %bb.v ], [ %.7467.i, %.loopexit581.i ] ; 8 uses
  %i.ck = icmp ugt i32 %.3416619.i, 2
  br i1 %i.ck, label %.loopexit581.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = ptrtoint ptr %.4464617.i to i64
  %i.cm = sub i64 %i.c, %i.cl
  %i.cn = icmp ugt i64 %i.cm, 7
  br i1 %i.cn, label %bb.y, label %.preheader580.preheader.i, !prof !27

.preheader580.preheader.i:                        ; preds = %bb.x
  %i.co = zext nneg i32 %.3416619.i to i64        ; 8 uses
  %.not529.i = icmp eq ptr %.4464617.i, %i.b
  br i1 %.not529.i, label %bb.aa, label %bb.z, !prof !9

bb.y:                                             ; preds = %bb.x
  %.0.copyload.i532.i = load i64, ptr %.4464617.i, align 1, !alias.scope !25, !noalias !28
  %i.cp = zext nneg i32 %.3416619.i to i64
  %i.cq = shl i64 %.0.copyload.i532.i, %i.cp
  %i.cr = or i64 %i.cq, %.4440618.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.4464617.i, i64 7
  %i.ct = or disjoint i32 %.3416619.i, 56
  br label %.loopexit581.i

bb.z:                                             ; preds = %.preheader580.preheader.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.4464617.i, i64 1
  %i.cv = load i8, ptr %.4464617.i, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.cw = zext i8 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, %i.co
  %i.cy = or i64 %i.cx, %.4440618.i
  br label %.preheader580.i.1

bb.aa:                                            ; preds = %.preheader580.preheader.i
  %i.cz = add i64 %.4407620.i, 1
  br label %.preheader580.i.1

.preheader580.i.1:                                ; preds = %bb.aa, %bb.z
  %.6466.i = phi ptr [ %i.cu, %bb.z ], [ %.4464617.i, %bb.aa ] ; 4 uses
  %.6442.i = phi i64 [ %i.cy, %bb.z ], [ %.4440618.i, %bb.aa ] ; 2 uses
  %.6409.i = phi i64 [ %.4407620.i, %bb.z ], [ %i.cz, %bb.aa ] ; 2 uses
  %indvars.iv.next673.i = or disjoint i64 %i.co, 8
  %.not529.i.1 = icmp eq ptr %.6466.i, %i.b
  br i1 %.not529.i.1, label %bb.ac, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %.preheader580.i.1
  %i.da = getelementptr inbounds nuw i8, ptr %.6466.i, i64 1
  %i.db = load i8, ptr %.6466.i, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.dc = zext i8 %i.db to i64
  %i.dd = shl nuw nsw i64 %i.dc, %indvars.iv.next673.i
  %i.de = or i64 %i.dd, %.6442.i
  br label %.preheader580.i.2

bb.ac:                                            ; preds = %.preheader580.i.1
  %i.df = add i64 %.6409.i, 1
  br label %.preheader580.i.2

.preheader580.i.2:                                ; preds = %bb.ac, %bb.ab
  %.6466.i.1 = phi ptr [ %i.da, %bb.ab ], [ %.6466.i, %bb.ac ] ; 4 uses
  %.6442.i.1 = phi i64 [ %i.de, %bb.ab ], [ %.6442.i, %bb.ac ] ; 2 uses
  %.6409.i.1 = phi i64 [ %.6409.i, %bb.ab ], [ %i.df, %bb.ac ] ; 2 uses
  %indvars.iv.next673.i.1 = or disjoint i64 %i.co, 16 ; 2 uses
  %.not529.i.2 = icmp eq ptr %.6466.i.1, %i.b
  br i1 %.not529.i.2, label %bb.ae, label %bb.ad, !prof !9

bb.ad:                                            ; preds = %.preheader580.i.2
  %i.dg = getelementptr inbounds nuw i8, ptr %.6466.i.1, i64 1
  %i.dh = load i8, ptr %.6466.i.1, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.di = zext i8 %i.dh to i64
  %i.dj = shl nuw nsw i64 %i.di, %indvars.iv.next673.i.1
  %i.dk = or i64 %i.dj, %.6442.i.1
  br label %bb.af

bb.ae:                                            ; preds = %.preheader580.i.2
  %i.dl = add i64 %.6409.i.1, 1
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.6466.i.2 = phi ptr [ %i.dg, %bb.ad ], [ %.6466.i.1, %bb.ae ] ; 5 uses
  %.6442.i.2 = phi i64 [ %i.dk, %bb.ad ], [ %.6442.i.1, %bb.ae ] ; 3 uses
  %.6409.i.2 = phi i64 [ %.6409.i.1, %bb.ad ], [ %i.dl, %bb.ae ] ; 3 uses
  %indvars.iv.next673.i.2 = or disjoint i64 %i.co, 24 ; 3 uses
  %i.dm = icmp samesign ult i64 %indvars.iv.next673.i.1, 48
  br i1 %i.dm, label %.preheader580.i.3, label %.loopexit581.loopexit.i

.preheader580.i.3:                                ; preds = %bb.af
  %.not529.i.3 = icmp eq ptr %.6466.i.2, %i.b
  br i1 %.not529.i.3, label %bb.ah, label %bb.ag, !prof !9

bb.ag:                                            ; preds = %.preheader580.i.3
  %i.dn = getelementptr inbounds nuw i8, ptr %.6466.i.2, i64 1
  %i.do = load i8, ptr %.6466.i.2, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, %indvars.iv.next673.i.2
  %i.dr = or i64 %i.dq, %.6442.i.2
  br label %bb.ai

bb.ah:                                            ; preds = %.preheader580.i.3
  %i.ds = add i64 %.6409.i.2, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.6466.i.3 = phi ptr [ %i.dn, %bb.ag ], [ %.6466.i.2, %bb.ah ] ; 5 uses
  %.6442.i.3 = phi i64 [ %i.dr, %bb.ag ], [ %.6442.i.2, %bb.ah ] ; 3 uses
  %.6409.i.3 = phi i64 [ %.6409.i.2, %bb.ag ], [ %i.ds, %bb.ah ] ; 3 uses
  %indvars.iv.next673.i.3 = or disjoint i64 %i.co, 32 ; 3 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next673.i.2, 48
  br i1 %i.dt, label %.preheader580.i.4, label %.loopexit581.loopexit.i

.preheader580.i.4:                                ; preds = %bb.ai
  %.not529.i.4 = icmp eq ptr %.6466.i.3, %i.b
  br i1 %.not529.i.4, label %bb.ak, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %.preheader580.i.4
  %i.du = getelementptr inbounds nuw i8, ptr %.6466.i.3, i64 1
  %i.dv = load i8, ptr %.6466.i.3, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.dw = zext i8 %i.dv to i64
  %i.dx = shl nuw nsw i64 %i.dw, %indvars.iv.next673.i.3
  %i.dy = or i64 %i.dx, %.6442.i.3
  br label %bb.al

bb.ak:                                            ; preds = %.preheader580.i.4
  %i.dz = add i64 %.6409.i.3, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.6466.i.4 = phi ptr [ %i.du, %bb.aj ], [ %.6466.i.3, %bb.ak ] ; 5 uses
  %.6442.i.4 = phi i64 [ %i.dy, %bb.aj ], [ %.6442.i.3, %bb.ak ] ; 3 uses
  %.6409.i.4 = phi i64 [ %.6409.i.3, %bb.aj ], [ %i.dz, %bb.ak ] ; 3 uses
  %indvars.iv.next673.i.4 = or disjoint i64 %i.co, 40 ; 3 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next673.i.3, 48
  br i1 %i.ea, label %.preheader580.i.5, label %.loopexit581.loopexit.i

.preheader580.i.5:                                ; preds = %bb.al
  %.not529.i.5 = icmp eq ptr %.6466.i.4, %i.b
  br i1 %.not529.i.5, label %bb.an, label %bb.am, !prof !9

bb.am:                                            ; preds = %.preheader580.i.5
  %i.eb = getelementptr inbounds nuw i8, ptr %.6466.i.4, i64 1
  %i.ec = load i8, ptr %.6466.i.4, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.ed = zext i8 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, %indvars.iv.next673.i.4
  %i.ef = or i64 %i.ee, %.6442.i.4
  br label %bb.ao

bb.an:                                            ; preds = %.preheader580.i.5
  %i.eg = add i64 %.6409.i.4, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.6466.i.5 = phi ptr [ %i.eb, %bb.am ], [ %.6466.i.4, %bb.an ] ; 5 uses
  %.6442.i.5 = phi i64 [ %i.ef, %bb.am ], [ %.6442.i.4, %bb.an ] ; 3 uses
  %.6409.i.5 = phi i64 [ %.6409.i.4, %bb.am ], [ %i.eg, %bb.an ] ; 3 uses
  %indvars.iv.next673.i.5 = or disjoint i64 %i.co, 48 ; 2 uses
  %i.eh = icmp samesign ult i64 %indvars.iv.next673.i.4, 48
  br i1 %i.eh, label %.preheader580.i.6, label %.loopexit581.loopexit.i

.preheader580.i.6:                                ; preds = %bb.ao
  %.not529.i.6 = icmp eq ptr %.6466.i.5, %i.b
  br i1 %.not529.i.6, label %bb.aq, label %bb.ap, !prof !9

bb.ap:                                            ; preds = %.preheader580.i.6
  %i.ei = getelementptr inbounds nuw i8, ptr %.6466.i.5, i64 1
  %i.ej = load i8, ptr %.6466.i.5, align 1, !tbaa !10, !alias.scope !25, !noalias !28
  %i.ek = zext i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, %indvars.iv.next673.i.5
end_hunk_0
