Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/bluestein?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@awake:bb.a
  %.01719.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.v = shl nuw nsw i64 %.01719.i.i, 1           ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.v
  tail call void %i.u(ptr noundef nonnull %i.s, i64 noundef %.020.i.i, ptr noundef %i.w) #5, !inline_history !37
  %i.x = add nsw i64 %.020.i.i, 1
  %i.y = add i64 %i.x, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.z = icmp sgt i64 %.1.i.i, %i.r
  %i.aa = sub nuw nsw i64 %.1.i.i, %i.r
  br i1 %i.z, label %bb.d, label %bb.e, !llvm.loop !38

bb.e:                                             ; preds = %bb.d
  %i.ab = add nuw nsw i64 %.01719.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not.i.i, label %bluestein_sequence.exit.i, label %.lr.ph.i.i, !llvm.loop !39

bluestein_sequence.exit.i:                        ; preds = %bb.e, %bb.c
  tail call void @fftw_triggen_destroy(ptr noundef %i.s) #5
  %i.ac = icmp sgt i64 %i.j, 0
  br i1 %i.ac, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bluestein_sequence.exit.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bluestein_sequence.exit.i
  %i.ad = load double, ptr %i.m, align 8, !tbaa !22
  %i.ae = fdiv double %i.ad, %i.k
  store double %i.ae, ptr %i.p, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22
  %i.ah = fdiv double %i.ag, %i.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store double %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = icmp sgt i64 %i.h, 1
  br i1 %i.aj, label %.lr.ph53.i.preheader, label %mktwiddle.exit

.lr.ph53.i.preheader:                             ; preds = %._crit_edge.i
  %i.ak = add nsw i64 %i.h, -1                    ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.al = icmp eq i64 %i.h, 2
  br i1 %i.al, label %.lr.ph53.i.epil.preheader, label %.lr.ph53.i.preheader.new

.lr.ph53.i.preheader.new:                         ; preds = %.lr.ph53.i.preheader
  %unroll_iter = and i64 %i.ak, -2
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i, %.lr.ph53.i.preheader.new
  %.151.i = phi i64 [ 1, %.lr.ph53.i.preheader.new ], [ %i.bn, %.lr.ph53.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph53.i.preheader.new ], [ %niter.next.1, %.lr.ph53.i ]
  %i.am = shl nuw nsw i64 %.151.i, 1              ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22
  %i.ap = fdiv double %i.ao, %i.k                 ; 2 uses
  %i.aq = sub nsw i64 %i.j, %.151.i
  %.idx.i = shl nsw i64 %i.aq, 4
  %i.ar = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i ; 2 uses
  store double %i.ap, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.am
  store double %i.ap, ptr %i.as, align 8, !tbaa !22
  %i.at = or disjoint i64 %i.am, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !22
  %i.aw = fdiv double %i.av, %i.k                 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  store double %i.aw, ptr %i.ax, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.at
  store double %i.aw, ptr %i.ay, align 8, !tbaa !22
  %i.az = add nuw nsw i64 %.151.i, 1              ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 1                ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !22
  %i.bd = fdiv double %i.bc, %i.k                 ; 2 uses
  %i.be = sub nsw i64 %i.j, %i.az
  %.idx.i.1 = shl nsw i64 %i.be, 4
  %i.bf = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i.1 ; 2 uses
  store double %i.bd, ptr %i.bf, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ba
  store double %i.bd, ptr %i.bg, align 8, !tbaa !22
  %i.bh = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !22
  %i.bk = fdiv double %i.bj, %i.k                 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bf, i64 8
  store double %i.bk, ptr %i.bl, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bh
  store double %i.bk, ptr %i.bm, align 8, !tbaa !22
  %i.bn = add nuw nsw i64 %.151.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mktwiddle.exit.loopexit.unr-lcssa, label %.lr.ph53.i, !llvm.loop !40

mktwiddle.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph53.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mktwiddle.exit, label %.lr.ph53.i.epil.preheader

.lr.ph53.i.epil.preheader:                        ; preds = %mktwiddle.exit.loopexit.unr-lcssa, %.lr.ph53.i.preheader
  %.151.i.epil.init = phi i64 [ 1, %.lr.ph53.i.preheader ], [ %i.bn, %mktwiddle.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.bo = shl nuw nsw i64 %.151.i.epil.init, 1    ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !22
  %i.br = fdiv double %i.bq, %i.k                 ; 2 uses
  %i.bs = sub nsw i64 %i.j, %.151.i.epil.init
  %.idx.i.epil = shl nsw i64 %i.bs, 4
  %i.bt = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i.epil ; 2 uses
  store double %i.br, ptr %i.bt, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bo
  store double %i.br, ptr %i.bu, align 8, !tbaa !22
  %i.bv = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !22
  %i.by = fdiv double %i.bx, %i.k                 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bt, i64 8
  store double %i.by, ptr %i.bz, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bv
  store double %i.by, ptr %i.ca, align 8, !tbaa !22
  br label %mktwiddle.exit

mktwiddle.exit:                                   ; preds = %.lr.ph53.i.epil.preheader, %mktwiddle.exit.loopexit.unr-lcssa, %._crit_edge.i
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25
  tail call void %i.cd(ptr noundef %i.cb, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ai) #5, !inline_history !41
  br label %bb.f

bb.f:                                             ; preds = %mktwiddle.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.e, ptr noundef %i.g) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #5
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_f_d(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_dft_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_dft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 9 uses
  %i.m = shl i64 %i.d, 4                          ; 2 uses
  %i.n = tail call ptr @fftw_malloc_plain(i64 noundef %i.m) #5 ; 28 uses
  %i.o = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ugt i64 %i.b, 7
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %.lr.ph.preheader229

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.p = shl i64 %i.b, 4                          ; 2 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.p     ; 3 uses
  %i.r = shl i64 %i.b, 3                          ; 2 uses
  %5 = getelementptr i8, ptr %1, i64 %i.r
  %i.s = getelementptr i8, ptr %2, i64 %i.r
  %6 = getelementptr i8, ptr %i.j, i64 %i.p
  %bound0.a = icmp ult ptr %i.n, %5
  %bound1 = icmp ult ptr %1, %i.q
  %found.conflict = and i1 %bound0.a, %bound1
  %bound0128 = icmp ult ptr %i.n, %i.s
  %bound1129 = icmp ult ptr %2, %i.q
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx = or i1 %found.conflict, %found.conflict130
  %bound0131 = icmp ult ptr %i.n, %6
  %bound1132 = icmp ult ptr %i.j, %i.q
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx, %found.conflict133
  br i1 %conflict.rdx134, label %.lr.ph.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 9223372036854775806      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !22, !alias.scope !67 ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %index
  %wide.load135 = load <2 x double>, ptr %i.u, align 8, !tbaa !22, !alias.scope !68 ; 2 uses
  %i.v = shl nuw nsw i64 %index, 1                ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.v
  %wide.vec = load <4 x double>, ptr %i.w, align 8, !tbaa !22, !alias.scope !69 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec136 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.x = fmul <2 x double> %wide.load135, %strided.vec136
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %strided.vec, <2 x double> %i.x)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.v
  %i.aa = fneg <2 x double> %strided.vec136
  %i.ab = fmul <2 x double> %wide.load, %i.aa
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load135, <2 x double> %strided.vec, <2 x double> %i.ab)
  %interleaved.vec = shufflevector <2 x double> %i.y, <2 x double> %i.ac, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.z, align 8, !tbaa !22, !alias.scope !70, !noalias !71
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader229

.lr.ph.preheader229:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0103.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.0103.ph, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader229
  %i.ae = mul nsw i64 %.0103.ph, %i.f             ; 2 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ae
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.aj = shl nuw nsw i64 %.0103.ph, 1            ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.aj
  %i.aq = fneg double %i.ao
  %i.ar = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ag, i64 1
  %i.at = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.aq, i64 1
  %i.av = fmul <2 x double> %i.as, %i.au
  %i.aw = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.ai, i64 1
  %i.ay = insertelement <2 x double> poison, double %i.al, i64 0
  %i.az = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.az, <2 x double> %i.av)
  store <2 x double> %i.ba, ptr %i.ap, align 8, !tbaa !22
  %i.bb = or disjoint i64 %.0103.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader229
  %.0103.unr = phi i64 [ %.0103.ph, %.lr.ph.preheader229 ], [ %i.bb, %.lr.ph.prol ]
  %i.bc = icmp eq i64 %i.b, %.neg
  br i1 %i.bc, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %middle.block ], [ %i.b, %.lr.ph ], [ %i.b, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.bd = icmp slt i64 %.0.lcssa, %i.d
  br i1 %i.bd, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.preheader
  %i.be = shl i64 %.0.lcssa, 4                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.be
  %i.bf = sub i64 %i.m, %i.be
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.bf, i1 false), !tbaa !22
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0103 = phi i64 [ %i.db, %.lr.ph ], [ %.0103.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bg = mul nsw i64 %.0103, %i.f                ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !22 ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bg
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !22 ; 2 uses
  %i.bl = shl nuw nsw i64 %.0103, 1               ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !22
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !22 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bl
  %i.bs = fneg double %i.bq
  %i.bt = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bi, i64 1
  %i.bv = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bs, i64 1
  %i.bx = fmul <2 x double> %i.bu, %i.bw
  %i.by = insertelement <2 x double> poison, double %i.bi, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bk, i64 1
  %i.ca = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.cb, <2 x double> %i.bx)
  store <2 x double> %i.cc, ptr %i.br, align 8, !tbaa !22
  %i.cd = add nuw nsw i64 %.0103, 1               ; 2 uses
  %i.ce = mul nsw i64 %i.cd, %i.f                 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !22 ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ce
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !22 ; 2 uses
  %i.cj = shl nuw nsw i64 %i.cd, 1                ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load double, ptr %i.cn, align 8, !tbaa !22 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cj
  %i.cq = fneg double %i.co
  %i.cr = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %i.cg, i64 1
  %i.ct = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %i.cq, i64 1
  %i.cv = fmul <2 x double> %i.cs, %i.cu
  %i.cw = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ci, i64 1
  %i.cy = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cz, <2 x double> %i.cv)
  store <2 x double> %i.da, ptr %i.cp, align 8, !tbaa !22
  %i.db = add nuw nsw i64 %.0103, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.db, %i.b
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph105.preheader, %.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !21 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  tail call void %i.df(ptr noundef %i.dd, ptr noundef %i.n, ptr noundef nonnull %i.dg, ptr noundef %i.n, ptr noundef nonnull %i.dg) #5
  %i.dh = icmp sgt i64 %i.d, 0
  br i1 %i.dh, label %.lr.ph108.preheader, label %._crit_edge109

.lr.ph108.preheader:                              ; preds = %._crit_edge
  %min.iters.check144 = icmp eq i64 %i.d, 1
  br i1 %min.iters.check144, label %.lr.ph108.preheader228, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph108.preheader
  %i.di = shl i64 %i.d, 4                         ; 2 uses
  %i.dj = getelementptr i8, ptr %i.n, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.l, i64 %i.di
  %bound0146 = icmp ult ptr %i.n, %i.dk
  %bound1147 = icmp ult ptr %i.l, %i.dj
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph108.preheader228, label %vector.ph149

vector.ph149:                                     ; preds = %vector.memcheck145
  %n.vec150 = and i64 %i.d, 9223372036854775806   ; 3 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next160, %vector.body151 ] ; 2 uses
  %i.dl = shl nuw nsw i64 %index152, 1            ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl ; 2 uses
  %wide.vec153 = load <4 x double>, ptr %i.dm, align 8, !tbaa !22, !alias.scope !74, !noalias !75 ; 2 uses
  %strided.vec154 = shufflevector <4 x double> %wide.vec153, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec155 = shufflevector <4 x double> %wide.vec153, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.dl
  %wide.vec156 = load <4 x double>, ptr %i.dn, align 8, !tbaa !22, !alias.scope !75 ; 2 uses
  %strided.vec157 = shufflevector <4 x double> %wide.vec156, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec158 = shufflevector <4 x double> %wide.vec156, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.do = fmul <2 x double> %strided.vec154, %strided.vec158
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec155, <2 x double> %strided.vec157, <2 x double> %i.do)
  %i.dq = fneg <2 x double> %strided.vec158
  %i.dr = fmul <2 x double> %strided.vec155, %i.dq
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec154, <2 x double> %strided.vec157, <2 x double> %i.dr)
  %interleaved.vec159 = shufflevector <2 x double> %i.dp, <2 x double> %i.ds, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec159, ptr %i.dm, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %index.next160 = add nuw i64 %index152, 2       ; 2 uses
  %i.dt = icmp eq i64 %index.next160, %n.vec150
  br i1 %i.dt, label %middle.block161, label %vector.body151, !llvm.loop !56

middle.block161:                                  ; preds = %vector.body151
  %cmp.n162 = icmp eq i64 %i.d, %n.vec150
  br i1 %cmp.n162, label %._crit_edge109, label %.lr.ph108.preheader228

.lr.ph108.preheader228:                           ; preds = %vector.memcheck145, %.lr.ph108.preheader, %middle.block161
  %.2106.ph = phi i64 [ 0, %vector.memcheck145 ], [ 0, %.lr.ph108.preheader ], [ %n.vec150, %middle.block161 ] ; 4 uses
  %.neg234 = or disjoint i64 %.2106.ph, 1
  %xtraiter230 = and i64 %i.d, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph108.prol.loopexit, label %.lr.ph108.prol

.lr.ph108.prol:                                   ; preds = %.lr.ph108.preheader228
  %i.du = shl nuw nsw i64 %.2106.ph, 1            ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.du
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.du
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !22 ; 2 uses
  %i.eb = fneg double %i.ea
  %i.ec = load <2 x double>, ptr %i.dv, align 8, !tbaa !22 ; 2 uses
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ee = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.eb, i64 1
  %i.eg = fmul <2 x double> %i.ec, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ei, <2 x double> %i.eg)
  store <2 x double> %i.ej, ptr %i.dv, align 8, !tbaa !22
  %i.ek = or disjoint i64 %.2106.ph, 1
  br label %.lr.ph108.prol.loopexit

.lr.ph108.prol.loopexit:                          ; preds = %.lr.ph108.prol, %.lr.ph108.preheader228
  %.2106.unr = phi i64 [ %.2106.ph, %.lr.ph108.preheader228 ], [ %i.ek, %.lr.ph108.prol ]
  %i.el = icmp eq i64 %i.d, %.neg234
  br i1 %i.el, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %.lr.ph108.prol.loopexit, %.lr.ph108
  %.2106 = phi i64 [ %i.ft, %.lr.ph108 ], [ %.2106.unr, %.lr.ph108.prol.loopexit ] ; 3 uses
  %i.em = shl nuw nsw i64 %.2106, 1               ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.em
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !22
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.em
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !22 ; 2 uses
  %i.et = fneg double %i.es
  %i.eu = load <2 x double>, ptr %i.en, align 8, !tbaa !22 ; 2 uses
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ew = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.et, i64 1
  %i.ey = fmul <2 x double> %i.eu, %i.ex
  %i.ez = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> %i.fa, <2 x double> %i.ey)
  store <2 x double> %i.fb, ptr %i.en, align 8, !tbaa !22
  %i.fc = shl i64 %.2106, 1
  %i.fd = add i64 %i.fc, 2                        ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fd ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fd
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !22
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fd
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !22 ; 2 uses
  %i.fk = fneg double %i.fj
  %i.fl = load <2 x double>, ptr %i.fe, align 8, !tbaa !22 ; 2 uses
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fk, i64 1
  %i.fp = fmul <2 x double> %i.fl, %i.fo
  %i.fq = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fr, <2 x double> %i.fp)
  store <2 x double> %i.fs, ptr %i.fe, align 8, !tbaa !22
  %i.ft = add nuw nsw i64 %.2106, 2               ; 2 uses
  %exitcond114.not.1 = icmp eq i64 %i.ft, %i.d
  br i1 %exitcond114.not.1, label %._crit_edge109, label %.lr.ph108, !llvm.loop !57

._crit_edge109:                                   ; preds = %.lr.ph108.prol.loopexit, %.lr.ph108, %middle.block161, %._crit_edge
  %i.fu = load ptr, ptr %i.dc, align 8, !tbaa !21 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !25
  tail call void %i.fw(ptr noundef %i.fu, ptr noundef nonnull %i.n, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.n, ptr noundef nonnull %i.dg) #5
  br i1 %i.o, label %.lr.ph112.preheader, label %._crit_edge113

.lr.ph112.preheader:                              ; preds = %._crit_edge109
  %min.iters.check191 = icmp ugt i64 %i.b, 9
  %ident.check165.not = icmp eq i64 %i.h, 1
  %or.cond226 = select i1 %min.iters.check191, i1 %ident.check165.not, i1 false
  br i1 %or.cond226, label %vector.memcheck192, label %.lr.ph112.preheader227

vector.memcheck192:                               ; preds = %.lr.ph112.preheader
  %i.fx = shl i64 %i.b, 3                         ; 2 uses
  %i.fy = getelementptr i8, ptr %3, i64 %i.fx     ; 3 uses
  %i.fz = getelementptr i8, ptr %4, i64 %i.fx     ; 3 uses
  %7 = shl i64 %i.b, 4                            ; 2 uses
  %8 = getelementptr i8, ptr %i.n, i64 %7         ; 2 uses
  %9 = getelementptr i8, ptr %i.j, i64 %7         ; 2 uses
  %bound0193 = icmp ult ptr %3, %i.fz
  %bound1194 = icmp ult ptr %4, %i.fy
  %found.conflict195 = and i1 %bound0193, %bound1194
  %bound0196 = icmp ult ptr %3, %8
  %bound1197 = icmp ult ptr %i.n, %i.fy
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %found.conflict195, %found.conflict198
  %bound0200 = icmp ult ptr %3, %9
  %bound1201 = icmp ult ptr %i.j, %i.fy
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %4, %8
  %bound1205 = icmp ult ptr %i.n, %i.fz
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  %bound0208 = icmp ult ptr %4, %9
  %bound1209 = icmp ult ptr %i.j, %i.fz
  %found.conflict210 = and i1 %bound0208, %bound1209
  %conflict.rdx211 = or i1 %conflict.rdx207, %found.conflict210
  br i1 %conflict.rdx211, label %.lr.ph112.preheader227, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck192
  %n.vec213 = and i64 %i.b, 9223372036854775806   ; 3 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next222, %vector.body214 ] ; 4 uses
  %i.ga = shl nuw nsw i64 %index215, 1            ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ga
  %wide.vec216 = load <4 x double>, ptr %i.gb, align 8, !tbaa !22, !alias.scope !76 ; 2 uses
  %strided.vec217 = shufflevector <4 x double> %wide.vec216, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec218 = shufflevector <4 x double> %wide.vec216, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ga
  %wide.vec219 = load <4 x double>, ptr %i.gc, align 8, !tbaa !22, !alias.scope !77 ; 2 uses
  %strided.vec220 = shufflevector <4 x double> %wide.vec219, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec221 = shufflevector <4 x double> %wide.vec219, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gd = fmul <2 x double> %strided.vec217, %strided.vec221
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec218, <2 x double> %strided.vec220, <2 x double> %i.gd)
  %i.gf = getelementptr inbounds [8 x i8], ptr %3, i64 %index215
  store <2 x double> %i.ge, ptr %i.gf, align 8, !tbaa !22, !alias.scope !78, !noalias !79
  %i.gg = fneg <2 x double> %strided.vec221
  %i.gh = fmul <2 x double> %strided.vec218, %i.gg
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec217, <2 x double> %strided.vec220, <2 x double> %i.gh)
  %i.gj = getelementptr inbounds [8 x i8], ptr %4, i64 %index215
  store <2 x double> %i.gi, ptr %i.gj, align 8, !tbaa !22, !alias.scope !80, !noalias !81
  %index.next222 = add nuw i64 %index215, 2       ; 2 uses
  %i.gk = icmp eq i64 %index.next222, %n.vec213
  br i1 %i.gk, label %middle.block223, label %vector.body214, !llvm.loop !63

middle.block223:                                  ; preds = %vector.body214
  %cmp.n224 = icmp eq i64 %i.b, %n.vec213
  br i1 %cmp.n224, label %._crit_edge113, label %.lr.ph112.preheader227

.lr.ph112.preheader227:                           ; preds = %vector.memcheck192, %.lr.ph112.preheader, %middle.block223
  %.3110.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph112.preheader ], [ %n.vec213, %middle.block223 ] ; 5 uses
  %.neg235 = or disjoint i64 %.3110.ph, 1
  %xtraiter232 = and i64 %i.b, 1
  %lcmp.mod233.not = icmp eq i64 %xtraiter232, 0
  br i1 %lcmp.mod233.not, label %.lr.ph112.prol.loopexit, label %.lr.ph112.prol

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader227
  %i.gl = shl nuw nsw i64 %.3110.ph, 1            ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.gl
  %i.go = load double, ptr %i.gn, align 8, !tbaa !22
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.gl
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !22 ; 2 uses
  %i.gs = mul nsw i64 %.3110.ph, %i.h             ; 2 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %3, i64 %i.gs
  %i.gu = fneg double %i.gr
  %i.gv = load <2 x double>, ptr %i.gm, align 8, !tbaa !22 ; 2 uses
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gx = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gu, i64 1
  %i.gz = fmul <2 x double> %i.gv, %i.gy
  %i.ha = insertelement <2 x double> poison, double %i.go, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.hb, <2 x double> %i.gz) ; 2 uses
  %i.hd = extractelement <2 x double> %i.hc, i64 0
  store double %i.hd, ptr %i.gt, align 8, !tbaa !22
  %i.he = getelementptr inbounds [8 x i8], ptr %4, i64 %i.gs
  %i.hf = extractelement <2 x double> %i.hc, i64 1
  store double %i.hf, ptr %i.he, align 8, !tbaa !22
  %i.hg = or disjoint i64 %.3110.ph, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol, %.lr.ph112.preheader227
  %.3110.unr = phi i64 [ %.3110.ph, %.lr.ph112.preheader227 ], [ %i.hg, %.lr.ph112.prol ]
  %i.hh = icmp eq i64 %i.b, %.neg235
  br i1 %i.hh, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112
  %.3110 = phi i64 [ %i.iz, %.lr.ph112 ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.hi = shl nuw nsw i64 %.3110, 1               ; 3 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.hi
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !22
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.hi
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !22 ; 2 uses
  %i.hp = mul nsw i64 %.3110, %i.h                ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %3, i64 %i.hp
  %i.hr = fneg double %i.ho
  %i.hs = load <2 x double>, ptr %i.hj, align 8, !tbaa !22 ; 2 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.hr, i64 1
  %i.hw = fmul <2 x double> %i.hs, %i.hv
  %i.hx = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hy, <2 x double> %i.hw) ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 0
  store double %i.ia, ptr %i.hq, align 8, !tbaa !22
  %i.ib = getelementptr inbounds [8 x i8], ptr %4, i64 %i.hp
  %i.ic = extractelement <2 x double> %i.hz, i64 1
  store double %i.ic, ptr %i.ib, align 8, !tbaa !22
  %i.id = add nuw nsw i64 %.3110, 1               ; 2 uses
  %i.ie = shl nuw nsw i64 %i.id, 1                ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ie
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !22
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !22 ; 2 uses
  %i.il = mul nsw i64 %i.id, %i.h                 ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %3, i64 %i.il
  %i.in = fneg double %i.ik
  %i.io = load <2 x double>, ptr %i.if, align 8, !tbaa !22 ; 2 uses
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.iq = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.ir = insertelement <2 x double> %i.iq, double %i.in, i64 1
  %i.is = fmul <2 x double> %i.io, %i.ir
  %i.it = insertelement <2 x double> poison, double %i.ih, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.iu, <2 x double> %i.is) ; 2 uses
  %i.iw = extractelement <2 x double> %i.iv, i64 0
  store double %i.iw, ptr %i.im, align 8, !tbaa !22
  %i.ix = getelementptr inbounds [8 x i8], ptr %4, i64 %i.il
  %i.iy = extractelement <2 x double> %i.iv, i64 1
  store double %i.iy, ptr %i.ix, align 8, !tbaa !22
  %i.iz = add nuw nsw i64 %.3110, 2               ; 2 uses
  %exitcond115.not.1 = icmp eq i64 %i.iz, %i.b
  br i1 %exitcond115.not.1, label %._crit_edge113, label %.lr.ph112, !llvm.loop !64

._crit_edge113:                                   ; preds = %.lr.ph112.prol.loopexit, %.lr.ph112, %middle.block223, %._crit_edge109
  tail call void @fftw_ifree(ptr noundef nonnull %i.n) #5
  ret void
}

declare void @fftw_ops_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ifree0(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktriggen(i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_triggen_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @fftw_is_prime(i64 noundef) local_unnamed_addr #1

declare i32 @fftw_factors_into_small_primes(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"double", !5, i64 0}
!14 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!15 = !{!"plan_s", !9, i64 0, !14, i64 8, !13, i64 40, !6, i64 48, !6, i64 52}
!16 = !{!"", !15, i64 0, !9, i64 56}
!17 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!18 = !{!"", !16, i64 0, !11, i64 64, !11, i64 72, !10, i64 80, !10, i64 88, !17, i64 96, !11, i64 104, !11, i64 112}
!19 = !{!18, !11, i64 64}
!20 = !{!18, !11, i64 72}
end_hunk_0
