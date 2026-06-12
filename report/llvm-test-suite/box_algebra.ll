begin_hunk_0_@hypre_UnionBoxes:bb.a

._crit_edge.1.1:                                  ; preds = %scalar.ph715, %middle.block729, %.critedge.1.1
  %i.du = zext nneg i32 %.0151214.1.1 to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.du
  store i32 %i.ca, ptr %i.dv, align 4, !tbaa !4
  %i.dw = add nsw i32 %.sroa.17.0..sroa.17.4.497, 1
  br label %.preheader206.2

.preheader206.2:                                  ; preds = %._crit_edge.1.1, %bb.l
  %.sroa.17.0..sroa.17.4.497549 = phi i32 [ %i.dw, %._crit_edge.1.1 ], [ %.sroa.17.0..sroa.17.4.497, %bb.l ] ; 2 uses
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
  %min.iters.check699 = icmp ult i64 %i.ek, 8
  br i1 %min.iters.check699, label %scalar.ph698.preheader, label %vector.ph700

vector.ph700:                                     ; preds = %.lr.ph221.2
  %n.vec702 = and i64 %i.ek, -8                   ; 3 uses
  %i.el = sub nsw i64 %i.ei, %n.vec702
  br label %vector.body703

vector.body703:                                   ; preds = %vector.body703, %vector.ph700
  %index704 = phi i64 [ 0, %vector.ph700 ], [ %index.next711, %vector.body703 ] ; 2 uses
  %i.em = sub i64 %i.ei, %index704
  %i.en = getelementptr [4 x i8], ptr %i.i, i64 %i.em ; 4 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -16
  %i.ep = getelementptr i8, ptr %i.en, i64 -32
  %wide.load705 = load <4 x i32>, ptr %i.eo, align 4, !tbaa !4
  %wide.load706 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !4
  %i.eq = getelementptr i8, ptr %i.en, i64 -12
  %i.er = getelementptr i8, ptr %i.en, i64 -28
  store <4 x i32> %wide.load705, ptr %i.eq, align 4, !tbaa !4
  store <4 x i32> %wide.load706, ptr %i.er, align 4, !tbaa !4
  %index.next711 = add nuw i64 %index704, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next711, %n.vec702
  br i1 %i.es, label %middle.block712, label %vector.body703, !llvm.loop !25

middle.block712:                                  ; preds = %vector.body703
  %cmp.n713 = icmp eq i64 %i.ek, %n.vec702
  br i1 %cmp.n713, label %._crit_edge.2, label %scalar.ph698.preheader

scalar.ph698.preheader:                           ; preds = %.lr.ph221.2, %middle.block712
  %indvars.iv322.2.ph = phi i64 [ %i.ei, %.lr.ph221.2 ], [ %i.el, %middle.block712 ]
  br label %scalar.ph698

scalar.ph698:                                     ; preds = %scalar.ph698.preheader, %scalar.ph698
  %indvars.iv322.2 = phi i64 [ %indvars.iv.next323.2, %scalar.ph698 ], [ %indvars.iv322.2.ph, %scalar.ph698.preheader ] ; 2 uses
  %i.et = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv322.2 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 -4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %indvars.iv.next323.2 = add nsw i64 %indvars.iv322.2, -1 ; 2 uses
  %i.ew = icmp sgt i64 %indvars.iv.next323.2, %i.ej
  br i1 %i.ew, label %scalar.ph698, label %._crit_edge.2, !llvm.loop !26

._crit_edge.2:                                    ; preds = %scalar.ph698, %middle.block712, %.critedge.2
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
  %wide.load694 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !4
  %i.fo = getelementptr i8, ptr %i.fl, i64 -12
  %i.fp = getelementptr i8, ptr %i.fl, i64 -28
  store <4 x i32> %wide.load, ptr %i.fo, align 4, !tbaa !4
  store <4 x i32> %wide.load694, ptr %i.fp, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %._crit_edge.1.2, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph221.1.2, %middle.block
  %indvars.iv322.1.2.ph = phi i64 [ %i.fg, %.lr.ph221.1.2 ], [ %i.fj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv322.1.2 = phi i64 [ %indvars.iv.next323.1.2, %scalar.ph ], [ %indvars.iv322.1.2.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fr = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv322.1.2 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !4
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !4
  %indvars.iv.next323.1.2 = add nsw i64 %indvars.iv322.1.2, -1 ; 2 uses
  %i.fu = icmp sgt i64 %indvars.iv.next323.1.2, %i.fh
  br i1 %i.fu, label %scalar.ph, label %._crit_edge.1.2, !llvm.loop !28

._crit_edge.1.2:                                  ; preds = %scalar.ph, %middle.block, %.critedge.1.2
  %i.fv = zext nneg i32 %.0151214.1.2 to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fv
  store i32 %i.eb, ptr %i.fw, align 4, !tbaa !4
  %i.fx = add nsw i32 %.sroa.32.2, 1
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.1.2, %bb.r
  %.sroa.32.3 = phi i32 [ %i.fx, %._crit_edge.1.2 ], [ %.sroa.32.2, %bb.r ] ; 2 uses
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %i.fy = load i32, ptr %i.a, align 8, !tbaa !12
  %i.fz = sext i32 %i.fy to i64
  %i.ga = icmp slt i64 %indvars.iv.next374, %i.fz
  br i1 %i.ga, label %.preheader206, label %.preheader205.loopexit, !llvm.loop !29

.lr.ph245:                                        ; preds = %.preheader205
  %i.gb = load ptr, ptr %0, align 8, !tbaa !8
  %i.gc = add i32 %.sroa.0491.0..sroa.0491.0.494, 1
  %i.gd = add i32 %i.gc, %i.r                     ; 2 uses
  %i.ge = sext i32 %i.n to i64
  %i.gf = sext i32 %i.o to i64
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader204

.preheader204:                                    ; preds = %.lr.ph245, %._crit_edge239
  %i.gg = phi i32 [ %i.t, %.lr.ph245 ], [ %4, %._crit_edge239 ]
  %indvars.iv405 = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next406, %._crit_edge239 ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %indvars.iv405 ; 6 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader204
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %bb.u ], [ 0, %.preheader204 ] ; 5 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv380
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !4
  %.not196 = icmp eq i32 %i.gj, %i.gl
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1
  br i1 %.not196, label %bb.v, label %bb.u, !llvm.loop !30

bb.v:                                             ; preds = %bb.u
  %i.gm = load i32, ptr %i.gi, align 4, !tbaa !4
  %i.gn = add nsw i32 %i.gm, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %bb.w ], [ %indvars.iv380, %bb.v ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv383
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4
  %.not197 = icmp eq i32 %i.gn, %i.gp
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1
  br i1 %.not197, label %.preheader204.1, label %bb.w, !llvm.loop !31

.preheader204.1:                                  ; preds = %bb.w
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader204.1
  %indvars.iv380.1 = phi i64 [ %indvars.iv.next381.1, %bb.x ], [ 0, %.preheader204.1 ] ; 5 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv380.1
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !4
  %.not196.1 = icmp eq i32 %i.gr, %i.gt
  %indvars.iv.next381.1 = add nuw nsw i64 %indvars.iv380.1, 1
  br i1 %.not196.1, label %bb.y, label %bb.x, !llvm.loop !30

bb.y:                                             ; preds = %bb.x
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !4
  %i.gw = add nsw i32 %i.gv, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %indvars.iv383.1 = phi i64 [ %indvars.iv.next384.1, %bb.z ], [ %indvars.iv380.1, %bb.y ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv383.1
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %.not197.1 = icmp eq i32 %i.gw, %i.gy
  %indvars.iv.next384.1 = add nuw nsw i64 %indvars.iv383.1, 1
  br i1 %.not197.1, label %.preheader204.2, label %bb.z, !llvm.loop !31

.preheader204.2:                                  ; preds = %bb.z
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.preheader204.2
  %indvars.iv380.2 = phi i64 [ %indvars.iv.next381.2, %bb.aa ], [ 0, %.preheader204.2 ] ; 5 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv380.2
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %.not196.2 = icmp eq i32 %i.ha, %i.hc
  %indvars.iv.next381.2 = add nuw nsw i64 %indvars.iv380.2, 1
  br i1 %.not196.2, label %bb.ab, label %bb.aa, !llvm.loop !30

bb.ab:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gh, i64 20
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !4
  %i.hf = add nsw i32 %i.he, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv383.2 = phi i64 [ %indvars.iv.next384.2, %bb.ac ], [ %indvars.iv380.2, %bb.ab ] ; 4 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv383.2
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !4
  %.not197.2 = icmp eq i32 %i.hf, %i.hh
  %indvars.iv.next384.2 = add nuw nsw i64 %indvars.iv383.2, 1
  br i1 %.not197.2, label %bb.ad, label %bb.ac, !llvm.loop !31

bb.ad:                                            ; preds = %bb.ac
  %1 = icmp samesign ult i64 %indvars.iv380.2, %indvars.iv383.2
  %2 = icmp samesign ult i64 %indvars.iv380.1, %indvars.iv383.1
  %or.cond = select i1 %1, i1 %2, i1 false
  %3 = icmp samesign ult i64 %indvars.iv380, %indvars.iv383
  %or.cond661 = select i1 %or.cond, i1 %3, i1 false
  br i1 %or.cond661, label %.lr.ph234.us.us.preheader, label %._crit_edge239

.lr.ph234.us.us.preheader:                        ; preds = %bb.ad
  %sext = shl i64 %indvars.iv380, 32
  %i.hi = ashr exact i64 %sext, 32                ; 4 uses
  %sext603 = shl i64 %indvars.iv380.1, 32
  %i.hj = ashr exact i64 %sext603, 32
  %sext604 = shl i64 %indvars.iv380.2, 32
  %i.hk = ashr exact i64 %sext604, 32
  %sext605 = shl i64 %indvars.iv383.2, 32
  %wide.trip.count403 = ashr exact i64 %sext605, 32
  %sext606 = shl i64 %indvars.iv383.1, 32
  %wide.trip.count398 = ashr exact i64 %sext606, 32
  %sext607 = shl i64 %indvars.iv383, 32
  %wide.trip.count393 = ashr exact i64 %sext607, 32 ; 2 uses
  %i.hl = sub nsw i64 %wide.trip.count393, %i.hi  ; 3 uses
  %min.iters.check784 = icmp ult i64 %i.hl, 8
  %n.vec787 = and i64 %i.hl, -8                   ; 3 uses
  %i.hm = add nsw i64 %i.hi, %n.vec787
  %cmp.n792 = icmp eq i64 %i.hl, %n.vec787
  br label %.lr.ph234.us.us

.lr.ph234.us.us:                                  ; preds = %.lr.ph234.us.us.preheader, %._crit_edge235.split.us.us.us
  %indvars.iv400 = phi i64 [ %i.hk, %.lr.ph234.us.us.preheader ], [ %indvars.iv.next401, %._crit_edge235.split.us.us.us ] ; 2 uses
  %i.hn = mul nsw i64 %indvars.iv400, %i.gf
  br label %.lr.ph230.us.us.us

.lr.ph230.us.us.us:                               ; preds = %._crit_edge231.us.us.us, %.lr.ph234.us.us
  %indvars.iv395 = phi i64 [ %indvars.iv.next396, %._crit_edge231.us.us.us ], [ %i.hj, %.lr.ph234.us.us ] ; 2 uses
  %i.ho = add nsw i64 %indvars.iv395, %i.hn
  %i.hp = mul nsw i64 %i.ho, %i.ge
  %invariant.gep = getelementptr [4 x i8], ptr %i.s, i64 %i.hp ; 2 uses
  br i1 %min.iters.check784, label %scalar.ph783.preheader, label %vector.ph785

vector.ph785:                                     ; preds = %.lr.ph230.us.us.us
  %i.hq = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hi
  br label %vector.body788

vector.body788:                                   ; preds = %vector.body788, %vector.ph785
  %index789 = phi i64 [ 0, %vector.ph785 ], [ %index.next790, %vector.body788 ] ; 2 uses
  %i.hr = getelementptr [4 x i8], ptr %i.hq, i64 %index789 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.hr, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.hs, align 4, !tbaa !4
  %index.next790 = add nuw i64 %index789, 8       ; 2 uses
  %i.ht = icmp eq i64 %index.next790, %n.vec787
  br i1 %i.ht, label %middle.block791, label %vector.body788, !llvm.loop !32

middle.block791:                                  ; preds = %vector.body788
  br i1 %cmp.n792, label %._crit_edge231.us.us.us, label %scalar.ph783.preheader

scalar.ph783.preheader:                           ; preds = %.lr.ph230.us.us.us, %middle.block791
  %indvars.iv390.ph = phi i64 [ %i.hi, %.lr.ph230.us.us.us ], [ %i.hm, %middle.block791 ]
  br label %scalar.ph783

scalar.ph783:                                     ; preds = %scalar.ph783.preheader, %scalar.ph783
  %indvars.iv390 = phi i64 [ %indvars.iv.next391, %scalar.ph783 ], [ %indvars.iv390.ph, %scalar.ph783.preheader ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv390
  store i32 %i.gd, ptr %gep, align 4, !tbaa !4
  %indvars.iv.next391 = add nsw i64 %indvars.iv390, 1 ; 2 uses
  %exitcond394.not = icmp eq i64 %indvars.iv.next391, %wide.trip.count393
  br i1 %exitcond394.not, label %._crit_edge231.us.us.us, label %scalar.ph783, !llvm.loop !33

._crit_edge231.us.us.us:                          ; preds = %scalar.ph783, %middle.block791
  %indvars.iv.next396 = add nsw i64 %indvars.iv395, 1 ; 2 uses
  %exitcond399.not = icmp eq i64 %indvars.iv.next396, %wide.trip.count398
  br i1 %exitcond399.not, label %._crit_edge235.split.us.us.us, label %.lr.ph230.us.us.us, !llvm.loop !34

._crit_edge235.split.us.us.us:                    ; preds = %._crit_edge231.us.us.us
  %indvars.iv.next401 = add nsw i64 %indvars.iv400, 1 ; 2 uses
  %exitcond404.not = icmp eq i64 %indvars.iv.next401, %wide.trip.count403
  br i1 %exitcond404.not, label %._crit_edge239.loopexit, label %.lr.ph234.us.us, !llvm.loop !35

._crit_edge239.loopexit:                          ; preds = %._crit_edge235.split.us.us.us
  %.pre = load i32, ptr %i.a, align 8, !tbaa !12
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %._crit_edge239.loopexit, %bb.ad
  %4 = phi i32 [ %i.gg, %bb.ad ], [ %.pre, %._crit_edge239.loopexit ] ; 2 uses
  %indvars.iv.next406 = add nuw nsw i64 %indvars.iv405, 1 ; 2 uses
  %i.hu = sext i32 %4 to i64
  %i.hv = icmp slt i64 %indvars.iv.next406, %i.hu
  br i1 %i.hv, label %.preheader204, label %.preheader203, !llvm.loop !36

.lr.ph280.preheader:                              ; preds = %._crit_edge267.2
  %wide.trip.count416 = zext nneg i32 %i.q to i64 ; 3 uses
  %min.iters.check795 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check795, label %.lr.ph280.preheader808, label %vector.ph796

vector.ph796:                                     ; preds = %.lr.ph280.preheader
  %n.vec798 = and i64 %wide.trip.count416, 2147483640 ; 3 uses
  br label %vector.body799

vector.body799:                                   ; preds = %vector.body799, %vector.ph796
  %index800 = phi i64 [ 0, %vector.ph796 ], [ %index.next804, %vector.body799 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph796 ], [ %i.ic, %vector.body799 ]
  %vec.phi801 = phi <4 x i32> [ zeroinitializer, %vector.ph796 ], [ %i.id, %vector.body799 ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index800 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load802 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !4
  %wide.load803 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !4
  %i.hy = icmp ne <4 x i32> %wide.load802, zeroinitializer
  %i.hz = icmp ne <4 x i32> %wide.load803, zeroinitializer
  %i.ia = zext <4 x i1> %i.hy to <4 x i32>
  %i.ib = zext <4 x i1> %i.hz to <4 x i32>
  %i.ic = add <4 x i32> %vec.phi, %i.ia           ; 2 uses
  %i.id = add <4 x i32> %vec.phi801, %i.ib        ; 2 uses
  %index.next804 = add nuw i64 %index800, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next804, %n.vec798
  br i1 %i.ie, label %middle.block805, label %vector.body799, !llvm.loop !37

middle.block805:                                  ; preds = %vector.body799
  %bin.rdx = add <4 x i32> %i.id, %i.ic
  %i.if = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n806 = icmp eq i64 %n.vec798, %wide.trip.count416
  br i1 %cmp.n806, label %._crit_edge281, label %.lr.ph280.preheader808

.lr.ph280.preheader808:                           ; preds = %.lr.ph280.preheader, %middle.block805
  %indvars.iv413.ph = phi i64 [ 0, %.lr.ph280.preheader ], [ %n.vec798, %middle.block805 ]
  %.0177279.ph = phi i32 [ 0, %.lr.ph280.preheader ], [ %i.if, %middle.block805 ]
  br label %.lr.ph280

.preheader203:                                    ; preds = %._crit_edge239, %.preheader205
  %i.ig = icmp sgt i32 %.sroa.32.0, 0
  br i1 %i.ig, label %.lr.ph266, label %._crit_edge267.thread613

.lr.ph266:                                        ; preds = %.preheader203
  %i.ih = icmp sgt i32 %.sroa.17.0..sroa.17.4.498, 1
  br i1 %i.ih, label %.lr.ph266.split.us, label %.lr.ph266.1

.lr.ph266.split.us:                               ; preds = %.lr.ph266
  %i.ii = icmp sgt i32 %.sroa.0491.0..sroa.0491.0.494, 1
  br i1 %i.ii, label %.lr.ph258.us.us, label %._crit_edge259.split.us270

.lr.ph258.us.us:                                  ; preds = %.lr.ph266.split.us, %._crit_edge259.split.us.us.us
  %i.ij = phi i32 [ %i.ix, %._crit_edge259.split.us.us.us ], [ 0, %.lr.ph266.split.us ] ; 2 uses
  %.1166264.us.us = phi i32 [ %.4169.us.us.us, %._crit_edge259.split.us.us.us ], [ undef, %.lr.ph266.split.us ]
  %.1171263.us.us = phi i32 [ %.4174.us.us.us, %._crit_edge259.split.us.us.us ], [ %i.d, %.lr.ph266.split.us ]
  %i.ik = mul nsw i32 %i.ij, %i.o
  br label %.lr.ph251.us.us.us

.lr.ph251.us.us.us:                               ; preds = %._crit_edge252.us.us.us, %.lr.ph258.us.us
  %i.il = phi i32 [ 0, %.lr.ph258.us.us ], [ %i.iv, %._crit_edge252.us.us.us ] ; 2 uses
  %.2167256.us.us.us = phi i32 [ %.1166264.us.us, %.lr.ph258.us.us ], [ %.4169.us.us.us, %._crit_edge252.us.us.us ]
  %.2172255.us.us.us = phi i32 [ %.1171263.us.us, %.lr.ph258.us.us ], [ %.4174.us.us.us, %._crit_edge252.us.us.us ]
  %i.im = add nsw i32 %i.ik, %i.il
  %i.in = mul nsw i32 %i.im, %i.n
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph251.us.us.us
  %.3168249.us.us.us = phi i32 [ %.2167256.us.us.us, %.lr.ph251.us.us.us ], [ %.4169.us.us.us, %bb.ag ] ; 3 uses
  %.3173248.us.us.us = phi i32 [ %.2172255.us.us.us, %.lr.ph251.us.us.us ], [ %.4174.us.us.us, %bb.ag ] ; 3 uses
  %.0175247.us.us.us = phi i32 [ 0, %.lr.ph251.us.us.us ], [ %.1176.us.us.us, %bb.ag ]
  %.sroa.0.0..sroa.0.0. = phi i32 [ 0, %.lr.ph251.us.us.us ], [ %i.iu, %bb.ag ] ; 2 uses
  %i.io = add nsw i32 %i.in, %.sroa.0.0..sroa.0.0. ; 2 uses
  %.not194.us.us.us = icmp ne i32 %.0175247.us.us.us, 0
  %.phi.trans.insert = sext i32 %i.io to i64
  %.phi.trans.insert554 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert ; 2 uses
  %.pre555 = load i32, ptr %.phi.trans.insert554, align 4, !tbaa !4 ; 3 uses
  %i.ip = icmp eq i32 %.pre555, %.3168249.us.us.us
  %or.cond662 = select i1 %.not194.us.us.us, i1 %i.ip, i1 false
  br i1 %or.cond662, label %bb.af, label %._crit_edge553

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %.phi.trans.insert554, align 4, !tbaa !4
  %i.iq = sext i32 %.3173248.us.us.us to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.iq ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !4
  br label %bb.ag

._crit_edge553:                                   ; preds = %bb.ae
  %.not195.us.us.us = icmp ne i32 %.pre555, 0     ; 3 uses
  %..us.us.us = zext i1 %.not195.us.us.us to i32
  %.3173..us.us.us = select i1 %.not195.us.us.us, i32 %i.io, i32 %.3173248.us.us.us
  %.3168..us.us.us = select i1 %.not195.us.us.us, i32 %.pre555, i32 %.3168249.us.us.us
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge553, %bb.af
  %.1176.us.us.us = phi i32 [ 1, %bb.af ], [ %..us.us.us, %._crit_edge553 ]
  %.4174.us.us.us = phi i32 [ %.3173248.us.us.us, %bb.af ], [ %.3173..us.us.us, %._crit_edge553 ] ; 4 uses
  %.4169.us.us.us = phi i32 [ %.3168249.us.us.us, %bb.af ], [ %.3168..us.us.us, %._crit_edge553 ] ; 4 uses
  %i.iu = add nuw nsw i32 %.sroa.0.0..sroa.0.0., 1 ; 2 uses
  %exitcond408.not = icmp eq i32 %i.iu, %i.n
  br i1 %exitcond408.not, label %._crit_edge252.us.us.us, label %bb.ae, !llvm.loop !38

._crit_edge252.us.us.us:                          ; preds = %bb.ag
  %i.iv = add nuw nsw i32 %i.il, 1                ; 2 uses
  %i.iw = icmp slt i32 %i.iv, %i.o
  br i1 %i.iw, label %.lr.ph251.us.us.us, label %._crit_edge259.split.us.us.us, !llvm.loop !39

._crit_edge259.split.us.us.us:                    ; preds = %._crit_edge252.us.us.us
  %i.ix = add nuw nsw i32 %i.ij, 1                ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %.sroa.32.0
  br i1 %i.iy, label %.lr.ph258.us.us, label %.lr.ph266.1, !llvm.loop !40

._crit_edge259.split.us270:                       ; preds = %.lr.ph266.split.us, %._crit_edge259.split.us270
  %i.iz = phi i32 [ %i.ja, %._crit_edge259.split.us270 ], [ 0, %.lr.ph266.split.us ]
  %i.ja = add nuw nsw i32 %i.iz, 1                ; 2 uses
  %i.jb = icmp slt i32 %i.ja, %.sroa.32.0
  br i1 %i.jb, label %._crit_edge259.split.us270, label %.lr.ph266.1, !llvm.loop !40

.lr.ph266.1:                                      ; preds = %._crit_edge259.split.us.us.us, %._crit_edge259.split.us270, %.lr.ph266
  %.1166.lcssa612 = phi i32 [ undef, %.lr.ph266 ], [ %.4169.us.us.us, %._crit_edge259.split.us.us.us ], [ undef, %._crit_edge259.split.us270 ] ; 2 uses
  %.1171.lcssa611 = phi i32 [ %i.d, %.lr.ph266 ], [ %.4174.us.us.us, %._crit_edge259.split.us.us.us ], [ %i.d, %._crit_edge259.split.us270 ] ; 2 uses
  %i.jc = icmp sgt i32 %.sroa.0491.0..sroa.0491.0.494, 1
  br i1 %i.jc, label %.lr.ph266.split.us.1, label %._crit_edge267.2

.lr.ph266.split.us.1:                             ; preds = %.lr.ph266.1
  %i.jd = icmp sgt i32 %.sroa.17.0..sroa.17.4.498, 1
  br i1 %i.jd, label %.lr.ph258.us.us.1, label %.lr.ph258.us.1.preheader

.lr.ph258.us.1.preheader:                         ; preds = %.lr.ph266.split.us.1
  %i.je = add nsw i32 %.sroa.0491.0..sroa.0491.0.494, -2
  %xtraiter = and i32 %i.n, 7                     ; 3 uses
  %i.jf = icmp ult i32 %i.je, 7
  %unroll_iter = and i32 %i.n, -8
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod840 = icmp ne i32 %xtraiter, 0
  br label %.lr.ph258.us.1

.lr.ph258.us.1:                                   ; preds = %.lr.ph258.us.1.preheader, %._crit_edge259.split.us270.1
  %i.jg = phi i32 [ %i.jh, %._crit_edge259.split.us270.1 ], [ 0, %.lr.ph258.us.1.preheader ]
  br i1 %i.jf, label %.epil.preheader, label %.lr.ph258.us.1.new

.lr.ph258.us.1.new:                               ; preds = %.lr.ph258.us.1, %.lr.ph258.us.1.new
  %niter = phi i32 [ %niter.next.7, %.lr.ph258.us.1.new ], [ 0, %.lr.ph258.us.1 ]
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge259.split.us270.1.unr-lcssa, label %.lr.ph258.us.1.new, !llvm.loop !39

._crit_edge259.split.us270.1.unr-lcssa:           ; preds = %.lr.ph258.us.1.new
  br i1 %lcmp.mod.not, label %._crit_edge259.split.us270.1, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge259.split.us270.1.unr-lcssa, %.lr.ph258.us.1
  tail call void @llvm.assume(i1 %lcmp.mod840)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge259.split.us270.1, label %bb.ah, !llvm.loop !41

._crit_edge259.split.us270.1:                     ; preds = %bb.ah, %._crit_edge259.split.us270.1.unr-lcssa
  %i.jh = add nuw nsw i32 %i.jg, 1                ; 2 uses
  %i.ji = icmp slt i32 %i.jh, %.sroa.32.0
  br i1 %i.ji, label %.lr.ph258.us.1, label %._crit_edge267.thread613, !llvm.loop !40

.lr.ph258.us.us.1:                                ; preds = %.lr.ph266.split.us.1, %._crit_edge259.split.us.us.us.1
  %i.jj = phi i32 [ %i.jx, %._crit_edge259.split.us.us.us.1 ], [ 0, %.lr.ph266.split.us.1 ] ; 2 uses
  %.1166264.us.us.1 = phi i32 [ %.4169.us.us.us.1, %._crit_edge259.split.us.us.us.1 ], [ %.1166.lcssa612, %.lr.ph266.split.us.1 ]
  %.1171263.us.us.1 = phi i32 [ %.4174.us.us.us.1, %._crit_edge259.split.us.us.us.1 ], [ %.1171.lcssa611, %.lr.ph266.split.us.1 ]
  %i.jk = mul nsw i32 %i.jj, %i.o
  br label %.lr.ph251.us.us.us.1

.lr.ph251.us.us.us.1:                             ; preds = %._crit_edge252.us.us.us.1, %.lr.ph258.us.us.1
  %i.jl = phi i32 [ 0, %.lr.ph258.us.us.1 ], [ %i.jv, %._crit_edge252.us.us.us.1 ] ; 2 uses
  %.2167256.us.us.us.1 = phi i32 [ %.1166264.us.us.1, %.lr.ph258.us.us.1 ], [ %.4169.us.us.us.1, %._crit_edge252.us.us.us.1 ]
  %.2172255.us.us.us.1 = phi i32 [ %.1171263.us.us.1, %.lr.ph258.us.us.1 ], [ %.4174.us.us.us.1, %._crit_edge252.us.us.us.1 ]
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph251.us.us.us.1
  %.3168249.us.us.us.1 = phi i32 [ %.2167256.us.us.us.1, %.lr.ph251.us.us.us.1 ], [ %.4169.us.us.us.1, %bb.ak ] ; 3 uses
  %.3173248.us.us.us.1 = phi i32 [ %.2172255.us.us.us.1, %.lr.ph251.us.us.us.1 ], [ %.4174.us.us.us.1, %bb.ak ] ; 3 uses
  %.0175247.us.us.us.1 = phi i32 [ 0, %.lr.ph251.us.us.us.1 ], [ %.1176.us.us.us.1, %bb.ak ]
  %.sroa.14.0..sroa.14.4.451 = phi i32 [ 0, %.lr.ph251.us.us.us.1 ], [ %i.ju, %bb.ak ] ; 2 uses
  %i.jm = add nsw i32 %i.jk, %.sroa.14.0..sroa.14.4.451
  %i.jn = mul nsw i32 %i.jm, %i.n
  %i.jo = add nsw i32 %i.jn, %i.jl                ; 2 uses
  %.not194.us.us.us.1 = icmp ne i32 %.0175247.us.us.us.1, 0
  %.phi.trans.insert557 = sext i32 %i.jo to i64
  %.phi.trans.insert558 = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.phi.trans.insert557 ; 2 uses
  %.pre559 = load i32, ptr %.phi.trans.insert558, align 4, !tbaa !4 ; 3 uses
  %i.jp = icmp eq i32 %.pre559, %.3168249.us.us.us.1
  %or.cond663 = select i1 %.not194.us.us.us.1, i1 %i.jp, i1 false
  br i1 %or.cond663, label %bb.aj, label %._crit_edge556

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %.phi.trans.insert558, align 4, !tbaa !4
end_hunk_0
