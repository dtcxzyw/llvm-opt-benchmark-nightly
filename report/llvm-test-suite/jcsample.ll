Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jcsample?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@fullsize_downsample:bb.a
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 %i.t, i64 %i.n, i1 false), !tbaa !43
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.m ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.x, i8 %i.z, i64 %i.n, i1 false), !tbaa !43
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.m ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 %i.af, i64 %i.n, i1 false), !tbaa !43
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.m ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 %i.al, i64 %i.n, i1 false), !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

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
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.m ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 %i.aq, i64 %i.n, i1 false), !tbaa !43
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.c = shl i32 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40   ; 2 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 %i.s, i64 %i.m, i1 false), !tbaa !43
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.l ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %i.y, i64 %i.m, i1 false), !tbaa !43
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.l ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 %i.ae, i64 %i.m, i1 false), !tbaa !43
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.l ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.ak, i64 %i.m, i1 false), !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.l ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 %i.ap, i64 %i.m, i1 false), !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !67

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %.lr.ph, label %._crit_edge30.split

.lr.ph:                                           ; preds = %expand_right_edge.exit, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %expand_right_edge.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.02026 = phi ptr [ %i.av, %.lr.ph ], [ %i.br, %bb.b ] ; 3 uses
  %.02125 = phi ptr [ %i.ax, %.lr.ph ], [ %i.bs, %bb.b ] ; 5 uses
  %.02224 = phi i32 [ 0, %.lr.ph ], [ %i.bt, %bb.b ]
  %i.ay = load i8, ptr %.02125, align 1, !tbaa !43
  %i.az = zext i8 %i.ay to i16
  %i.ba = getelementptr inbounds nuw i8, ptr %.02125, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !43
  %i.bc = zext i8 %i.bb to i16
  %i.bd = add nuw nsw i16 %i.az, %i.bc
  %i.be = lshr i16 %i.bd, 1
  %i.bf = trunc nuw i16 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %.02026, i64 1
  store i8 %i.bf, ptr %.02026, align 1, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %.02125, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43
  %i.bj = zext i8 %i.bi to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %.02125, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !43
  %i.bm = zext i8 %i.bl to i16
  %i.bn = add nuw nsw i16 %i.bj, 1
  %i.bo = add nuw nsw i16 %i.bn, %i.bm
  %i.bp = lshr i16 %i.bo, 1
  %i.bq = trunc nuw i16 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.02026, i64 2
  store i8 %i.bq, ptr %i.bg, align 1, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %.02125, i64 4
  %i.bt = add nuw i32 %.02224, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bt, %i.c
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.b, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp slt i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %.lr.ph, label %._crit_edge30.split, !llvm.loop !69

._crit_edge30.split:                              ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_smooth_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.c = shl i32 %i.b, 3
  %i.d = getelementptr inbounds i8, ptr %2, i64 -8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 8, !tbaa !40   ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.t, i8 %i.v, i64 %i.o, i1 false), !tbaa !43
  %i.w = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 %i.aa, i64 %i.o, i1 false), !tbaa !43
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.n ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ae, i8 %i.ag, i64 %i.o, i1 false), !tbaa !43
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.n ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 %i.am, i64 %i.o, i1 false), !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod149 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod149)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.epil
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.n ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 %i.ar, i64 %i.o, i1 false), !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !70

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load i32, ptr %i.as, align 8, !tbaa !36 ; 2 uses
  %.neg = mul i32 %i.at, -80
  %i.au = add i32 %.neg, 16384
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = shl nsw i32 %i.at, 4
  %i.ax = zext i32 %i.aw to i64                   ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %expand_right_edge.exit
  %i.bb = add i32 %i.c, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv125 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !42 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv125 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.be, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42 ; 3 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next126
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 3 uses
  %i.bm = load i8, ptr %i.bf, align 1, !tbaa !43
  %i.bn = zext i8 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !43
  %i.bq = zext i8 %i.bp to i32
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !43
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !43
  %i.bv = zext i8 %i.bu to i32
  %i.bw = add nuw nsw i32 %i.bs, %i.bn            ; 2 uses
  %i.bx = add nuw nsw i32 %i.bw, %i.bq
  %i.by = add nuw nsw i32 %i.bx, %i.bv
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = load i8, ptr %i.bj, align 1, !tbaa !43
  %i.cb = zext i8 %i.ca to i32                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !43
  %i.ce = zext i8 %i.cd to i32
  %i.cf = load i8, ptr %i.bl, align 1, !tbaa !43
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !43
  %i.cj = zext i8 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !43
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !43
  %i.cp = zext i8 %i.co to i32
  %i.cq = add nuw nsw i32 %i.bw, %i.cb
  %i.cr = add nuw nsw i32 %i.cq, %i.ce
  %i.cs = add nuw nsw i32 %i.cr, %i.cg
  %i.ct = add nuw nsw i32 %i.cs, %i.cj
  %i.cu = add nuw nsw i32 %i.ct, %i.cm
  %i.cv = add nuw nsw i32 %i.cu, %i.cp
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !43
  %i.da = zext i8 %i.cz to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 2 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !43
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nuw nsw i32 %i.cg, %i.cb
  %i.df = add nuw nsw i32 %i.de, %i.da
  %i.dg = add nuw nsw i32 %i.df, %i.dd
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = add nuw nsw i64 %i.cx, %i.dh
  %i.dj = mul nuw nsw i64 %i.bz, %i.av
  %i.dk = mul i64 %i.di, %i.ax
  %i.dl = add nuw nsw i64 %i.dj, 32768
  %i.dm = add i64 %i.dl, %i.dk
  %i.dn = lshr i64 %i.dm, 16
  %i.do = trunc i64 %i.dn to i8
  store i8 %i.do, ptr %i.bd, align 1, !tbaa !43
  %.0113 = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.0119 = phi ptr [ %.0113, %bb.b ], [ %.0, %bb.c ] ; 2 uses
end_hunk_0
begin_hunk_1_@h2v2_smooth_downsample:bb.a
  store i8 %i.gc, ptr %.0119, align 1, !tbaa !43
  %i.gd = add i32 %.0110114, -1                   ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.0119, i64 1 ; 2 uses
  %.not = icmp eq i32 %i.gd, 0
  br i1 %.not, label %bb.d, label %bb.c, !llvm.loop !71

bb.d:                                             ; preds = %bb.c
  %i.ge = getelementptr inbounds nuw i8, ptr %.0109115, i64 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.0108116, i64 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.0107117, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.0106118, i64 1
  %i.gi = load i8, ptr %i.et, align 1, !tbaa !43
  %i.gj = zext i8 %i.gi to i32
  %i.gk = getelementptr inbounds nuw i8, ptr %.0109115, i64 3
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !43
  %i.gm = zext i8 %i.gl to i32
  %i.gn = load i8, ptr %i.fb, align 1, !tbaa !43
  %i.go = zext i8 %i.gn to i32
  %i.gp = getelementptr inbounds nuw i8, ptr %.0108116, i64 3
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !43
  %i.gr = zext i8 %i.gq to i32
  %i.gs = add nuw nsw i32 %i.gr, %i.gm            ; 2 uses
  %i.gt = add nuw nsw i32 %i.gs, %i.gj
  %i.gu = add nuw nsw i32 %i.gt, %i.go
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = load i8, ptr %i.fk, align 1, !tbaa !43
  %i.gx = zext i8 %i.gw to i32
  %i.gy = getelementptr inbounds nuw i8, ptr %.0107117, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !43
  %i.ha = zext i8 %i.gz to i32                    ; 2 uses
  %i.hb = load i8, ptr %i.fs, align 1, !tbaa !43
  %i.hc = zext i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %.0106118, i64 3
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !43
  %i.hf = zext i8 %i.he to i32                    ; 2 uses
  %i.hg = load i8, ptr %i.ge, align 1, !tbaa !43
  %i.hh = zext i8 %i.hg to i32
  %i.hi = load i8, ptr %i.gf, align 1, !tbaa !43
  %i.hj = zext i8 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.gs, %i.gx
  %i.hl = add nuw nsw i32 %i.hk, %i.ha
  %i.hm = add nuw nsw i32 %i.hl, %i.hc
  %i.hn = add nuw nsw i32 %i.hm, %i.hf
  %i.ho = add nuw nsw i32 %i.hn, %i.hh
  %i.hp = add nuw nsw i32 %i.ho, %i.hj
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = shl nuw nsw i64 %i.hq, 1
  %i.hs = load i8, ptr %i.gg, align 1, !tbaa !43
  %i.ht = zext i8 %i.hs to i32
  %i.hu = load i8, ptr %i.gh, align 1, !tbaa !43
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
  store i8 %i.ig, ptr %.0, align 1, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ih = load i32, ptr %i.ay, align 4, !tbaa !34
  %i.ii = sext i32 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next, %i.ii
  br i1 %i.ij, label %bb.b, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.d, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39   ; 2 uses
  %i.c = shl i32 %i.b, 3                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40   ; 2 uses
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
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 %i.s, i64 %i.m, i1 false), !tbaa !43
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.l ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %i.y, i64 %i.m, i1 false), !tbaa !43
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.l ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 %i.ae, i64 %i.m, i1 false), !tbaa !43
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.l ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.ak, i64 %i.m, i1 false), !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

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
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.l ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 %i.ap, i64 %i.m, i1 false), !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !73

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.as = icmp sgt i32 %i.ar, 0
  %i.at = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.as, %i.at
  br i1 %or.cond, label %.lr.ph, label %._crit_edge40.split

.lr.ph:                                           ; preds = %expand_right_edge.exit, %._crit_edge
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %._crit_edge ], [ 0, %expand_right_edge.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %expand_right_edge.exit ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !42
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv41 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !42
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %.02635 = phi ptr [ %i.av, %.lr.ph ], [ %i.cj, %bb.b ] ; 3 uses
  %.02734 = phi ptr [ %i.az, %.lr.ph ], [ %i.cl, %bb.b ] ; 5 uses
  %.02833 = phi ptr [ %i.ax, %.lr.ph ], [ %i.ck, %bb.b ] ; 5 uses
  %.02932 = phi i32 [ 0, %.lr.ph ], [ %i.cm, %bb.b ]
  %i.ba = load i8, ptr %.02833, align 1, !tbaa !43
  %i.bb = zext i8 %i.ba to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %.02833, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !43
  %i.be = zext i8 %i.bd to i16
  %i.bf = load i8, ptr %.02734, align 1, !tbaa !43
  %i.bg = zext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %.02734, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !43
  %i.bj = zext i8 %i.bi to i16
  %i.bk = add nuw nsw i16 %i.bb, 1
  %i.bl = add nuw nsw i16 %i.bk, %i.be
  %i.bm = add nuw nsw i16 %i.bl, %i.bg
  %i.bn = add nuw nsw i16 %i.bm, %i.bj
  %i.bo = lshr i16 %i.bn, 2
  %i.bp = trunc nuw i16 %i.bo to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.02635, i64 1
  store i8 %i.bp, ptr %.02635, align 1, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %.02833, i64 2
  %i.bs = getelementptr inbounds nuw i8, ptr %.02734, i64 2
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !43
  %i.bu = zext i8 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %.02833, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.bx = zext i8 %i.bw to i16
  %i.by = load i8, ptr %i.bs, align 1, !tbaa !43
  %i.bz = zext i8 %i.by to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %.02734, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !43
  %i.cc = zext i8 %i.cb to i16
  %i.cd = add nuw nsw i16 %i.bu, 2
  %i.ce = add nuw nsw i16 %i.cd, %i.bx
  %i.cf = add nuw nsw i16 %i.ce, %i.bz
  %i.cg = add nuw nsw i16 %i.cf, %i.cc
  %i.ch = lshr i16 %i.cg, 2
  %i.ci = trunc nuw i16 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.02635, i64 2
  store i8 %i.ci, ptr %i.bq, align 1, !tbaa !43
  %i.ck = getelementptr inbounds nuw i8, ptr %.02833, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %.02734, i64 4
  %i.cm = add nuw i32 %.02932, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cm, %i.c
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.b, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = load i32, ptr %i.aq, align 4, !tbaa !34
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp slt i64 %indvars.iv.next, %i.co
  br i1 %i.cp, label %.lr.ph, label %._crit_edge40.split, !llvm.loop !75

._crit_edge40.split:                              ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @int_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = shl i32 %i.b, 3                          ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = load i32, ptr %i.d, align 8, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32
  %i.h = sdiv i32 %i.e, %i.g                      ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !34   ; 2 uses
  %i.m = sdiv i32 %i.j, %i.l                      ; 3 uses
  %i.n = mul nsw i32 %i.m, %i.h                   ; 4 uses
  %i.o = sdiv i32 %i.n, 2                         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !40   ; 2 uses
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 %i.ac, i64 %i.w, i1 false), !tbaa !43
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ag, i8 %i.ai, i64 %i.w, i1 false), !tbaa !43
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.v ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 %i.ao, i64 %i.w, i1 false), !tbaa !43
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.v ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 %i.au, i64 %i.w, i1 false), !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

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
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.v ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !43
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 %i.az, i64 %i.w, i1 false), !tbaa !43
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !76

expand_right_edge.exit.loopexit:                  ; preds = %.lr.ph.i.epil, %expand_right_edge.exit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.k, align 4, !tbaa !34
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
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %indvars.iv88 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next89, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %indvars.iv86 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next87, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv86
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !42
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv88
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge54.split.us.us.us.us.us, %.preheader.lr.ph.us.us
  %.04058.us.us.us.us = phi ptr [ %i.bj, %.preheader.lr.ph.us.us ], [ %i.da, %._crit_edge54.split.us.us.us.us.us ] ; 2 uses
  %.04257.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.dc, %._crit_edge54.split.us.us.us.us.us ] ; 2 uses
  %.04356.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.db, %._crit_edge54.split.us.us.us.us.us ]
  %i.bk = zext i32 %.04257.us.us.us.us to i64
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %.052.us.us.us.us.us = phi i64 [ %.lcssa, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv81
  %i.bl = load ptr, ptr %gep, align 8, !tbaa !42
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk ; 2 uses
  br i1 %i.bh, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.new:                        ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.us.us.us.us.us.new
  %.150.us.us.us.us.us = phi i64 [ %i.cs, %.lr.ph.us.us.us.us.us.new ], [ %.052.us.us.us.us.us, %.lr.ph.us.us.us.us.us ]
  %.04149.us.us.us.us.us = phi ptr [ %i.cp, %.lr.ph.us.us.us.us.us.new ], [ %i.bm, %.lr.ph.us.us.us.us.us ] ; 9 uses
  %niter115 = phi i32 [ %niter115.next.7, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 1
  %i.bo = load i8, ptr %.04149.us.us.us.us.us, align 1, !tbaa !43
  %i.bp = zext i8 %i.bo to i64
  %i.bq = add nsw i64 %.150.us.us.us.us.us, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 2
  %i.bs = load i8, ptr %i.bn, align 1, !tbaa !43
  %i.bt = zext i8 %i.bs to i64
  %i.bu = add nsw i64 %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 3
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !43
  %i.bx = zext i8 %i.bw to i64
  %i.by = add nsw i64 %i.bu, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 4
  %i.ca = load i8, ptr %i.bv, align 1, !tbaa !43
  %i.cb = zext i8 %i.ca to i64
  %i.cc = add nsw i64 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 5
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !43
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add nsw i64 %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %.04149.us.us.us.us.us, i64 6
  %i.ci = load i8, ptr %i.cd, align 1, !tbaa !43
  %i.cj = zext i8 %i.ci to i64
end_hunk_1
