begin_hunk_0_@hypre_UnionBoxes:bb.a

._crit_edge.1.1:                                  ; preds = %scalar.ph700, %middle.block710, %.critedge.1.1
  %i.du = zext nneg i32 %.0151214.1.1 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.du
  store i32 %i.ca, ptr %i.dv, align 4, !tbaa !4
  %i.dw = add nsw i32 %.sroa.17.0..sroa.17.4.491, 1
  br label %.preheader206.2

.preheader206.2:                                  ; preds = %._crit_edge.1.1, %bb.l
  %.sroa.17.0..sroa.17.4.491543 = phi i32 [ %i.dw, %._crit_edge.1.1 ], [ %.sroa.17.0..sroa.17.4.491, %bb.l ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !4  ; 2 uses
  %i.eb = add nsw i32 %i.ea, 1                    ; 2 uses
  %i.ec = icmp sgt i32 %.sroa.32.1, 0
  br i1 %i.ec, label %.lr.ph.2, label %.critedge.2

.lr.ph.2:                                         ; preds = %.preheader206.2
  %wide.trip.count.2 = zext nneg i32 %.sroa.32.1 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.2
  %indvars.iv.2 = phi i64 [ 0, %.lr.ph.2 ], [ %indvars.iv.next.2, %bb.p ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.2
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !4  ; 2 uses
  %.not198.2 = icmp sgt i32 %i.dy, %i.ee
  br i1 %.not198.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ef = trunc nuw nsw i64 %indvars.iv.2 to i32
  %i.eg = icmp eq i32 %i.dy, %i.ee
  br i1 %i.eg, label %.preheader206.1.2, label %.critedge.2

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, %wide.trip.count.2
  br i1 %exitcond.2.not, label %.critedge.2, label %bb.n, !llvm.loop !13

.critedge.2:                                      ; preds = %bb.p, %bb.o, %.preheader206.2
  %.0151214.2 = phi i32 [ %i.ef, %bb.o ], [ 0, %.preheader206.2 ], [ %.sroa.32.1, %bb.p ] ; 3 uses
  %i.eh = icmp sgt i32 %.sroa.32.1, %.0151214.2
  br i1 %i.eh, label %.lr.ph221.2, label %._crit_edge.2

.lr.ph221.2:                                      ; preds = %.critedge.2
  %i.ei = sext i32 %.sroa.32.1 to i64             ; 4 uses
  %i.ej = sext i32 %.0151214.2 to i64             ; 2 uses
  %i.ek = sub nsw i64 %i.ei, %i.ej                ; 3 uses
  %min.iters.check688 = icmp ult i64 %i.ek, 8
  br i1 %min.iters.check688, label %scalar.ph687.preheader, label %vector.ph689

vector.ph689:                                     ; preds = %.lr.ph221.2
  %n.vec691 = and i64 %i.ek, -8                   ; 3 uses
  %i.el = sub nsw i64 %i.ei, %n.vec691
  br label %vector.body692

vector.body692:                                   ; preds = %vector.body692, %vector.ph689
  %index693 = phi i64 [ 0, %vector.ph689 ], [ %index.next696, %vector.body692 ] ; 2 uses
  %i.em = sub i64 %i.ei, %index693
  %i.en = getelementptr [4 x i8], ptr %i.i, i64 %i.em ; 4 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -16
  %i.ep = getelementptr i8, ptr %i.en, i64 -32
  %wide.load694.a = load <4 x i32>, ptr %i.eo, align 4, !tbaa !4
  %wide.load695 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !4
  %i.eq = getelementptr i8, ptr %i.en, i64 -12
  %i.er = getelementptr i8, ptr %i.en, i64 -28
  store <4 x i32> %wide.load694.a, ptr %i.eq, align 4, !tbaa !4
  store <4 x i32> %wide.load695, ptr %i.er, align 4, !tbaa !4
  %index.next696 = add nuw i64 %index693, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next696, %n.vec691
  br i1 %i.es, label %middle.block697, label %vector.body692, !llvm.loop !25

middle.block697:                                  ; preds = %vector.body692
  %cmp.n698 = icmp eq i64 %i.ek, %n.vec691
  br i1 %cmp.n698, label %._crit_edge.2, label %scalar.ph687.preheader

scalar.ph687.preheader:                           ; preds = %.lr.ph221.2, %middle.block697
  %indvars.iv316.2.ph = phi i64 [ %i.ei, %.lr.ph221.2 ], [ %i.el, %middle.block697 ]
  br label %scalar.ph687

scalar.ph687:                                     ; preds = %scalar.ph687.preheader, %scalar.ph687
  %indvars.iv316.2 = phi i64 [ %indvars.iv.next317.2, %scalar.ph687 ], [ %indvars.iv316.2.ph, %scalar.ph687.preheader ] ; 2 uses
  %i.et = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv316.2 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %indvars.iv.next317.2 = add nsw i64 %indvars.iv316.2, -1 ; 2 uses
  %i.ew = icmp sgt i64 %indvars.iv.next317.2, %i.ej
  br i1 %i.ew, label %scalar.ph687, label %._crit_edge.2, !llvm.loop !26

._crit_edge.2:                                    ; preds = %scalar.ph687, %middle.block697, %.critedge.2
  %i.ex = zext nneg i32 %.0151214.2 to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ex
  store i32 %i.dy, ptr %i.ey, align 4, !tbaa !4
  %i.ez = add nsw i32 %.sroa.32.1, 1
  br label %.preheader206.1.2

.preheader206.1.2:                                ; preds = %._crit_edge.2, %bb.o
  %.sroa.32.2 = phi i32 [ %i.ez, %._crit_edge.2 ], [ %.sroa.32.1, %bb.o ] ; 7 uses
  %i.fa = icmp sgt i32 %.sroa.32.2, 0
  br i1 %i.fa, label %.lr.ph.1.2, label %.critedge.1.2

.lr.ph.1.2:                                       ; preds = %.preheader206.1.2
  %wide.trip.count.1.2 = zext nneg i32 %.sroa.32.2 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.1.2
  %indvars.iv.1.2 = phi i64 [ 0, %.lr.ph.1.2 ], [ %indvars.iv.next.1.2, %bb.s ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.1.2
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4  ; 2 uses
  %.not198.1.2.not = icmp slt i32 %i.ea, %i.fc
  br i1 %.not198.1.2.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fd = trunc nuw nsw i64 %indvars.iv.1.2 to i32
  %i.fe = icmp eq i32 %i.eb, %i.fc
  br i1 %i.fe, label %bb.t, label %.critedge.1.2

bb.s:                                             ; preds = %bb.q
  %indvars.iv.next.1.2 = add nuw nsw i64 %indvars.iv.1.2, 1 ; 2 uses
  %exitcond.1.2.not = icmp eq i64 %indvars.iv.next.1.2, %wide.trip.count.1.2
  br i1 %exitcond.1.2.not, label %.critedge.1.2, label %bb.q, !llvm.loop !13

.critedge.1.2:                                    ; preds = %bb.s, %bb.r, %.preheader206.1.2
  %.0151214.1.2 = phi i32 [ %i.fd, %bb.r ], [ 0, %.preheader206.1.2 ], [ %.sroa.32.2, %bb.s ] ; 3 uses
  %i.ff = icmp sgt i32 %.sroa.32.2, %.0151214.1.2
  br i1 %i.ff, label %.lr.ph221.1.2, label %._crit_edge.1.2

.lr.ph221.1.2:                                    ; preds = %.critedge.1.2
  %i.fg = sext i32 %.sroa.32.2 to i64             ; 4 uses
  %i.fh = sext i32 %.0151214.1.2 to i64           ; 2 uses
  %i.fi = sub nsw i64 %i.fg, %i.fh                ; 3 uses
  %min.iters.check = icmp ult i64 %i.fi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph221.1.2
  %n.vec = and i64 %i.fi, -8                      ; 3 uses
  %i.fj = sub nsw i64 %i.fg, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = sub i64 %i.fg, %index
  %i.fl = getelementptr [4 x i8], ptr %i.i, i64 %i.fk ; 4 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 -16
  %i.fn = getelementptr i8, ptr %i.fl, i64 -32
  %wide.load = load <4 x i32>, ptr %i.fm, align 4, !tbaa !4
  %wide.load686 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !4
  %i.fo = getelementptr i8, ptr %i.fl, i64 -12
  %i.fp = getelementptr i8, ptr %i.fl, i64 -28
  store <4 x i32> %wide.load, ptr %i.fo, align 4, !tbaa !4
  store <4 x i32> %wide.load686, ptr %i.fp, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %._crit_edge.1.2, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph221.1.2, %middle.block
  %indvars.iv316.1.2.ph = phi i64 [ %i.fg, %.lr.ph221.1.2 ], [ %i.fj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv316.1.2 = phi i64 [ %indvars.iv.next317.1.2, %scalar.ph ], [ %indvars.iv316.1.2.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fr = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv316.1.2 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !4
  %indvars.iv.next317.1.2 = add nsw i64 %indvars.iv316.1.2, -1 ; 2 uses
  %i.fu = icmp sgt i64 %indvars.iv.next317.1.2, %i.fh
  br i1 %i.fu, label %scalar.ph, label %._crit_edge.1.2, !llvm.loop !28

._crit_edge.1.2:                                  ; preds = %scalar.ph, %middle.block, %.critedge.1.2
  %i.fv = zext nneg i32 %.0151214.1.2 to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fv
  store i32 %i.eb, ptr %i.fw, align 4, !tbaa !4
  %i.fx = add nsw i32 %.sroa.32.2, 1
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.1.2, %bb.r
  %.sroa.32.3 = phi i32 [ %i.fx, %._crit_edge.1.2 ], [ %.sroa.32.2, %bb.r ] ; 2 uses
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %i.fy = load i32, ptr %i.a, align 8, !tbaa !12
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next368, %i.fz
  br i1 %i.ga, label %.preheader206, label %.preheader205.loopexit, !llvm.loop !29

.lr.ph243:                                        ; preds = %.preheader205
  %i.gb = load ptr, ptr %0, align 8, !tbaa !8
  %i.gc = add i32 %.sroa.0485.0..sroa.0485.0.488, 1
  %i.gd = add i32 %i.gc, %i.r                     ; 2 uses
  %i.ge = sext i32 %i.n to i64
  %i.gf = sext i32 %i.o to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader204

.preheader204:                                    ; preds = %.lr.ph243, %._crit_edge239.split
  %i.gg = phi i32 [ %i.t, %.lr.ph243 ], [ %5, %._crit_edge239.split ] ; 2 uses
  %indvars.iv399 = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next400, %._crit_edge239.split ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %indvars.iv399 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader204
  %indvars.iv374 = phi i64 [ %indvars.iv.next375, %bb.u ], [ 0, %.preheader204 ] ; 5 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv374
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %.not196 = icmp eq i32 %i.gj, %i.gl
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1
  br i1 %.not196, label %bb.v, label %bb.u, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %i.gm = load i32, ptr %i.gi, align 4, !tbaa !4
  %i.gn = add nsw i32 %i.gm, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %bb.w ], [ %indvars.iv374, %bb.v ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv377
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4
  %.not197 = icmp eq i32 %i.gn, %i.gp
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  br i1 %.not197, label %.preheader204.1, label %bb.w, !llvm.loop !31

.preheader204.1:                                  ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader204.1
  %indvars.iv374.1 = phi i64 [ %indvars.iv.next375.1, %bb.x ], [ 0, %.preheader204.1 ] ; 5 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv374.1
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %.not196.1 = icmp eq i32 %i.gr, %i.gt
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374.1, 1
  br i1 %.not196.1, label %bb.y, label %bb.x, !llvm.loop !30

bb.y:                                             ; preds = %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4
  %i.gw = add nsw i32 %i.gv, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %indvars.iv377.1 = phi i64 [ %indvars.iv.next378.1, %bb.z ], [ %indvars.iv374.1, %bb.y ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv377.1
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %.not197.1 = icmp eq i32 %i.gw, %i.gy
  %indvars.iv.next378.1 = add nuw nsw i64 %indvars.iv377.1, 1
  br i1 %.not197.1, label %.preheader204.2, label %bb.z, !llvm.loop !31

.preheader204.2:                                  ; preds = %bb.z
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.preheader204.2
  %indvars.iv374.2 = phi i64 [ %indvars.iv.next375.2, %bb.aa ], [ 0, %.preheader204.2 ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv374.2
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %.not196.2 = icmp eq i32 %i.ha, %i.hc
  %indvars.iv.next375.2 = add nuw nsw i64 %indvars.iv374.2, 1
  br i1 %.not196.2, label %bb.ab, label %bb.aa, !llvm.loop !30

bb.ab:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !4
  %i.hf = add nsw i32 %i.he, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv377.2 = phi i64 [ %indvars.iv.next378.2, %bb.ac ], [ %indvars.iv374.2, %bb.ab ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv377.2
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %.not197.2 = icmp eq i32 %i.hf, %i.hh
  %indvars.iv.next378.2 = add nuw nsw i64 %indvars.iv377.2, 1
  br i1 %.not197.2, label %1, label %bb.ac, !llvm.loop !31

1:                                                ; preds = %bb.ac
  %2 = icmp samesign ult i64 %indvars.iv374.2, %indvars.iv377.2
  br i1 %2, label %.lr.ph238, label %._crit_edge239.split

.lr.ph238:                                        ; preds = %1
  %3 = icmp samesign uge i64 %indvars.iv374.1, %indvars.iv377.1
  %4 = icmp samesign uge i64 %indvars.iv374, %indvars.iv377
  %brmerge = select i1 %3, i1 true, i1 %4
  br i1 %brmerge, label %._crit_edge239.split, label %.lr.ph234.preheader

.lr.ph234.preheader:                              ; preds = %.lr.ph238
  %sext = shl i64 %indvars.iv374, 32
  %i.hi = ashr exact i64 %sext, 32                ; 4 uses
  %sext597 = shl i64 %indvars.iv374.1, 32
  %i.hj = ashr exact i64 %sext597, 32
  %sext598 = shl i64 %indvars.iv374.2, 32
  %i.hk = ashr exact i64 %sext598, 32
  %sext599 = shl i64 %indvars.iv377.2, 32
  %wide.trip.count397 = ashr exact i64 %sext599, 32
  %sext600 = shl i64 %indvars.iv377.1, 32
  %wide.trip.count392 = ashr exact i64 %sext600, 32
  %sext601 = shl i64 %indvars.iv377, 32
  %wide.trip.count387 = ashr exact i64 %sext601, 32 ; 2 uses
  %i.hl = sub nsw i64 %wide.trip.count387, %i.hi  ; 3 uses
  %min.iters.check753 = icmp ult i64 %i.hl, 8
  %n.vec756 = and i64 %i.hl, -8                   ; 3 uses
  %i.hm = add nsw i64 %i.hi, %n.vec756
  %cmp.n761 = icmp eq i64 %i.hl, %n.vec756
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %.lr.ph234.preheader, %._crit_edge235
  %indvars.iv394 = phi i64 [ %i.hk, %.lr.ph234.preheader ], [ %indvars.iv.next395, %._crit_edge235 ] ; 2 uses
  %i.hn = mul nsw i64 %indvars.iv394, %i.gf
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph234, %._crit_edge231
  %indvars.iv389 = phi i64 [ %i.hj, %.lr.ph234 ], [ %indvars.iv.next390, %._crit_edge231 ] ; 2 uses
  %i.ho = add nsw i64 %indvars.iv389, %i.hn
  %i.hp = mul nsw i64 %i.ho, %i.ge
  %invariant.gep = getelementptr [4 x i8], ptr %i.s, i64 %i.hp ; 2 uses
  br i1 %min.iters.check753, label %scalar.ph752.preheader, label %vector.ph754

vector.ph754:                                     ; preds = %.lr.ph230
  %i.hq = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hi
  br label %vector.body757

vector.body757:                                   ; preds = %vector.body757, %vector.ph754
  %index758 = phi i64 [ 0, %vector.ph754 ], [ %index.next759, %vector.body757 ] ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %index758 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.hr, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.hs, align 4, !tbaa !4
  %index.next759 = add nuw i64 %index758, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next759, %n.vec756
  br i1 %i.ht, label %middle.block760, label %vector.body757, !llvm.loop !32

middle.block760:                                  ; preds = %vector.body757
  br i1 %cmp.n761, label %._crit_edge231, label %scalar.ph752.preheader

scalar.ph752.preheader:                           ; preds = %.lr.ph230, %middle.block760
  %indvars.iv384.ph = phi i64 [ %i.hi, %.lr.ph230 ], [ %i.hm, %middle.block760 ]
  br label %scalar.ph752

scalar.ph752:                                     ; preds = %scalar.ph752.preheader, %scalar.ph752
  %indvars.iv384 = phi i64 [ %indvars.iv.next385, %scalar.ph752 ], [ %indvars.iv384.ph, %scalar.ph752.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv384
  store i32 %i.gd, ptr %gep, align 4, !tbaa !4
  %indvars.iv.next385 = add nsw i64 %indvars.iv384, 1 ; 2 uses
  %exitcond388.not = icmp eq i64 %indvars.iv.next385, %wide.trip.count387
  br i1 %exitcond388.not, label %._crit_edge231, label %scalar.ph752, !llvm.loop !33

._crit_edge231:                                   ; preds = %scalar.ph752, %middle.block760
  %indvars.iv.next390 = add nsw i64 %indvars.iv389, 1 ; 2 uses
  %exitcond393.not = icmp eq i64 %indvars.iv.next390, %wide.trip.count392
  br i1 %exitcond393.not, label %._crit_edge235, label %.lr.ph230, !llvm.loop !34

._crit_edge235:                                   ; preds = %._crit_edge231
  %indvars.iv.next395 = add nsw i64 %indvars.iv394, 1 ; 2 uses
  %exitcond398.not = icmp eq i64 %indvars.iv.next395, %wide.trip.count397
  br i1 %exitcond398.not, label %._crit_edge239.split.loopexit, label %.lr.ph234, !llvm.loop !35

._crit_edge239.split.loopexit:                    ; preds = %._crit_edge235
  %.pre = load i32, ptr %i.a, align 8, !tbaa !12
  br label %._crit_edge239.split

._crit_edge239.split:                             ; preds = %._crit_edge239.split.loopexit, %.lr.ph238, %1
  %5 = phi i32 [ %.pre, %._crit_edge239.split.loopexit ], [ %i.gg, %.lr.ph238 ], [ %i.gg, %1 ] ; 2 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.hu = sext i32 %5 to i64
  %i.hv = icmp slt i64 %indvars.iv.next400, %i.hu
  br i1 %i.hv, label %.preheader204, label %.preheader203, !llvm.loop !36

.lr.ph278.preheader:                              ; preds = %._crit_edge265.2
  %wide.trip.count410 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check764 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check764, label %.lr.ph278.preheader777, label %vector.ph765

vector.ph765:                                     ; preds = %.lr.ph278.preheader
  %n.vec767 = and i64 %wide.trip.count410, 2147483640 ; 3 uses
  br label %vector.body768

vector.body768:                                   ; preds = %vector.body768, %vector.ph765
  %index769 = phi i64 [ 0, %vector.ph765 ], [ %index.next773, %vector.body768 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph765 ], [ %i.ic, %vector.body768 ]
  %vec.phi770 = phi <4 x i32> [ zeroinitializer, %vector.ph765 ], [ %i.id, %vector.body768 ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index769 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load771 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !4
  %wide.load772 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !4
  %i.hy = icmp ne <4 x i32> %wide.load771, zeroinitializer
  %i.hz = icmp ne <4 x i32> %wide.load772, zeroinitializer
  %i.ia = zext <4 x i1> %i.hy to <4 x i32>
  %i.ib = zext <4 x i1> %i.hz to <4 x i32>
  %i.ic = add <4 x i32> %vec.phi, %i.ia           ; 2 uses
  %i.id = add <4 x i32> %vec.phi770, %i.ib        ; 2 uses
  %index.next773 = add nuw i64 %index769, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next773, %n.vec767
  br i1 %i.ie, label %middle.block774, label %vector.body768, !llvm.loop !37

middle.block774:                                  ; preds = %vector.body768
  %bin.rdx = add <4 x i32> %i.id, %i.ic
  %i.if = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n775 = icmp eq i64 %n.vec767, %wide.trip.count410
  br i1 %cmp.n775, label %._crit_edge279, label %.lr.ph278.preheader777

.lr.ph278.preheader777:                           ; preds = %.lr.ph278.preheader, %middle.block774
  %indvars.iv407.ph = phi i64 [ 0, %.lr.ph278.preheader ], [ %n.vec767, %middle.block774 ]
  %.0177277.ph = phi i32 [ 0, %.lr.ph278.preheader ], [ %i.if, %middle.block774 ]
  br label %.lr.ph278

.preheader203:                                    ; preds = %._crit_edge239.split, %.preheader205
  %i.ig = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.ig, label %.lr.ph264, label %._crit_edge265.thread607

.lr.ph264:                                        ; preds = %.preheader203
  %i.ih = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  br i1 %i.ih, label %.lr.ph264.split.us, label %.lr.ph264.1

.lr.ph264.split.us:                               ; preds = %.lr.ph264
  %i.ii = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  br i1 %i.ii, label %.lr.ph256.us.us, label %._crit_edge257.split.us268

.lr.ph256.us.us:                                  ; preds = %.lr.ph264.split.us, %._crit_edge257.split.us.us.us
  %i.ij = phi i32 [ %i.ix, %._crit_edge257.split.us.us.us ], [ 0, %.lr.ph264.split.us ] ; 2 uses
  %.1166262.us.us = phi i32 [ %.4169.us.us.us, %._crit_edge257.split.us.us.us ], [ undef, %.lr.ph264.split.us ]
  %.1171261.us.us = phi i32 [ %.4174.us.us.us, %._crit_edge257.split.us.us.us ], [ %i.d, %.lr.ph264.split.us ]
  %i.ik = mul nsw i32 %i.ij, %i.o
  br label %.lr.ph249.us.us.us

.lr.ph249.us.us.us:                               ; preds = %._crit_edge250.us.us.us, %.lr.ph256.us.us
  %i.il = phi i32 [ 0, %.lr.ph256.us.us ], [ %i.iv, %._crit_edge250.us.us.us ] ; 2 uses
  %.2167254.us.us.us = phi i32 [ %.1166262.us.us, %.lr.ph256.us.us ], [ %.4169.us.us.us, %._crit_edge250.us.us.us ]
  %.2172253.us.us.us = phi i32 [ %.1171261.us.us, %.lr.ph256.us.us ], [ %.4174.us.us.us, %._crit_edge250.us.us.us ]
  %i.im = add nsw i32 %i.ik, %i.il
  %i.in = mul nsw i32 %i.im, %i.n
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %.lr.ph249.us.us.us
  %.3168247.us.us.us = phi i32 [ %.2167254.us.us.us, %.lr.ph249.us.us.us ], [ %.4169.us.us.us, %bb.af ] ; 3 uses
  %.3173246.us.us.us = phi i32 [ %.2172253.us.us.us, %.lr.ph249.us.us.us ], [ %.4174.us.us.us, %bb.af ] ; 3 uses
  %.0175245.us.us.us = phi i32 [ 0, %.lr.ph249.us.us.us ], [ %.1176.us.us.us, %bb.af ]
  %.sroa.0.0..sroa.0.0. = phi i32 [ 0, %.lr.ph249.us.us.us ], [ %i.iu, %bb.af ] ; 2 uses
  %i.io = add nsw i32 %i.in, %.sroa.0.0..sroa.0.0. ; 2 uses
  %.not194.us.us.us = icmp ne i32 %.0175245.us.us.us, 0
  %.phi.trans.insert = sext i32 %i.io to i64
  %.phi.trans.insert548 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert ; 2 uses
  %.pre549 = load i32, ptr %.phi.trans.insert548, align 4, !tbaa !4 ; 3 uses
  %i.ip = icmp eq i32 %.pre549, %.3168247.us.us.us
  %or.cond.a = select i1 %.not194.us.us.us, i1 %i.ip, i1 false
  br i1 %or.cond.a, label %bb.ae, label %._crit_edge547

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %.phi.trans.insert548, align 4, !tbaa !4
  %i.iq = sext i32 %.3173246.us.us.us to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !4
  br label %bb.af

._crit_edge547:                                   ; preds = %bb.ad
  %.not195.us.us.us = icmp ne i32 %.pre549, 0     ; 3 uses
  %..us.us.us = zext i1 %.not195.us.us.us to i32
  %.3173..us.us.us = select i1 %.not195.us.us.us, i32 %i.io, i32 %.3173246.us.us.us
  %.3168..us.us.us = select i1 %.not195.us.us.us, i32 %.pre549, i32 %.3168247.us.us.us
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge547, %bb.ae
  %.1176.us.us.us = phi i32 [ 1, %bb.ae ], [ %..us.us.us, %._crit_edge547 ]
  %.4174.us.us.us = phi i32 [ %.3173246.us.us.us, %bb.ae ], [ %.3173..us.us.us, %._crit_edge547 ] ; 4 uses
  %.4169.us.us.us = phi i32 [ %.3168247.us.us.us, %bb.ae ], [ %.3168..us.us.us, %._crit_edge547 ] ; 4 uses
  %i.iu = add nuw nsw i32 %.sroa.0.0..sroa.0.0., 1 ; 2 uses
  %exitcond402.not = icmp eq i32 %i.iu, %i.n
  br i1 %exitcond402.not, label %._crit_edge250.us.us.us, label %bb.ad, !llvm.loop !38

._crit_edge250.us.us.us:                          ; preds = %bb.af
  %i.iv = add nuw nsw i32 %i.il, 1                ; 2 uses
  %i.iw = icmp slt i32 %i.iv, %i.o
  br i1 %i.iw, label %.lr.ph249.us.us.us, label %._crit_edge257.split.us.us.us, !llvm.loop !39

._crit_edge257.split.us.us.us:                    ; preds = %._crit_edge250.us.us.us
  %i.ix = add nuw nsw i32 %i.ij, 1                ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %.sroa.32.0
  br i1 %i.iy, label %.lr.ph256.us.us, label %.lr.ph264.1, !llvm.loop !40

._crit_edge257.split.us268:                       ; preds = %.lr.ph264.split.us, %._crit_edge257.split.us268
  %i.iz = phi i32 [ %i.ja, %._crit_edge257.split.us268 ], [ 0, %.lr.ph264.split.us ]
  %i.ja = add nuw nsw i32 %i.iz, 1                ; 2 uses
  %i.jb = icmp slt i32 %i.ja, %.sroa.32.0
  br i1 %i.jb, label %._crit_edge257.split.us268, label %.lr.ph264.1, !llvm.loop !40

.lr.ph264.1:                                      ; preds = %._crit_edge257.split.us.us.us, %._crit_edge257.split.us268, %.lr.ph264
  %.1166.lcssa606 = phi i32 [ undef, %.lr.ph264 ], [ %.4169.us.us.us, %._crit_edge257.split.us.us.us ], [ undef, %._crit_edge257.split.us268 ] ; 2 uses
  %.1171.lcssa605 = phi i32 [ %i.d, %.lr.ph264 ], [ %.4174.us.us.us, %._crit_edge257.split.us.us.us ], [ %i.d, %._crit_edge257.split.us268 ] ; 2 uses
  %i.jc = icmp sgt i32 %.sroa.0485.0..sroa.0485.0.488, 1
  br i1 %i.jc, label %.lr.ph264.split.us.1, label %._crit_edge265.2

.lr.ph264.split.us.1:                             ; preds = %.lr.ph264.1
  %i.jd = icmp sgt i32 %.sroa.17.0..sroa.17.4.492, 1
  br i1 %i.jd, label %.lr.ph256.us.us.1, label %.lr.ph256.us.1.preheader

.lr.ph256.us.1.preheader:                         ; preds = %.lr.ph264.split.us.1
  %i.je = add nsw i32 %.sroa.0485.0..sroa.0485.0.488, -2
  %xtraiter = and i32 %i.n, 7                     ; 3 uses
  %i.jf = icmp ult i32 %i.je, 7
  %unroll_iter = and i32 %i.n, -8
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod809 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph256.us.1

.lr.ph256.us.1:                                   ; preds = %.lr.ph256.us.1.preheader, %._crit_edge257.split.us268.1
  %i.jg = phi i32 [ %i.jh, %._crit_edge257.split.us268.1 ], [ 0, %.lr.ph256.us.1.preheader ]
  br i1 %i.jf, label %.epil.preheader, label %.lr.ph256.us.1.new

.lr.ph256.us.1.new:                               ; preds = %.lr.ph256.us.1, %.lr.ph256.us.1.new
  %niter = phi i32 [ %niter.next.7, %.lr.ph256.us.1.new ], [ 0, %.lr.ph256.us.1 ]
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge257.split.us268.1.unr-lcssa, label %.lr.ph256.us.1.new, !llvm.loop !39

._crit_edge257.split.us268.1.unr-lcssa:           ; preds = %.lr.ph256.us.1.new
  br i1 %lcmp.mod.not, label %._crit_edge257.split.us268.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge257.split.us268.1.unr-lcssa, %.lr.ph256.us.1
  tail call void @llvm.assume(i1 %lcmp.mod809)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ag ]
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge257.split.us268.1, label %bb.ag, !llvm.loop !41

._crit_edge257.split.us268.1:                     ; preds = %bb.ag, %._crit_edge257.split.us268.1.unr-lcssa
  %i.jh = add nuw nsw i32 %i.jg, 1                ; 2 uses
  %i.ji = icmp slt i32 %i.jh, %.sroa.32.0
  br i1 %i.ji, label %.lr.ph256.us.1, label %._crit_edge265.thread607, !llvm.loop !40

.lr.ph256.us.us.1:                                ; preds = %.lr.ph264.split.us.1, %._crit_edge257.split.us.us.us.1
  %i.jj = phi i32 [ %i.jx, %._crit_edge257.split.us.us.us.1 ], [ 0, %.lr.ph264.split.us.1 ] ; 2 uses
  %.1166262.us.us.1 = phi i32 [ %.4169.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1166.lcssa606, %.lr.ph264.split.us.1 ]
  %.1171261.us.us.1 = phi i32 [ %.4174.us.us.us.1, %._crit_edge257.split.us.us.us.1 ], [ %.1171.lcssa605, %.lr.ph264.split.us.1 ]
  %i.jk = mul nsw i32 %i.jj, %i.o
  br label %.lr.ph249.us.us.us.1

.lr.ph249.us.us.us.1:                             ; preds = %._crit_edge250.us.us.us.1, %.lr.ph256.us.us.1
  %i.jl = phi i32 [ 0, %.lr.ph256.us.us.1 ], [ %i.jv, %._crit_edge250.us.us.us.1 ] ; 2 uses
  %.2167254.us.us.us.1 = phi i32 [ %.1166262.us.us.1, %.lr.ph256.us.us.1 ], [ %.4169.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  %.2172253.us.us.us.1 = phi i32 [ %.1171261.us.us.1, %.lr.ph256.us.us.1 ], [ %.4174.us.us.us.1, %._crit_edge250.us.us.us.1 ]
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph249.us.us.us.1
  %.3168247.us.us.us.1 = phi i32 [ %.2167254.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4169.us.us.us.1, %bb.aj ] ; 3 uses
  %.3173246.us.us.us.1 = phi i32 [ %.2172253.us.us.us.1, %.lr.ph249.us.us.us.1 ], [ %.4174.us.us.us.1, %bb.aj ] ; 3 uses
  %.0175245.us.us.us.1 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %.1176.us.us.us.1, %bb.aj ]
  %.sroa.14.0..sroa.14.4.445 = phi i32 [ 0, %.lr.ph249.us.us.us.1 ], [ %i.ju, %bb.aj ] ; 2 uses
  %i.jm = add nsw i32 %i.jk, %.sroa.14.0..sroa.14.4.445
  %i.jn = mul nsw i32 %i.jm, %i.n
  %i.jo = add nsw i32 %i.jn, %i.jl                ; 2 uses
  %.not194.us.us.us.1 = icmp ne i32 %.0175245.us.us.us.1, 0
  %.phi.trans.insert551 = sext i32 %i.jo to i64
  %.phi.trans.insert552 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert551 ; 2 uses
  %.pre553 = load i32, ptr %.phi.trans.insert552, align 4, !tbaa !4 ; 3 uses
  %i.jp = icmp eq i32 %.pre553, %.3168247.us.us.us.1
  %or.cond655 = select i1 %.not194.us.us.us.1, i1 %i.jp, i1 false
  br i1 %or.cond655, label %bb.ai, label %._crit_edge550

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %.phi.trans.insert552, align 4, !tbaa !4
end_hunk_0
