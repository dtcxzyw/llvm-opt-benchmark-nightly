inline.NumInlined: 101
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@Bdc_DecomposeUpdateRight:bb.a
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !28
  %i.ee = load i32, ptr %i.cq, align 8, !tbaa !27
  %i.ef = load i32, ptr %i.dy, align 4, !tbaa !57
  tail call void @Kit_TruthExistSet(ptr noundef %i.eb, ptr noundef %i.ed, i32 noundef %i.ee, i32 noundef %i.ef) #7
  %i.eg = load ptr, ptr %i.ck, align 8, !tbaa !26
  %i.eh = load i32, ptr %i.cq, align 8, !tbaa !27 ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 6
  %i.ej = add nsw i32 %i.eh, -5
  %i.ek = shl nuw i32 1, %i.ej
  %spec.select.i49 = select i1 %i.ei, i32 1, i32 %i.ek ; 2 uses
  %i.el = icmp sgt i32 %spec.select.i49, 0
  br i1 %i.el, label %.lr.ph79, label %Kit_TruthIsConst0.exit

.lr.ph79:                                         ; preds = %Kit_TruthSharp.exit
  %i.em = zext nneg i32 %spec.select.i49 to i64
  br label %bb.e

select.unfold.i50:                                ; preds = %bb.e
  %i.en = trunc nuw i64 %i.ep to i32
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %bb.e, label %Kit_TruthIsConst0.exit, !llvm.loop !58

bb.e:                                             ; preds = %.lr.ph79, %select.unfold.i50
  %indvars.iv.i5178 = phi i64 [ %i.em, %.lr.ph79 ], [ %i.ep, %select.unfold.i50 ]
  %i.ep = add nsw i64 %indvars.iv.i5178, -1       ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !34
  %.not.i = icmp eq i32 %i.er, 0
  br i1 %.not.i, label %select.unfold.i50, label %.Kit_TruthIsConst0.exit.loopexit73_crit_edge, !llvm.loop !58

bb.f:                                             ; preds = %Kit_TruthNot.exit
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !28 ; 5 uses
  %i.eu = ptrtoaddr ptr %i.et to i64              ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !28 ; 3 uses
  %i.ex = ptrtoaddr ptr %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !27 ; 3 uses
  %i.fa = icmp slt i32 %i.ez, 6
  %i.fb = add nsw i32 %i.ez, -5
  %i.fc = shl nuw i32 1, %i.fb
  %spec.select.i52 = select i1 %i.fa, i32 1, i32 %i.fc ; 3 uses
  %i.fd = icmp sgt i32 %spec.select.i52, 0
  br i1 %i.fd, label %select.unfold.preheader.i53, label %Kit_TruthAnd.exit

select.unfold.preheader.i53:                      ; preds = %bb.f
  %i.fe = zext nneg i32 %spec.select.i52 to i64   ; 3 uses
  %min.iters.check101 = icmp ult i32 %spec.select.i52, 12
  br i1 %min.iters.check101, label %select.unfold.i54.preheader, label %vector.memcheck97

select.unfold.i54.preheader:                      ; preds = %vector.memcheck97, %select.unfold.preheader.i53
  br label %select.unfold.i54

vector.memcheck97:                                ; preds = %select.unfold.preheader.i53
  %i.ff = sub i64 %i.eu, %i.ex
  %diff.check98 = icmp ugt i64 %i.ff, -32
  %i.fg = sub i64 %i.eu, %i.c
  %diff.check99 = icmp ugt i64 %i.fg, -32
  %conflict.rdx = or i1 %diff.check98, %diff.check99
  br i1 %conflict.rdx, label %select.unfold.i54.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %vector.memcheck97
  %n.vec103 = and i64 %i.fe, 2147483640
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next110, %vector.body104 ] ; 2 uses
  %i.fh = xor i64 %index105, -1
  %i.fi = add i64 %i.fh, %i.fe                    ; 3 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -12
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -28
  %wide.load106 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !34
  %wide.load107 = load <4 x i32>, ptr %i.fl, align 4, !tbaa !34
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fi ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 -12
  %i.fo = getelementptr inbounds i8, ptr %i.fm, i64 -28
  %wide.load108 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !34
  %wide.load109 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !34
  %i.fp = and <4 x i32> %wide.load108, %wide.load106
  %i.fq = and <4 x i32> %wide.load109, %wide.load107
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.fi ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -12
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 -28
  store <4 x i32> %i.fp, ptr %i.fs, align 4, !tbaa !34
  store <4 x i32> %i.fq, ptr %i.ft, align 4, !tbaa !34
  %index.next110 = add nuw i64 %index105, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next110, %n.vec103
  br i1 %i.fu, label %Kit_TruthAnd.exit.loopexit, label %vector.body104, !llvm.loop !59

select.unfold.i54:                                ; preds = %select.unfold.i54.preheader, %select.unfold.i54
  %indvars.iv.i55 = phi i64 [ %indvars.iv.next.i56, %select.unfold.i54 ], [ %i.fe, %select.unfold.i54.preheader ] ; 2 uses
  %indvars.iv.next.i56 = add nsw i64 %indvars.iv.i55, -1 ; 4 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %indvars.iv.next.i56
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !34
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i56
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !34
  %i.fz = and i32 %i.fy, %i.fw
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv.next.i56
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !34
  %i.gb = icmp samesign ugt i64 %indvars.iv.i55, 1
  br i1 %i.gb, label %select.unfold.i54, label %Kit_TruthAnd.exit.loopexit, !llvm.loop !60

Kit_TruthAnd.exit.loopexit:                       ; preds = %vector.body104, %select.unfold.i54
  %.pre = load i32, ptr %i.ey, align 8, !tbaa !27
  br label %Kit_TruthAnd.exit

Kit_TruthAnd.exit:                                ; preds = %Kit_TruthAnd.exit.loopexit, %bb.f
  %i.gc = phi i32 [ %.pre, %Kit_TruthAnd.exit.loopexit ], [ %i.ez, %bb.f ]
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !57
  tail call void @Kit_TruthExistSet(ptr noundef %i.et, ptr noundef %i.et, i32 noundef %i.gc, i32 noundef %i.ge) #7
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !26
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !26
  %i.gj = load i32, ptr %i.ey, align 8, !tbaa !27
  %i.gk = load i32, ptr %i.gd, align 4, !tbaa !57
  tail call void @Kit_TruthExistSet(ptr noundef %i.gg, ptr noundef %i.gi, i32 noundef %i.gj, i32 noundef %i.gk) #7
  %i.gl = load ptr, ptr %i.es, align 8, !tbaa !28
  %i.gm = load i32, ptr %i.ey, align 8, !tbaa !27 ; 2 uses
  %i.gn = icmp slt i32 %i.gm, 6
  %i.go = add nsw i32 %i.gm, -5
  %i.gp = shl nuw i32 1, %i.go
  %spec.select.i57 = select i1 %i.gn, i32 1, i32 %i.gp ; 2 uses
  %i.gq = icmp sgt i32 %spec.select.i57, 0
  br i1 %i.gq, label %.lr.ph, label %Kit_TruthIsConst0.exit

.lr.ph:                                           ; preds = %Kit_TruthAnd.exit
  %i.gr = zext nneg i32 %spec.select.i57 to i64
  br label %bb.g

select.unfold.i58:                                ; preds = %bb.g
  %i.gs = trunc nuw i64 %i.gu to i32
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %bb.g, label %Kit_TruthIsConst0.exit, !llvm.loop !58

bb.g:                                             ; preds = %.lr.ph, %select.unfold.i58
  %indvars.iv.i5976 = phi i64 [ %i.gr, %.lr.ph ], [ %i.gu, %select.unfold.i58 ]
  %i.gu = add nsw i64 %indvars.iv.i5976, -1       ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !34
  %.not.i61 = icmp eq i32 %i.gw, 0
  br i1 %.not.i61, label %select.unfold.i58, label %.Kit_TruthIsConst0.exit.loopexit73_crit_edge, !llvm.loop !58

.Kit_TruthIsConst0.exit.loopexit73_crit_edge:     ; preds = %bb.g, %bb.e
  br label %Kit_TruthIsConst0.exit, !llvm.loop !58

Kit_TruthIsConst0.exit:                           ; preds = %select.unfold.i58, %select.unfold.i50, %Kit_TruthAnd.exit, %.Kit_TruthIsConst0.exit.loopexit73_crit_edge, %Kit_TruthSharp.exit, %Kit_TruthNot.exit
  %.0 = phi i32 [ 0, %Kit_TruthNot.exit ], [ 1, %Kit_TruthAnd.exit ], [ 1, %select.unfold.i50 ], [ 1, %Kit_TruthSharp.exit ], [ 0, %.Kit_TruthIsConst0.exit.loopexit73_crit_edge ], [ 1, %select.unfold.i58 ]
  ret i32 %.0
}

declare void @Kit_TruthExistSet(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Bdc_DecomposeFindInitialVarSet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !27   ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !29     ; 3 uses
  %xtraiter = and i32 %i.c, 1
  %i.f = icmp eq i32 %i.c, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %i.c, 2147483646
  br label %bb.c

.preheader.unr-lcssa:                             ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph
  %.03140.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %.preheader.unr-lcssa ] ; 3 uses
  %.03239.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ag, %.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod75 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod75)
  %i.g = shl nuw i32 1, %.03239.epil.init
  %i.h = and i32 %i.e, %i.g
  %.not34.epil = icmp eq i32 %i.h, 0
  br i1 %.not34.epil, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  %i.i = trunc i32 %.03239.epil.init to i8
  %i.j = add nsw i32 %.03140.epil.init, 1
  %i.k = sext i32 %.03140.epil.init to i64
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  store i8 %i.i, ptr %i.l, align 1, !tbaa !61
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %bb.b, %.preheader.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.preheader.unr-lcssa ], [ %i.j, %bb.b ], [ %.03140.epil.init, %.epil.preheader ] ; 3 uses
  %i.m = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.m, label %.lr.ph45, label %.loopexit

.lr.ph45:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.041 = add nsw i32 %.1.lcssa, -1               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = zext nneg i32 %.041 to i64
  %i.s = zext nneg i32 %.041 to i64
  %wide.trip.count = zext nneg i32 %.1.lcssa to i64
  br label %bb.h

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %.03140 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.g ] ; 3 uses
  %.03239 = phi i32 [ 0, %.lr.ph.new ], [ %i.ag, %bb.g ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.t = shl nuw i32 1, %.03239
  %i.u = and i32 %i.e, %i.t
  %.not34 = icmp eq i32 %i.u, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i32 %.03239 to i8
  %i.w = add nsw i32 %.03140, 1
  %i.x = sext i32 %.03140 to i64
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x
  store i8 %i.v, ptr %i.y, align 1, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.w, %bb.d ], [ %.03140, %bb.c ] ; 3 uses
  %i.z = shl nuw i32 2, %.03239
  %i.aa = and i32 %i.e, %i.z
  %.not34.1 = icmp eq i32 %i.aa, 0
  br i1 %.not34.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = trunc i32 %.03239 to i8
  %i.ac = or disjoint i8 %i.ab, 1
  %i.ad = add nsw i32 %.1, 1
  %i.ae = sext i32 %.1 to i64
  %i.af = getelementptr inbounds i8, ptr %i.a, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ad, %bb.f ], [ %.1, %bb.e ] ; 3 uses
  %i.ag = add nuw nsw i32 %.03239, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.unr-lcssa, label %bb.c, !llvm.loop !62

bb.h:                                             ; preds = %.lr.ph45, %._crit_edge
  %indvars.iv50 = phi i64 [ 0, %.lr.ph45 ], [ %indvars.iv.next51, %._crit_edge ] ; 4 uses
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv50
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !61  ; 2 uses
  %i.am = sext i8 %i.al to i32
  tail call void @Kit_TruthExistNew(ptr noundef %i.ah, ptr noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.am) #7
  %i.an = icmp samesign ult i64 %indvars.iv50, %i.s
  br i1 %i.an, label %.lr.ph43.preheader, label %._crit_edge

.lr.ph43.preheader:                               ; preds = %bb.h
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !31
  %.pre54 = load i32, ptr %i.b, align 8, !tbaa !27
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %Kit_TruthIsDisjoint3.exit
  %i.ao = phi i32 [ %.pre54, %.lr.ph43.preheader ], [ %i.ax, %Kit_TruthIsDisjoint3.exit ]
  %i.ap = phi ptr [ %.pre, %.lr.ph43.preheader ], [ %i.aw, %Kit_TruthIsDisjoint3.exit ]
  %indvars.iv = phi i64 [ %i.r, %.lr.ph43.preheader ], [ %indvars.iv.next, %Kit_TruthIsDisjoint3.exit ] ; 2 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !61  ; 2 uses
  %i.at = sext i8 %i.as to i32
  tail call void @Kit_TruthExistNew(ptr noundef %i.ap, ptr noundef %i.aq, i32 noundef %i.ao, i32 noundef %i.at) #7
  %i.au = load ptr, ptr %i.q, align 8, !tbaa !26
  %i.av = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !31  ; 2 uses
  %i.ax = load i32, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 6
  %i.az = add nsw i32 %i.ax, -5
  %i.ba = shl nuw i32 1, %i.az
  %spec.select.i = select i1 %i.ay, i32 1, i32 %i.ba ; 2 uses
  %i.bb = icmp sgt i32 %spec.select.i, 0
  br i1 %i.bb, label %.lr.ph64, label %.lr.ph43._crit_edge

.lr.ph64:                                         ; preds = %.lr.ph43
  %i.bc = zext nneg i32 %spec.select.i to i64
  br label %bb.i

select.unfold.i:                                  ; preds = %bb.i
  %i.bd = trunc nuw i64 %i.bf to i32
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.i, label %.lr.ph43._crit_edge, !llvm.loop !63

bb.i:                                             ; preds = %.lr.ph64, %select.unfold.i
  %indvars.iv.i63 = phi i64 [ %i.bc, %.lr.ph64 ], [ %i.bf, %select.unfold.i ]
  %i.bf = add nsw i64 %indvars.iv.i63, -1         ; 5 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !34
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bf
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !34
  %i.bk = and i32 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !34
  %i.bn = and i32 %i.bk, %i.bm
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %select.unfold.i, label %Kit_TruthIsDisjoint3.exit, !llvm.loop !63

Kit_TruthIsDisjoint3.exit:                        ; preds = %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bo = icmp sgt i64 %indvars.iv.next, %indvars.iv50
  br i1 %i.bo, label %.lr.ph43, label %._crit_edge, !llvm.loop !64

.lr.ph43._crit_edge:                              ; preds = %.lr.ph43, %select.unfold.i
  %i.bp = zext nneg i8 %i.al to i32
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !57
  %i.bs = zext nneg i8 %i.as to i32
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !57
  br label %.loopexit

._crit_edge:                                      ; preds = %Kit_TruthIsDisjoint3.exit, %bb.h
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, %wide.trip.count
  br i1 %exitcond53.not, label %.loopexit, label %bb.h, !llvm.loop !65

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %.preheader, %.lr.ph43._crit_edge
  %.033 = phi i32 [ 1, %.lr.ph43._crit_edge ], [ 0, %.preheader ], [ 0, %bb.a ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.033
}

; Function Attrs: nounwind uwtable
define range(i32 0, -2147483648) i32 @Bdc_DecomposeWeakOr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Kit_TruthIsImply.exit
  %i.h = phi i32 [ %i.b, %.lr.ph ], [ %i.bf, %Kit_TruthIsImply.exit ] ; 2 uses
  %.070 = phi i32 [ 0, %.lr.ph ], [ %.1, %Kit_TruthIsImply.exit ] ; 5 uses
  %.04469 = phi i32 [ -1, %.lr.ph ], [ %.145, %Kit_TruthIsImply.exit ] ; 4 uses
  %.04668 = phi i32 [ 0, %.lr.ph ], [ %i.bg, %Kit_TruthIsImply.exit ] ; 5 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !29
  %i.j = shl nuw i32 1, %.04668
  %i.k = and i32 %i.i, %i.j
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %Kit_TruthIsImply.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !28
  tail call void @Kit_TruthExistNew(ptr noundef %i.m, ptr noundef %i.n, i32 noundef %i.h, i32 noundef %.04668) #7
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !26   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.q = load i32, ptr %i.a, align 8, !tbaa !27   ; 5 uses
  %i.r = icmp slt i32 %i.q, 6
  %i.s = add nsw i32 %i.q, -5
  %i.t = shl nuw i32 1, %i.s
  %spec.select.i = select i1 %i.r, i32 1, i32 %i.t ; 2 uses
  %i.u = icmp sgt i32 %spec.select.i, 0
  br i1 %i.u, label %.lr.ph91, label %Kit_TruthIsImply.exit

.lr.ph91:                                         ; preds = %bb.c
  %i.v = zext nneg i32 %spec.select.i to i64
  br label %bb.d

select.unfold.i:                                  ; preds = %bb.d
  %i.w = trunc nuw i64 %i.y to i32
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %Kit_TruthIsImply.exit, !llvm.loop !66

bb.d:                                             ; preds = %.lr.ph91, %select.unfold.i
  %indvars.iv.i89 = phi i64 [ %i.v, %.lr.ph91 ], [ %i.y, %select.unfold.i ]
  %i.y = add nsw i64 %indvars.iv.i89, -1          ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !34
  %i.ad = xor i32 %i.ac, -1
  %i.ae = and i32 %i.aa, %i.ad
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %select.unfold.i, label %bb.e, !llvm.loop !66

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !31
  tail call void @Kit_TruthForallNew(ptr noundef %i.af, ptr noundef nonnull %i.o, i32 noundef %i.q, i32 noundef %.04668) #7
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !27  ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 6
  %i.aj = add nsw i32 %i.ah, -5
  %i.ak = shl nuw i32 1, %i.aj
  %spec.select.i51 = select i1 %i.ai, i32 1, i32 %i.ak ; 3 uses
  %i.al = icmp sgt i32 %spec.select.i51, 0
  br i1 %i.al, label %select.unfold.preheader.i, label %Kit_TruthCountOnes.exit

select.unfold.preheader.i:                        ; preds = %bb.e
  %i.am = zext nneg i32 %spec.select.i51 to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %spec.select.i51, 8
  br i1 %min.iters.check, label %select.unfold.i52, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i
  %n.vec = and i64 %i.am, 2147483640
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi92 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %i.an = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.an ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.ap = getelementptr inbounds i8, ptr %gep, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !34
  %wide.load93 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !34
  %i.aq = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load)
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.as = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load93)
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.au = add <4 x i32> %i.ar, %vec.phi           ; 2 uses
  %i.av = add <4 x i32> %i.at, %vec.phi92         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %Kit_TruthCountOnes.exit.loopexit

select.unfold.i52:                                ; preds = %select.unfold.preheader.i, %select.unfold.i52
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i, %select.unfold.i52 ], [ %i.am, %select.unfold.preheader.i ] ; 2 uses
  %.08.i = phi i32 [ %i.bb, %select.unfold.i52 ], [ 0, %select.unfold.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i53, -1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.ba = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.az)
  %i.bb = add nuw nsw i32 %i.ba, %.08.i           ; 2 uses
  %i.bc = icmp samesign ugt i64 %indvars.iv.i53, 1
  br i1 %i.bc, label %select.unfold.i52, label %Kit_TruthCountOnes.exit.loopexit, !llvm.loop !68

Kit_TruthCountOnes.exit.loopexit:                 ; preds = %select.unfold.i52, %middle.block
  %.lcssa = phi i32 [ %i.ax, %middle.block ], [ %i.bb, %select.unfold.i52 ]
  %i.bd = tail call i32 @llvm.umax.i32(i32 %.lcssa, i32 1)
  br label %Kit_TruthCountOnes.exit

Kit_TruthCountOnes.exit:                          ; preds = %Kit_TruthCountOnes.exit.loopexit, %bb.e
  %.0.lcssa.i = phi i32 [ 1, %bb.e ], [ %i.bd, %Kit_TruthCountOnes.exit.loopexit ] ; 2 uses
  %i.be = icmp slt i32 %.070, %.0.lcssa.i
  %spec.select = select i1 %i.be, i32 %.04668, i32 %.04469
  %spec.select50 = tail call i32 @llvm.smax.i32(i32 %.070, i32 %.0.lcssa.i)
  br label %Kit_TruthIsImply.exit

Kit_TruthIsImply.exit:                            ; preds = %select.unfold.i, %bb.c, %Kit_TruthCountOnes.exit, %bb.b
  %i.bf = phi i32 [ %i.h, %bb.b ], [ %i.ah, %Kit_TruthCountOnes.exit ], [ %i.q, %bb.c ], [ %i.q, %select.unfold.i ] ; 3 uses
  %.145 = phi i32 [ %.04469, %bb.b ], [ %spec.select, %Kit_TruthCountOnes.exit ], [ %.04469, %bb.c ], [ %.04469, %select.unfold.i ] ; 3 uses
  %.1 = phi i32 [ %.070, %bb.b ], [ %spec.select50, %Kit_TruthCountOnes.exit ], [ %.070, %bb.c ], [ %.070, %select.unfold.i ] ; 3 uses
  %i.bg = add nuw nsw i32 %.04668, 1              ; 2 uses
end_hunk_0
