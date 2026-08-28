Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pdfdecode?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pdf_decodestream:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 48
  br label %bb.o

bb.o:                                             ; preds = %bb.ff, %.lr.ph.i
  %i.bb = phi i64 [ %i.aj, %.lr.ph.i ], [ %i.ny, %bb.ff ] ; 16 uses
  %i.bc = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.nx, %bb.ff ] ; 15 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ff ] ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8  ; 3 uses
  switch i32 %i.be, label %bb.fb [
    i32 4, label %bb.p
    i32 7, label %bb.aj
    i32 5, label %bb.be
    i32 3, label %bb.cg
    i32 12, label %bb.cp
    i32 6, label %bb.da
    i32 11, label %bb.ex
    i32 10, label %bb.ey
    i32 8, label %bb.ez
    i32 9, label %bb.fa
  ]

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, i32 noundef 4) #10
  %i.bf = icmp ugt i64 %i.bb, 4611686018427387903
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.34) #10
  br label %filter_ascii85decode.exitthread-pre-split.i

bb.r:                                             ; preds = %bb.p
  %i.bg = shl nuw i64 %i.bb, 2
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = call ptr @cli_max_malloc(i64 noundef %i.bh) #10 ; 5 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35) #10
  br label %filter_ascii85decode.exitthread-pre-split.i

bb.t:                                             ; preds = %bb.r
  %i.bj = call ptr @cli_memstr(ptr noundef nonnull %i.bc, i64 noundef %i.bb, ptr noundef nonnull @.str.36, i64 noundef 2) #10
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.37) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not112164.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not112164.i.i, label %.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %select.unfold.i.i
  %.080170.i.i = phi i64 [ %.6.i.i, %select.unfold.i.i ], [ 0, %bb.v ] ; 6 uses
  %.087169.i.i = phi i32 [ %.289.i.i, %select.unfold.i.i ], [ 0, %bb.v ] ; 15 uses
  %.090168.i.i = phi i64 [ %i.bl, %select.unfold.i.i ], [ %i.bb, %bb.v ]
  %.092167.i.i = phi ptr [ %i.bm, %select.unfold.i.i ], [ %i.bc, %bb.v ] ; 2 uses
  %.094166.i.i = phi i32 [ %.498.i.i, %select.unfold.i.i ], [ 0, %bb.v ] ; 6 uses
  %.0100165.i.i = phi ptr [ %.5105.i.i, %select.unfold.i.i ], [ %i.bi, %bb.v ] ; 14 uses
  %i.bl = add nsw i64 %.090168.i.i, -1            ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.092167.i.i, i64 1 ; 2 uses
  %i.bn = load i8, ptr %.092167.i.i, align 1, !tbaa !31 ; 2 uses
  %i.bo = zext i8 %i.bn to i32
  %i.bp = icmp eq i8 %i.bn, 126
  %i.bq = icmp ne i64 %i.bl, 0
  %or.cond.i.i = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.br = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bs = icmp eq i8 %i.br, 62
  %spec.select.i.i = select i1 %i.bs, i32 -1, i32 126
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i.i
  %.077.i.i = phi i32 [ %i.bo, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.w ] ; 4 uses
  %i.bt = add nsw i32 %.077.i.i, -33              ; 2 uses
  %or.cond3.i.i = icmp ult i32 %i.bt, 85
  br i1 %or.cond3.i.i, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bu = mul i64 %.080170.i.i, 85
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = add i64 %i.bu, %i.bv                    ; 5 uses
  %i.bx = add nsw i32 %.087169.i.i, 1             ; 2 uses
  %i.by = icmp eq i32 %i.bx, 5
  br i1 %i.by, label %bb.z, label %select.unfold.i.i

bb.z:                                             ; preds = %bb.y
  %i.bz = lshr i64 %i.bw, 24
  %i.ca = trunc i64 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0100165.i.i, i64 1
  store i8 %i.ca, ptr %.0100165.i.i, align 1, !tbaa !31
  %i.cc = lshr i64 %i.bw, 16
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0100165.i.i, i64 2
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !31
  %i.cf = lshr i64 %i.bw, 8
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.0100165.i.i, i64 3
  store i8 %i.cg, ptr %i.ce, align 1, !tbaa !31
  %i.ci = trunc i64 %i.bw to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.0100165.i.i, i64 4
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !31
  %i.ck = add i32 %.094166.i.i, 4
  br label %select.unfold.i.i

bb.aa:                                            ; preds = %bb.x
  switch i32 %.077.i.i, label %bb.af [
    i32 122, label %bb.ab
    i32 -1, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %.not116.i.i = icmp eq i32 %.087169.i.i, 0
  br i1 %.not116.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38) #10
  br label %.thread.thread.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %.0100165.i.i, i64 4
  %i.cm = add i32 %.094166.i.i, 4
  store i32 0, ptr %.0100165.i.i, align 1
  br label %select.unfold.i.i

bb.ae:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.39, i32 noundef %.087169.i.i) #10
  switch i32 %.087169.i.i, label %.preheader.i.i [
    i32 0, label %.thread.i.i
    i32 1, label %select.unfold.thread.i.i
  ]

.preheader.i.i:                                   ; preds = %bb.ae
  %i.cn = icmp slt i32 %.087169.i.i, 5
  br i1 %i.cn, label %.lr.ph173.i.i.preheader, label %._crit_edge.i.i

.lr.ph173.i.i.preheader:                          ; preds = %.preheader.i.i
  %i.co = sub i32 5, %.087169.i.i
  %xtraiter = and i32 %i.co, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph173.i.i.prol.loopexit, label %.lr.ph173.i.i.prol

.lr.ph173.i.i.prol:                               ; preds = %.lr.ph173.i.i.preheader, %.lr.ph173.i.i.prol
  %.0172.i.i.prol = phi i32 [ %i.cq, %.lr.ph173.i.i.prol ], [ %.087169.i.i, %.lr.ph173.i.i.preheader ]
  %.181171.i.i.prol = phi i64 [ %i.cp, %.lr.ph173.i.i.prol ], [ %.080170.i.i, %.lr.ph173.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph173.i.i.prol ], [ 0, %.lr.ph173.i.i.preheader ]
  %i.cp = mul i64 %.181171.i.i.prol, 85           ; 3 uses
  %i.cq = add i32 %.0172.i.i.prol, 1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph173.i.i.prol.loopexit, label %.lr.ph173.i.i.prol, !llvm.loop !32

.lr.ph173.i.i.prol.loopexit:                      ; preds = %.lr.ph173.i.i.prol, %.lr.ph173.i.i.preheader
  %.lcssa678.unr = phi i64 [ poison, %.lr.ph173.i.i.preheader ], [ %i.cp, %.lr.ph173.i.i.prol ]
  %.0172.i.i.unr = phi i32 [ %.087169.i.i, %.lr.ph173.i.i.preheader ], [ %i.cq, %.lr.ph173.i.i.prol ]
  %.181171.i.i.unr = phi i64 [ %.080170.i.i, %.lr.ph173.i.i.preheader ], [ %i.cp, %.lr.ph173.i.i.prol ]
  %i.cr = add i32 %.087169.i.i, 2
  %i.cs = icmp ult i32 %i.cr, 7
  br i1 %i.cs, label %._crit_edge.i.i, label %.lr.ph173.i.i

select.unfold.thread.i.i:                         ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.40) #10
  br label %.thread.thread.i.i

.lr.ph173.i.i:                                    ; preds = %.lr.ph173.i.i.prol.loopexit, %.lr.ph173.i.i
  %.0172.i.i = phi i32 [ %i.cu, %.lr.ph173.i.i ], [ %.0172.i.i.unr, %.lr.ph173.i.i.prol.loopexit ]
  %.181171.i.i = phi i64 [ %i.ct, %.lr.ph173.i.i ], [ %.181171.i.i.unr, %.lr.ph173.i.i.prol.loopexit ]
  %i.ct = mul i64 %.181171.i.i, 2724905250390625  ; 2 uses
  %i.cu = add i32 %.0172.i.i, 8                   ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i32 %i.cu, 5
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i, label %.lr.ph173.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph173.i.i.prol.loopexit, %.lr.ph173.i.i, %.preheader.i.i
  %.181.lcssa.i.i = phi i64 [ %.080170.i.i, %.preheader.i.i ], [ %.lcssa678.unr, %.lr.ph173.i.i.prol.loopexit ], [ %i.ct, %.lr.ph173.i.i ]
  %i.cv = icmp sgt i32 %.087169.i.i, 1            ; 2 uses
  %i.cw = shl i32 %.087169.i.i, 3
  %i.cx = add i32 %i.cw, -16
  %i.cy = lshr i32 16777215, %i.cx
  %narrow.i.i = select i1 %i.cv, i32 %i.cy, i32 0
  %i.cz = zext nneg i32 %narrow.i.i to i64
  %.2.i.i = add i64 %.181.lcssa.i.i, %i.cz        ; 3 uses
  %i.da = add i32 %.087169.i.i, -1                ; 2 uses
  br i1 %i.cv, label %iter.check, label %._crit_edge179.i.i

iter.check:                                       ; preds = %._crit_edge.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.da to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.087169.i.i, 5
  br i1 %min.iters.check, label %.lr.ph178.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check568 = icmp ult i32 %.087169.i.i, 17
  br i1 %min.iters.check568, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.db = and i64 %wide.trip.count.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i, 2147483632 ; 5 uses
  %i.dc = getelementptr i8, ptr %.0100165.i.i, i64 %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.2.i.i, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.0100165.i.i, i64 %index
  %i.dd = shl nuw nsw <16 x i64> %vec.ind, splat (i64 3)
  %i.de = sub nsw <16 x i64> splat (i64 24), %i.dd
  %11 = and <16 x i64> %i.de, splat (i64 4294967288)
  %i.df = lshr <16 x i64> %broadcast.splat, %11
  %i.dg = trunc <16 x i64> %i.df to <16 x i8>
  store <16 x i8> %i.dg, ptr %next.gep, align 1, !tbaa !31
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge179.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.db, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph178.i.i.preheader, label %vec.epilog.ph, !prof !37

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec569 = and i64 %wide.trip.count.i.i, 2147483644 ; 4 uses
  %i.di = getelementptr i8, ptr %.0100165.i.i, i64 %n.vec569
  %broadcast.splatinsert570 = insertelement <4 x i64> poison, i64 %.2.i.i, i64 0
  %broadcast.splat571 = shufflevector <4 x i64> %broadcast.splatinsert570, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert572 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat573 = shufflevector <4 x i64> %broadcast.splatinsert572, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat573, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index574 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next577, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind575 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next578, %vec.epilog.vector.body ] ; 2 uses
  %next.gep576 = getelementptr i8, ptr %.0100165.i.i, i64 %index574
  %12 = shl nuw nsw <4 x i64> %vec.ind575, splat (i64 3)
  %13 = sub nsw <4 x i64> splat (i64 24), %12
  %14 = and <4 x i64> %13, splat (i64 4294967288)
  %15 = lshr <4 x i64> %broadcast.splat571, %14
  %16 = trunc <4 x i64> %15 to <4 x i8>
  store <4 x i8> %16, ptr %next.gep576, align 1, !tbaa !31
  %index.next577 = add nuw i64 %index574, 4       ; 2 uses
  %vec.ind.next578 = add nuw nsw <4 x i64> %vec.ind575, splat (i64 4)
  %i.dj = icmp eq i64 %index.next577, %n.vec569
  br i1 %i.dj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n579 = icmp eq i64 %n.vec569, %wide.trip.count.i.i
  br i1 %cmp.n579, label %._crit_edge179.i.i, label %.lr.ph178.i.i.preheader

.lr.ph178.i.i.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec569, %vec.epilog.middle.block ]
  %.1101175.i.i.ph = phi ptr [ %.0100165.i.i, %iter.check ], [ %i.dc, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.middle.block ]
  br label %.lr.ph178.i.i

.lr.ph178.i.i:                                    ; preds = %.lr.ph178.i.i.preheader, %.lr.ph178.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph178.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph178.i.i.preheader ] ; 2 uses
  %.1101175.i.i = phi ptr [ %i.do, %.lr.ph178.i.i ], [ %.1101175.i.i.ph, %.lr.ph178.i.i.preheader ] ; 2 uses
  %i.dk = shl nuw nsw i64 %indvars.iv.i.i, 3
  %i.dl = sub nsw i64 24, %i.dk
  %17 = and i64 %i.dl, 4294967288
  %i.dm = lshr i64 %.2.i.i, %17
  %i.dn = trunc i64 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %.1101175.i.i, i64 1
  store i8 %i.dn, ptr %.1101175.i.i, align 1, !tbaa !31
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond201.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond201.not.i.i, label %._crit_edge179.i.i, label %.lr.ph178.i.i, !llvm.loop !39

._crit_edge179.i.i:                               ; preds = %.lr.ph178.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  %i.dp = add i32 %.094166.i.i, %i.da
  br label %.thread.i.i

bb.af:                                            ; preds = %bb.aa
  %i.dq = tail call ptr @__ctype_b_loc() #12
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !40
  %i.ds = zext nneg i32 %.077.i.i to i64
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.dr, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !42
  %i.dv = and i16 %i.du, 8192
  %.not113.i.i = icmp eq i16 %i.dv, 0
  br i1 %.not113.i.i, label %bb.ag, label %select.unfold.i.i

bb.ag:                                            ; preds = %bb.af
  %i.dw = load i64, ptr %i.t, align 8, !tbaa !19
  %i.dx = sub i64 %i.dw, %i.bl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41, i32 noundef %.077.i.i, i64 noundef %i.dx) #10
  br label %.thread.thread.i.i

select.unfold.i.i:                                ; preds = %bb.af, %bb.ad, %bb.z, %bb.y
  %.5105.i.i = phi ptr [ %.0100165.i.i, %bb.af ], [ %i.cj, %bb.z ], [ %.0100165.i.i, %bb.y ], [ %i.cl, %bb.ad ]
  %.498.i.i = phi i32 [ %.094166.i.i, %bb.af ], [ %i.ck, %bb.z ], [ %.094166.i.i, %bb.y ], [ %i.cm, %bb.ad ] ; 2 uses
  %.289.i.i = phi i32 [ %.087169.i.i, %bb.af ], [ 0, %bb.z ], [ %i.bx, %bb.y ], [ 0, %bb.ad ]
  %.6.i.i = phi i64 [ %.080170.i.i, %bb.af ], [ 0, %bb.z ], [ %i.bw, %bb.y ], [ %.080170.i.i, %bb.ad ]
  %.not112.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not112.i.i, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %select.unfold.i.i, %._crit_edge179.i.i, %bb.ae, %bb.v
  %.599.i.i = phi i32 [ %i.dp, %._crit_edge179.i.i ], [ %.094166.i.i, %bb.ae ], [ 0, %bb.v ], [ %.498.i.i, %select.unfold.i.i ] ; 2 uses
  %i.dy = load ptr, ptr %i.r, align 8, !tbaa !18
  call void @free(ptr noundef %i.dy) #10
  %i.dz = load i64, ptr %i.t, align 8, !tbaa !19
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.42, i32 noundef %.599.i.i, i64 noundef %i.dz) #10
  store ptr %i.bi, ptr %i.r, align 8, !tbaa !18
  %i.ea = zext i32 %.599.i.i to i64
  store i64 %i.ea, ptr %i.t, align 8, !tbaa !19
  br label %filter_ascii85decode.exit.i

.thread.thread.i.i:                               ; preds = %bb.ag, %select.unfold.thread.i.i, %bb.ac
  %i.eb = load i32, ptr %i.aw, align 4, !tbaa !29
  %i.ec = and i32 %i.eb, 786432
  %.not117.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not117.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread.thread.i.i
  call void @pdfobj_flag(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 8) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread.thread.i.i
  %i.ed = load i64, ptr %i.t, align 8, !tbaa !19  ; 2 uses
  %i.ee = sub i64 %i.ed, %i.bl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.43, i64 noundef %i.ee, i64 noundef %i.ed) #10
  call void @free(ptr noundef %i.bi) #10
  br label %filter_ascii85decode.exitthread-pre-split.i

bb.aj:                                            ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef 7) #10
  %i.ef = trunc i64 %i.bb to i32                  ; 6 uses
  %i.eg = call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #13 ; 3 uses
  %.not.i140.i = icmp eq ptr %i.eg, null
  br i1 %.not.i140.i, label %bb.ak, label %.preheader.i141.i

.preheader.i141.i:                                ; preds = %bb.aj
  %.not80.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not80.i.i, label %.thread.thread130.i.i, label %.lr.ph.i142.i

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.35) #10
  br label %filter_ascii85decode.exitthread-pre-split.i

.lr.ph.i142.i:                                    ; preds = %.preheader.i141.i, %bb.bc
  %.08277.i.i = phi i32 [ %.284.i.i, %bb.bc ], [ 0, %.preheader.i141.i ] ; 3 uses
  %.08676.i.i = phi i32 [ %.490.i.i, %bb.bc ], [ 262144, %.preheader.i141.i ] ; 6 uses
  %.09175.i.i = phi i32 [ %.293.i.i, %bb.bc ], [ 0, %.preheader.i141.i ] ; 6 uses
  %.09574.i.i = phi ptr [ %.499.i.i, %bb.bc ], [ %i.eg, %.preheader.i141.i ] ; 11 uses
  %i.eh = add nuw i32 %.08277.i.i, 1              ; 14 uses
  %i.ei = zext i32 %.08277.i.i to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !31  ; 3 uses
  %i.el = zext i8 %i.ek to i32                    ; 3 uses
  %i.em = icmp sgt i8 %i.ek, -1
  br i1 %i.em, label %bb.al, label %bb.as

bb.al:                                            ; preds = %.lr.ph.i142.i
  %i.en = add nuw nsw i32 %i.el, 1                ; 3 uses
  %i.eo = add i32 %i.en, %i.eh                    ; 3 uses
  %i.ep = icmp ugt i32 %i.eo, %i.ef
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eq = zext i32 %i.eo to i64
  %i.er = sub nuw i32 %i.ef, %i.eh
  %i.es = zext i32 %i.er to i64
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, i64 noundef %i.eq, i64 noundef %i.es) #10
  br label %.thread.thread.thread.i.i

bb.an:                                            ; preds = %bb.al
  %i.et = add i32 %i.en, %.09175.i.i              ; 2 uses
  %i.eu = icmp ugt i32 %i.et, %.08676.i.i
  br i1 %i.eu, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.ev = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.ew = add i32 %.08676.i.i, 262144             ; 2 uses
  %i.ex = zext i32 %i.ew to i64                   ; 2 uses
  %i.ey = call i32 @cli_checklimits(ptr noundef nonnull @.str.2, ptr noundef %i.ev, i64 noundef %i.ex, i64 noundef 0, i64 noundef 0) #10 ; 2 uses
  %.not119.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not119.i.i, label %bb.ap, label %.thread.thread.i146.i

bb.ap:                                            ; preds = %bb.ao
  %i.ez = call ptr @cli_max_realloc(ptr noundef %.09574.i.i, i64 noundef %i.ex) #10 ; 2 uses
  %.not120.i.i = icmp eq ptr %i.ez, null
  br i1 %.not120.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.45) #10
  br label %.thread.thread.thread.i.i

bb.ar:                                            ; preds = %bb.ap, %bb.an
  %.196.i.i = phi ptr [ %.09574.i.i, %bb.an ], [ %i.ez, %bb.ap ] ; 2 uses
  %.187.i.i = phi i32 [ %.08676.i.i, %bb.an ], [ %i.ew, %bb.ap ]
  %i.fa = zext i32 %.09175.i.i to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %.196.i.i, i64 %i.fa
  %i.fc = zext i32 %i.eh to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.fc
  %i.fe = zext nneg i32 %i.en to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fb, ptr noundef nonnull align 1 dereferenceable(1) %i.fd, i64 %i.fe, i1 false)
  br label %bb.bc

bb.as:                                            ; preds = %.lr.ph.i142.i
  %.not116.i143.i = icmp eq i8 %i.ek, -128
  br i1 %.not116.i143.i, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = add i32 %.08277.i.i, 2                  ; 2 uses
  %i.fg = icmp ugt i32 %i.ff, %i.ef
  br i1 %i.fg, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fh = add nuw nsw i32 %i.el, 1
  %i.fi = add i32 %i.fh, %i.eh
  %i.fj = zext i32 %i.fi to i64
  %i.fk = sub nuw i32 %i.ef, %i.eh
  %i.fl = zext i32 %i.fk to i64
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, i64 noundef %i.fj, i64 noundef %i.fl) #10
  br label %.thread.thread.thread.i.i

bb.av:                                            ; preds = %bb.at
  %i.fm = sub nuw nsw i32 257, %i.el              ; 2 uses
  %i.fn = add i32 %i.fm, %.09175.i.i              ; 2 uses
  %i.fo = add i32 %i.fn, 1
  %i.fp = icmp ugt i32 %i.fo, %.08676.i.i
  br i1 %i.fp, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.fq = load ptr, ptr %i.an, align 8, !tbaa !44
  %i.fr = add i32 %.08676.i.i, 262144             ; 3 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = call i32 @cli_checklimits(ptr noundef nonnull @.str.2, ptr noundef %i.fq, i64 noundef %i.fs, i64 noundef 0, i64 noundef 0) #10 ; 2 uses
  %.not117.i145.i = icmp eq i32 %i.ft, 0
  br i1 %.not117.i145.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46, i32 noundef %i.fr) #10
  br label %.thread.thread.i146.i

bb.ay:                                            ; preds = %bb.aw
  %i.fu = call ptr @cli_max_realloc(ptr noundef %.09574.i.i, i64 noundef %i.fs) #10 ; 2 uses
  %.not118.i.i = icmp eq ptr %i.fu, null
  br i1 %.not118.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.45) #10
  br label %.thread.thread.thread.i.i

bb.ba:                                            ; preds = %bb.ay, %bb.av
  %.297.i.i = phi ptr [ %.09574.i.i, %bb.av ], [ %i.fu, %bb.ay ] ; 2 uses
  %.288.i.i = phi i32 [ %.08676.i.i, %bb.av ], [ %i.fr, %bb.ay ]
  %i.fv = zext i32 %.09175.i.i to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %.297.i.i, i64 %i.fv
  %i.fx = zext i32 %i.eh to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !31
  %i.ga = zext nneg i32 %i.fm to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fw, i8 %i.fz, i64 %i.ga, i1 false)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.as
  %i.gb = load i64, ptr %i.t, align 8, !tbaa !19
  %i.gc = zext i32 %i.eh to i64
  %i.gd = sub i64 %i.gb, %i.gc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47, i32 noundef %i.eh, i64 noundef %i.gd) #10
end_hunk_0
begin_hunk_1_@pdf_decodestream:bb.a

bb.fm:                                            ; preds = %bb.fl
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.25) #10
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %i.pa = load i32, ptr %i.ot, align 8, !tbaa !85 ; 2 uses
  %.not139.i = icmp ugt i32 %i.pa, %i.ou
  br i1 %.not139.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.26) #10
  br label %pdf_decodestream_internal.exitthread-pre-split

bb.fp:                                            ; preds = %bb.fn
  %i.pb = sub nuw i32 %i.pa, %i.ou
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27, i32 noundef %i.pb) #10
  br label %pdf_decodestream_internal.exitthread-pre-split

pdf_decodestream_internal.exitthread-pre-split:   ; preds = %bb.fp, %bb.fo, %bb.fj
  %.pr73 = load i32, ptr %7, align 4, !tbaa !8
  br label %pdf_decodestream_internal.exit

pdf_decodestream_internal.exit:                   ; preds = %pdf_decodestream_internal.exitthread-pre-split, %bb.fk
  %i.pc = phi i32 [ %.pr73, %pdf_decodestream_internal.exitthread-pre-split ], [ %i.or, %bb.fk ]
  %i.pd = icmp eq i32 %i.pc, 1
  br i1 %i.pd, label %bb.fu, label %bb.fq

bb.fq:                                            ; preds = %pdf_decodestream_internal.exit
  %.pre = load i32, ptr %i.o, align 4, !tbaa !84
  %i.pe = icmp eq i32 %.pre, 0
  br i1 %i.pe, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %.thread, %bb.fq
  %.1109.i75346 = phi i64 [ 0, %.thread ], [ %.0108.i, %bb.fq ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !44
  %i.ph = call i32 @cli_checklimits(ptr noundef nonnull @.str.2, ptr noundef %i.pg, i64 noundef %i.p, i64 noundef 0, i64 noundef 0) #10
  %.not69 = icmp eq i32 %i.ph, 0
  br i1 %.not69, label %bb.fs, label %bb.fu

bb.fs:                                            ; preds = %bb.fr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #10
  %i.pi = call i64 @cli_writen(i32 noundef %6, ptr noundef %3, i64 noundef %i.p) #10
  %.not70 = icmp eq i64 %i.pi, %i.p
  br i1 %.not70, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4) #10
  br label %bb.fu

bb.fu:                                            ; preds = %pdf_decodestream_internal.exit, %bb.fr, %bb.ft, %bb.fq, %bb.fs
  %.0.ph.ph = phi i64 [ %.0108.i, %pdf_decodestream_internal.exit ], [ %.1109.i75346, %bb.fr ], [ %.1109.i75346, %bb.ft ], [ %.0108.i, %bb.fq ], [ %i.p, %bb.fs ] ; 2 uses
  %.pr347 = load ptr, ptr %i.r, align 8, !tbaa !18 ; 2 uses
  %.not72 = icmp eq ptr %.pr347, null
  br i1 %.not72, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @free(ptr noundef nonnull %.pr347) #10
  br label %bb.fw

bb.fw:                                            ; preds = %.thread348, %bb.fv, %bb.fu
  %.0.ph351 = phi i64 [ 0, %.thread348 ], [ %.0.ph.ph, %bb.fv ], [ %.0.ph.ph, %bb.fu ]
  call void @free(ptr noundef nonnull %i.m) #10
  br label %bb.fx

bb.fx:                                            ; preds = %bb.c, %bb.e, %bb.g, %bb.fw, %bb.a
  %.056 = phi i64 [ 0, %bb.a ], [ %.0.ph351, %bb.fw ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.c ]
  ret i64 %.056
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @pdf_find_and_parse_objs_in_objstm(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @get_enc_method(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare i32 @parse_enc_method(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @decrypt_any(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @cli_max_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @cli_memstr(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare void @pdfobj_flag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare ptr @cli_max_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

declare i32 @cli_hex2str_to(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare i32 @lzwInit(ptr noundef) local_unnamed_addr #2

declare i32 @lzwInflate(ptr noundef) local_unnamed_addr #2

declare i32 @lzwInflateEnd(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !5, i64 16}
!10 = !{!"pdf_obj", !5, i64 0, !11, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !12, i64 288, !11, i64 296, !14, i64 304, !12, i64 312, !15, i64 320}
!11 = !{!"long", !6, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS13objstm_struct", !13, i64 0}
!15 = !{!"_Bool", !6, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"pdf_token", !5, i64 0, !5, i64 4, !11, i64 8, !12, i64 16}
!18 = !{!17, !12, i64 16}
!19 = !{!17, !11, i64 8}
!20 = !{!10, !5, i64 28}
!21 = !{!22, !5, i64 12}
!22 = !{!"pdf_struct", !23, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !12, i64 32, !11, i64 40, !12, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !25, i64 80, !12, i64 88, !5, i64 96, !5, i64 100, !12, i64 104, !5, i64 112, !12, i64 120, !5, i64 128, !26, i64 136, !28, i64 304, !5, i64 312, !5, i64 316}
!23 = !{!"p2 _ZTS7pdf_obj", !24, i64 0}
!24 = !{!"any p2 pointer", !13, i64 0}
!25 = !{!"p1 _ZTS11cli_ctx_tag", !13, i64 0}
!26 = !{!"pdf_stats", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !27, i64 128, !27, i64 136, !27, i64 144, !27, i64 152, !27, i64 160}
!27 = !{!"p1 _ZTS15pdf_stats_entry", !13, i64 0}
!28 = !{!"p2 _ZTS13objstm_struct", !24, i64 0}
!29 = !{!10, !5, i64 20}
!30 = !{!11, !11, i64 0}
!31 = !{!6, !6, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = !{!"branch_weights", i32 4, i32 12}
!38 = distinct !{!38, !35, !36}
!39 = distinct !{!39, !36, !35}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 short", !13, i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"short", !6, i64 0}
!44 = !{!22, !25, i64 80}
!45 = !{!46, !12, i64 0}
!46 = !{!"z_stream_s", !12, i64 0, !5, i64 8, !11, i64 16, !12, i64 24, !5, i64 32, !11, i64 40, !12, i64 48, !47, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !5, i64 88, !11, i64 96, !11, i64 104}
!47 = !{!"p1 _ZTS14internal_state", !13, i64 0}
!48 = !{!46, !5, i64 8}
!49 = !{!46, !12, i64 24}
!50 = !{!46, !5, i64 32}
!51 = !{!46, !12, i64 48}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS13pdf_dict_node", !13, i64 0}
!54 = !{!55, !5, i64 24}
!55 = !{!"pdf_dict_node", !12, i64 0, !13, i64 8, !11, i64 16, !5, i64 24, !53, i64 32, !53, i64 40}
!56 = !{!55, !12, i64 0}
!57 = !{!55, !13, i64 8}
!58 = !{!22, !12, i64 32}
!59 = !{!22, !11, i64 40}
!60 = !{!61, !68, i64 104}
!61 = !{!"cli_ctx_tag", !12, i64 0, !12, i64 8, !62, i64 16, !63, i64 24, !64, i64 32, !11, i64 40, !65, i64 48, !5, i64 56, !5, i64 60, !66, i64 64, !5, i64 72, !5, i64 76, !13, i64 80, !67, i64 88, !11, i64 96, !68, i64 104, !69, i64 112, !13, i64 120, !70, i64 128, !71, i64 136, !71, i64 144, !72, i64 152, !15, i64 168, !15, i64 169}
!62 = !{!"p1 long", !13, i64 0}
!63 = !{!"p1 _ZTS11cli_matcher", !13, i64 0}
!64 = !{!"p1 _ZTS9cl_engine", !13, i64 0}
!65 = !{!"p1 _ZTS15cl_scan_options", !13, i64 0}
!66 = !{!"p1 _ZTS14cli_scan_layer", !13, i64 0}
!67 = !{!"p1 _ZTS7cl_fmap", !13, i64 0}
!68 = !{!"p1 _ZTS9cli_dconf", !13, i64 0}
!69 = !{!"p1 _ZTS10bitset_tag", !13, i64 0}
!70 = !{!"p1 _ZTS10cli_events", !13, i64 0}
!71 = !{!"p1 _ZTS11json_object", !13, i64 0}
!72 = !{!"timeval", !11, i64 0, !11, i64 8}
!73 = !{!74, !5, i64 24}
!74 = !{!"cli_dconf", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!75 = !{!12, !12, i64 0}
!76 = !{!77, !12, i64 0}
!77 = !{!"lzw_stream_s", !12, i64 0, !5, i64 8, !5, i64 12, !12, i64 16, !5, i64 24, !5, i64 28, !12, i64 32, !5, i64 40, !78, i64 48}
!78 = !{!"p1 _ZTS18lzw_internal_state", !13, i64 0}
!79 = !{!77, !5, i64 8}
!80 = !{!77, !12, i64 16}
!81 = !{!77, !5, i64 24}
!82 = !{!77, !5, i64 40}
!83 = !{!77, !12, i64 32}
!84 = !{!17, !5, i64 4}
!85 = !{!22, !5, i64 8}
!86 = !{!87, !12, i64 48}
!87 = !{!"objstm_struct", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !11, i64 56}
!88 = !{!87, !11, i64 56}
end_hunk_1
