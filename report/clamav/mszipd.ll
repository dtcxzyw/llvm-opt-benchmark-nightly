Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/mszipd?download=true
inline.NumInlined: 22
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@mszipd_decompress:bb.a
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cd = load i32, ptr %i.ah, align 8, !tbaa !33 ; 2 uses
  %.not133 = icmp eq i32 %i.cd, 0
  br i1 %.not133, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = load ptr, ptr %i.ak, align 8, !tbaa !24
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %0, i32 noundef %i.cd) #7 ; 0 uses
  %.pre = load i32, ptr %i.ai, align 8, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.cg = phi i32 [ %.pre, %bb.r ], [ 0, %bb.q ], [ %i.cb, %bb.p ]
  %i.ch = load ptr, ptr %0, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !41
  %i.ck = sub nsw i32 32768, %i.cg
  tail call void (ptr, ptr, ...) %i.cj(ptr noundef null, ptr noundef nonnull @.str, i32 noundef %i.ck) #7
  %i.cl = load i32, ptr %i.ai, align 8, !tbaa !29 ; 3 uses
  %i.cm = icmp slt i32 %i.cl, 32768
  br i1 %i.cm, label %.lr.ph163.preheader, label %._crit_edge164

.lr.ph163.preheader:                              ; preds = %bb.s
  %i.cn = sext i32 %i.cl to i64
  %scevgep178 = getelementptr i8, ptr %i.al, i64 %i.cn
  %i.co = sub i32 32767, %i.cl
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep178, i8 0, i64 %i.cq, i1 false), !tbaa !32
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %.lr.ph163.preheader, %bb.s
  store i32 32768, ptr %i.ai, align 8, !tbaa !29
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.cr = icmp sgt i32 %i.by, 0
  %i.cs = select i1 %i.cr, i32 %i.by, i32 11
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %._crit_edge180, %._crit_edge164
  %i.ct = phi i64 [ %i.bz, %._crit_edge180 ], [ 32768, %._crit_edge164 ] ; 2 uses
  store ptr %i.al, ptr %i.g, align 8, !tbaa !40
  %i.cu = getelementptr inbounds i8, ptr %i.al, i64 %i.ct
  store ptr %i.cu, ptr %i.e, align 8, !tbaa !39
  %i.cv = tail call i64 @llvm.smin.i64(i64 %.1116165, i64 %i.ct) ; 3 uses
  %i.cw = trunc nsw i64 %i.cv to i32              ; 2 uses
  %i.cx = load ptr, ptr %0, align 8, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30
  %i.da = load ptr, ptr %i.am, align 8, !tbaa !19
  %i.db = tail call i32 %i.cz(ptr noundef %i.da, ptr noundef nonnull %i.al, i32 noundef %i.cw) #7
  %.not134 = icmp eq i32 %i.db, %i.cw
  br i1 %.not134, label %bb.v, label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.u
  %i.dc = icmp sgt i32 %i.by, 0
  br i1 %i.dc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dd = load i32, ptr %i.aj, align 4, !tbaa !23
  %.not135 = icmp eq i32 %i.dd, 0
  br i1 %.not135, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cv
  store ptr %i.df, ptr %i.g, align 8, !tbaa !40
  %i.dg = sub nsw i64 %.1116165, %i.cv            ; 3 uses
  %i.dh = icmp sgt i64 %i.dg, 0
  br i1 %i.dh, label %bb.g, label %._crit_edge167

._crit_edge167:                                   ; preds = %bb.x
  %i.di = icmp eq i64 %i.dg, 0
  br i1 %i.di, label %.loopexit, label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.u, %bb.h, %bb.j, %._crit_edge167, %.preheader, %bb.d, %bb.t
  %.sink = phi i32 [ 3, %bb.h ], [ 11, %.preheader ], [ %i.cs, %bb.t ], [ 4, %bb.d ], [ 11, %._crit_edge167 ], [ 3, %bb.j ], [ 4, %bb.u ] ; 2 uses
  store i32 %.sink, ptr %i.c, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.loopexit.sink.split, %._crit_edge167, %bb.f, %bb.b, %bb.a
  %.0117 = phi i32 [ 0, %._crit_edge167 ], [ 1, %bb.a ], [ %.sink, %.loopexit.sink.split ], [ %i.d, %bb.b ], [ 0, %bb.f ], [ %i.by, %bb.w ]
  ret i32 %.0117
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -14, 4) i32 @inflate(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i16], align 16             ; 5 uses
  %i.b = alloca [19 x i8], align 16               ; 11 uses
  %i.c = alloca [320 x i8], align 16              ; 7 uses
  %i.d = alloca [4 x i8], align 2                 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 20 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 20 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 64 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 16 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 32 uses
  %i.q = getelementptr i8, ptr %0, i64 112        ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 400        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2992 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 256
  %scevgep882 = getelementptr i8, ptr %0, i64 368
  %scevgep884 = getelementptr i8, ptr %0, i64 392
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  br label %bb.b

bb.b:                                             ; preds = %.loopexit498, %bb.a
  %.0345 = phi ptr [ %i.f, %bb.a ], [ %.22367, %.loopexit498 ] ; 2 uses
  %.0332 = phi ptr [ %i.h, %bb.a ], [ %.22, %.loopexit498 ] ; 2 uses
  %.0319 = phi i32 [ %i.j, %bb.a ], [ %.12331, %.loopexit498 ] ; 2 uses
  %.0312 = phi i32 [ %i.l, %bb.a ], [ %.12, %.loopexit498 ] ; 3 uses
  %i.aa = icmp slt i32 %.0312, 1
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.j
  %.1313664 = phi i32 [ %i.ay, %bb.j ], [ %.0312, %bb.b ] ; 3 uses
  %.1320663 = phi i32 [ %i.ax, %bb.j ], [ %.0319, %bb.b ]
  %.1333662 = phi ptr [ %.2334, %bb.j ], [ %.0332, %bb.b ] ; 2 uses
  %.1346661 = phi ptr [ %i.at, %bb.j ], [ %.0345, %bb.b ] ; 2 uses
  %.not418 = icmp ult ptr %.1346661, %.1333662
  br i1 %.not418, label %bb.j, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %0, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ag = load i32, ptr %i.o, align 4, !tbaa !20
  %i.ah = call i32 %i.ad(ptr noundef %i.ae, ptr noundef %i.af, i32 noundef %i.ag) #7, !inline_history !0 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.aj, align 8, !tbaa !22
  br label %.thread477

bb.e:                                             ; preds = %bb.c
  %i.ak = icmp eq i32 %i.ah, 0
  br i1 %i.ak, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.al = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i = icmp eq i8 %i.al, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.am, align 8, !tbaa !22
  br label %.thread477

bb.h:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !32
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.ap, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.0.i = phi i32 [ 2, %bb.h ], [ %i.ah, %bb.e ]
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.aq, ptr %i.e, align 8, !tbaa !26
  %i.ar = zext nneg i32 %.0.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %i.g, align 8, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph
  %.2347 = phi ptr [ %i.aq, %bb.i ], [ %.1346661, %.lr.ph ] ; 2 uses
  %.2334 = phi ptr [ %i.as, %bb.i ], [ %.1333662, %.lr.ph ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.2347, i64 1 ; 2 uses
  %i.au = load i8, ptr %.2347, align 1, !tbaa !32
  %i.av = zext i8 %i.au to i32
  %i.aw = shl nuw nsw i32 %i.av, %.1313664
  %i.ax = or i32 %i.aw, %.1320663                 ; 2 uses
  %i.ay = add nsw i32 %.1313664, 8                ; 2 uses
  %i.az = icmp slt i32 %.1313664, -7
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.b
  %.1346.lcssa = phi ptr [ %.0345, %bb.b ], [ %i.at, %bb.j ] ; 3 uses
  %.1333.lcssa = phi ptr [ %.0332, %bb.b ], [ %.2334, %bb.j ] ; 3 uses
  %.1320.lcssa = phi i32 [ %.0319, %bb.b ], [ %i.ax, %bb.j ] ; 2 uses
  %.1313.lcssa = phi i32 [ %.0312, %bb.b ], [ %i.ay, %bb.j ] ; 3 uses
  %i.ba = and i32 %.1320.lcssa, 1
  %i.bb = lshr i32 %.1320.lcssa, 1                ; 2 uses
  %i.bc = add nsw i32 %.1313.lcssa, -1            ; 2 uses
  %i.bd = icmp samesign ult i32 %.1313.lcssa, 3
  br i1 %i.bd, label %.lr.ph673, label %._crit_edge674

.lr.ph673:                                        ; preds = %._crit_edge
  %.not416 = icmp ult ptr %.1346.lcssa, %.1333.lcssa
  br i1 %.not416, label %bb.r, label %bb.k

bb.k:                                             ; preds = %.lr.ph673
  %i.be = load ptr, ptr %0, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !31
  %i.bh = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.bi = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.bj = load i32, ptr %i.o, align 4, !tbaa !20
  %i.bk = call i32 %i.bg(ptr noundef %i.bh, ptr noundef %i.bi, i32 noundef %i.bj) #7, !inline_history !0 ; 3 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.bm, align 8, !tbaa !22
  br label %.thread477

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp eq i32 %i.bk, 0
  br i1 %i.bn, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bo = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i423 = icmp eq i8 %i.bo, 0
  br i1 %.not.i423, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 3, ptr %i.bp, align 8, !tbaa !22
  br label %.thread477

bb.p:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !32
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.bs, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.0.i421 = phi i32 [ 2, %bb.p ], [ %i.bk, %bb.m ]
  %i.bt = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.bt, ptr %i.e, align 8, !tbaa !26
  %i.bu = zext nneg i32 %.0.i421 to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu ; 2 uses
  store ptr %i.bv, ptr %i.g, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph673, %bb.q
  %.4349 = phi ptr [ %i.bt, %bb.q ], [ %.1346.lcssa, %.lr.ph673 ] ; 2 uses
  %.4336 = phi ptr [ %i.bv, %bb.q ], [ %.1333.lcssa, %.lr.ph673 ]
  %1 = add nuw nsw i32 %.1313.lcssa, 7
  %i.bw = load i8, ptr %.4349, align 1, !tbaa !32
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, %i.bc
  %i.bz = or i32 %i.by, %i.bb
  %2 = getelementptr inbounds nuw i8, ptr %.4349, i64 1
  br label %._crit_edge674

._crit_edge674:                                   ; preds = %bb.r, %._crit_edge
  %.3348.lcssa = phi ptr [ %.1346.lcssa, %._crit_edge ], [ %2, %bb.r ] ; 7 uses
  %.3335.lcssa = phi ptr [ %.1333.lcssa, %._crit_edge ], [ %.4336, %bb.r ] ; 7 uses
  %.2321.lcssa = phi i32 [ %i.bb, %._crit_edge ], [ %i.bz, %bb.r ] ; 2 uses
  %.2314.lcssa = phi i32 [ %i.bc, %._crit_edge ], [ %1, %bb.r ] ; 3 uses
  %i.ca = and i32 %.2321.lcssa, 3
  %i.cb = lshr i32 %.2321.lcssa, 2                ; 5 uses
  %i.cc = add nsw i32 %.2314.lcssa, -2            ; 6 uses
  switch i32 %i.ca, label %default.unreachable [
    i32 0, label %bb.s
    i32 3, label %.thread477
    i32 1, label %.preheader500
    i32 2, label %bb.ai
  ]

bb.s:                                             ; preds = %._crit_edge674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.cd = and i32 %i.cc, 7
  %i.ce = lshr i32 %i.cb, %i.cd                   ; 5 uses
  %i.cf = and i32 %i.cc, -8                       ; 5 uses
  %.not746 = icmp eq i32 %i.cf, 0
  br i1 %.not746, label %.lr.ph758.preheader, label %.lr.ph751.preheader

.lr.ph751.preheader:                              ; preds = %bb.s
  %i.cg = trunc i32 %i.ce to i8
  store i8 %i.cg, ptr %i.d, align 2, !tbaa !32
  %i.ch = lshr i32 %i.ce, 8                       ; 2 uses
  %i.ci = icmp eq i32 %i.cf, 8
  br i1 %i.ci, label %.lr.ph758.preheader, label %.lr.ph751.1

.lr.ph758.preheader:                              ; preds = %bb.s, %.lr.ph751.preheader, %.lr.ph751.1, %.lr.ph751.2
  %.3322.lcssa.ph = phi i32 [ %i.cn, %.lr.ph751.2 ], [ %i.ck, %.lr.ph751.1 ], [ %i.ch, %.lr.ph751.preheader ], [ %i.ce, %bb.s ]
  %.0295.lcssa.ph = phi i64 [ 3, %.lr.ph751.2 ], [ 2, %.lr.ph751.1 ], [ 1, %.lr.ph751.preheader ], [ 0, %bb.s ]
  br label %.lr.ph758

.lr.ph751.1:                                      ; preds = %.lr.ph751.preheader
  %i.cj = trunc i32 %i.ch to i8
  store i8 %i.cj, ptr %i.y, align 1, !tbaa !32
  %i.ck = lshr i32 %i.ce, 16                      ; 2 uses
  %i.cl = icmp eq i32 %i.cf, 16
  br i1 %i.cl, label %.lr.ph758.preheader, label %.lr.ph751.2

.lr.ph751.2:                                      ; preds = %.lr.ph751.1
  %i.cm = trunc i32 %i.ck to i8
  store i8 %i.cm, ptr %i.x, align 2, !tbaa !32
  %i.cn = lshr i32 %i.ce, 24                      ; 2 uses
  %i.co = icmp eq i32 %i.cf, 24
  br i1 %i.co, label %.lr.ph758.preheader, label %.lr.ph751.3

.lr.ph751.3:                                      ; preds = %.lr.ph751.2
  %i.cp = trunc nuw nsw i32 %i.cn to i8
  store i8 %i.cp, ptr %i.z, align 1, !tbaa !32
  %i.cq = icmp eq i32 %i.cf, 32
  br i1 %i.cq, label %._crit_edge759, label %.thread

.lr.ph758:                                        ; preds = %.lr.ph758.preheader, %bb.y
  %indvars.iv = phi i64 [ %.0295.lcssa.ph, %.lr.ph758.preheader ], [ %indvars.iv.next, %bb.y ] ; 2 uses
  %.5337756 = phi ptr [ %.3335.lcssa, %.lr.ph758.preheader ], [ %.6338, %bb.y ] ; 2 uses
  %.5350755 = phi ptr [ %.3348.lcssa, %.lr.ph758.preheader ], [ %i.dh, %bb.y ] ; 2 uses
  %.not411 = icmp ult ptr %.5350755, %.5337756
  br i1 %.not411, label %bb.y, label %bb.t

bb.t:                                             ; preds = %.lr.ph758
  %i.cr = load ptr, ptr %0, align 8, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !31
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.cv = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.cw = load i32, ptr %i.o, align 4, !tbaa !20
  %i.cx = call i32 %i.ct(ptr noundef %i.cu, ptr noundef %i.cv, i32 noundef %i.cw) #7, !inline_history !0 ; 3 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %.thread.sink.split, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = icmp eq i32 %i.cx, 0
  br i1 %i.cz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.da = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i427 = icmp eq i8 %i.da, 0
  br i1 %.not.i427, label %bb.w, label %.thread.sink.split

bb.w:                                             ; preds = %bb.v
  %i.db = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store i8 0, ptr %i.dc, align 1, !tbaa !32
  %i.dd = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.dd, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.0.i425 = phi i32 [ 2, %bb.w ], [ %i.cx, %bb.u ]
  %i.de = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.de, ptr %i.e, align 8, !tbaa !26
  %i.df = zext nneg i32 %.0.i425 to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df ; 2 uses
  store ptr %i.dg, ptr %i.g, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph758
  %.6351 = phi ptr [ %i.de, %bb.x ], [ %.5350755, %.lr.ph758 ] ; 2 uses
  %.6338 = phi ptr [ %i.dg, %bb.x ], [ %.5337756, %.lr.ph758 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.6351, i64 1 ; 2 uses
  %i.di = load i8, ptr %.6351, align 1, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !32
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %._crit_edge759, label %.lr.ph758

._crit_edge759:                                   ; preds = %bb.y, %.lr.ph751.3
  %.3322.lcssa981 = phi i32 [ 0, %.lr.ph751.3 ], [ %.3322.lcssa.ph, %bb.y ]
  %.5350.lcssa = phi ptr [ %.3348.lcssa, %.lr.ph751.3 ], [ %i.dh, %bb.y ] ; 2 uses
  %.5337.lcssa = phi ptr [ %.3335.lcssa, %.lr.ph751.3 ], [ %.6338, %bb.y ] ; 2 uses
  %i.dk = load i16, ptr %i.d, align 2             ; 3 uses
  %i.dl = load i16, ptr %i.x, align 2
  %i.dm = xor i16 %i.dl, %i.dk
  %.not406 = icmp eq i16 %i.dm, -1
  br i1 %.not406, label %.preheader494, label %.thread

.preheader494:                                    ; preds = %._crit_edge759
  %.not407762 = icmp eq i16 %i.dk, 0
  br i1 %.not407762, label %._crit_edge767, label %.lr.ph766.preheader

.lr.ph766.preheader:                              ; preds = %.preheader494
  %i.dn = zext i16 %i.dk to i32
  br label %.lr.ph766

.lr.ph766:                                        ; preds = %.lr.ph766.preheader, %bb.ah
  %.0303765 = phi i32 [ %i.et, %bb.ah ], [ %i.dn, %.lr.ph766.preheader ] ; 2 uses
  %.7339764 = phi ptr [ %.8340, %bb.ah ], [ %.5337.lcssa, %.lr.ph766.preheader ] ; 2 uses
  %.7352763 = phi ptr [ %i.es, %bb.ah ], [ %.5350.lcssa, %.lr.ph766.preheader ] ; 2 uses
  %.not408 = icmp ult ptr %.7352763, %.7339764
  br i1 %.not408, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.lr.ph766
  %i.do = load ptr, ptr %0, align 8, !tbaa !17
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !31
  %i.dr = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.ds = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dt = load i32, ptr %i.o, align 4, !tbaa !20
  %i.du = call i32 %i.dq(ptr noundef %i.dr, ptr noundef %i.ds, i32 noundef %i.dt) #7, !inline_history !0 ; 3 uses
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %.thread.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = icmp eq i32 %i.du, 0
  br i1 %i.dw, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dx = load i8, ptr %i.p, align 8, !tbaa !21
  %.not.i431 = icmp eq i8 %i.dx, 0
  br i1 %.not.i431, label %bb.ac, label %.thread.sink.split

bb.ac:                                            ; preds = %bb.ab
  %i.dy = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store i8 0, ptr %i.dz, align 1, !tbaa !32
  %i.ea = load ptr, ptr %i.n, align 8, !tbaa !15
  store i8 0, ptr %i.ea, align 1, !tbaa !32
  store i8 1, ptr %i.p, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.0.i429 = phi i32 [ 2, %bb.ac ], [ %i.du, %bb.aa ]
  %i.eb = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  store ptr %i.eb, ptr %i.e, align 8, !tbaa !26
  %i.ec = zext nneg i32 %.0.i429 to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ec ; 2 uses
  store ptr %i.ed, ptr %i.g, align 8, !tbaa !25
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph766
  %.8353 = phi ptr [ %i.eb, %bb.ad ], [ %.7352763, %.lr.ph766 ] ; 3 uses
  %.8340 = phi ptr [ %i.ed, %bb.ad ], [ %.7339764, %.lr.ph766 ] ; 3 uses
  %i.ee = ptrtoint ptr %.8340 to i64
  %i.ef = ptrtoint ptr %.8353 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = trunc i64 %i.eg to i32
  %spec.select = call i32 @llvm.umin.i32(i32 %.0303765, i32 %i.eh)
  %i.ei = load i32, ptr %i.u, align 8, !tbaa !33  ; 2 uses
  %i.ej = sub i32 32768, %i.ei
  %.1299 = call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.ej) ; 3 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !17
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !49
  %i.en = zext i32 %i.ei to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.en
  %i.ep = zext nneg i32 %.1299 to i64             ; 2 uses
  call void %i.em(ptr noundef %.8353, ptr noundef nonnull %i.eo, i64 noundef %i.ep) #7
  %i.eq = load i32, ptr %i.u, align 8, !tbaa !33
  %i.er = add i32 %i.eq, %.1299                   ; 2 uses
  store i32 %i.er, ptr %i.u, align 8, !tbaa !33
  %i.es = getelementptr inbounds nuw i8, ptr %.8353, i64 %i.ep ; 2 uses
  %i.et = sub nuw nsw i32 %.0303765, %.1299       ; 2 uses
  %i.eu = icmp eq i32 %i.er, 32768
  br i1 %i.eu, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ev = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ew = call i32 %i.ev(ptr noundef nonnull %0, i32 noundef 32768) #7
  %.not410 = icmp eq i32 %i.ew, 0
  br i1 %.not410, label %bb.ag, label %.thread
end_hunk_0
