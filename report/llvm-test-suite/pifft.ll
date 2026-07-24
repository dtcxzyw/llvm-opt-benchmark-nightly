inline.NumInlined: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 22
begin_hunk_0_@main:bb.a

.lr.ph.i285.preheader:                            ; preds = %.lr.ph.preheader.i282, %middle.block367
  %indvars.iv.i286.ph = phi i64 [ 2, %.lr.ph.preheader.i282 ], [ %i.fv, %middle.block367 ]
  %.027.i287.ph = phi i32 [ %spec.store.select.neg.i279, %.lr.ph.preheader.i282 ], [ %vector.recur.extract368, %middle.block367 ]
  br label %.lr.ph.i285

.lr.ph.i285:                                      ; preds = %.lr.ph.i285.preheader, %.lr.ph.i285
  %indvars.iv.i286 = phi i64 [ %indvars.iv.next.i289, %.lr.ph.i285 ], [ %indvars.iv.i286.ph, %.lr.ph.i285.preheader ] ; 3 uses
  %.027.i287 = phi i32 [ %i.gs, %.lr.ph.i285 ], [ %.027.i287.ph, %.lr.ph.i285.preheader ]
  %gep.i288 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i284, i64 %indvars.iv.i286
  %i.go = load i32, ptr %gep.i288, align 4, !tbaa !4 ; 2 uses
  %i.gp = and i32 %.027.i287, %.0250.lcssa
  %i.gq = add nsw i32 %i.go, %i.gp
  %i.gr = and i32 %i.go, 1
  %i.gs = sub nsw i32 0, %i.gr                    ; 2 uses
  %i.gt = ashr i32 %i.gq, 1
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i286
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !4
  %indvars.iv.next.i289 = add nuw nsw i64 %indvars.iv.i286, 1 ; 2 uses
  %exitcond.not.i290 = icmp eq i64 %indvars.iv.next.i289, %wide.trip.count.i283
  br i1 %exitcond.not.i290, label %._crit_edge.i291, label %.lr.ph.i285, !llvm.loop !23

._crit_edge.i291:                                 ; preds = %.lr.ph.i285, %middle.block367, %mp_idiv_2.exit278
  %.0.lcssa.i292 = phi i32 [ %spec.store.select.neg.i279, %mp_idiv_2.exit278 ], [ %vector.recur.extract368, %middle.block367 ], [ %i.gs, %.lr.ph.i285 ]
  br i1 %i.fo, label %bb.o, label %mp_idiv_2.exit293

bb.o:                                             ; preds = %._crit_edge.i291
  %i.gv = and i32 %.0.lcssa.i292, %.0250.lcssa
  %i.gw = lshr exact i32 %i.gv, 1
  store i32 %i.gw, ptr %i.ce, align 4, !tbaa !4
  br label %mp_idiv_2.exit293

mp_idiv_2.exit293:                                ; preds = %._crit_edge.i291, %bb.o
  call void @mp_sub(i32 noundef %i.q, i32 noundef %.0250.lcssa, ptr noundef %i.ag, ptr noundef nonnull %i.aj, ptr noundef %i.ag)
  %i.gx = load i32, ptr %i.a, align 4, !tbaa !4
  call void @mp_mul(i32 noundef %i.q, i32 noundef %.0250.lcssa, ptr noundef %i.ag, ptr noundef %i.ah, ptr noundef %i.ag, ptr noundef %i.ak, i32 noundef %i.gx, ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.y, ptr noundef %i.ac)
  %i.gy = call i32 @mp_idiv(i32 noundef %i.q, i32 noundef %.0250.lcssa, ptr noundef %i.ag, i32 noundef %i.cf, ptr noundef %i.ag) ; 0 uses
  call void @free(ptr noundef nonnull %i.aq) #21
  call void @free(ptr noundef %i.ap) #21
  call void @free(ptr noundef %i.ao) #21
  %i.gz = mul nsw i32 %.0251.lcssa, %i.q
  %i.ha = add nsw i32 %i.gz, 32
  %i.hb = sext i32 %i.ha to i64
  %i.hc = call noalias ptr @malloc(i64 noundef %i.hb) #25 ; 3 uses
  call void @mp_sprintf(i32 noundef %invariant.op, i32 noundef %.0251.lcssa, ptr noundef %i.ag, ptr noundef %i.hc)
  %puts263 = call i32 @puts(ptr nonnull dereferenceable(1) %i.hc) ; 0 uses
  call void @free(ptr noundef %i.hc) #21
  call void @free(ptr noundef %i.al) #21
  call void @free(ptr noundef %i.ak) #21
  call void @free(ptr noundef nonnull %i.aj) #21
  call void @free(ptr noundef nonnull %i.ai) #21
  call void @free(ptr noundef %i.ah) #21
  call void @free(ptr noundef %i.ag) #21
  call void @free(ptr noundef %i.ac) #21
  call void @free(ptr noundef nonnull %i.y) #21
  %i.hd = load i32, ptr %i.a, align 4, !tbaa !4
  %i.he = sitofp i32 %i.hd to double
  %i.hf = fmul nnan double %i.he, 5.000000e+01
  %i.hg = uitofp nneg i32 %.0 to double           ; 2 uses
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = fmul double %i.hh, %i.hg
  %i.hj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.hi) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local double @mp_mul_radix_test(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = ashr i32 %2, 1                           ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  %.not = icmp slt i32 %i.a, %0
  %spec.select = select i1 %.not, i32 %i.b, i32 %0 ; 4 uses
  %i.c = add nsw i32 %1, -1
  %i.d = sitofp i32 %i.c to double                ; 2 uses
  %i.e = sext i32 %2 to i64                       ; 3 uses
  %i.f = getelementptr [8 x i8], ptr %3, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 8
  store double %i.d, ptr %i.g, align 8, !tbaa !24
  %i.h = icmp sgt i32 %2, %spec.select
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = xor i32 %spec.select, -1
  %i.j = add i32 %2, %i.i
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = sub nsw i64 %i.e, %i.k
  %i.n = shl nsw i64 %i.m, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.n
  %i.o = add nuw nsw i64 %i.l, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.o, i1 false), !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.p = icmp sgt i32 %spec.select, 2
  br i1 %i.p, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %._crit_edge
  %i.q = add nsw i32 %1, 1
  %i.r = sdiv i32 %i.q, 2
  %i.s = sitofp i32 %i.r to double                ; 2 uses
  %i.t = zext nneg i32 %spec.select to i64        ; 4 uses
  %i.u = add nsw i64 %i.t, -2                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.u, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = sub nsw i64 %i.t, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = sub i64 %i.t, %index
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -24
  store <2 x double> %broadcast.splat, ptr %i.y, align 8, !tbaa !24
  store <2 x double> %broadcast.splat, ptr %i.z, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge48, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph47, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %.lr.ph47 ], [ %i.v, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store double %i.s, ptr %i.ab, align 8, !tbaa !24
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ac = icmp samesign ugt i64 %indvars.iv, 3
  br i1 %i.ac, label %scalar.ph, label %._crit_edge48, !llvm.loop !27

._crit_edge48:                                    ; preds = %scalar.ph, %middle.block, %._crit_edge
  %i.ad = sitofp i32 %1 to double                 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store double %i.ad, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store double %i.d, ptr %i.af, align 8, !tbaa !24
  store double 0.000000e+00, ptr %3, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %2, i32 noundef 1, ptr noundef nonnull %i.af, ptr noundef %4, ptr noundef %5) #21
  %i.ag = load <2 x double>, ptr %3, align 8, !tbaa !24 ; 2 uses
  %i.ah = insertelement <2 x double> %i.ag, double 2.000000e+00, i64 0
  %i.ai = fmul <2 x double> %i.ag, %i.ah
  store <2 x double> %i.ai, ptr %3, align 8, !tbaa !24
  %i.aj = load double, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %i.ak = fmul double %i.aj, %i.aj
  store double %i.ak, ptr %i.ae, align 8, !tbaa !24
  %i.al = icmp sgt i32 %2, 3
  br i1 %i.al, label %.lr.ph.preheader.i, label %mp_mul_csqu.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge48
  %i.am = zext nneg i32 %2 to i64                 ; 4 uses
  %i.an = tail call i64 @llvm.umax.i64(i64 %i.am, i64 5)
  %i.ao = add nsw i64 %i.an, -4
  %i.ap = lshr i64 %i.ao, 1                       ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 3 uses
  %min.iters.check56 = icmp eq i64 %i.ap, 0
  br i1 %min.iters.check56, label %.lr.ph.i.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %.lr.ph.preheader.i
  %n.vec59 = and i64 %i.aq, 9223372036854775806   ; 2 uses
  %i.ar = shl nuw i64 %i.aq, 1
  %i.as = or i64 %i.ar, 3
  br label %vector.body60

vector.body60:                                    ; preds = %vector.body60, %vector.ph57
  %index61 = phi i64 [ 0, %vector.ph57 ], [ %index.next63, %vector.body60 ] ; 2 uses
  %.idx = shl i64 %index61, 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.au, align 8, !tbaa !24 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec62 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.av = fneg <2 x double> %strided.vec62
  %i.aw = fmul <2 x double> %strided.vec62, %i.av
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec, <2 x double> %i.aw)
  %i.ay = fmul <2 x double> %strided.vec, splat (double 2.000000e+00)
  %i.az = fmul <2 x double> %i.ay, %strided.vec62
  %interleaved.vec = shufflevector <2 x double> %i.ax, <2 x double> %i.az, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.au, align 8, !tbaa !24
  %index.next63 = add nuw i64 %index61, 2         ; 2 uses
  %i.ba = icmp eq i64 %index.next63, %n.vec59
  br i1 %i.ba, label %middle.block64, label %vector.body60, !llvm.loop !28

middle.block64:                                   ; preds = %vector.body60
  %cmp.n65 = icmp eq i64 %i.aq, %n.vec59
  br i1 %cmp.n65, label %mp_mul_csqu.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block64
  %indvars.iv.i.ph = phi i64 [ 3, %.lr.ph.preheader.i ], [ %i.as, %middle.block64 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !24 ; 3 uses
  %i.bf = fneg double %i.be
  %i.bg = fmul double %i.be, %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.bg)
  store double %i.bh, ptr %i.bb, align 8, !tbaa !24
  %i.bi = fmul double %i.bc, 2.000000e+00
  %i.bj = fmul double %i.bi, %i.be
  store double %i.bj, ptr %i.bd, align 8, !tbaa !24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i, %i.am
  br i1 %i.bk, label %.lr.ph.i, label %mp_mul_csqu.exit, !llvm.loop !29

mp_mul_csqu.exit:                                 ; preds = %.lr.ph.i, %middle.block64, %._crit_edge48
  %.pre-phi.i = phi i64 [ %i.e, %._crit_edge48 ], [ %i.am, %middle.block64 ], [ %i.am, %.lr.ph.i ]
  %i.bl = getelementptr [8 x i8], ptr %3, i64 %.pre-phi.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 8      ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !24 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  store double %i.bo, ptr %i.bm, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %2, i32 noundef -1, ptr noundef nonnull %i.af, ptr noundef %4, ptr noundef %5) #21
  %i.bp = sitofp i32 %2 to double                 ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.ad, i64 1
  %i.bs = fdiv <2 x double> <double 2.000000e+00, double 1.000000e+00>, %i.br ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.bs, %i.bs
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.bu = add nsw i32 %2, 1                       ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bv ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = fmul double %i.bx, %i.bp
  %i.bz = fmul double %i.by, 5.000000e-01         ; 3 uses
  %i.ca = fcmp olt double %i.bz, 0.000000e+00
  %i.cb = fneg double %i.bz
  %.043.i = select i1 %i.ca, double %i.cb, double %i.bz
  %i.cc = load double, ptr %i.af, align 8, !tbaa !24
  %i.cd = fsub double %i.cc, %.043.i
  store double %i.cd, ptr %i.bw, align 8, !tbaa !24
  %i.ce = icmp sgt i32 %2, 0
  br i1 %i.ce, label %.lr.ph.preheader.i40, label %mp_mul_d2i_test.exit

.lr.ph.preheader.i40:                             ; preds = %mp_mul_csqu.exit
  %i.cf = zext nneg i32 %i.bu to i64
  %i.cg = extractelement <2 x double> %i.bs, i64 0
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.d, %.lr.ph.preheader.i40
  %indvars.iv.i42 = phi i64 [ %i.cf, %.lr.ph.preheader.i40 ], [ %indvars.iv.next.i43, %bb.d ] ; 3 uses
  %.052.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i40 ], [ %.1.i, %bb.d ] ; 3 uses
  %.04150.i = phi i32 [ 0, %.lr.ph.preheader.i40 ], [ %i.cw, %bb.d ]
  %.04249.i = phi i32 [ 0, %.lr.ph.preheader.i40 ], [ %i.co, %bb.d ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i42
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !24
  %i.cj = sitofp i32 %.04150.i to double
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.ci, double %i.cj)
  %i.cl = fadd double %i.ck, 5.000000e-01
  %i.cm = fmul double %i.bt, %i.cl                ; 2 uses
  %i.cn = fptosi double %i.cm to i32
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  %i.cp = sitofp i32 %i.co to double
  %i.cq = fsub double %i.cm, %i.cp
  %i.cr = fmul double %i.cq, %i.ad                ; 2 uses
  %i.cs = fptosi double %i.cr to i32              ; 2 uses
  %i.ct = sitofp i32 %i.cs to double
  %i.cu = fsub double %i.cr, %i.ct
  %i.cv = fmul double %i.cu, %i.ad                ; 2 uses
  %i.cw = add nsw i32 %.04249.i, %i.cs
  %i.cx = fadd double %i.cv, -5.000000e-01
  %i.cy = fptosi double %i.cv to i32
  %i.cz = sitofp i32 %i.cy to double
  %i.da = fsub double %i.cx, %i.cz                ; 3 uses
  %i.db = fcmp ogt double %i.da, %.052.i
  br i1 %i.db, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i41
  %i.dc = fneg double %i.da                       ; 2 uses
  %i.dd = fcmp olt double %.052.i, %i.dc
  br i1 %i.dd, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i41
  %.1.i = phi double [ %.052.i, %bb.b ], [ %i.dc, %bb.c ], [ %i.da, %.lr.ph.i41 ] ; 2 uses
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i42, -1
  %i.de = icmp sgt i64 %indvars.iv.i42, 2
  br i1 %i.de, label %.lr.ph.i41, label %mp_mul_d2i_test.exit.loopexit, !llvm.loop !30

mp_mul_d2i_test.exit.loopexit:                    ; preds = %bb.d
  %i.df = fmul double %.1.i, 2.000000e+00
  br label %mp_mul_d2i_test.exit

mp_mul_d2i_test.exit:                             ; preds = %mp_mul_d2i_test.exit.loopexit, %mp_mul_csqu.exit
  %.0.lcssa.i = phi double [ 0.000000e+00, %mp_mul_csqu.exit ], [ %i.df, %mp_mul_d2i_test.exit.loopexit ]
  ret double %.0.lcssa.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @mp_sscanf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.081 = phi ptr [ %2, %bb.a ], [ %i.d, %bb.b ]  ; 4 uses
  %i.b = load i8, ptr %.081, align 1, !tbaa !31
  %i.c = icmp eq i8 %i.b, 32
  %i.d = getelementptr inbounds nuw i8, ptr %.081, i64 1 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !32

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !4
  %i.e = load i8, ptr %.081, align 1, !tbaa !31
  switch i8 %i.e, label %.preheader203 [
    i8 45, label %bb.d
    i8 43, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %3, align 4, !tbaa !4
  br label %.preheader203

bb.e:                                             ; preds = %bb.c
  br label %.preheader203

.preheader203:                                    ; preds = %bb.c, %bb.e, %bb.d
  %.283.ph = phi ptr [ %.081, %bb.c ], [ %i.d, %bb.e ], [ %i.d, %bb.d ]
  br label %bb.f

bb.f:                                             ; preds = %.preheader203, %.critedge
  %.283 = phi ptr [ %i.g, %.critedge ], [ %.283.ph, %.preheader203 ] ; 9 uses
  %i.f = load i8, ptr %.283, align 1, !tbaa !31
  switch i8 %i.f, label %bb.g [
    i8 32, label %.critedge
    i8 48, label %.critedge
  ]

.critedge:                                        ; preds = %bb.f, %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %.283, i64 1
  br label %bb.f, !llvm.loop !33

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.a, align 4, !tbaa !4
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.076 = phi ptr [ %.283, %bb.g ], [ %i.k, %bb.k ] ; 3 uses
  %i.h = load i8, ptr %.076, align 1, !tbaa !31
  switch i8 %i.h, label %bb.k [
    i8 0, label %.loopexit107
    i8 101, label %bb.i
    i8 69, label %bb.i
    i8 100, label %bb.i
    i8 68, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %.076, i64 1
  %i.j = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #21
  %.not98 = icmp eq i32 %i.j, 1
  br i1 %.not98, label %.loopexit107, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.a, align 4, !tbaa !4
  br label %.loopexit107

bb.k:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@mp_mul:bb.a
  %i.ad = sub nsw i64 %i.v, %i.ab
  %i.ae = shl nsw i64 %i.ad, 3
  %scevgep.i = getelementptr i8, ptr %7, i64 %i.ae
  %i.af = add nuw nsw i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.af, i1 false), !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %i.ag = icmp sgt i32 %.045.i, 1
  br i1 %i.ag, label %bb.e, label %mp_mul_i2d.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.ah = sdiv i32 %1, 2
  %.not58.i = icmp eq i32 %.045.i, 2
  br i1 %.not58.i, label %._crit_edge57.i, label %.lr.ph56.preheader.i

.lr.ph56.preheader.i:                             ; preds = %bb.e
  %i.ai = add nuw i32 %.045.i, 1
  %i.aj = sext i32 %i.ai to i64
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i, %.lr.ph56.preheader.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph56.preheader.i ], [ %indvars.iv.next.i, %.lr.ph56.i ] ; 4 uses
  %.04653.i = phi i32 [ 0, %.lr.ph56.preheader.i ], [ %i.am, %.lr.ph56.i ]
  %gep.i = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.ak = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.al = sub nsw i32 %i.ak, %.04653.i            ; 2 uses
  %.not51.i = icmp sge i32 %i.al, %i.ah           ; 2 uses
  %i.am = sext i1 %.not51.i to i32                ; 2 uses
  %i.an = select i1 %.not51.i, i32 %1, i32 0
  %i.ao = sub nsw i32 %i.al, %i.an
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store double %i.ap, ptr %i.ar, align 8, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.as = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.as, label %.lr.ph56.i, label %._crit_edge57.i, !llvm.loop !63

._crit_edge57.i:                                  ; preds = %.lr.ph56.i, %bb.e
  %.046.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.am, %.lr.ph56.i ]
  %i.at = getelementptr i8, ptr %2, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  %i.av = sub nsw i32 %i.au, %.046.lcssa.i
  %i.aw = sitofp i32 %i.av to double
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.aw, ptr %i.ax, align 8, !tbaa !24
  br label %mp_mul_i2d.exit

mp_mul_i2d.exit:                                  ; preds = %._crit_edge.i, %._crit_edge57.i
  %i.ay = sitofp i32 %.0.i to double
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  store double %i.ay, ptr %i.az, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = sitofp i32 %i.bb to double
  store double %i.bc, ptr %7, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %i.az, ptr noundef %10, ptr noundef %11) #21
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mp_mul_i2d.exit
  %i.bd = sext i32 %.0.lcssa to i64
  %i.be = getelementptr [4 x i8], ptr %3, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %.not.i103 = icmp slt i32 %i.a, %i.o
  %spec.select.i104 = select i1 %.not.i103, i32 %i.d, i32 %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mp_mul_i2d.exit
  %.045.i87 = phi i32 [ 0, %mp_mul_i2d.exit ], [ %spec.select.i104, %bb.f ] ; 5 uses
  %.0.i88 = phi i32 [ 0, %mp_mul_i2d.exit ], [ %i.bg, %bb.f ] ; 2 uses
  %i.bh = load i32, ptr %3, align 4, !tbaa !4
  %i.bi = mul nsw i32 %i.bh, %.0.i88
  %i.bj = sitofp i32 %i.bi to double
  %i.bk = getelementptr [8 x i8], ptr %9, i64 %i.v
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store double %i.bj, ptr %i.bl, align 8, !tbaa !24
  %i.bm = icmp sgt i32 %6, %.045.i87
  br i1 %i.bm, label %.lr.ph.preheader.i101, label %._crit_edge.i89

.lr.ph.preheader.i101:                            ; preds = %bb.g
  %i.bn = xor i32 %.045.i87, -1
  %i.bo = add i32 %6, %i.bn
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = sub nsw i64 %i.v, %i.bp
  %i.bs = shl nsw i64 %i.br, 3
  %scevgep.i102 = getelementptr i8, ptr %9, i64 %i.bs
  %i.bt = add nuw nsw i64 %i.bq, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i102, i8 0, i64 %i.bt, i1 false), !tbaa !24
  br label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %.lr.ph.preheader.i101, %bb.g
  %i.bu = icmp sgt i32 %.045.i87, 1
  br i1 %i.bu, label %bb.h, label %mp_mul_i2d.exit105

bb.h:                                             ; preds = %._crit_edge.i89
  %i.bv = sdiv i32 %1, 2
  %.not58.i90 = icmp eq i32 %.045.i87, 2
  br i1 %.not58.i90, label %.._crit_edge57_crit_edge.i100, label %.lr.ph56.preheader.i91

.._crit_edge57_crit_edge.i100:                    ; preds = %bb.h
  %.pre.i = sext i32 %.0.lcssa to i64
  br label %._crit_edge57.i98

.lr.ph56.preheader.i91:                           ; preds = %bb.h
  %i.bw = add nuw i32 %.045.i87, 1
  %i.bx = sext i32 %i.bw to i64
  %i.by = sext i32 %.0.lcssa to i64               ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %3, i64 %i.by
  br label %.lr.ph56.i92

.lr.ph56.i92:                                     ; preds = %.lr.ph56.i92, %.lr.ph56.preheader.i91
  %indvars.iv.i93 = phi i64 [ %i.bx, %.lr.ph56.preheader.i91 ], [ %indvars.iv.next.i97, %.lr.ph56.i92 ] ; 4 uses
  %.04653.i94 = phi i32 [ 0, %.lr.ph56.preheader.i91 ], [ %i.cb, %.lr.ph56.i92 ]
  %gep.i95 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i93
  %i.bz = load i32, ptr %gep.i95, align 4, !tbaa !4
  %i.ca = sub nsw i32 %i.bz, %.04653.i94          ; 2 uses
  %.not51.i96 = icmp sge i32 %i.ca, %i.bv         ; 2 uses
  %i.cb = sext i1 %.not51.i96 to i32              ; 2 uses
  %i.cc = select i1 %.not51.i96, i32 %1, i32 0
  %i.cd = sub nsw i32 %i.ca, %i.cc
  %i.ce = sitofp i32 %i.cd to double
  %i.cf = getelementptr [8 x i8], ptr %9, i64 %indvars.iv.i93
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  store double %i.ce, ptr %i.cg, align 8, !tbaa !24
  %indvars.iv.next.i97 = add nsw i64 %indvars.iv.i93, -1
  %i.ch = icmp sgt i64 %indvars.iv.i93, 4
  br i1 %i.ch, label %.lr.ph56.i92, label %._crit_edge57.i98, !llvm.loop !63

._crit_edge57.i98:                                ; preds = %.lr.ph56.i92, %.._crit_edge57_crit_edge.i100
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge57_crit_edge.i100 ], [ %i.by, %.lr.ph56.i92 ]
  %.046.lcssa.i99 = phi i32 [ 0, %.._crit_edge57_crit_edge.i100 ], [ %i.cb, %.lr.ph56.i92 ]
  %i.ci = getelementptr [4 x i8], ptr %3, i64 %.pre-phi.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = sub nsw i32 %i.ck, %.046.lcssa.i99
  %i.cm = sitofp i32 %i.cl to double
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16
  store double %i.cm, ptr %i.cn, align 8, !tbaa !24
  br label %mp_mul_i2d.exit105

mp_mul_i2d.exit105:                               ; preds = %._crit_edge.i89, %._crit_edge57.i98
  %i.co = sitofp i32 %.0.i88 to double
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store double %i.co, ptr %i.cp, align 8, !tbaa !24
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cs = sub nsw i32 %i.cr, %.0.lcssa
  %i.ct = sitofp i32 %i.cs to double
  store double %i.ct, ptr %9, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %i.cp, ptr noundef %10, ptr noundef %11) #21
  %i.cu = load double, ptr %7, align 8, !tbaa !24
  %i.cv = load double, ptr %9, align 8, !tbaa !24
  %i.cw = fadd double %i.cu, %i.cv
  store double %i.cw, ptr %9, align 8, !tbaa !24
  %i.cx = load double, ptr %i.az, align 8, !tbaa !24
  %i.cy = load double, ptr %i.cp, align 8, !tbaa !24
  %i.cz = fmul double %i.cx, %i.cy
  store double %i.cz, ptr %i.cp, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !24
  %i.de = fmul double %i.db, %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !24
  %i.df = icmp sgt i32 %6, 3                      ; 3 uses
  br i1 %i.df, label %.lr.ph.preheader.i107, label %mp_mul_cmul.exit

.lr.ph.preheader.i107:                            ; preds = %mp_mul_i2d.exit105
  %i.dg = zext nneg i32 %6 to i64                 ; 3 uses
  %i.dh = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 5)
  %i.di = add nsw i64 %i.dh, -4                   ; 2 uses
  %i.dj = lshr i64 %i.di, 1
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 3 uses
  %min.iters.check = icmp ult i64 %i.di, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i107
  %scevgep = getelementptr i8, ptr %9, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 5)
  %i.dl = shl nuw nsw i64 %umax, 3
  %i.dm = or i64 %i.dl, 8                         ; 2 uses
  %scevgep191 = getelementptr i8, ptr %9, i64 %i.dm
  %scevgep192 = getelementptr i8, ptr %7, i64 24
  %scevgep193 = getelementptr i8, ptr %7, i64 %i.dm
  %bound0 = icmp ult ptr %scevgep, %scevgep193
  %bound1 = icmp ult ptr %scevgep192, %scevgep191
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dk, 9223372036854775806     ; 2 uses
  %i.dn = shl nuw i64 %i.dk, 1
  %i.do = or i64 %i.dn, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 1
  %i.dq = or disjoint i64 %i.dp, 3                ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.dq
  %wide.vec = load <4 x double>, ptr %i.dr, align 8, !tbaa !24, !alias.scope !64 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec194 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.dq ; 2 uses
  %wide.vec195 = load <4 x double>, ptr %i.ds, align 8, !tbaa !24, !alias.scope !67, !noalias !64 ; 2 uses
  %strided.vec196 = shufflevector <4 x double> %wide.vec195, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec197 = shufflevector <4 x double> %wide.vec195, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dt = fneg <2 x double> %strided.vec197
  %i.du = fmul <2 x double> %strided.vec194, %i.dt
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec196, <2 x double> %i.du)
  %i.dw = fmul <2 x double> %strided.vec194, %strided.vec196
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec197, <2 x double> %i.dw)
  %interleaved.vec = shufflevector <2 x double> %i.dv, <2 x double> %i.dx, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.ds, align 8, !tbaa !24, !alias.scope !67, !noalias !64
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %mp_mul_cmul.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i107, %middle.block
  %indvars.iv.i108.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader.i107 ], [ %i.do, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i109, %.lr.ph.i ], [ %indvars.iv.i108.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i108
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !24
  %i.eb = add nuw nsw i64 %indvars.iv.i108, 1     ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv.i108 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.eb
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !24
  %i.eh = load <2 x double>, ptr %i.ee, align 8, !tbaa !24 ; 2 uses
  %i.ei = fneg double %i.eg
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.em = insertelement <2 x double> %i.el, double %i.ei, i64 0
  %i.en = fmul <2 x double> %i.ek, %i.em
  %i.eo = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.eh, <2 x double> %i.en)
  store <2 x double> %i.eq, ptr %i.ee, align 8, !tbaa !24
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 2 ; 2 uses
  %i.er = icmp samesign ult i64 %indvars.iv.next.i109, %i.dg
  br i1 %i.er, label %.lr.ph.i, label %mp_mul_cmul.exit, !llvm.loop !70

mp_mul_cmul.exit:                                 ; preds = %.lr.ph.i, %middle.block, %mp_mul_i2d.exit105
  %i.es = add nsw i32 %6, 1
  %i.et = sext i32 %i.es to i64                   ; 3 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %7, i64 %i.et ; 4 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ew = getelementptr inbounds [8 x i8], ptr %9, i64 %i.et ; 4 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !24
  %i.ey = fmul double %i.ev, %i.ex
  store double %i.ey, ptr %i.ew, align 8, !tbaa !24
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %mp_mul_cmul.exit
  %i.ez = getelementptr i8, ptr %3, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !4
  %.not.i128 = icmp slt i32 %i.a, %0
  %spec.select.i129 = select i1 %.not.i128, i32 %i.d, i32 %0
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %mp_mul_cmul.exit
  %.045.i110 = phi i32 [ 0, %mp_mul_cmul.exit ], [ %spec.select.i129, %bb.i ] ; 5 uses
  %.0.i111 = phi i32 [ 0, %mp_mul_cmul.exit ], [ %i.fa, %bb.i ] ; 2 uses
  %i.fb = load i32, ptr %3, align 4, !tbaa !4
  %i.fc = mul nsw i32 %i.fb, %.0.i111
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = getelementptr [8 x i8], ptr %8, i64 %i.v
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  store double %i.fd, ptr %i.ff, align 8, !tbaa !24
  %i.fg = icmp sgt i32 %6, %.045.i110
  br i1 %i.fg, label %.lr.ph.preheader.i126, label %._crit_edge.i112

.lr.ph.preheader.i126:                            ; preds = %bb.j
  %i.fh = xor i32 %.045.i110, -1
  %i.fi = add i32 %6, %i.fh
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = sub nsw i64 %i.v, %i.fj
  %i.fm = shl nsw i64 %i.fl, 3
  %scevgep.i127 = getelementptr i8, ptr %8, i64 %i.fm
  %i.fn = add nuw nsw i64 %i.fk, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i127, i8 0, i64 %i.fn, i1 false), !tbaa !24
  br label %._crit_edge.i112

._crit_edge.i112:                                 ; preds = %.lr.ph.preheader.i126, %bb.j
  %i.fo = icmp sgt i32 %.045.i110, 1
  br i1 %i.fo, label %bb.k, label %mp_mul_i2d.exit130

bb.k:                                             ; preds = %._crit_edge.i112
  %i.fp = sdiv i32 %1, 2
  %.not58.i113 = icmp eq i32 %.045.i110, 2
  br i1 %.not58.i113, label %._crit_edge57.i122, label %.lr.ph56.preheader.i114

.lr.ph56.preheader.i114:                          ; preds = %bb.k
  %i.fq = add nuw i32 %.045.i110, 1
  %i.fr = sext i32 %i.fq to i64
  br label %.lr.ph56.i116

.lr.ph56.i116:                                    ; preds = %.lr.ph56.i116, %.lr.ph56.preheader.i114
  %indvars.iv.i117 = phi i64 [ %i.fr, %.lr.ph56.preheader.i114 ], [ %indvars.iv.next.i121, %.lr.ph56.i116 ] ; 4 uses
  %.04653.i118 = phi i32 [ 0, %.lr.ph56.preheader.i114 ], [ %i.fu, %.lr.ph56.i116 ]
  %gep.i119 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.i117
  %i.fs = load i32, ptr %gep.i119, align 4, !tbaa !4
  %i.ft = sub nsw i32 %i.fs, %.04653.i118         ; 2 uses
  %.not51.i120 = icmp sge i32 %i.ft, %i.fp        ; 2 uses
  %i.fu = sext i1 %.not51.i120 to i32             ; 2 uses
  %i.fv = select i1 %.not51.i120, i32 %1, i32 0
  %i.fw = sub nsw i32 %i.ft, %i.fv
  %i.fx = sitofp i32 %i.fw to double
  %i.fy = getelementptr [8 x i8], ptr %8, i64 %indvars.iv.i117
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  store double %i.fx, ptr %i.fz, align 8, !tbaa !24
  %indvars.iv.next.i121 = add nsw i64 %indvars.iv.i117, -1
  %i.ga = icmp sgt i64 %indvars.iv.i117, 4
  br i1 %i.ga, label %.lr.ph56.i116, label %._crit_edge57.i122, !llvm.loop !63

._crit_edge57.i122:                               ; preds = %.lr.ph56.i116, %bb.k
  %.046.lcssa.i124 = phi i32 [ 0, %bb.k ], [ %i.fu, %.lr.ph56.i116 ]
  %i.gb = getelementptr i8, ptr %3, i64 12
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !4
  %i.gd = sub nsw i32 %i.gc, %.046.lcssa.i124
  %i.ge = sitofp i32 %i.gd to double
  %i.gf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %i.ge, ptr %i.gf, align 8, !tbaa !24
  br label %mp_mul_i2d.exit130

mp_mul_i2d.exit130:                               ; preds = %._crit_edge.i112, %._crit_edge57.i122
  %i.gg = sitofp i32 %.0.i111 to double
  %i.gh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store double %i.gg, ptr %i.gh, align 8, !tbaa !24
  %i.gi = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.gj = sitofp i32 %i.gi to double
  store double %i.gj, ptr %8, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %i.gh, ptr noundef %10, ptr noundef %11) #21
  %i.gk = load double, ptr %8, align 8, !tbaa !24
  %i.gl = load double, ptr %7, align 8, !tbaa !24
  %i.gm = fadd double %i.gk, %i.gl
  store double %i.gm, ptr %7, align 8, !tbaa !24
  %i.gn = load double, ptr %i.gh, align 8, !tbaa !24
  %i.go = load double, ptr %i.az, align 8, !tbaa !24
  %i.gp = fmul double %i.gn, %i.go
  store double %i.gp, ptr %i.az, align 8, !tbaa !24
  %i.gq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !24
  %i.gs = load double, ptr %i.da, align 8, !tbaa !24
  %i.gt = fmul double %i.gr, %i.gs
  store double %i.gt, ptr %i.da, align 8, !tbaa !24
  br i1 %i.df, label %.lr.ph.preheader.i132, label %mp_mul_cmul.exit136

.lr.ph.preheader.i132:                            ; preds = %mp_mul_i2d.exit130
  %i.gu = zext nneg i32 %6 to i64                 ; 3 uses
  %i.gv = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 5)
  %i.gw = add nsw i64 %i.gv, -4                   ; 2 uses
  %i.gx = lshr i64 %i.gw, 1
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 3 uses
  %min.iters.check208 = icmp ult i64 %i.gw, 6
  br i1 %min.iters.check208, label %.lr.ph.i133.preheader, label %vector.memcheck198

vector.memcheck198:                               ; preds = %.lr.ph.preheader.i132
  %scevgep199 = getelementptr i8, ptr %7, i64 24
  %umax200 = tail call i64 @llvm.umax.i64(i64 %i.gu, i64 5)
  %i.gz = shl nuw nsw i64 %umax200, 3
  %i.ha = or i64 %i.gz, 8                         ; 2 uses
  %scevgep201 = getelementptr i8, ptr %7, i64 %i.ha
  %scevgep202 = getelementptr i8, ptr %8, i64 24
  %scevgep203 = getelementptr i8, ptr %8, i64 %i.ha
  %bound0204 = icmp ult ptr %scevgep199, %scevgep203
  %bound1205 = icmp ult ptr %scevgep202, %scevgep201
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph.i133.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck198
  %n.vec211 = and i64 %i.gy, 9223372036854775806  ; 2 uses
  %i.hb = shl nuw i64 %i.gy, 1
  %i.hc = or i64 %i.hb, 3
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph209
  %index213 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body212 ] ; 2 uses
  %i.hd = shl i64 %index213, 1
  %i.he = or disjoint i64 %i.hd, 3                ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.he
  %wide.vec214 = load <4 x double>, ptr %i.hf, align 8, !tbaa !24, !alias.scope !71 ; 2 uses
  %strided.vec215 = shufflevector <4 x double> %wide.vec214, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec216 = shufflevector <4 x double> %wide.vec214, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.he ; 2 uses
  %wide.vec217 = load <4 x double>, ptr %i.hg, align 8, !tbaa !24, !alias.scope !74, !noalias !71 ; 2 uses
  %strided.vec218 = shufflevector <4 x double> %wide.vec217, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec219 = shufflevector <4 x double> %wide.vec217, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hh = fneg <2 x double> %strided.vec219
  %i.hi = fmul <2 x double> %strided.vec216, %i.hh
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec215, <2 x double> %strided.vec218, <2 x double> %i.hi)
  %i.hk = fmul <2 x double> %strided.vec216, %strided.vec218
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec215, <2 x double> %strided.vec219, <2 x double> %i.hk)
  %interleaved.vec220 = shufflevector <2 x double> %i.hj, <2 x double> %i.hl, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec220, ptr %i.hg, align 8, !tbaa !24, !alias.scope !74, !noalias !71
  %index.next221 = add nuw i64 %index213, 2       ; 2 uses
  %i.hm = icmp eq i64 %index.next221, %n.vec211
  br i1 %i.hm, label %middle.block222, label %vector.body212, !llvm.loop !76

middle.block222:                                  ; preds = %vector.body212
  %cmp.n223 = icmp eq i64 %i.gy, %n.vec211
  br i1 %cmp.n223, label %mp_mul_cmul.exit136, label %.lr.ph.i133.preheader

.lr.ph.i133.preheader:                            ; preds = %vector.memcheck198, %.lr.ph.preheader.i132, %middle.block222
  %indvars.iv.i134.ph = phi i64 [ 3, %vector.memcheck198 ], [ 3, %.lr.ph.preheader.i132 ], [ %i.hc, %middle.block222 ]
  br label %.lr.ph.i133

.lr.ph.i133:                                      ; preds = %.lr.ph.i133.preheader, %.lr.ph.i133
  %indvars.iv.i134 = phi i64 [ %indvars.iv.next.i135, %.lr.ph.i133 ], [ %indvars.iv.i134.ph, %.lr.ph.i133.preheader ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i134
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !24
  %i.hp = add nuw nsw i64 %indvars.iv.i134, 1     ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !24
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i134 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.hp
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !24
  %i.hv = load <2 x double>, ptr %i.hs, align 8, !tbaa !24 ; 2 uses
  %i.hw = fneg double %i.hu
  %i.hx = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ia = insertelement <2 x double> %i.hz, double %i.hw, i64 0
  %i.ib = fmul <2 x double> %i.hy, %i.ia
  %i.ic = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.hv, <2 x double> %i.ib)
  store <2 x double> %i.ie, ptr %i.hs, align 8, !tbaa !24
  %indvars.iv.next.i135 = add nuw nsw i64 %indvars.iv.i134, 2 ; 2 uses
  %i.if = icmp samesign ult i64 %indvars.iv.next.i135, %i.gu
  br i1 %i.if, label %.lr.ph.i133, label %mp_mul_cmul.exit136, !llvm.loop !77

mp_mul_cmul.exit136:                              ; preds = %.lr.ph.i133, %middle.block222, %mp_mul_i2d.exit130
  %i.ig = getelementptr inbounds [8 x i8], ptr %8, i64 %i.et ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !24
  %i.ii = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ij = fmul double %i.ih, %i.ii
  store double %i.ij, ptr %i.eu, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef -1, ptr noundef nonnull %i.az, ptr noundef %10, ptr noundef %11) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %6, ptr noundef nonnull %7, ptr noundef %5)
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %mp_mul_cmul.exit136
  %i.ik = sext i32 %.0.lcssa to i64
  %i.il = getelementptr [4 x i8], ptr %2, i64 %i.ik
  %i.im = getelementptr i8, ptr %i.il, i64 8
  %i.in = load i32, ptr %i.im, align 4, !tbaa !4
  %.not.i156 = icmp slt i32 %i.a, %i.o
  %spec.select.i157 = select i1 %.not.i156, i32 %i.d, i32 %i.o
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %mp_mul_cmul.exit136
  %.045.i137 = phi i32 [ 0, %mp_mul_cmul.exit136 ], [ %spec.select.i157, %bb.l ] ; 5 uses
  %.0.i138 = phi i32 [ 0, %mp_mul_cmul.exit136 ], [ %i.in, %bb.l ] ; 2 uses
  %i.io = load i32, ptr %2, align 4, !tbaa !4
  %i.ip = mul nsw i32 %i.io, %.0.i138
  %i.iq = sitofp i32 %i.ip to double
  store double %i.iq, ptr %i.x, align 8, !tbaa !24
  %i.ir = icmp sgt i32 %6, %.045.i137
  br i1 %i.ir, label %.lr.ph.preheader.i154, label %._crit_edge.i139

.lr.ph.preheader.i154:                            ; preds = %bb.m
  %i.is = xor i32 %.045.i137, -1
  %i.it = add i32 %6, %i.is
  %i.iu = zext i32 %i.it to i64                   ; 2 uses
  %i.iv = shl nuw nsw i64 %i.iu, 3
  %i.iw = sub nsw i64 %i.v, %i.iu
  %i.ix = shl nsw i64 %i.iw, 3
  %scevgep.i155 = getelementptr i8, ptr %7, i64 %i.ix
  %i.iy = add nuw nsw i64 %i.iv, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i155, i8 0, i64 %i.iy, i1 false), !tbaa !24
  br label %._crit_edge.i139

._crit_edge.i139:                                 ; preds = %.lr.ph.preheader.i154, %bb.m
  %i.iz = icmp sgt i32 %.045.i137, 1
  br i1 %i.iz, label %bb.n, label %mp_mul_i2d.exit158

bb.n:                                             ; preds = %._crit_edge.i139
  %i.ja = sdiv i32 %1, 2
  %.not58.i140 = icmp eq i32 %.045.i137, 2
  br i1 %.not58.i140, label %.._crit_edge57_crit_edge.i152, label %.lr.ph56.preheader.i141

.._crit_edge57_crit_edge.i152:                    ; preds = %bb.n
  %.pre.i153 = sext i32 %.0.lcssa to i64
  br label %._crit_edge57.i149

.lr.ph56.preheader.i141:                          ; preds = %bb.n
  %i.jb = add nuw i32 %.045.i137, 1
  %i.jc = sext i32 %i.jb to i64
  %i.jd = sext i32 %.0.lcssa to i64               ; 2 uses
  %invariant.gep.i142 = getelementptr [4 x i8], ptr %2, i64 %i.jd
  br label %.lr.ph56.i143

.lr.ph56.i143:                                    ; preds = %.lr.ph56.i143, %.lr.ph56.preheader.i141
  %indvars.iv.i144 = phi i64 [ %i.jc, %.lr.ph56.preheader.i141 ], [ %indvars.iv.next.i148, %.lr.ph56.i143 ] ; 4 uses
  %.04653.i145 = phi i32 [ 0, %.lr.ph56.preheader.i141 ], [ %i.jg, %.lr.ph56.i143 ]
  %gep.i146 = getelementptr [4 x i8], ptr %invariant.gep.i142, i64 %indvars.iv.i144
  %i.je = load i32, ptr %gep.i146, align 4, !tbaa !4
  %i.jf = sub nsw i32 %i.je, %.04653.i145         ; 2 uses
  %.not51.i147 = icmp sge i32 %i.jf, %i.ja        ; 2 uses
  %i.jg = sext i1 %.not51.i147 to i32             ; 2 uses
  %i.jh = select i1 %.not51.i147, i32 %1, i32 0
  %i.ji = sub nsw i32 %i.jf, %i.jh
  %i.jj = sitofp i32 %i.ji to double
  %i.jk = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.i144
  %i.jl = getelementptr i8, ptr %i.jk, i64 -8
  store double %i.jj, ptr %i.jl, align 8, !tbaa !24
  %indvars.iv.next.i148 = add nsw i64 %indvars.iv.i144, -1
  %i.jm = icmp sgt i64 %indvars.iv.i144, 4
  br i1 %i.jm, label %.lr.ph56.i143, label %._crit_edge57.i149, !llvm.loop !63

._crit_edge57.i149:                               ; preds = %.lr.ph56.i143, %.._crit_edge57_crit_edge.i152
  %.pre-phi.i150 = phi i64 [ %.pre.i153, %.._crit_edge57_crit_edge.i152 ], [ %i.jd, %.lr.ph56.i143 ]
  %.046.lcssa.i151 = phi i32 [ 0, %.._crit_edge57_crit_edge.i152 ], [ %i.jg, %.lr.ph56.i143 ]
  %i.jn = getelementptr [4 x i8], ptr %2, i64 %.pre-phi.i150
  %i.jo = getelementptr i8, ptr %i.jn, i64 12
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !4
  %i.jq = sub nsw i32 %i.jp, %.046.lcssa.i151
  %i.jr = sitofp i32 %i.jq to double
  store double %i.jr, ptr %i.da, align 8, !tbaa !24
  br label %mp_mul_i2d.exit158

mp_mul_i2d.exit158:                               ; preds = %._crit_edge.i139, %._crit_edge57.i149
  %i.js = sitofp i32 %.0.i138 to double
  store double %i.js, ptr %i.az, align 8, !tbaa !24
  %i.jt = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.ju = sub nsw i32 %i.jt, %.0.lcssa
  %i.jv = sitofp i32 %i.ju to double
  store double %i.jv, ptr %7, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef 1, ptr noundef nonnull %i.az, ptr noundef %10, ptr noundef %11) #21
  %i.jw = load double, ptr %i.az, align 8, !tbaa !24
  %i.jx = load double, ptr %i.gh, align 8, !tbaa !24
  %i.jy = load double, ptr %i.cp, align 8, !tbaa !24
  %i.jz = tail call double @llvm.fmuladd.f64(double %i.jw, double %i.jx, double %i.jy)
  store double %i.jz, ptr %i.cp, align 8, !tbaa !24
  %i.ka = load double, ptr %i.da, align 8, !tbaa !24
  %i.kb = load double, ptr %i.gq, align 8, !tbaa !24
  %i.kc = load double, ptr %i.dc, align 8, !tbaa !24
  %i.kd = tail call double @llvm.fmuladd.f64(double %i.ka, double %i.kb, double %i.kc)
  store double %i.kd, ptr %i.dc, align 8, !tbaa !24
  br i1 %i.df, label %.lr.ph.preheader.i160, label %mp_mul_cmuladd.exit

.lr.ph.preheader.i160:                            ; preds = %mp_mul_i2d.exit158
  %i.ke = zext nneg i32 %6 to i64                 ; 3 uses
  %i.kf = tail call i64 @llvm.umax.i64(i64 %i.ke, i64 5)
  %i.kg = add nsw i64 %i.kf, -4                   ; 2 uses
  %i.kh = lshr i64 %i.kg, 1
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 3 uses
  %min.iters.check240 = icmp ult i64 %i.kg, 10
  br i1 %min.iters.check240, label %.lr.ph.i161.preheader, label %vector.memcheck225

vector.memcheck225:                               ; preds = %.lr.ph.preheader.i160
  %scevgep226 = getelementptr i8, ptr %9, i64 24  ; 2 uses
  %umax227 = tail call i64 @llvm.umax.i64(i64 %i.ke, i64 5)
  %i.kj = shl nuw nsw i64 %umax227, 3
  %i.kk = or i64 %i.kj, 8                         ; 3 uses
  %scevgep228 = getelementptr i8, ptr %9, i64 %i.kk ; 2 uses
  %scevgep229 = getelementptr i8, ptr %7, i64 24
  %scevgep230 = getelementptr i8, ptr %7, i64 %i.kk
  %scevgep231 = getelementptr i8, ptr %8, i64 24
  %scevgep232 = getelementptr i8, ptr %8, i64 %i.kk
  %bound0233 = icmp ult ptr %scevgep226, %scevgep230
  %bound1234 = icmp ult ptr %scevgep229, %scevgep228
  %found.conflict235 = and i1 %bound0233, %bound1234
  %bound0236 = icmp ult ptr %scevgep226, %scevgep232
  %bound1237 = icmp ult ptr %scevgep231, %scevgep228
  %found.conflict238 = and i1 %bound0236, %bound1237
  %conflict.rdx = or i1 %found.conflict235, %found.conflict238
  br i1 %conflict.rdx, label %.lr.ph.i161.preheader, label %vector.ph241

vector.ph241:                                     ; preds = %vector.memcheck225
  %n.vec243 = and i64 %i.ki, 9223372036854775806  ; 2 uses
  %i.kl = shl nuw i64 %i.ki, 1
  %i.km = or i64 %i.kl, 3
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph241
  %index245 = phi i64 [ 0, %vector.ph241 ], [ %index.next256, %vector.body244 ] ; 2 uses
  %i.kn = shl i64 %index245, 1
  %i.ko = or disjoint i64 %i.kn, 3                ; 3 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.ko
  %wide.vec246 = load <4 x double>, ptr %i.kp, align 8, !tbaa !24, !alias.scope !78 ; 2 uses
  %strided.vec247 = shufflevector <4 x double> %wide.vec246, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec248 = shufflevector <4 x double> %wide.vec246, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ko
  %wide.vec249 = load <4 x double>, ptr %i.kq, align 8, !tbaa !24, !alias.scope !81 ; 2 uses
  %strided.vec250 = shufflevector <4 x double> %wide.vec249, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec251 = shufflevector <4 x double> %wide.vec249, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kr = fneg <2 x double> %strided.vec251
  %i.ks = fmul <2 x double> %strided.vec248, %i.kr
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec247, <2 x double> %strided.vec250, <2 x double> %i.ks)
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ko ; 2 uses
  %wide.vec252 = load <4 x double>, ptr %i.ku, align 8, !tbaa !24, !alias.scope !83, !noalias !85 ; 2 uses
  %strided.vec253 = shufflevector <4 x double> %wide.vec252, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec254 = shufflevector <4 x double> %wide.vec252, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.kv = fadd <2 x double> %strided.vec253, %i.kt
  %i.kw = fmul <2 x double> %strided.vec248, %strided.vec250
  %i.kx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec247, <2 x double> %strided.vec251, <2 x double> %i.kw)
  %i.ky = fadd <2 x double> %i.kx, %strided.vec254
  %interleaved.vec255 = shufflevector <2 x double> %i.kv, <2 x double> %i.ky, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec255, ptr %i.ku, align 8, !tbaa !24, !alias.scope !83, !noalias !85
  %index.next256 = add nuw i64 %index245, 2       ; 2 uses
  %i.kz = icmp eq i64 %index.next256, %n.vec243
  br i1 %i.kz, label %middle.block257, label %vector.body244, !llvm.loop !86

middle.block257:                                  ; preds = %vector.body244
  %cmp.n258 = icmp eq i64 %i.ki, %n.vec243
  br i1 %cmp.n258, label %mp_mul_cmuladd.exit, label %.lr.ph.i161.preheader

.lr.ph.i161.preheader:                            ; preds = %vector.memcheck225, %.lr.ph.preheader.i160, %middle.block257
  %indvars.iv.i162.ph = phi i64 [ 3, %vector.memcheck225 ], [ 3, %.lr.ph.preheader.i160 ], [ %i.km, %middle.block257 ]
  br label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %.lr.ph.i161.preheader, %.lr.ph.i161
  %indvars.iv.i162 = phi i64 [ %indvars.iv.next.i163, %.lr.ph.i161 ], [ %indvars.iv.i162.ph, %.lr.ph.i161.preheader ] ; 5 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i162
  %i.lb = load double, ptr %i.la, align 8, !tbaa !24
  %i.lc = add nuw nsw i64 %indvars.iv.i162, 1     ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.lc
  %i.le = load double, ptr %i.ld, align 8, !tbaa !24
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv.i162
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.lc
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %indvars.iv.i162 ; 2 uses
  %i.li = load double, ptr %i.lg, align 8, !tbaa !24
  %i.lj = load <2 x double>, ptr %i.lf, align 8, !tbaa !24 ; 2 uses
  %i.lk = fneg double %i.li
  %i.ll = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ln = shufflevector <2 x double> %i.lj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.lo = insertelement <2 x double> %i.ln, double %i.lk, i64 0
  %i.lp = fmul <2 x double> %i.lm, %i.lo
  %i.lq = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ls = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.lj, <2 x double> %i.lp)
  %i.lt = load <2 x double>, ptr %i.lh, align 8, !tbaa !24
  %i.lu = fadd <2 x double> %i.lt, %i.ls
  store <2 x double> %i.lu, ptr %i.lh, align 8, !tbaa !24
  %indvars.iv.next.i163 = add nuw nsw i64 %indvars.iv.i162, 2 ; 2 uses
  %i.lv = icmp samesign ult i64 %indvars.iv.next.i163, %i.ke
  br i1 %i.lv, label %.lr.ph.i161, label %mp_mul_cmuladd.exit, !llvm.loop !87

mp_mul_cmuladd.exit:                              ; preds = %.lr.ph.i161, %middle.block257, %mp_mul_i2d.exit158
  %i.lw = sdiv i32 %0, 2
  %i.lx = add nsw i32 %i.lw, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.lx, i32 %i.o)
  %i.ly = load double, ptr %i.eu, align 8, !tbaa !24
  %i.lz = load double, ptr %i.ig, align 8, !tbaa !24
  %i.ma = load double, ptr %i.ew, align 8, !tbaa !24
  %i.mb = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.lz, double %i.ma)
  store double %i.mb, ptr %i.ew, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %6, i32 noundef -1, ptr noundef nonnull %i.cp, ptr noundef %10, ptr noundef %11) #21
  tail call void @mp_mul_d2i(i32 noundef %spec.select, i32 noundef %1, i32 noundef %6, ptr noundef nonnull %9, ptr noundef %4)
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @mp_squh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = ashr i32 %4, 1                           ; 2 uses
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
  %i.i = sext i32 %4 to i64                       ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %5, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store double %i.h, ptr %i.k, align 8, !tbaa !24
  %i.l = icmp sgt i32 %4, %.045.i
  br i1 %i.l, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.m = xor i32 %.045.i, -1
  %i.n = add i32 %4, %i.m
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = sub nsw i64 %i.i, %i.o
  %i.r = shl nsw i64 %i.q, 3
  %scevgep.i = getelementptr i8, ptr %5, i64 %i.r
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
  %i.ad = getelementptr [8 x i8], ptr %5, i64 %indvars.iv.i
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
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.aj, ptr %i.ak, align 8, !tbaa !24
  br label %mp_mul_i2d.exit

mp_mul_i2d.exit:                                  ; preds = %._crit_edge.i, %._crit_edge57.i
  %i.al = sitofp i32 %.0.i to double
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store double %i.al, ptr %i.am, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to double
  store double %i.ap, ptr %5, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %4, i32 noundef 1, ptr noundef nonnull %i.am, ptr noundef %6, ptr noundef %7) #21
  %i.aq = load <2 x double>, ptr %5, align 8, !tbaa !24 ; 2 uses
  %i.ar = insertelement <2 x double> %i.aq, double 2.000000e+00, i64 0
  %i.as = fmul <2 x double> %i.aq, %i.ar
  store <2 x double> %i.as, ptr %5, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !24 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  store double %i.av, ptr %i.at, align 8, !tbaa !24
  %i.aw = icmp sgt i32 %4, 3
  br i1 %i.aw, label %.lr.ph.preheader.i20, label %mp_mul_csqu.exit

.lr.ph.preheader.i20:                             ; preds = %mp_mul_i2d.exit
  %i.ax = zext nneg i32 %4 to i64                 ; 4 uses
  %i.ay = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 5)
  %i.az = add nsw i64 %i.ay, -4
  %i.ba = lshr i64 %i.az, 1                       ; 2 uses
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 3 uses
  %min.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i20
  %n.vec = and i64 %i.bb, 9223372036854775806     ; 2 uses
  %i.bc = shl nuw i64 %i.bb, 1
  %i.bd = or i64 %i.bc, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl i64 %index, 4
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 %.idx
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %wide.vec = load <4 x double>, ptr %i.bf, align 8, !tbaa !24 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec25 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.bg = fneg <2 x double> %strided.vec25
  %i.bh = fmul <2 x double> %strided.vec25, %i.bg
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec, <2 x double> %i.bh)
  %i.bj = fmul <2 x double> %strided.vec, splat (double 2.000000e+00)
  %i.bk = fmul <2 x double> %i.bj, %strided.vec25
  %interleaved.vec = shufflevector <2 x double> %i.bi, <2 x double> %i.bk, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.bf, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %mp_mul_csqu.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i20, %middle.block
  %indvars.iv.i21.ph = phi i64 [ 3, %.lr.ph.preheader.i20 ], [ %i.bd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i22, %.lr.ph.i ], [ %indvars.iv.i21.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i21 ; 3 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !24 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !24 ; 3 uses
  %i.bq = fneg double %i.bp
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.br)
  store double %i.bs, ptr %i.bm, align 8, !tbaa !24
  %i.bt = fmul double %i.bn, 2.000000e+00
  %i.bu = fmul double %i.bt, %i.bp
  store double %i.bu, ptr %i.bo, align 8, !tbaa !24
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 2 ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv.next.i22, %i.ax
  br i1 %i.bv, label %.lr.ph.i, label %mp_mul_csqu.exit, !llvm.loop !89

mp_mul_csqu.exit:                                 ; preds = %.lr.ph.i, %middle.block, %mp_mul_i2d.exit
  %.pre-phi.i = phi i64 [ %i.i, %mp_mul_i2d.exit ], [ %i.ax, %middle.block ], [ %i.ax, %.lr.ph.i ]
  %i.bw = getelementptr [8 x i8], ptr %5, i64 %.pre-phi.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 8      ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %i.bz = fmul double %i.by, %i.by
  store double %i.bz, ptr %i.bx, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %4, i32 noundef -1, ptr noundef nonnull %i.am, ptr noundef %6, ptr noundef %7) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @mp_inv(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sitofp i32 %1 to double                  ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.07.i = phi i32 [ 1, %bb.b ], [ %i.e, %bb.c ]
  %.0.i = phi double [ %i.c, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %i.d = fmul double %.0.i, %.0.i                 ; 2 uses
  %i.e = shl i32 %.07.i, 1                        ; 4 uses
  %i.f = fmul double %i.d, f0x3CB0000000000000
  %i.g = fcmp olt double %i.f, 1.000000e+00
  %i.h = icmp slt i32 %i.e, %6
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %bb.c, label %mp_get_nfft_init.exit, !llvm.loop !44

mp_get_nfft_init.exit:                            ; preds = %bb.c
  %i.j = add nsw i32 %i.e, 2
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %0) ; 5 uses
  store i32 %i.a, ptr %3, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = sub nsw i32 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = fdiv double 1.000000e+00, %i.c
  %i.p = icmp sgt i32 %spec.select, 0             ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %mp_unexp_mp2d.exit.i

.lr.ph.preheader.i.i:                             ; preds = %mp_get_nfft_init.exit
  %i.q = zext nneg i32 %spec.select to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.q, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.010.i.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.i ], [ %i.u, %.lr.ph.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.next.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = sitofp i32 %i.s to double
  %i.u = tail call double @llvm.fmuladd.f64(double %i.o, double %.010.i.i, double %i.t) ; 2 uses
  %i.v = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i, label %mp_unexp_mp2d.exit.i, !llvm.loop !45

mp_unexp_mp2d.exit.i:                             ; preds = %.lr.ph.i.i, %mp_get_nfft_init.exit
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %mp_get_nfft_init.exit ], [ %i.u, %.lr.ph.i.i ]
  %i.w = fdiv double 1.000000e+00, %.0.lcssa.i.i  ; 3 uses
  %i.x = fcmp olt double %i.w, 1.000000e+00
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %mp_unexp_mp2d.exit.i, %.lr.ph.i
  %.020.i = phi double [ %i.y, %.lr.ph.i ], [ %i.w, %mp_unexp_mp2d.exit.i ]
  %.01519.i = phi i32 [ %i.z, %.lr.ph.i ], [ %i.m, %mp_unexp_mp2d.exit.i ]
  %i.y = fmul double %.020.i, %i.c                ; 3 uses
  %i.z = add nsw i32 %.01519.i, -1                ; 2 uses
  %i.aa = fcmp olt double %i.y, 1.000000e+00
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !90

._crit_edge.i:                                    ; preds = %.lr.ph.i, %mp_unexp_mp2d.exit.i
  %.015.lcssa.i = phi i32 [ %i.m, %mp_unexp_mp2d.exit.i ], [ %i.z, %.lr.ph.i ]
  %.0.lcssa.i = phi double [ %i.w, %mp_unexp_mp2d.exit.i ], [ %i.y, %.lr.ph.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.015.lcssa.i, ptr %i.ab, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br i1 %i.p, label %.lr.ph.i16.i, label %mp_inv_init.exit.preheader

.lr.ph.i16.i:                                     ; preds = %._crit_edge.i
  %i.ad = add nsw i32 %1, -1                      ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %spec.select to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ae = icmp eq i32 %spec.select, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i16.i.new

.lr.ph.i16.i.new:                                 ; preds = %.lr.ph.i16.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i16.i.new
  %indvars.iv.i17.i = phi i64 [ 0, %.lr.ph.i16.i.new ], [ %indvars.iv.next.i18.i.1, %bb.d ] ; 3 uses
  %.01417.i.i = phi double [ %.0.lcssa.i, %.lr.ph.i16.i.new ], [ %i.an, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.i.new ], [ %niter.next.1, %bb.d ]
  %i.af = fptosi double %.01417.i.i to i32        ; 2 uses
  %.not.i.i = icmp sgt i32 %1, %i.af
  %.1.i.i = select i1 %.not.i.i, double %.01417.i.i, double %i.c
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ad) ; 2 uses
  %i.ag = sitofp i32 %.0.i.i to double
  %i.ah = fsub double %.1.i.i, %i.ag
  %i.ai = fmul double %i.ah, %i.c                 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i17.i
  store i32 %.0.i.i, ptr %i.aj, align 4, !tbaa !4
  %i.ak = fptosi double %i.ai to i32              ; 2 uses
  %.not.i.i.1 = icmp sgt i32 %1, %i.ak
  %.1.i.i.1 = select i1 %.not.i.i.1, double %i.ai, double %i.c
  %.0.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.ad) ; 2 uses
  %i.al = sitofp i32 %.0.i.i.1 to double
  %i.am = fsub double %.1.i.i.1, %i.al
  %i.an = fmul double %i.am, %i.c                 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i17.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %.0.i.i.1, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next.i18.i.1 = add nuw nsw i64 %indvars.iv.i17.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_inv_init.exit.preheader.loopexit.unr-lcssa, label %bb.d, !llvm.loop !46

mp_inv_init.exit.preheader.loopexit.unr-lcssa:    ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mp_inv_init.exit.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_inv_init.exit.preheader.loopexit.unr-lcssa, %.lr.ph.i16.i
  %indvars.iv.i17.i.epil.init = phi i64 [ 0, %.lr.ph.i16.i ], [ %indvars.iv.next.i18.i.1, %mp_inv_init.exit.preheader.loopexit.unr-lcssa ]
  %.01417.i.i.epil.init = phi double [ %.0.lcssa.i, %.lr.ph.i16.i ], [ %i.an, %mp_inv_init.exit.preheader.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i32 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod73)
  %i.aq = fptosi double %.01417.i.i.epil.init to i32
  %.0.i.i.epil = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.ad)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.i17.i.epil.init
  store i32 %.0.i.i.epil, ptr %i.ar, align 4, !tbaa !4
  br label %mp_inv_init.exit.preheader

mp_inv_init.exit.preheader:                       ; preds = %.epil.preheader, %mp_inv_init.exit.preheader.loopexit.unr-lcssa, %._crit_edge.i
  br label %mp_inv_init.exit

mp_inv_init.exit:                                 ; preds = %mp_inv_init.exit.preheader, %mp_inv_init.exit
  %.039 = phi i32 [ %i.az, %mp_inv_init.exit ], [ %i.e, %mp_inv_init.exit.preheader ] ; 4 uses
  %.038 = phi i32 [ %.1, %mp_inv_init.exit ], [ 8, %mp_inv_init.exit.preheader ] ; 2 uses
  %i.as = add nsw i32 %.039, 2
  %spec.select50 = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %0) ; 2 uses
  %i.at = tail call i32 @mp_inv_newton(i32 noundef %spec.select50, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i32 noundef %.039, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) ; 2 uses
  %i.au = mul nsw i32 %.038, %.039
  %.not = icmp slt i32 %i.au, %6                  ; 2 uses
  %i.av = add nsw i32 %spec.select50, -2          ; 2 uses
  %i.aw = shl nsw i32 %i.at, 1
  %.not48 = icmp sle i32 %i.aw, %i.av
  %i.ax = mul nsw i32 %i.at, 3
  %i.ay = icmp slt i32 %i.ax, %i.av
  %.pn.in = select i1 %.not, i1 %i.ay, i1 %.not48
  %.1 = select i1 %.not, i32 %.038, i32 0
  %.pn = zext i1 %.pn.in to i32
  %.140 = ashr exact i32 %.039, %.pn
  %i.az = shl i32 %.140, 1                        ; 2 uses
  %.not49 = icmp sgt i32 %i.az, %6
end_hunk_1
begin_hunk_2_@mp_squ:bb.a
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = sub nsw i64 %i.u, %i.aa
  %i.ad = shl nsw i64 %i.ac, 3
  %scevgep.i = getelementptr i8, ptr %6, i64 %i.ad
  %i.ae = add nuw nsw i64 %i.ab, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.ae, i1 false), !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.d
  %i.af = icmp sgt i32 %.045.i, 1
  br i1 %i.af, label %bb.e, label %mp_mul_i2d.exit

bb.e:                                             ; preds = %._crit_edge.i
  %i.ag = sdiv i32 %1, 2
  %.not58.i = icmp eq i32 %.045.i, 2
  br i1 %.not58.i, label %._crit_edge57.i, label %.lr.ph56.preheader.i

.lr.ph56.preheader.i:                             ; preds = %bb.e
  %i.ah = add nuw i32 %.045.i, 1
  %i.ai = sext i32 %i.ah to i64
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.lr.ph56.i, %.lr.ph56.preheader.i
  %indvars.iv.i = phi i64 [ %i.ai, %.lr.ph56.preheader.i ], [ %indvars.iv.next.i, %.lr.ph56.i ] ; 4 uses
  %.04653.i = phi i32 [ 0, %.lr.ph56.preheader.i ], [ %i.al, %.lr.ph56.i ]
  %gep.i = getelementptr [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.aj = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.ak = sub nsw i32 %i.aj, %.04653.i            ; 2 uses
  %.not51.i = icmp sge i32 %i.ak, %i.ag           ; 2 uses
  %i.al = sext i1 %.not51.i to i32                ; 2 uses
  %i.am = select i1 %.not51.i, i32 %1, i32 0
  %i.an = sub nsw i32 %i.ak, %i.am
  %i.ao = sitofp i32 %i.an to double
  %i.ap = getelementptr [8 x i8], ptr %6, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 -8
  store double %i.ao, ptr %i.aq, align 8, !tbaa !24
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.ar = icmp sgt i64 %indvars.iv.i, 4
  br i1 %i.ar, label %.lr.ph56.i, label %._crit_edge57.i, !llvm.loop !63

._crit_edge57.i:                                  ; preds = %.lr.ph56.i, %bb.e
  %.046.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.al, %.lr.ph56.i ]
  %i.as = getelementptr i8, ptr %2, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sub nsw i32 %i.at, %.046.lcssa.i
  %i.av = sitofp i32 %i.au to double
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.av, ptr %i.aw, align 8, !tbaa !24
  br label %mp_mul_i2d.exit

mp_mul_i2d.exit:                                  ; preds = %._crit_edge.i, %._crit_edge57.i
  %i.ax = sitofp i32 %.0.i to double
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store double %i.ax, ptr %i.ay, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sitofp i32 %i.ba to double
  store double %i.bb, ptr %6, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %i.ay, ptr noundef %8, ptr noundef %9) #21
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %mp_mul_i2d.exit
  %i.bc = sext i32 %.0.lcssa to i64
  %i.bd = getelementptr [4 x i8], ptr %2, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %.not.i82 = icmp slt i32 %i.a, %i.n
  %spec.select.i83 = select i1 %.not.i82, i32 %i.d, i32 %i.n
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %mp_mul_i2d.exit
  %.045.i66 = phi i32 [ 0, %mp_mul_i2d.exit ], [ %spec.select.i83, %bb.f ] ; 5 uses
  %.0.i67 = phi i32 [ 0, %mp_mul_i2d.exit ], [ %i.bf, %bb.f ] ; 2 uses
  %i.bg = load i32, ptr %2, align 4, !tbaa !4
  %i.bh = mul nsw i32 %i.bg, %.0.i67
  %i.bi = sitofp i32 %i.bh to double
  %i.bj = getelementptr [8 x i8], ptr %7, i64 %i.u
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  store double %i.bi, ptr %i.bk, align 8, !tbaa !24
  %i.bl = icmp sgt i32 %5, %.045.i66
  br i1 %i.bl, label %.lr.ph.preheader.i80, label %._crit_edge.i68

.lr.ph.preheader.i80:                             ; preds = %bb.g
  %i.bm = xor i32 %.045.i66, -1
  %i.bn = add i32 %5, %i.bm
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = sub nsw i64 %i.u, %i.bo
  %i.br = shl nsw i64 %i.bq, 3
  %scevgep.i81 = getelementptr i8, ptr %7, i64 %i.br
  %i.bs = add nuw nsw i64 %i.bp, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i81, i8 0, i64 %i.bs, i1 false), !tbaa !24
  br label %._crit_edge.i68

._crit_edge.i68:                                  ; preds = %.lr.ph.preheader.i80, %bb.g
  %i.bt = icmp sgt i32 %.045.i66, 1
  br i1 %i.bt, label %bb.h, label %mp_mul_i2d.exit84

bb.h:                                             ; preds = %._crit_edge.i68
  %i.bu = sdiv i32 %1, 2
  %.not58.i69 = icmp eq i32 %.045.i66, 2
  br i1 %.not58.i69, label %.._crit_edge57_crit_edge.i79, label %.lr.ph56.preheader.i70

.._crit_edge57_crit_edge.i79:                     ; preds = %bb.h
  %.pre.i = sext i32 %.0.lcssa to i64
  br label %._crit_edge57.i77

.lr.ph56.preheader.i70:                           ; preds = %bb.h
  %i.bv = add nuw i32 %.045.i66, 1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = sext i32 %.0.lcssa to i64               ; 2 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %i.bx
  br label %.lr.ph56.i71

.lr.ph56.i71:                                     ; preds = %.lr.ph56.i71, %.lr.ph56.preheader.i70
  %indvars.iv.i72 = phi i64 [ %i.bw, %.lr.ph56.preheader.i70 ], [ %indvars.iv.next.i76, %.lr.ph56.i71 ] ; 4 uses
  %.04653.i73 = phi i32 [ 0, %.lr.ph56.preheader.i70 ], [ %i.ca, %.lr.ph56.i71 ]
  %gep.i74 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i72
  %i.by = load i32, ptr %gep.i74, align 4, !tbaa !4
  %i.bz = sub nsw i32 %i.by, %.04653.i73          ; 2 uses
  %.not51.i75 = icmp sge i32 %i.bz, %i.bu         ; 2 uses
  %i.ca = sext i1 %.not51.i75 to i32              ; 2 uses
  %i.cb = select i1 %.not51.i75, i32 %1, i32 0
  %i.cc = sub nsw i32 %i.bz, %i.cb
  %i.cd = sitofp i32 %i.cc to double
  %i.ce = getelementptr [8 x i8], ptr %7, i64 %indvars.iv.i72
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  store double %i.cd, ptr %i.cf, align 8, !tbaa !24
  %indvars.iv.next.i76 = add nsw i64 %indvars.iv.i72, -1
  %i.cg = icmp sgt i64 %indvars.iv.i72, 4
  br i1 %i.cg, label %.lr.ph56.i71, label %._crit_edge57.i77, !llvm.loop !63

._crit_edge57.i77:                                ; preds = %.lr.ph56.i71, %.._crit_edge57_crit_edge.i79
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge57_crit_edge.i79 ], [ %i.bx, %.lr.ph56.i71 ]
  %.046.lcssa.i78 = phi i32 [ 0, %.._crit_edge57_crit_edge.i79 ], [ %i.ca, %.lr.ph56.i71 ]
  %i.ch = getelementptr [4 x i8], ptr %2, i64 %.pre-phi.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = sub nsw i32 %i.cj, %.046.lcssa.i78
  %i.cl = sitofp i32 %i.ck to double
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.cl, ptr %i.cm, align 8, !tbaa !24
  br label %mp_mul_i2d.exit84

mp_mul_i2d.exit84:                                ; preds = %._crit_edge.i68, %._crit_edge57.i77
  %i.cn = sitofp i32 %.0.i67 to double
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !24
  %i.cp = load i32, ptr %i.az, align 4, !tbaa !4
  %i.cq = sub nsw i32 %i.cp, %.0.lcssa
  %i.cr = sitofp i32 %i.cq to double
  store double %i.cr, ptr %7, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef 1, ptr noundef nonnull %i.co, ptr noundef %8, ptr noundef %9) #21
  %i.cs = load double, ptr %6, align 8, !tbaa !24
  %i.ct = load double, ptr %7, align 8, !tbaa !24
  %i.cu = fadd double %i.cs, %i.ct
  store double %i.cu, ptr %7, align 8, !tbaa !24
  %i.cv = load double, ptr %i.ay, align 8, !tbaa !24
  %i.cw = load double, ptr %i.co, align 8, !tbaa !24
  %i.cx = fmul double %i.cv, %i.cw
  store double %i.cx, ptr %i.co, align 8, !tbaa !24
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !24
  %i.dc = fmul double %i.cz, %i.db
  store double %i.dc, ptr %i.da, align 8, !tbaa !24
  %i.dd = icmp sgt i32 %5, 3                      ; 2 uses
  br i1 %i.dd, label %.lr.ph.preheader.i86, label %mp_mul_cmul.exit

.lr.ph.preheader.i86:                             ; preds = %mp_mul_i2d.exit84
  %i.de = zext nneg i32 %5 to i64                 ; 3 uses
  %i.df = tail call i64 @llvm.umax.i64(i64 %i.de, i64 5)
  %i.dg = add nsw i64 %i.df, -4                   ; 2 uses
  %i.dh = lshr i64 %i.dg, 1
  %i.di = add nuw nsw i64 %i.dh, 1                ; 3 uses
  %min.iters.check = icmp ult i64 %i.dg, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i86
  %scevgep = getelementptr i8, ptr %7, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.de, i64 5)
  %i.dj = shl nuw nsw i64 %umax, 3
  %i.dk = or i64 %i.dj, 8                         ; 2 uses
  %scevgep115 = getelementptr i8, ptr %7, i64 %i.dk
  %scevgep116 = getelementptr i8, ptr %6, i64 24
  %scevgep117 = getelementptr i8, ptr %6, i64 %i.dk
  %bound0 = icmp ult ptr %scevgep, %scevgep117
  %bound1 = icmp ult ptr %scevgep116, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 9223372036854775806     ; 2 uses
  %i.dl = shl nuw i64 %i.di, 1
  %i.dm = or i64 %i.dl, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = shl i64 %index, 1
  %i.do = or disjoint i64 %i.dn, 3                ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.do
  %wide.vec = load <4 x double>, ptr %i.dp, align 8, !tbaa !24, !alias.scope !93 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec118 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.do ; 2 uses
  %wide.vec119 = load <4 x double>, ptr %i.dq, align 8, !tbaa !24, !alias.scope !96, !noalias !93 ; 2 uses
  %strided.vec120 = shufflevector <4 x double> %wide.vec119, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec121 = shufflevector <4 x double> %wide.vec119, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dr = fneg <2 x double> %strided.vec121
  %i.ds = fmul <2 x double> %strided.vec118, %i.dr
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec120, <2 x double> %i.ds)
  %i.du = fmul <2 x double> %strided.vec118, %strided.vec120
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %strided.vec121, <2 x double> %i.du)
  %interleaved.vec = shufflevector <2 x double> %i.dt, <2 x double> %i.dv, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.dq, align 8, !tbaa !24, !alias.scope !96, !noalias !93
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %mp_mul_cmul.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i86, %middle.block
  %indvars.iv.i87.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader.i86 ], [ %i.dm, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i88, %.lr.ph.i ], [ %indvars.iv.i87.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i87
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !24
  %i.dz = add nuw nsw i64 %indvars.iv.i87, 1      ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.dz
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !24
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i87 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.dz
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !24
  %i.ef = load <2 x double>, ptr %i.ec, align 8, !tbaa !24 ; 2 uses
  %i.eg = fneg double %i.ee
  %i.eh = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ek = insertelement <2 x double> %i.ej, double %i.eg, i64 0
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.ef, <2 x double> %i.el)
  store <2 x double> %i.eo, ptr %i.ec, align 8, !tbaa !24
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 2 ; 2 uses
  %i.ep = icmp samesign ult i64 %indvars.iv.next.i88, %i.de
  br i1 %i.ep, label %.lr.ph.i, label %mp_mul_cmul.exit, !llvm.loop !99

mp_mul_cmul.exit:                                 ; preds = %.lr.ph.i, %middle.block, %mp_mul_i2d.exit84
  %i.eq = add nsw i32 %5, 1
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %6, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !24
  %i.eu = getelementptr inbounds [8 x i8], ptr %7, i64 %i.er ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !24
  %i.ew = fmul double %i.et, %i.ev
  store double %i.ew, ptr %i.eu, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %i.co, ptr noundef %8, ptr noundef %9) #21
  tail call void @mp_mul_d2i(i32 noundef %spec.select, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %7, ptr noundef %4)
  tail call void @mp_add(i32 noundef %spec.select, i32 noundef %1, ptr noundef %4, ptr noundef %4, ptr noundef %4)
  %i.ex = load <2 x double>, ptr %6, align 8, !tbaa !24 ; 2 uses
  %i.ey = insertelement <2 x double> %i.ex, double 2.000000e+00, i64 0
  %i.ez = fmul <2 x double> %i.ex, %i.ey
  store <2 x double> %i.ez, ptr %6, align 8, !tbaa !24
  %i.fa = load double, ptr %i.cy, align 8, !tbaa !24 ; 2 uses
  %i.fb = fmul double %i.fa, %i.fa
  store double %i.fb, ptr %i.cy, align 8, !tbaa !24
  br i1 %i.dd, label %.lr.ph.preheader.i92, label %mp_mul_csqu.exit

.lr.ph.preheader.i92:                             ; preds = %mp_mul_cmul.exit
  %i.fc = zext nneg i32 %5 to i64                 ; 4 uses
  %i.fd = tail call i64 @llvm.umax.i64(i64 %i.fc, i64 5)
  %i.fe = add nsw i64 %i.fd, -4
  %i.ff = lshr i64 %i.fe, 1                       ; 2 uses
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 3 uses
  %min.iters.check123 = icmp eq i64 %i.ff, 0
  br i1 %min.iters.check123, label %.lr.ph.i93.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.preheader.i92
  %n.vec126 = and i64 %i.fg, 9223372036854775806  ; 2 uses
  %i.fh = shl nuw i64 %i.fg, 1
  %i.fi = or i64 %i.fh, 3
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph124
  %index128 = phi i64 [ 0, %vector.ph124 ], [ %index.next133, %vector.body127 ] ; 2 uses
  %.idx = shl i64 %index128, 4
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 %.idx
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 2 uses
  %wide.vec129 = load <4 x double>, ptr %i.fk, align 8, !tbaa !24 ; 2 uses
  %strided.vec130 = shufflevector <4 x double> %wide.vec129, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 3 uses
  %strided.vec131 = shufflevector <4 x double> %wide.vec129, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.fl = fneg <2 x double> %strided.vec131
  %i.fm = fmul <2 x double> %strided.vec131, %i.fl
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec130, <2 x double> %strided.vec130, <2 x double> %i.fm)
  %i.fo = fmul <2 x double> %strided.vec130, splat (double 2.000000e+00)
  %i.fp = fmul <2 x double> %i.fo, %strided.vec131
  %interleaved.vec132 = shufflevector <2 x double> %i.fn, <2 x double> %i.fp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec132, ptr %i.fk, align 8, !tbaa !24
  %index.next133 = add nuw i64 %index128, 2       ; 2 uses
  %i.fq = icmp eq i64 %index.next133, %n.vec126
  br i1 %i.fq, label %middle.block134, label %vector.body127, !llvm.loop !100

middle.block134:                                  ; preds = %vector.body127
  %cmp.n135 = icmp eq i64 %i.fg, %n.vec126
  br i1 %cmp.n135, label %mp_mul_csqu.exit, label %.lr.ph.i93.preheader

.lr.ph.i93.preheader:                             ; preds = %.lr.ph.preheader.i92, %middle.block134
  %indvars.iv.i94.ph = phi i64 [ 3, %.lr.ph.preheader.i92 ], [ %i.fi, %middle.block134 ]
  br label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %.lr.ph.i93.preheader, %.lr.ph.i93
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95, %.lr.ph.i93 ], [ %indvars.iv.i94.ph, %.lr.ph.i93.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.i94 ; 3 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !24 ; 3 uses
  %i.fv = fneg double %i.fu
  %i.fw = fmul double %i.fu, %i.fv
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.fw)
  store double %i.fx, ptr %i.fr, align 8, !tbaa !24
  %i.fy = fmul double %i.fs, 2.000000e+00
  %i.fz = fmul double %i.fy, %i.fu
  store double %i.fz, ptr %i.ft, align 8, !tbaa !24
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 2 ; 2 uses
  %i.ga = icmp samesign ult i64 %indvars.iv.next.i95, %i.fc
  br i1 %i.ga, label %.lr.ph.i93, label %mp_mul_csqu.exit, !llvm.loop !101

mp_mul_csqu.exit:                                 ; preds = %.lr.ph.i93, %middle.block134, %mp_mul_cmul.exit
  %.pre-phi.i91 = phi i64 [ %i.u, %mp_mul_cmul.exit ], [ %i.fc, %middle.block134 ], [ %i.fc, %.lr.ph.i93 ]
  %i.gb = getelementptr [8 x i8], ptr %6, i64 %.pre-phi.i91
  %i.gc = getelementptr i8, ptr %i.gb, i64 8      ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !24 ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  store double %i.ge, ptr %i.gc, align 8, !tbaa !24
  tail call void @rdft(i32 noundef %5, i32 noundef -1, ptr noundef nonnull %i.ay, ptr noundef %8, ptr noundef %9) #21
  tail call void @mp_mul_d2i(i32 noundef %0, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %6, ptr noundef %3)
  tail call void @mp_add(i32 noundef %0, i32 noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @mp_idiv(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %mp_load_0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %3, 0
  %i.c = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %i.d = sub nsw i32 0, %i.c
  %.sink = select i1 %i.b, i32 %i.c, i32 %i.d
  store i32 %.sink, ptr %4, align 4, !tbaa !4
  %i.e = load i32, ptr %2, align 4, !tbaa !4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not4.i = icmp slt i32 %0, -1
  br i1 %.not4.i, label %mp_load_0.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.g = add i32 %0, 2
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %4, i8 0, i64 %i.i, i1 false), !tbaa !4
  br label %mp_load_0.exit

bb.d:                                             ; preds = %bb.b
  %.016 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.j = sitofp i32 %1 to double                  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = uitofp nneg i32 %.016 to double          ; 3 uses
  %i.m = fadd double %i.l, -5.000000e-01
  %i.n = sext i32 %0 to i64                       ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.d ] ; 3 uses
  %.057.i = phi double [ %.158.i, %bb.g ], [ 0.000000e+00, %bb.d ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = fmul double %.057.i, %i.j                ; 2 uses
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.n
  br i1 %.not.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = sitofp i32 %i.q to double
  %i.s = fadd double %i.o, %i.r
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.158.i = phi double [ %i.s, %bb.f ], [ %i.o, %bb.e ] ; 3 uses
  %i.t = fcmp olt double %.158.i, %i.m
  %indvars.iv.next = add i32 %indvars.iv, 1
  br i1 %i.t, label %bb.e, label %bb.h, !llvm.loop !102

bb.h:                                             ; preds = %bb.g
  %indvars19.le = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.v = fdiv double 1.000000e+00, %i.l           ; 3 uses
  %i.w = fadd double %.158.i, 5.000000e-01        ; 2 uses
  %i.x = fmul double %i.v, %i.w
  %i.y = fptosi double %i.x to i32                ; 2 uses
  %i.z = sitofp i32 %i.y to double
  %i.aa = fneg double %i.l                        ; 3 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.z, double %i.w)
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !4
  %i.ad = load i32, ptr %i.k, align 4, !tbaa !4
  %i.ae = sub nsw i32 %i.ad, %indvars19.le
  store i32 %i.ae, ptr %i.u, align 4, !tbaa !4
  %i.af = add nsw i32 %0, -1                      ; 2 uses
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %indvars19.le, i32 %i.af) ; 3 uses
  %i.ag = sub i32 %0, %spec.select.i              ; 2 uses
  %.06168.i = fptosi double %i.ab to i32          ; 2 uses
  %.not6669.i = icmp slt i32 %i.ag, 2
  br i1 %.not6669.i, label %.preheader.i, label %.lr.ph.preheader.i18

.lr.ph.preheader.i18:                             ; preds = %bb.h
  %i.ah = sext i32 %spec.select.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.k, i64 %i.ah
  %smin = tail call i32 @llvm.smin.i32(i32 %indvars.iv, i32 %i.af)
  %i.ai = sub i32 %0, %smin
  %i.aj = zext i32 %i.ai to i64
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.h
  %.061.lcssa.i = phi i32 [ %.06168.i, %bb.h ], [ %.061.i, %.lr.ph.i ]
  %.not67.not73.i = icmp sgt i32 %spec.select.i, 0
  br i1 %.not67.not73.i, label %.lr.ph76.preheader.i, label %mp_load_0.exit

.lr.ph76.preheader.i:                             ; preds = %.preheader.i
  %i.ak = sext i32 %i.ag to i64
  br label %.lr.ph76.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i18
  %indvars.iv79.i = phi i64 [ 2, %.lr.ph.preheader.i18 ], [ %indvars.iv.next80.i, %.lr.ph.i ] ; 4 uses
  %.06171.i = phi i32 [ %.06168.i, %.lr.ph.preheader.i18 ], [ %.061.i, %.lr.ph.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv79.i
  %i.al = load i32, ptr %gep.i, align 4, !tbaa !4
  %i.am = sitofp i32 %i.al to double
  %i.an = sitofp i32 %.06171.i to double
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.j, double %i.an, double %i.am)
  %i.ap = fadd double %i.ao, 5.000000e-01         ; 2 uses
  %i.aq = fmul double %i.v, %i.ap
  %i.ar = fptosi double %i.aq to i32              ; 2 uses
  %i.as = sitofp i32 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.as, double %i.ap)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv79.i
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !4
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %.061.i = fptosi double %i.at to i32            ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv79.i, %i.aj
  br i1 %exitcond.not, label %.preheader.i, label %.lr.ph.i, !llvm.loop !103

.lr.ph76.i:                                       ; preds = %.lr.ph76.i, %.lr.ph76.preheader.i
  %indvars.iv84.i = phi i64 [ %i.ak, %.lr.ph76.preheader.i ], [ %indvars.iv.next85.i, %.lr.ph76.i ]
  %.16274.i = phi i32 [ %.061.lcssa.i, %.lr.ph76.preheader.i ], [ %i.bb, %.lr.ph76.i ]
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, 1 ; 3 uses
  %i.av = sitofp i32 %.16274.i to double
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.j, double %i.av, double 5.000000e-01) ; 2 uses
  %i.ax = fmul double %i.v, %i.aw
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %i.az = sitofp i32 %i.ay to double
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.az, double %i.aw)
  %i.bb = fptosi double %i.ba to i32
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv.next85.i
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !4
  %.not67.not.i = icmp slt i64 %indvars.iv.next85.i, %i.n
  br i1 %.not67.not.i, label %.lr.ph76.i, label %mp_load_0.exit, !llvm.loop !104

mp_load_0.exit:                                   ; preds = %.lr.ph76.i, %.preheader.i, %.lr.ph.preheader.i, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %.lr.ph.preheader.i ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %.preheader.i ], [ 0, %.lr.ph76.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @mp_sprintf(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !4
  %i.b = icmp slt i32 %i.a, 0
end_hunk_2
begin_hunk_3_@mp_unsgn_imul:bb.a
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
  %.idx = shl i64 %index, 4
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
  %i.x = shl i64 %index, 1
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
  %i.ci = add nuw i32 %0, 1                       ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %i.ck = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 3)
  %i.cl = sub i32 %0, %i.ck
  %i.cm = add i32 %i.cl, 1                        ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cm, 7
  br i1 %min.iters.check, label %.lr.ph137.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph137.preheader
  %n.vec = and i64 %i.co, 8589934584              ; 3 uses
  %i.cp = sub nsw i64 %i.cj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cq = sub i64 %i.cj, %index
  %i.cr = getelementptr [4 x i8], ptr %4, i64 %i.cq ; 4 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 -16
  %i.ct = getelementptr i8, ptr %i.cr, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  %wide.load161 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !4
  %i.cu = getelementptr i8, ptr %i.cr, i64 -12
  %i.cv = getelementptr i8, ptr %i.cr, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !4
  store <4 x i32> %wide.load161, ptr %i.cv, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %._crit_edge138, label %.lr.ph137.preheader162

.lr.ph137.preheader162:                           ; preds = %.lr.ph137.preheader, %middle.block
  %indvars.iv150.ph = phi i64 [ %i.cj, %.lr.ph137.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.preheader162, %.lr.ph137
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %.lr.ph137 ], [ %indvars.iv150.ph, %.lr.ph137.preheader162 ] ; 3 uses
  %i.cx = getelementptr [4 x i8], ptr %4, i64 %indvars.iv150 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !4
  %indvars.iv.next151 = add nsw i64 %indvars.iv150, -1
  %i.da = trunc nuw i64 %indvars.iv150 to i32
  %i.db = icmp sgt i32 %i.da, 3
  br i1 %i.db, label %.lr.ph137, label %._crit_edge138, !llvm.loop !141

._crit_edge138:                                   ; preds = %.lr.ph137, %middle.block, %bb.b
  store i32 %i.ca, ptr %i.cf, align 4, !tbaa !4
  %i.dc = select i1 %i.p, i32 2, i32 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge138, %._crit_edge132
  %i.dd = phi i32 [ 1, %._crit_edge138 ], [ %i.ce, %._crit_edge132 ]
  %.0110 = phi i32 [ %i.dc, %._crit_edge138 ], [ %i.q, %._crit_edge132 ]
  %i.de = load double, ptr %3, align 8, !tbaa !24
  %i.df = uitofp nneg i32 %.0110 to double
  %i.dg = fadd double %i.de, %i.df
  %i.dh = fadd double %i.dg, 5.000000e-01         ; 2 uses
  %i.di = fptosi double %i.dh to i32
  %i.dj = add nsw i32 %i.di, -1                   ; 2 uses
  %i.dk = sitofp i32 %i.dj to double
  %i.dl = fsub double %i.dh, %i.dk
  %i.dm = fptosi double %i.dl to i32
  %i.dn = add nsw i32 %i.dj, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %i.dp = fcmp ogt double %i.k, 5.000000e-01
  %i.dq = select i1 %i.dp, i32 1, i32 -1
  store i32 %i.dq, ptr %4, align 4, !tbaa !4
  %i.dr = icmp eq i32 %i.dd, 0
  br i1 %i.dr, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %4, align 4, !tbaa !4
  store i32 0, ptr %i.do, align 4, !tbaa !4
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
  %i.y = shl i64 %index, 1
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
  %i.cz = shl i64 %index, 1
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
  %i.bt = shl i64 %index, 1
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
  %.idx = shl i64 %index, 4
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
end_hunk_3
begin_hunk_4_@mp_sqrt_init:bb.a
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
  %.idx = shl i64 %index, 4
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
  %.idx209 = shl i64 %index200, 4
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
end_hunk_4
