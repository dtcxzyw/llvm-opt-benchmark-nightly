Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcsample-8?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@fullsize_downsample:bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.w, i8 %i.y, i64 %i.s, i1 false), !tbaa !31
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.r ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ac, i8 %i.ae, i64 %i.s, i1 false), !tbaa !31
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.r ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ai, i8 %i.ak, i64 %i.s, i1 false), !tbaa !31
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.r ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 %i.aq, i64 %i.s, i1 false), !tbaa !31
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.r ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.at, i8 %i.av, i64 %i.s, i1 false), !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !70

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  ret void
}

declare i32 @jsimd_set_h2v1_downsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v1_downsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v1_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = shl i32 %i.h, 1
  %i.n = sub i32 %i.m, %i.l                       ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = icmp sgt i32 %i.j, 0
  %or.cond.i = and i1 %i.p, %i.o
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.q = zext i32 %i.l to i64                     ; 5 uses
  %i.r = zext nneg i32 %i.n to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.s = icmp ult i32 %i.j, 4
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 %i.x, i64 %i.r, i1 false), !tbaa !31
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 %i.ad, i64 %i.r, i1 false), !tbaa !31
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.q ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 %i.aj, i64 %i.r, i1 false), !tbaa !31
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.q ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 %i.ap, i64 %i.r, i1 false), !tbaa !31
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod36 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod36)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.q ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 %i.au, i64 %i.r, i1 false), !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !71

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !38
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = icmp ne i32 %i.h, 0
  %or.cond = and i1 %i.ax, %i.ay
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge32.split

.lr.ph.preheader:                                 ; preds = %expand_right_edge.exit
  %xtraiter37 = and i32 %i.h, 1
  %i.az = icmp eq i32 %i.h, 1
  %unroll_iter41 = and i32 %i.h, -2
  %lcmp.mod39.not = icmp eq i32 %xtraiter37, 0
  %lcmp.mod40 = trunc i32 %i.h to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 2 uses
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.02228 = phi ptr [ %i.bx, %.lr.ph.new ], [ %i.bb, %.lr.ph ] ; 3 uses
  %.02327 = phi ptr [ %i.by, %.lr.ph.new ], [ %i.bd, %.lr.ph ] ; 5 uses
  %niter42 = phi i32 [ %niter42.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.be = load i8, ptr %.02327, align 1, !tbaa !31
  %i.bf = zext i8 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %.02327, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bi = zext i8 %i.bh to i16
  %i.bj = add nuw nsw i16 %i.bf, %i.bi
  %i.bk = lshr i16 %i.bj, 1
  %i.bl = trunc nuw i16 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %.02228, i64 1
  store i8 %i.bl, ptr %.02228, align 1, !tbaa !31
  %i.bn = getelementptr inbounds nuw i8, ptr %.02327, i64 2
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !31
  %i.bp = zext i8 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %.02327, i64 3
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.bs = zext i8 %i.br to i16
  %i.bt = add nuw nsw i16 %i.bp, 1
  %i.bu = add nuw nsw i16 %i.bt, %i.bs
  %i.bv = lshr i16 %i.bu, 1
  %i.bw = trunc nuw i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.02228, i64 2 ; 2 uses
  store i8 %i.bw, ptr %i.bm, align 1, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %.02327, i64 4 ; 2 uses
  %niter42.next.1 = add nuw i32 %niter42, 2       ; 2 uses
  %niter42.ncmp.1 = icmp eq i32 %niter42.next.1, %unroll_iter41
  br i1 %niter42.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !72

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod39.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.02228.epil.init = phi ptr [ %i.bb, %.lr.ph ], [ %i.bx, %._crit_edge.unr-lcssa ]
  %.02327.epil.init = phi ptr [ %i.bd, %.lr.ph ], [ %i.by, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod40)
  %i.bz = load i8, ptr %.02327.epil.init, align 1, !tbaa !31
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %.02327.epil.init, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cd = zext i8 %i.cc to i16
  %i.ce = add nuw nsw i16 %i.ca, %i.cd
  %i.cf = lshr i16 %i.ce, 1
  %i.cg = trunc nuw i16 %i.cf to i8
  store i8 %i.cg, ptr %.02228.epil.init, align 1, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !38
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge32.split, !llvm.loop !73

._crit_edge32.split:                              ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_smooth_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %2, i64 -8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !44   ; 2 uses
  %i.n = shl i32 %i.h, 1
  %i.o = sub i32 %i.n, %i.m                       ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  %i.q = icmp sgt i32 %i.k, -2
  %or.cond.i = and i1 %i.q, %i.p
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.r = add nsw i32 %i.k, 2
  %i.s = zext i32 %i.m to i64                     ; 5 uses
  %i.t = zext nneg i32 %i.o to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.r to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.u = add i32 %i.k, 1
  %i.v = icmp ult i32 %i.u, 3
  br i1 %i.v, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 %i.aa, i64 %i.t, i1 false), !tbaa !31
  %i.ab = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.s ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ad, i8 %i.af, i64 %i.t, i1 false), !tbaa !31
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.s ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 %i.al, i64 %i.t, i1 false), !tbaa !31
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.s ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 %i.ar, i64 %i.t, i1 false), !tbaa !31
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i.epil
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.s ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.au, i8 %i.aw, i64 %i.t, i1 false), !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !74

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !40 ; 2 uses
  %.neg = mul i32 %i.ay, -80
  %i.az = add i32 %.neg, 16384
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = shl nsw i32 %i.ay, 4
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %expand_right_edge.exit
  %i.bg = add i32 %i.h, -2                        ; 2 uses
  %.not115117 = icmp eq i32 %i.bg, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph130, %._crit_edge
  %indvars.iv136 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next137, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !46 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv136 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !46 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bj, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46 ; 3 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next137
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 3 uses
  %i.br = load i8, ptr %i.bk, align 1, !tbaa !31
  %i.bs = zext i8 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !31
  %i.bv = zext i8 %i.bu to i32
  %i.bw = load i8, ptr %i.bm, align 1, !tbaa !31
  %i.bx = zext i8 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !31
  %i.ca = zext i8 %i.bz to i32
  %i.cb = add nuw nsw i32 %i.bx, %i.bs            ; 2 uses
  %i.cc = add nuw nsw i32 %i.cb, %i.bv
  %i.cd = add nuw nsw i32 %i.cc, %i.ca
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = load i8, ptr %i.bo, align 1, !tbaa !31
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !31
  %i.cj = zext i8 %i.ci to i32
  %i.ck = load i8, ptr %i.bq, align 1, !tbaa !31
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !31
  %i.co = zext i8 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2 ; 3 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !31
  %i.cr = zext i8 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 2 ; 3 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !31
  %i.cu = zext i8 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cb, %i.cg
  %i.cw = add nuw nsw i32 %i.cv, %i.cj
  %i.cx = add nuw nsw i32 %i.cw, %i.cl
  %i.cy = add nuw nsw i32 %i.cx, %i.co
  %i.cz = add nuw nsw i32 %i.cy, %i.cr
  %i.da = add nuw nsw i32 %i.cz, %i.cu
end_hunk_0
begin_hunk_1_@h2v2_smooth_downsample:bb.a
  %i.gu = add nuw nsw i32 %i.gt, %i.gk
  %i.gv = add nuw nsw i32 %i.gu, %i.gp
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = load i8, ptr %.0109.lcssa, align 1, !tbaa !31
  %i.gy = zext i8 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %.0109.lcssa, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !31
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = load i8, ptr %.0108.lcssa, align 1, !tbaa !31
  %i.hd = zext i8 %i.hc to i32
  %i.he = getelementptr inbounds nuw i8, ptr %.0108.lcssa, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !31
  %i.hg = zext i8 %i.hf to i32                    ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %.0111.lcssa, i64 -1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !31
  %i.hj = zext i8 %i.hi to i32
  %i.hk = getelementptr inbounds i8, ptr %.0110.lcssa, i64 -1
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !31
  %i.hm = zext i8 %i.hl to i32
  %i.hn = add nuw nsw i32 %i.gt, %i.gy
  %i.ho = add nuw nsw i32 %i.hn, %i.hb
  %i.hp = add nuw nsw i32 %i.ho, %i.hd
  %i.hq = add nuw nsw i32 %i.hp, %i.hg
  %i.hr = add nuw nsw i32 %i.hq, %i.hj
  %i.hs = add nuw nsw i32 %i.hr, %i.hm
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = shl nuw nsw i64 %i.ht, 1
  %i.hv = getelementptr inbounds i8, ptr %.0109.lcssa, i64 -1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !31
  %i.hx = zext i8 %i.hw to i32
  %i.hy = getelementptr inbounds i8, ptr %.0108.lcssa, i64 -1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !31
  %i.ia = zext i8 %i.hz to i32
  %i.ib = add nuw nsw i32 %i.hg, %i.hb
  %i.ic = add nuw nsw i32 %i.ib, %i.hx
  %i.id = add nuw nsw i32 %i.ic, %i.ia
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = add nuw nsw i64 %i.hu, %i.ie
  %i.ig = mul nuw nsw i64 %i.gw, %i.ba
  %i.ih = mul i64 %i.if, %i.bc
  %i.ii = add nuw nsw i64 %i.ig, 32768
  %i.ij = add i64 %i.ii, %i.ih
  %i.ik = lshr i64 %i.ij, 16
  %i.il = trunc i64 %i.ik to i8
  store i8 %i.il, ptr %.0.lcssa, align 1, !tbaa !31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.im = load i32, ptr %i.bd, align 4, !tbaa !38
  %i.in = sext i32 %i.im to i64
  %i.io = icmp slt i64 %indvars.iv.next, %i.in
  br i1 %i.io, label %bb.b, label %._crit_edge131, !llvm.loop !76

._crit_edge131:                                   ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

declare i32 @jsimd_set_h2v2_downsample(ptr noundef) local_unnamed_addr #3

declare void @jsimd_h2v2_downsample(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @h2v2_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = shl i32 %i.h, 1
  %i.n = sub i32 %i.m, %i.l                       ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = icmp sgt i32 %i.j, 0
  %or.cond.i = and i1 %i.p, %i.o
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.q = zext i32 %i.l to i64                     ; 5 uses
  %i.r = zext nneg i32 %i.n to i64                ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.s = icmp ult i32 %i.j, 4
  br i1 %i.s, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 %i.x, i64 %i.r, i1 false), !tbaa !31
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.q ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 %i.ad, i64 %i.r, i1 false), !tbaa !31
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.q ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 %i.aj, i64 %i.r, i1 false), !tbaa !31
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.q ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 %i.ap, i64 %i.r, i1 false), !tbaa !31
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !46
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.q ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.as, i8 %i.au, i64 %i.r, i1 false), !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit, label %.lr.ph.i.epil, !llvm.loop !77

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !38
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = icmp ne i32 %i.h, 0
  %or.cond = and i1 %i.ax, %i.ay
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge42.split

.lr.ph.preheader:                                 ; preds = %expand_right_edge.exit
  %xtraiter51 = and i32 %i.h, 1
  %i.az = icmp eq i32 %i.h, 1
  %unroll_iter55 = and i32 %i.h, -2
  %lcmp.mod53.not = icmp eq i32 %xtraiter51, 0
  %lcmp.mod54 = trunc i32 %i.h to i1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv43 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !46 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %.02837 = phi ptr [ %i.cp, %.lr.ph.new ], [ %i.bb, %.lr.ph ] ; 3 uses
  %.02936 = phi ptr [ %i.cr, %.lr.ph.new ], [ %i.bf, %.lr.ph ] ; 5 uses
  %.03035 = phi ptr [ %i.cq, %.lr.ph.new ], [ %i.bd, %.lr.ph ] ; 5 uses
  %niter56 = phi i32 [ %niter56.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.bg = load i8, ptr %.03035, align 1, !tbaa !31
  %i.bh = zext i8 %i.bg to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %.03035, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !31
  %i.bk = zext i8 %i.bj to i16
  %i.bl = load i8, ptr %.02936, align 1, !tbaa !31
  %i.bm = zext i8 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.02936, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !31
  %i.bp = zext i8 %i.bo to i16
  %i.bq = add nuw nsw i16 %i.bh, 1
  %i.br = add nuw nsw i16 %i.bq, %i.bk
  %i.bs = add nuw nsw i16 %i.br, %i.bm
  %i.bt = add nuw nsw i16 %i.bs, %i.bp
  %i.bu = lshr i16 %i.bt, 2
  %i.bv = trunc nuw i16 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.02837, i64 1
  store i8 %i.bv, ptr %.02837, align 1, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %.03035, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.02936, i64 2
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !31
  %i.ca = zext i8 %i.bz to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %.03035, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !31
  %i.cd = zext i8 %i.cc to i16
  %i.ce = load i8, ptr %i.by, align 1, !tbaa !31
  %i.cf = zext i8 %i.ce to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %.02936, i64 3
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !31
  %i.ci = zext i8 %i.ch to i16
  %i.cj = add nuw nsw i16 %i.ca, 2
  %i.ck = add nuw nsw i16 %i.cj, %i.cd
  %i.cl = add nuw nsw i16 %i.ck, %i.cf
  %i.cm = add nuw nsw i16 %i.cl, %i.ci
  %i.cn = lshr i16 %i.cm, 2
  %i.co = trunc nuw i16 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.02837, i64 2 ; 2 uses
  store i8 %i.co, ptr %i.bw, align 1, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %.03035, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.02936, i64 4 ; 2 uses
  %niter56.next.1 = add nuw i32 %niter56, 2       ; 2 uses
  %niter56.ncmp.1 = icmp eq i32 %niter56.next.1, %unroll_iter55
  br i1 %niter56.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !78

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod53.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.02837.epil.init = phi ptr [ %i.bb, %.lr.ph ], [ %i.cp, %._crit_edge.unr-lcssa ]
  %.02936.epil.init = phi ptr [ %i.bf, %.lr.ph ], [ %i.cr, %._crit_edge.unr-lcssa ] ; 2 uses
  %.03035.epil.init = phi ptr [ %i.bd, %.lr.ph ], [ %i.cq, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.cs = load i8, ptr %.03035.epil.init, align 1, !tbaa !31
  %i.ct = zext i8 %i.cs to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %.03035.epil.init, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !31
  %i.cw = zext i8 %i.cv to i16
  %i.cx = load i8, ptr %.02936.epil.init, align 1, !tbaa !31
  %i.cy = zext i8 %i.cx to i16
  %i.cz = getelementptr inbounds nuw i8, ptr %.02936.epil.init, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !31
  %i.db = zext i8 %i.da to i16
  %i.dc = add nuw nsw i16 %i.ct, 1
  %i.dd = add nuw nsw i16 %i.dc, %i.cw
  %i.de = add nuw nsw i16 %i.dd, %i.cy
  %i.df = add nuw nsw i16 %i.de, %i.db
  %i.dg = lshr i16 %i.df, 2
  %i.dh = trunc nuw i16 %i.dg to i8
  store i8 %i.dh, ptr %.02837.epil.init, align 1, !tbaa !31
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = load i32, ptr %i.av, align 4, !tbaa !38
  %i.dj = sext i32 %i.di to i64
  %i.dk = icmp slt i64 %indvars.iv.next, %i.dj
  br i1 %i.dk, label %.lr.ph, label %._crit_edge42.split, !llvm.loop !79

._crit_edge42.split:                              ; preds = %._crit_edge, %expand_right_edge.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @int_downsample(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = select i1 %.not, i32 3, i32 0
  %i.h = shl i32 %i.f, %i.g                       ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  %i.m = sdiv i32 %i.j, %i.l                      ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !38   ; 2 uses
  %i.r = sdiv i32 %i.o, %i.q                      ; 3 uses
  %i.s = mul nsw i32 %i.r, %i.m                   ; 4 uses
  %i.t = sdiv i32 %i.s, 2                         ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = mul i32 %i.m, %i.h
  %i.x = sub i32 %i.w, %i.v                       ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = icmp sgt i32 %i.o, 0
  %or.cond.i = and i1 %i.z, %i.y
  br i1 %or.cond.i, label %.lr.ph20.i, label %expand_right_edge.exit

.lr.ph20.i:                                       ; preds = %bb.a
  %i.aa = zext i32 %i.v to i64                    ; 5 uses
  %i.ab = zext nneg i32 %i.x to i64               ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.o to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.ac = icmp ult i32 %i.o, 4
  br i1 %i.ac, label %.lr.ph.i.epil.preheader, label %.lr.ph20.i.new

.lr.ph20.i.new:                                   ; preds = %.lr.ph20.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph20.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph20.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph20.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aa ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.af, i8 %i.ah, i64 %i.ab, i1 false), !tbaa !31
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aa ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 %i.an, i64 %i.ab, i1 false), !tbaa !31
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aa ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 %i.at, i64 %i.ab, i1 false), !tbaa !31
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aa ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 %i.az, i64 %i.ab, i1 false), !tbaa !31
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %expand_right_edge.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !0

expand_right_edge.exit.loopexit.unr-lcssa:        ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %expand_right_edge.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %expand_right_edge.exit.loopexit.unr-lcssa, %.lr.ph20.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph20.i ], [ %indvars.iv.next.i.3, %expand_right_edge.exit.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.aa ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 %i.be, i64 %i.ab, i1 false), !tbaa !31
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %expand_right_edge.exit.loopexit, label %.lr.ph.i.epil, !llvm.loop !80

expand_right_edge.exit.loopexit:                  ; preds = %.lr.ph.i.epil, %expand_right_edge.exit.loopexit.unr-lcssa
  %.pre = load i32, ptr %i.p, align 4, !tbaa !38
  br label %expand_right_edge.exit

expand_right_edge.exit:                           ; preds = %expand_right_edge.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %expand_right_edge.exit.loopexit ], [ %i.q, %bb.a ]
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge68.split

.lr.ph:                                           ; preds = %expand_right_edge.exit
  %.not77 = icmp eq i32 %i.h, 0
  %i.bh = icmp sgt i32 %i.m, 0
  %i.bi = sext i32 %i.t to i64
  %i.bj = sext i32 %i.s to i64
  br i1 %.not77, label %._crit_edge68.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bk = icmp sgt i32 %i.r, 0
  br i1 %i.bk, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.bh, label %.preheader.lr.ph.us.us.preheader, label %.lr.ph.split.split.us.split

.preheader.lr.ph.us.us.preheader:                 ; preds = %.lr.ph.split.split.us
  %i.bl = zext nneg i32 %i.r to i64               ; 2 uses
  %xtraiter112 = and i32 %i.m, 7                  ; 3 uses
  %i.bm = icmp ult i32 %i.m, 8
  %unroll_iter117 = and i32 %i.m, 2147483640
  %lcmp.mod114.not = icmp eq i32 %xtraiter112, 0
  %lcmp.mod116 = icmp ne i32 %xtraiter112, 0
  br label %.preheader.lr.ph.us.us

.preheader.lr.ph.us.us:                           ; preds = %.preheader.lr.ph.us.us.preheader, %._crit_edge.split.us.split.us.us.us
  %indvars.iv91 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next92, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %indvars.iv89 = phi i64 [ 0, %.preheader.lr.ph.us.us.preheader ], [ %indvars.iv.next90, %._crit_edge.split.us.split.us.us.us ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv89
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !46
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv91
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge56.split.us.us.us.us.us, %.preheader.lr.ph.us.us
  %.04260.us.us.us.us = phi ptr [ %i.bo, %.preheader.lr.ph.us.us ], [ %i.df, %._crit_edge56.split.us.us.us.us.us ] ; 2 uses
  %.04459.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.dh, %._crit_edge56.split.us.us.us.us.us ] ; 2 uses
  %.04558.us.us.us.us = phi i32 [ 0, %.preheader.lr.ph.us.us ], [ %i.dg, %._crit_edge56.split.us.us.us.us.us ]
  %i.bp = zext i32 %.04459.us.us.us.us to i64
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader.us.us.us.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %.054.us.us.us.us.us = phi i64 [ %.lcssa, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv84
  %i.bq = load ptr, ptr %gep, align 8, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp ; 2 uses
  br i1 %i.bm, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.new:                        ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.us.us.us.us.us.new
  %.152.us.us.us.us.us = phi i64 [ %i.cx, %.lr.ph.us.us.us.us.us.new ], [ %.054.us.us.us.us.us, %.lr.ph.us.us.us.us.us ]
  %.04351.us.us.us.us.us = phi ptr [ %i.cu, %.lr.ph.us.us.us.us.us.new ], [ %i.br, %.lr.ph.us.us.us.us.us ] ; 9 uses
  %niter118 = phi i32 [ %niter118.next.7, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us, i64 1
  %i.bt = load i8, ptr %.04351.us.us.us.us.us, align 1, !tbaa !31
  %i.bu = zext i8 %i.bt to i64
  %i.bv = add nsw i64 %.152.us.us.us.us.us, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us, i64 2
  %i.bx = load i8, ptr %i.bs, align 1, !tbaa !31
  %i.by = zext i8 %i.bx to i64
  %i.bz = add nsw i64 %i.bv, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us, i64 3
  %i.cb = load i8, ptr %i.bw, align 1, !tbaa !31
  %i.cc = zext i8 %i.cb to i64
  %i.cd = add nsw i64 %i.bz, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us, i64 4
  %i.cf = load i8, ptr %i.ca, align 1, !tbaa !31
  %i.cg = zext i8 %i.cf to i64
  %i.ch = add nsw i64 %i.cd, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us, i64 5
  %i.cj = load i8, ptr %i.ce, align 1, !tbaa !31
  %i.ck = zext i8 %i.cj to i64
  %i.cl = add nsw i64 %i.ch, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %.04351.us.us.us.us.us, i64 6
  %i.cn = load i8, ptr %i.ci, align 1, !tbaa !31
end_hunk_1
