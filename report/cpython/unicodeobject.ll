inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_PyUnicode_XStrip:bb.a

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.b, 64
  %.not.i.i = icmp eq i32 %i.f, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 56
  %.val4.i = load ptr, ptr %i.g, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 6 uses
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val50 = load i64, ptr %i.h, align 8, !tbaa !207 ; 5 uses
  %i.i = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.i, align 8, !tbaa !207 ; 12 uses
  %i.j = getelementptr i8, ptr %2, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = lshr i32 %i.k, 2
  %i.m = and i32 %i.l, 7                          ; 3 uses
  %i.n = and i32 %i.k, 32
  %.not.i52 = icmp eq i32 %i.n, 0                 ; 3 uses
  br i1 %.not.i52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_PyUnicode_DATA.exit
  %i.o = and i32 %i.k, 64
  %.not.i.i53 = icmp eq i32 %i.o, 0
  %.0.v.i.i54 = select i1 %.not.i.i53, i64 56, i64 40
  %.0.i.i55 = getelementptr i8, ptr %2, i64 %.0.v.i.i54
  br label %_PyUnicode_DATA.exit58

bb.e:                                             ; preds = %_PyUnicode_DATA.exit
  %i.p = getelementptr i8, ptr %2, i64 56
  %.val4.i57 = load ptr, ptr %i.p, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit58

_PyUnicode_DATA.exit58:                           ; preds = %bb.d, %bb.e
  %.0.i56 = phi ptr [ %.0.i.i55, %bb.d ], [ %.val4.i57, %bb.e ] ; 8 uses
  switch i32 %i.m, label %bb.i [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 4, label %bb.h
  ]

bb.f:                                             ; preds = %_PyUnicode_DATA.exit58
  %.not3243.i = icmp eq i64 %.val, 0
  br i1 %.not3243.i, label %make_bloom_mask.exit, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %bb.f
  %xtraiter242 = and i64 %.val, 3                 ; 3 uses
  %i.q = icmp ult i64 %.val, 4
  br i1 %i.q, label %.lr.ph46.i.epil.preheader, label %.lr.ph46.i.preheader.new

.lr.ph46.i.preheader.new:                         ; preds = %.lr.ph46.i.preheader
  %unroll_iter247 = and i64 %.val, -4
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i, %.lr.ph46.i.preheader.new
  %.02945.i = phi ptr [ %.0.i56, %.lr.ph46.i.preheader.new ], [ %i.ao, %.lr.ph46.i ] ; 5 uses
  %.03044.i = phi i64 [ 0, %.lr.ph46.i.preheader.new ], [ %i.an, %.lr.ph46.i ]
  %niter248 = phi i64 [ 0, %.lr.ph46.i.preheader.new ], [ %niter248.next.3, %.lr.ph46.i ]
  %i.r = load i8, ptr %.02945.i, align 1, !tbaa !205
  %i.s = and i8 %i.r, 63
  %i.t = zext nneg i8 %i.s to i64
  %i.u = shl nuw i64 1, %i.t
  %i.v = or i64 %i.u, %.03044.i
  %i.w = getelementptr i8, ptr %.02945.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !205
  %i.y = and i8 %i.x, 63
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = shl nuw i64 1, %i.z
  %i.ab = or i64 %i.aa, %i.v
  %i.ac = getelementptr i8, ptr %.02945.i, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !205
  %i.ae = and i8 %i.ad, 63
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = shl nuw i64 1, %i.af
  %i.ah = or i64 %i.ag, %i.ab
  %i.ai = getelementptr i8, ptr %.02945.i, i64 3
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = or i64 %i.am, %i.ah                     ; 3 uses
  %i.ao = getelementptr i8, ptr %.02945.i, i64 4  ; 2 uses
  %niter248.next.3 = add nuw i64 %niter248, 4     ; 2 uses
  %niter248.ncmp.3 = icmp eq i64 %niter248.next.3, %unroll_iter247
  br i1 %niter248.ncmp.3, label %make_bloom_mask.exit.loopexit.unr-lcssa, label %.lr.ph46.i, !llvm.loop !598

bb.g:                                             ; preds = %_PyUnicode_DATA.exit58
  %.idx48.i = shl i64 %.val, 1                    ; 3 uses
  %i.ap = getelementptr i8, ptr %.0.i56, i64 %.idx48.i
  %.not3138.i = icmp eq i64 %.idx48.i, 0
  br i1 %.not3138.i, label %make_bloom_mask.exit, label %.lr.ph41.i.preheader

.lr.ph41.i.preheader:                             ; preds = %bb.g
  %i.aq = add i64 %.idx48.i, -2                   ; 2 uses
  %i.ar = lshr exact i64 %i.aq, 1
  %i.as = add nuw i64 %i.ar, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 6
  br i1 %min.iters.check, label %.lr.ph41.i.preheader233, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.i.preheader
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.at = shl i64 %n.vec, 1
  %i.au = getelementptr i8, ptr %.0.i56, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi217 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %i.av = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.0.i56, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <2 x i16>, ptr %next.gep, align 2, !tbaa !208
  %wide.load218 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !208
  %i.ax = and <2 x i16> %wide.load, splat (i16 63)
  %i.ay = and <2 x i16> %wide.load218, splat (i16 63)
  %i.az = zext nneg <2 x i16> %i.ax to <2 x i64>
  %i.ba = zext nneg <2 x i16> %i.ay to <2 x i64>
  %i.bb = shl nuw <2 x i64> splat (i64 1), %i.az
  %i.bc = shl nuw <2 x i64> splat (i64 1), %i.ba
  %i.bd = or <2 x i64> %i.bb, %vec.phi            ; 2 uses
  %i.be = or <2 x i64> %i.bc, %vec.phi217         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !599

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.be, %i.bd
  %i.bg = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %make_bloom_mask.exit, label %.lr.ph41.i.preheader233

.lr.ph41.i.preheader233:                          ; preds = %.lr.ph41.i.preheader, %middle.block
  %.02840.i.ph = phi ptr [ %.0.i56, %.lr.ph41.i.preheader ], [ %i.au, %middle.block ]
  %.139.i.ph = phi i64 [ 0, %.lr.ph41.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %.lr.ph41.i.preheader233, %.lr.ph41.i
  %.02840.i = phi ptr [ %i.bm, %.lr.ph41.i ], [ %.02840.i.ph, %.lr.ph41.i.preheader233 ] ; 2 uses
  %.139.i = phi i64 [ %i.bl, %.lr.ph41.i ], [ %.139.i.ph, %.lr.ph41.i.preheader233 ]
  %i.bh = load i16, ptr %.02840.i, align 2, !tbaa !208
  %i.bi = and i16 %i.bh, 63
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = shl nuw i64 1, %i.bj
  %i.bl = or i64 %i.bk, %.139.i                   ; 2 uses
  %i.bm = getelementptr i8, ptr %.02840.i, i64 2  ; 2 uses
  %.not31.i = icmp eq ptr %i.bm, %i.ap
  br i1 %.not31.i, label %make_bloom_mask.exit, label %.lr.ph41.i, !llvm.loop !600

bb.h:                                             ; preds = %_PyUnicode_DATA.exit58
  %.idx.i = shl i64 %.val, 2                      ; 2 uses
  %.not35.i = icmp eq i64 %.idx.i, 0
  br i1 %.not35.i, label %make_bloom_mask.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.bn = add i64 %.idx.i, -4                     ; 2 uses
  %i.bo = lshr exact i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %i.bq = icmp ult i64 %i.bn, 12
  br i1 %i.bq, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.bp, 9223372036854775804
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.037.i = phi ptr [ %.0.i56, %.lr.ph.i.preheader.new ], [ %i.co, %.lr.ph.i ] ; 5 uses
  %.236.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cn, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.br = load i32, ptr %.037.i, align 4, !tbaa !7
  %i.bs = and i32 %i.br, 63
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = or i64 %i.bu, %.236.i
  %i.bw = getelementptr i8, ptr %.037.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = and i32 %i.bx, 63
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = or i64 %i.ca, %i.bv
  %i.cc = getelementptr i8, ptr %.037.i, i64 8
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = and i32 %i.cd, 63
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = or i64 %i.cg, %i.cb
  %i.ci = getelementptr i8, ptr %.037.i, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = and i32 %i.cj, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = shl nuw i64 1, %i.cl
  %i.cn = or i64 %i.cm, %i.ch                     ; 3 uses
  %i.co = getelementptr i8, ptr %.037.i, i64 16   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %make_bloom_mask.exit.loopexit238.unr-lcssa, label %.lr.ph.i, !llvm.loop !601

bb.i:                                             ; preds = %_PyUnicode_DATA.exit58
  unreachable

make_bloom_mask.exit.loopexit.unr-lcssa:          ; preds = %.lr.ph46.i
  %lcmp.mod244.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod244.not, label %make_bloom_mask.exit, label %.lr.ph46.i.epil.preheader

.lr.ph46.i.epil.preheader:                        ; preds = %make_bloom_mask.exit.loopexit.unr-lcssa, %.lr.ph46.i.preheader
  %.02945.i.epil.init = phi ptr [ %.0.i56, %.lr.ph46.i.preheader ], [ %i.ao, %make_bloom_mask.exit.loopexit.unr-lcssa ]
  %.03044.i.epil.init = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %i.an, %make_bloom_mask.exit.loopexit.unr-lcssa ]
  %lcmp.mod246 = icmp ne i64 %xtraiter242, 0
  tail call void @llvm.assume(i1 %lcmp.mod246)
  br label %.lr.ph46.i.epil

.lr.ph46.i.epil:                                  ; preds = %.lr.ph46.i.epil, %.lr.ph46.i.epil.preheader
  %.02945.i.epil = phi ptr [ %i.cu, %.lr.ph46.i.epil ], [ %.02945.i.epil.init, %.lr.ph46.i.epil.preheader ] ; 2 uses
  %.03044.i.epil = phi i64 [ %i.ct, %.lr.ph46.i.epil ], [ %.03044.i.epil.init, %.lr.ph46.i.epil.preheader ]
  %epil.iter243 = phi i64 [ %epil.iter243.next, %.lr.ph46.i.epil ], [ 0, %.lr.ph46.i.epil.preheader ]
  %i.cp = load i8, ptr %.02945.i.epil, align 1, !tbaa !205
  %i.cq = and i8 %i.cp, 63
  %i.cr = zext nneg i8 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = or i64 %i.cs, %.03044.i.epil            ; 2 uses
  %i.cu = getelementptr i8, ptr %.02945.i.epil, i64 1
  %epil.iter243.next = add i64 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i64 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %make_bloom_mask.exit, label %.lr.ph46.i.epil, !llvm.loop !602

make_bloom_mask.exit.loopexit238.unr-lcssa:       ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %make_bloom_mask.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %make_bloom_mask.exit.loopexit238.unr-lcssa, %.lr.ph.i.preheader
  %.037.i.epil.init = phi ptr [ %.0.i56, %.lr.ph.i.preheader ], [ %i.co, %make_bloom_mask.exit.loopexit238.unr-lcssa ]
  %.236.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cn, %make_bloom_mask.exit.loopexit238.unr-lcssa ]
  %lcmp.mod241 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod241)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.037.i.epil = phi ptr [ %i.da, %.lr.ph.i.epil ], [ %.037.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.236.i.epil = phi i64 [ %i.cz, %.lr.ph.i.epil ], [ %.236.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cv = load i32, ptr %.037.i.epil, align 4, !tbaa !7
  %i.cw = and i32 %i.cv, 63
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = or i64 %i.cy, %.236.i.epil              ; 2 uses
  %i.da = getelementptr i8, ptr %.037.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %make_bloom_mask.exit, label %.lr.ph.i.epil, !llvm.loop !603

make_bloom_mask.exit:                             ; preds = %make_bloom_mask.exit.loopexit238.unr-lcssa, %.lr.ph.i.epil, %.lr.ph41.i, %make_bloom_mask.exit.loopexit.unr-lcssa, %.lr.ph46.i.epil, %middle.block, %bb.f, %bb.g, %bb.h
  %.3.i = phi i64 [ %i.bl, %.lr.ph41.i ], [ %i.ct, %.lr.ph46.i.epil ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ], [ %i.bg, %middle.block ], [ %i.an, %make_bloom_mask.exit.loopexit.unr-lcssa ], [ %i.cn, %make_bloom_mask.exit.loopexit238.unr-lcssa ], [ %i.cz, %.lr.ph.i.epil ] ; 2 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %make_bloom_mask.exit..thread98_crit_edge, label %.preheader

make_bloom_mask.exit..thread98_crit_edge:         ; preds = %make_bloom_mask.exit
  %.pre = shl i64 %.val, 1
  %.pre153 = tail call i64 @llvm.smax.i64(i64 %.pre, i64 0)
  %.pre154 = and i32 %i.k, 64
  br label %.thread98

.preheader:                                       ; preds = %make_bloom_mask.exit
  %i.db = icmp slt i64 %.val, 0
  %i.dc = shl i64 %.val, 1
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %i.dc, i64 0) ; 2 uses
  %.027.i = select i1 %i.db, i64 %spec.store.select.i, i64 %.val
  %.027.i.fr = freeze i64 %.027.i                 ; 7 uses
  %i.dd = icmp eq i64 %.027.i.fr, 0
  %i.de = and i32 %i.k, 64                        ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.de, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i.i
  %i.df = getelementptr i8, ptr %2, i64 56
  %i.dg = icmp samesign ugt i64 %.027.i.fr, 15    ; 2 uses
  br i1 %i.dd, label %.thread, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %smax = tail call i64 @llvm.smax.i64(i64 %.val50, i64 0) ; 3 uses
  %exitcond.not204 = icmp slt i64 %.val50, 1
  br i1 %exitcond.not204, label %.thread, label %.lr.ph

.preheader.split:                                 ; preds = %PyUnicode_FindChar.exit
  %i.dh = add nuw i64 %.040205, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %smax
  br i1 %exitcond.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split.preheader, %.preheader.split
  %.040205 = phi i64 [ %i.dh, %.preheader.split ], [ 0, %.preheader.split.preheader ] ; 14 uses
  switch i32 %i.d, label %bb.l [
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.di = getelementptr i8, ptr %.0.i, i64 %.040205
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !205
  %i.dk = zext i8 %i.dj to i32
  br label %PyUnicode_READ.exit

bb.k:                                             ; preds = %.lr.ph
  %i.dl = getelementptr [2 x i8], ptr %.0.i, i64 %.040205
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !208
  %i.dn = zext i16 %i.dm to i32
  br label %PyUnicode_READ.exit

bb.l:                                             ; preds = %.lr.ph
  %i.do = getelementptr [4 x i8], ptr %.0.i, i64 %.040205
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.j, %bb.k, %bb.l
  %.0.i60 = phi i32 [ %i.dk, %bb.j ], [ %i.dn, %bb.k ], [ %i.dp, %bb.l ] ; 8 uses
  %i.dq = and i32 %.0.i60, 63
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = shl nuw i64 1, %i.dr
  %i.dt = and i64 %i.ds, %.3.i
  %.not43 = icmp eq i64 %i.dt, 0
  br i1 %.not43, label %.thread, label %bb.m

bb.m:                                             ; preds = %PyUnicode_READ.exit
  br i1 %.not.i52, label %bb.n, label %_PyUnicode_DATA.exit.i

bb.n:                                             ; preds = %bb.m
  %.val4.i.i = load ptr, ptr %i.df, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.m, %bb.n
  %.0.i.i63 = phi ptr [ %.val4.i.i, %bb.n ], [ %.0.i.i.i, %bb.m ] ; 13 uses
  switch i32 %i.m, label %bb.ab [
    i32 1, label %bb.o
    i32 2, label %bb.u
    i32 4, label %bb.w
  ]

bb.o:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.du = trunc i32 %.0.i60 to i8
  %.not26.i = icmp ult i32 %.0.i60, 256
  br i1 %.not26.i, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.dv = getelementptr i8, ptr %.0.i.i63, i64 %.027.i.fr ; 2 uses
  br i1 %i.dg, label %bb.q, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.p
  %i.dw = icmp ult ptr %.0.i.i63, %i.dv
  br i1 %i.dw, label %.lr.ph.i.i, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.dx = tail call ptr @memchr(ptr noundef %.0.i.i63, i32 noundef %.0.i60, i64 noundef %.027.i.fr) #34 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i82, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %.0.i.i63 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  br label %PyUnicode_FindChar.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.t
  %.021.i.i = phi ptr [ %i.eg, %bb.t ], [ %.0.i.i63, %.preheader.i.i ] ; 3 uses
  %i.eb = load i8, ptr %.021.i.i, align 1, !tbaa !205
  %i.ec = icmp eq i8 %i.eb, %i.du
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ed = ptrtoint ptr %.021.i.i to i64
  %i.ee = ptrtoint ptr %.0.i.i63 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  br label %PyUnicode_FindChar.exit

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.eg = getelementptr i8, ptr %.021.i.i, i64 1  ; 2 uses
  %exitcond.not.i.i = icmp eq ptr %i.eg, %i.dv
  br i1 %exitcond.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !483

bb.u:                                             ; preds = %_PyUnicode_DATA.exit.i
  %.not.i81 = icmp ult i32 %.0.i60, 65536
  br i1 %.not.i81, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.eh = trunc nuw i32 %.0.i60 to i16
  %i.ei = tail call fastcc i64 @ucs2lib_find_char(ptr noundef %.0.i.i63, i64 noundef %.027.i.fr, i16 noundef zeroext %i.eh)
  br label %PyUnicode_FindChar.exit

bb.w:                                             ; preds = %_PyUnicode_DATA.exit.i
  %i.ej = getelementptr [4 x i8], ptr %.0.i.i63, i64 %.027.i.fr ; 2 uses
  br i1 %i.dg, label %bb.x, label %.preheader.i30.i

.preheader.i30.i:                                 ; preds = %bb.w
  %i.ek = icmp ult ptr %.0.i.i63, %i.ej
  br i1 %i.ek, label %.lr.ph.i32.i, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.el = tail call ptr @wmemchr(ptr noundef %.0.i.i63, i32 noundef %.0.i60, i64 noundef %.027.i.fr) #34 ; 2 uses
end_hunk_0
begin_hunk_1_@rsplit:bb.a
bb.pd:                                            ; preds = %bb.pc
  %.val81.i491 = load ptr, ptr %i.aoa, align 8, !tbaa !540
  %i.aoj = getelementptr [8 x i8], ptr %.val81.i491, i64 %.0103.i477
  store ptr %i.aog, ptr %i.aoj, align 8, !tbaa !194
  br label %Py_DECREF.exit72.i484

bb.pe:                                            ; preds = %bb.pc
  %i.aok = tail call i32 @PyList_Append(ptr noundef nonnull %i.anx, ptr noundef nonnull %i.aog) #33, !inline_history !713
  %.not.i479 = icmp eq i32 %i.aok, 0
  %i.aol = load i32, ptr %i.aog, align 8, !tbaa !205 ; 3 uses
  %.not.i71.i483 = icmp sgt i32 %i.aol, -1        ; 2 uses
  br i1 %.not.i479, label %bb.ph, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  br i1 %.not.i71.i483, label %bb.pg, label %Py_DECREF.exit74.i472

bb.pg:                                            ; preds = %bb.pf
  %i.aom = add nsw i32 %i.aol, -1                 ; 2 uses
  store i32 %i.aom, ptr %i.aog, align 8, !tbaa !205
  %i.aon = icmp eq i32 %i.aom, 0
  br i1 %i.aon, label %Py_DECREF.exit74.sink.split.i481, label %Py_DECREF.exit74.i472

bb.ph:                                            ; preds = %bb.pe
  br i1 %.not.i71.i483, label %bb.pi, label %Py_DECREF.exit72.i484

bb.pi:                                            ; preds = %bb.ph
  %i.aoo = add nsw i32 %i.aol, -1                 ; 2 uses
  store i32 %i.aoo, ptr %i.aog, align 8, !tbaa !205
  %i.aop = icmp eq i32 %i.aoo, 0
  br i1 %i.aop, label %bb.pj, label %Py_DECREF.exit72.i484

bb.pj:                                            ; preds = %bb.pi
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aog) #33, !inline_history !713
  br label %Py_DECREF.exit72.i484

Py_DECREF.exit72.i484:                            ; preds = %bb.pj, %bb.pi, %bb.ph, %bb.pd
  %i.aoq = add nuw nsw i64 %.0103.i477, 1         ; 2 uses
  %exitcond118.not.i485 = icmp eq i64 %i.aoq, %.1
  br i1 %exitcond118.not.i485, label %._crit_edge.thread151.i486, label %bb.pa, !llvm.loop !717

._crit_edge.i492:                                 ; preds = %bb.pa
  %i.aor = icmp eq i64 %.0103.i477, 0
  br i1 %i.aor, label %._crit_edge.thread.i461, label %._crit_edge.thread151.i486

._crit_edge.thread.i461:                          ; preds = %._crit_edge.i492, %.preheader.i460
  %.057.lcssa147.i462 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %.val100, %.preheader.i460 ]
  %i.aos = getelementptr i8, ptr %0, i64 8
  %.val.i463 = load ptr, ptr %i.aos, align 8, !tbaa !197
  %.not84.i464 = icmp eq ptr %.val.i463, @PyUnicode_Type
  br i1 %.not84.i464, label %bb.pk, label %.thread.i465

bb.pk:                                            ; preds = %._crit_edge.thread.i461
  %i.aot = load i32, ptr %0, align 8, !tbaa !205  ; 2 uses
  %i.aou = icmp ugt i32 %i.aot, -1073741825
  br i1 %i.aou, label %Py_INCREF.exit.i474, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.aov = add nuw i32 %i.aot, 1
  store i32 %i.aov, ptr %0, align 8, !tbaa !205
  br label %Py_INCREF.exit.i474

Py_INCREF.exit.i474:                              ; preds = %bb.pl, %bb.pk
  %i.aow = getelementptr i8, ptr %i.anx, i64 24
  %.val80.i475 = load ptr, ptr %i.aow, align 8, !tbaa !540
  store ptr %0, ptr %.val80.i475, align 8, !tbaa !194
  br label %bb.pt

._crit_edge.thread151.i486:                       ; preds = %Py_DECREF.exit72.i484, %._crit_edge.i492
  %.0.lcssa155.i487 = phi i64 [ %.0103.i477, %._crit_edge.i492 ], [ %.1, %Py_DECREF.exit72.i484 ] ; 5 uses
  %.057.lcssa154.i488 = phi i64 [ %.057102.i478, %._crit_edge.i492 ], [ %i.aob, %Py_DECREF.exit72.i484 ]
  %i.aox = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa154.i488), !inline_history !713 ; 8 uses
  %i.aoy = icmp eq ptr %i.aox, null
  br i1 %i.aoy, label %Py_DECREF.exit74.i472, label %bb.pm

.thread.i465:                                     ; preds = %._crit_edge.thread.i461
  %i.aoz = tail call fastcc ptr @_PyUnicode_FromUCS4(ptr noundef %.0.i271, i64 noundef %.057.lcssa147.i462), !inline_history !713 ; 2 uses
  %i.apa = icmp eq ptr %i.aoz, null
  br i1 %i.apa, label %Py_DECREF.exit74.i472, label %.thread83.i466

bb.pm:                                            ; preds = %._crit_edge.thread151.i486
  %i.apb = icmp slt i64 %.0.lcssa155.i487, 12
  br i1 %i.apb, label %.thread83.i466, label %bb.pn

.thread83.i466:                                   ; preds = %bb.pm, %.thread.i465
  %.0.lcssa148.i467 = phi i64 [ %.0.lcssa155.i487, %bb.pm ], [ 0, %.thread.i465 ] ; 2 uses
  %i.apc = phi ptr [ %i.aox, %bb.pm ], [ %i.aoz, %.thread.i465 ]
  %i.apd = getelementptr i8, ptr %i.anx, i64 24
  %.val79.i468 = load ptr, ptr %i.apd, align 8, !tbaa !540
  %i.ape = getelementptr [8 x i8], ptr %.val79.i468, i64 %.0.lcssa148.i467
  store ptr %i.apc, ptr %i.ape, align 8, !tbaa !194
  br label %Py_DECREF.exit68.i469

bb.pn:                                            ; preds = %bb.pm
  %i.apf = tail call i32 @PyList_Append(ptr noundef nonnull %i.anx, ptr noundef nonnull %i.aox) #33, !inline_history !713
  %.not66.i489 = icmp eq i32 %i.apf, 0
  %i.apg = load i32, ptr %i.aox, align 8, !tbaa !205 ; 3 uses
  %.not.i67.i490 = icmp sgt i32 %i.apg, -1        ; 2 uses
  br i1 %.not66.i489, label %bb.pq, label %bb.po

bb.po:                                            ; preds = %bb.pn
  br i1 %.not.i67.i490, label %bb.pp, label %Py_DECREF.exit74.i472

bb.pp:                                            ; preds = %bb.po
  %i.aph = add nsw i32 %i.apg, -1                 ; 2 uses
  store i32 %i.aph, ptr %i.aox, align 8, !tbaa !205
  %i.api = icmp eq i32 %i.aph, 0
  br i1 %i.api, label %Py_DECREF.exit74.sink.split.i481, label %Py_DECREF.exit74.i472

bb.pq:                                            ; preds = %bb.pn
  br i1 %.not.i67.i490, label %bb.pr, label %Py_DECREF.exit68.i469

bb.pr:                                            ; preds = %bb.pq
  %i.apj = add nsw i32 %i.apg, -1                 ; 2 uses
  store i32 %i.apj, ptr %i.aox, align 8, !tbaa !205
  %i.apk = icmp eq i32 %i.apj, 0
  br i1 %i.apk, label %bb.ps, label %Py_DECREF.exit68.i469

bb.ps:                                            ; preds = %bb.pr
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aox) #33, !inline_history !713
  br label %Py_DECREF.exit68.i469

Py_DECREF.exit68.i469:                            ; preds = %bb.ps, %bb.pr, %bb.pq, %.thread83.i466
  %.0.lcssa150.i470 = phi i64 [ %.0.lcssa155.i487, %bb.ps ], [ %.0.lcssa155.i487, %bb.pr ], [ %.0.lcssa155.i487, %bb.pq ], [ %.0.lcssa148.i467, %.thread83.i466 ]
  %i.apl = add i64 %.0.lcssa150.i470, 1
  br label %bb.pt

bb.pt:                                            ; preds = %Py_DECREF.exit68.i469, %Py_INCREF.exit.i474
  %.1.i471 = phi i64 [ 1, %Py_INCREF.exit.i474 ], [ %i.apl, %Py_DECREF.exit68.i469 ]
  %i.apm = getelementptr i8, ptr %i.anx, i64 16
  store i64 %.1.i471, ptr %i.apm, align 8, !tbaa !380
  %i.apn = tail call i32 @PyList_Reverse(ptr noundef nonnull %i.anx) #33, !inline_history !713
  %i.apo = icmp slt i32 %i.apn, 0
  br i1 %i.apo, label %Py_DECREF.exit74.i472, label %asciilib_rsplit.exit

Py_DECREF.exit74.sink.split.i481:                 ; preds = %bb.pp, %bb.pg
  %.sink.i482 = phi ptr [ %i.aog, %bb.pg ], [ %i.aox, %bb.pp ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i482) #33, !inline_history !713
  br label %Py_DECREF.exit74.i472

Py_DECREF.exit74.i472:                            ; preds = %bb.pb, %Py_DECREF.exit74.sink.split.i481, %bb.pt, %bb.pp, %bb.po, %.thread.i465, %._crit_edge.thread151.i486, %bb.pg, %bb.pf
  %i.app = load i32, ptr %i.anx, align 8, !tbaa !205 ; 2 uses
  %.not.i.i473 = icmp sgt i32 %i.app, -1
  br i1 %.not.i.i473, label %bb.pu, label %asciilib_rsplit.exit

bb.pu:                                            ; preds = %Py_DECREF.exit74.i472
  %i.apq = add nsw i32 %i.app, -1                 ; 2 uses
  store i32 %i.apq, ptr %i.anx, align 8, !tbaa !205
  %i.apr = icmp eq i32 %i.apq, 0
  br i1 %i.apr, label %bb.pv, label %asciilib_rsplit.exit

bb.pv:                                            ; preds = %bb.pu
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.anx) #33, !inline_history !713
  br label %asciilib_rsplit.exit

asciilib_rsplit.exit:                             ; preds = %bb.pv, %bb.pu, %Py_DECREF.exit74.i472, %bb.pt, %bb.oz, %bb.oy, %bb.ox, %Py_DECREF.exit69.i.i436, %bb.ow, %bb.ny, %bb.nx, %bb.nv, %bb.nu, %Py_DECREF.exit74.i412, %bb.nt, %bb.mz, %bb.my, %bb.mx, %Py_DECREF.exit69.i.i388, %bb.mw, %bb.ly, %bb.lx, %bb.lv, %bb.lu, %Py_DECREF.exit74.i338, %bb.lt, %bb.kf, %bb.ke, %bb.kd, %Py_DECREF.exit69.i.i302, %bb.kc, %bb.iq, %bb.ip, %bb.in, %bb.im, %Py_DECREF.exit74.i, %bb.il, %bb.hd, %bb.hc, %bb.hb, %Py_DECREF.exit69.i.i, %bb.ha, %bb.fu, %bb.ft, %bb.fp
  %.0 = phi ptr [ null, %bb.nv ], [ null, %bb.fp ], [ null, %bb.in ], [ null, %bb.lv ], [ null, %bb.ft ], [ %i.sv, %bb.il ], [ null, %bb.hd ], [ null, %bb.hc ], [ null, %bb.fu ], [ %i.ps, %bb.ha ], [ null, %Py_DECREF.exit69.i.i ], [ null, %bb.hb ], [ null, %Py_DECREF.exit74.i ], [ null, %bb.im ], [ null, %bb.ip ], [ %i.abv, %bb.lt ], [ null, %bb.kf ], [ null, %bb.ke ], [ null, %bb.iq ], [ %i.ya, %bb.kc ], [ null, %Py_DECREF.exit69.i.i302 ], [ null, %bb.kd ], [ null, %Py_DECREF.exit74.i338 ], [ null, %bb.lu ], [ null, %bb.lx ], [ %i.ajv, %bb.nt ], [ null, %bb.mz ], [ null, %bb.my ], [ null, %bb.ly ], [ %i.ahs, %bb.mw ], [ null, %Py_DECREF.exit69.i.i388 ], [ null, %bb.mx ], [ null, %Py_DECREF.exit74.i412 ], [ null, %bb.nu ], [ null, %bb.nx ], [ %i.anx, %bb.pt ], [ null, %bb.oz ], [ null, %bb.oy ], [ null, %bb.ny ], [ %i.alu, %bb.ow ], [ null, %Py_DECREF.exit69.i.i436 ], [ null, %bb.ox ], [ null, %Py_DECREF.exit74.i472 ], [ null, %bb.pu ], [ null, %bb.pv ] ; 2 uses
  br i1 %.not, label %asciilib_rsplit_whitespace.exit, label %bb.pw

bb.pw:                                            ; preds = %asciilib_rsplit.exit
  tail call void @PyMem_Free(ptr noundef %.080) #33
  br label %asciilib_rsplit_whitespace.exit

asciilib_rsplit_whitespace.exit:                  ; preds = %bb.fb, %bb.fa, %Py_DECREF.exit87.i221, %.critedge79.i218, %_PyUnicode_DATA.exit214, %bb.du, %bb.dt, %Py_DECREF.exit87.i175, %.critedge79.i172, %_PyUnicode_DATA.exit168, %bb.cn, %bb.cm, %Py_DECREF.exit87.i120, %.critedge79.i117, %_PyUnicode_DATA.exit113, %bb.at, %bb.as, %Py_DECREF.exit87.i, %.critedge79.i, %_PyUnicode_DATA.exit, %asciilib_rsplit.exit, %bb.pw, %bb.fo, %bb.fg, %_Py_NewRef.exit
  %.082 = phi ptr [ %.0, %asciilib_rsplit.exit ], [ null, %bb.at ], [ null, %bb.cn ], [ null, %bb.du ], [ null, %bb.fg ], [ %i.oz, %_Py_NewRef.exit ], [ null, %bb.fo ], [ %.0, %bb.pw ], [ null, %_PyUnicode_DATA.exit ], [ %i.p, %.critedge79.i ], [ null, %Py_DECREF.exit87.i ], [ null, %bb.as ], [ null, %_PyUnicode_DATA.exit113 ], [ %i.dr, %.critedge79.i117 ], [ null, %Py_DECREF.exit87.i120 ], [ null, %bb.cm ], [ null, %_PyUnicode_DATA.exit168 ], [ %i.in, %.critedge79.i172 ], [ null, %Py_DECREF.exit87.i175 ], [ null, %bb.dt ], [ null, %_PyUnicode_DATA.exit214 ], [ %i.lr, %.critedge79.i218 ], [ null, %Py_DECREF.exit87.i221 ], [ null, %bb.fa ], [ null, %bb.fb ]
  ret ptr %.082
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyUnicode_Dedent(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !193
  %i.b = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef %0, ptr noundef nonnull %i.a) ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !193  ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %0, align 8, !tbaa !205    ; 2 uses
  %i.f = icmp ugt i32 %i.e, -1073741825
  br i1 %i.f, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %0, align 8, !tbaa !205
  br label %_Py_NewRef.exit

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.b, i64 %i.c     ; 5 uses
  %.not7097.i = icmp ult ptr %i.b, %i.h
  br i1 %.not7097.i, label %.preheader81.i, label %search_longest_common_leading_whitespace.exit.thread

.preheader81.i:                                   ; preds = %bb.e, %bb.n
  %.049100.i = phi ptr [ %i.aa, %bb.n ], [ %i.b, %bb.e ] ; 6 uses
  %.05199.i = phi i64 [ %.253.ph.i, %bb.n ], [ 0, %bb.e ] ; 2 uses
  %.05498.i = phi ptr [ %.256.ph.i, %bb.n ], [ null, %bb.e ] ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.preheader81.i
  %.04690.i = phi ptr [ null, %.preheader81.i ], [ %.1.i, %bb.j ] ; 3 uses
  %.15089.i = phi ptr [ %.049100.i, %.preheader81.i ], [ %i.k, %bb.j ] ; 5 uses
  %i.i = load i8, ptr %.15089.i, align 1, !tbaa !205 ; 2 uses
  %.not.i = icmp eq i8 %i.i, 10
  br i1 %.not.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not67.i = icmp eq ptr %.04690.i, null
  br i1 %.not67.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  switch i8 %i.i, label %bb.i [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.j = icmp eq ptr %.15089.i, %.049100.i
  br i1 %i.j, label %search_longest_common_leading_whitespace.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.h, %bb.g
  %.1.i = phi ptr [ %.04690.i, %bb.g ], [ null, %bb.h ], [ null, %bb.h ], [ %.15089.i, %bb.i ] ; 2 uses
  %i.k = getelementptr i8, ptr %.15089.i, i64 1   ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.h
  br i1 %i.l, label %bb.f, label %.critedge.i, !llvm.loop !718

.critedge.i:                                      ; preds = %bb.j, %bb.f
  %.150.lcssa.i = phi ptr [ %i.k, %bb.j ], [ %.15089.i, %bb.f ]
  %.046.lcssa.i = phi ptr [ %.1.i, %bb.j ], [ %.04690.i, %bb.f ] ; 4 uses
  %.not64.i = icmp eq ptr %.046.lcssa.i, null
  br i1 %.not64.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  %.not65.i = icmp eq ptr %.05498.i, null
  br i1 %.not65.i, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k
  %i.m = getelementptr i8, ptr %.05498.i, i64 %.05199.i ; 2 uses
  %i.n = icmp ult ptr %.05498.i, %i.m
  %i.o = icmp ult ptr %.049100.i, %.046.lcssa.i
  %or.cond91.i = and i1 %i.n, %i.o
  br i1 %or.cond91.i, label %.lr.ph.i, label %search_longest_common_leading_whitespace.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.p = ptrtoint ptr %.046.lcssa.i to i64
  %i.q = ptrtoint ptr %.049100.i to i64
  %i.r = sub i64 %i.p, %i.q
  br label %bb.n

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.m
  %.094.i = phi ptr [ %i.w, %bb.m ], [ %.049100.i, %.preheader.i ] ; 2 uses
  %.04493.i = phi ptr [ %i.v, %bb.m ], [ %.05498.i, %.preheader.i ] ; 2 uses
  %.04592.i = phi i64 [ %i.x, %bb.m ], [ 0, %.preheader.i ] ; 2 uses
  %i.s = load i8, ptr %.04493.i, align 1, !tbaa !205
  %i.t = load i8, ptr %.094.i, align 1, !tbaa !205
  %i.u = icmp eq i8 %i.s, %i.t
  br i1 %i.u, label %bb.m, label %.critedge3.i

bb.m:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr i8, ptr %.04493.i, i64 1   ; 2 uses
  %i.w = getelementptr i8, ptr %.094.i, i64 1     ; 2 uses
  %i.x = add i64 %.04592.i, 1                     ; 2 uses
  %i.y = icmp ult ptr %i.v, %i.m
  %i.z = icmp ult ptr %i.w, %.046.lcssa.i
  %or.cond.i = and i1 %i.z, %i.y
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge3.i, !llvm.loop !719

.critedge3.i:                                     ; preds = %bb.m, %.lr.ph.i
  %.045.lcssa.i = phi i64 [ %i.x, %bb.m ], [ %.04592.i, %.lr.ph.i ] ; 2 uses
  %.not66.i = icmp eq i64 %.045.lcssa.i, 0
  br i1 %.not66.i, label %search_longest_common_leading_whitespace.exit.thread, label %bb.n

bb.n:                                             ; preds = %.critedge3.i, %bb.l, %.critedge.i
  %.256.ph.i = phi ptr [ %.049100.i, %bb.l ], [ %.05498.i, %.critedge3.i ], [ %.05498.i, %.critedge.i ]
  %.253.ph.i = phi i64 [ %i.r, %bb.l ], [ %.045.lcssa.i, %.critedge3.i ], [ %.05199.i, %.critedge.i ] ; 6 uses
  %i.aa = getelementptr i8, ptr %.150.lcssa.i, i64 1 ; 2 uses
  %.not70.i = icmp ult ptr %i.aa, %i.h
  br i1 %.not70.i, label %.preheader81.i, label %search_longest_common_leading_whitespace.exit, !llvm.loop !720

search_longest_common_leading_whitespace.exit:    ; preds = %bb.n
  %i.ab = icmp eq i64 %.253.ph.i, 0
  br i1 %i.ab, label %search_longest_common_leading_whitespace.exit.thread, label %bb.p

search_longest_common_leading_whitespace.exit.thread: ; preds = %.critedge3.i, %.preheader.i, %bb.i, %bb.e, %search_longest_common_leading_whitespace.exit
  %i.ac = load i32, ptr %0, align 8, !tbaa !205   ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, -1073741825
  br i1 %i.ad, label %_Py_NewRef.exit, label %bb.o

bb.o:                                             ; preds = %search_longest_common_leading_whitespace.exit.thread
  %i.ae = add nuw i32 %i.ac, 1
  store i32 %i.ae, ptr %0, align 8, !tbaa !205
  br label %_Py_NewRef.exit

bb.p:                                             ; preds = %search_longest_common_leading_whitespace.exit
  %i.af = call ptr @PyMem_Malloc(i64 noundef %i.c) #33 ; 5 uses
  %.not57 = icmp eq ptr %i.af, null
  br i1 %.not57, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.p
  %i.ag = call ptr @PyErr_NoMemory() #33          ; 0 uses
  br label %_Py_NewRef.exit

.preheader:                                       ; preds = %bb.p, %bb.y
  %.04680 = phi ptr [ %i.bf, %bb.y ], [ %i.b, %bb.p ] ; 5 uses
  %.04879 = phi ptr [ %.250, %bb.y ], [ %i.af, %bb.p ] ; 6 uses
  br label %bb.t

._crit_edge:                                      ; preds = %bb.y
  %i.ah = ptrtoint ptr %.250 to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.al = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !194
  call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.32) #33
  br label %PyUnicode_FromStringAndSize.exit

bb.s:                                             ; preds = %._crit_edge
  %i.am = call fastcc ptr @unicode_decode_utf8(ptr noundef nonnull %i.af, i64 noundef %i.aj, i32 noundef 1, ptr noundef null, ptr noundef null), !inline_history !291
  br label %PyUnicode_FromStringAndSize.exit

PyUnicode_FromStringAndSize.exit:                 ; preds = %bb.r, %bb.s
  %.0.i = phi ptr [ null, %bb.r ], [ %i.am, %bb.s ]
  call void @PyMem_Free(ptr noundef nonnull %i.af) #33
  br label %_Py_NewRef.exit

bb.t:                                             ; preds = %.preheader, %bb.u
  %.04478 = phi i8 [ 1, %.preheader ], [ %.145, %bb.u ] ; 2 uses
  %.14777 = phi ptr [ %.04680, %.preheader ], [ %i.ap, %bb.u ] ; 5 uses
  %i.an = load i8, ptr %.14777, align 1, !tbaa !205 ; 3 uses
  %.not58 = icmp eq i8 %i.an, 10
  %i.ao = trunc nuw i8 %.04478 to i1              ; 2 uses
  br i1 %.not58, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not61 = xor i1 %i.ao, true
  %.not59 = icmp eq i8 %i.an, 32
  %or.cond62 = or i1 %.not59, %.not61
  %.not60 = icmp eq i8 %i.an, 9
  %or.cond63 = or i1 %.not60, %or.cond62
  %.145 = select i1 %or.cond63, i8 %.04478, i8 0
  %i.ap = getelementptr i8, ptr %.14777, i64 1    ; 4 uses
  %i.aq = icmp ult ptr %i.ap, %i.h
  br i1 %i.aq, label %bb.t, label %bb.w, !llvm.loop !721

.critedge:                                        ; preds = %bb.t
  br i1 %i.ao, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.critedge
  %i.ar = getelementptr i8, ptr %.04879, i64 1
  store i8 10, ptr %.04879, align 1, !tbaa !205
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = ptrtoint ptr %.04680 to i64
  %i.au = add i64 %.253.ph.i, %i.at
  %i.av = sub i64 %i.as, %i.au                    ; 2 uses
  %i.aw = getelementptr i8, ptr %.04680, i64 %.253.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04879, ptr align 1 %i.aw, i64 %i.av, i1 false)
  %i.ax = getelementptr i8, ptr %.04879, i64 %i.av
  br label %bb.y

bb.x:                                             ; preds = %.critedge
  %i.ay = ptrtoint ptr %.14777 to i64
  %i.az = ptrtoint ptr %.04680 to i64
  %i.ba = add i64 %.253.ph.i, %i.az
  %i.bb = sub i64 %i.ay, %i.ba                    ; 2 uses
  %i.bc = getelementptr i8, ptr %.04680, i64 %.253.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04879, ptr align 1 %i.bc, i64 %i.bb, i1 false)
  %i.bd = getelementptr i8, ptr %.04879, i64 %i.bb ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 1
  store i8 10, ptr %i.bd, align 1, !tbaa !205
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %.14775 = phi ptr [ %.14777, %bb.v ], [ %.14777, %bb.x ], [ %i.ap, %bb.w ]
  %.250 = phi ptr [ %i.ar, %bb.v ], [ %i.be, %bb.x ], [ %i.ax, %bb.w ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.14775, i64 1    ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.h
  br i1 %i.bg, label %.preheader, label %._crit_edge, !llvm.loop !722

_Py_NewRef.exit:                                  ; preds = %PyUnicode_FromStringAndSize.exit, %bb.q, %search_longest_common_leading_whitespace.exit.thread, %bb.o, %bb.d, %bb.c, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %0, %bb.d ], [ %0, %bb.c ], [ null, %bb.q ], [ %.0.i, %PyUnicode_FromStringAndSize.exit ], [ %0, %search_longest_common_leading_whitespace.exit.thread ], [ %0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyUnicode_ExactDealloc(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @unicode_dealloc(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unicode_dealloc(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8
  %i.b = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = and i32 %i.c, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_SetImmortal(ptr noundef nonnull %0) #33
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 3
  switch i32 %i.e, label %bb.j [
    i32 0, label %Py_SET_REFCNT.exit29
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %0, align 8, !tbaa !205
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.e, label %Py_SET_REFCNT.exit

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %0, align 8, !tbaa !205
  br label %Py_SET_REFCNT.exit

Py_SET_REFCNT.exit:                               ; preds = %bb.d, %bb.e
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = getelementptr i8, ptr %i.h, i64 224840
  %.val = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.j = call i32 @PyDict_Pop(ptr noundef %.val, ptr noundef nonnull %0, ptr noundef nonnull %i.a) #33
  switch i32 %i.j, label %bb.h [
    i32 -1, label %bb.f
    i32 0, label %bb.g
  ]

bb.f:                                             ; preds = %Py_SET_REFCNT.exit
  call void (ptr, ...) @PyErr_FormatUnraisable(ptr noundef nonnull @.str.198, ptr noundef nonnull %0) #33
  call void @_Py_SetImmortal(ptr noundef nonnull %0) #33
  %i.k = load i32, ptr %i.b, align 8
  %i.l = and i32 %i.k, -4
  %i.m = or disjoint i32 %i.l, 2
  store i32 %i.m, ptr %i.b, align 8
  br label %bb.s

bb.g:                                             ; preds = %Py_SET_REFCNT.exit
  call void @_Py_SetImmortal(ptr noundef nonnull %0) #33
  br label %bb.s

bb.h:                                             ; preds = %Py_SET_REFCNT.exit
  %i.n = load i32, ptr %0, align 8, !tbaa !205
  %.not.i28 = icmp sgt i32 %i.n, -1
  br i1 %.not.i28, label %bb.i, label %Py_SET_REFCNT.exit29

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %0, align 8, !tbaa !205
  br label %Py_SET_REFCNT.exit29

bb.j:                                             ; preds = %bb.c
  tail call void @_Py_SetImmortal(ptr noundef nonnull %0) #33
  br label %bb.s

Py_SET_REFCNT.exit29:                             ; preds = %bb.i, %bb.h, %bb.c
  %.val6.i = load i32, ptr %i.b, align 8          ; 6 uses
  %i.o = and i32 %.val6.i, 64
  %.not.i.i = icmp eq i32 %i.o, 0
  %i.p = and i32 %.val6.i, 96
  %.not.not.i = icmp eq i32 %i.p, 96
  br i1 %.not.not.i, label %_PyUnicode_HAS_UTF8_MEMORY.exit.thread, label %bb.k

bb.k:                                             ; preds = %Py_SET_REFCNT.exit29
  %i.q = getelementptr i8, ptr %0, i64 48
  %.val5.i = load ptr, ptr %i.q, align 8, !tbaa !203 ; 3 uses
end_hunk_1
begin_hunk_2_@asciilib_fastsearch:bb.a
  br i1 %exitcond.not.i, label %asciilib_find_char.exit, label %.lr.ph.i, !llvm.loop !777

bb.j:                                             ; preds = %bb.d
  %i.s = icmp sgt i64 %1, 15
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = zext i8 %i.d to i32
  %i.u = tail call ptr @memrchr(ptr noundef %0, i32 noundef %i.t, i64 noundef %1) #34 ; 2 uses
  %.not.i67 = icmp eq ptr %i.u, null
  br i1 %.not.i67, label %asciilib_find_char.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %0 to i64
  %i.x = sub i64 %i.v, %i.w
  br label %asciilib_find_char.exit

bb.m:                                             ; preds = %bb.j
  %i.y = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.z = icmp ugt ptr %i.y, %0
  br i1 %i.z, label %.lr.ph, label %asciilib_find_char.exit

bb.n:                                             ; preds = %.lr.ph
  %i.aa = icmp ugt ptr %i.ab, %0
  br i1 %i.aa, label %.lr.ph, label %asciilib_find_char.exit, !llvm.loop !660

.lr.ph:                                           ; preds = %bb.m, %bb.n
  %.0.i11 = phi ptr [ %i.ab, %bb.n ], [ %i.y, %bb.m ]
  %i.ab = getelementptr i8, ptr %.0.i11, i64 -1   ; 4 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !205
  %i.ad = icmp eq i8 %i.ac, %i.d
  br i1 %i.ad, label %bb.o, label %bb.n, !llvm.loop !660

bb.o:                                             ; preds = %.lr.ph
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  br label %asciilib_find_char.exit

bb.p:                                             ; preds = %bb.b
  %.not = icmp eq i32 %4, 2
  br i1 %.not, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = icmp slt i64 %1, 2500
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp samesign ult i64 %3, 100
  %i.aj = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.aj, %i.ai
  %i.ak = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.ak, %or.cond3
  br i1 %or.cond5, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.al = add nsw i64 %3, -1                      ; 11 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !205 ; 5 uses
  %xtraiter = and i64 %i.al, 1
  %i.ao = icmp eq i64 %3, 2
  br i1 %i.ao, label %.lr.ph.i68.epil.preheader, label %.new

.new:                                             ; preds = %bb.s
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph.i68

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i68
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i68.epil.preheader

.lr.ph.i68.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.s
  %.068100.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.cw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.s ], [ %i.cs, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.al, %bb.s ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ap = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !205 ; 2 uses
  %i.ar = and i8 %i.aq, 63
  %i.as = zext nneg i8 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = or i64 %i.at, %.06999.i.epil.init
  %i.av = icmp eq i8 %i.aq, %i.an
  %i.aw = xor i64 %.068100.i.epil.init, -1
  %i.ax = add nsw i64 %i.al, %i.aw
  %.171.i.epil = select i1 %i.av, i64 %i.ax, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i68.epil.preheader
  %.lcssa22 = phi i64 [ %i.cs, %._crit_edge.i.unr-lcssa ], [ %i.au, %.lr.ph.i68.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i68.epil.preheader ]
  %i.ay = sub i64 %1, %3                          ; 4 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.al     ; 3 uses
  %i.ba = and i8 %i.an, 63
  %i.bb = zext nneg i8 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = or i64 %.lcssa22, %i.bc                 ; 2 uses
  %.not108.i = icmp slt i64 %i.ay, 0
  br i1 %.not108.i, label %asciilib_find_char.exit, label %.lr.ph111.split.us.i

.lr.ph111.split.us.i:                             ; preds = %._crit_edge.i, %bb.z
  %.066109.us.i = phi i64 [ %i.cb, %bb.z ], [ 0, %._crit_edge.i ] ; 8 uses
  %i.be = getelementptr i8, ptr %i.az, i64 %.066109.us.i
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !205
  %i.bg = icmp eq i8 %i.bf, %i.an
  br i1 %i.bg, label %.preheader.us.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph111.split.us.i
  %i.bh = add i64 %.066109.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.bh, %i.ay
  br i1 %.not88.us.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr i8, ptr %i.az, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bm, %i.bd
  %.not89.us.i = icmp eq i64 %i.bn, 0
  %i.bo = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.bo, %.066109.us.i
  br label %bb.z

bb.v:                                             ; preds = %.preheader.us.i, %bb.w
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.bt, %bb.w ] ; 3 uses
  %i.bp = getelementptr i8, ptr %i.cc, i64 %.0102.us.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !205
  %i.br = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !205
  %.not90.us.i = icmp eq i8 %i.bq, %i.bs
  br i1 %.not90.us.i, label %bb.w, label %._crit_edge104.us.i

bb.w:                                             ; preds = %bb.v
  %i.bt = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond132.not.i = icmp eq i64 %i.bt, %i.al
  br i1 %exitcond132.not.i, label %asciilib_find_char.exit, label %bb.v, !llvm.loop !778

._crit_edge104.us.i:                              ; preds = %bb.v
  %i.bu = add i64 %.066109.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.bu, %i.ay
  br i1 %.not91.us.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge104.us.i
  %i.bv = getelementptr i8, ptr %i.az, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !205
  %i.bx = and i8 %i.bw, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = and i64 %i.bz, %i.bd
  %.not92.us.i = icmp eq i64 %i.ca, 0
  br i1 %.not92.us.i, label %.thread.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge104.us.i
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.y, %bb.x
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.y ], [ %3, %bb.x ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066109.us.i
  br label %bb.z

bb.z:                                             ; preds = %.thread.us.i, %bb.u, %bb.t
  %.3.us.i = phi i64 [ %.066109.us.i, %bb.t ], [ %.167.us.i, %.thread.us.i ], [ %spec.select.us.i, %bb.u ]
  %i.cb = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.cb, %i.ay
  br i1 %.not.us.i, label %asciilib_find_char.exit, label %.lr.ph111.split.us.i, !llvm.loop !779

.preheader.us.i:                                  ; preds = %.lr.ph111.split.us.i
  %i.cc = getelementptr i8, ptr %0, i64 %.066109.us.i
  br label %bb.v

.lr.ph.i68:                                       ; preds = %.lr.ph.i68, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.cw, %.lr.ph.i68 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.cs, %.lr.ph.i68 ]
  %.07098.i = phi i64 [ %i.al, %.new ], [ %.171.i.1, %.lr.ph.i68 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i68 ]
  %i.cd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !205 ; 2 uses
  %i.cf = and i8 %i.ce, 63
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = shl nuw i64 1, %i.cg
  %i.ci = or i64 %i.ch, %.06999.i
  %i.cj = icmp eq i8 %i.ce, %i.an
  %i.ck = xor i64 %.068100.i, -1
  %i.cl = add nsw i64 %i.al, %i.ck
  %.171.i = select i1 %i.cj, i64 %i.cl, i64 %.07098.i
  %i.cm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !205 ; 2 uses
  %i.cp = and i8 %i.co, 63
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = or i64 %i.cr, %i.ci                     ; 3 uses
  %i.ct = icmp eq i8 %i.co, %i.an
  %i.cu = xor i64 %.068100.i, -2
  %i.cv = add nsw i64 %i.al, %i.cu
  %.171.i.1 = select i1 %i.ct, i64 %i.cv, i64 %.171.i ; 3 uses
  %i.cw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i68, !llvm.loop !780

bb.aa:                                            ; preds = %bb.r
  %i.cx = lshr i64 %3, 2
  %i.cy = mul nuw nsw i64 %i.cx, 3
  %i.cz = lshr i64 %1, 2
  %i.da = icmp samesign ult i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.db = tail call fastcc i64 @asciilib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %asciilib_find_char.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dc = tail call fastcc i64 @asciilib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %asciilib_find_char.exit

bb.ad:                                            ; preds = %bb.p
  %i.dd = add nsw i64 %3, -1                      ; 6 uses
  %i.de = load i8, ptr %2, align 1, !tbaa !205    ; 5 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg                    ; 2 uses
  %xtraiter27 = and i64 %i.dd, 1
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i70.prol.loopexit, label %.lr.ph.i70.prol

.lr.ph.i70.prol:                                  ; preds = %bb.ad
  %i.di = getelementptr i8, ptr %2, i64 %i.dd
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !205 ; 2 uses
  %i.dk = and i8 %i.dj, 63
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = or i64 %i.dm, %i.dh                     ; 2 uses
  %i.do = icmp eq i8 %i.dj, %i.de
  %i.dp = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i.prol = select i1 %i.do, i64 %i.dp, i64 %i.dd ; 2 uses
  br label %.lr.ph.i70.prol.loopexit

.lr.ph.i70.prol.loopexit:                         ; preds = %.lr.ph.i70.prol, %bb.ad
  %.060.i.unr = phi i64 [ %i.dd, %bb.ad ], [ %spec.select.i.prol, %.lr.ph.i70.prol ]
  %.04759.i.unr = phi i64 [ %i.dd, %bb.ad ], [ %i.dp, %.lr.ph.i70.prol ]
  %.04958.i.unr = phi i64 [ %i.dh, %bb.ad ], [ %i.dn, %.lr.ph.i70.prol ]
  %.lcssa18.unr = phi i64 [ poison, %bb.ad ], [ %i.dn, %.lr.ph.i70.prol ]
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.ad ], [ %spec.select.i.prol, %.lr.ph.i70.prol ]
  %i.dq = icmp eq i64 %3, 2
  br i1 %i.dq, label %.preheader56.i, label %.lr.ph.i70

.preheader56.i:                                   ; preds = %.lr.ph.i70, %.lr.ph.i70.prol.loopexit
  %.lcssa18 = phi i64 [ %.lcssa18.unr, %.lr.ph.i70.prol.loopexit ], [ %i.ff, %.lr.ph.i70 ] ; 2 uses
  %spec.select.i.lcssa = phi i64 [ %spec.select.i.lcssa.unr, %.lr.ph.i70.prol.loopexit ], [ %spec.select.i.1, %.lr.ph.i70 ]
  %i.dr = sub i64 %1, %3                          ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, -1
  br i1 %i.ds, label %.lr.ph66.split.us.i, label %asciilib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.aj
  %.14865.us.i = phi i64 [ %i.eq, %bb.aj ], [ %i.dr, %.preheader56.i ] ; 5 uses
  %i.dt = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !205
  %i.dv = icmp eq i8 %i.du, %i.de
  br i1 %i.dv, label %.preheader.us.i72, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i71 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i71, label %asciilib_find_char.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dw = getelementptr i8, ptr %i.dt, i64 -1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !205
  %i.dy = and i8 %i.dx, 63
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = and i64 %i.ea, %.lcssa18
  %.not51.us.i = icmp eq i64 %i.eb, 0
  %i.ec = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.aj

.preheader.us.i72:                                ; preds = %.lr.ph66.split.us.i, %bb.ag
  %.04662.us.i = phi i64 [ %i.eh, %bb.ag ], [ %i.dd, %.lr.ph66.split.us.i ] ; 4 uses
  %i.ed = getelementptr i8, ptr %i.dt, i64 %.04662.us.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !205
  %i.ef = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !205
  %.not52.us.i = icmp eq i8 %i.ee, %i.eg
  br i1 %.not52.us.i, label %bb.ag, label %.thread.us.i73

bb.ag:                                            ; preds = %.preheader.us.i72
  %i.eh = add nsw i64 %.04662.us.i, -1
  %i.ei = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.ei, label %.preheader.us.i72, label %asciilib_find_char.exit, !llvm.loop !661

.thread.us.i73:                                   ; preds = %.preheader.us.i72
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread.us.i73
  %i.ej = getelementptr i8, ptr %i.dt, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !205
  %i.el = and i8 %i.ek, 63
  %i.em = zext nneg i8 %i.el to i64
  %i.en = shl nuw i64 1, %i.em
  %i.eo = and i64 %i.en, %.lcssa18
  %.not54.us.i = icmp eq i64 %i.eo, 0
  br i1 %.not54.us.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread.us.i73
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i.lcssa, %bb.ai ], [ %i.ec, %bb.af ], [ %3, %bb.ah ]
  %i.ep = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.eq = add nsw i64 %i.ep, -1
  %i.er = icmp sgt i64 %i.ep, 0
  br i1 %i.er, label %.lr.ph66.split.us.i, label %asciilib_find_char.exit, !llvm.loop !662

.lr.ph.i70:                                       ; preds = %.lr.ph.i70.prol.loopexit, %.lr.ph.i70
  %.060.i = phi i64 [ %spec.select.i.1, %.lr.ph.i70 ], [ %.060.i.unr, %.lr.ph.i70.prol.loopexit ]
  %.04759.i = phi i64 [ %i.fh, %.lr.ph.i70 ], [ %.04759.i.unr, %.lr.ph.i70.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.ff, %.lr.ph.i70 ], [ %.04958.i.unr, %.lr.ph.i70.prol.loopexit ]
  %i.es = getelementptr i8, ptr %2, i64 %.04759.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !205 ; 2 uses
  %i.eu = and i8 %i.et, 63
  %i.ev = zext nneg i8 %i.eu to i64
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = or i64 %i.ew, %.04958.i
  %i.ey = icmp eq i8 %i.et, %i.de
  %i.ez = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i = select i1 %i.ey, i64 %i.ez, i64 %.060.i
  %i.fa = getelementptr i8, ptr %2, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !205 ; 2 uses
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = or i64 %i.fe, %i.ex                     ; 2 uses
  %i.fg = icmp eq i8 %i.fb, %i.de
  %i.fh = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i.1 = select i1 %i.fg, i64 %i.fh, i64 %spec.select.i ; 2 uses
  %i.fi = icmp sgt i64 %.04759.i, 2
  br i1 %i.fi, label %.lr.ph.i70, label %.preheader56.i, !llvm.loop !663

asciilib_find_char.exit:                          ; preds = %bb.z, %bb.w, %bb.aj, %bb.ae, %bb.ag, %bb.n, %bb.i, %bb.m, %.preheader56.i, %._crit_edge.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.ac, %bb.ab
  %.0 = phi i64 [ %i.db, %bb.ab ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.aj ], [ %.14865.us.i, %bb.ag ], [ %i.dc, %bb.ac ], [ -1, %bb.n ], [ %i.l, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %._crit_edge.i ], [ -1, %bb.m ], [ -1, %bb.i ], [ -1, %.preheader56.i ], [ %.066109.us.i, %bb.w ], [ -1, %bb.ae ], [ -1, %bb.z ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @asciilib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #24 {
bb.a:
  %4 = alloca %struct.asciilib__pre, align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %2, ptr %4, align 8, !tbaa !781
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %3, ptr %i.a, align 8, !tbaa !783
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i.i = phi i64 [ %.1.us.i.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i.i = phi i64 [ %.130.us.i.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i.i = phi i64 [ %.132.us.i.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i.i = phi i64 [ %.134.us.i.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205   ; 2 uses
  %i.e = getelementptr i8, ptr %2, i64 %.03339.us.i.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !205   ; 2 uses
  %i.h = icmp ult i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i.i, 1              ; 2 uses
  %.not37.us.i.i.i = icmp eq i64 %i.k, %.042.us.i.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i.i, i64 %.042.us.i.i.i, i64 0
  %spec.select.us.i.i.i = add i64 %i.l, %.03140.us.i.i.i
  %spec.select38.us.i.i.i = select i1 %.not37.us.i.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i.i
  %i.m = add i64 %.02941.us.i.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i.i           ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i.i = phi i64 [ %.03339.us.i.i.i, %bb.e ], [ %.03140.us.i.i.i, %bb.c ], [ %.03339.us.i.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i.i, %.132.us.i.i.i   ; 2 uses
  %i.q = icmp slt i64 %i.p, %3
  br i1 %i.q, label %.split.us.i.i.i, label %.split.i.i.i, !llvm.loop !784
end_hunk_2
begin_hunk_3_@ucs1lib_fastsearch:bb.a
  %exitcond.not.i69 = icmp eq i64 %i.ax, %1
  br i1 %exitcond.not.i69, label %ucs1lib_find_char.exit, label %.lr.ph.i68, !llvm.loop !800

.lr.ph.i70:                                       ; preds = %bb.p, %bb.r
  %.016.i71 = phi i64 [ %.1.i, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %.01115.i = phi i64 [ %i.bd, %bb.r ], [ 0, %bb.p ] ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 %.01115.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !205
  %i.ba = icmp eq i8 %i.az, %i.ai
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i70
  %i.bb = add i64 %.016.i71, 1                    ; 2 uses
  %i.bc = icmp eq i64 %i.bb, %4
  br i1 %i.bc, label %ucs1lib_find_char.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i70
  %.1.i = phi i64 [ %i.bb, %bb.q ], [ %.016.i71, %.lr.ph.i70 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.01115.i, 1            ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %i.bd, %1
  br i1 %exitcond.not.i72, label %ucs1lib_find_char.exit, label %.lr.ph.i70, !llvm.loop !801

bb.s:                                             ; preds = %bb.b
  %.not = icmp eq i32 %5, 2
  br i1 %.not, label %bb.al, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = icmp slt i64 %1, 2500
  br i1 %i.be, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp samesign ult i64 %3, 100
  %i.bg = icmp samesign ult i64 %1, 30000
  %or.cond3 = and i1 %i.bg, %i.bf
  %i.bh = icmp samesign ult i64 %3, 6
  %or.cond5 = or i1 %i.bh, %or.cond3
  br i1 %or.cond5, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bi = add nsw i64 %3, -1                      ; 12 uses
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !205 ; 5 uses
  %xtraiter = and i64 %i.bi, 1
  %i.bl = icmp eq i64 %3, 2
  br i1 %i.bl, label %.lr.ph.i73.epil.preheader, label %.new

.new:                                             ; preds = %bb.v
  %unroll_iter = and i64 %i.bi, -2
  br label %.lr.ph.i73

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %bb.v
  %.068100.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.dw, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06999.i.epil.init = phi i64 [ 0, %bb.v ], [ %i.ds, %._crit_edge.i.unr-lcssa ]
  %.07098.i.epil.init = phi i64 [ %i.bi, %bb.v ], [ %.171.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod162 = trunc i64 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod162)
  %i.bm = getelementptr i8, ptr %2, i64 %.068100.i.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !205 ; 2 uses
  %i.bo = and i8 %i.bn, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = shl nuw i64 1, %i.bp
  %i.br = or i64 %i.bq, %.06999.i.epil.init
  %i.bs = icmp eq i8 %i.bn, %i.bk
  %i.bt = xor i64 %.068100.i.epil.init, -1
  %i.bu = add nsw i64 %i.bi, %i.bt
  %.171.i.epil = select i1 %i.bs, i64 %i.bu, i64 %.07098.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i73.epil.preheader
  %.lcssa159 = phi i64 [ %i.ds, %._crit_edge.i.unr-lcssa ], [ %i.br, %.lr.ph.i73.epil.preheader ]
  %.171.i.lcssa = phi i64 [ %.171.i.1, %._crit_edge.i.unr-lcssa ], [ %.171.i.epil, %.lr.ph.i73.epil.preheader ]
  %i.bv = sub i64 %1, %3                          ; 4 uses
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi     ; 3 uses
  %i.bx = and i8 %i.bk, 63
  %i.by = zext nneg i8 %i.bx to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = or i64 %.lcssa159, %i.bz                ; 2 uses
  %.not108.i = icmp slt i64 %i.bv, 0
  br i1 %.not108.i, label %.loopexit.i, label %.lr.ph113.split.us.preheader.i

.lr.ph113.split.us.preheader.i:                   ; preds = %._crit_edge.i
  %.not93.i = icmp eq i32 %5, 0
  br label %.lr.ph113.split.us.i

.lr.ph113.split.us.i:                             ; preds = %bb.af, %.lr.ph113.split.us.preheader.i
  %.066110.us.i = phi i64 [ %i.db, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 9 uses
  %.072109.us.i = phi i64 [ %.274.us.i, %bb.af ], [ 0, %.lr.ph113.split.us.preheader.i ] ; 4 uses
  %i.cb = getelementptr i8, ptr %i.bw, i64 %.066110.us.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !205
  %i.cd = icmp eq i8 %i.cc, %i.bk
  br i1 %i.cd, label %.preheader.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph113.split.us.i
  %i.ce = add i64 %.066110.us.i, 1                ; 2 uses
  %.not88.us.i = icmp sgt i64 %i.ce, %i.bv
  br i1 %.not88.us.i, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !205
  %i.ch = and i8 %i.cg, 63
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.cj, %i.ca
  %.not89.us.i = icmp eq i64 %i.ck, 0
  %i.cl = select i1 %.not89.us.i, i64 %3, i64 0
  %spec.select.us.i = add i64 %i.cl, %.066110.us.i
  br label %bb.af

bb.y:                                             ; preds = %.preheader.us.i, %bb.z
  %.0102.us.i = phi i64 [ 0, %.preheader.us.i ], [ %i.cq, %bb.z ] ; 3 uses
  %i.cm = getelementptr i8, ptr %i.dc, i64 %.0102.us.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !205
  %i.co = getelementptr i8, ptr %2, i64 %.0102.us.i
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !205
  %.not90.us.i = icmp eq i8 %i.cn, %i.cp
  br i1 %.not90.us.i, label %bb.z, label %._crit_edge104.us.i

bb.z:                                             ; preds = %bb.y
  %i.cq = add nuw nsw i64 %.0102.us.i, 1          ; 2 uses
  %exitcond179.not.i = icmp eq i64 %i.cq, %i.bi
  br i1 %exitcond179.not.i, label %._crit_edge104.us.thread.i.loopexit, label %bb.y, !llvm.loop !802

._crit_edge104.us.i:                              ; preds = %bb.y
  %i.cr = add i64 %.066110.us.i, 1                ; 2 uses
  %.not91.us.i = icmp sgt i64 %i.cr, %i.bv
  br i1 %.not91.us.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge104.us.i
  %i.cs = getelementptr i8, ptr %i.bw, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !205
  %i.cu = and i8 %i.ct, 63
  %i.cv = zext nneg i8 %i.cu to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = and i64 %i.cw, %i.ca
  %.not92.us.i = icmp eq i64 %i.cx, 0
  br i1 %.not92.us.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge104.us.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.070.pn.us.i = phi i64 [ %.171.i.lcssa, %bb.ab ], [ %3, %bb.aa ]
  %.167.us.i = add i64 %.070.pn.us.i, %.066110.us.i
  br label %bb.af

._crit_edge104.us.thread.i.loopexit:              ; preds = %bb.z
  br i1 %.not93.i, label %bb.ad, label %ucs1lib_find_char.exit

bb.ad:                                            ; preds = %._crit_edge104.us.thread.i.loopexit
  %i.cy = add i64 %.072109.us.i, 1                ; 2 uses
  %i.cz = icmp eq i64 %i.cy, %4
  br i1 %i.cz, label %ucs1lib_find_char.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = add i64 %.066110.us.i, %i.bi
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.x, %bb.w
  %.274.us.i = phi i64 [ %.072109.us.i, %bb.w ], [ %.072109.us.i, %bb.x ], [ %.072109.us.i, %bb.ac ], [ %i.cy, %bb.ae ] ; 2 uses
  %.3.us.i = phi i64 [ %.066110.us.i, %bb.w ], [ %spec.select.us.i, %bb.x ], [ %.167.us.i, %bb.ac ], [ %i.da, %bb.ae ]
  %i.db = add i64 %.3.us.i, 1                     ; 2 uses
  %.not.us.i = icmp sgt i64 %i.db, %i.bv
  br i1 %.not.us.i, label %.loopexit.i, label %.lr.ph113.split.us.i, !llvm.loop !803

.preheader.us.i:                                  ; preds = %.lr.ph113.split.us.i
  %i.dc = getelementptr i8, ptr %0, i64 %.066110.us.i
  br label %bb.y

.lr.ph.i73:                                       ; preds = %.lr.ph.i73, %.new
  %.068100.i = phi i64 [ 0, %.new ], [ %i.dw, %.lr.ph.i73 ] ; 5 uses
  %.06999.i = phi i64 [ 0, %.new ], [ %i.ds, %.lr.ph.i73 ]
  %.07098.i = phi i64 [ %i.bi, %.new ], [ %.171.i.1, %.lr.ph.i73 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph.i73 ]
  %i.dd = getelementptr i8, ptr %2, i64 %.068100.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !205 ; 2 uses
  %i.df = and i8 %i.de, 63
  %i.dg = zext nneg i8 %i.df to i64
  %i.dh = shl nuw i64 1, %i.dg
  %i.di = or i64 %i.dh, %.06999.i
  %i.dj = icmp eq i8 %i.de, %i.bk
  %i.dk = xor i64 %.068100.i, -1
  %i.dl = add nsw i64 %i.bi, %i.dk
  %.171.i = select i1 %i.dj, i64 %i.dl, i64 %.07098.i
  %i.dm = getelementptr i8, ptr %2, i64 %.068100.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !205 ; 2 uses
  %i.dp = and i8 %i.do, 63
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = shl nuw i64 1, %i.dq
  %i.ds = or i64 %i.dr, %i.di                     ; 3 uses
  %i.dt = icmp eq i8 %i.do, %i.bk
  %i.du = xor i64 %.068100.i, -2
  %i.dv = add nsw i64 %i.bi, %i.du
  %.171.i.1 = select i1 %i.dt, i64 %i.dv, i64 %.171.i ; 3 uses
  %i.dw = add nuw nsw i64 %.068100.i, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i73, !llvm.loop !804

.loopexit.i:                                      ; preds = %bb.af, %._crit_edge.i
  %.375.ph.i = phi i64 [ 0, %._crit_edge.i ], [ %.274.us.i, %bb.af ]
  %i.dx = icmp eq i32 %5, 0
  %i.dy = select i1 %i.dx, i64 %.375.ph.i, i64 -1
  br label %ucs1lib_find_char.exit

bb.ag:                                            ; preds = %bb.u
  %i.dz = lshr i64 %3, 2
  %i.ea = mul nuw nsw i64 %i.dz, 3
  %i.eb = lshr i64 %1, 2
  %i.ec = icmp samesign ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ed = icmp eq i32 %5, 1
  br i1 %i.ed, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ee = tail call fastcc i64 @ucs1lib__two_way_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %ucs1lib_find_char.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ef = tail call fastcc i64 @ucs1lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs1lib_find_char.exit

bb.ak:                                            ; preds = %bb.ag
  %i.eg = tail call fastcc i64 @ucs1lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs1lib_find_char.exit

bb.al:                                            ; preds = %bb.s
  %i.eh = add nsw i64 %3, -1                      ; 6 uses
  %i.ei = load i8, ptr %2, align 1, !tbaa !205    ; 5 uses
  %i.ej = and i8 %i.ei, 63
  %i.ek = zext nneg i8 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek                    ; 2 uses
  %xtraiter164 = and i64 %i.eh, 1
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %.lr.ph.i75.prol.loopexit, label %.lr.ph.i75.prol

.lr.ph.i75.prol:                                  ; preds = %bb.al
  %i.em = getelementptr i8, ptr %2, i64 %i.eh
  %i.en = load i8, ptr %i.em, align 1, !tbaa !205 ; 2 uses
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = or i64 %i.eq, %i.el                     ; 2 uses
  %i.es = icmp eq i8 %i.en, %i.ei
  %i.et = add nsw i64 %3, -2                      ; 2 uses
  %spec.select.i76.prol = select i1 %i.es, i64 %i.et, i64 %i.eh ; 2 uses
  br label %.lr.ph.i75.prol.loopexit

.lr.ph.i75.prol.loopexit:                         ; preds = %.lr.ph.i75.prol, %bb.al
  %.060.i.unr = phi i64 [ %i.eh, %bb.al ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %.04759.i.unr = phi i64 [ %i.eh, %bb.al ], [ %i.et, %.lr.ph.i75.prol ]
  %.04958.i.unr = phi i64 [ %i.el, %bb.al ], [ %i.er, %.lr.ph.i75.prol ]
  %.lcssa156.unr = phi i64 [ poison, %bb.al ], [ %i.er, %.lr.ph.i75.prol ]
  %spec.select.i76.lcssa.unr = phi i64 [ poison, %bb.al ], [ %spec.select.i76.prol, %.lr.ph.i75.prol ]
  %i.eu = icmp eq i64 %3, 2
  br i1 %i.eu, label %.preheader56.i, label %.lr.ph.i75

.preheader56.i:                                   ; preds = %.lr.ph.i75, %.lr.ph.i75.prol.loopexit
  %.lcssa156 = phi i64 [ %.lcssa156.unr, %.lr.ph.i75.prol.loopexit ], [ %i.gj, %.lr.ph.i75 ] ; 2 uses
  %spec.select.i76.lcssa = phi i64 [ %spec.select.i76.lcssa.unr, %.lr.ph.i75.prol.loopexit ], [ %spec.select.i76.1, %.lr.ph.i75 ]
  %i.ev = sub i64 %1, %3                          ; 2 uses
  %i.ew = icmp sgt i64 %i.ev, -1
  br i1 %i.ew, label %.lr.ph66.split.us.i, label %ucs1lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ar
  %.14865.us.i = phi i64 [ %i.fu, %bb.ar ], [ %i.ev, %.preheader56.i ] ; 5 uses
  %i.ex = getelementptr i8, ptr %0, i64 %.14865.us.i ; 4 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !205
  %i.ez = icmp eq i8 %i.ey, %i.ei
  br i1 %i.ez, label %.preheader.us.i78, label %bb.am

bb.am:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i77 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i77, label %ucs1lib_find_char.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr i8, ptr %i.ex, i64 -1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !205
  %i.fc = and i8 %i.fb, 63
  %i.fd = zext nneg i8 %i.fc to i64
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = and i64 %i.fe, %.lcssa156
  %.not51.us.i = icmp eq i64 %i.ff, 0
  %i.fg = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ar

.preheader.us.i78:                                ; preds = %.lr.ph66.split.us.i, %bb.ao
  %.04662.us.i = phi i64 [ %i.fl, %bb.ao ], [ %i.eh, %.lr.ph66.split.us.i ] ; 4 uses
  %i.fh = getelementptr i8, ptr %i.ex, i64 %.04662.us.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !205
  %i.fj = getelementptr i8, ptr %2, i64 %.04662.us.i
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !205
  %.not52.us.i = icmp eq i8 %i.fi, %i.fk
  br i1 %.not52.us.i, label %bb.ao, label %.thread.us.i

bb.ao:                                            ; preds = %.preheader.us.i78
  %i.fl = add nsw i64 %.04662.us.i, -1
  %i.fm = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.fm, label %.preheader.us.i78, label %ucs1lib_find_char.exit, !llvm.loop !666

.thread.us.i:                                     ; preds = %.preheader.us.i78
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread.us.i
  %i.fn = getelementptr i8, ptr %i.ex, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !205
  %i.fp = and i8 %i.fo, 63
  %i.fq = zext nneg i8 %i.fp to i64
  %i.fr = shl nuw i64 1, %i.fq
  %i.fs = and i64 %i.fr, %.lcssa156
  %.not54.us.i = icmp eq i64 %i.fs, 0
  br i1 %.not54.us.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread.us.i
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.an
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i76.lcssa, %bb.aq ], [ %i.fg, %bb.an ], [ %3, %bb.ap ]
  %i.ft = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.fu = add nsw i64 %i.ft, -1
  %i.fv = icmp sgt i64 %i.ft, 0
  br i1 %i.fv, label %.lr.ph66.split.us.i, label %ucs1lib_find_char.exit, !llvm.loop !667

.lr.ph.i75:                                       ; preds = %.lr.ph.i75.prol.loopexit, %.lr.ph.i75
  %.060.i = phi i64 [ %spec.select.i76.1, %.lr.ph.i75 ], [ %.060.i.unr, %.lr.ph.i75.prol.loopexit ]
  %.04759.i = phi i64 [ %i.gl, %.lr.ph.i75 ], [ %.04759.i.unr, %.lr.ph.i75.prol.loopexit ] ; 4 uses
  %.04958.i = phi i64 [ %i.gj, %.lr.ph.i75 ], [ %.04958.i.unr, %.lr.ph.i75.prol.loopexit ]
  %i.fw = getelementptr i8, ptr %2, i64 %.04759.i
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !205 ; 2 uses
  %i.fy = and i8 %i.fx, 63
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = shl nuw i64 1, %i.fz
  %i.gb = or i64 %i.ga, %.04958.i
  %i.gc = icmp eq i8 %i.fx, %i.ei
  %i.gd = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i76 = select i1 %i.gc, i64 %i.gd, i64 %.060.i
  %i.ge = getelementptr i8, ptr %2, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !205 ; 2 uses
  %i.gg = and i8 %i.gf, 63
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = shl nuw i64 1, %i.gh
  %i.gj = or i64 %i.gi, %i.gb                     ; 2 uses
  %i.gk = icmp eq i8 %i.gf, %i.ei
  %i.gl = add nsw i64 %.04759.i, -2               ; 2 uses
  %spec.select.i76.1 = select i1 %i.gk, i64 %i.gl, i64 %spec.select.i76 ; 2 uses
  %i.gm = icmp sgt i64 %.04759.i, 2
  br i1 %i.gm, label %.lr.ph.i75, label %.preheader56.i, !llvm.loop !668

ucs1lib_find_char.exit:                           ; preds = %bb.ad, %._crit_edge104.us.thread.i.loopexit, %bb.ar, %bb.am, %bb.ao, %bb.n, %bb.i, %bb.r, %bb.q, %.lr.ph.i68, %bb.m, %middle.block, %.preheader56.i, %.loopexit.i, %bb.o, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.ak, %bb.aj, %bb.ai
  %.0 = phi i64 [ -1, %.preheader56.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ %4, %bb.q ], [ %.14865.us.i, %bb.ao ], [ -1, %bb.m ], [ %spec.select.i, %.lr.ph.i68 ], [ %i.ee, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.eg, %bb.ak ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.p, %bb.h ], [ -1, %.preheader.i ], [ %i.x, %bb.l ], [ -1, %bb.k ], [ %i.ag, %bb.o ], [ -1, %bb.n ], [ -1, %bb.i ], [ %i.dy, %.loopexit.i ], [ %i.as, %middle.block ], [ -1, %bb.ar ], [ %.1.i, %bb.r ], [ -1, %bb.am ], [ %4, %bb.ad ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs1lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs1lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs1lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs1lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs1lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs1lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs1lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr i8, ptr %2, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205   ; 4 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i8> %broadcast.splatinsert252, <2 x i8> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr i8, ptr %2, i64 %index     ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 2
  %wide.load = load <2 x i8>, ptr %i.f, align 1, !tbaa !205 ; 2 uses
  %wide.load257 = load <2 x i8>, ptr %i.g, align 1, !tbaa !205 ; 2 uses
  %i.h = and <2 x i8> %wide.load, splat (i8 63)
  %i.i = and <2 x i8> %wide.load257, splat (i8 63)
  %i.j = zext nneg <2 x i8> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i8> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i8> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i8> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
  %i.aa = and i8 %i.d, 63
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.l
  %.092148.us = phi i64 [ %i.bj, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.096147.us = phi i64 [ %.298.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %.0101146.us = phi i64 [ %.2103.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %i.af = getelementptr i8, ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !205
  %i.ah = icmp eq i8 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !205
  %i.ak = and i8 %i.aj, 63
  %i.al = zext nneg i8 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.l

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr i8, ptr %i.bk, i64 %.0139.us
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !205
  %i.ar = getelementptr i8, ptr %2, i64 %.0139.us
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !205
  %.not120.us = icmp eq i8 %i.aq, %i.as
  br i1 %.not120.us, label %bb.d, label %._crit_edge141.us

bb.d:                                             ; preds = %bb.c
  %i.at = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !806

._crit_edge141.us:                                ; preds = %bb.c
  %i.au = icmp eq i64 %.0139.us, %i.b
  br i1 %i.au, label %._crit_edge141.us.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge141.us
  %i.av = add i64 %.096147.us, 1
  %i.aw = add i64 %i.av, %.0139.us                ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %i.ae
  %i.ay = sub i64 %i.a, %.092148.us
  %i.az = icmp sgt i64 %i.ay, 2000
  %or.cond.us = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.af, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !205
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.ad
  %.not122.us = icmp eq i64 %i.bf, 0
  br i1 %.not122.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.099.pn.us = phi i64 [ %.1100.lcssa, %bb.h ], [ %3, %bb.g ]
  %.193.us = add i64 %.099.pn.us, %.092148.us
  br label %bb.l

._crit_edge141.us.thread:                         ; preds = %bb.d, %._crit_edge141.us
  br i1 %.not124, label %bb.j, label %.thread.thread

bb.j:                                             ; preds = %._crit_edge141.us.thread
  %i.bg = add i64 %.0101146.us, 1                 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %4
  br i1 %i.bh, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i64 %.092148.us, %i.b
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.b, %bb.a
  %.2103.us = phi i64 [ %.0101146.us, %bb.a ], [ %.0101146.us, %bb.b ], [ %.0101146.us, %bb.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.298.us = phi i64 [ %.096147.us, %bb.a ], [ %.096147.us, %bb.b ], [ %i.aw, %bb.i ], [ %.096147.us, %bb.k ]
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.i ], [ %i.bi, %bb.k ]
  %i.bj = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bj, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !807

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bk = getelementptr i8, ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bu, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bq, %.lr.ph ], [ %i.x, %middle.block ]
  %.099135 = phi i64 [ %.1100, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bl = getelementptr i8, ptr %2, i64 %.094137
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !205 ; 2 uses
  %i.bn = and i8 %i.bm, 63
  %i.bo = zext nneg i8 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = or i64 %i.bp, %.095136                  ; 2 uses
  %i.br = icmp eq i8 %i.bm, %i.d
  %i.bs = xor i64 %.094137, -1
  %i.bt = add nsw i64 %i.b, %i.bs
  %.1100 = select i1 %i.br, i64 %i.bt, i64 %.099135 ; 2 uses
  %i.bu = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !808

.split.us:                                        ; preds = %bb.e
  %i.bv = getelementptr i8, ptr %0, i64 %.092148.us ; 3 uses
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc i64 @ucs1lib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0101146.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs1lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %ucs1lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %ucs1lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %ucs1lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr i8, ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @ucs1lib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %ucs1lib__two_way_count.exit, label %.lr.ph.i

ucs1lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %ucs1lib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %ucs1lib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs1lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !809
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !811
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205   ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr i8, ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !205   ; 2 uses
  %i.h = icmp ult i8 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i8 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !812

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205   ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %.03339.i.i
  %i.v = getelementptr i8, ptr %i.u, i64 %.02941.i.i
  %i.w = load i8, ptr %i.v, align 1, !tbaa !205   ; 2 uses
  %i.x = icmp ult i8 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i8 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %ucs1lib__factorize.exit, !llvm.loop !812

ucs1lib__factorize.exit:                          ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !193
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !813
  %i.ak = getelementptr i8, ptr %0, i64 %.0.sroa.speculated.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %..i)
  %i.al = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.am = zext i1 %i.al to i32
  %i.an = getelementptr i8, ptr %2, i64 40
  store i32 %i.am, ptr %i.an, align 8, !tbaa !814
  br i1 %i.al, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %ucs1lib__factorize.exit
  %i.ao = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ao)
  %i.ap = add i64 %., 1
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !815
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %ucs1lib__factorize.exit
  %i.aq = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.aq, align 8, !tbaa !816
  %i.ar = add nsw i64 %1, -1                      ; 3 uses
  %i.as = getelementptr i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !205
  %i.au = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.ba, %.critedge ], [ %i.au, %.lr.ph.preheader ] ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 %.05559
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !205
  %i.ax = xor i8 %i.aw, %i.at
  %i.ay = and i8 %i.ax, 63
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.az = sub nsw i64 %i.ar, %.05559
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !816
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.ba = add nsw i64 %.05559, -1
  %i.bb = icmp sgt i64 %.05559, 0
  br i1 %i.bb, label %.lr.ph, label %.lr.ph62, !llvm.loop !817

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bc = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.bd = trunc nuw i64 %i.bc to i8
  %i.be = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.be, i8 %i.bd, i64 64, i1 false), !tbaa !205
  %i.bf = sub nsw i64 %1, %i.bc
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bf, %.lr.ph62 ], [ %i.bn, %bb.n ] ; 3 uses
  %i.bg = sub i64 %i.ar, %.061
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr i8, ptr %0, i64 %.061
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !205
  %i.bk = and i8 %i.bj, 63
  %i.bl = zext nneg i8 %i.bk to i64
end_hunk_3
begin_hunk_4_@ucs2lib_fastsearch:bb.a

bb.ap:                                            ; preds = %bb.an
  %i.em = tail call fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs2lib_rfind_char.exit

bb.aq:                                            ; preds = %bb.am
  %i.en = tail call fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs2lib_rfind_char.exit

bb.ar:                                            ; preds = %bb.y
  %i.eo = add nsw i64 %3, -1                      ; 9 uses
  %i.ep = load i16, ptr %2, align 2, !tbaa !208   ; 4 uses
  %i.eq = and i16 %i.ep, 63
  %i.er = zext nneg i16 %i.eq to i64
  %i.es = shl nuw i64 1, %i.er                    ; 2 uses
  %min.iters.check150 = icmp ult i64 %3, 5
  br i1 %min.iters.check150, label %.lr.ph.i71.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %bb.ar
  %n.vec152 = and i64 %i.eo, -4                   ; 2 uses
  %i.et = and i64 %i.eo, 3
  %i.eu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.es, i64 0
  %broadcast.splatinsert153 = insertelement <2 x i16> poison, i16 %i.ep, i64 0
  %broadcast.splat154 = shufflevector <2 x i16> %broadcast.splatinsert153, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <2 x i64> poison, i64 %i.eo, i64 0
  %broadcast.splat156 = shufflevector <2 x i64> %broadcast.splatinsert155, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ev = add nsw <2 x i64> %broadcast.splat156, <i64 0, i64 -1>
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph151
  %index158 = phi i64 [ 0, %vector.ph151 ], [ %index.next169, %vector.body157 ] ; 2 uses
  %vec.phi159 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph151 ], [ %i.fk, %vector.body157 ]
  %vec.phi160 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph151 ], [ %i.fl, %vector.body157 ]
  %vec.phi161 = phi <2 x i1> [ zeroinitializer, %vector.ph151 ], [ %i.fm, %vector.body157 ]
  %vec.phi162 = phi <2 x i1> [ zeroinitializer, %vector.ph151 ], [ %i.fn, %vector.body157 ]
  %vec.ind163 = phi <2 x i64> [ %i.ev, %vector.ph151 ], [ %vec.ind.next170, %vector.body157 ] ; 3 uses
  %vec.phi164 = phi <2 x i64> [ %i.eu, %vector.ph151 ], [ %i.fg, %vector.body157 ]
  %vec.phi165 = phi <2 x i64> [ zeroinitializer, %vector.ph151 ], [ %i.fh, %vector.body157 ]
  %step.add = add nsw <2 x i64> %vec.ind163, splat (i64 -2)
  %i.ew = sub i64 %i.eo, %index158
  %i.ex = getelementptr [2 x i8], ptr %2, i64 %i.ew ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 -2
  %i.ez = getelementptr i8, ptr %i.ex, i64 -6
  %wide.load166 = load <2 x i16>, ptr %i.ey, align 2, !tbaa !208
  %wide.load167 = load <2 x i16>, ptr %i.ez, align 2, !tbaa !208
  %reverse = shufflevector <2 x i16> %wide.load166, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse168 = shufflevector <2 x i16> %wide.load167, <2 x i16> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fa = and <2 x i16> %reverse, splat (i16 63)
  %i.fb = and <2 x i16> %reverse168, splat (i16 63)
  %i.fc = zext nneg <2 x i16> %i.fa to <2 x i64>
  %i.fd = zext nneg <2 x i16> %i.fb to <2 x i64>
  %i.fe = shl nuw <2 x i64> splat (i64 1), %i.fc
  %i.ff = shl nuw <2 x i64> splat (i64 1), %i.fd
  %i.fg = or <2 x i64> %i.fe, %vec.phi164         ; 2 uses
  %i.fh = or <2 x i64> %i.ff, %vec.phi165         ; 2 uses
  %i.fi = icmp eq <2 x i16> %reverse, %broadcast.splat154 ; 2 uses
  %i.fj = icmp eq <2 x i16> %reverse168, %broadcast.splat154 ; 2 uses
  %i.fk = select <2 x i1> %i.fi, <2 x i64> %vec.ind163, <2 x i64> %vec.phi159 ; 2 uses
  %i.fl = select <2 x i1> %i.fj, <2 x i64> %step.add, <2 x i64> %vec.phi160 ; 2 uses
  %i.fm = or <2 x i1> %vec.phi161, %i.fi          ; 2 uses
  %i.fn = or <2 x i1> %vec.phi162, %i.fj          ; 2 uses
  %index.next169 = add nuw i64 %index158, 4       ; 2 uses
  %vec.ind.next170 = add nsw <2 x i64> %vec.ind163, splat (i64 -4)
  %i.fo = icmp eq i64 %index.next169, %n.vec152
  br i1 %i.fo, label %middle.block171, label %vector.body157, !llvm.loop !830

middle.block171:                                  ; preds = %vector.body157
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fk, <2 x i64> %i.fl)
  %i.fp = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.fq = add nsw i64 %i.fp, -1
  %bin.rdx = or <2 x i1> %i.fn, %i.fm
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.fr = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not196 = icmp eq i2 %i.fr, 0
  %rdx.select = select i1 %.not196, i64 %i.eo, i64 %i.fq ; 2 uses
  %bin.rdx172 = or <2 x i64> %i.fh, %i.fg
  %i.fs = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx172) ; 2 uses
  %cmp.n173 = icmp eq i64 %i.eo, %n.vec152
  br i1 %cmp.n173, label %.preheader56.i, label %.lr.ph.i71.preheader

.lr.ph.i71.preheader:                             ; preds = %bb.ar, %middle.block171
  %.060.i.ph = phi i64 [ %i.eo, %bb.ar ], [ %rdx.select, %middle.block171 ]
  %.04759.i.ph = phi i64 [ %i.eo, %bb.ar ], [ %i.et, %middle.block171 ]
  %.04958.i.ph = phi i64 [ %i.es, %bb.ar ], [ %i.fs, %middle.block171 ]
  br label %.lr.ph.i71

.preheader56.i:                                   ; preds = %.lr.ph.i71, %middle.block171
  %.lcssa143 = phi i64 [ %i.fs, %middle.block171 ], [ %i.gz, %.lr.ph.i71 ] ; 2 uses
  %spec.select.i72.lcssa = phi i64 [ %rdx.select, %middle.block171 ], [ %spec.select.i72, %.lr.ph.i71 ]
  %i.ft = sub i64 %1, %3                          ; 2 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ax
  %.14865.us.i = phi i64 [ %i.gs, %bb.ax ], [ %i.ft, %.preheader56.i ] ; 5 uses
  %i.fv = getelementptr [2 x i8], ptr %0, i64 %.14865.us.i ; 4 uses
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !208
  %i.fx = icmp eq i16 %i.fw, %i.ep
  br i1 %i.fx, label %.preheader.us.i74, label %bb.as

bb.as:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i73 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i73, label %ucs2lib_rfind_char.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fy = getelementptr i8, ptr %i.fv, i64 -2
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !208
  %i.ga = and i16 %i.fz, 63
  %i.gb = zext nneg i16 %i.ga to i64
  %i.gc = shl nuw i64 1, %i.gb
  %i.gd = and i64 %i.gc, %.lcssa143
  %.not51.us.i = icmp eq i64 %i.gd, 0
  %i.ge = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ax

.preheader.us.i74:                                ; preds = %.lr.ph66.split.us.i, %bb.au
  %.04662.us.i = phi i64 [ %i.gj, %bb.au ], [ %i.eo, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gf = getelementptr [2 x i8], ptr %i.fv, i64 %.04662.us.i
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !208
  %i.gh = getelementptr [2 x i8], ptr %2, i64 %.04662.us.i
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !208
  %.not52.us.i = icmp eq i16 %i.gg, %i.gi
  br i1 %.not52.us.i, label %bb.au, label %.thread.us.i

bb.au:                                            ; preds = %.preheader.us.i74
  %i.gj = add nsw i64 %.04662.us.i, -1
  %i.gk = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.gk, label %.preheader.us.i74, label %ucs2lib_rfind_char.exit, !llvm.loop !831

.thread.us.i:                                     ; preds = %.preheader.us.i74
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.thread.us.i
  %i.gl = getelementptr i8, ptr %i.fv, i64 -2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !208
  %i.gn = and i16 %i.gm, 63
  %i.go = zext nneg i16 %i.gn to i64
  %i.gp = shl nuw i64 1, %i.go
  %i.gq = and i64 %i.gp, %.lcssa143
  %.not54.us.i = icmp eq i64 %i.gq, 0
  br i1 %.not54.us.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.thread.us.i
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.at
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i72.lcssa, %bb.aw ], [ %i.ge, %bb.at ], [ %3, %bb.av ]
  %i.gr = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.gs = add nsw i64 %i.gr, -1
  %i.gt = icmp sgt i64 %i.gr, 0
  br i1 %i.gt, label %.lr.ph66.split.us.i, label %ucs2lib_rfind_char.exit, !llvm.loop !832

.lr.ph.i71:                                       ; preds = %.lr.ph.i71.preheader, %.lr.ph.i71
  %.060.i = phi i64 [ %spec.select.i72, %.lr.ph.i71 ], [ %.060.i.ph, %.lr.ph.i71.preheader ]
  %.04759.i = phi i64 [ %i.hb, %.lr.ph.i71 ], [ %.04759.i.ph, %.lr.ph.i71.preheader ] ; 3 uses
  %.04958.i = phi i64 [ %i.gz, %.lr.ph.i71 ], [ %.04958.i.ph, %.lr.ph.i71.preheader ]
  %i.gu = getelementptr [2 x i8], ptr %2, i64 %.04759.i
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !208 ; 2 uses
  %i.gw = and i16 %i.gv, 63
  %i.gx = zext nneg i16 %i.gw to i64
  %i.gy = shl nuw i64 1, %i.gx
  %i.gz = or i64 %i.gy, %.04958.i                 ; 2 uses
  %i.ha = icmp eq i16 %i.gv, %i.ep
  %i.hb = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i72 = select i1 %i.ha, i64 %i.hb, i64 %.060.i ; 2 uses
  %i.hc = icmp samesign ugt i64 %.04759.i, 1
  br i1 %i.hc, label %.lr.ph.i71, label %.preheader56.i, !llvm.loop !833

ucs2lib_rfind_char.exit:                          ; preds = %bb.aj, %._crit_edge104.us.thread.i.loopexit, %bb.ax, %bb.as, %bb.au, %bb.j, %bb.i, %bb.s, %bb.x, %bb.w, %.lr.ph.i, %middle.block190, %.preheader56.i, %.loopexit.i, %bb.u, %bb.p, %bb.d, %bb.a, %bb.b, %bb.aq, %bb.ap, %bb.ao, %bb.f
  %.0 = phi i64 [ %4, %bb.w ], [ -1, %bb.a ], [ %i.f, %bb.f ], [ -1, %bb.d ], [ -1, %bb.ax ], [ -1, %.preheader56.i ], [ %spec.select.i, %.lr.ph.i ], [ %i.el, %bb.ao ], [ %i.em, %bb.ap ], [ %i.en, %bb.aq ], [ -1, %bb.b ], [ %i.as, %bb.u ], [ -1, %bb.s ], [ %i.af, %bb.p ], [ %.14865.us.i, %bb.au ], [ %i.ef, %.loopexit.i ], [ -1, %bb.i ], [ %i.be, %middle.block190 ], [ %.1.i, %bb.x ], [ %i.s, %bb.j ], [ -1, %bb.as ], [ %4, %bb.aj ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs2lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [2 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs2lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs2lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs2lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [2 x i8], ptr %2, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !208  ; 4 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i16> %broadcast.splatinsert252, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [2 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %wide.load = load <2 x i16>, ptr %i.f, align 2, !tbaa !208 ; 2 uses
  %wide.load257 = load <2 x i16>, ptr %i.g, align 2, !tbaa !208 ; 2 uses
  %i.h = and <2 x i16> %wide.load, splat (i16 63)
  %i.i = and <2 x i16> %wide.load257, splat (i16 63)
  %i.j = zext nneg <2 x i16> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i16> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i16> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i16> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !834

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
  %i.aa = and i16 %i.d, 63
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.l
  %.092148.us = phi i64 [ %i.bj, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.096147.us = phi i64 [ %.298.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %.0101146.us = phi i64 [ %.2103.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %i.af = getelementptr [2 x i8], ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !208
  %i.ah = icmp eq i16 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !208
  %i.ak = and i16 %i.aj, 63
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.l

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr [2 x i8], ptr %i.bk, i64 %.0139.us
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !208
  %i.ar = getelementptr [2 x i8], ptr %2, i64 %.0139.us
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !208
  %.not120.us = icmp eq i16 %i.aq, %i.as
  br i1 %.not120.us, label %bb.d, label %._crit_edge141.us

bb.d:                                             ; preds = %bb.c
  %i.at = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !835

._crit_edge141.us:                                ; preds = %bb.c
  %i.au = icmp eq i64 %.0139.us, %i.b
  br i1 %i.au, label %._crit_edge141.us.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge141.us
  %i.av = add i64 %.096147.us, 1
  %i.aw = add i64 %i.av, %.0139.us                ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %i.ae
  %i.ay = sub i64 %i.a, %.092148.us
  %i.az = icmp sgt i64 %i.ay, 2000
  %or.cond.us = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.af, i64 2
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !208
  %i.bc = and i16 %i.bb, 63
  %i.bd = zext nneg i16 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.ad
  %.not122.us = icmp eq i64 %i.bf, 0
  br i1 %.not122.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.099.pn.us = phi i64 [ %.1100.lcssa, %bb.h ], [ %3, %bb.g ]
  %.193.us = add i64 %.099.pn.us, %.092148.us
  br label %bb.l

._crit_edge141.us.thread:                         ; preds = %bb.d, %._crit_edge141.us
  br i1 %.not124, label %bb.j, label %.thread.thread

bb.j:                                             ; preds = %._crit_edge141.us.thread
  %i.bg = add i64 %.0101146.us, 1                 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %4
  br i1 %i.bh, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i64 %.092148.us, %i.b
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.b, %bb.a
  %.2103.us = phi i64 [ %.0101146.us, %bb.a ], [ %.0101146.us, %bb.b ], [ %.0101146.us, %bb.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.298.us = phi i64 [ %.096147.us, %bb.a ], [ %.096147.us, %bb.b ], [ %i.aw, %bb.i ], [ %.096147.us, %bb.k ]
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.i ], [ %i.bi, %bb.k ]
  %i.bj = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bj, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !836

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bk = getelementptr [2 x i8], ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bu, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bq, %.lr.ph ], [ %i.x, %middle.block ]
  %.099135 = phi i64 [ %.1100, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bl = getelementptr [2 x i8], ptr %2, i64 %.094137
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !208 ; 2 uses
  %i.bn = and i16 %i.bm, 63
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = or i64 %i.bp, %.095136                  ; 2 uses
  %i.br = icmp eq i16 %i.bm, %i.d
  %i.bs = xor i64 %.094137, -1
  %i.bt = add nsw i64 %i.b, %i.bs
  %.1100 = select i1 %i.br, i64 %i.bt, i64 %.099135 ; 2 uses
  %i.bu = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !837

.split.us:                                        ; preds = %bb.e
  %i.bv = getelementptr [2 x i8], ptr %0, i64 %.092148.us ; 3 uses
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc range(i64 -4611686018427387904, 4611686018427387904) i64 @ucs2lib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0101146.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs2lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %ucs2lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %ucs2lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %ucs2lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr [2 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @ucs2lib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %ucs2lib__two_way_count.exit, label %.lr.ph.i

ucs2lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %ucs2lib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %ucs2lib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs2lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !838
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !841
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !208  ; 2 uses
  %i.e = getelementptr [2 x i8], ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr [2 x i8], ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208  ; 2 uses
  %i.h = icmp ult i16 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i16 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !842

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr [2 x i8], ptr %0, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !208  ; 2 uses
  %i.u = getelementptr [2 x i8], ptr %0, i64 %.03339.i.i
  %i.v = getelementptr [2 x i8], ptr %i.u, i64 %.02941.i.i
  %i.w = load i16, ptr %i.v, align 2, !tbaa !208  ; 2 uses
  %i.x = icmp ult i16 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i16 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %ucs2lib__factorize.exit, !llvm.loop !842

ucs2lib__factorize.exit:                          ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !193
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !843
  %i.ak = getelementptr [2 x i8], ptr %0, i64 %.0.sroa.speculated.i
  %i.al = shl i64 %..i, 1
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %i.al)
  %i.am = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = getelementptr i8, ptr %2, i64 40
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !844
  br i1 %i.am, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %ucs2lib__factorize.exit
  %i.ap = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ap)
  %i.aq = add i64 %., 1
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !845
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %ucs2lib__factorize.exit
  %i.ar = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.ar, align 8, !tbaa !846
  %i.as = add nsw i64 %1, -1                      ; 3 uses
  %i.at = getelementptr [2 x i8], ptr %0, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !208
  %i.av = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.bb, %.critedge ], [ %i.av, %.lr.ph.preheader ] ; 4 uses
  %i.aw = getelementptr [2 x i8], ptr %0, i64 %.05559
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !208
  %i.ay = xor i16 %i.ax, %i.au
  %i.az = and i16 %i.ay, 63
  %.not = icmp eq i16 %i.az, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.ba = sub nsw i64 %i.as, %.05559
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !846
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.bb = add nsw i64 %.05559, -1
  %i.bc = icmp sgt i64 %.05559, 0
  br i1 %i.bc, label %.lr.ph, label %.lr.ph62, !llvm.loop !847

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bd = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.be = trunc nuw i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bf, i8 %i.be, i64 64, i1 false), !tbaa !205
  %i.bg = sub nsw i64 %1, %i.bd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bg, %.lr.ph62 ], [ %i.bo, %bb.n ] ; 3 uses
  %i.bh = sub i64 %i.as, %.061
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = getelementptr [2 x i8], ptr %0, i64 %.061
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !208
  %i.bl = and i16 %i.bk, 63
end_hunk_4
begin_hunk_5_@ucs4lib_fastsearch:bb.a

bb.as:                                            ; preds = %bb.aq
  %i.ez = tail call fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4)
  br label %ucs4lib_find_char.exit

bb.at:                                            ; preds = %bb.ap
  %i.fa = tail call fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5)
  br label %ucs4lib_find_char.exit

bb.au:                                            ; preds = %bb.ab
  %i.fb = add nsw i64 %3, -1                      ; 9 uses
  %i.fc = load i32, ptr %2, align 4, !tbaa !7     ; 4 uses
  %i.fd = and i32 %i.fc, 63
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe                    ; 2 uses
  %min.iters.check165 = icmp ult i64 %3, 7
  br i1 %min.iters.check165, label %.lr.ph.i74.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %bb.au
  %n.vec167 = and i64 %i.fb, -4                   ; 2 uses
  %i.fg = and i64 %i.fb, 3
  %i.fh = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ff, i64 0
  %broadcast.splatinsert168 = insertelement <2 x i32> poison, i32 %i.fc, i64 0
  %broadcast.splat169 = shufflevector <2 x i32> %broadcast.splatinsert168, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert170 = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %broadcast.splat171 = shufflevector <2 x i64> %broadcast.splatinsert170, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fi = add nsw <2 x i64> %broadcast.splat171, <i64 0, i64 -1>
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph166
  %index173 = phi i64 [ 0, %vector.ph166 ], [ %index.next184, %vector.body172 ] ; 2 uses
  %vec.phi174 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph166 ], [ %i.fx, %vector.body172 ]
  %vec.phi175 = phi <2 x i64> [ splat (i64 9223372036854775807), %vector.ph166 ], [ %i.fy, %vector.body172 ]
  %vec.phi176 = phi <2 x i1> [ zeroinitializer, %vector.ph166 ], [ %i.fz, %vector.body172 ]
  %vec.phi177 = phi <2 x i1> [ zeroinitializer, %vector.ph166 ], [ %i.ga, %vector.body172 ]
  %vec.ind178 = phi <2 x i64> [ %i.fi, %vector.ph166 ], [ %vec.ind.next185, %vector.body172 ] ; 3 uses
  %vec.phi179 = phi <2 x i64> [ %i.fh, %vector.ph166 ], [ %i.ft, %vector.body172 ]
  %vec.phi180 = phi <2 x i64> [ zeroinitializer, %vector.ph166 ], [ %i.fu, %vector.body172 ]
  %step.add = add nsw <2 x i64> %vec.ind178, splat (i64 -2)
  %i.fj = sub i64 %i.fb, %index173
  %i.fk = getelementptr [4 x i8], ptr %2, i64 %i.fj ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -4
  %i.fm = getelementptr i8, ptr %i.fk, i64 -12
  %wide.load181 = load <2 x i32>, ptr %i.fl, align 4, !tbaa !7
  %wide.load182 = load <2 x i32>, ptr %i.fm, align 4, !tbaa !7
  %reverse = shufflevector <2 x i32> %wide.load181, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %reverse183 = shufflevector <2 x i32> %wide.load182, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fn = and <2 x i32> %reverse, splat (i32 63)
  %i.fo = and <2 x i32> %reverse183, splat (i32 63)
  %i.fp = zext nneg <2 x i32> %i.fn to <2 x i64>
  %i.fq = zext nneg <2 x i32> %i.fo to <2 x i64>
  %i.fr = shl nuw <2 x i64> splat (i64 1), %i.fp
  %i.fs = shl nuw <2 x i64> splat (i64 1), %i.fq
  %i.ft = or <2 x i64> %i.fr, %vec.phi179         ; 2 uses
  %i.fu = or <2 x i64> %i.fs, %vec.phi180         ; 2 uses
  %i.fv = icmp eq <2 x i32> %reverse, %broadcast.splat169 ; 2 uses
  %i.fw = icmp eq <2 x i32> %reverse183, %broadcast.splat169 ; 2 uses
  %i.fx = select <2 x i1> %i.fv, <2 x i64> %vec.ind178, <2 x i64> %vec.phi174 ; 2 uses
  %i.fy = select <2 x i1> %i.fw, <2 x i64> %step.add, <2 x i64> %vec.phi175 ; 2 uses
  %i.fz = or <2 x i1> %vec.phi176, %i.fv          ; 2 uses
  %i.ga = or <2 x i1> %vec.phi177, %i.fw          ; 2 uses
  %index.next184 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next185 = add nsw <2 x i64> %vec.ind178, splat (i64 -4)
  %i.gb = icmp eq i64 %index.next184, %n.vec167
  br i1 %i.gb, label %middle.block186, label %vector.body172, !llvm.loop !860

middle.block186:                                  ; preds = %vector.body172
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.fx, <2 x i64> %i.fy)
  %i.gc = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax)
  %i.gd = add nsw i64 %i.gc, -1
  %bin.rdx = or <2 x i1> %i.ga, %i.fz
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.ge = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not211 = icmp eq i2 %i.ge, 0
  %rdx.select = select i1 %.not211, i64 %i.fb, i64 %i.gd ; 2 uses
  %bin.rdx187 = or <2 x i64> %i.fu, %i.ft
  %i.gf = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx187) ; 2 uses
  %cmp.n188 = icmp eq i64 %i.fb, %n.vec167
  br i1 %cmp.n188, label %.preheader56.i, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %bb.au, %middle.block186
  %.060.i.ph = phi i64 [ %i.fb, %bb.au ], [ %rdx.select, %middle.block186 ]
  %.04759.i.ph = phi i64 [ %i.fb, %bb.au ], [ %i.fg, %middle.block186 ]
  %.04958.i.ph = phi i64 [ %i.ff, %bb.au ], [ %i.gf, %middle.block186 ]
  br label %.lr.ph.i74

.preheader56.i:                                   ; preds = %.lr.ph.i74, %middle.block186
  %.lcssa158 = phi i64 [ %i.gf, %middle.block186 ], [ %i.hm, %.lr.ph.i74 ] ; 2 uses
  %spec.select.i75.lcssa = phi i64 [ %rdx.select, %middle.block186 ], [ %spec.select.i75, %.lr.ph.i74 ]
  %i.gg = sub i64 %1, %3                          ; 2 uses
  %i.gh = icmp sgt i64 %i.gg, -1
  br i1 %i.gh, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit

.lr.ph66.split.us.i:                              ; preds = %.preheader56.i, %bb.ba
  %.14865.us.i = phi i64 [ %i.hf, %bb.ba ], [ %i.gg, %.preheader56.i ] ; 5 uses
  %i.gi = getelementptr [4 x i8], ptr %0, i64 %.14865.us.i ; 4 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !7
  %i.gk = icmp eq i32 %i.gj, %i.fc
  br i1 %i.gk, label %.preheader.us.i77, label %bb.av

bb.av:                                            ; preds = %.lr.ph66.split.us.i
  %.not.us.i76 = icmp eq i64 %.14865.us.i, 0
  br i1 %.not.us.i76, label %ucs4lib_find_char.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gl = getelementptr i8, ptr %i.gi, i64 -4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !7
  %i.gn = and i32 %i.gm, 63
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = shl nuw i64 1, %i.go
  %i.gq = and i64 %i.gp, %.lcssa158
  %.not51.us.i = icmp eq i64 %i.gq, 0
  %i.gr = select i1 %.not51.us.i, i64 %3, i64 0
  br label %bb.ba

.preheader.us.i77:                                ; preds = %.lr.ph66.split.us.i, %bb.ax
  %.04662.us.i = phi i64 [ %i.gw, %bb.ax ], [ %i.fb, %.lr.ph66.split.us.i ] ; 4 uses
  %i.gs = getelementptr [4 x i8], ptr %i.gi, i64 %.04662.us.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !7
  %i.gu = getelementptr [4 x i8], ptr %2, i64 %.04662.us.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !7
  %.not52.us.i = icmp eq i32 %i.gt, %i.gv
  br i1 %.not52.us.i, label %bb.ax, label %.thread.us.i

bb.ax:                                            ; preds = %.preheader.us.i77
  %i.gw = add nsw i64 %.04662.us.i, -1
  %i.gx = icmp sgt i64 %.04662.us.i, 1
  br i1 %i.gx, label %.preheader.us.i77, label %ucs4lib_find_char.exit, !llvm.loop !861

.thread.us.i:                                     ; preds = %.preheader.us.i77
  %.not53.us.i = icmp eq i64 %.14865.us.i, 0
  br i1 %.not53.us.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.thread.us.i
  %i.gy = getelementptr i8, ptr %i.gi, i64 -4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !7
  %i.ha = and i32 %i.gz, 63
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = shl nuw i64 1, %i.hb
  %i.hd = and i64 %i.hc, %.lcssa158
  %.not54.us.i = icmp eq i64 %i.hd, 0
  br i1 %.not54.us.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %.thread.us.i
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.aw
  %spec.select.lcssa.sink.i = phi i64 [ %spec.select.i75.lcssa, %bb.az ], [ %i.gr, %bb.aw ], [ %3, %bb.ay ]
  %i.he = sub nsw i64 %.14865.us.i, %spec.select.lcssa.sink.i ; 2 uses
  %i.hf = add nsw i64 %i.he, -1
  %i.hg = icmp sgt i64 %i.he, 0
  br i1 %i.hg, label %.lr.ph66.split.us.i, label %ucs4lib_find_char.exit, !llvm.loop !862

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %.lr.ph.i74
  %.060.i = phi i64 [ %spec.select.i75, %.lr.ph.i74 ], [ %.060.i.ph, %.lr.ph.i74.preheader ]
  %.04759.i = phi i64 [ %i.ho, %.lr.ph.i74 ], [ %.04759.i.ph, %.lr.ph.i74.preheader ] ; 3 uses
  %.04958.i = phi i64 [ %i.hm, %.lr.ph.i74 ], [ %.04958.i.ph, %.lr.ph.i74.preheader ]
  %i.hh = getelementptr [4 x i8], ptr %2, i64 %.04759.i
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !7  ; 2 uses
  %i.hj = and i32 %i.hi, 63
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = shl nuw i64 1, %i.hk
  %i.hm = or i64 %i.hl, %.04958.i                 ; 2 uses
  %i.hn = icmp eq i32 %i.hi, %i.fc
  %i.ho = add nsw i64 %.04759.i, -1               ; 2 uses
  %spec.select.i75 = select i1 %i.hn, i64 %i.ho, i64 %.060.i ; 2 uses
  %i.hp = icmp samesign ugt i64 %.04759.i, 1
  br i1 %i.hp, label %.lr.ph.i74, label %.preheader56.i, !llvm.loop !863

ucs4lib_find_char.exit:                           ; preds = %bb.am, %._crit_edge104.us.thread.i.loopexit, %bb.ba, %bb.av, %bb.ax, %bb.m, %bb.l, %bb.v, %bb.i, %bb.aa, %bb.z, %.lr.ph.i69, %middle.block205, %.preheader56.i, %.loopexit.i, %bb.x, %bb.s, %bb.h, %bb.g, %bb.f, %.preheader.i, %bb.c, %bb.a, %bb.at, %bb.as, %bb.ar
  %.0 = phi i64 [ -1, %bb.i ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.ba ], [ %spec.select.i, %.lr.ph.i69 ], [ -1, %.preheader56.i ], [ -1, %bb.v ], [ %i.ey, %bb.ar ], [ %i.ez, %bb.as ], [ %i.fa, %bb.at ], [ %i.k, %bb.g ], [ -1, %bb.f ], [ %i.q, %bb.h ], [ -1, %.preheader.i ], [ %i.be, %bb.x ], [ %.14865.us.i, %bb.ax ], [ %i.ar, %bb.s ], [ %4, %bb.z ], [ %i.es, %.loopexit.i ], [ -1, %bb.l ], [ %i.bq, %middle.block205 ], [ %.1.i, %bb.aa ], [ %i.ae, %bb.m ], [ -1, %bb.av ], [ %.066110.us.i, %._crit_edge104.us.thread.i.loopexit ], [ %4, %bb.am ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way_find(ptr nofree noundef readonly %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3) unnamed_addr #25 {
bb.a:
  %4 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %4)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i64 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib__two_way_count(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #25 {
bb.a:
  %5 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef %2, i64 noundef %3, ptr noundef %5)
  %i.a = call fastcc i64 @ucs4lib__two_way(ptr noundef %0, i64 noundef %1, ptr noundef %5) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = icmp eq i64 %4, 1
  br i1 %i.c, label %._crit_edge, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph38
  %i.d = add i64 %i.f, 1                          ; 2 uses
  %i.e = icmp eq i64 %i.d, %4
  br i1 %i.e, label %._crit_edge, label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i64 [ %i.d, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0173037 = phi i64 [ %i.i, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = phi i64 [ %i.l, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %i.h = add i64 %.0173037, %3
  %i.i = add i64 %i.h, %i.g                       ; 3 uses
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.i
  %i.k = sub i64 %1, %i.i
  %i.l = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.j, i64 noundef %i.k, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph38, %.lr.ph, %.lr.ph.preheader, %bb.a
  %.120.ph = phi i64 [ 0, %bb.a ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %i.f, %.lr.ph38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i64 %.120.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @ucs4lib_adaptive_find(ptr noundef %0, i64 noundef range(i64 2500, -9223372036854775808) %1, ptr noundef %2, i64 noundef range(i64 6, -9223372036854775808) %3, i64 noundef range(i64 1, 0) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #25 {
.lr.ph.preheader:
  %6 = alloca %struct.ucs4lib__pre, align 8       ; 5 uses
  %7 = alloca %struct.ucs4lib__pre, align 8       ; 4 uses
  %i.a = sub nsw i64 %1, %3                       ; 5 uses
  %i.b = add nsw i64 %3, -1                       ; 11 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 4 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %i.b
  %n.vec = and i64 %i.b, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert252 = insertelement <2 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat253 = shufflevector <2 x i32> %broadcast.splatinsert252, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.lr.ph.preheader ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.n, %vector.body ]
  %vec.phi254 = phi <2 x i64> [ zeroinitializer, %.lr.ph.preheader ], [ %i.o, %vector.body ]
  %vec.phi255 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.u, %vector.body ]
  %vec.phi256 = phi <2 x i64> [ splat (i64 9223372036854775807), %.lr.ph.preheader ], [ %i.v, %vector.body ]
  %i.f = getelementptr [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %wide.load = load <2 x i32>, ptr %i.f, align 4, !tbaa !7 ; 2 uses
  %wide.load257 = load <2 x i32>, ptr %i.g, align 4, !tbaa !7 ; 2 uses
  %i.h = and <2 x i32> %wide.load, splat (i32 63)
  %i.i = and <2 x i32> %wide.load257, splat (i32 63)
  %i.j = zext nneg <2 x i32> %i.h to <2 x i64>
  %i.k = zext nneg <2 x i32> %i.i to <2 x i64>
  %i.l = shl nuw <2 x i64> splat (i64 1), %i.j
  %i.m = shl nuw <2 x i64> splat (i64 1), %i.k
  %i.n = or <2 x i64> %i.l, %vec.phi              ; 2 uses
  %i.o = or <2 x i64> %i.m, %vec.phi254           ; 2 uses
  %i.p = icmp eq <2 x i32> %wide.load, %broadcast.splat253
  %i.q = icmp eq <2 x i32> %wide.load257, %broadcast.splat253
  %i.r = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.s = add nsw <2 x i64> %broadcast.splat, %i.r
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.t = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.u = select <2 x i1> %i.p, <2 x i64> %i.s, <2 x i64> %vec.phi255 ; 2 uses
  %i.v = select <2 x i1> %i.q, <2 x i64> %i.t, <2 x i64> %vec.phi256 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !864

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.o, %i.n
  %i.x = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %rdx.minmax = tail call <2 x i64> @llvm.smin.v2i64(<2 x i64> %i.u, <2 x i64> %i.v)
  %i.y = tail call i64 @llvm.vector.reduce.smin.v2i64(<2 x i64> %rdx.minmax) ; 2 uses
  %.not = icmp eq i64 %i.y, 9223372036854775807
  %i.z = select i1 %.not, i64 %i.b, i64 %i.y      ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa = phi i64 [ %i.x, %middle.block ], [ %i.bq, %.lr.ph ]
  %.1100.lcssa = phi i64 [ %i.z, %middle.block ], [ %.1100, %.lr.ph ]
  %i.aa = and i32 %i.d, 63
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %.lcssa, %i.ac                   ; 2 uses
  %.not145 = icmp slt i64 %i.a, 0
  br i1 %.not145, label %.loopexit, label %.lr.ph151.split.us.preheader

.lr.ph151.split.us.preheader:                     ; preds = %._crit_edge
  %i.ae = lshr i64 %3, 2
  %.not124 = icmp eq i32 %5, 0                    ; 2 uses
  br label %.lr.ph151.split.us

.lr.ph151.split.us:                               ; preds = %.lr.ph151.split.us.preheader, %bb.l
  %.092148.us = phi i64 [ %i.bj, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 13 uses
  %.096147.us = phi i64 [ %.298.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 4 uses
  %.0101146.us = phi i64 [ %.2103.us, %bb.l ], [ 0, %.lr.ph151.split.us.preheader ] ; 6 uses
  %i.af = getelementptr [4 x i8], ptr %i.e, i64 %.092148.us ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = icmp eq i32 %i.ag, %i.d
  br i1 %i.ah, label %.preheader.us, label %bb.a

bb.a:                                             ; preds = %.lr.ph151.split.us
  %.not118.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not118.not.us, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = and i32 %i.aj, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, %i.ad
  %.not119.us = icmp eq i64 %i.an, 0
  %i.ao = select i1 %.not119.us, i64 %3, i64 0
  %spec.select.us = add i64 %i.ao, %.092148.us
  br label %bb.l

bb.c:                                             ; preds = %.preheader.us, %bb.d
  %.0139.us = phi i64 [ 0, %.preheader.us ], [ %i.at, %bb.d ] ; 5 uses
  %i.ap = getelementptr [4 x i8], ptr %i.bk, i64 %.0139.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = getelementptr [4 x i8], ptr %2, i64 %.0139.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7
  %.not120.us = icmp eq i32 %i.aq, %i.as
  br i1 %.not120.us, label %bb.d, label %._crit_edge141.us

bb.d:                                             ; preds = %bb.c
  %i.at = add nuw nsw i64 %.0139.us, 1            ; 2 uses
  %exitcond225.not = icmp eq i64 %i.at, %i.b
  br i1 %exitcond225.not, label %._crit_edge141.us.thread, label %bb.c, !llvm.loop !865

._crit_edge141.us:                                ; preds = %bb.c
  %i.au = icmp eq i64 %.0139.us, %i.b
  br i1 %i.au, label %._crit_edge141.us.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge141.us
  %i.av = add i64 %.096147.us, 1
  %i.aw = add i64 %i.av, %.0139.us                ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, %i.ae
  %i.ay = sub i64 %i.a, %.092148.us
  %i.az = icmp sgt i64 %i.ay, 2000
  %or.cond.us = select i1 %i.ax, i1 %i.az, i1 false
  br i1 %or.cond.us, label %.split.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not121.not.us = icmp slt i64 %.092148.us, %i.a
  br i1 %.not121.not.us, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %i.af, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = and i32 %i.bb, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = shl nuw i64 1, %i.bd
  %i.bf = and i64 %i.be, %i.ad
  %.not122.us = icmp eq i64 %i.bf, 0
  br i1 %.not122.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.099.pn.us = phi i64 [ %.1100.lcssa, %bb.h ], [ %3, %bb.g ]
  %.193.us = add i64 %.099.pn.us, %.092148.us
  br label %bb.l

._crit_edge141.us.thread:                         ; preds = %bb.d, %._crit_edge141.us
  br i1 %.not124, label %bb.j, label %.thread.thread

bb.j:                                             ; preds = %._crit_edge141.us.thread
  %i.bg = add i64 %.0101146.us, 1                 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %4
  br i1 %i.bh, label %.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = add i64 %.092148.us, %i.b
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.b, %bb.a
  %.2103.us = phi i64 [ %.0101146.us, %bb.a ], [ %.0101146.us, %bb.b ], [ %.0101146.us, %bb.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.298.us = phi i64 [ %.096147.us, %bb.a ], [ %.096147.us, %bb.b ], [ %i.aw, %bb.i ], [ %.096147.us, %bb.k ]
  %.3.us = phi i64 [ %.092148.us, %bb.a ], [ %spec.select.us, %bb.b ], [ %.193.us, %bb.i ], [ %i.bi, %bb.k ]
  %i.bj = add i64 %.3.us, 1                       ; 2 uses
  %.not.us = icmp sgt i64 %i.bj, %i.a
  br i1 %.not.us, label %.loopexit, label %.lr.ph151.split.us, !llvm.loop !866

.preheader.us:                                    ; preds = %.lr.ph151.split.us
  %i.bk = getelementptr [4 x i8], ptr %0, i64 %.092148.us
  br label %bb.c

.lr.ph:                                           ; preds = %middle.block, %.lr.ph
  %.094137 = phi i64 [ %i.bu, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.095136 = phi i64 [ %i.bq, %.lr.ph ], [ %i.x, %middle.block ]
  %.099135 = phi i64 [ %.1100, %.lr.ph ], [ %i.z, %middle.block ]
  %i.bl = getelementptr [4 x i8], ptr %2, i64 %.094137
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7  ; 2 uses
  %i.bn = and i32 %i.bm, 63
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw i64 1, %i.bo
  %i.bq = or i64 %i.bp, %.095136                  ; 2 uses
  %i.br = icmp eq i32 %i.bm, %i.d
  %i.bs = xor i64 %.094137, -1
  %i.bt = add nsw i64 %i.b, %i.bs
  %.1100 = select i1 %i.br, i64 %i.bt, i64 %.099135 ; 2 uses
  %i.bu = add nuw nsw i64 %.094137, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !867

.split.us:                                        ; preds = %bb.e
  %i.bv = getelementptr [4 x i8], ptr %0, i64 %.092148.us ; 3 uses
  %i.bw = sub i64 %1, %.092148.us                 ; 3 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %7)
  %i.bx = call fastcc range(i64 -2305843009213693952, 2305843009213693952) i64 @ucs4lib__two_way(ptr noundef readonly %i.bv, i64 noundef %i.bw, ptr noundef %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = add i64 %i.bx, %.092148.us
  %i.ca = select i1 %i.by, i64 -1, i64 %i.bz
  br label %.thread.thread

bb.n:                                             ; preds = %.split.us
  %i.cb = sub i64 %4, %.0101146.us                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @ucs4lib__preprocess(ptr noundef nonnull %2, i64 noundef range(i64 6, -9223372036854775808) %3, ptr noundef %6)
  %i.cc = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.bv, i64 noundef %i.bw, ptr noundef %6) ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %ucs4lib__two_way_count.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.ce = icmp eq i64 %i.cb, 1
  br i1 %i.ce, label %ucs4lib__two_way_count.exit, label %.lr.ph250

.lr.ph.i:                                         ; preds = %.lr.ph250
  %i.cf = add i64 %i.ch, 1                        ; 2 uses
  %i.cg = icmp eq i64 %i.cf, %i.cb
  br i1 %i.cg, label %ucs4lib__two_way_count.exit, label %.lr.ph250

.lr.ph250:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ch = phi i64 [ %i.cf, %.lr.ph.i ], [ 1, %.lr.ph.i.preheader ] ; 2 uses
  %.01730.i249 = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = phi i64 [ %i.cn, %.lr.ph.i ], [ %i.cc, %.lr.ph.i.preheader ]
  %i.cj = add i64 %i.ci, %3
  %i.ck = add i64 %i.cj, %.01730.i249             ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.bv, i64 %i.ck
  %i.cm = sub i64 %i.bw, %i.ck
  %i.cn = call fastcc i64 @ucs4lib__two_way(ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %6) ; 2 uses
  %i.co = icmp eq i64 %i.cn, -1
  br i1 %i.co, label %ucs4lib__two_way_count.exit, label %.lr.ph.i

ucs4lib__two_way_count.exit:                      ; preds = %.lr.ph250, %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %.120.ph.i = phi i64 [ 0, %bb.n ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cb, %.lr.ph.i ], [ %i.ch, %.lr.ph250 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.cp = add i64 %.120.ph.i, %.0101146.us
  br label %.thread.thread

.loopexit:                                        ; preds = %bb.l, %._crit_edge
  %.3104 = phi i64 [ 0, %._crit_edge ], [ %.2103.us, %bb.l ]
  %i.cq = icmp eq i32 %5, 0
  %i.cr = select i1 %i.cq, i64 %.3104, i64 -1
  br label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge141.us.thread, %bb.j, %bb.m, %ucs4lib__two_way_count.exit, %.loopexit
  %i.cs = phi i64 [ %i.cr, %.loopexit ], [ %i.ca, %bb.m ], [ %i.cp, %ucs4lib__two_way_count.exit ], [ %4, %bb.j ], [ %.092148.us, %._crit_edge141.us.thread ]
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ucs4lib__preprocess(ptr noundef %0, i64 noundef range(i64 6, -9223372036854775808) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #26 {
bb.a:
  store ptr %0, ptr %2, align 8, !tbaa !868
  %i.a = getelementptr i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8, !tbaa !870
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.f, %bb.a
  %i.b = phi i64 [ %i.p, %bb.f ], [ 1, %bb.a ]
  %.042.us.i.i = phi i64 [ %.1.us.i.i, %bb.f ], [ 1, %bb.a ] ; 3 uses
  %.02941.us.i.i = phi i64 [ %.130.us.i.i, %bb.f ], [ 0, %bb.a ] ; 3 uses
  %.03140.us.i.i = phi i64 [ %.132.us.i.i, %bb.f ], [ 1, %bb.a ] ; 4 uses
  %.03339.us.i.i = phi i64 [ %.134.us.i.i, %bb.f ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr [4 x i8], ptr %0, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %0, i64 %.03339.us.i.i
  %i.f = getelementptr [4 x i8], ptr %i.e, i64 %.02941.us.i.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = icmp ult i32 %i.d, %i.g
  br i1 %i.h, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.split.us.i.i
  %i.i = icmp eq i32 %i.d, %i.g
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add i64 %.03140.us.i.i, 1
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = add i64 %.02941.us.i.i, 1                ; 2 uses
  %.not37.us.i.i = icmp eq i64 %i.k, %.042.us.i.i ; 2 uses
  %i.l = select i1 %.not37.us.i.i, i64 %.042.us.i.i, i64 0
  %spec.select.us.i.i = add i64 %i.l, %.03140.us.i.i
  %spec.select38.us.i.i = select i1 %.not37.us.i.i, i64 0, i64 %i.k
  br label %bb.f

bb.e:                                             ; preds = %.split.us.i.i
  %i.m = add i64 %.02941.us.i.i, 1
  %i.n = add i64 %i.m, %.03140.us.i.i             ; 2 uses
  %i.o = sub i64 %i.n, %.03339.us.i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.134.us.i.i = phi i64 [ %.03339.us.i.i, %bb.e ], [ %.03140.us.i.i, %bb.c ], [ %.03339.us.i.i, %bb.d ] ; 3 uses
  %.132.us.i.i = phi i64 [ %i.n, %bb.e ], [ %i.j, %bb.c ], [ %spec.select.us.i.i, %bb.d ] ; 2 uses
  %.130.us.i.i = phi i64 [ 0, %bb.e ], [ 0, %bb.c ], [ %spec.select38.us.i.i, %bb.d ] ; 2 uses
  %.1.us.i.i = phi i64 [ %i.o, %bb.e ], [ 1, %bb.c ], [ %.042.us.i.i, %bb.d ] ; 2 uses
  %i.p = add i64 %.130.us.i.i, %.132.us.i.i       ; 2 uses
  %i.q = icmp slt i64 %i.p, %1
  br i1 %i.q, label %.split.us.i.i, label %.split.i.i, !llvm.loop !871

.split.i.i:                                       ; preds = %bb.f, %bb.k
  %i.r = phi i64 [ %i.af, %bb.k ], [ 1, %bb.f ]
  %.042.i.i = phi i64 [ %.1.i.i, %bb.k ], [ 1, %bb.f ] ; 3 uses
  %.02941.i.i = phi i64 [ %.130.i.i, %bb.k ], [ 0, %bb.f ] ; 3 uses
  %.03140.i.i = phi i64 [ %.132.i.i, %bb.k ], [ 1, %bb.f ] ; 4 uses
  %.03339.i.i = phi i64 [ %.134.i.i, %bb.k ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr [4 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7    ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %0, i64 %.03339.i.i
  %i.v = getelementptr [4 x i8], ptr %i.u, i64 %.02941.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7    ; 2 uses
  %i.x = icmp ult i32 %i.w, %i.t
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split.i.i
  %i.y = add i64 %.02941.i.i, 1
  %i.z = add i64 %i.y, %.03140.i.i                ; 2 uses
  %i.aa = sub i64 %i.z, %.03339.i.i
  br label %bb.k

bb.h:                                             ; preds = %.split.i.i
  %i.ab = icmp eq i32 %i.t, %i.w
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %.02941.i.i, 1                  ; 2 uses
  %.not37.i.i = icmp eq i64 %i.ac, %.042.i.i      ; 2 uses
  %i.ad = select i1 %.not37.i.i, i64 %.042.i.i, i64 0
  %spec.select.i.i = add i64 %i.ad, %.03140.i.i
  %spec.select38.i.i = select i1 %.not37.i.i, i64 0, i64 %i.ac
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ae = add i64 %.03140.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.134.i.i = phi i64 [ %.03339.i.i, %bb.g ], [ %.03140.i.i, %bb.j ], [ %.03339.i.i, %bb.i ] ; 3 uses
  %.132.i.i = phi i64 [ %i.z, %bb.g ], [ %i.ae, %bb.j ], [ %spec.select.i.i, %bb.i ] ; 2 uses
  %.130.i.i = phi i64 [ 0, %bb.g ], [ 0, %bb.j ], [ %spec.select38.i.i, %bb.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.aa, %bb.g ], [ 1, %bb.j ], [ %.042.i.i, %bb.i ] ; 2 uses
  %i.af = add i64 %.130.i.i, %.132.i.i            ; 2 uses
  %i.ag = icmp slt i64 %i.af, %1
  br i1 %i.ag, label %.split.i.i, label %ucs4lib__factorize.exit, !llvm.loop !871

ucs4lib__factorize.exit:                          ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ai = icmp sgt i64 %.134.us.i.i, %.134.i.i
  %..i = tail call i64 @llvm.smax.i64(i64 %.134.us.i.i, i64 %.134.i.i) ; 4 uses
  %.0.sroa.speculated.i = select i1 %i.ai, i64 %.1.us.i.i, i64 %.1.i.i ; 2 uses
  store i64 %.0.sroa.speculated.i, ptr %i.ah, align 8, !tbaa !193
  %i.aj = getelementptr i8, ptr %2, i64 16
  store i64 %..i, ptr %i.aj, align 8, !tbaa !872
  %i.ak = getelementptr [4 x i8], ptr %0, i64 %.0.sroa.speculated.i
  %i.al = shl i64 %..i, 2
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr %i.ak, i64 %i.al)
  %i.am = icmp eq i32 %bcmp, 0                    ; 2 uses
  %i.an = zext i1 %i.am to i32
  %i.ao = getelementptr i8, ptr %2, i64 40
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !873
  br i1 %i.am, label %.lr.ph.preheader, label %bb.l

bb.l:                                             ; preds = %ucs4lib__factorize.exit
  %i.ap = sub i64 %1, %..i
  %. = tail call i64 @llvm.smax.i64(i64 %..i, i64 %i.ap)
  %i.aq = add i64 %., 1
  store i64 %i.aq, ptr %i.ah, align 8, !tbaa !874
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l, %ucs4lib__factorize.exit
  %i.ar = getelementptr i8, ptr %2, i64 32        ; 2 uses
  store i64 %1, ptr %i.ar, align 8, !tbaa !875
  %i.as = add nsw i64 %1, -1                      ; 3 uses
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = add nsw i64 %1, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.05559 = phi i64 [ %i.bb, %.critedge ], [ %i.av, %.lr.ph.preheader ] ; 4 uses
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %.05559
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = xor i32 %i.ax, %i.au
  %i.az = and i32 %i.ay, 63
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.ba = sub nsw i64 %i.as, %.05559
  store i64 %i.ba, ptr %i.ar, align 8, !tbaa !875
  br label %.lr.ph62

.critedge:                                        ; preds = %.lr.ph
  %i.bb = add nsw i64 %.05559, -1
  %i.bc = icmp sgt i64 %.05559, 0
  br i1 %i.bc, label %.lr.ph, label %.lr.ph62, !llvm.loop !876

.lr.ph62:                                         ; preds = %.critedge, %bb.m
  %i.bd = tail call i64 @llvm.umin.i64(i64 %1, i64 255) ; 2 uses
  %i.be = trunc nuw i64 %i.bd to i8
  %i.bf = getelementptr i8, ptr %2, i64 44        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.bf, i8 %i.be, i64 64, i1 false), !tbaa !205
  %i.bg = sub nsw i64 %1, %i.bd
  br label %bb.n

._crit_edge:                                      ; preds = %bb.n
  ret void

bb.n:                                             ; preds = %.lr.ph62, %bb.n
  %.061 = phi i64 [ %i.bg, %.lr.ph62 ], [ %i.bo, %bb.n ] ; 3 uses
  %i.bh = sub i64 %i.as, %.061
  %i.bi = trunc i64 %i.bh to i8
  %i.bj = getelementptr [4 x i8], ptr %0, i64 %.061
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = and i32 %i.bk, 63
end_hunk_5
begin_hunk_6_@case_operation:bb.a
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr i8, ptr %.07396, i64 3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !205
  %i.bs = getelementptr i8, ptr %.07197, i64 16   ; 3 uses
  %i.bt = getelementptr i8, ptr %.07396, i64 4    ; 2 uses
  %i.bu = icmp ult ptr %i.bs, %i.ad
  br i1 %i.bu, label %.lr.ph98, label %.preheader, !llvm.loop !954

.lr.ph103:                                        ; preds = %.lr.ph103.preheader142, %.lr.ph103
  %.172102 = phi ptr [ %i.bv, %.lr.ph103 ], [ %.172102.ph, %.lr.ph103.preheader142 ] ; 2 uses
  %.174101 = phi ptr [ %i.by, %.lr.ph103 ], [ %.174101.ph, %.lr.ph103.preheader142 ] ; 2 uses
  %i.bv = getelementptr i8, ptr %.172102, i64 4   ; 2 uses
  %i.bw = load i32, ptr %.172102, align 4, !tbaa !7
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr i8, ptr %.174101, i64 1
  store i8 %i.bx, ptr %.174101, align 1, !tbaa !205
  %i.bz = icmp ult ptr %i.bv, %i.u
  br i1 %i.bz, label %.lr.ph103, label %.loopexit, !llvm.loop !955

bb.l:                                             ; preds = %_PyUnicode_DATA.exit87
  %i.ca = ashr exact i64 %.idx79, 2
  %i.cb = and i64 %i.ca, -4
  %i.cc = getelementptr [4 x i8], ptr %i.m, i64 %i.cb ; 2 uses
  %i.cd = icmp ult ptr %i.m, %i.cc
  br i1 %i.cd, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph, %bb.l
  %.069.lcssa = phi ptr [ %.0.i85, %bb.l ], [ %i.dc, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.m, %bb.l ], [ %i.db, %.lr.ph ] ; 5 uses
  %i.ce = icmp ult ptr %.0.lcssa, %i.u
  br i1 %i.ce, label %.lr.ph95.preheader, label %.loopexit

.lr.ph95.preheader:                               ; preds = %.preheader88
  %i.cf = ptrtoaddr ptr %i.m to i64
  %i.cg = add i64 %.idx79, %i.cf
  %i.ch = ptrtoaddr ptr %.0.lcssa to i64          ; 2 uses
  %i.ci = add i64 %i.ch, 4
  %i.cj = call i64 @llvm.umax.i64(i64 %i.cg, i64 %i.ci)
  %i.ck = xor i64 %i.ch, -1
  %i.cl = add i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 2
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cl, 28
  br i1 %min.iters.check, label %.lr.ph95.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.cn, 9223372036854775800     ; 4 uses
  %i.co = shl i64 %n.vec, 2
  %i.cp = getelementptr i8, ptr %.0.lcssa, i64 %i.co
  %i.cq = shl nuw i64 %n.vec, 1
  %i.cr = getelementptr i8, ptr %.069.lcssa, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.cs ; 2 uses
  %i.ct = shl i64 %index, 1
  %next.gep122 = getelementptr i8, ptr %.069.lcssa, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load123 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !7
  %i.cv = trunc <4 x i32> %wide.load to <4 x i16>
  %i.cw = trunc <4 x i32> %wide.load123 to <4 x i16>
  %i.cx = getelementptr i8, ptr %next.gep122, i64 8
  store <4 x i16> %i.cv, ptr %next.gep122, align 2, !tbaa !208
  store <4 x i16> %i.cw, ptr %i.cx, align 2, !tbaa !208
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !956

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph95.preheader144

.lr.ph95.preheader144:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.194.ph = phi ptr [ %.0.lcssa, %.lr.ph95.preheader ], [ %i.cp, %middle.block ]
  %.17093.ph = phi ptr [ %.069.lcssa, %.lr.ph95.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph95

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.091 = phi ptr [ %i.db, %.lr.ph ], [ %i.m, %bb.l ] ; 2 uses
  %.06990 = phi ptr [ %i.dc, %.lr.ph ], [ %.0.i85, %bb.l ] ; 2 uses
  %i.cz = load <4 x i32>, ptr %.091, align 4, !tbaa !7
  %i.da = trunc <4 x i32> %i.cz to <4 x i16>
  store <4 x i16> %i.da, ptr %.06990, align 2, !tbaa !208
  %i.db = getelementptr i8, ptr %.091, i64 16     ; 3 uses
  %i.dc = getelementptr i8, ptr %.06990, i64 8    ; 2 uses
  %i.dd = icmp ult ptr %i.db, %i.cc
  br i1 %i.dd, label %.lr.ph, label %.preheader88, !llvm.loop !957

.lr.ph95:                                         ; preds = %.lr.ph95.preheader144, %.lr.ph95
  %.194 = phi ptr [ %i.de, %.lr.ph95 ], [ %.194.ph, %.lr.ph95.preheader144 ] ; 2 uses
  %.17093 = phi ptr [ %i.dh, %.lr.ph95 ], [ %.17093.ph, %.lr.ph95.preheader144 ] ; 2 uses
  %i.de = getelementptr i8, ptr %.194, i64 4      ; 2 uses
  %i.df = load i32, ptr %.194, align 4, !tbaa !7
  %i.dg = trunc i32 %i.df to i16
  %i.dh = getelementptr i8, ptr %.17093, i64 2
  store i16 %i.dg, ptr %.17093, align 2, !tbaa !208
  %i.di = icmp ult ptr %i.de, %i.u
  br i1 %i.di, label %.lr.ph95, label %.loopexit, !llvm.loop !958

bb.m:                                             ; preds = %_PyUnicode_DATA.exit87
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i85, ptr nonnull align 4 %i.m, i64 %.idx79, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %_PyUnicode_DATA.exit87
  unreachable

.loopexit:                                        ; preds = %.lr.ph95, %.lr.ph103, %middle.block, %middle.block138, %.preheader88, %.preheader, %bb.m, %bb.g
  call void @PyMem_Free(ptr noundef nonnull %i.m) #33
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.f, %bb.d
  %.075 = phi ptr [ null, %bb.d ], [ %i.p, %bb.f ], [ %i.s, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.075
}

; Function Attrs: nounwind uwtable
define internal i64 @do_capitalize(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !205
  %i.c = zext i8 %i.b to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load i16, ptr %1, align 2, !tbaa !208
  %i.e = zext i16 %i.d to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ]
  %i.g = call i32 @_PyUnicode_ToTitleFull(i32 noundef %.0.i, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %PyUnicode_READ.exit
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03647.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.w, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod67 = trunc i32 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod67)
  %i.j = load i32, ptr %4, align 4, !tbaa !7
  %i.k = getelementptr [4 x i8], ptr %i.a, i64 %.03647.epil.init
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.j, i32 %i.l)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.m = getelementptr [4 x i8], ptr %3, i64 %.03647.epil.init
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %PyUnicode_READ.exit
  %.036.lcssa = phi i64 [ 0, %PyUnicode_READ.exit ], [ %wide.trip.count, %.preheader.loopexit.unr-lcssa ], [ %wide.trip.count, %.lr.ph.epil.preheader ] ; 2 uses
  %i.n = icmp sgt i64 %2, 1
  br i1 %i.n, label %.lr.ph55, label %._crit_edge56

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03647 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i32, ptr %4, align 4, !tbaa !7
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %.03647
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.o, i32 %i.q)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.r = or disjoint i64 %.03647, 1               ; 2 uses
  %i.s = getelementptr [4 x i8], ptr %3, i64 %.03647
  store i32 %i.q, ptr %i.s, align 4, !tbaa !7
  %i.t = load i32, ptr %4, align 4, !tbaa !7
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %i.r
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.t, i32 %i.v)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.w = add nuw nsw i64 %.03647, 2               ; 2 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %i.r
  store i32 %i.v, ptr %i.x, align 4, !tbaa !7
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !959

.lr.ph55:                                         ; preds = %.preheader, %._crit_edge
  %.13754 = phi i64 [ %.2.lcssa, %._crit_edge ], [ %.036.lcssa, %.preheader ] ; 3 uses
  %.03853 = phi i64 [ %i.az, %._crit_edge ], [ 1, %.preheader ] ; 5 uses
  switch i32 %0, label %bb.g [
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph55
  %i.y = getelementptr i8, ptr %1, i64 %.03853
  %i.z = load i8, ptr %i.y, align 1, !tbaa !205
  %i.aa = zext i8 %i.z to i32
  br label %PyUnicode_READ.exit46

bb.f:                                             ; preds = %.lr.ph55
  %i.ab = getelementptr [2 x i8], ptr %1, i64 %.03853
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !208
  %i.ad = zext i16 %i.ac to i32
  br label %PyUnicode_READ.exit46

bb.g:                                             ; preds = %.lr.ph55
  %i.ae = getelementptr [4 x i8], ptr %1, i64 %.03853
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  br label %PyUnicode_READ.exit46

PyUnicode_READ.exit46:                            ; preds = %bb.e, %bb.f, %bb.g
  %.0.i45 = phi i32 [ %i.aa, %bb.e ], [ %i.ad, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.03853, i32 noundef %.0.i45, ptr noundef %i.a) ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph51.preheader, label %._crit_edge

.lr.ph51.preheader:                               ; preds = %PyUnicode_READ.exit46
  %wide.trip.count61 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter68 = and i64 %wide.trip.count61, 1
  %i.ai = icmp eq i32 %i.ag, 1
  br i1 %i.ai, label %.lr.ph51.epil.preheader, label %.lr.ph51.preheader.new

.lr.ph51.preheader.new:                           ; preds = %.lr.ph51.preheader
  %unroll_iter72 = and i64 %wide.trip.count61, 2147483646
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51, %.lr.ph51.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph51.preheader.new ], [ %indvars.iv.next.1, %.lr.ph51 ] ; 3 uses
  %.249 = phi i64 [ %.13754, %.lr.ph51.preheader.new ], [ %i.ar, %.lr.ph51 ] ; 3 uses
  %niter73 = phi i64 [ 0, %.lr.ph51.preheader.new ], [ %niter73.next.1, %.lr.ph51 ]
  %i.aj = load i32, ptr %4, align 4, !tbaa !7
  %i.ak = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7  ; 2 uses
  %.44 = call i32 @llvm.umax.i32(i32 %i.aj, i32 %i.al)
  store i32 %.44, ptr %4, align 4, !tbaa !7
  %i.am = getelementptr [4 x i8], ptr %3, i64 %.249
  store i32 %i.al, ptr %i.am, align 4, !tbaa !7
  %i.an = load i32, ptr %4, align 4, !tbaa !7
  %i.ao = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.44.1 = call i32 @llvm.umax.i32(i32 %i.an, i32 %i.aq)
  store i32 %.44.1, ptr %4, align 4, !tbaa !7
  %i.ar = add i64 %.249, 2                        ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %3, i64 %.249
  %i.at = getelementptr i8, ptr %i.as, i64 4
  store i32 %i.aq, ptr %i.at, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter73.next.1 = add i64 %niter73, 2           ; 2 uses
  %niter73.ncmp.1 = icmp eq i64 %niter73.next.1, %unroll_iter72
  br i1 %niter73.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph51, !llvm.loop !960

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph51
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %._crit_edge, label %.lr.ph51.epil.preheader

.lr.ph51.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph51.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph51.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.249.epil.init = phi i64 [ %.13754, %.lr.ph51.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod71)
  %i.au = load i32, ptr %4, align 4, !tbaa !7
  %i.av = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7  ; 2 uses
  %.44.epil = call i32 @llvm.umax.i32(i32 %i.au, i32 %i.aw)
  store i32 %.44.epil, ptr %4, align 4, !tbaa !7
  %i.ax = add i64 %.249.epil.init, 1
  %i.ay = getelementptr [4 x i8], ptr %3, i64 %.249.epil.init
  store i32 %i.aw, ptr %i.ay, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph51.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %PyUnicode_READ.exit46
  %.2.lcssa = phi i64 [ %.13754, %PyUnicode_READ.exit46 ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.ax, %.lr.ph51.epil.preheader ] ; 2 uses
  %i.az = add nuw nsw i64 %.03853, 1              ; 2 uses
  %exitcond63.not = icmp eq i64 %i.az, %2
  br i1 %exitcond63.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !961

._crit_edge56:                                    ; preds = %._crit_edge, %.preheader
  %.137.lcssa = phi i64 [ %.036.lcssa, %.preheader ], [ %.2.lcssa, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret i64 %.137.lcssa
}

declare i32 @_PyUnicode_ToTitleFull(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lower_ucs4(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %4, 931
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.022.i91 = add i64 %3, -1                      ; 4 uses
  %i.b = icmp sgt i64 %.022.i91, -1               ; 3 uses
  switch i32 %0, label %.split.i.preheader [
    i32 1, label %.split.us.i.preheader
    i32 2, label %.split.us43.i.preheader
  ]

.split.us43.i.preheader:                          ; preds = %bb.b
  br i1 %i.b, label %PyUnicode_READ.exit.us46.i, label %.thread34.i

.split.us.i.preheader:                            ; preds = %bb.b
  br i1 %i.b, label %PyUnicode_READ.exit.us.i, label %.thread34.i

.split.i.preheader:                               ; preds = %bb.b
  br i1 %i.b, label %PyUnicode_READ.exit.i, label %.thread34.i

.split.us.i:                                      ; preds = %PyUnicode_READ.exit.us.i
  %.022.us.i = add nsw i64 %.022.us.i90, -1
  %i.c = icmp sgt i64 %.022.us.i90, 0
  br i1 %i.c, label %PyUnicode_READ.exit.us.i, label %.thread34.i, !llvm.loop !962

PyUnicode_READ.exit.us.i:                         ; preds = %.split.us.i.preheader, %.split.us.i
  %.022.us.i90 = phi i64 [ %.022.us.i, %.split.us.i ], [ %.022.i91, %.split.us.i.preheader ] ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 %.022.us.i90
  %i.e = load i8, ptr %i.d, align 1, !tbaa !205
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = tail call i32 @_PyUnicode_IsCaseIgnorable(i32 noundef %i.f) #33
  %.not.us.i = icmp eq i32 %i.g, 0
  br i1 %.not.us.i, label %.split42.us.i, label %.split.us.i, !llvm.loop !962

.split.us43.i:                                    ; preds = %PyUnicode_READ.exit.us46.i
  %.022.us45.i = add nsw i64 %.022.us45.i88, -1
  %i.h = icmp sgt i64 %.022.us45.i88, 0
  br i1 %i.h, label %PyUnicode_READ.exit.us46.i, label %.thread34.i, !llvm.loop !962

PyUnicode_READ.exit.us46.i:                       ; preds = %.split.us43.i.preheader, %.split.us43.i
  %.022.us45.i88 = phi i64 [ %.022.us45.i, %.split.us43.i ], [ %.022.i91, %.split.us43.i.preheader ] ; 3 uses
  %i.i = getelementptr [2 x i8], ptr %1, i64 %.022.us45.i88
  %i.j = load i16, ptr %i.i, align 2, !tbaa !208
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %i.l = tail call i32 @_PyUnicode_IsCaseIgnorable(i32 noundef %i.k) #33
  %.not.us48.i = icmp eq i32 %i.l, 0
  br i1 %.not.us48.i, label %.split42.us.i, label %.split.us43.i, !llvm.loop !962

.split.i:                                         ; preds = %PyUnicode_READ.exit.i
  %.022.i = add nsw i64 %.022.i92, -1
  %i.m = icmp sgt i64 %.022.i92, 0
  br i1 %i.m, label %PyUnicode_READ.exit.i, label %.thread34.i, !llvm.loop !962

PyUnicode_READ.exit.i:                            ; preds = %.split.i.preheader, %.split.i
  %.022.i92 = phi i64 [ %.022.i, %.split.i ], [ %.022.i91, %.split.i.preheader ] ; 3 uses
  %i.n = getelementptr [4 x i8], ptr %1, i64 %.022.i92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7    ; 2 uses
  %i.p = tail call i32 @_PyUnicode_IsCaseIgnorable(i32 noundef %i.o) #33
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %.split42.us.i, label %.split.i, !llvm.loop !962

.split42.us.i:                                    ; preds = %PyUnicode_READ.exit.us46.i, %PyUnicode_READ.exit.us.i, %PyUnicode_READ.exit.i
  %.us-phi.i = phi i32 [ %i.f, %PyUnicode_READ.exit.us.i ], [ %i.o, %PyUnicode_READ.exit.i ], [ %i.k, %PyUnicode_READ.exit.us46.i ] ; 2 uses
  %i.q = tail call i32 @_PyUnicode_IsCased(i32 noundef %.us-phi.i) #33
  %.not40.i = icmp eq i32 %i.q, 0
  br i1 %.not40.i, label %.thread34.i, label %.preheader.i

.preheader.i:                                     ; preds = %.split42.us.i
  %.12351.i = add i64 %3, 1                       ; 5 uses
  %i.r = icmp slt i64 %.12351.i, %2
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  switch i32 %0, label %PyUnicode_READ.exit28.i [
    i32 1, label %PyUnicode_READ.exit28.us.i
    i32 2, label %PyUnicode_READ.exit28.us65.i
  ]

PyUnicode_READ.exit28.us.i:                       ; preds = %.lr.ph.i, %bb.c
  %.12352.us.i = phi i64 [ %.123.us.i, %bb.c ], [ %.12351.i, %.lr.ph.i ] ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %.12352.us.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = tail call i32 @_PyUnicode_IsCaseIgnorable(i32 noundef %i.u) #33
  %.not24.us.i = icmp eq i32 %i.v, 0
  br i1 %.not24.us.i, label %PyUnicode_READ.exit28._crit_edge.i, label %bb.c, !llvm.loop !963

bb.c:                                             ; preds = %PyUnicode_READ.exit28.us.i
  %.123.us.i = add nsw i64 %.12352.us.i, 1        ; 2 uses
  %exitcond96.not.i = icmp eq i64 %.123.us.i, %2
  br i1 %exitcond96.not.i, label %handle_capital_sigma.exit, label %PyUnicode_READ.exit28.us.i, !llvm.loop !963

PyUnicode_READ.exit28.us65.i:                     ; preds = %.lr.ph.i, %bb.d
  %.12352.us61.i = phi i64 [ %.123.us64.i, %bb.d ], [ %.12351.i, %.lr.ph.i ] ; 3 uses
  %i.w = getelementptr [2 x i8], ptr %1, i64 %.12352.us61.i
  %i.x = load i16, ptr %i.w, align 2, !tbaa !208
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = tail call i32 @_PyUnicode_IsCaseIgnorable(i32 noundef %i.y) #33
  %.not24.us67.i = icmp eq i32 %i.z, 0
  br i1 %.not24.us67.i, label %PyUnicode_READ.exit28._crit_edge.i, label %bb.d, !llvm.loop !963

bb.d:                                             ; preds = %PyUnicode_READ.exit28.us65.i
  %.123.us64.i = add nsw i64 %.12352.us61.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %.123.us64.i, %2
  br i1 %exitcond.not.i, label %handle_capital_sigma.exit, label %PyUnicode_READ.exit28.us65.i, !llvm.loop !963

bb.e:                                             ; preds = %PyUnicode_READ.exit28.i
  %.123.i = add nsw i64 %.12352.i, 1              ; 2 uses
  %exitcond97.not.i = icmp eq i64 %.123.i, %2
  br i1 %exitcond97.not.i, label %handle_capital_sigma.exit, label %PyUnicode_READ.exit28.i, !llvm.loop !963

PyUnicode_READ.exit28.i:                          ; preds = %.lr.ph.i, %bb.e
  %.12352.i = phi i64 [ %.123.i, %bb.e ], [ %.12351.i, %.lr.ph.i ] ; 3 uses
  %i.aa = getelementptr [4 x i8], ptr %1, i64 %.12352.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7  ; 2 uses
  %i.ac = tail call i32 @_PyUnicode_IsCaseIgnorable(i32 noundef %i.ab) #33
  %.not24.i = icmp eq i32 %i.ac, 0
  br i1 %.not24.i, label %PyUnicode_READ.exit28._crit_edge.i, label %bb.e, !llvm.loop !963

PyUnicode_READ.exit28._crit_edge.i:               ; preds = %PyUnicode_READ.exit28.us65.i, %PyUnicode_READ.exit28.us.i, %PyUnicode_READ.exit28.i
  %.us-phi58.i = phi i64 [ %.12352.us.i, %PyUnicode_READ.exit28.us.i ], [ %.12352.i, %PyUnicode_READ.exit28.i ], [ %.12352.us61.i, %PyUnicode_READ.exit28.us65.i ]
  %.us-phi59.i = phi i32 [ %i.u, %PyUnicode_READ.exit28.us.i ], [ %i.ab, %PyUnicode_READ.exit28.i ], [ %i.y, %PyUnicode_READ.exit28.us65.i ]
  br label %._crit_edge.i, !llvm.loop !963

._crit_edge.i:                                    ; preds = %PyUnicode_READ.exit28._crit_edge.i, %.preheader.i
  %.123.lcssa.i = phi i64 [ %.us-phi58.i, %PyUnicode_READ.exit28._crit_edge.i ], [ %.12351.i, %.preheader.i ]
  %.3.i = phi i32 [ %.us-phi59.i, %PyUnicode_READ.exit28._crit_edge.i ], [ %.us-phi.i, %.preheader.i ]
  %i.ad = icmp eq i64 %.123.lcssa.i, %2
  br i1 %i.ad, label %handle_capital_sigma.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.ae = tail call i32 @_PyUnicode_IsCased(i32 noundef %.3.i) #33
  %.fr.i = freeze i32 %i.ae
  %.not25.not.i = icmp eq i32 %.fr.i, 0
  br i1 %.not25.not.i, label %handle_capital_sigma.exit, label %.thread34.i

.thread34.i:                                      ; preds = %.split.us43.i, %.split.us.i, %.split.i, %.split.us43.i.preheader, %.split.us.i.preheader, %.split.i.preheader, %bb.f, %.split42.us.i
  br label %handle_capital_sigma.exit

handle_capital_sigma.exit:                        ; preds = %bb.d, %bb.c, %bb.e, %._crit_edge.i, %bb.f, %.thread34.i
  %i.af = phi i32 [ 963, %.thread34.i ], [ 962, %bb.f ], [ 962, %._crit_edge.i ], [ 962, %bb.c ], [ 962, %bb.e ], [ 962, %bb.d ]
  store i32 %i.af, ptr %5, align 4, !tbaa !7
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ag = tail call i32 @_PyUnicode_ToLowerFull(i32 noundef %4, ptr noundef nonnull %5) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %handle_capital_sigma.exit
  %.0 = phi i32 [ 1, %handle_capital_sigma.exit ], [ %i.ag, %bb.g ]
  ret i32 %.0
}

declare i32 @_PyUnicode_ToLowerFull(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsCaseIgnorable(i32 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsCased(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @do_casefold(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 18 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.a
  switch i32 %0, label %PyUnicode_READ.exit [
    i32 1, label %PyUnicode_READ.exit.us
    i32 2, label %PyUnicode_READ.exit.us33
  ]

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph27, %._crit_edge.us
  %.01825.us = phi i64 [ %.1.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph27 ] ; 3 uses
  %.01924.us = phi i64 [ %i.y, %._crit_edge.us ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %.01924.us
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.f = call i32 @_PyUnicode_ToFoldedFull(i32 noundef %i.e, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %PyUnicode_READ.exit.us
  %wide.trip.count53 = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter82 = and i64 %wide.trip.count53, 1
  %i.h = icmp eq i32 %i.f, 1
  br i1 %i.h, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter86 = and i64 %wide.trip.count53, 2147483646
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader.new
  %indvars.iv50 = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %indvars.iv.next51.1, %.lr.ph.us ] ; 3 uses
  %.122.us = phi i64 [ %.01825.us, %.lr.ph.us.preheader.new ], [ %i.q, %.lr.ph.us ] ; 3 uses
  %niter87 = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %niter87.next.1, %.lr.ph.us ]
  %i.i = load i32, ptr %4, align 4, !tbaa !7
  %i.j = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv50
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %..us = call i32 @llvm.umax.i32(i32 %i.i, i32 %i.k)
  store i32 %..us, ptr %4, align 4, !tbaa !7
  %i.l = getelementptr [4 x i8], ptr %3, i64 %.122.us
  store i32 %i.k, ptr %i.l, align 4, !tbaa !7
  %i.m = load i32, ptr %4, align 4, !tbaa !7
  %i.n = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv50
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %..us.1 = call i32 @llvm.umax.i32(i32 %i.m, i32 %i.p)
  store i32 %..us.1, ptr %4, align 4, !tbaa !7
  %i.q = add i64 %.122.us, 2                      ; 3 uses
  %i.r = getelementptr [4 x i8], ptr %3, i64 %.122.us
  %i.s = getelementptr i8, ptr %i.r, i64 4
  store i32 %i.p, ptr %i.s, align 4, !tbaa !7
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %niter87.next.1 = add i64 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !964

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %.lr.ph.us
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %._crit_edge.us, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv50.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next51.1, %._crit_edge.us.loopexit.unr-lcssa ]
  %.122.us.epil.init = phi i64 [ %.01825.us, %.lr.ph.us.preheader ], [ %i.q, %._crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod85)
  %i.t = load i32, ptr %4, align 4, !tbaa !7
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv50.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..us.epil = call i32 @llvm.umax.i32(i32 %i.t, i32 %i.v)
  store i32 %..us.epil, ptr %4, align 4, !tbaa !7
  %i.w = add i64 %.122.us.epil.init, 1
  %i.x = getelementptr [4 x i8], ptr %3, i64 %.122.us.epil.init
  store i32 %i.v, ptr %i.x, align 4, !tbaa !7
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.us.epil.preheader, %._crit_edge.us.loopexit.unr-lcssa, %PyUnicode_READ.exit.us
  %.1.lcssa.us = phi i64 [ %.01825.us, %PyUnicode_READ.exit.us ], [ %i.q, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.us.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.y = add nuw nsw i64 %.01924.us, 1            ; 2 uses
  %exitcond55.not = icmp eq i64 %i.y, %2
  br i1 %exitcond55.not, label %._crit_edge28, label %PyUnicode_READ.exit.us, !llvm.loop !965

PyUnicode_READ.exit.us33:                         ; preds = %.lr.ph27, %._crit_edge.us40
  %.01825.us31 = phi i64 [ %.1.lcssa.us38, %._crit_edge.us40 ], [ 0, %.lr.ph27 ] ; 3 uses
  %.01924.us32 = phi i64 [ %i.av, %._crit_edge.us40 ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.z = getelementptr [2 x i8], ptr %1, i64 %.01924.us32
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !208
  %i.ab = zext i16 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ac = call i32 @_PyUnicode_ToFoldedFull(i32 noundef %i.ab, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.us39.preheader, label %._crit_edge.us40

.lr.ph.us39.preheader:                            ; preds = %PyUnicode_READ.exit.us33
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %.lr.ph.us39.epil.preheader, label %.lr.ph.us39.preheader.new

.lr.ph.us39.preheader.new:                        ; preds = %.lr.ph.us39.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph.us39

.lr.ph.us39:                                      ; preds = %.lr.ph.us39, %.lr.ph.us39.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.us39.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.us39 ] ; 3 uses
  %.122.us36 = phi i64 [ %.01825.us31, %.lr.ph.us39.preheader.new ], [ %i.an, %.lr.ph.us39 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.us39.preheader.new ], [ %niter.next.1, %.lr.ph.us39 ]
  %i.af = load i32, ptr %4, align 4, !tbaa !7
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7  ; 2 uses
  %..us37 = call i32 @llvm.umax.i32(i32 %i.af, i32 %i.ah)
  store i32 %..us37, ptr %4, align 4, !tbaa !7
  %i.ai = getelementptr [4 x i8], ptr %3, i64 %.122.us36
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !7
  %i.aj = load i32, ptr %4, align 4, !tbaa !7
  %i.ak = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7  ; 2 uses
  %..us37.1 = call i32 @llvm.umax.i32(i32 %i.aj, i32 %i.am)
  store i32 %..us37.1, ptr %4, align 4, !tbaa !7
  %i.an = add i64 %.122.us36, 2                   ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %3, i64 %.122.us36
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us40.loopexit.unr-lcssa, label %.lr.ph.us39, !llvm.loop !964

._crit_edge.us40.loopexit.unr-lcssa:              ; preds = %.lr.ph.us39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us40, label %.lr.ph.us39.epil.preheader

.lr.ph.us39.epil.preheader:                       ; preds = %._crit_edge.us40.loopexit.unr-lcssa, %.lr.ph.us39.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us39.preheader ], [ %indvars.iv.next.1, %._crit_edge.us40.loopexit.unr-lcssa ]
  %.122.us36.epil.init = phi i64 [ %.01825.us31, %.lr.ph.us39.preheader ], [ %i.an, %._crit_edge.us40.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i32 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.aq = load i32, ptr %4, align 4, !tbaa !7
  %i.ar = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %..us37.epil = call i32 @llvm.umax.i32(i32 %i.aq, i32 %i.as)
  store i32 %..us37.epil, ptr %4, align 4, !tbaa !7
  %i.at = add i64 %.122.us36.epil.init, 1
  %i.au = getelementptr [4 x i8], ptr %3, i64 %.122.us36.epil.init
  store i32 %i.as, ptr %i.au, align 4, !tbaa !7
  br label %._crit_edge.us40

._crit_edge.us40:                                 ; preds = %.lr.ph.us39.epil.preheader, %._crit_edge.us40.loopexit.unr-lcssa, %PyUnicode_READ.exit.us33
  %.1.lcssa.us38 = phi i64 [ %.01825.us31, %PyUnicode_READ.exit.us33 ], [ %i.an, %._crit_edge.us40.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.us39.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.av = add nuw nsw i64 %.01924.us32, 1         ; 2 uses
  %exitcond49.not = icmp eq i64 %i.av, %2
  br i1 %exitcond49.not, label %._crit_edge28, label %PyUnicode_READ.exit.us33, !llvm.loop !965

PyUnicode_READ.exit:                              ; preds = %.lr.ph27, %._crit_edge
  %.01825 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %.lr.ph27 ] ; 3 uses
  %.01924 = phi i64 [ %i.br, %._crit_edge ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %.01924
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ay = call i32 @_PyUnicode_ToFoldedFull(i32 noundef %i.ax, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %PyUnicode_READ.exit
  %wide.trip.count59 = zext nneg i32 %i.ay to i64 ; 2 uses
  %xtraiter88 = and i64 %wide.trip.count59, 1
  %i.ba = icmp eq i32 %i.ay, 1
  br i1 %i.ba, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter92 = and i64 %wide.trip.count59, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv56 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next57.1, %.lr.ph ] ; 3 uses
  %.122 = phi i64 [ %.01825, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ] ; 3 uses
  %niter93 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter93.next.1, %.lr.ph ]
  %i.bb = load i32, ptr %4, align 4, !tbaa !7
  %i.bc = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv56
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.bb, i32 %i.bd)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.be = getelementptr [4 x i8], ptr %3, i64 %.122
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %i.bf = load i32, ptr %4, align 4, !tbaa !7
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv56
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7  ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.bi)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.bj = add i64 %.122, 2                        ; 3 uses
  %i.bk = getelementptr [4 x i8], ptr %3, i64 %.122
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !7
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %niter93.next.1 = add i64 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i64 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !964

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv56.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next57.1, %._crit_edge.loopexit.unr-lcssa ]
  %.122.epil.init = phi i64 [ %.01825, %.lr.ph.preheader ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod91 = trunc i32 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod91)
  %i.bm = load i32, ptr %4, align 4, !tbaa !7
  %i.bn = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv56.epil.init
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.bo)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.bp = add i64 %.122.epil.init, 1
  %i.bq = getelementptr [4 x i8], ptr %3, i64 %.122.epil.init
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %PyUnicode_READ.exit
  %.1.lcssa = phi i64 [ %.01825, %PyUnicode_READ.exit ], [ %i.bj, %._crit_edge.loopexit.unr-lcssa ], [ %i.bp, %.lr.ph.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.br = add nuw nsw i64 %.01924, 1              ; 2 uses
  %exitcond61.not = icmp eq i64 %i.br, %2
  br i1 %exitcond61.not, label %._crit_edge28, label %PyUnicode_READ.exit, !llvm.loop !965

._crit_edge28:                                    ; preds = %._crit_edge.us40, %._crit_edge.us, %._crit_edge, %bb.a
  %.018.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa.us, %._crit_edge.us ], [ %.1.lcssa, %._crit_edge ], [ %.1.lcssa.us38, %._crit_edge.us40 ]
  ret i64 %.018.lcssa
}

declare void @_Py_bytes_lower(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Py_bytes_upper(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_ToFoldedFull(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @do_title(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a, %._crit_edge
  %.02636 = phi i32 [ %i.ae, %._crit_edge ], [ 0, %bb.a ]
  %.02735 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.02834 = phi i64 [ %i.af, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph38
  %i.c = getelementptr i8, ptr %1, i64 %.02834
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph38
  %i.f = getelementptr [2 x i8], ptr %1, i64 %.02834
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208
  %i.h = zext i16 %i.g to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph38
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.02834
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %.not = icmp eq i32 %.02636, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.k = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.02834, i32 noundef %.0.i, ptr noundef %i.a)
  br label %bb.g

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.l = call i32 @_PyUnicode_ToTitleFull(i32 noundef %.0.i, ptr noundef nonnull %i.a) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.025 = phi i32 [ %i.k, %bb.e ], [ %i.l, %bb.f ] ; 4 uses
  %i.m = icmp sgt i32 %.025, 0
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %.025 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.n = icmp eq i32 %.025, 1
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.132 = phi i64 [ %.02735, %.lr.ph.preheader.new ], [ %i.w, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.o = load i32, ptr %4, align 4, !tbaa !7
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7    ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.o, i32 %i.q)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.r = getelementptr [4 x i8], ptr %3, i64 %.132
  store i32 %i.q, ptr %i.r, align 4, !tbaa !7
  %i.s = load i32, ptr %4, align 4, !tbaa !7
  %i.t = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.s, i32 %i.v)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.w = add i64 %.132, 2                         ; 3 uses
  %i.x = getelementptr [4 x i8], ptr %3, i64 %.132
  %i.y = getelementptr i8, ptr %i.x, i64 4
  store i32 %i.v, ptr %i.y, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !966

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.132.epil.init = phi i64 [ %.02735, %.lr.ph.preheader ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod45 = trunc i32 %.025 to i1
  call void @llvm.assume(i1 %lcmp.mod45)
  %i.z = load i32, ptr %4, align 4, !tbaa !7
  %i.aa = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7  ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.z, i32 %i.ab)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.ac = add i64 %.132.epil.init, 1
  %i.ad = getelementptr [4 x i8], ptr %3, i64 %.132.epil.init
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.g
  %.1.lcssa = phi i64 [ %.02735, %bb.g ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.ac, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ae = call i32 @_PyUnicode_IsCased(i32 noundef %.0.i) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.af = add nuw nsw i64 %.02834, 1              ; 2 uses
  %exitcond42.not = icmp eq i64 %i.af, %2
  br i1 %exitcond42.not, label %._crit_edge39, label %.lr.ph38, !llvm.loop !967

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.027.lcssa
}

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pad(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %1, i64 0) ; 9 uses
  %spec.store.select2 = tail call i64 @llvm.smax.i64(i64 %2, i64 0) ; 7 uses
  %i.a = icmp slt i64 %1, 1                       ; 2 uses
  %i.b = icmp slt i64 %2, 1                       ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @unicode_result_unchanged(ptr noundef %0)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.f = sub i64 9223372036854775807, %i.e
  %i.g = icmp sgt i64 %spec.store.select, %i.f
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.e, %spec.store.select         ; 2 uses
  %i.i = sub i64 9223372036854775807, %i.h
  %i.j = icmp sgt i64 %spec.store.select2, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.264) #33
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 32
  %.val = load i32, ptr %i.l, align 8             ; 2 uses
  %i.m = and i32 %.val, 64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.g, label %PyUnicode_MAX_CHAR_VALUE.exit

bb.g:                                             ; preds = %bb.f
  %i.n = lshr i32 %.val, 2
  %i.o = and i32 %i.n, 7                          ; 2 uses
  %switch.selectcmp.i = icmp eq i32 %i.o, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 65535, i32 1114111
  %switch.selectcmp5.i = icmp eq i32 %i.o, 1
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 255, i32 %switch.select.i
  br label %PyUnicode_MAX_CHAR_VALUE.exit

PyUnicode_MAX_CHAR_VALUE.exit:                    ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %switch.select6.i, %bb.g ], [ 127, %bb.f ]
  %i.p = tail call i32 @llvm.umax.i32(i32 %.0.i, i32 %3)
  %i.q = add i64 %i.h, %spec.store.select2
  %i.r = tail call ptr @PyUnicode_New(i64 noundef %i.q, i32 noundef %i.p) ; 6 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.u, label %bb.h

bb.h:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8              ; 3 uses
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = and i32 %i.t, 32
  %.not.i44 = icmp eq i32 %i.w, 0
  br i1 %.not.i44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i32 %i.t, 64
  %.not.i.i = icmp eq i32 %i.x, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.r, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr i8, ptr %i.r, i64 56
  %.val4.i = load ptr, ptr %i.y, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.i, %bb.j
  %.0.i45 = phi ptr [ %.0.i.i, %bb.i ], [ %.val4.i, %bb.j ] ; 18 uses
  %.0.i4567 = ptrtoaddr ptr %.0.i45 to i64        ; 9 uses
  br i1 %i.a, label %_PyUnicode_Fill.exit, label %bb.k

bb.k:                                             ; preds = %_PyUnicode_DATA.exit
  switch i32 %i.v, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 4, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.z = trunc i32 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.i45, i8 %i.z, i64 %spec.store.select, i1 false)
  br label %_PyUnicode_Fill.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = trunc i32 %3 to i16                     ; 3 uses
  %i.ab = getelementptr [2 x i8], ptr %.0.i45, i64 %spec.store.select ; 2 uses
  %i.ac = icmp ult ptr %.0.i45, %i.ab
  br i1 %i.ac, label %iter.check, label %_PyUnicode_Fill.exit

iter.check:                                       ; preds = %bb.m
  %i.ad = shl nuw i64 %spec.store.select, 1
  %i.ae = add i64 %i.ad, %.0.i4567
  %i.af = add i64 %.0.i4567, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.af)
  %i.ag = xor i64 %.0.i4567, -1
  %i.ah = add i64 %umax, %i.ag                    ; 3 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1                    ; 5 uses
  %min.iters.check69 = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check69, label %.lr.ph30.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp ult i64 %i.ah, 30
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph71

vector.ph71:                                      ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.aj, 12
  %n.vec72 = and i64 %i.aj, -16                   ; 4 uses
  %i.al = shl i64 %n.vec72, 1
  %i.am = getelementptr i8, ptr %.0.i45, i64 %i.al
  %broadcast.splatinsert73 = insertelement <8 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat74 = shufflevector <8 x i16> %broadcast.splatinsert73, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next78, %vector.body75 ] ; 2 uses
  %i.an = shl i64 %index76, 1
  %next.gep77 = getelementptr i8, ptr %.0.i45, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep77, i64 16
  store <8 x i16> %broadcast.splat74, ptr %next.gep77, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat74, ptr %i.ao, align 2, !tbaa !208
  %index.next78 = add nuw i64 %index76, 16        ; 2 uses
  %i.ap = icmp eq i64 %index.next78, %n.vec72
  br i1 %i.ap, label %middle.block79, label %vector.body75, !llvm.loop !968

middle.block79:                                   ; preds = %vector.body75
  %cmp.n80 = icmp eq i64 %i.aj, %n.vec72
  br i1 %cmp.n80, label %_PyUnicode_Fill.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block79
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph30.i.preheader, label %vec.epilog.ph, !prof !228

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec72, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.aj, -4                    ; 3 uses
  %i.aq = shl i64 %n.vec82, 1
  %i.ar = getelementptr i8, ptr %.0.i45, i64 %i.aq
  %broadcast.splatinsert83 = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %broadcast.splat84 = shufflevector <4 x i16> %broadcast.splatinsert83, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next87, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index85, 1
  %next.gep86 = getelementptr i8, ptr %.0.i45, i64 %i.as
  store <4 x i16> %broadcast.splat84, ptr %next.gep86, align 2, !tbaa !208
  %index.next87 = add nuw i64 %index85, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next87, %n.vec82
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !969

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
end_hunk_6
begin_hunk_7_@pad:bb.a

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next115, %vector.body112 ] ; 2 uses
  %i.cj = shl i64 %index113, 1
  %next.gep114 = getelementptr i8, ptr %i.bs, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep114, i64 16
  store <8 x i16> %broadcast.splat111, ptr %next.gep114, align 2, !tbaa !208
  store <8 x i16> %broadcast.splat111, ptr %i.ck, align 2, !tbaa !208
  %index.next115 = add nuw i64 %index113, 16      ; 2 uses
  %i.cl = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.cl, label %middle.block116, label %vector.body112, !llvm.loop !973

middle.block116:                                  ; preds = %vector.body112
  %cmp.n117 = icmp eq i64 %i.cf, %n.vec109
  br i1 %cmp.n117, label %_PyUnicode_Fill.exit50, label %vec.epilog.iter.check122

vec.epilog.iter.check122:                         ; preds = %middle.block116
  %min.epilog.iters.check123 = icmp eq i64 %i.cg, 0
  br i1 %min.epilog.iters.check123, label %.lr.ph30.i48.preheader, label %vec.epilog.ph124, !prof !228

vec.epilog.ph124:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check122
  %vec.epilog.resume.val118 = phi i64 [ %n.vec109, %vec.epilog.iter.check122 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec125 = and i64 %i.cf, -4                   ; 3 uses
  %i.cm = shl i64 %n.vec125, 1
  %i.cn = getelementptr i8, ptr %i.bs, i64 %i.cm
  %broadcast.splatinsert126 = insertelement <4 x i16> poison, i16 %i.br, i64 0
  %broadcast.splat127 = shufflevector <4 x i16> %broadcast.splatinsert126, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body128

vec.epilog.vector.body128:                        ; preds = %vec.epilog.vector.body128, %vec.epilog.ph124
  %index129 = phi i64 [ %vec.epilog.resume.val118, %vec.epilog.ph124 ], [ %index.next131, %vec.epilog.vector.body128 ] ; 2 uses
  %i.co = shl i64 %index129, 1
  %next.gep130 = getelementptr i8, ptr %i.bs, i64 %i.co
  store <4 x i16> %broadcast.splat127, ptr %next.gep130, align 2, !tbaa !208
  %index.next131 = add nuw i64 %index129, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next131, %n.vec125
  br i1 %i.cp, label %vec.epilog.middle.block132, label %vec.epilog.vector.body128, !llvm.loop !974

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body128
  %cmp.n133 = icmp eq i64 %i.cf, %n.vec125
  br i1 %cmp.n133, label %_PyUnicode_Fill.exit50, label %.lr.ph30.i48.preheader

.lr.ph30.i48.preheader:                           ; preds = %iter.check120, %vec.epilog.iter.check122, %vec.epilog.middle.block132
  %.02629.i49.ph = phi ptr [ %i.bs, %iter.check120 ], [ %i.ci, %vec.epilog.iter.check122 ], [ %i.cn, %vec.epilog.middle.block132 ]
  br label %.lr.ph30.i48

.lr.ph30.i48:                                     ; preds = %.lr.ph30.i48.preheader, %.lr.ph30.i48
  %.02629.i49 = phi ptr [ %i.cq, %.lr.ph30.i48 ], [ %.02629.i49.ph, %.lr.ph30.i48.preheader ] ; 2 uses
  store i16 %i.br, ptr %.02629.i49, align 2, !tbaa !208
  %i.cq = getelementptr i8, ptr %.02629.i49, i64 2 ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %i.bt
  br i1 %i.cr, label %.lr.ph30.i48, label %_PyUnicode_Fill.exit50, !llvm.loop !975

bb.s:                                             ; preds = %bb.p
  %i.cs = getelementptr [4 x i8], ptr %.0.i45, i64 %i.bo ; 5 uses
  %i.ct = getelementptr [4 x i8], ptr %i.cs, i64 %spec.store.select2 ; 2 uses
  %i.cu = icmp ult ptr %i.cs, %i.ct
  br i1 %i.cu, label %.lr.ph.i46.preheader, label %_PyUnicode_Fill.exit50

.lr.ph.i46.preheader:                             ; preds = %bb.s
  %i.cv = shl i64 %spec.store.select2, 2
  %i.cw = shl i64 %i.bo, 2                        ; 2 uses
  %i.cx = add i64 %i.cv, %.0.i4567
  %i.cy = add i64 %i.cx, %i.cw
  %i.cz = add i64 %i.cw, %.0.i4567
  %i.da = add i64 %i.cz, 4
  %i.db = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 %i.da)
  %i.dc = xor i64 %.0.i4567, -1
  %i.dd = add i64 %i.db, %i.dc
  %i.de = shl i64 %i.bo, 2
  %i.df = sub i64 %i.dd, %i.de                    ; 2 uses
  %i.dg = lshr i64 %i.df, 2
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check91 = icmp ult i64 %i.df, 28
  br i1 %min.iters.check91, label %.lr.ph.i46.preheader135, label %vector.ph92

vector.ph92:                                      ; preds = %.lr.ph.i46.preheader
  %n.vec93 = and i64 %i.dh, 9223372036854775800   ; 3 uses
  %i.di = shl i64 %n.vec93, 2
  %i.dj = getelementptr i8, ptr %i.cs, i64 %i.di
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph92
  %index97 = phi i64 [ 0, %vector.ph92 ], [ %index.next99, %vector.body96 ] ; 2 uses
  %i.dk = shl i64 %index97, 2
  %next.gep98 = getelementptr i8, ptr %i.cs, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep98, i64 16
  store <4 x i32> %broadcast.splat95, ptr %next.gep98, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat95, ptr %i.dl, align 4, !tbaa !7
  %index.next99 = add nuw i64 %index97, 8         ; 2 uses
  %i.dm = icmp eq i64 %index.next99, %n.vec93
  br i1 %i.dm, label %middle.block100, label %vector.body96, !llvm.loop !976

middle.block100:                                  ; preds = %vector.body96
  %cmp.n101 = icmp eq i64 %i.dh, %n.vec93
  br i1 %cmp.n101, label %_PyUnicode_Fill.exit50, label %.lr.ph.i46.preheader135

.lr.ph.i46.preheader135:                          ; preds = %.lr.ph.i46.preheader, %middle.block100
  %.028.i47.ph = phi ptr [ %i.cs, %.lr.ph.i46.preheader ], [ %i.dj, %middle.block100 ]
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %.lr.ph.i46.preheader135, %.lr.ph.i46
  %.028.i47 = phi ptr [ %i.dn, %.lr.ph.i46 ], [ %.028.i47.ph, %.lr.ph.i46.preheader135 ] ; 2 uses
  store i32 %3, ptr %.028.i47, align 4, !tbaa !7
  %i.dn = getelementptr i8, ptr %.028.i47, i64 4  ; 2 uses
  %i.do = icmp ult ptr %i.dn, %i.ct
  br i1 %i.do, label %.lr.ph.i46, label %_PyUnicode_Fill.exit50, !llvm.loop !977

bb.t:                                             ; preds = %bb.p
  unreachable

_PyUnicode_Fill.exit50:                           ; preds = %.lr.ph.i46, %.lr.ph30.i48, %middle.block100, %middle.block116, %vec.epilog.middle.block132, %bb.s, %bb.r, %bb.q, %_PyUnicode_Fill.exit
  %i.dp = phi i64 [ %.pre55, %middle.block116 ], [ %.pre55, %_PyUnicode_Fill.exit ], [ %.pre55, %bb.s ], [ %.pre55, %bb.r ], [ %.pre, %bb.q ], [ %.pre55, %middle.block100 ], [ %.pre55, %vec.epilog.middle.block132 ], [ %.pre55, %.lr.ph30.i48 ], [ %.pre55, %.lr.ph.i46 ]
  %i.dq = tail call fastcc i32 @_copy_characters(ptr noundef nonnull %i.r, i64 noundef %spec.store.select, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.dp, i32 noundef 0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %PyUnicode_MAX_CHAR_VALUE.exit, %_PyUnicode_Fill.exit50, %bb.e, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.e ], [ %i.r, %_PyUnicode_Fill.exit50 ], [ null, %PyUnicode_MAX_CHAR_VALUE.exit ]
  ret ptr %.0
}

declare i32 @_PyEval_SliceIndex(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #3

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @do_lower(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph35.split.i, label %do_upper_or_lower.exit

.lr.ph35.split.i:                                 ; preds = %bb.a, %._crit_edge.i
  %.02533.i = phi i64 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 3 uses
  %.02632.i = phi i64 [ %i.ad, %._crit_edge.i ], [ 0, %bb.a ] ; 5 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph35.split.i
  %i.c = getelementptr i8, ptr %1, i64 %.02632.i
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  br label %PyUnicode_READ.exit.i

bb.c:                                             ; preds = %.lr.ph35.split.i
  %i.f = getelementptr [2 x i8], ptr %1, i64 %.02632.i
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208
  %i.h = zext i16 %i.g to i32
  br label %PyUnicode_READ.exit.i

bb.d:                                             ; preds = %.lr.ph35.split.i
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.02632.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.i:                            ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.k = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull readonly %1, i64 noundef %2, i64 noundef %.02632.i, i32 noundef %.0.i.i, ptr noundef %i.a) ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %PyUnicode_READ.exit.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.m = icmp eq i32 %i.k, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.130.i = phi i64 [ %.02533.i, %.lr.ph.preheader.i.new ], [ %i.v, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.n = load i32, ptr %4, align 4, !tbaa !7
  %i.o = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %..i = call i32 @llvm.umax.i32(i32 %i.n, i32 %i.p)
  store i32 %..i, ptr %4, align 4, !tbaa !7
  %i.q = getelementptr [4 x i8], ptr %3, i64 %.130.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !7
  %i.r = load i32, ptr %4, align 4, !tbaa !7
  %i.s = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7    ; 2 uses
  %..i.1 = call i32 @llvm.umax.i32(i32 %i.r, i32 %i.u)
  store i32 %..i.1, ptr %4, align 4, !tbaa !7
  %i.v = add i64 %.130.i, 2                       ; 3 uses
  %i.w = getelementptr [4 x i8], ptr %3, i64 %.130.i
  %i.x = getelementptr i8, ptr %i.w, i64 4
  store i32 %i.u, ptr %i.x, align 4, !tbaa !7
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !978

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.130.i.epil.init = phi i64 [ %.02533.i, %.lr.ph.preheader.i ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod7 = trunc i32 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod7)
  %i.y = load i32, ptr %4, align 4, !tbaa !7
  %i.z = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.i.epil.init
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 2 uses
  %..i.epil = call i32 @llvm.umax.i32(i32 %i.y, i32 %i.aa)
  store i32 %..i.epil, ptr %4, align 4, !tbaa !7
  %i.ab = add i64 %.130.i.epil.init, 1
  %i.ac = getelementptr [4 x i8], ptr %3, i64 %.130.i.epil.init
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !7
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %PyUnicode_READ.exit.i
  %.1.lcssa.i = phi i64 [ %.02533.i, %PyUnicode_READ.exit.i ], [ %i.v, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ab, %.lr.ph.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ad = add nuw nsw i64 %.02632.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.ad, %2
  br i1 %exitcond60.not.i, label %do_upper_or_lower.exit, label %.lr.ph35.split.i, !llvm.loop !979

do_upper_or_lower.exit:                           ; preds = %._crit_edge.i, %bb.a
  %.025.lcssa.i = phi i64 [ 0, %bb.a ], [ %.1.lcssa.i, %._crit_edge.i ]
  ret i64 %.025.lcssa.i
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @do_upper_or_lower(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 24 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph35, label %._crit_edge36

.lr.ph35:                                         ; preds = %bb.a
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %.lr.ph35.split.us, label %.lr.ph35.split

.lr.ph35.split.us:                                ; preds = %.lr.ph35
  switch i32 %0, label %PyUnicode_READ.exit.us [
    i32 1, label %PyUnicode_READ.exit.us.us
    i32 2, label %PyUnicode_READ.exit.us.us42
  ]

PyUnicode_READ.exit.us.us:                        ; preds = %.lr.ph35.split.us, %._crit_edge.us.us
  %.02533.us.us = phi i64 [ %.1.lcssa.us.us, %._crit_edge.us.us ], [ 0, %.lr.ph35.split.us ] ; 3 uses
  %.02632.us.us = phi i64 [ %i.y, %._crit_edge.us.us ], [ 0, %.lr.ph35.split.us ] ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 %.02632.us.us
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.f = call i32 @_PyUnicode_ToUpperFull(i32 noundef %i.e, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.us.us.preheader, label %._crit_edge.us.us

.lr.ph.us.us.preheader:                           ; preds = %PyUnicode_READ.exit.us.us
  %wide.trip.count70 = zext nneg i32 %i.f to i64  ; 2 uses
  %xtraiter113 = and i64 %wide.trip.count70, 1
  %i.h = icmp eq i32 %i.f, 1
  br i1 %i.h, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us.preheader.new

.lr.ph.us.us.preheader.new:                       ; preds = %.lr.ph.us.us.preheader
  %unroll_iter117 = and i64 %wide.trip.count70, 2147483646
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us, %.lr.ph.us.us.preheader.new
  %indvars.iv67 = phi i64 [ 0, %.lr.ph.us.us.preheader.new ], [ %indvars.iv.next68.1, %.lr.ph.us.us ] ; 3 uses
  %.130.us.us = phi i64 [ %.02533.us.us, %.lr.ph.us.us.preheader.new ], [ %i.q, %.lr.ph.us.us ] ; 3 uses
  %niter118 = phi i64 [ 0, %.lr.ph.us.us.preheader.new ], [ %niter118.next.1, %.lr.ph.us.us ]
  %i.i = load i32, ptr %4, align 4, !tbaa !7
  %i.j = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv67
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7    ; 2 uses
  %..us.us = call i32 @llvm.umax.i32(i32 %i.i, i32 %i.k)
  store i32 %..us.us, ptr %4, align 4, !tbaa !7
  %i.l = getelementptr [4 x i8], ptr %3, i64 %.130.us.us
  store i32 %i.k, ptr %i.l, align 4, !tbaa !7
  %i.m = load i32, ptr %4, align 4, !tbaa !7
  %i.n = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv67
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7    ; 2 uses
  %..us.us.1 = call i32 @llvm.umax.i32(i32 %i.m, i32 %i.p)
  store i32 %..us.us.1, ptr %4, align 4, !tbaa !7
  %i.q = add i64 %.130.us.us, 2                   ; 3 uses
  %i.r = getelementptr [4 x i8], ptr %3, i64 %.130.us.us
  %i.s = getelementptr i8, ptr %i.r, i64 4
  store i32 %i.p, ptr %i.s, align 4, !tbaa !7
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %niter118.next.1 = add i64 %niter118, 2         ; 2 uses
  %niter118.ncmp.1 = icmp eq i64 %niter118.next.1, %unroll_iter117
  br i1 %niter118.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !978

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %.lr.ph.us.us
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge.us.us, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %.lr.ph.us.us.preheader
  %indvars.iv67.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next68.1, %._crit_edge.us.us.loopexit.unr-lcssa ]
  %.130.us.us.epil.init = phi i64 [ %.02533.us.us, %.lr.ph.us.us.preheader ], [ %i.q, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod116 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod116)
  %i.t = load i32, ptr %4, align 4, !tbaa !7
  %i.u = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv67.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7    ; 2 uses
  %..us.us.epil = call i32 @llvm.umax.i32(i32 %i.t, i32 %i.v)
  store i32 %..us.us.epil, ptr %4, align 4, !tbaa !7
  %i.w = add i64 %.130.us.us.epil.init, 1
  %i.x = getelementptr [4 x i8], ptr %3, i64 %.130.us.us.epil.init
  store i32 %i.v, ptr %i.x, align 4, !tbaa !7
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %.lr.ph.us.us.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa, %PyUnicode_READ.exit.us.us
  %.1.lcssa.us.us = phi i64 [ %.02533.us.us, %PyUnicode_READ.exit.us.us ], [ %i.q, %._crit_edge.us.us.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.us.us.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.y = add nuw nsw i64 %.02632.us.us, 1         ; 2 uses
  %exitcond72.not = icmp eq i64 %i.y, %2
  br i1 %exitcond72.not, label %._crit_edge36, label %PyUnicode_READ.exit.us.us, !llvm.loop !979

PyUnicode_READ.exit.us.us42:                      ; preds = %.lr.ph35.split.us, %._crit_edge.us.us49
  %.02533.us.us40 = phi i64 [ %.1.lcssa.us.us47, %._crit_edge.us.us49 ], [ 0, %.lr.ph35.split.us ] ; 3 uses
  %.02632.us.us41 = phi i64 [ %i.av, %._crit_edge.us.us49 ], [ 0, %.lr.ph35.split.us ] ; 2 uses
  %i.z = getelementptr [2 x i8], ptr %1, i64 %.02632.us.us41
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !208
  %i.ab = zext i16 %i.aa to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ac = call i32 @_PyUnicode_ToUpperFull(i32 noundef %i.ab, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.us.us48.preheader, label %._crit_edge.us.us49

.lr.ph.us.us48.preheader:                         ; preds = %PyUnicode_READ.exit.us.us42
  %wide.trip.count64 = zext nneg i32 %i.ac to i64 ; 2 uses
  %xtraiter107 = and i64 %wide.trip.count64, 1
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %.lr.ph.us.us48.epil.preheader, label %.lr.ph.us.us48.preheader.new

.lr.ph.us.us48.preheader.new:                     ; preds = %.lr.ph.us.us48.preheader
  %unroll_iter111 = and i64 %wide.trip.count64, 2147483646
  br label %.lr.ph.us.us48

.lr.ph.us.us48:                                   ; preds = %.lr.ph.us.us48, %.lr.ph.us.us48.preheader.new
  %indvars.iv61 = phi i64 [ 0, %.lr.ph.us.us48.preheader.new ], [ %indvars.iv.next62.1, %.lr.ph.us.us48 ] ; 3 uses
  %.130.us.us45 = phi i64 [ %.02533.us.us40, %.lr.ph.us.us48.preheader.new ], [ %i.an, %.lr.ph.us.us48 ] ; 3 uses
  %niter112 = phi i64 [ 0, %.lr.ph.us.us48.preheader.new ], [ %niter112.next.1, %.lr.ph.us.us48 ]
  %i.af = load i32, ptr %4, align 4, !tbaa !7
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv61
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7  ; 2 uses
  %..us.us46 = call i32 @llvm.umax.i32(i32 %i.af, i32 %i.ah)
  store i32 %..us.us46, ptr %4, align 4, !tbaa !7
  %i.ai = getelementptr [4 x i8], ptr %3, i64 %.130.us.us45
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !7
  %i.aj = load i32, ptr %4, align 4, !tbaa !7
  %i.ak = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv61
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7  ; 2 uses
  %..us.us46.1 = call i32 @llvm.umax.i32(i32 %i.aj, i32 %i.am)
  store i32 %..us.us46.1, ptr %4, align 4, !tbaa !7
  %i.an = add i64 %.130.us.us45, 2                ; 3 uses
  %i.ao = getelementptr [4 x i8], ptr %3, i64 %.130.us.us45
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  store i32 %i.am, ptr %i.ap, align 4, !tbaa !7
  %indvars.iv.next62.1 = add nuw nsw i64 %indvars.iv61, 2 ; 2 uses
  %niter112.next.1 = add i64 %niter112, 2         ; 2 uses
  %niter112.ncmp.1 = icmp eq i64 %niter112.next.1, %unroll_iter111
  br i1 %niter112.ncmp.1, label %._crit_edge.us.us49.loopexit.unr-lcssa, label %.lr.ph.us.us48, !llvm.loop !978

._crit_edge.us.us49.loopexit.unr-lcssa:           ; preds = %.lr.ph.us.us48
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %._crit_edge.us.us49, label %.lr.ph.us.us48.epil.preheader

.lr.ph.us.us48.epil.preheader:                    ; preds = %._crit_edge.us.us49.loopexit.unr-lcssa, %.lr.ph.us.us48.preheader
  %indvars.iv61.epil.init = phi i64 [ 0, %.lr.ph.us.us48.preheader ], [ %indvars.iv.next62.1, %._crit_edge.us.us49.loopexit.unr-lcssa ]
  %.130.us.us45.epil.init = phi i64 [ %.02533.us.us40, %.lr.ph.us.us48.preheader ], [ %i.an, %._crit_edge.us.us49.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod110 = trunc i32 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod110)
  %i.aq = load i32, ptr %4, align 4, !tbaa !7
  %i.ar = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv61.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !7  ; 2 uses
  %..us.us46.epil = call i32 @llvm.umax.i32(i32 %i.aq, i32 %i.as)
  store i32 %..us.us46.epil, ptr %4, align 4, !tbaa !7
  %i.at = add i64 %.130.us.us45.epil.init, 1
  %i.au = getelementptr [4 x i8], ptr %3, i64 %.130.us.us45.epil.init
  store i32 %i.as, ptr %i.au, align 4, !tbaa !7
  br label %._crit_edge.us.us49

._crit_edge.us.us49:                              ; preds = %.lr.ph.us.us48.epil.preheader, %._crit_edge.us.us49.loopexit.unr-lcssa, %PyUnicode_READ.exit.us.us42
  %.1.lcssa.us.us47 = phi i64 [ %.02533.us.us40, %PyUnicode_READ.exit.us.us42 ], [ %i.an, %._crit_edge.us.us49.loopexit.unr-lcssa ], [ %i.at, %.lr.ph.us.us48.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.av = add nuw nsw i64 %.02632.us.us41, 1      ; 2 uses
  %exitcond66.not = icmp eq i64 %i.av, %2
  br i1 %exitcond66.not, label %._crit_edge36, label %PyUnicode_READ.exit.us.us42, !llvm.loop !979

PyUnicode_READ.exit.us:                           ; preds = %.lr.ph35.split.us, %._crit_edge.us
  %.02533.us = phi i64 [ %.1.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph35.split.us ] ; 3 uses
  %.02632.us = phi i64 [ %i.br, %._crit_edge.us ], [ 0, %.lr.ph35.split.us ] ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %1, i64 %.02632.us
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ay = call i32 @_PyUnicode_ToUpperFull(i32 noundef %i.ax, ptr noundef nonnull %i.a) #33 ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %PyUnicode_READ.exit.us
  %wide.trip.count76 = zext nneg i32 %i.ay to i64 ; 2 uses
  %xtraiter119 = and i64 %wide.trip.count76, 1
  %i.ba = icmp eq i32 %i.ay, 1
  br i1 %i.ba, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter123 = and i64 %wide.trip.count76, 2147483646
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader.new
  %indvars.iv73 = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %indvars.iv.next74.1, %.lr.ph.us ] ; 3 uses
  %.130.us = phi i64 [ %.02533.us, %.lr.ph.us.preheader.new ], [ %i.bj, %.lr.ph.us ] ; 3 uses
  %niter124 = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %niter124.next.1, %.lr.ph.us ]
  %i.bb = load i32, ptr %4, align 4, !tbaa !7
  %i.bc = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv73
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7  ; 2 uses
  %..us = call i32 @llvm.umax.i32(i32 %i.bb, i32 %i.bd)
  store i32 %..us, ptr %4, align 4, !tbaa !7
  %i.be = getelementptr [4 x i8], ptr %3, i64 %.130.us
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %i.bf = load i32, ptr %4, align 4, !tbaa !7
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv73
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7  ; 2 uses
  %..us.1 = call i32 @llvm.umax.i32(i32 %i.bf, i32 %i.bi)
  store i32 %..us.1, ptr %4, align 4, !tbaa !7
  %i.bj = add i64 %.130.us, 2                     ; 3 uses
  %i.bk = getelementptr [4 x i8], ptr %3, i64 %.130.us
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  store i32 %i.bi, ptr %i.bl, align 4, !tbaa !7
  %indvars.iv.next74.1 = add nuw nsw i64 %indvars.iv73, 2 ; 2 uses
  %niter124.next.1 = add i64 %niter124, 2         ; 2 uses
  %niter124.ncmp.1 = icmp eq i64 %niter124.next.1, %unroll_iter123
  br i1 %niter124.ncmp.1, label %._crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !978

._crit_edge.us.loopexit.unr-lcssa:                ; preds = %.lr.ph.us
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %._crit_edge.us, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %._crit_edge.us.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv73.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next74.1, %._crit_edge.us.loopexit.unr-lcssa ]
  %.130.us.epil.init = phi i64 [ %.02533.us, %.lr.ph.us.preheader ], [ %i.bj, %._crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i32 %i.ay to i1
  call void @llvm.assume(i1 %lcmp.mod122)
  %i.bm = load i32, ptr %4, align 4, !tbaa !7
  %i.bn = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv73.epil.init
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7  ; 2 uses
  %..us.epil = call i32 @llvm.umax.i32(i32 %i.bm, i32 %i.bo)
  store i32 %..us.epil, ptr %4, align 4, !tbaa !7
  %i.bp = add i64 %.130.us.epil.init, 1
  %i.bq = getelementptr [4 x i8], ptr %3, i64 %.130.us.epil.init
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !7
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.us.epil.preheader, %._crit_edge.us.loopexit.unr-lcssa, %PyUnicode_READ.exit.us
  %.1.lcssa.us = phi i64 [ %.02533.us, %PyUnicode_READ.exit.us ], [ %i.bj, %._crit_edge.us.loopexit.unr-lcssa ], [ %i.bp, %.lr.ph.us.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.br = add nuw nsw i64 %.02632.us, 1           ; 2 uses
  %exitcond78.not = icmp eq i64 %i.br, %2
  br i1 %exitcond78.not, label %._crit_edge36, label %PyUnicode_READ.exit.us, !llvm.loop !979

.lr.ph35.split:                                   ; preds = %.lr.ph35, %._crit_edge
  %.02533 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %.lr.ph35 ] ; 3 uses
  %.02632 = phi i64 [ %i.ct, %._crit_edge ], [ 0, %.lr.ph35 ] ; 5 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph35.split
  %i.bs = getelementptr i8, ptr %1, i64 %.02632
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !205
  %i.bu = zext i8 %i.bt to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph35.split
  %i.bv = getelementptr [2 x i8], ptr %1, i64 %.02632
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !208
  %i.bx = zext i16 %i.bw to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph35.split
  %i.by = getelementptr [4 x i8], ptr %1, i64 %.02632
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.bu, %bb.b ], [ %i.bx, %bb.c ], [ %i.bz, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ca = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.02632, i32 noundef %.0.i, ptr noundef %i.a) ; 4 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %PyUnicode_READ.exit
  %wide.trip.count = zext nneg i32 %i.ca to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cc = icmp eq i32 %i.ca, 1
  br i1 %i.cc, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.130 = phi i64 [ %.02533, %.lr.ph.preheader.new ], [ %i.cl, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cd = load i32, ptr %4, align 4, !tbaa !7
  %i.ce = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7  ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.cd, i32 %i.cf)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.cg = getelementptr [4 x i8], ptr %3, i64 %.130
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !7
  %i.ch = load i32, ptr %4, align 4, !tbaa !7
  %i.ci = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7  ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.ch, i32 %i.ck)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.cl = add i64 %.130, 2                        ; 3 uses
  %i.cm = getelementptr [4 x i8], ptr %3, i64 %.130
  %i.cn = getelementptr i8, ptr %i.cm, i64 4
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !978

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.130.epil.init = phi i64 [ %.02533, %.lr.ph.preheader ], [ %i.cl, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod106 = trunc i32 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod106)
  %i.co = load i32, ptr %4, align 4, !tbaa !7
  %i.cp = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7  ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.co, i32 %i.cq)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.cr = add i64 %.130.epil.init, 1
  %i.cs = getelementptr [4 x i8], ptr %3, i64 %.130.epil.init
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %PyUnicode_READ.exit
  %.1.lcssa = phi i64 [ %.02533, %PyUnicode_READ.exit ], [ %i.cl, %._crit_edge.loopexit.unr-lcssa ], [ %i.cr, %.lr.ph.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ct = add nuw nsw i64 %.02632, 1              ; 2 uses
  %exitcond60.not = icmp eq i64 %i.ct, %2
  br i1 %exitcond60.not, label %._crit_edge36, label %.lr.ph35.split, !llvm.loop !979

._crit_edge36:                                    ; preds = %._crit_edge, %._crit_edge.us.us49, %._crit_edge.us.us, %._crit_edge.us, %bb.a
  %.025.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa.us.us, %._crit_edge.us.us ], [ %.1.lcssa.us.us47, %._crit_edge.us.us49 ], [ %.1.lcssa.us, %._crit_edge.us ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.025.lcssa
}

declare i32 @_PyUnicode_ToUpperFull(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_argstrip(ptr noundef %0, i32 noundef range(i32 0, 3) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !197
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val10 = load i64, ptr %i.b, align 8, !tbaa !198
  %i.c = and i64 %.val10, 268435456
  %.not9 = icmp eq i64 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_PyUnicode_XStrip(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !194
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr [8 x i8], ptr @stripfuncnames, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !355
  %i.i = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.268, ptr noundef %i.h) #33 ; 0 uses
  br label %bb.y

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val68.i = load i64, ptr %i.j, align 8, !tbaa !207 ; 8 uses
  %i.k = getelementptr i8, ptr %0, i64 32
  %.val.i = load i32, ptr %i.k, align 8           ; 4 uses
  %i.l = and i32 %.val.i, 64
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = and i32 %.val.i, 32
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.0.i.i.i = getelementptr i8, ptr %0, i64 40
  br label %_PyUnicode_DATA.exit.i

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.n, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.g ], [ %.val4.i.i, %bb.h ] ; 2 uses
  %.not63.i = icmp eq i32 %1, 1
  br i1 %.not63.i, label %.thread.i, label %.preheader91.preheader.i

.preheader91.preheader.i:                         ; preds = %_PyUnicode_DATA.exit.i
  %smax.i = tail call i64 @llvm.smax.i64(i64 %.val68.i, i64 0) ; 3 uses
  %exitcond.not.i17 = icmp slt i64 %.val68.i, 1
  br i1 %exitcond.not.i17, label %._crit_edge, label %.lr.ph

.preheader91.i:                                   ; preds = %.lr.ph
  %i.o = add nuw i64 %.051.i18, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %smax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader91.preheader.i, %.preheader91.i
  %.051.i18 = phi i64 [ %i.o, %.preheader91.i ], [ 0, %.preheader91.preheader.i ] ; 3 uses
  %i.p = getelementptr i8, ptr %.0.i.i, i64 %.051.i18
  %i.q = load i8, ptr %i.p, align 1, !tbaa !205
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !205
  %.not64.i = icmp eq i8 %i.t, 0
  br i1 %.not64.i, label %._crit_edge, label %.preheader91.i

._crit_edge:                                      ; preds = %.preheader91.i, %.lr.ph, %.preheader91.preheader.i
  %.051.lcssa.i = phi i64 [ %smax.i, %.preheader91.preheader.i ], [ %smax.i, %.preheader91.i ], [ %.051.i18, %.lr.ph ] ; 2 uses
  %.not65.i = icmp eq i32 %1, 0
  br i1 %.not65.i, label %do_strip.exit, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge, %_PyUnicode_DATA.exit.i
  %.25385.i = phi i64 [ %.051.lcssa.i, %._crit_edge ], [ 0, %_PyUnicode_DATA.exit.i ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.thread.i
  %.047.in.i = phi i64 [ %.val68.i, %.thread.i ], [ %.047.i, %bb.j ] ; 3 uses
  %.047.i = add i64 %.047.in.i, -1                ; 3 uses
  %.not66.i = icmp slt i64 %.047.i, %.25385.i
  br i1 %.not66.i, label %do_strip.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %.0.i.i, i64 %.047.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !205
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !205
  %.not67.i = icmp eq i8 %i.y, 0
  br i1 %.not67.i, label %do_strip.exit, label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.z = lshr i32 %.val.i, 2
  %i.aa = and i32 %i.z, 7                         ; 2 uses
  %i.ab = and i32 %.val.i, 32
  %.not.i70.i = icmp eq i32 %i.ab, 0
  %i.ac = getelementptr i8, ptr %0, i64 56        ; 2 uses
  br i1 %.not.i70.i, label %bb.l, label %_PyUnicode_DATA.exit76.i

bb.l:                                             ; preds = %bb.k
  %.val4.i75.i = load ptr, ptr %i.ac, align 8, !tbaa !205
  br label %_PyUnicode_DATA.exit76.i

_PyUnicode_DATA.exit76.i:                         ; preds = %bb.l, %bb.k
  %.0.i74.i = phi ptr [ %.val4.i75.i, %bb.l ], [ %i.ac, %bb.k ] ; 6 uses
  %.not58.i = icmp eq i32 %1, 1
  br i1 %.not58.i, label %.thread86.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_PyUnicode_DATA.exit76.i
  %smax93.i = tail call i64 @llvm.smax.i64(i64 %.val68.i, i64 0) ; 3 uses
  %exitcond94.not.i20 = icmp slt i64 %.val68.i, 1
  br i1 %exitcond94.not.i20, label %Py_UNICODE_ISSPACE.exit.i._crit_edge, label %.lr.ph22

.preheader.i:                                     ; preds = %Py_UNICODE_ISSPACE.exit.i
  %i.ad = add nuw i64 %.354.i21, 1                ; 2 uses
  %exitcond94.not.i = icmp eq i64 %i.ad, %smax93.i
  br i1 %exitcond94.not.i, label %Py_UNICODE_ISSPACE.exit.i._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.preheader.preheader.i, %.preheader.i
  %.354.i21 = phi i64 [ %i.ad, %.preheader.i ], [ 0, %.preheader.preheader.i ] ; 5 uses
  switch i32 %i.aa, label %bb.o [
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph22
  %i.ae = getelementptr i8, ptr %.0.i74.i, i64 %.354.i21
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !205
  %i.ag = zext i8 %i.af to i32
  br label %PyUnicode_READ.exit.i

bb.n:                                             ; preds = %.lr.ph22
  %i.ah = getelementptr [2 x i8], ptr %.0.i74.i, i64 %.354.i21
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !208
  %i.aj = zext i16 %i.ai to i32
  br label %PyUnicode_READ.exit.i

bb.o:                                             ; preds = %.lr.ph22
  %i.ak = getelementptr [4 x i8], ptr %.0.i74.i, i64 %.354.i21
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  br label %PyUnicode_READ.exit.i

PyUnicode_READ.exit.i:                            ; preds = %bb.o, %bb.n, %bb.m
  %.0.i77.i = phi i32 [ %i.ag, %bb.m ], [ %i.aj, %bb.n ], [ %i.al, %bb.o ] ; 3 uses
  %i.am = icmp ult i32 %.0.i77.i, 128
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %PyUnicode_READ.exit.i
  %i.an = zext nneg i32 %.0.i77.i to i64
  %i.ao = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !205
  %i.aq = zext i8 %i.ap to i32
  br label %Py_UNICODE_ISSPACE.exit.i

bb.q:                                             ; preds = %PyUnicode_READ.exit.i
  %i.ar = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %.0.i77.i) #33, !inline_history !980
  br label %Py_UNICODE_ISSPACE.exit.i

Py_UNICODE_ISSPACE.exit.i:                        ; preds = %bb.q, %bb.p
  %.0.i78.i = phi i32 [ %i.aq, %bb.p ], [ %i.ar, %bb.q ]
  %.not59.i = icmp eq i32 %.0.i78.i, 0
  br i1 %.not59.i, label %Py_UNICODE_ISSPACE.exit.i._crit_edge, label %.preheader.i

Py_UNICODE_ISSPACE.exit.i._crit_edge:             ; preds = %.preheader.i, %Py_UNICODE_ISSPACE.exit.i, %.preheader.preheader.i
  %.354.lcssa.i = phi i64 [ %smax93.i, %.preheader.preheader.i ], [ %smax93.i, %.preheader.i ], [ %.354.i21, %Py_UNICODE_ISSPACE.exit.i ] ; 2 uses
  %.not60.i = icmp eq i32 %1, 0
  br i1 %.not60.i, label %do_strip.exit, label %.thread86.i

.thread86.i:                                      ; preds = %Py_UNICODE_ISSPACE.exit.i._crit_edge, %_PyUnicode_DATA.exit76.i
  %.55689.i = phi i64 [ %.354.lcssa.i, %Py_UNICODE_ISSPACE.exit.i._crit_edge ], [ 0, %_PyUnicode_DATA.exit76.i ] ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %Py_UNICODE_ISSPACE.exit82.i, %.thread86.i
  %.4.in.i = phi i64 [ %.val68.i, %.thread86.i ], [ %.4.i, %Py_UNICODE_ISSPACE.exit82.i ] ; 3 uses
  %.4.i = add i64 %.4.in.i, -1                    ; 5 uses
  %.not61.i = icmp slt i64 %.4.i, %.55689.i
  br i1 %.not61.i, label %do_strip.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.aa, label %bb.v [
    i32 1, label %bb.t
    i32 2, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr i8, ptr %.0.i74.i, i64 %.4.i
  %i.at = load i8, ptr %i.as, align 1, !tbaa !205
  %i.au = zext i8 %i.at to i32
  br label %PyUnicode_READ.exit80.i

bb.u:                                             ; preds = %bb.s
  %i.av = getelementptr [2 x i8], ptr %.0.i74.i, i64 %.4.i
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !208
  %i.ax = zext i16 %i.aw to i32
  br label %PyUnicode_READ.exit80.i

bb.v:                                             ; preds = %bb.s
  %i.ay = getelementptr [4 x i8], ptr %.0.i74.i, i64 %.4.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  br label %PyUnicode_READ.exit80.i

PyUnicode_READ.exit80.i:                          ; preds = %bb.v, %bb.u, %bb.t
  %.0.i79.i = phi i32 [ %i.au, %bb.t ], [ %i.ax, %bb.u ], [ %i.az, %bb.v ] ; 3 uses
  %i.ba = icmp ult i32 %.0.i79.i, 128
  br i1 %i.ba, label %bb.w, label %bb.x

bb.w:                                             ; preds = %PyUnicode_READ.exit80.i
  %i.bb = zext nneg i32 %.0.i79.i to i64
  %i.bc = getelementptr i8, ptr @_Py_ascii_whitespace, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !205
  %i.be = zext i8 %i.bd to i32
  br label %Py_UNICODE_ISSPACE.exit82.i

bb.x:                                             ; preds = %PyUnicode_READ.exit80.i
  %i.bf = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %.0.i79.i) #33, !inline_history !980
  br label %Py_UNICODE_ISSPACE.exit82.i

Py_UNICODE_ISSPACE.exit82.i:                      ; preds = %bb.x, %bb.w
  %.0.i81.i = phi i32 [ %i.be, %bb.w ], [ %i.bf, %bb.x ]
  %.not62.i = icmp eq i32 %.0.i81.i, 0
  br i1 %.not62.i, label %do_strip.exit, label %bb.r

do_strip.exit:                                    ; preds = %bb.i, %bb.j, %bb.r, %Py_UNICODE_ISSPACE.exit82.i, %._crit_edge, %Py_UNICODE_ISSPACE.exit.i._crit_edge
  %.657.i = phi i64 [ %.051.lcssa.i, %._crit_edge ], [ %.354.lcssa.i, %Py_UNICODE_ISSPACE.exit.i._crit_edge ], [ %.55689.i, %bb.r ], [ %.55689.i, %Py_UNICODE_ISSPACE.exit82.i ], [ %.25385.i, %bb.j ], [ %.25385.i, %bb.i ]
  %.8.i = phi i64 [ %.val68.i, %._crit_edge ], [ %.val68.i, %Py_UNICODE_ISSPACE.exit.i._crit_edge ], [ %.4.in.i, %bb.r ], [ %.4.in.i, %Py_UNICODE_ISSPACE.exit82.i ], [ %.047.in.i, %bb.j ], [ %.047.in.i, %bb.i ]
  %i.bg = tail call ptr @PyUnicode_Substring(ptr noundef %0, i64 noundef %.657.i, i64 noundef %.8.i), !inline_history !980
  br label %bb.y

bb.y:                                             ; preds = %do_strip.exit, %bb.d, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.d ], [ %i.bg, %do_strip.exit ]
  ret ptr %.0
}

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @do_swapcase(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 8 uses
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a, %._crit_edge
  %.02736 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.02835 = phi i64 [ %i.ag, %._crit_edge ], [ 0, %bb.a ] ; 5 uses
  switch i32 %0, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph38
  %i.c = getelementptr i8, ptr %1, i64 %.02835
  %i.d = load i8, ptr %i.c, align 1, !tbaa !205
  %i.e = zext i8 %i.d to i32
  br label %PyUnicode_READ.exit

bb.c:                                             ; preds = %.lr.ph38
  %i.f = getelementptr [2 x i8], ptr %1, i64 %.02835
  %i.g = load i16, ptr %i.f, align 2, !tbaa !208
  %i.h = zext i16 %i.g to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %.lr.ph38
  %i.i = getelementptr [4 x i8], ptr %1, i64 %.02835
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.k = call i32 @_PyUnicode_IsUppercase(i32 noundef %.0.i) #33
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %PyUnicode_READ.exit
  %i.l = call fastcc i32 @lower_ucs4(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2, i64 noundef %.02835, i32 noundef %.0.i, ptr noundef %i.a)
  br label %bb.h

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.m = call i32 @_PyUnicode_IsLowercase(i32 noundef %.0.i) #33
  %.not32 = icmp eq i32 %i.m, 0
  br i1 %.not32, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i32 @_PyUnicode_ToUpperFull(i32 noundef %.0.i, ptr noundef nonnull %i.a) #33
  br label %bb.h

.thread:                                          ; preds = %bb.f
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !7
  br label %.lr.ph.preheader

bb.h:                                             ; preds = %bb.g, %bb.e
  %.026 = phi i32 [ %i.l, %bb.e ], [ %i.n, %bb.g ] ; 2 uses
  %i.o = icmp sgt i32 %.026, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.thread, %bb.h
  %.02645 = phi i32 [ 1, %.thread ], [ %.026, %bb.h ] ; 3 uses
  %wide.trip.count = zext nneg i32 %.02645 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i32 %.02645, 1
  br i1 %i.p, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.133 = phi i64 [ %.02736, %.lr.ph.preheader.new ], [ %i.y, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.q = load i32, ptr %4, align 4, !tbaa !7
  %i.r = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %. = call i32 @llvm.umax.i32(i32 %i.q, i32 %i.s)
  store i32 %., ptr %4, align 4, !tbaa !7
  %i.t = getelementptr [4 x i8], ptr %3, i64 %.133
  store i32 %i.s, ptr %i.t, align 4, !tbaa !7
  %i.u = load i32, ptr %4, align 4, !tbaa !7
  %i.v = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7    ; 2 uses
  %..1 = call i32 @llvm.umax.i32(i32 %i.u, i32 %i.x)
  store i32 %..1, ptr %4, align 4, !tbaa !7
  %i.y = add i64 %.133, 2                         ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %3, i64 %.133
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  store i32 %i.x, ptr %i.aa, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !981

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.133.epil.init = phi i64 [ %.02736, %.lr.ph.preheader ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod47 = trunc i32 %.02645 to i1
  call void @llvm.assume(i1 %lcmp.mod47)
  %i.ab = load i32, ptr %4, align 4, !tbaa !7
  %i.ac = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7  ; 2 uses
  %..epil = call i32 @llvm.umax.i32(i32 %i.ab, i32 %i.ad)
  store i32 %..epil, ptr %4, align 4, !tbaa !7
  %i.ae = add i64 %.133.epil.init, 1
  %i.af = getelementptr [4 x i8], ptr %3, i64 %.133.epil.init
  store i32 %i.ad, ptr %i.af, align 4, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.1.lcssa = phi i64 [ %.02736, %bb.h ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %.lr.ph.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ag = add nuw nsw i64 %.02835, 1              ; 2 uses
  %exitcond42.not = icmp eq i64 %i.ag, %2
  br i1 %exitcond42.not, label %._crit_edge39, label %.lr.ph38, !llvm.loop !982

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  %.027.lcssa = phi i64 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  ret i64 %.027.lcssa
}

declare i32 @_PyUnicode_IsUppercase(i32 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsLowercase(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @do_upper(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) #1 {
bb.a:
  %i.a = tail call fastcc i64 @do_upper_or_lower(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef 0)
  ret i64 %i.a
}

declare i32 @_PyUnicode_IsTitlecase(i32 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsDecimalDigit(i32 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsDigit(i32 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsNumeric(i32 noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_IsAlpha(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @build_string(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 3) %3, ptr nofree noundef nonnull captures(address_is_null) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.SubString, align 8          ; 8 uses
  %6 = alloca %struct.SubString, align 8          ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %7 = alloca %struct.FieldNameIterator, align 8  ; 5 uses
  %.sroa.0 = alloca ptr, align 8                  ; 5 uses
  %.sroa.4 = alloca i64, align 8                  ; 5 uses
  %.sroa.7 = alloca i64, align 8                  ; 5 uses
  %8 = alloca %struct.MarkupIterator, align 8     ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %9 = alloca %struct.SubString, align 8          ; 8 uses
  %10 = alloca %struct.SubString, align 8         ; 8 uses
  %11 = alloca %struct.SubString, align 8         ; 9 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %12 = alloca %struct._PyUnicodeWriter, align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  %i.f = icmp eq i32 %3, 0
  %.024.i.sroa.gep10 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.024.i.sroa.gep13 = getelementptr inbounds nuw i8, ptr %11, i64 16
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !194
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.275) #33
  br label %bb.cb

bb.c:                                             ; preds = %bb.a
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %12) #33
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 52 ; 3 uses
  store i8 1, ptr %i.h, align 4, !tbaa !347
  %i.i = load ptr, ptr %0, align 8, !tbaa !940    ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !207
  %i.k = add i64 %.val, 100
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %i.k, ptr %i.l, align 8, !tbaa !346
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  %i.m = getelementptr i8, ptr %0, i64 8
  store ptr %i.i, ptr %8, align 8, !tbaa !940
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = load <2 x i64>, ptr %i.m, align 8, !tbaa !193
  store <2 x i64> %i.p, ptr %i.n, align 8, !tbaa !193
  %i.q = call fastcc i32 @MarkupIterator_next(ptr noundef nonnull %8, ptr noundef %9, ptr noundef %i.d, ptr noundef %10, ptr noundef %11, ptr noundef %i.e, ptr noundef %i.c), !inline_history !983 ; 2 uses
  %i.r = icmp eq i32 %i.q, 2
  br i1 %i.r, label %.lr.ph, label %do_markup.exit

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.w = icmp eq ptr %1, null
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = icmp eq ptr %2, null
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = add nsw i32 %3, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.by
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !943 ; 2 uses
  %i.ae = load i64, ptr %i.t, align 8, !tbaa !942 ; 2 uses
  %.not.i = icmp eq i64 %i.ad, %i.ae
  %.pre = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not13.i = icmp eq i32 %.pre, 0
  br i1 %.not13.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.n, align 8, !tbaa !984
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !986
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.h, align 4, !tbaa !347
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = load ptr, ptr %9, align 8, !tbaa !940
  %i.aj = call i32 @_PyUnicodeWriter_WriteSubstring(ptr noundef nonnull %12, ptr noundef %i.ai, i64 noundef %i.ae, i64 noundef %i.ad) #33, !inline_history !983
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %do_markup.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.not14.i = icmp eq i32 %.pre, 0
  br i1 %.not14.i, label %bb.by, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.n, align 8, !tbaa !984
  %i.am = load i64, ptr %i.o, align 8, !tbaa !986
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.h, align 4, !tbaa !347
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !7
  %i.ap = load i32, ptr %i.e, align 4, !tbaa !7   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.aq = load ptr, ptr %10, align 8, !tbaa !940
  %i.ar = load i64, ptr %i.u, align 8, !tbaa !942
  %i.as = load i64, ptr %i.v, align 8, !tbaa !943
  %i.at = call fastcc i32 @field_name_split(ptr noundef %i.aq, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef %6, ptr noundef %i.b, ptr noundef nonnull %7, ptr noundef nonnull %4), !inline_history !987
  %.not.i39.i = icmp eq i32 %i.at, 0
  br i1 %.not.i39.i, label %output_markup.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i64, ptr %i.b, align 8, !tbaa !193 ; 3 uses
  %i.av = icmp eq i64 %i.au, -1
  br i1 %i.av, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %6, align 8, !tbaa !940   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %SubString_new_object.exit.thread.i.i, label %SubString_new_object.exit.i.i

SubString_new_object.exit.i.i:                    ; preds = %bb.n
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !942
  %i.az = load i64, ptr %i.y, align 8, !tbaa !943
  %i.ba = call ptr @PyUnicode_Substring(ptr noundef nonnull %i.aw, i64 noundef %i.ay, i64 noundef %i.az), !inline_history !988 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
end_hunk_7
