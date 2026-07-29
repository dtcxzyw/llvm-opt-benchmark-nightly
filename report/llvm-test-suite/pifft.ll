inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@mp_round:bb.a
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %2, 2                        ; 2 uses
  %.not45 = icmp slt i32 %0, %i.b
  br i1 %.not45, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.c = add i32 %0, 1
  %i.d = sext i32 %i.c to i64
  %i.e = add nsw i32 %0, -2
  %i.f = sub i32 %i.e, %2
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = sub nsw i64 %i.d, %i.g
  %i.j = shl nsw i64 %i.i, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.j
  %i.k = add nuw nsw i64 %i.h, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.b
  %i.l = sext i32 %i.b to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = shl nsw i32 %i.n, 1
  store i32 0, ptr %i.m, align 4, !tbaa !4
  %.not = icmp slt i32 %i.o, %1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.p = icmp sgt i32 %2, 0
  br i1 %i.p, label %.lr.ph44.preheader, label %.critedge

.lr.ph44.preheader:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %2, 1
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %bb.e
  %.13042 = phi i32 [ %i.w, %bb.e ], [ %i.q, %.lr.ph44.preheader ] ; 3 uses
  %i.r = zext nneg i32 %.13042 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.r ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  %i.v = icmp slt i32 %i.u, %1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph44
  store i32 %i.u, ptr %i.s, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph44
  store i32 0, ptr %i.s, align 4, !tbaa !4
  %i.w = add nsw i32 %.13042, -1
  %i.x = icmp sgt i32 %.13042, 2
  br i1 %i.x, label %.lr.ph44, label %.critedge, !llvm.loop !114

.critedge:                                        ; preds = %bb.e, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.y, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %._crit_edge, %.critedge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @mp_cmp(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4      ; 3 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !4      ; 2 uses
  %i.c = icmp sgt i32 %i.a, %i.b
  br i1 %i.c, label %mp_unsgn_cmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.a, %i.b
  br i1 %i.d, label %mp_unsgn_cmp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = icmp sgt i32 %0, -1
  br i1 %i.g, label %.lr.ph.preheader.i, label %mp_unsgn_cmp.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.h = zext nneg i32 %0 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 4 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4    ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.m = icmp samesign ult i64 %indvars.iv.i, %i.h
  %i.n = icmp eq i32 %i.j, %i.l
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !49

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.p = tail call i32 @llvm.scmp.i32.i32(i32 %i.j, i32 %i.l)
  %i.q = mul nsw i32 %i.p, %i.a
  br label %mp_unsgn_cmp.exit

mp_unsgn_cmp.exit:                                ; preds = %._crit_edge.loopexit.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ 1, %bb.a ], [ 0, %bb.c ], [ %i.q, %._crit_edge.loopexit.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -1, 2) i32 @mp_unsgn_cmp(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.g = icmp samesign ult i64 %indvars.iv, %i.b
  %i.h = icmp eq i32 %i.d, %i.f
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = tail call i32 @llvm.scmp.i32.i32(i32 %i.d, i32 %i.f)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 0, 2) i32 @mp_unexp_add(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !4
  %i.c = load i32, ptr %4, align 4, !tbaa !4
  %i.d = add nsw i32 %i.c, %i.b
  %.not = icmp slt i32 %i.d, %1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nsw i32 %0, -1                       ; 2 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %3, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds [4 x i8], ptr %4, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = add nsw i32 %i.j, %i.h
  %.not82 = icmp sge i32 %i.k, %1                 ; 2 uses
  %i.l = icmp sgt i32 %0, 1
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.m = zext nneg i32 %i.e to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0.in88 = phi i1 [ %.not82, %.lr.ph.preheader ], [ %.not83, %.lr.ph ]
  %.0.neg85 = zext i1 %.0.in88 to i32
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add i32 %i.o, %.0.neg85
  %i.s = add i32 %i.r, %i.q                       ; 2 uses
  %.not83 = icmp sge i32 %i.s, %1                 ; 3 uses
  %i.t = select i1 %.not83, i32 %1, i32 0
  %i.u = sub nsw i32 %i.s, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store i32 %i.u, ptr %i.v, align 4, !tbaa !4
  %i.w = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.in.lcssa = phi i1 [ %.not82, %bb.c ], [ %.not83, %.lr.ph ]
  %.0.neg84 = zext i1 %.0.in.lcssa to i32
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.a
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %0) ; 3 uses
  %i.x = add i32 %0, -1                           ; 2 uses
  %.not7889.not = icmp slt i32 %2, %0
  br i1 %.not7889.not, label %.lr.ph93.preheader, label %.preheader86

.lr.ph93.preheader:                               ; preds = %bb.d
  %i.y = sext i32 %0 to i64                       ; 4 uses
  %i.z = sext i32 %spec.select to i64             ; 5 uses
  %i.aa = sub nsw i64 %i.y, %i.z                  ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ab = add nsw i64 %i.y, -1
  %i.ac = icmp eq i64 %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph93.epil.preheader, label %.lr.ph93.preheader.new

.lr.ph93.preheader.new:                           ; preds = %.lr.ph93.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph93

.preheader86.loopexit.unr-lcssa:                  ; preds = %.lr.ph93
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader86, label %.lr.ph93.epil.preheader

.lr.ph93.epil.preheader:                          ; preds = %.preheader86.loopexit.unr-lcssa, %.lr.ph93.preheader
  %indvars.iv104.in.epil.init = phi i64 [ %i.y, %.lr.ph93.preheader ], [ %indvars.iv104.1, %.preheader86.loopexit.unr-lcssa ]
  %.191.epil.init = phi i32 [ 0, %.lr.ph93.preheader ], [ %i.bh, %.preheader86.loopexit.unr-lcssa ]
  %lcmp.mod121 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod121)
  %indvars.iv104.epil = add nsw i64 %indvars.iv104.in.epil.init, -1 ; 3 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv104.epil
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sub nsw i64 %indvars.iv104.epil, %i.z
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = sub i32 %i.ae, %.191.epil.init
  %i.aj = add i32 %i.ai, %i.ah                    ; 2 uses
  %.not81.epil = icmp sge i32 %i.aj, %1           ; 2 uses
  %i.ak = sext i1 %.not81.epil to i32
  %i.al = select i1 %.not81.epil, i32 %1, i32 0
  %i.am = sub nsw i32 %i.aj, %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv104.epil
  store i32 %i.am, ptr %i.an, align 4, !tbaa !4
  br label %.preheader86

.preheader86:                                     ; preds = %.lr.ph93.epil.preheader, %.preheader86.loopexit.unr-lcssa, %bb.d
  %.1.lcssa = phi i32 [ 0, %bb.d ], [ %i.bh, %.preheader86.loopexit.unr-lcssa ], [ %i.ak, %.lr.ph93.epil.preheader ] ; 2 uses
  %i.ao = icmp sgt i32 %spec.select, 0
  br i1 %i.ao, label %.lr.ph97.preheader, label %._crit_edge98

.lr.ph97.preheader:                               ; preds = %.preheader86
  %i.ap = zext nneg i32 %spec.select to i64
  br label %.lr.ph97

.lr.ph93:                                         ; preds = %.lr.ph93, %.lr.ph93.preheader.new
  %indvars.iv104.in = phi i64 [ %i.y, %.lr.ph93.preheader.new ], [ %indvars.iv104.1, %.lr.ph93 ] ; 2 uses
  %.191 = phi i32 [ 0, %.lr.ph93.preheader.new ], [ %i.bh, %.lr.ph93 ]
  %niter = phi i64 [ 0, %.lr.ph93.preheader.new ], [ %niter.next.1, %.lr.ph93 ]
  %indvars.iv104 = add nsw i64 %indvars.iv104.in, -1 ; 3 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv104
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = sub nsw i64 %indvars.iv104, %i.z
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sub i32 %i.ar, %.191
  %i.aw = add i32 %i.av, %i.au                    ; 2 uses
  %.not81 = icmp sge i32 %i.aw, %1                ; 2 uses
  %.neg122 = zext i1 %.not81 to i32
  %i.ax = select i1 %.not81, i32 %1, i32 0
  %i.ay = sub nsw i32 %i.aw, %i.ax
  %i.az = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv104
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %indvars.iv104.1 = add nsw i64 %indvars.iv104.in, -2 ; 5 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv104.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = sub nsw i64 %indvars.iv104.1, %i.z
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = add i32 %i.bb, %.neg122
  %i.bg = add i32 %i.bf, %i.be                    ; 2 uses
  %.not81.1 = icmp sge i32 %i.bg, %1              ; 2 uses
  %i.bh = sext i1 %.not81.1 to i32                ; 3 uses
  %i.bi = select i1 %.not81.1, i32 %1, i32 0
  %i.bj = sub nsw i32 %i.bg, %i.bi
  %i.bk = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv104.1
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !4
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader86.loopexit.unr-lcssa, label %.lr.ph93, !llvm.loop !116

.lr.ph97:                                         ; preds = %.lr.ph97.preheader, %.lr.ph97
  %indvars.iv107 = phi i64 [ %i.ap, %.lr.ph97.preheader ], [ %indvars.iv.next108, %.lr.ph97 ] ; 2 uses
  %.296 = phi i32 [ %.1.lcssa, %.lr.ph97.preheader ], [ %i.bo, %.lr.ph97 ]
  %indvars.iv.next108 = add nsw i64 %indvars.iv107, -1 ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next108
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = sub nsw i32 %i.bm, %.296                ; 2 uses
  %.not80 = icmp sge i32 %i.bn, %1                ; 2 uses
  %i.bo = sext i1 %.not80 to i32                  ; 2 uses
  %i.bp = select i1 %.not80, i32 %1, i32 0
  %i.bq = sub nsw i32 %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next108
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %i.bs = icmp samesign ugt i64 %indvars.iv107, 1
  br i1 %i.bs, label %.lr.ph97, label %._crit_edge98, !llvm.loop !117

._crit_edge98:                                    ; preds = %.lr.ph97, %.preheader86
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader86 ], [ %i.bo, %.lr.ph97 ]
  %.not79 = icmp eq i32 %.2.lcssa, 0
  br i1 %.not79, label %bb.e, label %.preheader

.preheader:                                       ; preds = %._crit_edge98
  %i.bt = icmp sgt i32 %0, 1
  br i1 %i.bt, label %.lr.ph101.preheader, label %.sink.split

.lr.ph101.preheader:                              ; preds = %.preheader
  %6 = zext i32 %i.x to i64                       ; 4 uses
  %7 = icmp ne i32 %i.x, 0
  %.neg = sext i1 %7 to i64
  %8 = add nsw i64 %.neg, %6
  %9 = add nsw i64 %8, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %9, 8
  br i1 %min.iters.check, label %.lr.ph101.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph101.preheader
  %n.vec = and i64 %9, -8                         ; 3 uses
  %10 = sub nsw i64 %6, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %11 = sub i64 %6, %index
  %12 = getelementptr [4 x i8], ptr %5, i64 %11   ; 4 uses
  %13 = getelementptr i8, ptr %12, i64 -16
  %14 = getelementptr i8, ptr %12, i64 -32
  %wide.load = load <4 x i32>, ptr %13, align 4, !tbaa !4
  %wide.load117 = load <4 x i32>, ptr %14, align 4, !tbaa !4
  %15 = getelementptr i8, ptr %12, i64 -12
  %i.bu = getelementptr i8, ptr %12, i64 -28
  store <4 x i32> %wide.load, ptr %15, align 4, !tbaa !4
  store <4 x i32> %wide.load117, ptr %i.bu, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %.sink.split, label %.lr.ph101.preheader118

.lr.ph101.preheader118:                           ; preds = %.lr.ph101.preheader, %middle.block
  %indvars.iv111.ph = phi i64 [ %6, %.lr.ph101.preheader ], [ %10, %middle.block ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader118, %.lr.ph101
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph101 ], [ %indvars.iv111.ph, %.lr.ph101.preheader118 ] ; 3 uses
  %17 = getelementptr [4 x i8], ptr %5, i64 %indvars.iv111 ; 2 uses
  %18 = getelementptr i8, ptr %17, i64 -4
  %19 = load i32, ptr %18, align 4, !tbaa !4
  store i32 %19, ptr %17, align 4, !tbaa !4
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, -1
  %20 = icmp samesign ugt i64 %indvars.iv111, 1
  br i1 %20, label %.lr.ph101, label %.sink.split, !llvm.loop !119

.sink.split:                                      ; preds = %.lr.ph101, %middle.block, %.preheader, %._crit_edge
  %.sink = phi i32 [ %.0.neg84, %._crit_edge ], [ 1, %.preheader ], [ 1, %middle.block ], [ 1, %.lr.ph101 ] ; 2 uses
  store i32 %.sink, ptr %5, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %._crit_edge98
  %.3.neg = phi i32 [ 0, %._crit_edge98 ], [ %.sink, %.sink.split ]
  ret i32 %.3.neg
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @mp_unexp_sub(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #10 {
bb.a:
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %0) ; 3 uses
  %.not.not74 = icmp slt i32 %2, %0
  br i1 %.not.not74, label %.lr.ph.preheader, label %.preheader71

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = sext i32 %0 to i64                       ; 4 uses
  %i.b = sext i32 %spec.select to i64             ; 5 uses
  %i.c = sub nsw i64 %i.a, %i.b                   ; 3 uses
  %xtraiter = and i64 %i.c, 1
  %i.d = add nsw i64 %i.a, -1
  %i.e = icmp eq i64 %i.d, %i.b
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.c, -2
  br label %.lr.ph

.preheader71.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader71, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader71.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.a, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader71.loopexit.unr-lcssa ]
  %.05676.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.lobit64.1, %.preheader71.loopexit.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil.init, -1 ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.epil
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = sub nsw i64 %indvars.iv.next.epil, %i.b
  %i.i = getelementptr inbounds [4 x i8], ptr %4, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = sub nsw i32 %i.g, %i.j
  %i.l = add nsw i32 %i.k, %.05676.epil.init      ; 2 uses
  %.lobit64.epil = ashr i32 %i.l, 31              ; 2 uses
  %i.m = and i32 %.lobit64.epil, %1
  %i.n = add nsw i32 %i.m, %i.l
  %i.o = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next.epil
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  br label %.preheader71

.preheader71:                                     ; preds = %.lr.ph.epil.preheader, %.preheader71.loopexit.unr-lcssa, %bb.a
  %.056.lcssa = phi i32 [ 0, %bb.a ], [ %.lobit64.1, %.preheader71.loopexit.unr-lcssa ], [ %.lobit64.epil, %.lr.ph.epil.preheader ]
  %i.p = icmp sgt i32 %spec.select, 0
  br i1 %i.p, label %.lr.ph79.preheader, label %.preheader69

.lr.ph79.preheader:                               ; preds = %.preheader71
  %i.q = zext nneg i32 %spec.select to i64
  br label %.lr.ph79

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.a, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 2 uses
  %.05676 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.lobit64.1, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = sub nsw i64 %indvars.iv.next, %i.b
  %i.u = getelementptr inbounds [4 x i8], ptr %4, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = sub nsw i32 %i.s, %i.v
  %i.x = add nsw i32 %i.w, %.05676                ; 2 uses
  %.lobit64 = ashr i32 %i.x, 31                   ; 2 uses
  %i.y = and i32 %.lobit64, %1
  %i.z = add nsw i32 %i.y, %i.x
  %i.aa = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 5 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sub nsw i64 %indvars.iv.next.1, %i.b
  %i.ae = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = sub nsw i32 %i.ac, %i.af
  %i.ah = add nsw i32 %i.ag, %.lobit64            ; 2 uses
  %.lobit64.1 = ashr i32 %i.ah, 31                ; 4 uses
  %i.ai = and i32 %.lobit64.1, %1
  %i.aj = add nsw i32 %i.ai, %i.ah
  %i.ak = getelementptr inbounds [4 x i8], ptr %5, i64 %indvars.iv.next.1
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !4
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader71.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !50

.preheader69:                                     ; preds = %.lr.ph79, %.preheader71
  %i.al = icmp sgt i32 %0, 0
  br i1 %i.al, label %.lr.ph81.preheader, label %.critedge.thread

.lr.ph81.preheader:                               ; preds = %.preheader69
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph81

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %indvars.iv91 = phi i64 [ %i.q, %.lr.ph79.preheader ], [ %indvars.iv.next92, %.lr.ph79 ] ; 2 uses
  %.178 = phi i32 [ %.056.lcssa, %.lr.ph79.preheader ], [ %.lobit, %.lr.ph79 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, -1 ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next92
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = add nsw i32 %i.an, %.178                ; 2 uses
  %.lobit = ashr i32 %i.ao, 31                    ; 2 uses
  %i.ap = and i32 %.lobit, %1
  %i.aq = add nsw i32 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next92
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %i.as = icmp samesign ugt i64 %indvars.iv91, 1
  br i1 %i.as, label %.lr.ph79, label %.preheader69, !llvm.loop !51

.lr.ph81:                                         ; preds = %.lr.ph81.preheader, %bb.b
  %indvars.iv101 = phi i32 [ %0, %.lr.ph81.preheader ], [ %indvars.iv.next102, %bb.b ] ; 3 uses
  %indvars.iv94 = phi i64 [ 0, %.lr.ph81.preheader ], [ %indvars.iv.next95, %bb.b ] ; 7 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv94
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph81
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count
  %indvars.iv.next102 = add i32 %indvars.iv101, -1
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph81, !llvm.loop !52

.critedge:                                        ; preds = %.lr.ph81
  %i.aw = trunc nuw nsw i64 %indvars.iv94 to i32  ; 2 uses
  %.not.not67 = icmp eq i64 %indvars.iv94, 0
  br i1 %.not.not67, label %.critedge.thread, label %.preheader68

.preheader68:                                     ; preds = %.critedge
  %i.ax = sub nsw i32 %0, %i.aw                   ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph84.preheader, label %.lr.ph87.preheader

.lr.ph84.preheader:                               ; preds = %.preheader68
  %wide.trip.count104 = zext i32 %indvars.iv101 to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv94 ; 2 uses
  %min.iters.check = icmp ult i32 %indvars.iv101, 8
  br i1 %min.iters.check, label %.lr.ph84.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph84.preheader
  %n.vec = and i64 %wide.trip.count104, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !4
  %wide.load117 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <4 x i32> %wide.load, ptr %i.bb, align 4, !tbaa !4
  store <4 x i32> %wide.load117, ptr %i.bc, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count104
  br i1 %cmp.n, label %.lr.ph87.preheader, label %.lr.ph84.preheader118

.lr.ph84.preheader118:                            ; preds = %.lr.ph84.preheader, %middle.block
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph84.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph84

.lr.ph87.preheader:                               ; preds = %.lr.ph84, %middle.block, %.preheader68
  %i.be = sext i32 %i.ax to i64
  %i.bf = shl nsw i64 %i.be, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.bf
  %i.bg = add nuw i32 %0, 1
  %i.bh = trunc i64 %indvars.iv94 to i32
  %i.bi = sub i32 %i.bg, %i.bh
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 %i.bi)
  %i.bj = xor i32 %0, -1
  %i.bk = trunc i64 %indvars.iv94 to i32
  %i.bl = add i32 %i.bk, %i.bj
  %i.bm = add i32 %smax, %i.bl
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = add nuw nsw i64 %i.bo, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.bp, i1 false), !tbaa !4
  br label %.critedge.thread

.lr.ph84:                                         ; preds = %.lr.ph84.preheader118, %.lr.ph84
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph84 ], [ %indvars.iv98.ph, %.lr.ph84.preheader118 ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv98
  %i.bq = load i32, ptr %gep, align 4, !tbaa !4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv98
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count104
  br i1 %exitcond105.not, label %.lr.ph87.preheader, label %.lr.ph84, !llvm.loop !121

.critedge.thread:                                 ; preds = %bb.b, %.lr.ph87.preheader, %.preheader69, %.critedge
  %.073 = phi i32 [ 0, %.preheader69 ], [ 0, %.critedge ], [ %i.aw, %.lr.ph87.preheader ], [ %0, %bb.b ]
  ret i32 %.073
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_unsgn_imul(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fdiv double 1.000000e+00, %1             ; 8 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = fneg double %1
  %i.d = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %.05158 = phi i32 [ 0, %.lr.ph ], [ %i.l, %bb.b ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = sitofp i32 %i.f to double
  %i.h = sitofp i32 %.05158 to double
  %i.i = tail call double @llvm.fmuladd.f64(double %3, double %i.g, double %i.h)
  %i.j = fadd double %i.i, 5.000000e-01           ; 2 uses
  %i.k = fmul double %i.a, %i.j
  %i.l = fptosi double %i.k to i32                ; 3 uses
  %i.m = sitofp i32 %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.c, double %i.m, double %i.j)
  %i.o = fptosi double %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store i32 %i.o, ptr %i.p, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.q = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !122

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ] ; 6 uses
  %i.r = sitofp i32 %.051.lcssa to double
  %i.s = fadd double %i.r, 5.000000e-01           ; 2 uses
  %i.t = fcmp ogt double %i.s, 1.000000e+00
  br i1 %i.t, label %.lr.ph63, label %._crit_edge64.thread

._crit_edge64.thread:                             ; preds = %._crit_edge
  %i.u = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.u, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.lr.ph63:                                         ; preds = %._crit_edge, %.lr.ph63
  %indvar = phi i64 [ %indvar.next, %.lr.ph63 ], [ 0, %._crit_edge ] ; 4 uses
  %.04861 = phi double [ %i.v, %.lr.ph63 ], [ %i.s, %._crit_edge ]
  %.04960 = phi i32 [ %i.w, %.lr.ph63 ], [ 0, %._crit_edge ] ; 2 uses
  %i.v = fmul double %i.a, %.04861                ; 2 uses
  %i.w = add nuw nsw i32 %.04960, 1               ; 9 uses
  %i.x = fcmp ogt double %i.v, 1.000000e+00
  %indvar.next = add i64 %indvar, 1
  br i1 %i.x, label %.lr.ph63, label %.preheader57, !llvm.loop !123

.preheader57:                                     ; preds = %.lr.ph63
  %i.y = load i32, ptr %2, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, %i.w
  store i32 %i.z, ptr %4, align 4, !tbaa !4
  %.not = icmp slt i32 %.04960, %0
  br i1 %.not, label %.preheader56, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %.preheader57
  %i.aa = trunc i64 %indvar to i32
  %reass.sub = sub i32 %i.aa, %0
  %i.ab = add i32 %reass.sub, 1
  %i.ac = trunc i64 %indvar to i32
  %i.ad = sub i32 %i.ac, %0
  %xtraiter = and i32 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol

.lr.ph68.prol:                                    ; preds = %.lr.ph68.preheader, %.lr.ph68.prol
  %.15067.prol = phi i32 [ %i.ah, %.lr.ph68.prol ], [ %i.w, %.lr.ph68.preheader ]
  %.15266.prol = phi i32 [ %i.ag, %.lr.ph68.prol ], [ %.051.lcssa, %.lr.ph68.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph68.prol ], [ 0, %.lr.ph68.preheader ]
  %i.ae = sitofp i32 %.15266.prol to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ae, double 5.000000e-01)
  %i.ag = fptosi double %i.af to i32              ; 3 uses
  %i.ah = add nsw i32 %.15067.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph68.prol.loopexit, label %.lr.ph68.prol, !llvm.loop !124

.lr.ph68.prol.loopexit:                           ; preds = %.lr.ph68.prol, %.lr.ph68.preheader
  %.15067.unr = phi i32 [ %i.w, %.lr.ph68.preheader ], [ %i.ah, %.lr.ph68.prol ]
  %.15266.unr = phi i32 [ %.051.lcssa, %.lr.ph68.preheader ], [ %i.ag, %.lr.ph68.prol ]
  %.lcssa.unr = phi i32 [ poison, %.lr.ph68.preheader ], [ %i.ag, %.lr.ph68.prol ]
  %i.ai = icmp ult i32 %i.ad, 3
  br i1 %i.ai, label %.preheader, label %.lr.ph68

.preheader56:                                     ; preds = %.preheader57
  %.not55.not71 = icmp sgt i32 %0, %i.w
  br i1 %.not55.not71, label %.lr.ph73.preheader, label %.lr.ph76

.lr.ph73.preheader:                               ; preds = %.preheader56
  %i.aj = sext i32 %0 to i64                      ; 6 uses
  %i.ak = zext nneg i32 %i.w to i64               ; 4 uses
  %i.al = add nsw i64 %i.aj, -1
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 %i.al)
  %i.an = sub i64 %i.aj, %i.am                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 12
  br i1 %min.iters.check, label %.lr.ph73.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph73.preheader
  %i.ao = shl i64 %indvar, 2
  %i.ap = add i64 %i.ao, 35
  %diff.check = icmp ult i64 %i.ap, 31
  br i1 %diff.check, label %.lr.ph73.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, -8                      ; 3 uses
  %i.aq = sub i64 %i.aj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = sub i64 %i.aj, %index                   ; 2 uses
  %i.as = sub nsw i64 %i.ar, %i.ak
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -12
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 -28
  %wide.load = load <4 x i32>, ptr %i.au, align 4, !tbaa !4
  %wide.load103 = load <4 x i32>, ptr %i.av, align 4, !tbaa !4
  %i.aw = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ar ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  store <4 x i32> %wide.load, ptr %i.ax, align 4, !tbaa !4
  store <4 x i32> %wide.load103, ptr %i.ay, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %.lr.ph76, label %.lr.ph73.preheader104

.lr.ph73.preheader104:                            ; preds = %vector.memcheck, %.lr.ph73.preheader, %middle.block
  %indvars.iv81.ph = phi i64 [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph73.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph73

.lr.ph68:                                         ; preds = %.lr.ph68.prol.loopexit, %.lr.ph68
  %.15067 = phi i32 [ %i.bm, %.lr.ph68 ], [ %.15067.unr, %.lr.ph68.prol.loopexit ]
  %.15266 = phi i32 [ %i.bl, %.lr.ph68 ], [ %.15266.unr, %.lr.ph68.prol.loopexit ]
  %i.ba = sitofp i32 %.15266 to double
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ba, double 5.000000e-01)
  %i.bc = fptosi double %i.bb to i32
  %i.bd = sitofp i32 %i.bc to double
  %i.be = tail call double @llvm.fmuladd.f64(double %i.a, double %i.bd, double 5.000000e-01)
  %i.bf = fptosi double %i.be to i32
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.a, double %i.bg, double 5.000000e-01)
  %i.bi = fptosi double %i.bh to i32
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.a, double %i.bj, double 5.000000e-01)
  %i.bl = fptosi double %i.bk to i32              ; 2 uses
  %i.bm = add nsw i32 %.15067, -4                 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, %0
  br i1 %i.bn, label %.lr.ph68, label %.preheader, !llvm.loop !126

.preheader:                                       ; preds = %.lr.ph68, %.lr.ph68.prol.loopexit
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph68.prol.loopexit ], [ %i.bl, %.lr.ph68 ]
  %i.bo = icmp sgt i32 %0, 0
  br i1 %i.bo, label %.lr.ph76, label %.loopexit

.lr.ph76:                                         ; preds = %.lr.ph73, %middle.block, %.preheader56, %.preheader
  %.152.lcssa9398 = phi i32 [ %.lcssa, %.preheader ], [ %.051.lcssa, %.preheader56 ], [ %.051.lcssa, %middle.block ], [ %.051.lcssa, %.lr.ph73 ]
  %.150.lcssa9497 = phi i32 [ %0, %.preheader ], [ %i.w, %.preheader56 ], [ %i.w, %middle.block ], [ %i.w, %.lr.ph73 ]
  %i.bp = fneg double %1
  %i.bq = zext nneg i32 %.150.lcssa9497 to i64
  br label %bb.c

.lr.ph73:                                         ; preds = %.lr.ph73.preheader104, %.lr.ph73
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph73 ], [ %indvars.iv81.ph, %.lr.ph73.preheader104 ] ; 3 uses
  %i.br = sub nsw i64 %indvars.iv81, %i.ak
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv81
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !4
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, -1 ; 2 uses
  %.not55.not = icmp sgt i64 %indvars.iv.next82, %i.ak
  br i1 %.not55.not, label %.lr.ph73, label %.lr.ph76, !llvm.loop !127

bb.c:                                             ; preds = %.lr.ph76, %bb.c
  %indvars.iv84 = phi i64 [ %i.bq, %.lr.ph76 ], [ %indvars.iv.next85, %bb.c ] ; 3 uses
  %.25374 = phi i32 [ %.152.lcssa9398, %.lr.ph76 ], [ %i.by, %bb.c ]
  %i.bv = sitofp i32 %.25374 to double
  %i.bw = fadd double %i.bv, 5.000000e-01         ; 2 uses
  %i.bx = fmul double %i.a, %i.bw
  %i.by = fptosi double %i.bx to i32              ; 2 uses
  %i.bz = sitofp i32 %i.by to double
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bz, double %i.bw)
  %i.cb = fptosi double %i.ca to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv84
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !4
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1
  %i.cd = icmp samesign ugt i64 %indvars.iv84, 1
  br i1 %i.cd, label %bb.c, label %.loopexit, !llvm.loop !128

.loopexit:                                        ; preds = %bb.c, %._crit_edge64.thread, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_unsgn_idiv(i32 noundef %0, double noundef %1, ptr nofree noundef readonly captures(none) %2, double noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = fadd double %3, -5.000000e-01
  %i.b = sext i32 %0 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv82 = phi i32 [ %indvars.iv.next83, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %.057 = phi double [ %.158, %bb.d ], [ 0.000000e+00, %bb.a ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.c = fmul double %1, %.057                    ; 2 uses
  %.not.not = icmp slt i64 %indvars.iv, %i.b
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = sitofp i32 %i.e to double
  %i.g = fadd double %i.c, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.158 = phi double [ %i.g, %bb.c ], [ %i.c, %bb.b ] ; 3 uses
  %i.h = fcmp olt double %.158, %i.a
  %indvars.iv.next83 = add nuw i32 %indvars.iv82, 1
  br i1 %i.h, label %bb.b, label %bb.e, !llvm.loop !102

bb.e:                                             ; preds = %bb.d
  %i.i = fdiv double 1.000000e+00, %3             ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.k = fadd double %.158, 5.000000e-01          ; 2 uses
  %i.l = fmul double %i.i, %i.k
  %i.m = fptosi double %i.l to i32                ; 2 uses
  %i.n = sitofp i32 %i.m to double
  %i.o = fneg double %3                           ; 3 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.n, double %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.m, ptr %i.q, align 4, !tbaa !4
  %i.r = load i32, ptr %2, align 4, !tbaa !4
  %i.s = sub nsw i32 %i.r, %i.j
  store i32 %i.s, ptr %4, align 4, !tbaa !4
  %i.t = add nsw i32 %0, -1                       ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.t) ; 3 uses
  %i.u = sub nsw i32 %0, %spec.select             ; 2 uses
  %.06168 = fptosi double %i.p to i32             ; 2 uses
  %.not6669 = icmp slt i32 %i.u, 2
  br i1 %.not6669, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.v = sext i32 %spec.select to i64
  %i.w = zext nneg i32 %i.u to i64
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.v
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.e
  %.061.lcssa = phi i32 [ %.06168, %bb.e ], [ %.061, %.lr.ph ]
  %.not67.not73 = icmp sgt i32 %spec.select, 0
  br i1 %.not67.not73, label %.lr.ph76.preheader, label %._crit_edge

.lr.ph76.preheader:                               ; preds = %.preheader
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv82, i32 %i.t)
  %i.x = sub i32 %0, %smin
  %i.y = sext i32 %i.x to i64
  br label %.lr.ph76

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv79 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next80, %.lr.ph ] ; 4 uses
  %.06171 = phi i32 [ %.06168, %.lr.ph.preheader ], [ %.061, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv79
  %i.z = load i32, ptr %gep, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = sitofp i32 %.06171 to double
  %i.ac = tail call double @llvm.fmuladd.f64(double %1, double %i.ab, double %i.aa)
  %i.ad = fadd double %i.ac, 5.000000e-01         ; 2 uses
  %i.ae = fmul double %i.i, %i.ad
  %i.af = fptosi double %i.ae to i32              ; 2 uses
  %i.ag = sitofp i32 %i.af to double
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ag, double %i.ad)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv79
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !4
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %.061 = fptosi double %i.ah to i32              ; 2 uses
  %.not66.not = icmp samesign ult i64 %indvars.iv79, %i.w
  br i1 %.not66.not, label %.lr.ph, label %.preheader, !llvm.loop !103

.lr.ph76:                                         ; preds = %.lr.ph76.preheader, %.lr.ph76
  %indvars.iv84 = phi i64 [ %i.y, %.lr.ph76.preheader ], [ %indvars.iv.next85, %.lr.ph76 ]
  %.16274 = phi i32 [ %.061.lcssa, %.lr.ph76.preheader ], [ %i.ap, %.lr.ph76 ]
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 3 uses
  %i.aj = sitofp i32 %.16274 to double
  %i.ak = tail call double @llvm.fmuladd.f64(double %1, double %i.aj, double 5.000000e-01) ; 2 uses
  %i.al = fmul double %i.i, %i.ak
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = sitofp i32 %i.am to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.o, double %i.an, double %i.ak)
  %i.ap = fptosi double %i.ao to i32
  %i.aq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next85
  store i32 %i.am, ptr %i.aq, align 4, !tbaa !4
  %.not67.not = icmp slt i64 %indvars.iv.next85, %i.b
  br i1 %.not67.not, label %.lr.ph76, label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph76, %.preheader
  ret void
}

declare void @rdft(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_csqu(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 8, !tbaa !24 ; 2 uses
  %i.b = insertelement <2 x double> %i.a, double 2.000000e+00, i64 0
  %i.c = fmul <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %1, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.f = fmul double %i.e, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = icmp sgt i32 %0, 3
  br i1 %i.g, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %0 to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %0 to i64                  ; 4 uses
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 5)
  %i.j = add nsw i64 %i.i, -4
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 3 uses
  %min.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.iters.check, label %.lr.ph.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.l, 9223372036854775806      ; 2 uses
  %i.m = shl nuw i64 %i.l, 1
  %i.n = or i64 %i.m, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.p, align 8, !tbaa !24 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec29 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.q = fneg <2 x double> %strided.vec29
  %i.r = fmul <2 x double> %strided.vec29, %i.q
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec, <2 x double> %i.r)
  %i.t = fmul <2 x double> %strided.vec, splat (double 2.000000e+00)
  %i.u = fmul <2 x double> %i.t, %strided.vec29
  %interleaved.vec = shufflevector <2 x double> %i.s, <2 x double> %i.u, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.p, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader30

.lr.ph.preheader30:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %.lr.ph.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader30, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader30 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !24 ; 3 uses
  %i.aa = fneg double %i.z
  %i.ab = fmul double %i.z, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.ab)
  store double %i.ac, ptr %i.w, align 8, !tbaa !24
  %i.ad = fmul double %i.x, 2.000000e+00
  %i.ae = fmul double %i.ad, %i.z
  store double %i.ae, ptr %i.y, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.h
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph ]
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %.pre-phi
  %i.ah = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  store double %i.aj, ptr %i.ah, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local double @mp_mul_d2i_test(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %0, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 3 uses
  %i.d = fdiv <2 x double> <double 2.000000e+00, double 1.000000e+00>, %i.c ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.d, %i.d
  %i.e = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.f = add nsw i32 %1, 1                        ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = extractelement <2 x double> %i.c, i64 0
  %i.k = fmul double %i.i, %i.j
  %i.l = fmul double %i.k, 5.000000e-01           ; 3 uses
  %i.m = fcmp olt double %i.l, 0.000000e+00
  %i.n = fneg double %i.l
  %.043 = select i1 %i.m, double %i.n, double %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !24
  %i.q = fsub double %i.p, %.043
  store double %i.q, ptr %i.h, align 8, !tbaa !24
  %i.r = icmp sgt i32 %1, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.s = zext nneg i32 %i.f to i64
  %i.t = extractelement <2 x double> %i.d, i64 0
  %i.u = extractelement <2 x double> %i.c, i64 1  ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.052 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %.1, %bb.d ] ; 3 uses
  %.04150 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ak, %bb.d ]
  %.04249 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ac, %bb.d ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.w = load double, ptr %i.v, align 8, !tbaa !24
  %i.x = sitofp i32 %.04150 to double
  %i.y = tail call double @llvm.fmuladd.f64(double %i.t, double %i.w, double %i.x)
  %i.z = fadd double %i.y, 5.000000e-01
  %i.aa = fmul double %i.e, %i.z                  ; 2 uses
  %i.ab = fptosi double %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fsub double %i.aa, %i.ad
  %i.af = fmul double %i.ae, %i.u                 ; 2 uses
  %i.ag = fptosi double %i.af to i32              ; 2 uses
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = fmul double %i.ai, %i.u                 ; 2 uses
  %i.ak = add nsw i32 %.04249, %i.ag
  %i.al = fadd double %i.aj, -5.000000e-01
  %i.am = fptosi double %i.aj to i32
  %i.an = sitofp i32 %i.am to double
  %i.ao = fsub double %i.al, %i.an                ; 3 uses
  %i.ap = fcmp ogt double %i.ao, %.052
  br i1 %i.ap, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.aq = fneg double %i.ao                       ; 2 uses
  %i.ar = fcmp olt double %.052, %i.aq
  br i1 %i.ar, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c, %bb.b
  %.1 = phi double [ %.052, %bb.b ], [ %i.aq, %bb.c ], [ %i.ao, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.as = icmp sgt i64 %indvars.iv, 2
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.1, %bb.d ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_i2d(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %0, %3
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr [4 x i8], ptr %4, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = ashr i32 %2, 1                           ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = sub nsw i32 %0, %3                       ; 2 uses
  %.not = icmp slt i32 %i.f, %i.h
  %spec.select = select i1 %.not, i32 %i.g, i32 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.045 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %.0 = phi i32 [ 0, %bb.a ], [ %i.e, %bb.b ]     ; 2 uses
  %i.i = load i32, ptr %4, align 4, !tbaa !4
  %i.j = mul nsw i32 %i.i, %.0
  %i.k = sitofp i32 %i.j to double
  %i.l = sext i32 %2 to i64                       ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %5, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 8
  store double %i.k, ptr %i.n, align 8, !tbaa !24
  %i.o = icmp sgt i32 %2, %.045
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.p = xor i32 %.045, -1
  %i.q = add i32 %2, %i.p
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = sub nsw i64 %i.l, %i.r
  %i.u = shl nsw i64 %i.t, 3
  %scevgep = getelementptr i8, ptr %5, i64 %i.u
  %i.v = add nuw nsw i64 %i.s, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.v, i1 false), !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %i.w = icmp sgt i32 %.045, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.x = sdiv i32 %1, 2
  %.not58 = icmp eq i32 %.045, 2
  br i1 %.not58, label %.._crit_edge57_crit_edge, label %.lr.ph56.preheader

.._crit_edge57_crit_edge:                         ; preds = %bb.d
  %.pre = sext i32 %3 to i64
  br label %._crit_edge57

.lr.ph56.preheader:                               ; preds = %bb.d
  %i.y = add nuw i32 %.045, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = sext i32 %3 to i64                      ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.aa
  br label %.lr.ph56

.lr.ph56:                                         ; preds = %.lr.ph56.preheader, %.lr.ph56
  %indvars.iv = phi i64 [ %i.z, %.lr.ph56.preheader ], [ %indvars.iv.next, %.lr.ph56 ] ; 4 uses
  %.04653 = phi i32 [ 0, %.lr.ph56.preheader ], [ %i.ad, %.lr.ph56 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ab = load i32, ptr %gep, align 4, !tbaa !4
  %i.ac = sub nsw i32 %i.ab, %.04653              ; 2 uses
  %.not51 = icmp sge i32 %i.ac, %i.x              ; 2 uses
  %i.ad = sext i1 %.not51 to i32                  ; 2 uses
  %i.ae = select i1 %.not51, i32 %1, i32 0
  %i.af = sub nsw i32 %i.ac, %i.ae
  %i.ag = sitofp i32 %i.af to double
  %i.ah = getelementptr [8 x i8], ptr %5, i64 %indvars.iv
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  store double %i.ag, ptr %i.ai, align 8, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp sgt i64 %indvars.iv, 4
  br i1 %i.aj, label %.lr.ph56, label %._crit_edge57, !llvm.loop !63

._crit_edge57:                                    ; preds = %.lr.ph56, %.._crit_edge57_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge57_crit_edge ], [ %i.aa, %.lr.ph56 ]
  %.046.lcssa = phi i32 [ 0, %.._crit_edge57_crit_edge ], [ %i.ad, %.lr.ph56 ]
  %i.ak = getelementptr [4 x i8], ptr %4, i64 %.pre-phi
  %i.al = getelementptr i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sub nsw i32 %i.am, %.046.lcssa
  %i.ao = sitofp i32 %i.an to double
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.ao, ptr %i.ap, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge57, %._crit_edge
  %i.aq = sitofp i32 %.0 to double
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.aq, ptr %i.ar, align 8, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sub nsw i32 %i.at, %3
  %i.av = sitofp i32 %i.au to double
  store double %i.av, ptr %5, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_cmul(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !24
  %i.b = load double, ptr %2, align 8, !tbaa !24
  %i.c = fadd double %i.a, %i.b
  store double %i.c, ptr %2, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !24
  %i.h = fmul double %i.e, %i.g
  store double %i.h, ptr %i.f, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !24
  %i.m = fmul double %i.j, %i.l
  store double %i.m, ptr %i.k, align 8, !tbaa !24
  %i.n = icmp sgt i32 %0, 3
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = zext nneg i32 %0 to i64                  ; 3 uses
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.o, i64 5)
  %i.q = add nsw i64 %i.p, -4                     ; 2 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw nsw i64 %i.r, 1                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 6
  br i1 %min.iters.check, label %.lr.ph.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %2, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.o, i64 5)
  %i.t = shl nuw nsw i64 %umax, 3
  %i.u = or i64 %i.t, 8                           ; 2 uses
  %scevgep35 = getelementptr i8, ptr %2, i64 %i.u
  %scevgep36 = getelementptr i8, ptr %1, i64 24
  %scevgep37 = getelementptr i8, ptr %1, i64 %i.u
  %bound0 = icmp ult ptr %scevgep, %scevgep37
  %bound1 = icmp ult ptr %scevgep36, %scevgep35
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775806      ; 2 uses
  %i.v = shl nuw i64 %i.s, 1
  %i.w = or i64 %i.v, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl nuw i64 %index, 1
  %i.y = or disjoint i64 %i.x, 3                  ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %wide.vec = load <4 x double>, ptr %i.z, align 8, !tbaa !24, !alias.scope !131 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec38 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %wide.vec39 = load <4 x double>, ptr %i.aa, align 8, !tbaa !24, !alias.scope !134, !noalias !131 ; 2 uses
  %strided.vec40 = shufflevector <4 x double> %wide.vec39, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec41 = shufflevector <4 x double> %wide.vec39, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = fneg <2 x double> %strided.vec41
  %i.ac = fmul <2 x double> %strided.vec38, %i.ab
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec40, <2 x double> %i.ac)
  %i.ae = fmul <2 x double> %strided.vec38, %strided.vec40
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec41, <2 x double> %i.ae)
  %interleaved.vec = shufflevector <2 x double> %i.ad, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.aa, align 8, !tbaa !24, !alias.scope !134, !noalias !131
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader42

.lr.ph.preheader42:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader42, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader42 ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !24
  %i.aj = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aj
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24
  %i.ap = load <2 x double>, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.aq = fneg double %i.ao
  %i.ar = insertelement <2 x double> poison, double %i.al, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x double> %i.at, double %i.aq, i64 0
  %i.av = fmul <2 x double> %i.as, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ap, <2 x double> %i.av)
  store <2 x double> %i.ay, ptr %i.am, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ba = add nsw i32 %0, 1
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !24
  %i.be = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !24
  %i.bg = fmul double %i.bd, %i.bf
  store double %i.bg, ptr %i.be, align 8, !tbaa !24
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %1, i64 1
  %i.c = sitofp <2 x i32> %i.b to <2 x double>    ; 3 uses
  %i.d = extractelement <2 x double> %i.c, i64 1  ; 6 uses
  %i.e = fdiv <2 x double> <double 2.000000e+00, double 1.000000e+00>, %i.c ; 2 uses
  %i.f = extractelement <2 x double> %i.e, i64 1  ; 4 uses
  %i.g = fmul double %i.f, %i.f                   ; 2 uses
  %i.h = add nsw i32 %2, 1                        ; 3 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %3, i64 %i.i ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !24 ; 4 uses
  %i.l = fcmp olt double %i.k, 0.000000e+00
  %i.m = fneg double %i.k
  %i.n = select i1 %i.l, double %i.m, double %i.k ; 2 uses
  %i.o = fadd double %i.n, 5.000000e-01
  %i.p = fcmp oge double %i.o, %i.d               ; 5 uses
  %i.q = zext i1 %i.p to i32                      ; 2 uses
  %i.r = extractelement <2 x double> %i.c, i64 0
  %i.s = fmul nnan double %i.r, 5.000000e-01
  %i.t = fmul double %i.s, %i.n                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !24
  %i.w = fsub double %i.v, %i.t
  store double %i.w, ptr %i.j, align 8, !tbaa !24
  store double %i.t, ptr %i.u, align 8, !tbaa !24
  %i.x = add nsw i32 %i.h, %i.q                   ; 3 uses
  %i.y = icmp sgt i32 %0, %i.x
  br i1 %i.y, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.z = add i32 %0, 1
  %i.aa = add nsw i32 %i.x, 1
  %i.ab = sext i32 %i.z to i64
  %smin = tail call i32 @llvm.smin.i32(i32 %0, i32 %i.aa)
  %i.ac = sub i32 %0, %smin
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = sub nsw i64 %i.ab, %i.ad
  %i.ag = shl nsw i64 %i.af, 2
  %scevgep = getelementptr i8, ptr %4, i64 %i.ag
  %i.ah = add nuw nsw i64 %i.ae, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ah, i1 false), !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.0114 = phi i32 [ %0, %bb.a ], [ %i.x, %.loopexit.loopexit ] ; 3 uses
  %not. = xor i1 %i.p, true
  %i.ai = zext i1 %not. to i32
  %i.aj = add i32 %.0114, %i.ai                   ; 2 uses
  %.not121 = icmp sgt i32 %i.aj, %i.h
  br i1 %.not121, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.ak = sext i32 %i.aj to i64
  %i.al = sext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0107123 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.ap, %.lr.ph ] ; 2 uses
  %.0111122 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ao, %.lr.ph ]
  %i.am = getelementptr inbounds [8 x i8], ptr %3, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !24
  %i.ao = tail call double @llvm.fmuladd.f64(double %.0107123, double %i.an, double %.0111122) ; 2 uses
  %i.ap = fmul double %i.f, %.0107123             ; 2 uses
  %i.aq = fcmp olt double %i.ap, f0x3CB0000000000000
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %.not = icmp sgt i64 %indvars.iv, %i.al
  %or.cond = or i1 %i.aq, %.not
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.1112 = phi double [ 0.000000e+00, %.loopexit ], [ %i.ao, %.lr.ph ]
  %i.ar = extractelement <2 x double> %i.e, i64 0 ; 3 uses
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %.1112, double 5.000000e-01)
  %i.at = fmul double %i.g, %i.as                 ; 2 uses
  %i.au = fptosi double %i.at to i32
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  %i.aw = sitofp i32 %i.av to double              ; 2 uses
  %i.ax = fsub double %i.at, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.d, double %i.ax, double 5.000000e-01)
  %i.az = fptosi double %i.ay to i32              ; 2 uses
  %i.ba = icmp sgt i32 %.0114, 1
  br i1 %i.ba, label %.lr.ph131.preheader, label %._crit_edge132

.lr.ph131.preheader:                              ; preds = %._crit_edge
  %i.bb = zext nneg i32 %.0114 to i64
  %.neg = sext i1 %i.p to i64
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %.neg
  br label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.lr.ph131
  %indvars.iv144 = phi i64 [ %i.bb, %.lr.ph131.preheader ], [ %indvars.iv.next145, %.lr.ph131 ] ; 4 uses
  %.0108128 = phi i32 [ %i.az, %.lr.ph131.preheader ], [ %i.bt, %.lr.ph131 ]
  %.0109127 = phi i32 [ %i.av, %.lr.ph131.preheader ], [ %i.bi, %.lr.ph131 ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv144
  %i.bc = load double, ptr %gep, align 8, !tbaa !24
  %i.bd = sitofp i32 %.0108128 to double
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.bc, double %i.bd)
  %i.bf = fadd double %i.be, 5.000000e-01
  %i.bg = fmul double %i.g, %i.bf                 ; 2 uses
  %i.bh = fptosi double %i.bg to i32
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  %i.bj = sitofp i32 %i.bi to double              ; 2 uses
  %i.bk = fsub double %i.bg, %i.bj
  %i.bl = fmul double %i.bk, %i.d                 ; 2 uses
  %i.bm = fptosi double %i.bl to i32              ; 2 uses
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fsub double %i.bl, %i.bn
  %i.bp = fmul double %i.bo, %i.d
  %i.bq = fptosi double %i.bp to i32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv144
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %i.bq, ptr %i.bs, align 4, !tbaa !4
  %i.bt = add nsw i32 %.0109127, %i.bm            ; 2 uses
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, -1
  %i.bu = icmp samesign ugt i64 %indvars.iv144, 2
  br i1 %i.bu, label %.lr.ph131, label %._crit_edge132, !llvm.loop !139

._crit_edge132:                                   ; preds = %.lr.ph131, %._crit_edge
  %.pre-phi = phi double [ %i.aw, %._crit_edge ], [ %i.bj, %.lr.ph131 ]
  %.0108.lcssa = phi i32 [ %i.az, %._crit_edge ], [ %i.bt, %.lr.ph131 ]
  %i.bv = sitofp i32 %.0108.lcssa to double
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.d, double %.pre-phi, double %i.bv)
  %i.bx = fadd double %i.bw, 5.000000e-01         ; 2 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.t, double %i.bx)
  %.2113 = select i1 %i.p, double %i.bx, double %i.by ; 2 uses
  %i.bz = fmul double %i.f, %.2113
  %i.ca = fptosi double %i.bz to i32              ; 3 uses
  %i.cb = sitofp i32 %i.ca to double
  %i.cc = fneg double %i.d
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.cc, double %i.cb, double %.2113)
  %i.ce = fptosi double %i.cd to i32              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !4
  %i.cg = icmp sgt i32 %i.ca, 0
  br i1 %i.cg, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge132
  %i.ch = icmp sgt i32 %0, 1
  br i1 %i.ch, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %bb.b
  %5 = add nuw i32 %0, 1                          ; 2 uses
  %6 = zext i32 %5 to i64                         ; 3 uses
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 3)
  %8 = sub i32 %0, %7
  %9 = add i32 %8, 1                              ; 2 uses
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %9, 7
  br i1 %min.iters.check, label %.lr.ph137.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.vec = and i64 %11, 8589934584                ; 3 uses
  %12 = sub nsw i64 %6, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %13 = sub i64 %6, %index
  %14 = getelementptr [4 x i8], ptr %4, i64 %13   ; 4 uses
  %15 = getelementptr i8, ptr %14, i64 -16
  %16 = getelementptr i8, ptr %14, i64 -32
  %wide.load = load <4 x i32>, ptr %15, align 4, !tbaa !4
  %wide.load161 = load <4 x i32>, ptr %16, align 4, !tbaa !4
  %i.ci = getelementptr i8, ptr %14, i64 -12
  %17 = getelementptr i8, ptr %14, i64 -28
  store <4 x i32> %wide.load, ptr %i.ci, align 4, !tbaa !4
  store <4 x i32> %wide.load161, ptr %17, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %._crit_edge138, label %.lr.ph137.preheader162

.lr.ph137.preheader162:                           ; preds = %.lr.ph137.preheader, %middle.block
  %indvars.iv150.ph = phi i64 [ %6, %.lr.ph137.preheader ], [ %12, %middle.block ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader162, %.lr.ph137
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph137 ], [ %indvars.iv150.ph, %.lr.ph137.preheader162 ] ; 3 uses
  %19 = getelementptr [4 x i8], ptr %4, i64 %indvars.iv150 ; 2 uses
  %20 = getelementptr i8, ptr %19, i64 -4
  %21 = load i32, ptr %20, align 4, !tbaa !4
  store i32 %21, ptr %19, align 4, !tbaa !4
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, -1
  %22 = trunc nuw i64 %indvars.iv150 to i32
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %.lr.ph137, label %._crit_edge138, !llvm.loop !141

._crit_edge138:                                   ; preds = %.lr.ph137, %middle.block, %bb.b
  store i32 %i.ca, ptr %i.cf, align 4, !tbaa !4
  %i.cj = select i1 %i.p, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge138, %._crit_edge132
  %i.ck = phi i32 [ 1, %._crit_edge138 ], [ %i.ce, %._crit_edge132 ]
  %.0110 = phi i32 [ %i.cj, %._crit_edge138 ], [ %i.q, %._crit_edge132 ]
  %i.cl = load double, ptr %3, align 8, !tbaa !24
  %i.cm = uitofp nneg i32 %.0110 to double
  %i.cn = fadd double %i.cl, %i.cm
  %i.co = fadd double %i.cn, 5.000000e-01         ; 2 uses
  %i.cp = fptosi double %i.co to i32
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  %i.cr = sitofp i32 %i.cq to double
  %i.cs = fsub double %i.co, %i.cr
  %i.ct = fptosi double %i.cs to i32
  %i.cu = add nsw i32 %i.cq, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !4
  %i.cw = fcmp ogt double %i.k, 5.000000e-01
  %i.cx = select i1 %i.cw, i32 1, i32 -1
  store i32 %i.cx, ptr %4, align 4, !tbaa !4
  %i.cy = icmp eq i32 %i.ck, 0
  br i1 %i.cy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %4, align 4, !tbaa !4
  store i32 0, ptr %i.cv, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_mul_cmuladd(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call double @llvm.fmuladd.f64(double %i.b, double %i.d, double %i.f)
  store double %i.g, ptr %i.e, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load double, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !24
  %i.n = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.m)
  store double %i.n, ptr %i.l, align 8, !tbaa !24
  %i.o = icmp sgt i32 %0, 3
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.p = zext nneg i32 %0 to i64                  ; 3 uses
  %i.q = tail call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.r = add nsw i64 %i.q, -4                     ; 2 uses
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw nsw i64 %i.s, 1                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 10
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %3, i64 24     ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.u = shl nuw nsw i64 %umax, 3
  %i.v = or i64 %i.u, 8                           ; 3 uses
  %scevgep37 = getelementptr i8, ptr %3, i64 %i.v ; 2 uses
  %scevgep38 = getelementptr i8, ptr %1, i64 24
  %scevgep39 = getelementptr i8, ptr %1, i64 %i.v
  %scevgep40 = getelementptr i8, ptr %2, i64 24
  %scevgep41 = getelementptr i8, ptr %2, i64 %i.v
  %bound0 = icmp ult ptr %scevgep, %scevgep39
  %bound1 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %scevgep, %scevgep41
  %bound143 = icmp ult ptr %scevgep40, %scevgep37
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  br i1 %conflict.rdx, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775806      ; 2 uses
  %i.w = shl nuw i64 %i.t, 1
  %i.x = or i64 %i.w, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl nuw i64 %index, 1
  %i.z = or disjoint i64 %i.y, 3                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %wide.vec = load <4 x double>, ptr %i.aa, align 8, !tbaa !24, !alias.scope !142 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec45 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %wide.vec46 = load <4 x double>, ptr %i.ab, align 8, !tbaa !24, !alias.scope !145 ; 2 uses
  %strided.vec47 = shufflevector <4 x double> %wide.vec46, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec48 = shufflevector <4 x double> %wide.vec46, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ac = fneg <2 x double> %strided.vec48
  %i.ad = fmul <2 x double> %strided.vec45, %i.ac
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec47, <2 x double> %i.ad)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.z ; 2 uses
  %wide.vec49 = load <4 x double>, ptr %i.af, align 8, !tbaa !24, !alias.scope !147, !noalias !149 ; 2 uses
  %strided.vec50 = shufflevector <4 x double> %wide.vec49, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec51 = shufflevector <4 x double> %wide.vec49, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ag = fadd <2 x double> %strided.vec50, %i.ae
  %i.ah = fmul <2 x double> %strided.vec45, %strided.vec47
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec48, <2 x double> %i.ah)
  %i.aj = fadd <2 x double> %i.ai, %strided.vec51
  %interleaved.vec = shufflevector <2 x double> %i.ag, <2 x double> %i.aj, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.af, align 8, !tbaa !24, !alias.scope !147, !noalias !149
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader52

.lr.ph.preheader52:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader52, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader52 ] ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.am = load double, ptr %i.al, align 8, !tbaa !24
  %i.an = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.an
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !24
  %i.au = load <2 x double>, ptr %i.aq, align 8, !tbaa !24 ; 2 uses
  %i.av = fneg double %i.at
  %i.aw = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x double> %i.ay, double %i.av, i64 0
  %i.ba = fmul <2 x double> %i.ax, %i.az
  %i.bb = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.au, <2 x double> %i.ba)
  %i.be = load <2 x double>, ptr %i.as, align 8, !tbaa !24
  %i.bf = fadd <2 x double> %i.be, %i.bd
  store <2 x double> %i.bf, ptr %i.as, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bg = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.bh = add nsw i32 %0, 1
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !24
  %i.bl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !24
  %i.bn = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bi ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !24
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bm, double %i.bo)
  store double %i.bp, ptr %i.bn, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_mulh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = ashr i32 %5, 1                           ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %.not.i = icmp slt i32 %i.d, %0
  %spec.select.i = select i1 %.not.i, i32 %i.e, i32 %0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.045.i = phi i32 [ 0, %bb.a ], [ %spec.select.i, %bb.b ] ; 5 uses
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]   ; 2 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !4
  %i.g = mul nsw i32 %i.f, %.0.i
  %i.h = sitofp i32 %i.g to double
  %i.i = sext i32 %5 to i64                       ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %6, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store double %i.h, ptr %i.k, align 8, !tbaa !24
  %i.l = icmp sgt i32 %5, %.045.i
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.m = xor i32 %.045.i, -1
  %i.n = add i32 %5, %i.m
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = sub nsw i64 %i.i, %i.o
  %i.r = shl nsw i64 %i.q, 3
  %scevgep.i = getelementptr i8, ptr %6, i64 %i.r
  %i.s = add nuw nsw i64 %i.p, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.s, i1 false), !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.c
  %i.t = icmp sgt i32 %.045.i, 1
  br i1 %i.t, label %bb.d, label %mp_mul_i2d.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.u = sdiv i32 %1, 2
  %.not58.i = icmp eq i32 %.045.i, 2
  br i1 %.not58.i, label %._crit_edge57.i, label %.lr.ph56.preheader.i

.lr.ph56.preheader.i:                             ; preds = %bb.d
  %i.v = add nuw i32 %.045.i, 1
  %i.w = sext i32 %i.v to i64
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i, %.lr.ph56.preheader.i
  %indvars.iv.i = phi i64 [ %i.w, %.lr.ph56.preheader.i ], [ %indvars.iv.next.i, %.lr.ph56.i ] ; 4 uses
  %.04653.i = phi i32 [ 0, %.lr.ph56.preheader.i ], [ %i.z, %.lr.ph56.i ]
  %gep.i = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.x = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.y = sub nsw i32 %i.x, %.04653.i              ; 2 uses
  %.not51.i = icmp sge i32 %i.y, %i.u             ; 2 uses
  %i.z = sext i1 %.not51.i to i32                 ; 2 uses
  %i.aa = select i1 %.not51.i, i32 %1, i32 0
  %i.ab = sub nsw i32 %i.y, %i.aa
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = getelementptr [8 x i8], ptr %6, i64 %indvars.iv.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  store double %i.ac, ptr %i.ae, align 8, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.af = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.af, label %.lr.ph56.i, label %._crit_edge57.i, !llvm.loop !63

._crit_edge57.i:                                  ; preds = %.lr.ph56.i, %bb.d
  %.046.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.z, %.lr.ph56.i ]
  %i.ag = getelementptr i8, ptr %2, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = sub nsw i32 %i.ah, %.046.lcssa.i
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.aj, ptr %i.ak, align 8, !tbaa !24
  br label %mp_mul_i2d.exit

mp_mul_i2d.exit:                                  ; preds = %._crit_edge.i, %._crit_edge57.i
  %i.al = sitofp i32 %.0.i to double
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store double %i.al, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to double
  store double %i.ap, ptr %6, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %i.am, ptr noundef %8, ptr noundef %9) #21
  br i1 %i.a, label %bb.e, label %bb.f

bb.e:                                             ; preds = %mp_mul_i2d.exit
  %i.aq = getelementptr i8, ptr %3, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = ashr i32 %5, 1                          ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  %.not.i45 = icmp slt i32 %i.as, %0
  %spec.select.i46 = select i1 %.not.i45, i32 %i.at, i32 %0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mp_mul_i2d.exit
  %.045.i29 = phi i32 [ 0, %mp_mul_i2d.exit ], [ %spec.select.i46, %bb.e ] ; 5 uses
  %.0.i30 = phi i32 [ 0, %mp_mul_i2d.exit ], [ %i.ar, %bb.e ] ; 2 uses
  %i.au = load i32, ptr %3, align 4, !tbaa !4
  %i.av = mul nsw i32 %i.au, %.0.i30
  %i.aw = sitofp i32 %i.av to double
  %i.ax = getelementptr [8 x i8], ptr %7, i64 %i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  store double %i.aw, ptr %i.ay, align 8, !tbaa !24
  %i.az = icmp sgt i32 %5, %.045.i29
  br i1 %i.az, label %.lr.ph.preheader.i43, label %._crit_edge.i31

.lr.ph.preheader.i43:                             ; preds = %bb.f
  %i.ba = xor i32 %.045.i29, -1
  %i.bb = add i32 %5, %i.ba
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = sub nsw i64 %i.i, %i.bc
  %i.bf = shl nsw i64 %i.be, 3
  %scevgep.i44 = getelementptr i8, ptr %7, i64 %i.bf
  %i.bg = add nuw nsw i64 %i.bd, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i44, i8 0, i64 %i.bg, i1 false), !tbaa !24
  br label %._crit_edge.i31

._crit_edge.i31:                                  ; preds = %.lr.ph.preheader.i43, %bb.f
  %i.bh = icmp sgt i32 %.045.i29, 1
  br i1 %i.bh, label %bb.g, label %mp_mul_i2d.exit47

bb.g:                                             ; preds = %._crit_edge.i31
  %i.bi = sdiv i32 %1, 2
  %.not58.i32 = icmp eq i32 %.045.i29, 2
  br i1 %.not58.i32, label %._crit_edge57.i40, label %.lr.ph56.preheader.i33

.lr.ph56.preheader.i33:                           ; preds = %bb.g
  %i.bj = add nuw i32 %.045.i29, 1
  %i.bk = sext i32 %i.bj to i64
  br label %.lr.ph56.i34

.lr.ph56.i34:                                     ; preds = %.lr.ph56.i34, %.lr.ph56.preheader.i33
  %indvars.iv.i35 = phi i64 [ %i.bk, %.lr.ph56.preheader.i33 ], [ %indvars.iv.next.i39, %.lr.ph56.i34 ] ; 4 uses
  %.04653.i36 = phi i32 [ 0, %.lr.ph56.preheader.i33 ], [ %i.bn, %.lr.ph56.i34 ]
  %gep.i37 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.i35
  %i.bl = load i32, ptr %gep.i37, align 4, !tbaa !4
  %i.bm = sub nsw i32 %i.bl, %.04653.i36          ; 2 uses
  %.not51.i38 = icmp sge i32 %i.bm, %i.bi         ; 2 uses
  %i.bn = sext i1 %.not51.i38 to i32              ; 2 uses
  %i.bo = select i1 %.not51.i38, i32 %1, i32 0
  %i.bp = sub nsw i32 %i.bm, %i.bo
  %i.bq = sitofp i32 %i.bp to double
  %i.br = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.i35
  %i.bs = getelementptr i8, ptr %i.br, i64 -8
  store double %i.bq, ptr %i.bs, align 8, !tbaa !24
  %indvars.iv.next.i39 = add nsw i64 %indvars.iv.i35, -1
  %i.bt = icmp sgt i64 %indvars.iv.i35, 4
  br i1 %i.bt, label %.lr.ph56.i34, label %._crit_edge57.i40, !llvm.loop !63

._crit_edge57.i40:                                ; preds = %.lr.ph56.i34, %bb.g
  %.046.lcssa.i41 = phi i32 [ 0, %bb.g ], [ %i.bn, %.lr.ph56.i34 ]
  %i.bu = getelementptr i8, ptr %3, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = sub nsw i32 %i.bv, %.046.lcssa.i41
  %i.bx = sitofp i32 %i.bw to double
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.bx, ptr %i.by, align 8, !tbaa !24
  br label %mp_mul_i2d.exit47

mp_mul_i2d.exit47:                                ; preds = %._crit_edge.i31, %._crit_edge57.i40
  %i.bz = sitofp i32 %.0.i30 to double
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store double %i.bz, ptr %i.ca, align 8, !tbaa !24
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cd = sitofp i32 %i.cc to double
  store double %i.cd, ptr %7, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %i.ca, ptr noundef %8, ptr noundef %9) #21
  %i.ce = load double, ptr %6, align 8, !tbaa !24
  %i.cf = load double, ptr %7, align 8, !tbaa !24
  %i.cg = fadd double %i.ce, %i.cf
  store double %i.cg, ptr %7, align 8, !tbaa !24
  %i.ch = load double, ptr %i.am, align 8, !tbaa !24
  %i.ci = load double, ptr %i.ca, align 8, !tbaa !24
  %i.cj = fmul double %i.ch, %i.ci
  store double %i.cj, ptr %i.ca, align 8, !tbaa !24
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !24
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !24
  %i.co = fmul double %i.cl, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !24
  %i.cp = icmp sgt i32 %5, 3
  br i1 %i.cp, label %.lr.ph.preheader.i49, label %mp_mul_cmul.exit

.lr.ph.preheader.i49:                             ; preds = %mp_mul_i2d.exit47
  %i.cq = zext nneg i32 %5 to i64                 ; 3 uses
  %i.cr = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 5)
  %i.cs = add nsw i64 %i.cr, -4                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 1
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i49
  %scevgep = getelementptr i8, ptr %7, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 5)
  %i.cv = shl nuw nsw i64 %umax, 3
  %i.cw = or i64 %i.cv, 8                         ; 2 uses
  %scevgep58 = getelementptr i8, ptr %7, i64 %i.cw
  %scevgep59 = getelementptr i8, ptr %6, i64 24
  %scevgep60 = getelementptr i8, ptr %6, i64 %i.cw
  %bound0 = icmp ult ptr %scevgep, %scevgep60
  %bound1 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cu, 9223372036854775806     ; 2 uses
  %i.cx = shl nuw i64 %i.cu, 1
  %i.cy = or i64 %i.cx, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl nuw i64 %index, 1
  %i.da = or disjoint i64 %i.cz, 3                ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.da
  %wide.vec = load <4 x double>, ptr %i.db, align 8, !tbaa !24, !alias.scope !152 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec61 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.da ; 2 uses
  %wide.vec62 = load <4 x double>, ptr %i.dc, align 8, !tbaa !24, !alias.scope !155, !noalias !152 ; 2 uses
  %strided.vec63 = shufflevector <4 x double> %wide.vec62, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec64 = shufflevector <4 x double> %wide.vec62, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dd = fneg <2 x double> %strided.vec64
  %i.de = fmul <2 x double> %strided.vec61, %i.dd
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec63, <2 x double> %i.de)
  %i.dg = fmul <2 x double> %strided.vec61, %strided.vec63
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec64, <2 x double> %i.dg)
  %interleaved.vec = shufflevector <2 x double> %i.df, <2 x double> %i.dh, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.dc, align 8, !tbaa !24, !alias.scope !155, !noalias !152
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %mp_mul_cmul.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i49, %middle.block
  %indvars.iv.i50.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader.i49 ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %.lr.ph.i ], [ %indvars.iv.i50.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i50
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !24
  %i.dl = add nuw nsw i64 %indvars.iv.i50, 1      ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !24
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i50 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.dl
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !24
  %i.dr = load <2 x double>, ptr %i.do, align 8, !tbaa !24 ; 2 uses
  %i.ds = fneg double %i.dq
  %i.dt = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = insertelement <2 x double> %i.dv, double %i.ds, i64 0
  %i.dx = fmul <2 x double> %i.du, %i.dw
  %i.dy = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.dr, <2 x double> %i.dx)
  store <2 x double> %i.ea, ptr %i.do, align 8, !tbaa !24
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %i.eb = icmp samesign ult i64 %indvars.iv.next.i51, %i.cq
  br i1 %i.eb, label %.lr.ph.i, label %mp_mul_cmul.exit, !llvm.loop !158

mp_mul_cmul.exit:                                 ; preds = %.lr.ph.i, %middle.block, %mp_mul_i2d.exit47
  %i.ec = add nsw i32 %5, 1
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %6, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !24
  %i.eg = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ed ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24
  %i.ei = fmul double %i.ef, %i.eh
  store double %i.ei, ptr %i.eg, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %i.ca, ptr noundef %8, ptr noundef %9) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_mulh_use_in1fft(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, %3
  br i1 %i.a, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.c = getelementptr [4 x i8], ptr %4, i64 %indvars.iv
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !159

bb.c:                                             ; preds = %.lr.ph
  %i.f = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.g = ashr i32 %6, 1                           ; 2 uses
  %i.h = add nsw i32 %i.g, 1
  %i.i = sub nsw i32 %0, %i.f                     ; 2 uses
  %.not.i = icmp slt i32 %i.g, %i.i
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 %i.i
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.031 = phi i32 [ %i.f, %bb.c ], [ %3, %bb.a ], [ %0, %bb.b ] ; 3 uses
  %.045.i = phi i32 [ %spec.select.i, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %.0.i = phi i32 [ %i.e, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.j = load i32, ptr %4, align 4, !tbaa !4
  %i.k = mul nsw i32 %i.j, %.0.i
  %i.l = sitofp i32 %i.k to double
  %i.m = sext i32 %6 to i64                       ; 2 uses
  %i.n = getelementptr [8 x i8], ptr %7, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store double %i.l, ptr %i.o, align 8, !tbaa !24
  %i.p = icmp sgt i32 %6, %.045.i
  br i1 %i.p, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.loopexit
  %i.q = xor i32 %.045.i, -1
  %i.r = add i32 %6, %i.q
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = sub nsw i64 %i.m, %i.s
  %i.v = shl nsw i64 %i.u, 3
  %scevgep.i = getelementptr i8, ptr %7, i64 %i.v
  %i.w = add nuw nsw i64 %i.t, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.w, i1 false), !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %.loopexit
  %i.x = icmp sgt i32 %.045.i, 1
  br i1 %i.x, label %bb.d, label %mp_mul_i2d.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.y = sdiv i32 %1, 2
  %.not58.i = icmp eq i32 %.045.i, 2
  br i1 %.not58.i, label %.._crit_edge57_crit_edge.i, label %.lr.ph56.preheader.i

.._crit_edge57_crit_edge.i:                       ; preds = %bb.d
  %.pre.i = sext i32 %.031 to i64
  br label %._crit_edge57.i

.lr.ph56.preheader.i:                             ; preds = %bb.d
  %i.z = add nuw i32 %.045.i, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = sext i32 %.031 to i64                   ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %4, i64 %i.ab
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i, %.lr.ph56.preheader.i
  %indvars.iv.i = phi i64 [ %i.aa, %.lr.ph56.preheader.i ], [ %indvars.iv.next.i, %.lr.ph56.i ] ; 4 uses
  %.04653.i = phi i32 [ 0, %.lr.ph56.preheader.i ], [ %i.ae, %.lr.ph56.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ac = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.ad = sub nsw i32 %i.ac, %.04653.i            ; 2 uses
  %.not51.i = icmp sge i32 %i.ad, %i.y            ; 2 uses
  %i.ae = sext i1 %.not51.i to i32                ; 2 uses
  %i.af = select i1 %.not51.i, i32 %1, i32 0
  %i.ag = sub nsw i32 %i.ad, %i.af
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 -8
  store double %i.ah, ptr %i.aj, align 8, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ak = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.ak, label %.lr.ph56.i, label %._crit_edge57.i, !llvm.loop !63

._crit_edge57.i:                                  ; preds = %.lr.ph56.i, %.._crit_edge57_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge57_crit_edge.i ], [ %i.ab, %.lr.ph56.i ]
  %.046.lcssa.i = phi i32 [ 0, %.._crit_edge57_crit_edge.i ], [ %i.ae, %.lr.ph56.i ]
  %i.al = getelementptr [4 x i8], ptr %4, i64 %.pre-phi.i
  %i.am = getelementptr i8, ptr %i.al, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = sub nsw i32 %i.an, %.046.lcssa.i
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.ap, ptr %i.aq, align 8, !tbaa !24
  br label %mp_mul_i2d.exit

mp_mul_i2d.exit:                                  ; preds = %._crit_edge.i, %._crit_edge57.i
  %i.ar = sitofp i32 %.0.i to double
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store double %i.ar, ptr %i.as, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sub nsw i32 %i.au, %.031
  %i.aw = sitofp i32 %i.av to double
  store double %i.aw, ptr %7, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %i.as, ptr noundef %8, ptr noundef %9) #21
  %i.ax = load double, ptr %2, align 8, !tbaa !24
  %i.ay = load double, ptr %7, align 8, !tbaa !24
  %i.az = fadd double %i.ax, %i.ay
  store double %i.az, ptr %7, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !24
  %i.bc = load double, ptr %i.as, align 8, !tbaa !24
  %i.bd = fmul double %i.bb, %i.bc
  store double %i.bd, ptr %i.as, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24
  %i.bi = fmul double %i.bf, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !24
  %i.bj = icmp sgt i32 %6, 3
  br i1 %i.bj, label %.lr.ph.preheader.i27, label %mp_mul_cmul.exit

.lr.ph.preheader.i27:                             ; preds = %mp_mul_i2d.exit
  %i.bk = zext nneg i32 %6 to i64                 ; 3 uses
  %i.bl = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 5)
  %i.bm = add nsw i64 %i.bl, -4                   ; 2 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 3 uses
  %min.iters.check = icmp ult i64 %i.bm, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i27
  %scevgep = getelementptr i8, ptr %7, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 5)
  %i.bp = shl nuw nsw i64 %umax, 3
  %i.bq = or i64 %i.bp, 8                         ; 2 uses
  %scevgep47 = getelementptr i8, ptr %7, i64 %i.bq
  %scevgep48 = getelementptr i8, ptr %2, i64 24
  %scevgep49 = getelementptr i8, ptr %2, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep, %scevgep49
  %bound1 = icmp ult ptr %scevgep48, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, 9223372036854775806     ; 2 uses
  %i.br = shl nuw i64 %i.bo, 1
  %i.bs = or i64 %i.br, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bt = shl nuw i64 %index, 1
  %i.bu = or disjoint i64 %i.bt, 3                ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bu
  %wide.vec = load <4 x double>, ptr %i.bv, align 8, !tbaa !24, !alias.scope !160 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec50 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bu ; 2 uses
  %wide.vec51 = load <4 x double>, ptr %i.bw, align 8, !tbaa !24, !alias.scope !163, !noalias !160 ; 2 uses
  %strided.vec52 = shufflevector <4 x double> %wide.vec51, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec53 = shufflevector <4 x double> %wide.vec51, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bx = fneg <2 x double> %strided.vec53
  %i.by = fmul <2 x double> %strided.vec50, %i.bx
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec52, <2 x double> %i.by)
  %i.ca = fmul <2 x double> %strided.vec50, %strided.vec52
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec53, <2 x double> %i.ca)
  %interleaved.vec = shufflevector <2 x double> %i.bz, <2 x double> %i.cb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.bw, align 8, !tbaa !24, !alias.scope !163, !noalias !160
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %mp_mul_cmul.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i27, %middle.block
  %indvars.iv.i28.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader.i27 ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %.lr.ph.i ], [ %indvars.iv.i28.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i28
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !24
  %i.cf = add nuw nsw i64 %indvars.iv.i28, 1      ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cf
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !24
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i28 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.cf
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !24
  %i.cl = load <2 x double>, ptr %i.ci, align 8, !tbaa !24 ; 2 uses
  %i.cm = fneg double %i.ck
  %i.cn = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cq = insertelement <2 x double> %i.cp, double %i.cm, i64 0
  %i.cr = fmul <2 x double> %i.co, %i.cq
  %i.cs = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cl, <2 x double> %i.cr)
  store <2 x double> %i.cu, ptr %i.ci, align 8, !tbaa !24
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 2 ; 2 uses
  %i.cv = icmp samesign ult i64 %indvars.iv.next.i29, %i.bk
  br i1 %i.cv, label %.lr.ph.i, label %mp_mul_cmul.exit, !llvm.loop !166

mp_mul_cmul.exit:                                 ; preds = %.lr.ph.i, %middle.block, %mp_mul_i2d.exit
  %i.cw = add nsw i32 %6, 1
  %i.cx = sext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !24
  %i.da = getelementptr inbounds [8 x i8], ptr %7, i64 %i.cx ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = fmul double %i.cz, %i.db
  store double %i.dc, ptr %i.da, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef -1, ptr noundef nonnull %i.as, ptr noundef %8, ptr noundef %9) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %6, ptr noundef nonnull %7, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_squh_use_in1fft(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = load <2 x double>, ptr %2, align 8, !tbaa !24 ; 2 uses
  %i.b = insertelement <2 x double> %i.a, double 2.000000e+00, i64 0
  %i.c = fmul <2 x double> %i.a, %i.b
  store <2 x double> %i.c, ptr %2, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !24 ; 2 uses
  %i.f = fmul double %i.e, %i.e
  store double %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = icmp sgt i32 %4, 3
  br i1 %i.g, label %.lr.ph.preheader.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.a
  %.pre.i = sext i32 %4 to i64
  br label %mp_mul_csqu.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = zext nneg i32 %4 to i64                  ; 4 uses
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 5)
  %i.j = add nsw i64 %i.i, -4
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 3 uses
  %min.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.l, 9223372036854775806      ; 2 uses
  %i.m = shl nuw i64 %i.l, 1
  %i.n = or i64 %i.m, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.p, align 8, !tbaa !24 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec11 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.q = fneg <2 x double> %strided.vec11
  %i.r = fmul <2 x double> %strided.vec11, %i.q
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec, <2 x double> %i.r)
  %i.t = fmul <2 x double> %strided.vec, splat (double 2.000000e+00)
  %i.u = fmul <2 x double> %i.t, %strided.vec11
  %interleaved.vec = shufflevector <2 x double> %i.s, <2 x double> %i.u, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.p, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !167

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %mp_mul_csqu.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 3, %.lr.ph.preheader.i ], [ %i.n, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i ; 3 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !24 ; 3 uses
  %i.aa = fneg double %i.z
  %i.ab = fmul double %i.z, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.ab)
  store double %i.ac, ptr %i.w, align 8, !tbaa !24
  %i.ad = fmul double %i.x, 2.000000e+00
  %i.ae = fmul double %i.ad, %i.z
  store double %i.ae, ptr %i.y, align 8, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.af = icmp samesign ult i64 %indvars.iv.next.i, %i.h
  br i1 %i.af, label %.lr.ph.i, label %mp_mul_csqu.exit, !llvm.loop !168

mp_mul_csqu.exit:                                 ; preds = %.lr.ph.i, %middle.block, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr [8 x i8], ptr %2, i64 %.pre-phi.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %4, i32 noundef -1, ptr noundef nonnull %i.ag, ptr noundef %5, ptr noundef %6) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef nonnull %2, ptr noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 0, -1) i32 @mp_get_nfft_init(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = sitofp i32 %0 to double
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ %i.c, %bb.b ]
  %.0 = phi double [ %i.a, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.b = fmul double %.0, %.0                     ; 2 uses
  %i.c = shl i32 %.07, 1                          ; 3 uses
  %i.d = fmul double %i.b, f0x3CB0000000000000
  %i.e = fcmp olt double %i.d, 1.000000e+00
  %i.f = icmp slt i32 %i.c, %1
  %i.g = select i1 %i.e, i1 %i.f, i1 false
  br i1 %i.g, label %bb.b, label %bb.c, !llvm.loop !44

bb.c:                                             ; preds = %bb.b
  ret i32 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @mp_inv_init(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4
  store i32 %i.a, ptr %3, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = sub nsw i32 0, %i.c                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = sitofp i32 %1 to double                  ; 6 uses
  %i.g = fdiv double 1.000000e+00, %i.f           ; 5 uses
  %i.h = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader.i, label %mp_unexp_mp2d.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.i = zext nneg i32 %0 to i64                  ; 3 uses
  %xtraiter = and i64 %i.i, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.i, %.lr.ph.preheader.i ]
  %.010.i.prol = phi double [ %i.m, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.prol
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = sitofp i32 %i.k to double
  %i.m = tail call double @llvm.fmuladd.f64(double %i.g, double %.010.i.prol, double %i.l) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !169

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.i, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.010.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %.lcssa32.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i32 %0, 4
  br i1 %i.n, label %mp_unexp_mp2d.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.010.i = phi double [ %i.af, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.o = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.p = getelementptr i8, ptr %i.o, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sitofp i32 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.g, double %.010.i, double %i.r)
  %i.t = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = sitofp i32 %i.u to double
  %i.w = tail call double @llvm.fmuladd.f64(double %i.g, double %i.s, double %i.v)
  %i.x = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.y = getelementptr i8, ptr %i.x, i64 -12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.g, double %i.w, double %i.aa)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i.3
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = sitofp i32 %i.ad to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ab, double %i.ae) ; 2 uses
  %i.ag = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.ag, label %.lr.ph.i, label %mp_unexp_mp2d.exit, !llvm.loop !45

mp_unexp_mp2d.exit:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa32.unr, %.lr.ph.i.prol.loopexit ], [ %i.af, %.lr.ph.i ]
  %i.ah = fdiv double 1.000000e+00, %.0.lcssa.i   ; 3 uses
  %i.ai = fcmp olt double %i.ah, 1.000000e+00
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mp_unexp_mp2d.exit, %.lr.ph
  %.020 = phi double [ %i.aj, %.lr.ph ], [ %i.ah, %mp_unexp_mp2d.exit ]
  %.01519 = phi i32 [ %i.ak, %.lr.ph ], [ %i.d, %mp_unexp_mp2d.exit ]
  %i.aj = fmul double %.020, %i.f                 ; 3 uses
  %i.ak = add nsw i32 %.01519, -1                 ; 2 uses
  %i.al = fcmp olt double %i.aj, 1.000000e+00
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %mp_unexp_mp2d.exit
  %.015.lcssa = phi i32 [ %i.d, %mp_unexp_mp2d.exit ], [ %i.ak, %.lr.ph ]
  %.0.lcssa = phi double [ %i.ah, %mp_unexp_mp2d.exit ], [ %i.aj, %.lr.ph ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.015.lcssa, ptr %i.am, align 4, !tbaa !4
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %i.h, label %.lr.ph.i16, label %mp_unexp_d2mp.exit

.lr.ph.i16:                                       ; preds = %._crit_edge
  %i.ao = add nsw i32 %1, -1                      ; 3 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 2 uses
  %xtraiter33 = and i64 %wide.trip.count.i, 1
  %i.ap = icmp eq i32 %0, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i16.new
  %indvars.iv.i17 = phi i64 [ 0, %.lr.ph.i16.new ], [ %indvars.iv.next.i18.1, %bb.b ] ; 3 uses
  %.01417.i = phi double [ %.0.lcssa, %.lr.ph.i16.new ], [ %i.ay, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.1, %bb.b ]
  %i.aq = fptosi double %.01417.i to i32          ; 2 uses
  %.not.i = icmp sgt i32 %1, %i.aq
  %.1.i = select i1 %.not.i, double %.01417.i, double %i.f
  %.0.i = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ao) ; 2 uses
  %i.ar = sitofp i32 %.0.i to double
  %i.as = fsub double %.1.i, %i.ar
  %i.at = fmul double %i.as, %i.f                 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i17
  store i32 %.0.i, ptr %i.au, align 4, !tbaa !4
  %i.av = fptosi double %i.at to i32              ; 2 uses
  %.not.i.1 = icmp sgt i32 %1, %i.av
  %.1.i.1 = select i1 %.not.i.1, double %i.at, double %i.f
  %.0.i.1 = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ao) ; 2 uses
  %i.aw = sitofp i32 %.0.i.1 to double
  %i.ax = fsub double %.1.i.1, %i.aw
  %i.ay = fmul double %i.ax, %i.f                 ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %.0.i.1, ptr %i.ba, align 4, !tbaa !4
  %indvars.iv.next.i18.1 = add nuw nsw i64 %indvars.iv.i17, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_unexp_d2mp.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !46

mp_unexp_d2mp.exit.loopexit.unr-lcssa:            ; preds = %bb.b
  %lcmp.mod34.not = icmp eq i64 %xtraiter33, 0
  br i1 %lcmp.mod34.not, label %mp_unexp_d2mp.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_unexp_d2mp.exit.loopexit.unr-lcssa, %.lr.ph.i16
  %indvars.iv.i17.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i18.1, %mp_unexp_d2mp.exit.loopexit.unr-lcssa ]
  %.01417.i.epil.init = phi double [ %.0.lcssa, %.lr.ph.i16 ], [ %i.ay, %mp_unexp_d2mp.exit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.bb = fptosi double %.01417.i.epil.init to i32
  %.0.i.epil = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %i.ao)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i17.epil.init
  store i32 %.0.i.epil, ptr %i.bc, align 4, !tbaa !4
  br label %mp_unexp_d2mp.exit

mp_unexp_d2mp.exit:                               ; preds = %.epil.preheader, %mp_unexp_d2mp.exit.loopexit.unr-lcssa, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @mp_inv_newton(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #7 {
bb.a:
  %i.a = ashr i32 %6, 1                           ; 5 uses
  %i.b = add nsw i32 %i.a, 1                      ; 3 uses
  %i.c = icmp slt i32 %i.b, %0
  br i1 %i.c, label %bb.b, label %mp_round.exit

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %i.a, 3                      ; 2 uses
  %.not45.i = icmp slt i32 %0, %i.d
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = add i32 %0, 1
  %i.f = sext i32 %i.e to i64
  %i.g = sub i32 %0, %i.a
  %i.h = add i32 %i.g, -3
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = sub nsw i64 %i.f, %i.i
  %i.l = shl nsw i64 %i.k, 2
  %scevgep.i = getelementptr i8, ptr %3, i64 %i.l
  %i.m = add nuw nsw i64 %i.j, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.m, i1 false), !tbaa !4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  %i.n = sext i32 %i.d to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %3, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = shl nsw i32 %i.p, 1
  store i32 0, ptr %i.o, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.q, %1
  br i1 %.not.i, label %mp_round.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.r = icmp sgt i32 %i.a, -1
  br i1 %i.r, label %.lr.ph44.preheader.i, label %.critedge.i

.lr.ph44.preheader.i:                             ; preds = %bb.c
  %i.s = add nuw nsw i32 %i.a, 2
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.e, %.lr.ph44.preheader.i
  %.13042.i = phi i32 [ %i.y, %bb.e ], [ %i.s, %.lr.ph44.preheader.i ] ; 3 uses
  %i.t = zext nneg i32 %.13042.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, 1                      ; 2 uses
  %i.x = icmp slt i32 %i.w, %1
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph44.i
  store i32 %i.w, ptr %i.u, align 4, !tbaa !4
  br label %mp_round.exit

bb.e:                                             ; preds = %.lr.ph44.i
  store i32 0, ptr %i.u, align 4, !tbaa !4
  %i.y = add nsw i32 %.13042.i, -1
  %i.z = icmp sgt i32 %.13042.i, 2
  br i1 %i.z, label %.lr.ph44.i, label %.critedge.i, !llvm.loop !114

.critedge.i:                                      ; preds = %bb.e, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.aa, align 4, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !4
  br label %mp_round.exit

mp_round.exit:                                    ; preds = %bb.a, %._crit_edge.i, %bb.d, %.critedge.i
  tail call void @mp_mulh(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 1, ptr %5, align 4, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.af, align 4, !tbaa !4
  %.not7.i = icmp slt i32 %0, 2
  br i1 %.not7.i, label %mp_load_1.exit, label %.lr.ph.preheader.i64

.lr.ph.preheader.i64:                             ; preds = %mp_round.exit
  %scevgep.i65 = getelementptr i8, ptr %5, i64 12
  %i.ag = add nsw i32 %0, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i65, i8 0, i64 %i.ai, i1 false), !tbaa !4
  br label %mp_load_1.exit

mp_load_1.exit:                                   ; preds = %mp_round.exit, %.lr.ph.preheader.i64
  %i.aj = sub nsw i32 %0, %i.b
  %i.ak = sdiv i32 %0, 2
  %i.al = add nsw i32 %i.ak, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %i.aj) ; 2 uses
  tail call void @mp_sub(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %5)
  tail call void @mp_mulh_use_in1fft(i32 noundef %0, i32 noundef %1, ptr noundef %7, i32 noundef %i.b, ptr noundef %2, ptr noundef %4, i32 noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  tail call void @mp_sub(i32 noundef %spec.select, i32 noundef %1, ptr noundef nonnull %5, ptr noundef %4, ptr noundef nonnull %5)
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.an = sub nsw i32 0, %i.am
  %i.ao = load i32, ptr %5, align 4, !tbaa !4
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = add nsw i32 %6, 1
  %.0 = select i1 %i.ap, i32 %i.aq, i32 %i.an
  tail call void @mp_mulh_use_in1fft(i32 noundef %spec.select, i32 noundef %1, ptr noundef %7, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %3)
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @mp_sqrt_init(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #15 {
bb.a:
  store i32 1, ptr %3, align 4, !tbaa !4
  store i32 1, ptr %4, align 4, !tbaa !4
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = sitofp i32 %1 to double                  ; 12 uses
  %i.e = fdiv double 1.000000e+00, %i.d           ; 5 uses
  %i.f = icmp sgt i32 %0, 0                       ; 3 uses
  br i1 %i.f, label %.lr.ph.preheader.i, label %mp_unexp_mp2d.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.g = zext nneg i32 %0 to i64                  ; 3 uses
  %xtraiter = and i64 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.g, %.lr.ph.preheader.i ]
  %.010.i.prol = phi double [ %i.k, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, -1 ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.prol
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = sitofp i32 %i.i to double
  %i.k = tail call double @llvm.fmuladd.f64(double %i.e, double %.010.i.prol, double %i.j) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !170

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.g, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.010.i.unr = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i.prol ]
  %.lcssa66.unr = phi double [ poison, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i.prol ]
  %i.l = icmp ult i32 %0, 4
  br i1 %i.l, label %mp_unexp_mp2d.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.010.i = phi double [ %i.ad, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.m = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = sitofp i32 %i.o to double
  %i.q = tail call double @llvm.fmuladd.f64(double %i.e, double %.010.i, double %i.p)
  %i.r = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = sitofp i32 %i.s to double
  %i.u = tail call double @llvm.fmuladd.f64(double %i.e, double %i.q, double %i.t)
  %i.v = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.w = getelementptr i8, ptr %i.v, i64 -12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sitofp i32 %i.x to double
  %i.z = tail call double @llvm.fmuladd.f64(double %i.e, double %i.u, double %i.y)
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, -4 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.3
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.e, double %i.z, double %i.ac) ; 2 uses
  %i.ae = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.ae, label %.lr.ph.i, label %mp_unexp_mp2d.exit, !llvm.loop !45

mp_unexp_mp2d.exit:                               ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa66.unr, %.lr.ph.i.prol.loopexit ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %.not = trunc i32 %i.b to i1
  %i.af = fmul double %.0.lcssa.i, %i.d
  %.0 = select i1 %.not, double %i.af, double %.0.lcssa.i
  %i.ag = ashr i32 %i.b, 1
  %i.ah = tail call double @sqrt(double noundef %.0) #21, !tbaa !4 ; 3 uses
  %i.ai = fcmp olt double %i.ah, 1.000000e+00     ; 2 uses
  %i.aj = fmul double %i.ah, %i.d
  %i.ak = sext i1 %i.ai to i32
  %.134 = add nsw i32 %i.ag, %i.ak                ; 2 uses
  %.1 = select i1 %i.ai, double %i.aj, double %i.ah ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.134, ptr %i.al, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %i.f, label %.lr.ph.i38, label %mp_unexp_d2mp.exit

.lr.ph.i38:                                       ; preds = %mp_unexp_mp2d.exit
  %i.an = add nsw i32 %1, -1                      ; 3 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 2 uses
  %xtraiter67 = and i64 %wide.trip.count.i, 1
  %i.ao = icmp eq i32 %0, 1
  br i1 %i.ao, label %.epil.preheader, label %.lr.ph.i38.new

.lr.ph.i38.new:                                   ; preds = %.lr.ph.i38
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i38.new
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i38.new ], [ %indvars.iv.next.i40.1, %bb.b ] ; 3 uses
  %.01417.i = phi double [ %.1, %.lr.ph.i38.new ], [ %i.ax, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i38.new ], [ %niter.next.1, %bb.b ]
  %i.ap = fptosi double %.01417.i to i32          ; 2 uses
  %.not.i = icmp sgt i32 %1, %i.ap
  %.1.i = select i1 %.not.i, double %.01417.i, double %i.d
  %.0.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.an) ; 2 uses
  %i.aq = sitofp i32 %.0.i to double
  %i.ar = fsub double %.1.i, %i.aq
  %i.as = fmul double %i.ar, %i.d                 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i39
  store i32 %.0.i, ptr %i.at, align 4, !tbaa !4
  %i.au = fptosi double %i.as to i32              ; 2 uses
  %.not.i.1 = icmp sgt i32 %1, %i.au
  %.1.i.1 = select i1 %.not.i.1, double %i.as, double %i.d
  %.0.i.1 = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.an) ; 2 uses
  %i.av = sitofp i32 %.0.i.1 to double
  %i.aw = fsub double %.1.i.1, %i.av
  %i.ax = fmul double %i.aw, %i.d                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 %.0.i.1, ptr %i.az, align 4, !tbaa !4
  %indvars.iv.next.i40.1 = add nuw nsw i64 %indvars.iv.i39, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_unexp_d2mp.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !46

mp_unexp_d2mp.exit.loopexit.unr-lcssa:            ; preds = %bb.b
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %mp_unexp_d2mp.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_unexp_d2mp.exit.loopexit.unr-lcssa, %.lr.ph.i38
  %indvars.iv.i39.epil.init = phi i64 [ 0, %.lr.ph.i38 ], [ %indvars.iv.next.i40.1, %mp_unexp_d2mp.exit.loopexit.unr-lcssa ]
  %.01417.i.epil.init = phi double [ %.1, %.lr.ph.i38 ], [ %i.ax, %mp_unexp_d2mp.exit.loopexit.unr-lcssa ]
  %lcmp.mod69 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod69)
  %i.ba = fptosi double %.01417.i.epil.init to i32
  %.0.i.epil = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.an)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i39.epil.init
  store i32 %.0.i.epil, ptr %i.bb, align 4, !tbaa !4
  br label %mp_unexp_d2mp.exit

mp_unexp_d2mp.exit:                               ; preds = %.epil.preheader, %mp_unexp_d2mp.exit.loopexit.unr-lcssa, %mp_unexp_mp2d.exit
  %i.bc = sub nsw i32 0, %.134                    ; 2 uses
  %i.bd = fdiv double 1.000000e+00, %.1           ; 3 uses
  %i.be = fcmp olt double %i.bd, 1.000000e+00
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mp_unexp_d2mp.exit, %.lr.ph
  %.252 = phi double [ %i.bf, %.lr.ph ], [ %i.bd, %mp_unexp_d2mp.exit ]
  %.23551 = phi i32 [ %i.bg, %.lr.ph ], [ %i.bc, %mp_unexp_d2mp.exit ]
  %i.bf = fmul double %.252, %i.d                 ; 3 uses
  %i.bg = add nsw i32 %.23551, -1                 ; 2 uses
  %i.bh = fcmp olt double %i.bf, 1.000000e+00
  br i1 %i.bh, label %.lr.ph, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %mp_unexp_d2mp.exit
  %.235.lcssa = phi i32 [ %i.bc, %mp_unexp_d2mp.exit ], [ %i.bg, %.lr.ph ]
  %.2.lcssa = phi double [ %i.bd, %mp_unexp_d2mp.exit ], [ %i.bf, %.lr.ph ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.235.lcssa, ptr %i.bi, align 4, !tbaa !4
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br i1 %i.f, label %.lr.ph.i41, label %mp_unexp_d2mp.exit50

.lr.ph.i41:                                       ; preds = %._crit_edge
  %i.bk = add nsw i32 %1, -1                      ; 3 uses
  %wide.trip.count.i42 = zext nneg i32 %0 to i64  ; 2 uses
  %xtraiter71 = and i64 %wide.trip.count.i42, 1
  %i.bl = icmp eq i32 %0, 1
  br i1 %i.bl, label %.epil.preheader70, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.lr.ph.i41
  %unroll_iter74 = and i64 %wide.trip.count.i42, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i41.new
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.i41.new ], [ %indvars.iv.next.i48.1, %bb.c ] ; 3 uses
  %.01417.i44 = phi double [ %.2.lcssa, %.lr.ph.i41.new ], [ %i.bu, %bb.c ] ; 2 uses
  %niter75 = phi i64 [ 0, %.lr.ph.i41.new ], [ %niter75.next.1, %bb.c ]
  %i.bm = fptosi double %.01417.i44 to i32        ; 2 uses
  %.not.i45 = icmp sgt i32 %1, %i.bm
  %.1.i46 = select i1 %.not.i45, double %.01417.i44, double %i.d
  %.0.i47 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bk) ; 2 uses
  %i.bn = sitofp i32 %.0.i47 to double
  %i.bo = fsub double %.1.i46, %i.bn
  %i.bp = fmul double %i.bo, %i.d                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i43
  store i32 %.0.i47, ptr %i.bq, align 4, !tbaa !4
  %i.br = fptosi double %i.bp to i32              ; 2 uses
  %.not.i45.1 = icmp sgt i32 %1, %i.br
  %.1.i46.1 = select i1 %.not.i45.1, double %i.bp, double %i.d
  %.0.i47.1 = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %i.bk) ; 2 uses
  %i.bs = sitofp i32 %.0.i47.1 to double
  %i.bt = fsub double %.1.i46.1, %i.bs
  %i.bu = fmul double %i.bt, %i.d                 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i43
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %.0.i47.1, ptr %i.bw, align 4, !tbaa !4
  %indvars.iv.next.i48.1 = add nuw nsw i64 %indvars.iv.i43, 2 ; 2 uses
  %niter75.next.1 = add i64 %niter75, 2           ; 2 uses
  %niter75.ncmp.1 = icmp eq i64 %niter75.next.1, %unroll_iter74
  br i1 %niter75.ncmp.1, label %mp_unexp_d2mp.exit50.loopexit.unr-lcssa, label %bb.c, !llvm.loop !46

mp_unexp_d2mp.exit50.loopexit.unr-lcssa:          ; preds = %bb.c
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %mp_unexp_d2mp.exit50, label %.epil.preheader70

.epil.preheader70:                                ; preds = %mp_unexp_d2mp.exit50.loopexit.unr-lcssa, %.lr.ph.i41
  %indvars.iv.i43.epil.init = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i48.1, %mp_unexp_d2mp.exit50.loopexit.unr-lcssa ]
  %.01417.i44.epil.init = phi double [ %.2.lcssa, %.lr.ph.i41 ], [ %i.bu, %mp_unexp_d2mp.exit50.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.bx = fptosi double %.01417.i44.epil.init to i32
  %.0.i47.epil = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %i.bk)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i43.epil.init
  store i32 %.0.i47.epil, ptr %i.by, align 4, !tbaa !4
  br label %mp_unexp_d2mp.exit50

mp_unexp_d2mp.exit50:                             ; preds = %.epil.preheader70, %mp_unexp_d2mp.exit50.loopexit.unr-lcssa, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mp_sqrt_newton(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef captures(none) %11) local_unnamed_addr #7 {
bb.a:
  %i.a = ashr i32 %6, 1                           ; 11 uses
  %i.b = add nsw i32 %i.a, 1                      ; 3 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.a, i32 2) ; 6 uses
  %i.c = sdiv i32 %0, 2
  %i.d = add nsw i32 %i.c, 1
  %i.e = sub nsw i32 %0, %i.b
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.d, i32 %i.e) ; 16 uses
  %i.f = lshr i32 %spec.store.select, 1           ; 4 uses
  %i.g = add nuw nsw i32 %i.f, 1
  %i.h = icmp slt i32 %i.g, %spec.select
  br i1 %i.h, label %bb.b, label %mp_round.exit

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.f, 3                  ; 2 uses
  %.not45.i = icmp samesign ult i32 %spec.select, %i.i
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.j = add nuw i32 %spec.select, 1
  %i.k = sext i32 %i.j to i64
  %i.l = sub nuw nsw i32 %spec.select, %i.f
  %i.m = add nsw i32 %i.l, -3
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = sub nsw i64 %i.k, %i.n
  %i.q = shl nsw i64 %i.p, 2
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.q
  %i.r = add nuw nsw i64 %i.o, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.r, i1 false), !tbaa !4
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.b
  %i.s = zext nneg i32 %i.i to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = shl nsw i32 %i.u, 1
  store i32 0, ptr %i.t, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.v, %1
  br i1 %.not.i, label %mp_round.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.w = add nuw nsw i32 %i.f, 2
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.e, %bb.c
  %.13042.i = phi i32 [ %i.ac, %bb.e ], [ %i.w, %bb.c ] ; 3 uses
  %i.x = zext nneg i32 %.13042.i to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.x ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, 1                     ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph44.i
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !4
  br label %mp_round.exit

bb.e:                                             ; preds = %.lr.ph44.i
  store i32 0, ptr %i.y, align 4, !tbaa !4
  %i.ac = add nsw i32 %.13042.i, -1
  %i.ad = icmp sgt i32 %.13042.i, 2
  br i1 %i.ad, label %.lr.ph44.i, label %.critedge.i, !llvm.loop !114

.critedge.i:                                      ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.ae, align 4, !tbaa !4
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !4
  br label %mp_round.exit

mp_round.exit:                                    ; preds = %bb.a, %._crit_edge.i, %bb.d, %.critedge.i
  %i.ai = load i32, ptr %11, align 4, !tbaa !4
  %.not = icmp eq i32 %i.ai, %spec.store.select
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %mp_round.exit
  tail call void @mp_squh(i32 noundef %spec.select, i32 noundef %1, ptr noundef %4, ptr noundef %5, i32 noundef %spec.store.select, ptr noundef %7, ptr noundef %9, ptr noundef %10)
  br label %bb.h

bb.g:                                             ; preds = %mp_round.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = load <2 x double>, ptr %7, align 8, !tbaa !24 ; 2 uses
  %i.al = insertelement <2 x double> %i.ak, double 2.000000e+00, i64 0
  %i.am = fmul <2 x double> %i.ak, %i.al
  store <2 x double> %i.am, ptr %7, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  store double %i.ap, ptr %i.an, align 8, !tbaa !24
  %i.aq = icmp sgt i32 %i.a, 3
  %i.ar = zext nneg i32 %spec.store.select to i64 ; 3 uses
  br i1 %i.aq, label %.lr.ph.i.i.preheader, label %mp_squh_use_in1fft.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 5)
  %i.at = add nsw i64 %i.as, -4
  %i.au = lshr i64 %i.at, 1                       ; 2 uses
  %i.av = add nuw nsw i64 %i.au, 1                ; 3 uses
  %min.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader218, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.av, 9223372036854775806     ; 2 uses
  %i.aw = shl nuw i64 %i.av, 1
  %i.ax = or i64 %i.aw, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 %.idx
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.az, align 8, !tbaa !24 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec193 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.ba = fneg <2 x double> %strided.vec193
  %i.bb = fmul <2 x double> %strided.vec193, %i.ba
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec, <2 x double> %i.bb)
  %i.bd = fmul <2 x double> %strided.vec, splat (double 2.000000e+00)
  %i.be = fmul <2 x double> %i.bd, %strided.vec193
  %interleaved.vec = shufflevector <2 x double> %i.bc, <2 x double> %i.be, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.az, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %mp_squh_use_in1fft.exit, label %.lr.ph.i.i.preheader218

.lr.ph.i.i.preheader218:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 3, %.lr.ph.i.i.preheader ], [ %i.ax, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader218, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader218 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i.i ; 3 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !24 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !24 ; 3 uses
  %i.bk = fneg double %i.bj
  %i.bl = fmul double %i.bj, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bl)
  store double %i.bm, ptr %i.bg, align 8, !tbaa !24
  %i.bn = fmul double %i.bh, 2.000000e+00
  %i.bo = fmul double %i.bn, %i.bj
  store double %i.bo, ptr %i.bi, align 8, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bp = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ar
  br i1 %i.bp, label %.lr.ph.i.i, label %mp_squh_use_in1fft.exit, !llvm.loop !172

mp_squh_use_in1fft.exit:                          ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %i.bq = getelementptr [8 x i8], ptr %7, i64 %i.ar
  %i.br = getelementptr i8, ptr %i.bq, i64 8      ; 2 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !24 ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  store double %i.bt, ptr %i.br, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %spec.store.select, i32 noundef -1, ptr noundef nonnull %i.aj, ptr noundef %9, ptr noundef %10) #21
  tail call void @mp_mul_d2i(i32 noundef %spec.select, i32 noundef %1, i32 noundef %spec.store.select, ptr noundef nonnull %7, ptr noundef %5)
  br label %bb.h

bb.h:                                             ; preds = %mp_squh_use_in1fft.exit, %bb.f
  %i.bu = icmp slt i32 %i.b, %0
  br i1 %i.bu, label %bb.i, label %mp_round.exit110

bb.i:                                             ; preds = %bb.h
  %i.bv = add nsw i32 %i.a, 3                     ; 2 uses
  %.not45.i102 = icmp slt i32 %0, %i.bv
  br i1 %.not45.i102, label %._crit_edge.i105, label %.lr.ph.preheader.i103

.lr.ph.preheader.i103:                            ; preds = %bb.i
  %i.bw = add i32 %0, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = sub i32 %0, %i.a
  %i.bz = add i32 %i.by, -3
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = sub nsw i64 %i.bx, %i.ca
  %i.cd = shl nsw i64 %i.cc, 2
  %scevgep.i104 = getelementptr i8, ptr %3, i64 %i.cd
  %i.ce = add nuw nsw i64 %i.cb, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i104, i8 0, i64 %i.ce, i1 false), !tbaa !4
  br label %._crit_edge.i105

._crit_edge.i105:                                 ; preds = %.lr.ph.preheader.i103, %bb.i
  %i.cf = sext i32 %i.bv to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = shl nsw i32 %i.ch, 1
  store i32 0, ptr %i.cg, align 4, !tbaa !4
  %.not.i106 = icmp slt i32 %i.ci, %1
  br i1 %.not.i106, label %mp_round.exit110, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i105
  %i.cj = icmp sgt i32 %i.a, -1
  br i1 %i.cj, label %.lr.ph44.preheader.i, label %.critedge.i107

.lr.ph44.preheader.i:                             ; preds = %bb.j
  %i.ck = add nuw nsw i32 %i.a, 2
  br label %.lr.ph44.i108

.lr.ph44.i108:                                    ; preds = %bb.l, %.lr.ph44.preheader.i
  %.13042.i109 = phi i32 [ %i.cq, %bb.l ], [ %i.ck, %.lr.ph44.preheader.i ] ; 3 uses
  %i.cl = zext nneg i32 %.13042.i109 to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cl ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4
  %i.co = add nsw i32 %i.cn, 1                    ; 2 uses
  %i.cp = icmp slt i32 %i.co, %1
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph44.i108
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !4
  br label %mp_round.exit110

bb.l:                                             ; preds = %.lr.ph44.i108
  store i32 0, ptr %i.cm, align 4, !tbaa !4
  %i.cq = add nsw i32 %.13042.i109, -1
  %i.cr = icmp sgt i32 %.13042.i109, 2
  br i1 %i.cr, label %.lr.ph44.i108, label %.critedge.i107, !llvm.loop !114

.critedge.i107:                                   ; preds = %bb.l, %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.cs, align 4, !tbaa !4
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !4
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !4
  br label %mp_round.exit110

mp_round.exit110:                                 ; preds = %bb.h, %._crit_edge.i105, %bb.k, %.critedge.i107
  tail call void @mp_mulh(i32 noundef %spec.select, i32 noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  tail call void @mp_sub(i32 noundef %spec.select, i32 noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %5)
  tail call void @mp_add(i32 noundef %spec.select, i32 noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %4)
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cx = load <2 x double>, ptr %7, align 8, !tbaa !24 ; 2 uses
  %i.cy = insertelement <2 x double> %i.cx, double 2.000000e+00, i64 0
  %i.cz = fmul <2 x double> %i.cx, %i.cy
  store <2 x double> %i.cz, ptr %7, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !24 ; 2 uses
  %i.dc = fmul double %i.db, %i.db
  store double %i.dc, ptr %i.da, align 8, !tbaa !24
  %i.dd = icmp sgt i32 %6, 3
  br i1 %i.dd, label %.lr.ph.preheader.i.i114, label %.._crit_edge_crit_edge.i.i111

.._crit_edge_crit_edge.i.i111:                    ; preds = %mp_round.exit110
  %.pre.i.i112 = sext i32 %6 to i64
  br label %mp_squh_use_in1fft.exit118

.lr.ph.preheader.i.i114:                          ; preds = %mp_round.exit110
  %i.de = zext nneg i32 %6 to i64                 ; 4 uses
  %i.df = tail call i64 @llvm.umax.i64(i64 %i.de, i64 5)
  %i.dg = add nsw i64 %i.df, -4
  %i.dh = lshr i64 %i.dg, 1                       ; 2 uses
  %i.di = add nuw nsw i64 %i.dh, 1                ; 3 uses
  %min.iters.check195 = icmp eq i64 %i.dh, 0
  br i1 %min.iters.check195, label %.lr.ph.i.i115.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.preheader.i.i114
  %n.vec198 = and i64 %i.di, 9223372036854775806  ; 2 uses
  %i.dj = shl nuw i64 %i.di, 1
  %i.dk = or i64 %i.dj, 3
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph196
  %index200 = phi i64 [ 0, %vector.ph196 ], [ %index.next205, %vector.body199 ] ; 2 uses
  %.idx209 = shl nuw i64 %index200, 4
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 %.idx209
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24 ; 2 uses
  %wide.vec201 = load <4 x double>, ptr %i.dm, align 8, !tbaa !24 ; 2 uses
  %strided.vec202 = shufflevector <4 x double> %wide.vec201, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec203 = shufflevector <4 x double> %wide.vec201, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.dn = fneg <2 x double> %strided.vec203
  %i.do = fmul <2 x double> %strided.vec203, %i.dn
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec202, <2 x double> %strided.vec202, <2 x double> %i.do)
  %i.dq = fmul <2 x double> %strided.vec202, splat (double 2.000000e+00)
  %i.dr = fmul <2 x double> %i.dq, %strided.vec203
  %interleaved.vec204 = shufflevector <2 x double> %i.dp, <2 x double> %i.dr, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec204, ptr %i.dm, align 8, !tbaa !24
  %index.next205 = add nuw i64 %index200, 2       ; 2 uses
  %i.ds = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.ds, label %middle.block206, label %vector.body199, !llvm.loop !173

middle.block206:                                  ; preds = %vector.body199
  %cmp.n207 = icmp eq i64 %i.di, %n.vec198
  br i1 %cmp.n207, label %mp_squh_use_in1fft.exit118, label %.lr.ph.i.i115.preheader

.lr.ph.i.i115.preheader:                          ; preds = %.lr.ph.preheader.i.i114, %middle.block206
  %indvars.iv.i.i116.ph = phi i64 [ 3, %.lr.ph.preheader.i.i114 ], [ %i.dk, %middle.block206 ]
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.preheader, %.lr.ph.i.i115
  %indvars.iv.i.i116 = phi i64 [ %indvars.iv.next.i.i117, %.lr.ph.i.i115 ], [ %indvars.iv.i.i116.ph, %.lr.ph.i.i115.preheader ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i.i116 ; 3 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !24 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !24 ; 3 uses
  %i.dx = fneg double %i.dw
  %i.dy = fmul double %i.dw, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.du, double %i.du, double %i.dy)
  store double %i.dz, ptr %i.dt, align 8, !tbaa !24
  %i.ea = fmul double %i.du, 2.000000e+00
  %i.eb = fmul double %i.ea, %i.dw
  store double %i.eb, ptr %i.dv, align 8, !tbaa !24
  %indvars.iv.next.i.i117 = add nuw nsw i64 %indvars.iv.i.i116, 2 ; 2 uses
  %i.ec = icmp samesign ult i64 %indvars.iv.next.i.i117, %i.de
  br i1 %i.ec, label %.lr.ph.i.i115, label %mp_squh_use_in1fft.exit118, !llvm.loop !174

mp_squh_use_in1fft.exit118:                       ; preds = %.lr.ph.i.i115, %middle.block206, %.._crit_edge_crit_edge.i.i111
  %.pre-phi.i.i113 = phi i64 [ %.pre.i.i112, %.._crit_edge_crit_edge.i.i111 ], [ %i.de, %middle.block206 ], [ %i.de, %.lr.ph.i.i115 ]
  %i.ed = getelementptr [8 x i8], ptr %7, i64 %.pre-phi.i.i113
  %i.ee = getelementptr i8, ptr %i.ed, i64 8      ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !24 ; 2 uses
  %i.eg = fmul double %i.ef, %i.ef
  store double %i.eg, ptr %i.ee, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef -1, ptr noundef nonnull %i.cw, ptr noundef %9, ptr noundef %10) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %6, ptr noundef nonnull %7, ptr noundef %5)
  tail call void @mp_sub(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %5)
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4
  %i.ep = load i32, ptr %5, align 4, !tbaa !4
  %i.eq = icmp slt i32 %i.b, %spec.select
  br i1 %i.eq, label %bb.m, label %mp_round.exit128

bb.m:                                             ; preds = %mp_squh_use_in1fft.exit118
  %i.er = add nsw i32 %i.a, 3                     ; 2 uses
  %.not45.i119 = icmp slt i32 %spec.select, %i.er
  br i1 %.not45.i119, label %._crit_edge.i122, label %.lr.ph.preheader.i120

.lr.ph.preheader.i120:                            ; preds = %bb.m
  %i.es = add i32 %spec.select, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = sub i32 %spec.select, %i.a
  %i.ev = add i32 %i.eu, -3
  %i.ew = zext i32 %i.ev to i64                   ; 2 uses
  %i.ex = shl nuw nsw i64 %i.ew, 2
  %i.ey = sub nsw i64 %i.et, %i.ew
  %i.ez = shl nsw i64 %i.ey, 2
  %scevgep.i121 = getelementptr i8, ptr %4, i64 %i.ez
  %i.fa = add nuw nsw i64 %i.ex, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i121, i8 0, i64 %i.fa, i1 false), !tbaa !4
  br label %._crit_edge.i122

._crit_edge.i122:                                 ; preds = %.lr.ph.preheader.i120, %bb.m
  %i.fb = sext i32 %i.er to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4
  %i.fe = shl nsw i32 %i.fd, 1
  store i32 0, ptr %i.fc, align 4, !tbaa !4
  %.not.i123 = icmp slt i32 %i.fe, %1
  br i1 %.not.i123, label %mp_round.exit128, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i122
  %i.ff = icmp sgt i32 %i.a, -1
  br i1 %i.ff, label %.lr.ph44.preheader.i125, label %.critedge.i124

.lr.ph44.preheader.i125:                          ; preds = %bb.n
  %i.fg = add nuw nsw i32 %i.a, 2
  br label %.lr.ph44.i126

.lr.ph44.i126:                                    ; preds = %bb.p, %.lr.ph44.preheader.i125
  %.13042.i127 = phi i32 [ %i.fm, %bb.p ], [ %i.fg, %.lr.ph44.preheader.i125 ] ; 3 uses
  %i.fh = zext nneg i32 %.13042.i127 to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fh ; 3 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4
  %i.fk = add nsw i32 %i.fj, 1                    ; 2 uses
  %i.fl = icmp slt i32 %i.fk, %1
  br i1 %i.fl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph44.i126
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !4
  br label %mp_round.exit128

bb.p:                                             ; preds = %.lr.ph44.i126
  store i32 0, ptr %i.fi, align 4, !tbaa !4
  %i.fm = add nsw i32 %.13042.i127, -1
  %i.fn = icmp sgt i32 %.13042.i127, 2
  br i1 %i.fn, label %.lr.ph44.i126, label %.critedge.i124, !llvm.loop !114

.critedge.i124:                                   ; preds = %bb.p, %bb.n
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.fo, align 4, !tbaa !4
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !4
  %i.fr = add nsw i32 %i.fq, 1
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !4
  br label %mp_round.exit128

mp_round.exit128:                                 ; preds = %mp_squh_use_in1fft.exit118, %._crit_edge.i122, %bb.o, %.critedge.i124
  tail call void @mp_mulh(i32 noundef %spec.select, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store i32 %6, ptr %11, align 4, !tbaa !4
  %i.fs = load i32, ptr %i.en, align 4, !tbaa !4
  %i.ft = icmp eq i32 %i.fs, 1                    ; 4 uses
  %spec.store.select.neg.i = sext i1 %i.ft to i32 ; 4 uses
  %spec.store.select.i = zext i1 %i.ft to i32     ; 2 uses
  %i.fu = load i32, ptr %i.ej, align 4, !tbaa !4
  %i.fv = sub nsw i32 %i.fu, %spec.store.select.i
  store i32 %i.fv, ptr %i.ej, align 4, !tbaa !4
  %i.fw = add nsw i32 %spec.select, 1             ; 2 uses
  %i.fx = sub nsw i32 %i.fw, %spec.store.select.i
  %.not25.i = icmp slt i32 %i.fx, 2
  br i1 %.not25.i, label %._crit_edge.i130, label %.lr.ph.preheader.i129

.lr.ph.preheader.i129:                            ; preds = %mp_round.exit128
  %i.fy = zext i1 %i.ft to i64
  %i.fz = add i32 %spec.select, 2
  %i.ga = add i32 %i.fz, %spec.store.select.neg.i ; 3 uses
  %wide.trip.count.i = zext i32 %i.ga to i64      ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fy ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.gb = icmp eq i32 %i.ga, 3
  br i1 %i.gb, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i129.new

.lr.ph.preheader.i129.new:                        ; preds = %.lr.ph.preheader.i129
  %i.gc = and i64 %wide.trip.count.i, 4294967294
  %i.gd = add nsw i64 %i.gc, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i129.new
  %indvars.iv.i = phi i64 [ 2, %.lr.ph.preheader.i129.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.027.i = phi i32 [ %spec.store.select.neg.i, %.lr.ph.preheader.i129.new ], [ %i.gp, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i129.new ], [ %niter.next.1, %.lr.ph.i ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ge = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.gf = and i32 %.027.i, %1
  %i.gg = add nsw i32 %i.ge, %i.gf                ; 2 uses
  %i.gh = and i32 %i.gg, 1
  %i.gi = ashr i32 %i.gg, 1
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !4
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.gk = load i32, ptr %gep.i.1, align 4, !tbaa !4
  %i.gl = icmp eq i32 %i.gh, 0
  %i.gm = select i1 %i.gl, i32 0, i32 %1
  %i.gn = add nsw i32 %i.gk, %i.gm                ; 2 uses
  %i.go = and i32 %i.gn, 1
  %i.gp = sub nsw i32 0, %i.go                    ; 3 uses
  %i.gq = ashr i32 %i.gn, 1
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next.i
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.gd
  br i1 %niter.ncmp.1, label %._crit_edge.i130.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !61

._crit_edge.i130.loopexit.unr-lcssa:              ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i130, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i130.loopexit.unr-lcssa, %.lr.ph.preheader.i129
  %indvars.iv.i.epil.init = phi i64 [ 2, %.lr.ph.preheader.i129 ], [ %indvars.iv.next.i.1, %._crit_edge.i130.loopexit.unr-lcssa ] ; 2 uses
  %.027.i.epil.init = phi i32 [ %spec.store.select.neg.i, %.lr.ph.preheader.i129 ], [ %i.gp, %._crit_edge.i130.loopexit.unr-lcssa ]
  %lcmp.mod224 = trunc i32 %i.ga to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.gs = load i32, ptr %gep.i.epil, align 4, !tbaa !4
  %i.gt = and i32 %.027.i.epil.init, %1
  %i.gu = add nsw i32 %i.gs, %i.gt                ; 2 uses
  %i.gv = and i32 %i.gu, 1
  %i.gw = sub nsw i32 0, %i.gv
  %i.gx = ashr i32 %i.gu, 1
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !4
  br label %._crit_edge.i130

._crit_edge.i130:                                 ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i130.loopexit.unr-lcssa, %mp_round.exit128
  %.0.lcssa.i = phi i32 [ %spec.store.select.neg.i, %mp_round.exit128 ], [ %i.gp, %._crit_edge.i130.loopexit.unr-lcssa ], [ %i.gw, %.lr.ph.i.epil.preheader ]
  br i1 %i.ft, label %bb.q, label %mp_idiv_2.exit

bb.q:                                             ; preds = %._crit_edge.i130
  %i.gz = and i32 %.0.lcssa.i, %1
  %i.ha = ashr i32 %i.gz, 1
  %i.hb = sext i32 %i.fw to i64
  %i.hc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.hb
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !4
  br label %mp_idiv_2.exit

mp_idiv_2.exit:                                   ; preds = %._crit_edge.i130, %bb.q
  %i.hd = icmp eq i32 %i.ep, 0
  %i.he = add nsw i32 %6, 1
  %i.hf = sub i32 %i.ei, %i.ek
  %i.hg = icmp sgt i32 %i.em, %i.eo
  %i.hh = zext i1 %i.hg to i32
  %spec.select101 = add nsw i32 %i.hf, %i.hh
  %.1 = select i1 %i.hd, i32 %i.he, i32 %spec.select101
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef nonnull %5, ptr noundef %3)
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local double @mp_unexp_mp2d(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #13 {
bb.a:
  %i.a = sitofp i32 %1 to double
  %i.b = fdiv double 1.000000e+00, %i.a           ; 5 uses
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %0 to i64                  ; 3 uses
  %xtraiter = and i64 %i.d, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.d, %.lr.ph.preheader ]
  %.010.prol = phi double [ %i.h, %.lr.ph.prol ], [ 0.000000e+00, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.prol
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = sitofp i32 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %i.b, double %.010.prol, double %i.g) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !175

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.010.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.i = icmp ult i32 %0, 4
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.010 = phi double [ %i.ab, %.lr.ph ], [ %.010.unr, %.lr.ph.prol.loopexit ]
  %i.j = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = sitofp i32 %i.l to double
  %i.n = tail call double @llvm.fmuladd.f64(double %i.b, double %.010, double %i.m)
  %i.o = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.p = getelementptr i8, ptr %i.o, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sitofp i32 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.b, double %i.n, double %i.r)
  %i.t = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  %i.u = getelementptr i8, ptr %i.t, i64 -12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = sitofp i32 %i.v to double
  %i.x = tail call double @llvm.fmuladd.f64(double %i.b, double %i.s, double %i.w)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.3
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sitofp i32 %i.z to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.b, double %i.x, double %i.aa) ; 2 uses
  %i.ac = icmp sgt i64 %indvars.iv, 4
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ab, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local void @mp_unexp_d2mp(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = add nsw i32 %1, -1                       ; 3 uses
  %i.c = sitofp i32 %1 to double                  ; 4 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %0, 1
  br i1 %i.d, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.01417 = phi double [ %2, %.lr.ph.new ], [ %i.m, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.e = fptosi double %.01417 to i32             ; 2 uses
  %.not = icmp sgt i32 %1, %i.e
  %.1 = select i1 %.not, double %.01417, double %i.c
  %.0 = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.b) ; 2 uses
  %i.f = sitofp i32 %.0 to double
  %i.g = fsub double %.1, %i.f
  %i.h = fmul double %i.g, %i.c                   ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store i32 %.0, ptr %i.i, align 4, !tbaa !4
  %i.j = fptosi double %i.h to i32                ; 2 uses
  %.not.1 = icmp sgt i32 %1, %i.j
  %.1.1 = select i1 %.not.1, double %i.h, double %i.c
  %.0.1 = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.b) ; 2 uses
  %i.k = sitofp i32 %.0.1 to double
  %i.l = fsub double %.1.1, %i.k
  %i.m = fmul double %i.l, %i.c                   ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.0.1, ptr %i.o, align 4, !tbaa !4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !46

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.01417.epil.init = phi double [ %2, %.lr.ph ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.p = fptosi double %.01417.epil.init to i32
  %.0.epil = tail call i32 @llvm.smin.i32(i32 %i.p, i32 %i.b)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  store i32 %.0.epil, ptr %i.q, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { cold nounwind }
attributes #23 = { cold noreturn nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind allocsize(0) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !14, !17, !16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14, !16, !17}
!21 = distinct !{!21, !14, !17, !16}
!22 = distinct !{!22, !14, !16, !17}
!23 = distinct !{!23, !14, !17, !16}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = distinct !{!26, !14, !16, !17}
!27 = distinct !{!27, !14, !17, !16}
!28 = distinct !{!28, !14, !16, !17}
!29 = distinct !{!29, !14, !17, !16}
!30 = distinct !{!30, !14}
!31 = !{!6, !6, i64 0}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14, !16, !17}
!40 = distinct !{!40, !14, !41, !16, !17}
!41 = !{!"llvm.loop.peeled.count", i32 1}
!42 = distinct !{!42, !14, !17, !16}
!43 = distinct !{!43, !14, !41, !17, !16}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14, !16, !17}
!54 = distinct !{!54, !14, !17, !16}
!55 = distinct !{!55, !14, !16, !17}
!56 = distinct !{!56, !14, !17, !16}
!57 = distinct !{!57, !14, !16, !17}
!58 = distinct !{!58, !14, !17, !16}
!59 = distinct !{!59, !14, !16, !17}
!60 = distinct !{!60, !14, !17, !16}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = !{!65}
!65 = distinct !{!65, !66}
!66 = distinct !{!66, !"LVerDomain"}
!67 = !{!68}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !14, !16, !17}
!70 = distinct !{!70, !14, !16}
!71 = !{!72}
!72 = distinct !{!72, !73}
!73 = distinct !{!73, !"LVerDomain"}
!74 = !{!75}
!75 = distinct !{!75, !73}
!76 = distinct !{!76, !14, !16, !17}
!77 = distinct !{!77, !14, !16}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = !{!84}
!84 = distinct !{!84, !80}
!85 = !{!79, !82}
!86 = distinct !{!86, !14, !16, !17}
!87 = distinct !{!87, !14, !16}
!88 = distinct !{!88, !14, !16, !17}
!89 = distinct !{!89, !14, !17, !16}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = !{!94}
!94 = distinct !{!94, !95}
!95 = distinct !{!95, !"LVerDomain"}
!96 = !{!97}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !14, !16, !17}
!99 = distinct !{!99, !14, !16}
!100 = distinct !{!100, !14, !16, !17}
!101 = distinct !{!101, !14, !17, !16}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14, !16, !17}
!107 = !{!"branch_weights", i32 8, i32 24}
!108 = distinct !{!108, !14, !16, !17}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = distinct !{!111, !14, !16}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
!115 = distinct !{!115, !14}
!116 = distinct !{!116, !14}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !14, !16, !17}
!119 = distinct !{!119, !14, !17, !16}
!120 = distinct !{!120, !14, !16, !17}
!121 = distinct !{!121, !14, !17, !16}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !110}
!125 = distinct !{!125, !14, !16, !17}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14, !16}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14, !16, !17}
!130 = distinct !{!130, !14, !17, !16}
!131 = !{!132}
!132 = distinct !{!132, !133}
!133 = distinct !{!133, !"LVerDomain"}
!134 = !{!135}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !14, !16, !17}
!137 = distinct !{!137, !14, !16}
!138 = distinct !{!138, !14}
!139 = distinct !{!139, !14}
!140 = distinct !{!140, !14, !16, !17}
!141 = distinct !{!141, !14, !17, !16}
!142 = !{!143}
!143 = distinct !{!143, !144}
!144 = distinct !{!144, !"LVerDomain"}
!145 = !{!146}
!146 = distinct !{!146, !144}
!147 = !{!148}
!148 = distinct !{!148, !144}
!149 = !{!143, !146}
!150 = distinct !{!150, !14, !16, !17}
!151 = distinct !{!151, !14, !16}
!152 = !{!153}
!153 = distinct !{!153, !154}
!154 = distinct !{!154, !"LVerDomain"}
!155 = !{!156}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !14, !16, !17}
!158 = distinct !{!158, !14, !16}
!159 = distinct !{!159, !14}
!160 = !{!161}
!161 = distinct !{!161, !162}
!162 = distinct !{!162, !"LVerDomain"}
!163 = !{!164}
!164 = distinct !{!164, !162}
!165 = distinct !{!165, !14, !16, !17}
!166 = distinct !{!166, !14, !16}
!167 = distinct !{!167, !14, !16, !17}
!168 = distinct !{!168, !14, !17, !16}
!169 = distinct !{!169, !110}
!170 = distinct !{!170, !110}
!171 = distinct !{!171, !14, !16, !17}
!172 = distinct !{!172, !14, !17, !16}
!173 = distinct !{!173, !14, !16, !17}
!174 = distinct !{!174, !14, !17, !16}
!175 = distinct !{!175, !110}
end_hunk_0
