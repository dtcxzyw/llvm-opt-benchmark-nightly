inline.NumInlined: 175
inline.NumDeleted: 38
begin_hunk_0_@pack_single:bb.a
  br i1 %min.iters.check211, label %.lr.ph.split.us.preheader223, label %vector.memcheck208

vector.memcheck208:                               ; preds = %.lr.ph.split.us.preheader
  %4 = add i64 %i.q, 16
  %5 = sub i64 %4, %i.a
  %diff.check209 = icmp ult i64 %5, 32
  br i1 %diff.check209, label %.lr.ph.split.us.preheader223, label %vector.ph212

end_hunk_0
begin_hunk_1_@pack_single:bb.a

vector.memcheck:                                  ; preds = %.lr.ph.split
  %i.ce = ptrtoaddr ptr %i.cd to i64
  %6 = add i64 %i.q, 48
  %7 = sub i64 %6, %i.ce
  %diff.check = icmp ult i64 %7, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

end_hunk_1
begin_hunk_2_@ndarray_push_base:bb.a
  %i.cs = icmp sgt i64 %.val124.i.i.i, 0
  %i.ct = getelementptr i8, ptr %i.cj, i64 48
  %i.cu = shl i64 %.val124.i.i.i, 3
  %7 = add i64 %i.cu, 8
  %8 = add i64 %i.ck, 16
  %i.cv = add i64 %i.ck, 48
  %min.iters.check80 = icmp ult i64 %.val124.i.i.i, 4
  %n.vec83 = and i64 %.val124.i.i.i, 9223372036854775804 ; 3 uses
  %cmp.n90 = icmp eq i64 %.val124.i.i.i, %n.vec83
end_hunk_2
begin_hunk_3_@ndarray_push_base:bb.a
  br i1 %i.co, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.aw
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cp, i8 0, i64 %7, i1 false), !tbaa !14
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %bb.aw
end_hunk_3
begin_hunk_4_@ndarray_push_base:bb.a
  %i.dx = and i64 %.val115.i.i.i, 33554432
  %.not88.i.i.i = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr i8, ptr %i.dl, i64 32     ; 10 uses
  br i1 %.not88.i.i.i, label %.lr.ph136.split.us.i.i.i.preheader.a, label %.lr.ph136.split.i.i.i.a

.lr.ph136.split.us.i.i.i.preheader.a:             ; preds = %.lr.ph136.i.i.i
  %i.dz = sub i64 %8, %i.dm
  %diff.check = icmp ult i64 %i.dz, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph136.split.us.i.i.i.preheader144, label %vector.body

vector.body:                                      ; preds = %.lr.ph136.split.us.i.i.i.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph136.split.us.i.i.i.preheader.a ] ; 3 uses
end_hunk_4
begin_hunk_5_@ndarray_push_base:bb.a
middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i.i.i, label %.lr.ph136.split.us.i.i.i.preheader144

.lr.ph136.split.us.i.i.i.preheader144:            ; preds = %.lr.ph136.split.us.i.i.i.preheader.a, %middle.block
  %.1135.us.i.i.i.ph = phi i64 [ 0, %.lr.ph136.split.us.i.i.i.preheader.a ], [ %n.vec, %middle.block ] ; 4 uses
  %i.eg = sub nsw i64 %.val124.i.i.i, %.1135.us.i.i.i.ph
  %xtraiter146 = and i64 %i.eg, 7                 ; 2 uses
  %lcmp.mod147.not = icmp eq i64 %xtraiter146, 0
end_hunk_5
begin_hunk_6_@ndarray_push_base:bb.a
  %exitcond147.not.i.i.i.7 = icmp eq i64 %i.fs, %.val124.i.i.i
  br i1 %exitcond147.not.i.i.i.7, label %.loopexit.i.i.i, label %.lr.ph136.split.us.i.i.i, !llvm.loop !104

.lr.ph136.split.i.i.i.a:                          ; preds = %.lr.ph136.i.i.i
  %9 = getelementptr i8, ptr %i.dl, i64 24
  %10 = load ptr, ptr %9, align 8, !tbaa !31      ; 11 uses
  %i.ft = ptrtoaddr ptr %10 to i64
  %i.fu = sub i64 %i.cv, %i.ft
  %diff.check78 = icmp ult i64 %i.fu, 32
  %or.cond133 = select i1 %min.iters.check80, i1 true, i1 %diff.check78
  br i1 %or.cond133, label %scalar.ph79.preheader, label %vector.body84

vector.body84:                                    ; preds = %.lr.ph136.split.i.i.i.a, %vector.body84
  %index85 = phi i64 [ %index.next88, %vector.body84 ], [ 0, %.lr.ph136.split.i.i.i.a ] ; 3 uses
  %i.fv = getelementptr [8 x i8], ptr %10, i64 %index85 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  %wide.load86 = load <2 x ptr>, ptr %i.fv, align 8, !tbaa !14
  %wide.load87 = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !14
end_hunk_6
begin_hunk_7_@ndarray_push_base:bb.a
middle.block89:                                   ; preds = %vector.body84
  br i1 %cmp.n90, label %.loopexit.i.i.i, label %scalar.ph79.preheader

scalar.ph79.preheader:                            ; preds = %.lr.ph136.split.i.i.i.a, %middle.block89
  %.1135.i.i.i.ph = phi i64 [ 0, %.lr.ph136.split.i.i.i.a ], [ %n.vec83, %middle.block89 ] ; 4 uses
  %i.gb = sub nsw i64 %.val124.i.i.i, %.1135.i.i.i.ph
  %xtraiter = and i64 %i.gb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_7
begin_hunk_8_@ndarray_push_base:bb.a
scalar.ph79.prol:                                 ; preds = %scalar.ph79.preheader, %scalar.ph79.prol
  %.1135.i.i.i.prol = phi i64 [ %i.gf, %scalar.ph79.prol ], [ %.1135.i.i.i.ph, %scalar.ph79.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph79.prol ], [ 0, %scalar.ph79.preheader ]
  %.in89.i.i.i.prol = getelementptr [8 x i8], ptr %10, i64 %.1135.i.i.i.prol
  %i.gc = load ptr, ptr %.in89.i.i.i.prol, align 8, !tbaa !14
  %i.gd = getelementptr [8 x i8], ptr %i.cn, i64 %.1135.i.i.i.prol
  %i.ge = getelementptr i8, ptr %i.gd, i64 16
end_hunk_8
begin_hunk_9_@ndarray_push_base:bb.a

scalar.ph79:                                      ; preds = %scalar.ph79.prol.loopexit, %scalar.ph79
  %.1135.i.i.i = phi i64 [ %i.hn, %scalar.ph79 ], [ %.1135.i.i.i.unr, %scalar.ph79.prol.loopexit ] ; 10 uses
  %.in89.i.i.i = getelementptr [8 x i8], ptr %10, i64 %.1135.i.i.i
  %i.gi = load ptr, ptr %.in89.i.i.i, align 8, !tbaa !14
  %i.gj = getelementptr [8 x i8], ptr %i.cn, i64 %.1135.i.i.i
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !14
  %i.gl = add nuw nsw i64 %.1135.i.i.i, 1         ; 2 uses
  %.in89.i.i.i.1 = getelementptr [8 x i8], ptr %10, i64 %i.gl
  %i.gm = load ptr, ptr %.in89.i.i.i.1, align 8, !tbaa !14
  %i.gn = getelementptr [8 x i8], ptr %i.cn, i64 %i.gl
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  store ptr %i.gm, ptr %i.go, align 8, !tbaa !14
  %i.gp = add nuw nsw i64 %.1135.i.i.i, 2         ; 2 uses
  %.in89.i.i.i.2 = getelementptr [8 x i8], ptr %10, i64 %i.gp
  %i.gq = load ptr, ptr %.in89.i.i.i.2, align 8, !tbaa !14
  %i.gr = getelementptr [8 x i8], ptr %i.cn, i64 %i.gp
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store ptr %i.gq, ptr %i.gs, align 8, !tbaa !14
  %i.gt = add nuw nsw i64 %.1135.i.i.i, 3         ; 2 uses
  %.in89.i.i.i.3 = getelementptr [8 x i8], ptr %10, i64 %i.gt
  %i.gu = load ptr, ptr %.in89.i.i.i.3, align 8, !tbaa !14
  %i.gv = getelementptr [8 x i8], ptr %i.cn, i64 %i.gt
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  store ptr %i.gu, ptr %i.gw, align 8, !tbaa !14
  %i.gx = add nuw nsw i64 %.1135.i.i.i, 4         ; 2 uses
  %.in89.i.i.i.4 = getelementptr [8 x i8], ptr %10, i64 %i.gx
  %i.gy = load ptr, ptr %.in89.i.i.i.4, align 8, !tbaa !14
  %i.gz = getelementptr [8 x i8], ptr %i.cn, i64 %i.gx
  %i.ha = getelementptr i8, ptr %i.gz, i64 16
  store ptr %i.gy, ptr %i.ha, align 8, !tbaa !14
  %i.hb = add nuw nsw i64 %.1135.i.i.i, 5         ; 2 uses
  %.in89.i.i.i.5 = getelementptr [8 x i8], ptr %10, i64 %i.hb
  %i.hc = load ptr, ptr %.in89.i.i.i.5, align 8, !tbaa !14
  %i.hd = getelementptr [8 x i8], ptr %i.cn, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.hd, i64 16
  store ptr %i.hc, ptr %i.he, align 8, !tbaa !14
  %i.hf = add nuw nsw i64 %.1135.i.i.i, 6         ; 2 uses
  %.in89.i.i.i.6 = getelementptr [8 x i8], ptr %10, i64 %i.hf
  %i.hg = load ptr, ptr %.in89.i.i.i.6, align 8, !tbaa !14
  %i.hh = getelementptr [8 x i8], ptr %i.cn, i64 %i.hf
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  store ptr %i.hg, ptr %i.hi, align 8, !tbaa !14
  %i.hj = add nuw nsw i64 %.1135.i.i.i, 7         ; 2 uses
  %.in89.i.i.i.7 = getelementptr [8 x i8], ptr %10, i64 %i.hj
  %i.hk = load ptr, ptr %.in89.i.i.i.7, align 8, !tbaa !14
  %i.hl = getelementptr [8 x i8], ptr %i.cn, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
end_hunk_9
