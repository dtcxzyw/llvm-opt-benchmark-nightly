Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@main:bb.a
  %i.gq = shufflevector <4 x i32> %i.gp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gr = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.gs = getelementptr i8, ptr %i.gr, i64 -296
  %i.gt = sub <4 x i32> <i32 29, i32 30, i32 31, i32 32>, %i.gq
  %i.gu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gt, <4 x i32> splat (i32 -1))
  %i.gv = add nsw <4 x i32> %i.gu, splat (i32 1)
  %i.gw = uitofp <4 x i32> %i.gv to <4 x double>
  store <4 x double> %i.gw, ptr %i.gs, align 8, !tbaa !14
  %i.gx = trunc nuw nsw i64 %indvars.iv231 to i32
  %i.gy = uitofp nneg i32 %i.gx to double         ; 2 uses
  %i.gz = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv231
  %i.ha = getelementptr i8, ptr %i.gz, i64 33792
  store double %i.gy, ptr %i.ha, align 8, !tbaa !14
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr @main.ab, i64 %i.ec
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 33280
  store double %i.gy, ptr %i.hc, align 8, !tbaa !14
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next232, 33
  br i1 %exitcond234.not, label %.preheader147, label %.preheader148, !llvm.loop !25

.preheader147:                                    ; preds = %.preheader148
  store i32 33, ptr @main.i__, align 4, !tbaa !10
  store <4 x double> <double 1.000000e+00, double 4.000000e+00, double 1.000000e+01, double 2.000000e+01>, ptr @main.cc, align 32, !tbaa !14
  store <4 x double> <double 3.500000e+01, double 5.600000e+01, double 8.400000e+01, double 1.200000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 32), align 32, !tbaa !14
  store <4 x double> <double 1.650000e+02, double 2.200000e+02, double 2.860000e+02, double 3.640000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 64), align 32, !tbaa !14
  store <4 x double> <double 4.550000e+02, double 5.600000e+02, double 6.800000e+02, double 8.160000e+02>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 96), align 32, !tbaa !14
  store <4 x double> <double 9.690000e+02, double 1.140000e+03, double 1.330000e+03, double 1.540000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 128), align 32, !tbaa !14
  store <4 x double> <double 1.771000e+03, double 2.024000e+03, double 2.300000e+03, double 2.600000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 160), align 32, !tbaa !14
  store <4 x double> <double 2.925000e+03, double 3.276000e+03, double 3.654000e+03, double 4.060000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 192), align 32, !tbaa !14
  store <4 x double> <double 4.495000e+03, double 4.960000e+03, double 5.456000e+03, double 5.984000e+03>, ptr getelementptr inbounds nuw (i8, ptr @main.cc, i64 224), align 32, !tbaa !14
  store i8 78, ptr @main.transa, align 1, !tbaa !11
  store i8 78, ptr @main.transb, align 1, !tbaa !11
  %i.hd = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.he = load i32, ptr @main.n, align 4, !tbaa !10 ; 2 uses
  %.not7.i = icmp slt i32 %i.he, 1
  br i1 %.not7.i, label %lde_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader147
  %i.hf = add nuw i32 %i.he, 1
  %wide.trip.count.i = zext i32 %i.hf to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !14
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !14
  %i.hk = fcmp une double %i.hh, %i.hj
  br i1 %i.hk, label %lde_.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %lde_.exit, label %.lr.ph.i, !llvm.loop !0

lde_.exit.thread:                                 ; preds = %.lr.ph.i
  store i32 0, ptr @main.same, align 4, !tbaa !10
  br label %bb.n

lde_.exit:                                        ; preds = %bb.m, %.preheader147
  store i32 1, ptr @main.same, align 4, !tbaa !10
  %i.hl = load double, ptr @main.err, align 8
  %i.hm = fcmp une double %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %lde_.exit.thread, %lde_.exit
  %puts91 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.hn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb) ; 0 uses
  %i.ho = load i32, ptr @main.same, align 4, !tbaa !10
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = select i1 %i.hp, i32 70, i32 84
  %i.hr = load double, ptr @main.err, align 8, !tbaa !14
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.hq, double noundef %i.hr) ; 0 uses
  %puts92 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts93 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.o:                                             ; preds = %lde_.exit
  store i8 84, ptr @main.transb, align 1, !tbaa !11
  %i.ht = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.hu = load i32, ptr @main.n, align 4, !tbaa !10 ; 9 uses
  %.not7.i103 = icmp slt i32 %i.hu, 1
  br i1 %.not7.i103, label %lde_.exit113.thread273, label %.lr.ph.preheader.i104

.lr.ph.preheader.i104:                            ; preds = %bb.o
  %i.hv = add nuw i32 %i.hu, 1
  %wide.trip.count.i105 = zext i32 %i.hv to i64
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.p, %.lr.ph.preheader.i104
  %indvars.iv.i107 = phi i64 [ 1, %.lr.ph.preheader.i104 ], [ %indvars.iv.next.i108, %bb.p ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i107
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !14
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i107
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !14
  %i.ia = fcmp une double %i.hx, %i.hz
  br i1 %i.ia, label %lde_.exit113.thread, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i106
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %indvars.iv.next.i108, %wide.trip.count.i105
  br i1 %exitcond.not.i109, label %lde_.exit113, label %.lr.ph.i106, !llvm.loop !0

lde_.exit113.thread:                              ; preds = %.lr.ph.i106
  store i32 0, ptr @main.same, align 4, !tbaa !10
  br label %bb.q

lde_.exit113:                                     ; preds = %bb.p
  store i32 1, ptr @main.same, align 4, !tbaa !10
  %i.ib = load double, ptr @main.err, align 8
  %i.ic = fcmp une double %i.ib, 0.000000e+00
  br i1 %i.ic, label %bb.q, label %.lr.ph193

lde_.exit113.thread273:                           ; preds = %bb.o
  store i32 1, ptr @main.same, align 4, !tbaa !10
  %i.id = load double, ptr @main.err, align 8
  %i.ie = fcmp une double %i.id, 0.000000e+00
  br i1 %i.ie, label %bb.q, label %._crit_edge198

.lr.ph193:                                        ; preds = %lde_.exit113
  %i.if = add nuw i32 %i.hu, 1                    ; 5 uses
  %i.ig = zext nneg i32 %i.hu to i64              ; 2 uses
  %xtraiter = and i64 %i.ig, 3                    ; 3 uses
  %i.ih = icmp ult i32 %i.hu, 4
  br i1 %i.ih, label %.epil.preheader, label %.lr.ph193.new

.lr.ph193.new:                                    ; preds = %.lr.ph193
  %unroll_iter = and i64 %i.ig, 2147483644
  br label %bb.s

bb.q:                                             ; preds = %lde_.exit113.thread273, %lde_.exit113.thread, %lde_.exit113
  %puts88 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.ii = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb) ; 0 uses
  %i.ij = load i32, ptr @main.same, align 4, !tbaa !10
  %i.ik = icmp eq i32 %i.ij, 0
  %i.il = select i1 %i.ik, i32 70, i32 84
  %i.im = load double, ptr @main.err, align 8, !tbaa !14
  %i.in = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.il, double noundef %i.im) ; 0 uses
  %puts89 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts90 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

.lr.ph197.preheader.unr-lcssa:                    ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph197.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph197.preheader.unr-lcssa, %.lr.ph193
  %indvars.iv239.epil.init = phi i64 [ 1, %.lr.ph193 ], [ %indvars.iv.next240.3, %.lr.ph197.preheader.unr-lcssa ]
  %lcmp.mod299 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod299)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %indvars.iv239.epil = phi i64 [ %indvars.iv239.epil.init, %.epil.preheader ], [ %indvars.iv.next240.epil, %bb.r ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.io = trunc nuw nsw i64 %indvars.iv239.epil to i32
  %i.ip = sub i32 %i.if, %i.io
  %i.iq = sitofp i32 %i.ip to double              ; 2 uses
  %i.ir = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv239.epil
  %i.is = getelementptr i8, ptr %i.ir, i64 33792
  store double %i.iq, ptr %i.is, align 8, !tbaa !14
  %i.it = mul i64 %indvars.iv239.epil, 279172874240
  %sext.epil = add i64 %i.it, 17867063951360
  %i.iu = ashr exact i64 %sext.epil, 29
  %i.iv = getelementptr inbounds i8, ptr @main.ab, i64 %i.iu
  store double %i.iq, ptr %i.iv, align 8, !tbaa !14
  %indvars.iv.next240.epil = add nuw nsw i64 %indvars.iv239.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph197.preheader, label %bb.r, !llvm.loop !26

.lr.ph197.preheader:                              ; preds = %bb.r, %.lr.ph197.preheader.unr-lcssa
  %i.iw = zext nneg i32 %i.hu to i64              ; 2 uses
  %i.ix = add nuw i32 %i.hu, 1
  %wide.trip.count249 = zext i32 %i.ix to i64
  %i.iy = zext nneg i32 %i.hu to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.hu, 4
  br i1 %min.iters.check, label %.lr.ph197.preheader297, label %vector.ph285

vector.ph285:                                     ; preds = %.lr.ph197.preheader
  %n.vec = and i64 %i.iy, 2147483644              ; 3 uses
  %i.iz = or disjoint i64 %n.vec, 1
  %invariant.gep = getelementptr [8 x i8], ptr @main.cc, i64 %i.iw
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph285
  %index287 = phi i64 [ 0, %vector.ph285 ], [ %index.next291, %vector.body286 ] ; 2 uses
  %vec.ind288 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph285 ], [ %vec.ind.next292, %vector.body286 ] ; 2 uses
  %vec.ind289 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph285 ], [ %vec.ind.next293, %vector.body286 ] ; 3 uses
  %vec.ind290 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph285 ], [ %vec.ind.next294, %vector.body286 ] ; 2 uses
  %.neg296 = xor i64 %index287, -1
  %i.ja = trunc <4 x i64> %vec.ind288 to <4 x i32>
  %i.jb = add <4 x i32> %i.ja, splat (i32 1)
  %i.jc = mul nuw nsw <4 x i32> %i.jb, %vec.ind289 ; 2 uses
  %i.jd = mul nuw nsw <4 x i32> %i.jc, %vec.ind289
  %i.je = lshr <4 x i32> %i.jd, splat (i32 1)
  %i.jf = add <4 x i32> %vec.ind290, splat (i32 -1)
  %i.jg = mul nsw <4 x i32> %i.jc, %i.jf
  %i.jh = sdiv <4 x i32> %i.jg, splat (i32 -3)
  %i.ji = add nsw <4 x i32> %i.jh, %i.je
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.neg296
  %i.jj = getelementptr inbounds i8, ptr %gep, i64 -24
  %i.jk = shufflevector <4 x i32> %i.ji, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse = sitofp <4 x i32> %i.jk to <4 x double>
  store <4 x double> %reverse, ptr %i.jj, align 8, !tbaa !14
  %index.next291 = add nuw i64 %index287, 4       ; 2 uses
  %vec.ind.next292 = add nuw nsw <4 x i64> %vec.ind288, splat (i64 4)
  %vec.ind.next293 = add <4 x i32> %vec.ind289, splat (i32 4)
  %vec.ind.next294 = add <4 x i32> %vec.ind290, splat (i32 4)
  %i.jl = icmp eq i64 %index.next291, %n.vec
  br i1 %i.jl, label %middle.block295, label %vector.body286, !llvm.loop !27

middle.block295:                                  ; preds = %vector.body286
  %cmp.n = icmp eq i64 %n.vec, %i.iy
  br i1 %cmp.n, label %._crit_edge198, label %.lr.ph197.preheader297

.lr.ph197.preheader297:                           ; preds = %.lr.ph197.preheader, %middle.block295
  %indvars.iv245.ph = phi i64 [ 1, %.lr.ph197.preheader ], [ %i.iz, %middle.block295 ]
  br label %.lr.ph197

bb.s:                                             ; preds = %bb.s, %.lr.ph193.new
  %indvars.iv239 = phi i64 [ 1, %.lr.ph193.new ], [ %indvars.iv.next240.3, %bb.s ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph193.new ], [ %niter.next.3, %bb.s ]
  %i.jm = trunc nuw nsw i64 %indvars.iv239 to i32
  %i.jn = sub i32 %i.if, %i.jm
  %i.jo = sitofp i32 %i.jn to double              ; 2 uses
  %i.jp = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv239
  %i.jq = getelementptr i8, ptr %i.jp, i64 33792
  store double %i.jo, ptr %i.jq, align 8, !tbaa !14
  %i.jr = mul i64 %indvars.iv239, 279172874240
  %sext = add i64 %i.jr, 17867063951360
  %i.js = ashr exact i64 %sext, 29
  %i.jt = getelementptr inbounds i8, ptr @main.ab, i64 %i.js
  store double %i.jo, ptr %i.jt, align 8, !tbaa !14
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 3 uses
  %i.ju = trunc nuw nsw i64 %indvars.iv.next240 to i32
  %i.jv = sub i32 %i.if, %i.ju
  %i.jw = sitofp i32 %i.jv to double              ; 2 uses
  %i.jx = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv.next240
  %i.jy = getelementptr i8, ptr %i.jx, i64 33792
  store double %i.jw, ptr %i.jy, align 8, !tbaa !14
  %i.jz = mul i64 %indvars.iv.next240, 279172874240
  %sext.1 = add i64 %i.jz, 17867063951360
  %i.ka = ashr exact i64 %sext.1, 29
  %i.kb = getelementptr inbounds i8, ptr @main.ab, i64 %i.ka
  store double %i.jw, ptr %i.kb, align 8, !tbaa !14
  %indvars.iv.next240.1 = add nuw nsw i64 %indvars.iv239, 2 ; 3 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv.next240.1 to i32
  %i.kd = sub i32 %i.if, %i.kc
  %i.ke = sitofp i32 %i.kd to double              ; 2 uses
  %i.kf = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv.next240.1
  %i.kg = getelementptr i8, ptr %i.kf, i64 33792
  store double %i.ke, ptr %i.kg, align 8, !tbaa !14
  %i.kh = mul i64 %indvars.iv.next240.1, 279172874240
  %sext.2 = add i64 %i.kh, 17867063951360
  %i.ki = ashr exact i64 %sext.2, 29
  %i.kj = getelementptr inbounds i8, ptr @main.ab, i64 %i.ki
  store double %i.ke, ptr %i.kj, align 8, !tbaa !14
  %indvars.iv.next240.2 = add nuw nsw i64 %indvars.iv239, 3 ; 3 uses
  %i.kk = trunc nuw nsw i64 %indvars.iv.next240.2 to i32
  %i.kl = sub i32 %i.if, %i.kk
  %i.km = sitofp i32 %i.kl to double              ; 2 uses
  %i.kn = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv.next240.2
  %i.ko = getelementptr i8, ptr %i.kn, i64 33792
  store double %i.km, ptr %i.ko, align 8, !tbaa !14
  %i.kp = mul i64 %indvars.iv.next240.2, 279172874240
  %sext.3 = add i64 %i.kp, 17867063951360
  %i.kq = ashr exact i64 %sext.3, 29
  %i.kr = getelementptr inbounds i8, ptr @main.ab, i64 %i.kq
  store double %i.km, ptr %i.kr, align 8, !tbaa !14
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph197.preheader.unr-lcssa, label %bb.s, !llvm.loop !28

.lr.ph197:                                        ; preds = %.lr.ph197.preheader297, %.lr.ph197
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %.lr.ph197 ], [ %indvars.iv245.ph, %.lr.ph197.preheader297 ] ; 4 uses
  %indvars248 = trunc i64 %indvars.iv245 to i32   ; 2 uses
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 3 uses
  %indvars247 = trunc i64 %indvars.iv.next246 to i32
  %i.ks = mul nuw nsw i32 %indvars247, %indvars248 ; 2 uses
  %i.kt = mul nuw nsw i32 %i.ks, %indvars248
  %i.ku = lshr i32 %i.kt, 1
  %i.kv = trunc i64 %indvars.iv245 to i32
  %i.kw = add i32 %i.kv, -1
  %i.kx = mul nsw i32 %i.ks, %i.kw
  %.neg = sdiv i32 %i.kx, -3
  %i.ky = add nsw i32 %.neg, %i.ku
  %i.kz = sitofp i32 %i.ky to double
  %i.la = sub nuw nsw i64 %i.iw, %indvars.iv245
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr @main.cc, i64 %i.la
  store double %i.kz, ptr %i.lb, align 8, !tbaa !14
  %exitcond250.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge198, label %.lr.ph197, !llvm.loop !29

._crit_edge198:                                   ; preds = %.lr.ph197, %middle.block295, %lde_.exit113.thread273
  store i8 84, ptr @main.transa, align 1, !tbaa !11
  store i8 78, ptr @main.transb, align 1, !tbaa !11
  %i.lc = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.ld = load i32, ptr @main.n, align 4, !tbaa !10 ; 2 uses
  %.not7.i114 = icmp slt i32 %i.ld, 1
  br i1 %.not7.i114, label %lde_.exit124, label %.lr.ph.preheader.i115

.lr.ph.preheader.i115:                            ; preds = %._crit_edge198
  %i.le = add nuw i32 %i.ld, 1
  %wide.trip.count.i116 = zext i32 %i.le to i64
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %bb.t, %.lr.ph.preheader.i115
  %indvars.iv.i118 = phi i64 [ 1, %.lr.ph.preheader.i115 ], [ %indvars.iv.next.i119, %bb.t ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i118
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !14
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i118
  %i.li = load double, ptr %i.lh, align 8, !tbaa !14
  %i.lj = fcmp une double %i.lg, %i.li
  br i1 %i.lj, label %lde_.exit124.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i117
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %wide.trip.count.i116
  br i1 %exitcond.not.i120, label %lde_.exit124, label %.lr.ph.i117, !llvm.loop !0

lde_.exit124.thread:                              ; preds = %.lr.ph.i117
  store i32 0, ptr @main.same, align 4, !tbaa !10
  br label %bb.u

lde_.exit124:                                     ; preds = %bb.t, %._crit_edge198
  store i32 1, ptr @main.same, align 4, !tbaa !10
  %i.lk = load double, ptr @main.err, align 8
  %i.ll = fcmp une double %i.lk, 0.000000e+00
  br i1 %i.ll, label %bb.u, label %bb.v

bb.u:                                             ; preds = %lde_.exit124.thread, %lde_.exit124
  %puts85 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.lm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb) ; 0 uses
  %i.ln = load i32, ptr @main.same, align 4, !tbaa !10
  %i.lo = icmp eq i32 %i.ln, 0
  %i.lp = select i1 %i.lo, i32 70, i32 84
  %i.lq = load double, ptr @main.err, align 8, !tbaa !14
  %i.lr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.lp, double noundef %i.lq) ; 0 uses
  %puts86 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts87 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.v:                                             ; preds = %lde_.exit124
  store i8 84, ptr @main.transb, align 1, !tbaa !11
  %i.ls = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.lt = load i32, ptr @main.n, align 4, !tbaa !10 ; 2 uses
  %.not7.i125 = icmp slt i32 %i.lt, 1
  br i1 %.not7.i125, label %lde_.exit135, label %.lr.ph.preheader.i126

.lr.ph.preheader.i126:                            ; preds = %bb.v
  %i.lu = add nuw i32 %i.lt, 1
  %wide.trip.count.i127 = zext i32 %i.lu to i64
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.w, %.lr.ph.preheader.i126
  %indvars.iv.i129 = phi i64 [ 1, %.lr.ph.preheader.i126 ], [ %indvars.iv.next.i130, %bb.w ] ; 3 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i129
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !14
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i129
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !14
  %i.lz = fcmp une double %i.lw, %i.ly
  br i1 %i.lz, label %lde_.exit135, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i128
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i129, 1 ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %indvars.iv.next.i130, %wide.trip.count.i127
  br i1 %exitcond.not.i131, label %lde_.exit135, label %.lr.ph.i128, !llvm.loop !0

lde_.exit135:                                     ; preds = %bb.w, %.lr.ph.i128, %bb.v
  %.0.i133 = phi i32 [ 1, %bb.v ], [ 1, %bb.w ], [ 0, %.lr.ph.i128 ]
  store i32 %.0.i133, ptr @main.same, align 4, !tbaa !10
  store i32 1, ptr @main.isnum, align 4, !tbaa !10
  br label %bb.x

bb.x:                                             ; preds = %lde_.exit135, %bb.bi
  %storemerge79201 = phi i32 [ 1, %lde_.exit135 ], [ %i.ox, %bb.bi ] ; 3 uses
  %i.ma = add nsw i32 %storemerge79201, -1
  %i.mb = sext i32 %i.ma to i64                   ; 2 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr @main.ltest, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !10
  %.not81 = icmp eq i32 %i.md, 0
  br i1 %.not81, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.me = sext i32 %storemerge79201 to i64
  %i.mf = getelementptr [13 x i8], ptr @main.snames, i64 %i.me ; 12 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 -13    ; 2 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !11  ; 2 uses
  %.not82 = icmp eq i8 %i.mh, 0
  br i1 %.not82, label %.critedge, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.mi = getelementptr inbounds [13 x i8], ptr @main.snames, i64 %i.mb
  %i.mj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.mi) ; 0 uses
  br label %bb.bi

bb.z:                                             ; preds = %.preheader
  store i8 %i.mh, ptr @srnamc_, align 1, !tbaa !11
  %i.mk = getelementptr i8, ptr %i.mf, i64 -12
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !11  ; 2 uses
  %.not82.1 = icmp eq i8 %i.ml, 0
  br i1 %.not82.1, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 %i.ml, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 1), align 1, !tbaa !11
  %i.mm = getelementptr i8, ptr %i.mf, i64 -11
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !11  ; 2 uses
  %.not82.2 = icmp eq i8 %i.mn, 0
  br i1 %.not82.2, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 %i.mn, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 2), align 1, !tbaa !11
  %i.mo = getelementptr i8, ptr %i.mf, i64 -10
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !11  ; 2 uses
  %.not82.3 = icmp eq i8 %i.mp, 0
  br i1 %.not82.3, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 %i.mp, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 3), align 1, !tbaa !11
  %i.mq = getelementptr i8, ptr %i.mf, i64 -9
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !11  ; 2 uses
  %.not82.4 = icmp eq i8 %i.mr, 0
  br i1 %.not82.4, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 %i.mr, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 4), align 1, !tbaa !11
  %i.ms = getelementptr i8, ptr %i.mf, i64 -8
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !11  ; 2 uses
  %.not82.5 = icmp eq i8 %i.mt, 0
  br i1 %.not82.5, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 %i.mt, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 5), align 1, !tbaa !11
  %i.mu = getelementptr i8, ptr %i.mf, i64 -7
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !11  ; 2 uses
  %.not82.6 = icmp eq i8 %i.mv, 0
  br i1 %.not82.6, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i8 %i.mv, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 6), align 1, !tbaa !11
  %i.mw = getelementptr i8, ptr %i.mf, i64 -6
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !11  ; 2 uses
  %.not82.7 = icmp eq i8 %i.mx, 0
  br i1 %.not82.7, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %i.mx, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 7), align 1, !tbaa !11
  %i.my = getelementptr i8, ptr %i.mf, i64 -5
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !11  ; 2 uses
  %.not82.8 = icmp eq i8 %i.mz, 0
  br i1 %.not82.8, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i8 %i.mz, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 8), align 1, !tbaa !11
  %i.na = getelementptr i8, ptr %i.mf, i64 -4
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !11  ; 2 uses
  %.not82.9 = icmp eq i8 %i.nb, 0
  br i1 %.not82.9, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 %i.nb, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 9), align 1, !tbaa !11
  %i.nc = getelementptr i8, ptr %i.mf, i64 -3
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !11  ; 2 uses
  %.not82.10 = icmp eq i8 %i.nd, 0
  br i1 %.not82.10, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i8 %i.nd, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 10), align 1, !tbaa !11
  %i.ne = getelementptr i8, ptr %i.mf, i64 -2
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !11  ; 2 uses
  %.not82.11 = icmp eq i8 %i.nf, 0
  br i1 %.not82.11, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i8 %i.nf, ptr getelementptr inbounds nuw (i8, ptr @srnamc_, i64 11), align 1, !tbaa !11
  br label %.critedge

.critedge:                                        ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %.preheader
  %i.ng = load i32, ptr @main.tsterr, align 4, !tbaa !10
  %.not83 = icmp eq i32 %i.ng, 0
  br i1 %.not83, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge
end_hunk_0
