inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@mp_cmp:bb.a

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
  %.neg.a = zext i1 %.not81 to i32
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
  %i.bf = add i32 %i.bb, %.neg.a
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
  %i.bu = zext i32 %i.x to i64                    ; 4 uses
  %i.bv = icmp ne i32 %i.x, 0
  %umin.neg = sext i1 %i.bv to i64
  %6 = add nsw i64 %umin.neg, %i.bu
  %i.bw = add nsw i64 %6, 1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check, label %.lr.ph101.preheader118, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph101.preheader
  %n.vec = and i64 %i.bw, -8                      ; 3 uses
  %i.bx = sub nsw i64 %i.bu, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = sub i64 %i.bu, %index
  %i.bz = getelementptr [4 x i8], ptr %5, i64 %i.by ; 4 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 -16
  %i.cb = getelementptr i8, ptr %i.bz, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !4
  %wide.load117 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr i8, ptr %i.bz, i64 -12
  %i.cd = getelementptr i8, ptr %i.bz, i64 -28
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !4
  store <4 x i32> %wide.load117, ptr %i.cd, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %.sink.split, label %.lr.ph101.preheader118

.lr.ph101.preheader118:                           ; preds = %.lr.ph101.preheader, %middle.block
  %indvars.iv111.ph = phi i64 [ %i.bu, %.lr.ph101.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader118, %.lr.ph101
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph101 ], [ %indvars.iv111.ph, %.lr.ph101.preheader118 ] ; 3 uses
  %i.cf = getelementptr [4 x i8], ptr %5, i64 %indvars.iv111 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !4
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, -1
  %i.ci = icmp samesign ugt i64 %indvars.iv111, 1
  br i1 %i.ci, label %.lr.ph101, label %.sink.split, !llvm.loop !119

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
end_hunk_0
begin_hunk_1_@mp_mul_cmul:bb.a
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec42, <2 x double> %i.ad)
  %interleaved.vec = shufflevector <2 x double> %i.ac, <2 x double> %i.ae, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.z, align 8, !tbaa !24, !alias.scope !134, !noalias !131
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader43, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader43 ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !24
  %i.ai = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ai
  %i.an = load double, ptr %i.am, align 8, !tbaa !24
  %i.ao = load <2 x double>, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %i.ap = fneg double %i.an
  %i.aq = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.at = insertelement <2 x double> %i.as, double %i.ap, i64 0
  %i.au = fmul <2 x double> %i.ar, %i.at
  %i.av = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ao, <2 x double> %i.au)
  store <2 x double> %i.ax, ptr %i.al, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.ay, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.az = add nsw i32 %0, 1
  %i.ba = sext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !24
  %i.bd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24
  %i.bf = fmul double %i.bc, %i.be
  store double %i.bf, ptr %i.bd, align 8, !tbaa !24
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
  %i.ci = add nuw i32 %0, 1                       ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %5 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 3)
  %6 = sub i32 %0, %5
  %7 = add i32 %6, 1                              ; 2 uses
  %i.ck = zext i32 %7 to i64
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %7, 7
  br i1 %min.iters.check, label %.lr.ph137.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.vec = and i64 %i.cl, 8589934584              ; 3 uses
  %i.cm = sub nsw i64 %i.cj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = sub i64 %i.cj, %index
  %i.co = getelementptr [4 x i8], ptr %4, i64 %i.cn ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -16
  %i.cq = getelementptr i8, ptr %i.co, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cp, align 4, !tbaa !4
  %wide.load162 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr i8, ptr %i.co, i64 -12
  %i.cs = getelementptr i8, ptr %i.co, i64 -28
  store <4 x i32> %wide.load, ptr %i.cr, align 4, !tbaa !4
  store <4 x i32> %wide.load162, ptr %i.cs, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cl, %n.vec
  br i1 %cmp.n, label %._crit_edge138, label %.lr.ph137.preheader163

.lr.ph137.preheader163:                           ; preds = %.lr.ph137.preheader, %middle.block
  %indvars.iv150.ph = phi i64 [ %i.cj, %.lr.ph137.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader163, %.lr.ph137
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph137 ], [ %indvars.iv150.ph, %.lr.ph137.preheader163 ] ; 3 uses
  %i.cu = getelementptr [4 x i8], ptr %4, i64 %indvars.iv150 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !4
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, -1
  %i.cx = trunc nuw i64 %indvars.iv150 to i32
  %i.cy = icmp sgt i32 %i.cx, 3
  br i1 %i.cy, label %.lr.ph137, label %._crit_edge138, !llvm.loop !141

._crit_edge138:                                   ; preds = %.lr.ph137, %middle.block, %bb.b
  store i32 %i.ca, ptr %i.cf, align 4, !tbaa !4
  %i.cz = select i1 %i.p, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge138, %._crit_edge132
  %i.da = phi i32 [ 1, %._crit_edge138 ], [ %i.ce, %._crit_edge132 ]
  %.0110 = phi i32 [ %i.cz, %._crit_edge138 ], [ %i.q, %._crit_edge132 ]
  %i.db = load double, ptr %3, align 8, !tbaa !24
  %i.dc = uitofp nneg i32 %.0110 to double
  %i.dd = fadd double %i.db, %i.dc
  %i.de = fadd double %i.dd, 5.000000e-01         ; 2 uses
  %i.df = fptosi double %i.de to i32
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  %i.dh = sitofp i32 %i.dg to double
  %i.di = fsub double %i.de, %i.dh
  %i.dj = fptosi double %i.di to i32
  %i.dk = add nsw i32 %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %i.dm = fcmp ogt double %i.k, 5.000000e-01
  %i.dn = select i1 %i.dm, i32 1, i32 -1
  store i32 %i.dn, ptr %4, align 4, !tbaa !4
  %i.do = icmp eq i32 %i.da, 0
  br i1 %i.do, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %4, align 4, !tbaa !4
  store i32 0, ptr %i.dl, align 4, !tbaa !4
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
  %umax45 = tail call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.q = add nsw i64 %umax45, -4                  ; 2 uses
  %i.r = lshr i64 %i.q, 1
  %i.s = add nuw nsw i64 %i.r, 1                  ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 10
  br i1 %min.iters.check, label %.lr.ph.preheader53, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %3, i64 24     ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 5)
  %i.t = shl nuw nsw i64 %umax, 3
  %i.u = or i64 %i.t, 8                           ; 3 uses
  %scevgep37 = getelementptr i8, ptr %3, i64 %i.u ; 2 uses
  %scevgep38 = getelementptr i8, ptr %1, i64 24
  %scevgep39 = getelementptr i8, ptr %1, i64 %i.u
  %scevgep40 = getelementptr i8, ptr %2, i64 24
  %scevgep41 = getelementptr i8, ptr %2, i64 %i.u
  %bound0 = icmp ult ptr %scevgep, %scevgep39
  %bound1 = icmp ult ptr %scevgep38, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %scevgep, %scevgep41
  %bound143 = icmp ult ptr %scevgep40, %scevgep37
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  br i1 %conflict.rdx, label %.lr.ph.preheader53, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.s, 9223372036854775806      ; 2 uses
  %i.v = shl nuw i64 %i.s, 1
  %i.w = or i64 %i.v, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 1
  %i.y = or disjoint i64 %i.x, 3                  ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.y
  %wide.vec = load <4 x double>, ptr %i.z, align 8, !tbaa !24, !alias.scope !142 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec46 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.y
  %wide.vec47 = load <4 x double>, ptr %i.aa, align 8, !tbaa !24, !alias.scope !145 ; 2 uses
  %strided.vec48.a = shufflevector <4 x double> %wide.vec47, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec49 = shufflevector <4 x double> %wide.vec47, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = fneg <2 x double> %strided.vec49
  %i.ac = fmul <2 x double> %strided.vec46, %i.ab
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec48.a, <2 x double> %i.ac)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.y ; 2 uses
  %wide.vec50 = load <4 x double>, ptr %i.ae, align 8, !tbaa !24, !alias.scope !147, !noalias !149 ; 2 uses
  %strided.vec51.a = shufflevector <4 x double> %wide.vec50, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec52 = shufflevector <4 x double> %wide.vec50, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.af = fadd <2 x double> %strided.vec51.a, %i.ad
  %i.ag = fmul <2 x double> %strided.vec46, %strided.vec48.a
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec49, <2 x double> %i.ag)
  %i.ai = fadd <2 x double> %i.ah, %strided.vec52
  %interleaved.vec = shufflevector <2 x double> %i.af, <2 x double> %i.ai, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ae, align 8, !tbaa !24, !alias.scope !147, !noalias !149
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader53

.lr.ph.preheader53:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader53, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader53 ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.al = load double, ptr %i.ak, align 8, !tbaa !24
  %i.am = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.as = load double, ptr %i.aq, align 8, !tbaa !24
  %i.at = load <2 x double>, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %i.au = fneg double %i.as
  %i.av = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x double> %i.ax, double %i.au, i64 0
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = insertelement <2 x double> poison, double %i.al, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.at, <2 x double> %i.az)
  %i.bd = load <2 x double>, ptr %i.ar, align 8, !tbaa !24
  %i.be = fadd <2 x double> %i.bd, %i.bc
  store <2 x double> %i.be, ptr %i.ar, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.p
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.bg = add nsw i32 %0, 1
end_hunk_1
