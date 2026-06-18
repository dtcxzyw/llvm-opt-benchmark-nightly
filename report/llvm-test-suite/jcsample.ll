inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@fullsize_smooth_downsample:bb.a
  %i.du = mul i64 %i.ds, %i.ax
  %i.dv = add nsw i64 %i.dt, 32768
  %i.dw = add i64 %i.dv, %i.du
  %i.dx = lshr i64 %i.dw, 16
  %i.dy = trunc i64 %i.dx to i8
  store i8 %i.dy, ptr %.071, align 1, !tbaa !60
  %i.dz = load i32, ptr %i.ay, align 4, !tbaa !47
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next, %i.ea
  br i1 %i.eb, label %bb.b, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %bb.d, %expand_right_edge.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fullsize_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !57
  tail call void @jcopy_sample_rows(ptr noundef %2, i32 noundef 0, ptr noundef %3, i32 noundef 0, i32 noundef %i.b, i32 noundef %i.d) #6
  %i.e = load i32, ptr %i.a, align 4, !tbaa !48   ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56
  %i.i = shl i32 %i.h, 3
  %i.j = sub i32 %i.i, %i.f                       ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = icmp sgt i32 %i.e, 0
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.m = zext i32 %i.f to i64                     ; 5 uses
  %i.n = zext nneg i32 %i.j to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.o = icmp ult i32 %i.e, 4
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.t, i64 %i.n, i1 false), !tbaa !60
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 %i.z, i64 %i.n, i1 false), !tbaa !60
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.m ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 %i.af, i64 %i.n, i1 false), !tbaa !60
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.m ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 %i.al, i64 %i.n, i1 false), !tbaa !60
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !61

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.m ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 %i.aq, i64 %i.n, i1 false), !tbaa !60
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !66

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56   ; 2 uses
  %i.c = shl i32 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = shl i32 %i.b, 4
  %i.i = sub i32 %i.h, %i.g                       ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = icmp sgt i32 %i.e, 0
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.l = zext i32 %i.g to i64                     ; 5 uses
  %i.m = zext nneg i32 %i.i to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.n = icmp ult i32 %i.e, 4
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 %i.s, i64 %i.m, i1 false), !tbaa !60
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.l ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %i.y, i64 %i.m, i1 false), !tbaa !60
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.l ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 %i.ae, i64 %i.m, i1 false), !tbaa !60
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.l ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.ak, i64 %i.m, i1 false), !tbaa !60
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !61

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.l ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 %i.ap, i64 %i.m, i1 false), !tbaa !60
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !67

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !47
  %4 = icmp slt i32 %i.ar, 1
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %4, %.not
  br i1 %or.cond, label %._crit_edge30.split, label %.lr.ph

.lr.ph:                                           ; preds = %expand_right_edge.exit, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %expand_right_edge.exit ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.02026 = phi ptr [ %i.at, %.lr.ph ], [ %i.bp, %bb.b ] ; 3 uses
  %.02125 = phi ptr [ %i.av, %.lr.ph ], [ %i.bq, %bb.b ] ; 5 uses
  %.02324 = phi i32 [ 0, %.lr.ph ], [ %i.br, %bb.b ]
  %i.aw = load i8, ptr %.02125, align 1, !tbaa !60
  %i.ax = zext i8 %i.aw to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %.02125, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !60
  %i.ba = zext i8 %i.az to i16
  %i.bb = add nuw nsw i16 %i.ax, %i.ba
  %i.bc = lshr i16 %i.bb, 1
  %i.bd = trunc nuw i16 %i.bc to i8
  %i.be = getelementptr inbounds nuw i8, ptr %.02026, i64 1
  store i8 %i.bd, ptr %.02026, align 1, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %.02125, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !60
  %i.bh = zext i8 %i.bg to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %.02125, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !60
  %i.bk = zext i8 %i.bj to i16
  %i.bl = add nuw nsw i16 %i.bh, 1
  %i.bm = add nuw nsw i16 %i.bl, %i.bk
  %i.bn = lshr i16 %i.bm, 1
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.02026, i64 2
  store i8 %i.bo, ptr %i.be, align 1, !tbaa !60
  %i.bq = getelementptr inbounds nuw i8, ptr %.02125, i64 4
  %i.br = add nuw i32 %.02324, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.br, %i.c
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.b, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = load i32, ptr %i.aq, align 4, !tbaa !47
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %i.bu, label %.lr.ph, label %._crit_edge30.split, !llvm.loop !69

._crit_edge30.split:                              ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_smooth_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56   ; 2 uses
  %i.c = shl i32 %i.b, 3
  %i.d = getelementptr inbounds i8, ptr %2, i64 -8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = shl i32 %i.b, 4
  %i.j = sub i32 %i.i, %i.h                       ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %i.l = icmp sgt i32 %i.f, -2
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.m = add nsw i32 %i.f, 2
  %i.n = zext i32 %i.h to i64                     ; 5 uses
  %i.o = zext nneg i32 %i.j to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.m to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.p = add i32 %i.f, 1
  %i.q = icmp ult i32 %i.p, 3
  br i1 %i.q, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 %i.v, i64 %i.o, i1 false), !tbaa !60
  %i.w = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 %i.aa, i64 %i.o, i1 false), !tbaa !60
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.n ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 %i.ag, i64 %i.o, i1 false), !tbaa !60
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.n ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 %i.am, i64 %i.o, i1 false), !tbaa !60
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !61

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod148 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.epil
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.n ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 %i.ar, i64 %i.o, i1 false), !tbaa !60
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !70

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load i32, ptr %i.as, align 8, !tbaa !49 ; 2 uses
  %.neg = mul i32 %i.at, -80
  %i.au = add i32 %.neg, 16384
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = shl nsw i32 %i.at, 4
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !47
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %expand_right_edge.exit
  %i.bb = add i32 %i.c, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv125 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv125
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !58 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !58 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58 ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !58 ; 3 uses
  %i.bm = load i8, ptr %i.bf, align 1, !tbaa !60
  %i.bn = zext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !60
  %i.bq = zext i8 %i.bp to i32
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !60
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !60
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bs, %i.bn            ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, %i.bq
  %i.by = add nuw nsw i32 %i.bx, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = load i8, ptr %i.bj, align 1, !tbaa !60
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !60
  %i.ce = zext i8 %i.cd to i32
  %i.cf = load i8, ptr %i.bl, align 1, !tbaa !60
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !60
  %i.cj = zext i8 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !60
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
end_hunk_0
begin_hunk_1_@h2v2_smooth_downsample:bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %.0111115, i64 2 ; 3 uses
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !60
  %i.ev = zext i8 %i.eu to i64
  %i.ew = add nuw nsw i64 %i.es, %i.ev
  %i.ex = getelementptr inbounds i8, ptr %.0110116, i64 -1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !60
  %i.ez = zext i8 %i.ey to i64
  %i.fa = add nuw nsw i64 %i.ew, %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %.0110116, i64 2 ; 3 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !60
  %i.fd = zext i8 %i.fc to i64
  %i.fe = add nuw nsw i64 %i.fa, %i.fd
  %i.ff = shl nuw nsw i64 %i.fe, 1
  %i.fg = and i64 %i.ff, 8589934590
  %i.fh = getelementptr inbounds i8, ptr %.0109117, i64 -1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !60
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.0109117, i64 2 ; 3 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !60
  %i.fm = zext i8 %i.fl to i64
  %i.fn = add nuw nsw i64 %i.fm, %i.fj
  %i.fo = getelementptr inbounds i8, ptr %.0108118, i64 -1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !60
  %i.fq = zext i8 %i.fp to i64
  %i.fr = add nuw nsw i64 %i.fn, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.0108118, i64 2 ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !60
  %i.fu = zext i8 %i.ft to i64
  %i.fv = add nuw nsw i64 %i.fr, %i.fg
  %i.fw = add nuw nsw i64 %i.fv, %i.fu
  %i.fx = mul nuw nsw i64 %i.eb, %i.av
  %i.fy = mul i64 %i.fw, %i.ax
  %i.fz = add nuw nsw i64 %i.fx, 32768
  %i.ga = add i64 %i.fz, %i.fy
  %i.gb = lshr i64 %i.ga, 16
  %i.gc = trunc i64 %i.gb to i8
  store i8 %i.gc, ptr %.0107119, align 1, !tbaa !60
  %i.gd = add i32 %.0112114, -1                   ; 2 uses
  %.0107 = getelementptr inbounds nuw i8, ptr %.0107119, i64 1 ; 2 uses
  %.not = icmp eq i32 %i.gd, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !71

bb.d:                                             ; preds = %bb.c
  %i.ge = getelementptr inbounds nuw i8, ptr %.0111115, i64 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.0110116, i64 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.0109117, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.0108118, i64 1
  %i.gi = load i8, ptr %i.et, align 1, !tbaa !60
  %i.gj = zext i8 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %.0111115, i64 3
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !60
  %i.gm = zext i8 %i.gl to i32
  %i.gn = load i8, ptr %i.fb, align 1, !tbaa !60
  %i.go = zext i8 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %.0110116, i64 3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !60
  %i.gr = zext i8 %i.gq to i32
  %i.gs = add nuw nsw i32 %i.gr, %i.gm            ; 2 uses
  %i.gt = add nuw nsw i32 %i.gs, %i.gj
  %i.gu = add nuw nsw i32 %i.gt, %i.go
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = load i8, ptr %i.fk, align 1, !tbaa !60
  %i.gx = zext i8 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %.0109117, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !60
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = load i8, ptr %i.fs, align 1, !tbaa !60
  %i.hc = zext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %.0108118, i64 3
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !60
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %i.hg = load i8, ptr %i.ge, align 1, !tbaa !60
  %i.hh = zext i8 %i.hg to i32
  %i.hi = load i8, ptr %i.gf, align 1, !tbaa !60
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.gs, %i.gx
  %i.hl = add nuw nsw i32 %i.hk, %i.ha
  %i.hm = add nuw nsw i32 %i.hl, %i.hc
  %i.hn = add nuw nsw i32 %i.hm, %i.hf
  %i.ho = add nuw nsw i32 %i.hn, %i.hh
  %i.hp = add nuw nsw i32 %i.ho, %i.hj
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = shl nuw nsw i64 %i.hq, 1
  %i.hs = load i8, ptr %i.gg, align 1, !tbaa !60
  %i.ht = zext i8 %i.hs to i32
  %i.hu = load i8, ptr %i.gh, align 1, !tbaa !60
  %i.hv = zext i8 %i.hu to i32
  %i.hw = add nuw nsw i32 %i.hf, %i.ha
  %i.hx = add nuw nsw i32 %i.hw, %i.ht
  %i.hy = add nuw nsw i32 %i.hx, %i.hv
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = add nuw nsw i64 %i.hr, %i.hz
  %i.ib = mul nuw nsw i64 %i.gv, %i.av
  %i.ic = mul i64 %i.ia, %i.ax
  %i.id = add nuw nsw i64 %i.ib, 32768
  %i.ie = add i64 %i.id, %i.ic
  %i.if = lshr i64 %i.ie, 16
  %i.ig = trunc i64 %i.if to i8
  store i8 %i.ig, ptr %.0107, align 1, !tbaa !60
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %i.ih = load i32, ptr %i.ay, align 4, !tbaa !47
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next126, %i.ii
  br i1 %i.ij, label %bb.b, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.d, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56   ; 2 uses
  %i.c = shl i32 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = shl i32 %i.b, 4
  %i.i = sub i32 %i.h, %i.g                       ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = icmp sgt i32 %i.e, 0
  %or.cond.i = and i1 %i.k, %i.j
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.l = zext i32 %i.g to i64                     ; 5 uses
  %i.m = zext nneg i32 %i.i to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.n = icmp ult i32 %i.e, 4
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 %i.s, i64 %i.m, i1 false), !tbaa !60
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.l ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %i.y, i64 %i.m, i1 false), !tbaa !60
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.l ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 %i.ae, i64 %i.m, i1 false), !tbaa !60
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.l ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.ak, i64 %i.m, i1 false), !tbaa !60
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !61

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod48 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.l ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 %i.ap, i64 %i.m, i1 false), !tbaa !60
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !47
  %4 = icmp slt i32 %i.ar, 1
  %.not = icmp eq i32 %i.c, 0
  %or.cond = or i1 %4, %.not
  br i1 %or.cond, label %._crit_edge40.split, label %.lr.ph

.lr.ph:                                           ; preds = %expand_right_edge.exit, %._crit_edge
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %._crit_edge ], [ 0, %expand_right_edge.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %expand_right_edge.exit ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv41
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.02635 = phi ptr [ %i.at, %.lr.ph ], [ %i.ch, %bb.b ] ; 3 uses
  %.02734 = phi ptr [ %i.ax, %.lr.ph ], [ %i.cj, %bb.b ] ; 5 uses
  %.02833 = phi ptr [ %i.av, %.lr.ph ], [ %i.ci, %bb.b ] ; 5 uses
  %.03032 = phi i32 [ 0, %.lr.ph ], [ %i.ck, %bb.b ]
  %i.ay = load i8, ptr %.02833, align 1, !tbaa !60
  %i.az = zext i8 %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %.02833, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !60
  %i.bc = zext i8 %i.bb to i16
  %i.bd = load i8, ptr %.02734, align 1, !tbaa !60
  %i.be = zext i8 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %.02734, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !60
  %i.bh = zext i8 %i.bg to i16
  %i.bi = add nuw nsw i16 %i.az, 1
  %i.bj = add nuw nsw i16 %i.bi, %i.bc
  %i.bk = add nuw nsw i16 %i.bj, %i.be
  %i.bl = add nuw nsw i16 %i.bk, %i.bh
  %i.bm = lshr i16 %i.bl, 2
  %i.bn = trunc i16 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.02635, i64 1
  store i8 %i.bn, ptr %.02635, align 1, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %.02833, i64 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.02734, i64 2
  %i.br = load i8, ptr %i.bp, align 1, !tbaa !60
  %i.bs = zext i8 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %.02833, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !60
  %i.bv = zext i8 %i.bu to i16
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !60
  %i.bx = zext i8 %i.bw to i16
  %i.by = getelementptr inbounds nuw i8, ptr %.02734, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !60
  %i.ca = zext i8 %i.bz to i16
  %i.cb = add nuw nsw i16 %i.bs, 2
  %i.cc = add nuw nsw i16 %i.cb, %i.bv
  %i.cd = add nuw nsw i16 %i.cc, %i.bx
  %i.ce = add nuw nsw i16 %i.cd, %i.ca
  %i.cf = lshr i16 %i.ce, 2
  %i.cg = trunc i16 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.02635, i64 2
  store i8 %i.cg, ptr %i.bo, align 1, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %.02833, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.02734, i64 4
  %i.ck = add nuw i32 %.03032, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ck, %i.c
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.b, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.cl = load i32, ptr %i.aq, align 4, !tbaa !47
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next42, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge40.split, !llvm.loop !75

._crit_edge40.split:                              ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @int_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56
  %i.c = shl i32 %i.b, 3                          ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !44
  %i.h = sdiv i32 %i.e, %i.g                      ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47   ; 2 uses
  %i.m = sdiv i32 %i.j, %i.l                      ; 3 uses
  %i.n = mul nsw i32 %i.m, %i.h                   ; 4 uses
  %i.o = sdiv i32 %i.n, 2                         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !57   ; 2 uses
  %i.r = mul i32 %i.h, %i.c
  %i.s = sub i32 %i.r, %i.q                       ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = icmp sgt i32 %i.j, 0
  %or.cond.i = and i1 %i.u, %i.t
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.v = zext i32 %i.q to i64                     ; 5 uses
  %i.w = zext nneg i32 %i.s to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.x = icmp ult i32 %i.j, 4
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 %i.ac, i64 %i.w, i1 false), !tbaa !60
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 %i.ai, i64 %i.w, i1 false), !tbaa !60
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.v ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 %i.ao, i64 %i.w, i1 false), !tbaa !60
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.v ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 %i.au, i64 %i.w, i1 false), !tbaa !60
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !61

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod108 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.v ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !60
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 %i.az, i64 %i.w, i1 false), !tbaa !60
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !76

expand_right_edge.exit.loopexit:                  ; preds = %.lr.ph.i.epil, %expand_right_edge.exit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.k, align 4, !tbaa !47
  br label %expand_right_edge.exit

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %expand_right_edge.exit.loopexit ], [ %i.l, %bb.a ]
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge66.split

.lr.ph:                                           ; preds = %expand_right_edge.exit
  %.not = icmp eq i32 %i.c, 0
  %i.bc = icmp sgt i32 %i.h, 0
  %i.bd = sext i32 %i.o to i64
  %i.be = sext i32 %i.n to i64
  br i1 %.not, label %._crit_edge66.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bf = icmp sgt i32 %i.m, 0
  br i1 %i.bf, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bc, label %.preheader.lr.ph.us.us.preheader, label %.lr.ph.split.split.us.split

.preheader.lr.ph.us.us.preheader:                 ; preds = %.lr.ph.split.split.us
  %i.bg = zext nneg i32 %i.m to i64               ; 2 uses
  %xtraiter109 = and i32 %i.h, 7                  ; 3 uses
  %i.bh = icmp ult i32 %i.h, 8
  %unroll_iter114 = and i32 %i.h, 2147483640
  %lcmp.mod111.not = icmp eq i32 %xtraiter109, 0
  %lcmp.mod113 = icmp ne i32 %xtraiter109, 0
  br label %.preheader.lr.ph.us.us.a

.preheader.lr.ph.us.us.a:                         ; preds = %.preheader.lr.ph.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %indvars.iv88 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next89, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %indvars.iv86.a = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next87, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv88
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !58
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv86.a
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge54.split.us.us.us.us.us, %.preheader.lr.ph.us.us.a
  %.04058.us.us.us.us = phi ptr [ %i.bj, %.preheader.lr.ph.us.us.a ], [ %i.da, %._crit_edge54.split.us.us.us.us.us ] ; 2 uses
  %.04357.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.a ], [ %i.dc, %._crit_edge54.split.us.us.us.us.us ] ; 2 uses
  %.04456.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us.a ], [ %i.db, %._crit_edge54.split.us.us.us.us.us ]
  %i.bk = zext i32 %.04357.us.us.us.us to i64
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %.052.us.us.us.us.us = phi i64 [ %.lcssa, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv81
  %i.bl = load ptr, ptr %gep, align 8, !tbaa !58
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk ; 2 uses
  br i1 %i.bh, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.new:                        ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.us.us.us.us.us.new
  %.150.us.us.us.us.us = phi i64 [ %i.cs, %.lr.ph.us.us.us.us.us.new ], [ %.052.us.us.us.us.us, %.lr.ph.us.us.us.us.us ]
  %.04149.us.us.us.us.us = phi ptr [ %i.cp, %.lr.ph.us.us.us.us.us.new ], [ %i.bm, %.lr.ph.us.us.us.us.us ] ; 9 uses
  %niter115 = phi i32 [ %niter115.next.7, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 1
  %i.bo = load i8, ptr %.04149.us.us.us.us.us, align 1, !tbaa !60
  %i.bp = zext i8 %i.bo to i64
  %i.bq = add nsw i64 %.150.us.us.us.us.us, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 2
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !60
  %i.bt = zext i8 %i.bs to i64
  %i.bu = add nsw i64 %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 3
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !60
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nsw i64 %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 4
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !60
  %i.cb = zext i8 %i.ca to i64
  %i.cc = add nsw i64 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 5
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !60
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add nsw i64 %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 6
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !60
  %i.cj = zext i8 %i.ci to i64
  %i.ck = add nsw i64 %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 7
  %i.cm = load i8, ptr %i.ch, align 1, !tbaa !60
  %i.cn = zext i8 %i.cm to i64
  %i.co = add nsw i64 %i.ck, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 8 ; 2 uses
  %i.cq = load i8, ptr %i.cl, align 1, !tbaa !60
  %i.cr = zext i8 %i.cq to i64
  %i.cs = add nsw i64 %i.co, %i.cr                ; 3 uses
  %niter115.next.7 = add i32 %niter115, 8         ; 2 uses
  %niter115.ncmp.7 = icmp eq i32 %niter115.next.7, %unroll_iter114
  br i1 %niter115.ncmp.7, label %._crit_edge.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.new, !llvm.loop !77

._crit_edge.us.us.us.us.us.unr-lcssa:             ; preds = %.lr.ph.us.us.us.us.us.new
  br i1 %lcmp.mod111.not, label %._crit_edge.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us
  %.150.us.us.us.us.us.epil.init = phi i64 [ %.052.us.us.us.us.us, %.lr.ph.us.us.us.us.us ], [ %i.cs, %._crit_edge.us.us.us.us.us.unr-lcssa ]
  %.04149.us.us.us.us.us.epil.init = phi ptr [ %i.bm, %.lr.ph.us.us.us.us.us ], [ %i.cp, %._crit_edge.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod113)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.150.us.us.us.us.us.epil = phi i64 [ %.150.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.cw, %bb.b ]
  %.04149.us.us.us.us.us.epil = phi ptr [ %.04149.us.us.us.us.us.epil.init, %.epil.preheader ], [ %i.ct, %bb.b ] ; 2 uses
  %epil.iter110 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter110.next, %bb.b ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us.epil, i64 1
  %i.cu = load i8, ptr %.04149.us.us.us.us.us.epil, align 1, !tbaa !60
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add nsw i64 %.150.us.us.us.us.us.epil, %i.cv ; 2 uses
  %epil.iter110.next = add i32 %epil.iter110, 1   ; 2 uses
  %epil.iter110.cmp.not = icmp eq i32 %epil.iter110.next, %xtraiter109
  br i1 %epil.iter110.cmp.not, label %._crit_edge.us.us.us.us.us, label %bb.b, !llvm.loop !78

._crit_edge.us.us.us.us.us:                       ; preds = %bb.b, %._crit_edge.us.us.us.us.us.unr-lcssa
  %.lcssa = phi i64 [ %i.cs, %._crit_edge.us.us.us.us.us.unr-lcssa ], [ %i.cw, %bb.b ] ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next82, %i.bg
  br i1 %exitcond84.not, label %._crit_edge54.split.us.us.us.us.us, label %.lr.ph.us.us.us.us.us, !llvm.loop !79

._crit_edge54.split.us.us.us.us.us:               ; preds = %._crit_edge.us.us.us.us.us
  %i.cx = add nsw i64 %.lcssa, %i.bd
  %i.cy = sdiv i64 %i.cx, %i.be
  %i.cz = trunc i64 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.04058.us.us.us.us, i64 1
  store i8 %i.cz, ptr %.04058.us.us.us.us, align 1, !tbaa !60
  %i.db = add nuw i32 %.04456.us.us.us.us, 1      ; 2 uses
  %i.dc = add i32 %.04357.us.us.us.us, %i.h
  %exitcond85.not = icmp eq i32 %i.db, %i.c
  br i1 %exitcond85.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !80

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge54.split.us.us.us.us.us
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86.a, %i.bg
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.dd = load i32, ptr %i.k, align 4, !tbaa !47
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next89, %i.de
  br i1 %i.df, label %.preheader.lr.ph.us.us.a, label %._crit_edge66.split, !llvm.loop !81

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.dg = sdiv i32 %i.o, %i.n
  %i.dh = trunc i32 %i.dg to i8
  %i.di = zext i32 %i.c to i64
  br label %.preheader.lr.ph.us.a

.preheader.lr.ph.us.a:                            ; preds = %.preheader.lr.ph.us.a, %.lr.ph.split.split.us.split
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.preheader.lr.ph.us.a ], [ 0, %.lr.ph.split.split.us.split ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv78
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dk, i8 %i.dh, i64 %i.di, i1 false), !tbaa !60
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.dl = load i32, ptr %i.k, align 4, !tbaa !47
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next79, %i.dm
  br i1 %i.dn, label %.preheader.lr.ph.us.a, label %._crit_edge66.split, !llvm.loop !81

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.do = sdiv i32 %i.o, %i.n
  %i.dp = trunc i32 %i.do to i8
  %i.dq = zext i32 %i.c to i64
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader.lr.ph, %.lr.ph.split.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader.lr.ph ], [ 0, %.lr.ph.split.split ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !58
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ds, i8 %i.dp, i64 %i.dq, i1 false), !tbaa !60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dt = load i32, ptr %i.k, align 4, !tbaa !47
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv.next, %i.du
  br i1 %i.dv, label %.preheader.lr.ph, label %._crit_edge66.split, !llvm.loop !81

._crit_edge66.split:                              ; preds = %.preheader.lr.ph, %.preheader.lr.ph.us.a, %._crit_edge.split.us.split.us.us.us, %.lr.ph, %expand_right_edge.exit
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"jpeg_compress_struct", !10, i64 0, !12, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !14, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !15, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !11, i64 80, !6, i64 88, !6, i64 120, !6, i64 152, !6, i64 184, !6, i64 200, !6, i64 216, !5, i64 232, !11, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !6, i64 284, !16, i64 286, !16, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !6, i64 320, !5, i64 352, !5, i64 356, !5, i64 360, !6, i64 364, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !17, i64 424, !18, i64 432, !19, i64 440, !20, i64 448, !21, i64 456, !22, i64 464, !23, i64 472, !24, i64 480, !25, i64 488}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !11, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !11, i64 0}
!14 = !{!"p1 _ZTS20jpeg_destination_mgr", !11, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !11, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !11, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !11, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !11, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !11, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !11, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !11, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !11, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !11, i64 0}
!26 = !{!27, !11, i64 0}
!27 = !{!"jpeg_memory_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !28, i64 88}
!28 = !{!"long", !6, i64 0}
!29 = !{!9, !23, i64 472}
!30 = !{!31, !11, i64 0}
!31 = !{!"", !32, i64 0, !6, i64 24}
!32 = !{!"jpeg_downsampler", !11, i64 0, !11, i64 8, !5, i64 16}
!33 = !{!31, !11, i64 8}
!34 = !{!31, !5, i64 16}
!35 = !{!9, !5, i64 260}
!36 = !{!9, !10, i64 0}
!37 = !{!38, !5, i64 40}
!38 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !28, i64 128, !39, i64 136, !5, i64 144, !39, i64 152, !5, i64 160, !5, i64 164}
!39 = !{!"p2 omnipotent char", !40, i64 0}
!40 = !{!"any p2 pointer", !11, i64 0}
!41 = !{!38, !11, i64 0}
!42 = !{!9, !5, i64 68}
!43 = !{!9, !11, i64 80}
!44 = !{!45, !5, i64 8}
!45 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !11, i64 80, !11, i64 88}
!46 = !{!9, !5, i64 304}
!47 = !{!45, !5, i64 12}
!48 = !{!9, !5, i64 308}
!49 = !{!9, !5, i64 264}
!50 = !{!11, !11, i64 0}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!38, !11, i64 8}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !52}
!56 = !{!45, !5, i64 28}
!57 = !{!9, !5, i64 40}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 omnipotent char", !11, i64 0}
!60 = !{!6, !6, i64 0}
!61 = distinct !{!61, !52}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !52}
!65 = distinct !{!65, !52}
!66 = distinct !{!66, !63}
!67 = distinct !{!67, !63}
!68 = distinct !{!68, !52}
!69 = distinct !{!69, !52}
!70 = distinct !{!70, !63}
!71 = distinct !{!71, !52}
!72 = distinct !{!72, !52}
!73 = distinct !{!73, !63}
!74 = distinct !{!74, !52}
!75 = distinct !{!75, !52}
!76 = distinct !{!76, !63}
!77 = distinct !{!77, !52}
!78 = distinct !{!78, !63}
!79 = distinct !{!79, !52}
!80 = distinct !{!80, !52}
!81 = distinct !{!81, !52}
end_hunk_1
