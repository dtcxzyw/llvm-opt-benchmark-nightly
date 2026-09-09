Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_iunncopy?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @dtrsm_iunncopy(i64 noundef %0, i64 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef writeonly %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ashr i64 %1, 4                           ; 3 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %.lr.ph437, label %._crit_edge438

.lr.ph437:                                        ; preds = %bb.a
  %.idx386 = shl nsw i64 %3, 4
  %.idx387 = mul nsw i64 %3, 24
  %.idx388 = shl nsw i64 %3, 5
  %.idx389 = mul nsw i64 %3, 40
  %.idx390 = mul nsw i64 %3, 48
  %.idx391 = mul nsw i64 %3, 56
  %.idx392 = shl nsw i64 %3, 6
  %.idx393 = mul nsw i64 %3, 72
  %.idx394 = mul nsw i64 %3, 80
  %.idx395 = mul nsw i64 %3, 88
  %.idx396 = mul nsw i64 %3, 96
  %.idx397 = mul nsw i64 %3, 104
  %.idx398 = mul nsw i64 %3, 112
  %.idx399 = mul nsw i64 %3, 120
  %.idx400 = shl nsw i64 %3, 7
  %i.c = icmp sgt i64 %0, 0
  br i1 %i.c, label %.lr.ph431.us.preheader, label %.lr.ph437.split.preheader

.lr.ph431.us.preheader:                           ; preds = %.lr.ph437
  %i.d = shl i64 %4, 3                            ; 2 uses
  %i.e = sub i64 8, %i.d                          ; 2 uses
  %i.f = sub i64 16, %i.d                         ; 2 uses
  %i.g = add i64 %4, 1
  %i.h = getelementptr i8, ptr %2, i64 %i.e
  %i.i = getelementptr i8, ptr %2, i64 %i.f
  %ident.check.not = icmp eq i64 %3, 1
  br label %.lr.ph431.us

.lr.ph437.split.preheader:                        ; preds = %.lr.ph437
  %i.j = mul i64 %i.a, %3
  %i.k = shl i64 %i.j, 7
  %scevgep = getelementptr i8, ptr %2, i64 %i.k
  %i.l = and i64 %1, -16
  %i.m = add i64 %4, %i.l
  br label %._crit_edge438

.lr.ph431.us:                                     ; preds = %.lr.ph431.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph431.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 5 uses
  %.0340435.us = phi i64 [ %4, %.lr.ph431.us.preheader ], [ %i.dx, %._crit_edge.us ] ; 5 uses
  %.0344434.us = phi i64 [ %i.a, %.lr.ph431.us.preheader ], [ %i.dy, %._crit_edge.us ] ; 2 uses
  %.0355433.us = phi ptr [ %5, %.lr.ph431.us.preheader ], [ %i.du, %._crit_edge.us ] ; 3 uses
  %.0360432.us = phi ptr [ %2, %.lr.ph431.us.preheader ], [ %i.dw, %._crit_edge.us ] ; 17 uses
  %i.n = mul nsw i64 %indvar, -16
  %i.o = sub i64 %i.n, %4
  %i.p = shl nuw nsw i64 %indvar, 4
  %i.q = add i64 %i.g, %i.p
  %i.r = mul i64 %indvar, -128                    ; 2 uses
  %i.s = mul nsw i64 %indvar, -16
  %i.t = sub i64 %i.s, %4
  %i.u = getelementptr inbounds [8 x i8], ptr %.0360432.us, i64 %3
  %i.v = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx386
  %i.w = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx387
  %i.x = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx388
  %i.y = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx389
  %i.z = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx390
  %i.aa = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx391
  %i.ab = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx392
  %i.ac = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx393
  %i.ad = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx394
  %i.ae = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx395
  %i.af = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx396
  %i.ag = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx397
  %i.ah = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx398
  %i.ai = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx399
  %i.aj = sub i64 0, %.0340435.us
  %i.ak = getelementptr i8, ptr %.0355433.us, i64 %i.e
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.r
  %i.am = getelementptr i8, ptr %.0355433.us, i64 %i.f
  %i.an = getelementptr i8, ptr %i.am, i64 %i.r
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph431.us, %.thread402.us
  %.0430.us = phi ptr [ %i.ai, %.lr.ph431.us ], [ %i.dt, %.thread402.us ] ; 2 uses
  %.0309429.us = phi ptr [ %i.ah, %.lr.ph431.us ], [ %i.ds, %.thread402.us ] ; 2 uses
  %.0310428.us = phi ptr [ %i.ag, %.lr.ph431.us ], [ %i.dr, %.thread402.us ] ; 2 uses
  %.0311427.us = phi ptr [ %i.af, %.lr.ph431.us ], [ %i.dq, %.thread402.us ] ; 2 uses
  %.0312426.us = phi ptr [ %i.ae, %.lr.ph431.us ], [ %i.dp, %.thread402.us ] ; 2 uses
  %.0313425.us = phi ptr [ %i.ad, %.lr.ph431.us ], [ %i.do, %.thread402.us ] ; 2 uses
  %.0314424.us = phi ptr [ %i.ac, %.lr.ph431.us ], [ %i.dn, %.thread402.us ] ; 2 uses
  %.0315423.us = phi ptr [ %i.ab, %.lr.ph431.us ], [ %i.dm, %.thread402.us ] ; 2 uses
  %.0316422.us = phi ptr [ %i.aa, %.lr.ph431.us ], [ %i.dl, %.thread402.us ] ; 2 uses
  %.0317421.us = phi ptr [ %i.z, %.lr.ph431.us ], [ %i.dk, %.thread402.us ] ; 2 uses
  %.0319420.us = phi ptr [ %i.y, %.lr.ph431.us ], [ %i.dj, %.thread402.us ] ; 2 uses
  %.0321419.us = phi ptr [ %i.x, %.lr.ph431.us ], [ %i.di, %.thread402.us ] ; 2 uses
  %.0323418.us = phi ptr [ %i.w, %.lr.ph431.us ], [ %i.dh, %.thread402.us ] ; 2 uses
  %.0325417.us = phi ptr [ %i.v, %.lr.ph431.us ], [ %i.dg, %.thread402.us ] ; 2 uses
  %.0328416.us = phi ptr [ %i.u, %.lr.ph431.us ], [ %i.df, %.thread402.us ] ; 2 uses
  %.0331415.us = phi ptr [ %.0360432.us, %.lr.ph431.us ], [ %i.de, %.thread402.us ] ; 6 uses
  %.0345414.us = phi i64 [ 0, %.lr.ph431.us ], [ %i.dv, %.thread402.us ] ; 10 uses
  %.1356412.us = phi ptr [ %.0355433.us, %.lr.ph431.us ], [ %i.du, %.thread402.us ] ; 21 uses
  %i.ao = add i64 %i.o, %.0345414.us
  %smax534 = tail call i64 @llvm.smax.i64(i64 %i.ao, i64 14)
  %i.ap = sub i64 %i.q, %.0345414.us
  %i.aq = add i64 %smax534, %i.ap                 ; 7 uses
  %i.ar = mul i64 %.0345414.us, 136               ; 2 uses
  %scevgep528 = getelementptr i8, ptr %i.al, i64 %i.ar
  %scevgep529 = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.as = add i64 %i.t, %.0345414.us
  %smax = tail call i64 @llvm.smax.i64(i64 %i.as, i64 14)
  %i.at = sub i64 %.0340435.us, %.0345414.us
  %i.au = add i64 %smax, %i.at
  %i.av = shl i64 %i.au, 3                        ; 2 uses
  %scevgep530 = getelementptr i8, ptr %scevgep529, i64 %i.av
  %i.aw = shl i64 %.0345414.us, 4                 ; 2 uses
  %scevgep531 = getelementptr i8, ptr %i.h, i64 %i.aw
  %scevgep532 = getelementptr i8, ptr %i.i, i64 %i.aw
  %scevgep533 = getelementptr i8, ptr %scevgep532, i64 %i.av
  %.not401.us = icmp slt i64 %.0345414.us, %.0340435.us
  br i1 %.not401.us, label %.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = sub nsw i64 %.0345414.us, %.0340435.us  ; 9 uses
  %i.ay = icmp slt i64 %i.ax, 16
  br i1 %i.ay, label %bb.d, label %.thread402.us

bb.d:                                             ; preds = %bb.c
  %i.az = mul nsw i64 %i.ax, %3
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0331415.us, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !39
  %i.bc = fdiv double 1.000000e+00, %i.bb
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.1356412.us, i64 %.0345414.us
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.aj
  store double %i.bc, ptr %i.be, align 8, !tbaa !39
  %.not491 = icmp eq i64 %i.ax, 15
  br i1 %.not491, label %.thread402.us, label %iter.check

iter.check:                                       ; preds = %bb.d
  %min.iters.check = icmp ugt i64 %i.aq, 3
  %or.cond671 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond671, label %vector.memcheck, label %.lr.ph.us.preheader

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep528, %scevgep533
  %bound1 = icmp ult ptr %scevgep531, %scevgep530
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check535 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check535, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.bg = add i64 %i.ax, %n.vec
  %invariant.op = add nuw i64 %i.ax, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0331415.us, i64 %.reass ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  %wide.load = load <4 x double>, ptr %i.bh, align 8, !tbaa !39, !alias.scope !40
  %wide.load536 = load <4 x double>, ptr %i.bi, align 8, !tbaa !39, !alias.scope !40
  %wide.load537 = load <4 x double>, ptr %i.bj, align 8, !tbaa !39, !alias.scope !40
  %wide.load538 = load <4 x double>, ptr %i.bk, align 8, !tbaa !39, !alias.scope !40
  %i.bl = getelementptr inbounds [8 x i8], ptr %.1356412.us, i64 %.reass ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  store <4 x double> %wide.load, ptr %i.bl, align 8, !tbaa !39, !alias.scope !41, !noalias !40
  store <4 x double> %wide.load536, ptr %i.bm, align 8, !tbaa !39, !alias.scope !41, !noalias !40
  store <4 x double> %wide.load537, ptr %i.bn, align 8, !tbaa !39, !alias.scope !41, !noalias !40
  store <4 x double> %wide.load538, ptr %i.bo, align 8, !tbaa !39, !alias.scope !41, !noalias !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %.thread402.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec539 = and i64 %i.aq, -4                   ; 3 uses
  %i.bq = add i64 %i.ax, %n.vec539
  %invariant.op689 = add nuw i64 %i.ax, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index540 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next542, %vec.epilog.vector.body ] ; 2 uses
  %.reass690 = add nuw i64 %index540, %invariant.op689 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.0331415.us, i64 %.reass690
  %wide.load541 = load <4 x double>, ptr %i.br, align 8, !tbaa !39, !alias.scope !40
  %i.bs = getelementptr inbounds [8 x i8], ptr %.1356412.us, i64 %.reass690
  store <4 x double> %wide.load541, ptr %i.bs, align 8, !tbaa !39, !alias.scope !41, !noalias !40
  %index.next542 = add nuw i64 %index540, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next542, %n.vec539
  br i1 %i.bt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n543 = icmp eq i64 %i.aq, %n.vec539
  br i1 %cmp.n543, label %.thread402.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0335.in411.us.ph = phi i64 [ %i.ax, %iter.check ], [ %i.ax, %vector.memcheck ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.0335.in411.us = phi i64 [ %.0335.us, %.lr.ph.us ], [ %.0335.in411.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.0335.us = add nuw nsw i64 %.0335.in411.us, 1  ; 3 uses
  %i.bu = mul nsw i64 %.0335.us, %3
  %i.bv = getelementptr inbounds [8 x i8], ptr %.0331415.us, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !39
  %i.bx = getelementptr inbounds [8 x i8], ptr %.1356412.us, i64 %.0335.us
  store double %i.bw, ptr %i.bx, align 8, !tbaa !39
  %i.by = icmp slt i64 %.0335.in411.us, 14
  br i1 %i.by, label %.lr.ph.us, label %.thread402.us, !llvm.loop !13

.thread.us:                                       ; preds = %bb.b
  %i.bz = load double, ptr %.0331415.us, align 8, !tbaa !39
  store double %i.bz, ptr %.1356412.us, align 8, !tbaa !39
  %i.ca = load double, ptr %.0328416.us, align 8, !tbaa !39
  %i.cb = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 8
  store double %i.ca, ptr %i.cb, align 8, !tbaa !39
  %i.cc = load double, ptr %.0325417.us, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 16
  store double %i.cc, ptr %i.cd, align 8, !tbaa !39
  %i.ce = load double, ptr %.0323418.us, align 8, !tbaa !39
  %i.cf = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 24
  store double %i.ce, ptr %i.cf, align 8, !tbaa !39
  %i.cg = load double, ptr %.0321419.us, align 8, !tbaa !39
  %i.ch = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 32
  store double %i.cg, ptr %i.ch, align 8, !tbaa !39
  %i.ci = load double, ptr %.0319420.us, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 40
  store double %i.ci, ptr %i.cj, align 8, !tbaa !39
  %i.ck = load double, ptr %.0317421.us, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 48
  store double %i.ck, ptr %i.cl, align 8, !tbaa !39
  %i.cm = load double, ptr %.0316422.us, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 56
  store double %i.cm, ptr %i.cn, align 8, !tbaa !39
  %i.co = load double, ptr %.0315423.us, align 8, !tbaa !39
  %i.cp = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 64
  store double %i.co, ptr %i.cp, align 8, !tbaa !39
  %i.cq = load double, ptr %.0314424.us, align 8, !tbaa !39
  %i.cr = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 72
  store double %i.cq, ptr %i.cr, align 8, !tbaa !39
  %i.cs = load double, ptr %.0313425.us, align 8, !tbaa !39
  %i.ct = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 80
  store double %i.cs, ptr %i.ct, align 8, !tbaa !39
  %i.cu = load double, ptr %.0312426.us, align 8, !tbaa !39
  %i.cv = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 88
  store double %i.cu, ptr %i.cv, align 8, !tbaa !39
  %i.cw = load double, ptr %.0311427.us, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 96
  store double %i.cw, ptr %i.cx, align 8, !tbaa !39
  %i.cy = load double, ptr %.0310428.us, align 8, !tbaa !39
  %i.cz = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 104
  store double %i.cy, ptr %i.cz, align 8, !tbaa !39
  %i.da = load double, ptr %.0309429.us, align 8, !tbaa !39
  %i.db = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 112
  store double %i.da, ptr %i.db, align 8, !tbaa !39
  %i.dc = load double, ptr %.0430.us, align 8, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 120
  store double %i.dc, ptr %i.dd, align 8, !tbaa !39
  br label %.thread402.us

.thread402.us:                                    ; preds = %.lr.ph.us, %middle.block, %vec.epilog.middle.block, %bb.d, %.thread.us, %bb.c
  %i.de = getelementptr inbounds nuw i8, ptr %.0331415.us, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %.0328416.us, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0325417.us, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0323418.us, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0321419.us, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0319420.us, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %.0317421.us, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.0316422.us, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0315423.us, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.0314424.us, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.0313425.us, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0312426.us, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0311427.us, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0310428.us, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0309429.us, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0430.us, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.1356412.us, i64 128 ; 3 uses
  %i.dv = add nuw nsw i64 %.0345414.us, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %0
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !14

._crit_edge.us:                                   ; preds = %.thread402.us
  %i.dw = getelementptr inbounds i8, ptr %.0360432.us, i64 %.idx400 ; 2 uses
  %i.dx = add i64 %.0340435.us, 16                ; 2 uses
  %i.dy = add nsw i64 %.0344434.us, -1
  %i.dz = icmp sgt i64 %.0344434.us, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dz, label %.lr.ph431.us, label %._crit_edge438, !llvm.loop !15

._crit_edge438:                                   ; preds = %._crit_edge.us, %.lr.ph437.split.preheader, %bb.a
  %.0360.lcssa = phi ptr [ %2, %bb.a ], [ %scevgep, %.lr.ph437.split.preheader ], [ %i.dw, %._crit_edge.us ] ; 12 uses
  %.0355.lcssa = phi ptr [ %5, %bb.a ], [ %5, %.lr.ph437.split.preheader ], [ %i.du, %._crit_edge.us ] ; 5 uses
  %.0340.lcssa = phi i64 [ %4, %bb.a ], [ %i.m, %.lr.ph437.split.preheader ], [ %i.dx, %._crit_edge.us ] ; 10 uses
  %i.ea = and i64 %1, 8
  %.not = icmp eq i64 %i.ea, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge438
  %.idx374 = shl nsw i64 %3, 6
  %i.eb = getelementptr inbounds i8, ptr %.0360.lcssa, i64 %.idx374
  %i.ec = icmp sgt i64 %0, 0
  br i1 %i.ec, label %.lr.ph456, label %._crit_edge

.lr.ph456:                                        ; preds = %bb.e
  %.idx373 = mul nsw i64 %3, 56
  %i.ed = getelementptr inbounds i8, ptr %.0360.lcssa, i64 %.idx373
  %.idx372 = mul nsw i64 %3, 48
  %i.ee = getelementptr inbounds i8, ptr %.0360.lcssa, i64 %.idx372
  %.idx371 = mul nsw i64 %3, 40
  %i.ef = getelementptr inbounds i8, ptr %.0360.lcssa, i64 %.idx371
  %.idx370 = shl nsw i64 %3, 5
  %i.eg = getelementptr inbounds i8, ptr %.0360.lcssa, i64 %.idx370
  %.idx369 = mul nsw i64 %3, 24
  %i.eh = getelementptr inbounds i8, ptr %.0360.lcssa, i64 %.idx369
  %.idx = shl nsw i64 %3, 4
  %i.ei = getelementptr inbounds i8, ptr %.0360.lcssa, i64 %.idx
  %i.ej = getelementptr inbounds [8 x i8], ptr %.0360.lcssa, i64 %3
  %i.ek = sub i64 0, %.0340.lcssa
  %i.el = shl i64 %.0340.lcssa, 3                 ; 2 uses
  %i.em = sub i64 8, %i.el                        ; 2 uses
  %i.en = sub i64 16, %i.el                       ; 2 uses
  %i.eo = add i64 %.0340.lcssa, 1
  %i.ep = getelementptr i8, ptr %.0355.lcssa, i64 %i.em
  %i.eq = getelementptr i8, ptr %.0355.lcssa, i64 %i.en
  %i.er = getelementptr i8, ptr %.0360.lcssa, i64 %i.em
  %i.es = getelementptr i8, ptr %.0360.lcssa, i64 %i.en
  %ident.check546.not = icmp eq i64 %3, 1
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph456, %.thread404
  %.1455 = phi ptr [ %i.ed, %.lr.ph456 ], [ %i.ha, %.thread404 ] ; 2 uses
  %.1318454 = phi ptr [ %i.ee, %.lr.ph456 ], [ %i.gz, %.thread404 ] ; 2 uses
  %.1320453 = phi ptr [ %i.ef, %.lr.ph456 ], [ %i.gy, %.thread404 ] ; 2 uses
  %.1322452 = phi ptr [ %i.eg, %.lr.ph456 ], [ %i.gx, %.thread404 ] ; 2 uses
  %.1324451 = phi ptr [ %i.eh, %.lr.ph456 ], [ %i.gw, %.thread404 ] ; 2 uses
  %.1326450 = phi ptr [ %i.ei, %.lr.ph456 ], [ %i.gv, %.thread404 ] ; 2 uses
  %.1329449 = phi ptr [ %i.ej, %.lr.ph456 ], [ %i.gu, %.thread404 ] ; 2 uses
  %.1332448 = phi ptr [ %.0360.lcssa, %.lr.ph456 ], [ %i.gt, %.thread404 ] ; 6 uses
  %.1346447 = phi i64 [ 0, %.lr.ph456 ], [ %i.hc, %.thread404 ] ; 10 uses
  %.2357445 = phi ptr [ %.0355.lcssa, %.lr.ph456 ], [ %i.hb, %.thread404 ] ; 13 uses
  %i.et = sub i64 %.1346447, %.0340.lcssa
  %smax558 = tail call i64 @llvm.smax.i64(i64 %i.et, i64 6)
  %i.eu = sub i64 %i.eo, %.1346447
  %i.ev = add i64 %smax558, %i.eu                 ; 7 uses
  %i.ew = mul i64 %.1346447, 72                   ; 2 uses
  %scevgep548 = getelementptr i8, ptr %i.ep, i64 %i.ew
  %scevgep549 = getelementptr i8, ptr %i.eq, i64 %i.ew
  %i.ex = sub i64 %.1346447, %.0340.lcssa
  %smax550 = tail call i64 @llvm.smax.i64(i64 %i.ex, i64 6)
  %i.ey = sub i64 %.0340.lcssa, %.1346447
  %i.ez = add i64 %smax550, %i.ey
  %i.fa = shl i64 %i.ez, 3                        ; 2 uses
  %scevgep551 = getelementptr i8, ptr %scevgep549, i64 %i.fa
  %i.fb = shl i64 %.1346447, 4                    ; 2 uses
  %scevgep552 = getelementptr i8, ptr %i.er, i64 %i.fb
  %scevgep553 = getelementptr i8, ptr %i.es, i64 %i.fb
  %scevgep554 = getelementptr i8, ptr %scevgep553, i64 %i.fa
  %.not385 = icmp slt i64 %.1346447, %.0340.lcssa
  br i1 %.not385, label %.thread403, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fc = sub nsw i64 %.1346447, %.0340.lcssa     ; 9 uses
  %i.fd = icmp slt i64 %i.fc, 8
  br i1 %i.fd, label %bb.h, label %.thread404

bb.h:                                             ; preds = %bb.g
  %i.fe = mul nsw i64 %i.fc, %3
  %i.ff = getelementptr inbounds [8 x i8], ptr %.1332448, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !39
  %i.fh = fdiv double 1.000000e+00, %i.fg
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.2357445, i64 %.1346447
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.ek
  store double %i.fh, ptr %i.fj, align 8, !tbaa !39
  %.not492 = icmp eq i64 %i.fc, 7
  br i1 %.not492, label %.thread404, label %iter.check574

iter.check574:                                    ; preds = %bb.h
  %min.iters.check559 = icmp ugt i64 %i.ev, 3
  %or.cond672 = and i1 %min.iters.check559, %ident.check546.not
  br i1 %or.cond672, label %vector.memcheck547, label %.lr.ph.preheader

vector.memcheck547:                               ; preds = %iter.check574
  %bound0555 = icmp ult ptr %scevgep548, %scevgep554
  %bound1556 = icmp ult ptr %scevgep552, %scevgep551
  %found.conflict557 = and i1 %bound0555, %bound1556
  br i1 %found.conflict557, label %.lr.ph.preheader, label %vector.main.loop.iter.check560

vector.main.loop.iter.check560:                   ; preds = %vector.memcheck547
  %min.iters.check561 = icmp ult i64 %i.ev, 16
  br i1 %min.iters.check561, label %vec.epilog.ph578, label %vector.ph562

vector.ph562:                                     ; preds = %vector.main.loop.iter.check560
  %i.fk = and i64 %i.ev, 12
  %n.vec563 = and i64 %i.ev, -16                  ; 4 uses
  %i.fl = add i64 %i.fc, %n.vec563
  %invariant.op691 = add nuw i64 %i.fc, 1
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph562
  %index565 = phi i64 [ 0, %vector.ph562 ], [ %index.next570, %vector.body564 ] ; 2 uses
  %.reass692 = add nuw i64 %index565, %invariant.op691 ; 2 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %.1332448, i64 %.reass692 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 96
  %wide.load566 = load <4 x double>, ptr %i.fm, align 8, !tbaa !39, !alias.scope !46
  %wide.load567 = load <4 x double>, ptr %i.fn, align 8, !tbaa !39, !alias.scope !46
  %wide.load568 = load <4 x double>, ptr %i.fo, align 8, !tbaa !39, !alias.scope !46
  %wide.load569 = load <4 x double>, ptr %i.fp, align 8, !tbaa !39, !alias.scope !46
  %i.fq = getelementptr inbounds [8 x i8], ptr %.2357445, i64 %.reass692 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 64
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  store <4 x double> %wide.load566, ptr %i.fq, align 8, !tbaa !39, !alias.scope !47, !noalias !46
  store <4 x double> %wide.load567, ptr %i.fr, align 8, !tbaa !39, !alias.scope !47, !noalias !46
  store <4 x double> %wide.load568, ptr %i.fs, align 8, !tbaa !39, !alias.scope !47, !noalias !46
  store <4 x double> %wide.load569, ptr %i.ft, align 8, !tbaa !39, !alias.scope !47, !noalias !46
  %index.next570 = add nuw i64 %index565, 16      ; 2 uses
  %i.fu = icmp eq i64 %index.next570, %n.vec563
  br i1 %i.fu, label %middle.block571, label %vector.body564, !llvm.loop !19

middle.block571:                                  ; preds = %vector.body564
  %cmp.n572 = icmp eq i64 %i.ev, %n.vec563
  br i1 %cmp.n572, label %.thread404, label %vec.epilog.iter.check576

vec.epilog.iter.check576:                         ; preds = %middle.block571
  %min.epilog.iters.check577 = icmp eq i64 %i.fk, 0
  br i1 %min.epilog.iters.check577, label %.lr.ph.preheader, label %vec.epilog.ph578, !prof !45

vec.epilog.ph578:                                 ; preds = %vector.main.loop.iter.check560, %vec.epilog.iter.check576
  %vec.epilog.resume.val573 = phi i64 [ %n.vec563, %vec.epilog.iter.check576 ], [ 0, %vector.main.loop.iter.check560 ]
  %n.vec579 = and i64 %i.ev, -4                   ; 3 uses
  %i.fv = add i64 %i.fc, %n.vec579
  %invariant.op693 = add nuw i64 %i.fc, 1
  br label %vec.epilog.vector.body580

vec.epilog.vector.body580:                        ; preds = %vec.epilog.vector.body580, %vec.epilog.ph578
  %index581 = phi i64 [ %vec.epilog.resume.val573, %vec.epilog.ph578 ], [ %index.next583, %vec.epilog.vector.body580 ] ; 2 uses
  %.reass694 = add nuw i64 %index581, %invariant.op693 ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %.1332448, i64 %.reass694
  %wide.load582 = load <4 x double>, ptr %i.fw, align 8, !tbaa !39, !alias.scope !46
  %i.fx = getelementptr inbounds [8 x i8], ptr %.2357445, i64 %.reass694
  store <4 x double> %wide.load582, ptr %i.fx, align 8, !tbaa !39, !alias.scope !47, !noalias !46
  %index.next583 = add nuw i64 %index581, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next583, %n.vec579
  br i1 %i.fy, label %vec.epilog.middle.block584, label %vec.epilog.vector.body580, !llvm.loop !20

vec.epilog.middle.block584:                       ; preds = %vec.epilog.vector.body580
  %cmp.n585 = icmp eq i64 %i.ev, %n.vec579
  br i1 %cmp.n585, label %.thread404, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck547, %iter.check574, %vec.epilog.iter.check576, %vec.epilog.middle.block584
  %.1336.in444.ph = phi i64 [ %i.fc, %iter.check574 ], [ %i.fc, %vector.memcheck547 ], [ %i.fl, %vec.epilog.iter.check576 ], [ %i.fv, %vec.epilog.middle.block584 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1336.in444 = phi i64 [ %.1336, %.lr.ph ], [ %.1336.in444.ph, %.lr.ph.preheader ] ; 2 uses
  %.1336 = add nuw nsw i64 %.1336.in444, 1        ; 3 uses
  %i.fz = mul nsw i64 %.1336, %3
  %i.ga = getelementptr inbounds [8 x i8], ptr %.1332448, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !39
  %i.gc = getelementptr inbounds [8 x i8], ptr %.2357445, i64 %.1336
  store double %i.gb, ptr %i.gc, align 8, !tbaa !39
  %i.gd = icmp slt i64 %.1336.in444, 6
  br i1 %i.gd, label %.lr.ph, label %.thread404, !llvm.loop !21

.thread403:                                       ; preds = %bb.f
  %i.ge = load double, ptr %.1332448, align 8, !tbaa !39
  store double %i.ge, ptr %.2357445, align 8, !tbaa !39
  %i.gf = load double, ptr %.1329449, align 8, !tbaa !39
  %i.gg = getelementptr inbounds nuw i8, ptr %.2357445, i64 8
  store double %i.gf, ptr %i.gg, align 8, !tbaa !39
  %i.gh = load double, ptr %.1326450, align 8, !tbaa !39
  %i.gi = getelementptr inbounds nuw i8, ptr %.2357445, i64 16
  store double %i.gh, ptr %i.gi, align 8, !tbaa !39
  %i.gj = load double, ptr %.1324451, align 8, !tbaa !39
  %i.gk = getelementptr inbounds nuw i8, ptr %.2357445, i64 24
  store double %i.gj, ptr %i.gk, align 8, !tbaa !39
  %i.gl = load double, ptr %.1322452, align 8, !tbaa !39
  %i.gm = getelementptr inbounds nuw i8, ptr %.2357445, i64 32
  store double %i.gl, ptr %i.gm, align 8, !tbaa !39
  %i.gn = load double, ptr %.1320453, align 8, !tbaa !39
  %i.go = getelementptr inbounds nuw i8, ptr %.2357445, i64 40
  store double %i.gn, ptr %i.go, align 8, !tbaa !39
  %i.gp = load double, ptr %.1318454, align 8, !tbaa !39
  %i.gq = getelementptr inbounds nuw i8, ptr %.2357445, i64 48
  store double %i.gp, ptr %i.gq, align 8, !tbaa !39
  %i.gr = load double, ptr %.1455, align 8, !tbaa !39
  %i.gs = getelementptr inbounds nuw i8, ptr %.2357445, i64 56
  store double %i.gr, ptr %i.gs, align 8, !tbaa !39
  br label %.thread404

.thread404:                                       ; preds = %.lr.ph, %middle.block571, %vec.epilog.middle.block584, %bb.h, %bb.g, %.thread403
  %i.gt = getelementptr inbounds nuw i8, ptr %.1332448, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %.1329449, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.1326450, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %.1324451, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.1322452, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.1320453, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.1318454, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.1455, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %.2357445, i64 64 ; 2 uses
  %i.hc = add nuw nsw i64 %.1346447, 1            ; 2 uses
  %exitcond503.not = icmp eq i64 %i.hc, %0
  br i1 %exitcond503.not, label %._crit_edge, label %bb.f, !llvm.loop !22

._crit_edge:                                      ; preds = %.thread404, %bb.e
  %.2357.lcssa = phi ptr [ %.0355.lcssa, %bb.e ], [ %i.hb, %.thread404 ]
  %i.hd = add nsw i64 %.0340.lcssa, 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %._crit_edge438
  %.1361 = phi ptr [ %i.eb, %._crit_edge ], [ %.0360.lcssa, %._crit_edge438 ] ; 8 uses
  %.3358 = phi ptr [ %.2357.lcssa, %._crit_edge ], [ %.0355.lcssa, %._crit_edge438 ] ; 5 uses
  %.1341 = phi i64 [ %i.hd, %._crit_edge ], [ %.0340.lcssa, %._crit_edge438 ] ; 10 uses
  %i.he = and i64 %1, 4
  %.not375 = icmp eq i64 %i.he, 0
  br i1 %.not375, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.idx378 = shl nsw i64 %3, 5
  %i.hf = getelementptr inbounds i8, ptr %.1361, i64 %.idx378
  %i.hg = icmp sgt i64 %0, 0
  br i1 %i.hg, label %.lr.ph468, label %._crit_edge469

.lr.ph468:                                        ; preds = %bb.j
  %.idx377 = mul nsw i64 %3, 24
  %i.hh = getelementptr inbounds i8, ptr %.1361, i64 %.idx377
  %.idx376 = shl nsw i64 %3, 4
  %i.hi = getelementptr inbounds i8, ptr %.1361, i64 %.idx376
  %i.hj = getelementptr inbounds [8 x i8], ptr %.1361, i64 %3
  %i.hk = sub i64 0, %.1341
  %i.hl = shl i64 %.1341, 3                       ; 2 uses
  %i.hm = sub i64 8, %i.hl                        ; 2 uses
  %i.hn = sub i64 16, %i.hl                       ; 2 uses
  %i.ho = add i64 %.1341, 1
  %i.hp = getelementptr i8, ptr %.3358, i64 %i.hm
  %i.hq = getelementptr i8, ptr %.3358, i64 %i.hn
  %i.hr = getelementptr i8, ptr %.1361, i64 %i.hm
  %i.hs = getelementptr i8, ptr %.1361, i64 %i.hn
  %ident.check588.not = icmp eq i64 %3, 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph468, %.thread406
  %.2466 = phi ptr [ %i.hh, %.lr.ph468 ], [ %i.jo, %.thread406 ] ; 2 uses
  %.2327465 = phi ptr [ %i.hi, %.lr.ph468 ], [ %i.jn, %.thread406 ] ; 2 uses
  %.2330464 = phi ptr [ %i.hj, %.lr.ph468 ], [ %i.jm, %.thread406 ] ; 2 uses
  %.2333463 = phi ptr [ %.1361, %.lr.ph468 ], [ %i.jl, %.thread406 ] ; 6 uses
  %.2347462 = phi i64 [ 0, %.lr.ph468 ], [ %i.jq, %.thread406 ] ; 10 uses
  %.4359460 = phi ptr [ %.3358, %.lr.ph468 ], [ %i.jp, %.thread406 ] ; 9 uses
  %i.ht = sub i64 %.2347462, %.1341
  %smax600 = tail call i64 @llvm.smax.i64(i64 %i.ht, i64 2)
  %i.hu = sub i64 %i.ho, %.2347462
  %i.hv = add i64 %smax600, %i.hu                 ; 7 uses
  %i.hw = mul i64 %.2347462, 40                   ; 2 uses
  %scevgep590 = getelementptr i8, ptr %i.hp, i64 %i.hw
  %scevgep591 = getelementptr i8, ptr %i.hq, i64 %i.hw
  %i.hx = sub i64 %.2347462, %.1341
  %smax592 = tail call i64 @llvm.smax.i64(i64 %i.hx, i64 2)
  %i.hy = sub i64 %.1341, %.2347462
  %i.hz = add i64 %smax592, %i.hy
  %i.ia = shl i64 %i.hz, 3                        ; 2 uses
  %scevgep593 = getelementptr i8, ptr %scevgep591, i64 %i.ia
  %i.ib = shl i64 %.2347462, 4                    ; 2 uses
  %scevgep594 = getelementptr i8, ptr %i.hr, i64 %i.ib
  %scevgep595 = getelementptr i8, ptr %i.hs, i64 %i.ib
  %scevgep596 = getelementptr i8, ptr %scevgep595, i64 %i.ia
  %.not384 = icmp slt i64 %.2347462, %.1341
  br i1 %.not384, label %.thread405, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ic = sub nsw i64 %.2347462, %.1341           ; 9 uses
  %i.id = icmp slt i64 %i.ic, 4
  br i1 %i.id, label %bb.m, label %.thread406

bb.m:                                             ; preds = %bb.l
  %i.ie = mul nsw i64 %i.ic, %3
  %i.if = getelementptr inbounds [8 x i8], ptr %.2333463, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !39
  %i.ih = fdiv double 1.000000e+00, %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.4359460, i64 %.2347462
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.hk
  store double %i.ih, ptr %i.ij, align 8, !tbaa !39
  %.not493 = icmp eq i64 %i.ic, 3
  br i1 %.not493, label %.thread406, label %iter.check616

iter.check616:                                    ; preds = %bb.m
  %min.iters.check601 = icmp ugt i64 %i.hv, 3
  %or.cond673 = and i1 %min.iters.check601, %ident.check588.not
  br i1 %or.cond673, label %vector.memcheck589, label %.lr.ph459.preheader

vector.memcheck589:                               ; preds = %iter.check616
  %bound0597 = icmp ult ptr %scevgep590, %scevgep596
  %bound1598 = icmp ult ptr %scevgep594, %scevgep593
  %found.conflict599 = and i1 %bound0597, %bound1598
  br i1 %found.conflict599, label %.lr.ph459.preheader, label %vector.main.loop.iter.check602

vector.main.loop.iter.check602:                   ; preds = %vector.memcheck589
  %min.iters.check603 = icmp ult i64 %i.hv, 16
  br i1 %min.iters.check603, label %vec.epilog.ph620, label %vector.ph604

vector.ph604:                                     ; preds = %vector.main.loop.iter.check602
  %i.ik = and i64 %i.hv, 12
  %n.vec605 = and i64 %i.hv, -16                  ; 4 uses
  %i.il = add i64 %i.ic, %n.vec605
  %invariant.op695 = add nuw i64 %i.ic, 1
  br label %vector.body606

vector.body606:                                   ; preds = %vector.body606, %vector.ph604
  %index607 = phi i64 [ 0, %vector.ph604 ], [ %index.next612, %vector.body606 ] ; 2 uses
  %.reass696 = add nuw i64 %index607, %invariant.op695 ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %.2333463, i64 %.reass696 ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 64
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 96
  %wide.load608 = load <4 x double>, ptr %i.im, align 8, !tbaa !39, !alias.scope !48
  %wide.load609 = load <4 x double>, ptr %i.in, align 8, !tbaa !39, !alias.scope !48
  %wide.load610 = load <4 x double>, ptr %i.io, align 8, !tbaa !39, !alias.scope !48
  %wide.load611 = load <4 x double>, ptr %i.ip, align 8, !tbaa !39, !alias.scope !48
  %i.iq = getelementptr inbounds [8 x i8], ptr %.4359460, i64 %.reass696 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  store <4 x double> %wide.load608, ptr %i.iq, align 8, !tbaa !39, !alias.scope !49, !noalias !48
  store <4 x double> %wide.load609, ptr %i.ir, align 8, !tbaa !39, !alias.scope !49, !noalias !48
  store <4 x double> %wide.load610, ptr %i.is, align 8, !tbaa !39, !alias.scope !49, !noalias !48
  store <4 x double> %wide.load611, ptr %i.it, align 8, !tbaa !39, !alias.scope !49, !noalias !48
  %index.next612 = add nuw i64 %index607, 16      ; 2 uses
  %i.iu = icmp eq i64 %index.next612, %n.vec605
  br i1 %i.iu, label %middle.block613, label %vector.body606, !llvm.loop !26

middle.block613:                                  ; preds = %vector.body606
  %cmp.n614 = icmp eq i64 %i.hv, %n.vec605
  br i1 %cmp.n614, label %.thread406, label %vec.epilog.iter.check618

vec.epilog.iter.check618:                         ; preds = %middle.block613
  %min.epilog.iters.check619 = icmp eq i64 %i.ik, 0
  br i1 %min.epilog.iters.check619, label %.lr.ph459.preheader, label %vec.epilog.ph620, !prof !45

vec.epilog.ph620:                                 ; preds = %vector.main.loop.iter.check602, %vec.epilog.iter.check618
  %vec.epilog.resume.val615 = phi i64 [ %n.vec605, %vec.epilog.iter.check618 ], [ 0, %vector.main.loop.iter.check602 ]
  %n.vec621 = and i64 %i.hv, -4                   ; 3 uses
  %i.iv = add i64 %i.ic, %n.vec621
  %invariant.op697 = add nuw i64 %i.ic, 1
  br label %vec.epilog.vector.body622

vec.epilog.vector.body622:                        ; preds = %vec.epilog.vector.body622, %vec.epilog.ph620
  %index623 = phi i64 [ %vec.epilog.resume.val615, %vec.epilog.ph620 ], [ %index.next625, %vec.epilog.vector.body622 ] ; 2 uses
  %.reass698 = add nuw i64 %index623, %invariant.op697 ; 2 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %.2333463, i64 %.reass698
  %wide.load624 = load <4 x double>, ptr %i.iw, align 8, !tbaa !39, !alias.scope !48
  %i.ix = getelementptr inbounds [8 x i8], ptr %.4359460, i64 %.reass698
  store <4 x double> %wide.load624, ptr %i.ix, align 8, !tbaa !39, !alias.scope !49, !noalias !48
  %index.next625 = add nuw i64 %index623, 4       ; 2 uses
  %i.iy = icmp eq i64 %index.next625, %n.vec621
  br i1 %i.iy, label %vec.epilog.middle.block626, label %vec.epilog.vector.body622, !llvm.loop !27

vec.epilog.middle.block626:                       ; preds = %vec.epilog.vector.body622
  %cmp.n627 = icmp eq i64 %i.hv, %n.vec621
  br i1 %cmp.n627, label %.thread406, label %.lr.ph459.preheader

.lr.ph459.preheader:                              ; preds = %vector.memcheck589, %iter.check616, %vec.epilog.iter.check618, %vec.epilog.middle.block626
  %.2337.in457.ph = phi i64 [ %i.ic, %iter.check616 ], [ %i.ic, %vector.memcheck589 ], [ %i.il, %vec.epilog.iter.check618 ], [ %i.iv, %vec.epilog.middle.block626 ]
  br label %.lr.ph459

.lr.ph459:                                        ; preds = %.lr.ph459.preheader, %.lr.ph459
  %.2337.in457 = phi i64 [ %.2337, %.lr.ph459 ], [ %.2337.in457.ph, %.lr.ph459.preheader ] ; 2 uses
  %.2337 = add nuw nsw i64 %.2337.in457, 1        ; 3 uses
  %i.iz = mul nsw i64 %.2337, %3
  %i.ja = getelementptr inbounds [8 x i8], ptr %.2333463, i64 %i.iz
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !39
  %i.jc = getelementptr inbounds [8 x i8], ptr %.4359460, i64 %.2337
  store double %i.jb, ptr %i.jc, align 8, !tbaa !39
  %i.jd = icmp slt i64 %.2337.in457, 2
  br i1 %i.jd, label %.lr.ph459, label %.thread406, !llvm.loop !28

.thread405:                                       ; preds = %bb.k
  %i.je = load double, ptr %.2333463, align 8, !tbaa !39
  store double %i.je, ptr %.4359460, align 8, !tbaa !39
  %i.jf = load double, ptr %.2330464, align 8, !tbaa !39
  %i.jg = getelementptr inbounds nuw i8, ptr %.4359460, i64 8
  store double %i.jf, ptr %i.jg, align 8, !tbaa !39
  %i.jh = load double, ptr %.2327465, align 8, !tbaa !39
  %i.ji = getelementptr inbounds nuw i8, ptr %.4359460, i64 16
  store double %i.jh, ptr %i.ji, align 8, !tbaa !39
  %i.jj = load double, ptr %.2466, align 8, !tbaa !39
  %i.jk = getelementptr inbounds nuw i8, ptr %.4359460, i64 24
  store double %i.jj, ptr %i.jk, align 8, !tbaa !39
  br label %.thread406

.thread406:                                       ; preds = %.lr.ph459, %middle.block613, %vec.epilog.middle.block626, %bb.m, %bb.l, %.thread405
  %i.jl = getelementptr inbounds nuw i8, ptr %.2333463, i64 8
  %i.jm = getelementptr inbounds nuw i8, ptr %.2330464, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.2327465, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %.2466, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %.4359460, i64 32 ; 2 uses
  %i.jq = add nuw nsw i64 %.2347462, 1            ; 2 uses
  %exitcond504.not = icmp eq i64 %i.jq, %0
  br i1 %exitcond504.not, label %._crit_edge469, label %bb.k, !llvm.loop !29

._crit_edge469:                                   ; preds = %.thread406, %bb.j
  %.4359.lcssa = phi ptr [ %.3358, %bb.j ], [ %i.jp, %.thread406 ]
  %i.jr = add nsw i64 %.1341, 4
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge469, %bb.i
  %.2362 = phi ptr [ %i.hf, %._crit_edge469 ], [ %.1361, %bb.i ] ; 6 uses
  %.5 = phi ptr [ %.4359.lcssa, %._crit_edge469 ], [ %.3358, %bb.i ] ; 5 uses
  %.2342 = phi i64 [ %i.jr, %._crit_edge469 ], [ %.1341, %bb.i ] ; 10 uses
  %i.js = and i64 %1, 2
  %.not379 = icmp eq i64 %i.js, 0
  br i1 %.not379, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.idx380 = shl nsw i64 %3, 4
  %i.jt = getelementptr inbounds i8, ptr %.2362, i64 %.idx380
  %i.ju = icmp sgt i64 %0, 0
  br i1 %i.ju, label %.lr.ph480, label %._crit_edge481

.lr.ph480:                                        ; preds = %bb.o
  %i.jv = getelementptr inbounds [8 x i8], ptr %.2362, i64 %3
  %i.jw = sub i64 0, %.2342
  %i.jx = shl i64 %.2342, 3                       ; 2 uses
  %i.jy = sub i64 8, %i.jx                        ; 2 uses
  %i.jz = sub i64 16, %i.jx                       ; 2 uses
  %i.ka = add i64 %.2342, 1
  %i.kb = getelementptr i8, ptr %.5, i64 %i.jy
  %i.kc = getelementptr i8, ptr %.5, i64 %i.jz
  %i.kd = getelementptr i8, ptr %.2362, i64 %i.jy
  %i.ke = getelementptr i8, ptr %.2362, i64 %i.jz
  %ident.check630.not = icmp eq i64 %3, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph480, %.thread408
  %.3478 = phi ptr [ %i.jv, %.lr.ph480 ], [ %i.lu, %.thread408 ] ; 2 uses
  %.3334477 = phi ptr [ %.2362, %.lr.ph480 ], [ %i.lt, %.thread408 ] ; 6 uses
  %.3348476 = phi i64 [ 0, %.lr.ph480 ], [ %i.lw, %.thread408 ] ; 10 uses
  %.6474 = phi ptr [ %.5, %.lr.ph480 ], [ %i.lv, %.thread408 ] ; 7 uses
  %i.kf = sub i64 %.3348476, %.2342
  %smax642 = tail call i64 @llvm.smax.i64(i64 %i.kf, i64 0)
  %i.kg = sub i64 %i.ka, %.3348476
  %i.kh = add i64 %smax642, %i.kg                 ; 7 uses
  %i.ki = mul i64 %.3348476, 24                   ; 2 uses
  %scevgep632 = getelementptr i8, ptr %i.kb, i64 %i.ki
  %scevgep633 = getelementptr i8, ptr %i.kc, i64 %i.ki
  %i.kj = sub i64 %.3348476, %.2342
  %smax634 = tail call i64 @llvm.smax.i64(i64 %i.kj, i64 0)
  %i.kk = sub i64 %.2342, %.3348476
  %i.kl = add i64 %smax634, %i.kk
  %i.km = shl i64 %i.kl, 3                        ; 2 uses
  %scevgep635 = getelementptr i8, ptr %scevgep633, i64 %i.km
  %i.kn = shl i64 %.3348476, 4                    ; 2 uses
  %scevgep636 = getelementptr i8, ptr %i.kd, i64 %i.kn
  %scevgep637 = getelementptr i8, ptr %i.ke, i64 %i.kn
  %scevgep638 = getelementptr i8, ptr %scevgep637, i64 %i.km
  %.not383 = icmp slt i64 %.3348476, %.2342
  br i1 %.not383, label %.thread407, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ko = sub nsw i64 %.3348476, %.2342           ; 9 uses
  %i.kp = icmp slt i64 %i.ko, 2
  br i1 %i.kp, label %bb.r, label %.thread408

bb.r:                                             ; preds = %bb.q
  %i.kq = mul nsw i64 %i.ko, %3
  %i.kr = getelementptr inbounds [8 x i8], ptr %.3334477, i64 %i.kq
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !39
  %i.kt = fdiv double 1.000000e+00, %i.ks
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %.6474, i64 %.3348476
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.jw
  store double %i.kt, ptr %i.kv, align 8, !tbaa !39
  %.not494 = icmp eq i64 %i.ko, 1
  br i1 %.not494, label %.thread408, label %iter.check658

iter.check658:                                    ; preds = %bb.r
  %min.iters.check643 = icmp ugt i64 %i.kh, 3
  %or.cond674 = and i1 %min.iters.check643, %ident.check630.not
  br i1 %or.cond674, label %vector.memcheck631, label %.lr.ph473.preheader

vector.memcheck631:                               ; preds = %iter.check658
  %bound0639 = icmp ult ptr %scevgep632, %scevgep638
  %bound1640 = icmp ult ptr %scevgep636, %scevgep635
  %found.conflict641 = and i1 %bound0639, %bound1640
  br i1 %found.conflict641, label %.lr.ph473.preheader, label %vector.main.loop.iter.check644

vector.main.loop.iter.check644:                   ; preds = %vector.memcheck631
  %min.iters.check645 = icmp ult i64 %i.kh, 16
  br i1 %min.iters.check645, label %vec.epilog.ph662, label %vector.ph646

vector.ph646:                                     ; preds = %vector.main.loop.iter.check644
  %i.kw = and i64 %i.kh, 12
  %n.vec647 = and i64 %i.kh, -16                  ; 4 uses
  %i.kx = add i64 %i.ko, %n.vec647
  %invariant.op699 = add nuw i64 %i.ko, 1
  br label %vector.body648

vector.body648:                                   ; preds = %vector.body648, %vector.ph646
  %index649 = phi i64 [ 0, %vector.ph646 ], [ %index.next654, %vector.body648 ] ; 2 uses
  %.reass700 = add nuw i64 %index649, %invariant.op699 ; 2 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %.3334477, i64 %.reass700 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 96
  %wide.load650 = load <4 x double>, ptr %i.ky, align 8, !tbaa !39, !alias.scope !50
  %wide.load651 = load <4 x double>, ptr %i.kz, align 8, !tbaa !39, !alias.scope !50
  %wide.load652 = load <4 x double>, ptr %i.la, align 8, !tbaa !39, !alias.scope !50
  %wide.load653 = load <4 x double>, ptr %i.lb, align 8, !tbaa !39, !alias.scope !50
  %i.lc = getelementptr inbounds [8 x i8], ptr %.6474, i64 %.reass700 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 64
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 96
  store <4 x double> %wide.load650, ptr %i.lc, align 8, !tbaa !39, !alias.scope !51, !noalias !50
  store <4 x double> %wide.load651, ptr %i.ld, align 8, !tbaa !39, !alias.scope !51, !noalias !50
  store <4 x double> %wide.load652, ptr %i.le, align 8, !tbaa !39, !alias.scope !51, !noalias !50
  store <4 x double> %wide.load653, ptr %i.lf, align 8, !tbaa !39, !alias.scope !51, !noalias !50
  %index.next654 = add nuw i64 %index649, 16      ; 2 uses
  %i.lg = icmp eq i64 %index.next654, %n.vec647
  br i1 %i.lg, label %middle.block655, label %vector.body648, !llvm.loop !33

middle.block655:                                  ; preds = %vector.body648
  %cmp.n656 = icmp eq i64 %i.kh, %n.vec647
  br i1 %cmp.n656, label %.thread408, label %vec.epilog.iter.check660

vec.epilog.iter.check660:                         ; preds = %middle.block655
  %min.epilog.iters.check661 = icmp eq i64 %i.kw, 0
  br i1 %min.epilog.iters.check661, label %.lr.ph473.preheader, label %vec.epilog.ph662, !prof !45

vec.epilog.ph662:                                 ; preds = %vector.main.loop.iter.check644, %vec.epilog.iter.check660
  %vec.epilog.resume.val657 = phi i64 [ %n.vec647, %vec.epilog.iter.check660 ], [ 0, %vector.main.loop.iter.check644 ]
  %n.vec663 = and i64 %i.kh, -4                   ; 3 uses
  %i.lh = add i64 %i.ko, %n.vec663
  %invariant.op701 = add nuw i64 %i.ko, 1
  br label %vec.epilog.vector.body664

vec.epilog.vector.body664:                        ; preds = %vec.epilog.vector.body664, %vec.epilog.ph662
  %index665 = phi i64 [ %vec.epilog.resume.val657, %vec.epilog.ph662 ], [ %index.next667, %vec.epilog.vector.body664 ] ; 2 uses
  %.reass702 = add nuw i64 %index665, %invariant.op701 ; 2 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %.3334477, i64 %.reass702
  %wide.load666 = load <4 x double>, ptr %i.li, align 8, !tbaa !39, !alias.scope !50
  %i.lj = getelementptr inbounds [8 x i8], ptr %.6474, i64 %.reass702
  store <4 x double> %wide.load666, ptr %i.lj, align 8, !tbaa !39, !alias.scope !51, !noalias !50
  %index.next667 = add nuw i64 %index665, 4       ; 2 uses
  %i.lk = icmp eq i64 %index.next667, %n.vec663
  br i1 %i.lk, label %vec.epilog.middle.block668, label %vec.epilog.vector.body664, !llvm.loop !34

vec.epilog.middle.block668:                       ; preds = %vec.epilog.vector.body664
  %cmp.n669 = icmp eq i64 %i.kh, %n.vec663
  br i1 %cmp.n669, label %.thread408, label %.lr.ph473.preheader

.lr.ph473.preheader:                              ; preds = %vector.memcheck631, %iter.check658, %vec.epilog.iter.check660, %vec.epilog.middle.block668
  %.3338.in471.ph = phi i64 [ %i.ko, %iter.check658 ], [ %i.ko, %vector.memcheck631 ], [ %i.kx, %vec.epilog.iter.check660 ], [ %i.lh, %vec.epilog.middle.block668 ]
  br label %.lr.ph473

.lr.ph473:                                        ; preds = %.lr.ph473.preheader, %.lr.ph473
  %.3338.in471 = phi i64 [ %.3338, %.lr.ph473 ], [ %.3338.in471.ph, %.lr.ph473.preheader ] ; 2 uses
  %.3338 = add nuw nsw i64 %.3338.in471, 1        ; 3 uses
  %i.ll = mul nsw i64 %.3338, %3
  %i.lm = getelementptr inbounds [8 x i8], ptr %.3334477, i64 %i.ll
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !39
  %i.lo = getelementptr inbounds [8 x i8], ptr %.6474, i64 %.3338
  store double %i.ln, ptr %i.lo, align 8, !tbaa !39
  %i.lp = icmp slt i64 %.3338.in471, 0
  br i1 %i.lp, label %.lr.ph473, label %.thread408, !llvm.loop !35

.thread407:                                       ; preds = %bb.p
  %i.lq = load double, ptr %.3334477, align 8, !tbaa !39
  store double %i.lq, ptr %.6474, align 8, !tbaa !39
  %i.lr = load double, ptr %.3478, align 8, !tbaa !39
  %i.ls = getelementptr inbounds nuw i8, ptr %.6474, i64 8
  store double %i.lr, ptr %i.ls, align 8, !tbaa !39
  br label %.thread408

.thread408:                                       ; preds = %.lr.ph473, %middle.block655, %vec.epilog.middle.block668, %bb.r, %bb.q, %.thread407
  %i.lt = getelementptr inbounds nuw i8, ptr %.3334477, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %.3478, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %.6474, i64 16 ; 2 uses
  %i.lw = add nuw nsw i64 %.3348476, 1            ; 2 uses
  %exitcond505.not = icmp eq i64 %i.lw, %0
  br i1 %exitcond505.not, label %._crit_edge481, label %bb.p, !llvm.loop !36

._crit_edge481:                                   ; preds = %.thread408, %bb.o
  %.6.lcssa = phi ptr [ %.5, %bb.o ], [ %i.lv, %.thread408 ]
  %i.lx = add nsw i64 %.2342, 2
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge481, %bb.n
  %.3363 = phi ptr [ %i.jt, %._crit_edge481 ], [ %.2362, %bb.n ] ; 2 uses
  %.7 = phi ptr [ %.6.lcssa, %._crit_edge481 ], [ %.5, %bb.n ] ; 2 uses
  %.3343 = phi i64 [ %i.lx, %._crit_edge481 ], [ %.2342, %bb.n ] ; 7 uses
  %.not381 = trunc i64 %1 to i1
  %i.ly = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.ly, %.not381
  br i1 %or.cond, label %.lr.ph490, label %.loopexit

.lr.ph490:                                        ; preds = %bb.s
  %i.lz = sub i64 0, %.3343                       ; 3 uses
  %xtraiter = and i64 %0, 1
  %i.ma = icmp eq i64 %0, 1
  br i1 %i.ma, label %.epil.preheader, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.lr.ph490
  %unroll_iter = and i64 %0, 9223372036854775806
  br label %bb.t

bb.t:                                             ; preds = %.thread410.1, %.lr.ph490.new
  %.4489 = phi ptr [ %.3363, %.lr.ph490.new ], [ %i.mw, %.thread410.1 ] ; 4 uses
  %.4349488 = phi i64 [ 0, %.lr.ph490.new ], [ %i.my, %.thread410.1 ] ; 5 uses
  %.8486 = phi ptr [ %.7, %.lr.ph490.new ], [ %i.mx, %.thread410.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph490.new ], [ %niter.next.1, %.thread410.1 ]
  %.not382 = icmp slt i64 %.4349488, %.3343
  br i1 %.not382, label %.thread409, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mb = sub nsw i64 %.4349488, %.3343           ; 2 uses
  %i.mc = icmp slt i64 %i.mb, 1
  br i1 %i.mc, label %.thread410.loopexit, label %.thread410

.thread410.loopexit:                              ; preds = %bb.u
  %i.md = mul nsw i64 %i.mb, %3
  %i.me = getelementptr inbounds [8 x i8], ptr %.4489, i64 %i.md
  %i.mf = load double, ptr %i.me, align 8, !tbaa !39
  %i.mg = fdiv double 1.000000e+00, %i.mf
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %.8486, i64 %.4349488
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.lz
  store double %i.mg, ptr %i.mi, align 8, !tbaa !39
  br label %.thread410

.thread409:                                       ; preds = %bb.t
  %i.mj = load double, ptr %.4489, align 8, !tbaa !39
  store double %i.mj, ptr %.8486, align 8, !tbaa !39
  br label %.thread410

.thread410:                                       ; preds = %.thread410.loopexit, %bb.u, %.thread409
  %i.mk = getelementptr inbounds nuw i8, ptr %.4489, i64 8 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.8486, i64 8 ; 2 uses
  %i.mm = or disjoint i64 %.4349488, 1            ; 3 uses
  %.not382.1 = icmp slt i64 %i.mm, %.3343
  br i1 %.not382.1, label %.thread409.1, label %bb.v

bb.v:                                             ; preds = %.thread410
  %i.mn = sub nsw i64 %i.mm, %.3343               ; 2 uses
  %i.mo = icmp slt i64 %i.mn, 1
  br i1 %i.mo, label %.thread410.loopexit.1, label %.thread410.1

.thread410.loopexit.1:                            ; preds = %bb.v
  %i.mp = mul nsw i64 %i.mn, %3
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.mk, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !39
  %i.ms = fdiv double 1.000000e+00, %i.mr
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mm
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.lz
  store double %i.ms, ptr %i.mu, align 8, !tbaa !39
  br label %.thread410.1

.thread409.1:                                     ; preds = %.thread410
  %i.mv = load double, ptr %i.mk, align 8, !tbaa !39
  store double %i.mv, ptr %i.ml, align 8, !tbaa !39
  br label %.thread410.1

.thread410.1:                                     ; preds = %.thread409.1, %.thread410.loopexit.1, %bb.v
  %i.mw = getelementptr inbounds nuw i8, ptr %.4489, i64 16 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.8486, i64 16 ; 2 uses
  %i.my = add nuw nsw i64 %.4349488, 2            ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.t, !llvm.loop !37

.loopexit.loopexit.unr-lcssa:                     ; preds = %.thread410.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph490
  %.4489.epil.init = phi ptr [ %.3363, %.lr.ph490 ], [ %i.mw, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.4349488.epil.init = phi i64 [ 0, %.lr.ph490 ], [ %i.my, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.8486.epil.init = phi ptr [ %.7, %.lr.ph490 ], [ %i.mx, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod680 = trunc i64 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod680)
  %.not382.epil = icmp slt i64 %.4349488.epil.init, %.3343
  br i1 %.not382.epil, label %.thread409.epil, label %bb.w

bb.w:                                             ; preds = %.epil.preheader
  %i.mz = sub nsw i64 %.4349488.epil.init, %.3343 ; 2 uses
  %i.na = icmp slt i64 %i.mz, 1
  br i1 %i.na, label %.thread410.loopexit.epil, label %.loopexit

.thread410.loopexit.epil:                         ; preds = %bb.w
  %i.nb = mul nsw i64 %i.mz, %3
  %i.nc = getelementptr inbounds [8 x i8], ptr %.4489.epil.init, i64 %i.nb
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !39
  %i.ne = fdiv double 1.000000e+00, %i.nd
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.8486.epil.init, i64 %.4349488.epil.init
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.nf, i64 %i.lz
  store double %i.ne, ptr %i.ng, align 8, !tbaa !39
  br label %.loopexit

.thread409.epil:                                  ; preds = %.epil.preheader
  %i.nh = load double, ptr %.4489.epil.init, align 8, !tbaa !39
  store double %i.nh, ptr %.8486.epil.init, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.thread409.epil, %.thread410.loopexit.epil, %bb.w, %bb.s
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !42, !43, !44}
!12 = distinct !{!12, !42, !43, !44}
!13 = distinct !{!13, !42, !43}
!14 = distinct !{!14, !42}
!15 = distinct !{!15, !42}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !42, !43, !44}
!20 = distinct !{!20, !42, !43, !44}
!21 = distinct !{!21, !42, !43}
!22 = distinct !{!22, !42}
!23 = distinct !{!23, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !42, !43, !44}
!27 = distinct !{!27, !42, !43, !44}
!28 = distinct !{!28, !42, !43}
!29 = distinct !{!29, !42}
!30 = distinct !{!30, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !42, !43, !44}
!34 = distinct !{!34, !42, !43, !44}
!35 = distinct !{!35, !42, !43}
!36 = distinct !{!36, !42}
!37 = distinct !{!37, !42}
end_hunk_0
