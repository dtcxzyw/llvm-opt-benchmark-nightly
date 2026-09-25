Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/c_dblat3c?download=true
inline.NumInlined: 30
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 37
begin_hunk_0_@main:bb.a
  %i.gh = shufflevector <4 x i32> %i.gg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gi = getelementptr [8 x i8], ptr @main.ab, i64 %i.ec
  %i.gj = getelementptr i8, ptr %i.gi, i64 -328
  %i.gk = sub <4 x i32> <i32 25, i32 26, i32 27, i32 28>, %i.gh
  %i.gl = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gk, <4 x i32> splat (i32 -1))
  %i.gm = add nsw <4 x i32> %i.gl, splat (i32 1)
  %i.gn = uitofp <4 x i32> %i.gm to <4 x double>
  store <4 x double> %i.gn, ptr %i.gj, align 8, !tbaa !14
  %i.go = trunc i64 %indvars.iv231 to i32
  %i.gp = insertelement <4 x i32> poison, i32 %i.go, i64 0
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
  %vec.ind290.a = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph285 ], [ %vec.ind.next294.a, %vector.body286 ] ; 2 uses
  %.neg296 = xor i64 %index287, -1
  %0 = trunc <4 x i64> %vec.ind288 to <4 x i32>
  %1 = add <4 x i32> %0, splat (i32 1)
  %i.ja = mul nuw nsw <4 x i32> %1, %vec.ind289   ; 2 uses
  %i.jb = mul nuw nsw <4 x i32> %i.ja, %vec.ind289
  %i.jc = lshr <4 x i32> %i.jb, splat (i32 1)
  %i.jd = add <4 x i32> %vec.ind290.a, splat (i32 -1)
  %i.je = mul nuw nsw <4 x i32> %i.ja, %i.jd
  %i.jf = sdiv <4 x i32> %i.je, splat (i32 -3)
  %i.jg = add nsw <4 x i32> %i.jf, %i.jc
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.neg296
  %i.jh = getelementptr inbounds i8, ptr %gep, i64 -24
  %i.ji = shufflevector <4 x i32> %i.jg, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse = sitofp <4 x i32> %i.ji to <4 x double>
  store <4 x double> %reverse, ptr %i.jh, align 8, !tbaa !14
  %index.next291 = add nuw i64 %index287, 4       ; 2 uses
  %vec.ind.next292 = add nuw nsw <4 x i64> %vec.ind288, splat (i64 4)
  %vec.ind.next293 = add <4 x i32> %vec.ind289, splat (i32 4)
  %vec.ind.next294.a = add <4 x i32> %vec.ind290.a, splat (i32 4)
  %i.jj = icmp eq i64 %index.next291, %n.vec
  br i1 %i.jj, label %middle.block295, label %vector.body286, !llvm.loop !27

middle.block295:                                  ; preds = %vector.body286
  %cmp.n = icmp eq i64 %n.vec, %i.iy
  br i1 %cmp.n, label %._crit_edge198, label %.lr.ph197.preheader297

.lr.ph197.preheader297:                           ; preds = %.lr.ph197.preheader, %middle.block295
  %indvars.iv245.ph = phi i64 [ 1, %.lr.ph197.preheader ], [ %i.iz, %middle.block295 ]
  br label %.lr.ph197

bb.s:                                             ; preds = %bb.s, %.lr.ph193.new
  %indvars.iv239 = phi i64 [ 1, %.lr.ph193.new ], [ %indvars.iv.next240.3, %bb.s ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph193.new ], [ %niter.next.3, %bb.s ]
  %i.jk = trunc nuw nsw i64 %indvars.iv239 to i32
  %i.jl = sub i32 %i.if, %i.jk
  %i.jm = sitofp i32 %i.jl to double              ; 2 uses
  %i.jn = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv239
  %i.jo = getelementptr i8, ptr %i.jn, i64 33792
  store double %i.jm, ptr %i.jo, align 8, !tbaa !14
  %i.jp = mul i64 %indvars.iv239, 279172874240
  %sext = add i64 %i.jp, 17867063951360
  %i.jq = ashr exact i64 %sext, 29
  %i.jr = getelementptr inbounds i8, ptr @main.ab, i64 %i.jq
  store double %i.jm, ptr %i.jr, align 8, !tbaa !14
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 3 uses
  %i.js = trunc nuw nsw i64 %indvars.iv.next240 to i32
  %i.jt = sub i32 %i.if, %i.js
  %i.ju = sitofp i32 %i.jt to double              ; 2 uses
  %i.jv = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv.next240
  %i.jw = getelementptr i8, ptr %i.jv, i64 33792
  store double %i.ju, ptr %i.jw, align 8, !tbaa !14
  %i.jx = mul i64 %indvars.iv.next240, 279172874240
  %sext.1 = add i64 %i.jx, 17867063951360
  %i.jy = ashr exact i64 %sext.1, 29
  %i.jz = getelementptr inbounds i8, ptr @main.ab, i64 %i.jy
  store double %i.ju, ptr %i.jz, align 8, !tbaa !14
  %indvars.iv.next240.1 = add nuw nsw i64 %indvars.iv239, 2 ; 3 uses
  %i.ka = trunc nuw nsw i64 %indvars.iv.next240.1 to i32
  %i.kb = sub i32 %i.if, %i.ka
  %i.kc = sitofp i32 %i.kb to double              ; 2 uses
  %i.kd = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv.next240.1
  %i.ke = getelementptr i8, ptr %i.kd, i64 33792
  store double %i.kc, ptr %i.ke, align 8, !tbaa !14
  %i.kf = mul i64 %indvars.iv.next240.1, 279172874240
  %sext.2 = add i64 %i.kf, 17867063951360
  %i.kg = ashr exact i64 %sext.2, 29
  %i.kh = getelementptr inbounds i8, ptr @main.ab, i64 %i.kg
  store double %i.kc, ptr %i.kh, align 8, !tbaa !14
  %indvars.iv.next240.2 = add nuw nsw i64 %indvars.iv239, 3 ; 3 uses
  %i.ki = trunc nuw nsw i64 %indvars.iv.next240.2 to i32
  %i.kj = sub i32 %i.if, %i.ki
  %i.kk = sitofp i32 %i.kj to double              ; 2 uses
  %i.kl = getelementptr [8 x i8], ptr @main.ab, i64 %indvars.iv.next240.2
  %i.km = getelementptr i8, ptr %i.kl, i64 33792
  store double %i.kk, ptr %i.km, align 8, !tbaa !14
  %i.kn = mul i64 %indvars.iv.next240.2, 279172874240
  %sext.3 = add i64 %i.kn, 17867063951360
  %i.ko = ashr exact i64 %sext.3, 29
  %i.kp = getelementptr inbounds i8, ptr @main.ab, i64 %i.ko
  store double %i.kk, ptr %i.kp, align 8, !tbaa !14
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph197.preheader.unr-lcssa, label %bb.s, !llvm.loop !28

.lr.ph197:                                        ; preds = %.lr.ph197.preheader297, %.lr.ph197
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %.lr.ph197 ], [ %indvars.iv245.ph, %.lr.ph197.preheader297 ] ; 4 uses
  %indvars248 = trunc i64 %indvars.iv245 to i32   ; 2 uses
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 3 uses
  %indvars247 = trunc i64 %indvars.iv.next246 to i32
  %i.kq = mul nuw nsw i32 %indvars247, %indvars248 ; 2 uses
  %i.kr = mul nuw nsw i32 %i.kq, %indvars248
  %i.ks = lshr i32 %i.kr, 1
  %i.kt = trunc i64 %indvars.iv245 to i32
  %i.ku = add i32 %i.kt, -1
  %i.kv = mul nuw nsw i32 %i.kq, %i.ku
  %.neg = sdiv i32 %i.kv, -3
  %i.kw = add nsw i32 %.neg, %i.ks
  %i.kx = sitofp i32 %i.kw to double
  %i.ky = sub nuw nsw i64 %i.iw, %indvars.iv245
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr @main.cc, i64 %i.ky
  store double %i.kx, ptr %i.kz, align 8, !tbaa !14
  %exitcond250.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge198, label %.lr.ph197, !llvm.loop !29

._crit_edge198:                                   ; preds = %.lr.ph197, %middle.block295, %lde_.exit113.thread273
  store i8 84, ptr @main.transa, align 1, !tbaa !11
  store i8 78, ptr @main.transb, align 1, !tbaa !11
  %i.la = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.lb = load i32, ptr @main.n, align 4, !tbaa !10 ; 2 uses
  %.not7.i114 = icmp slt i32 %i.lb, 1
  br i1 %.not7.i114, label %lde_.exit124, label %.lr.ph.preheader.i115

.lr.ph.preheader.i115:                            ; preds = %._crit_edge198
  %i.lc = add nuw i32 %i.lb, 1
  %wide.trip.count.i116 = zext i32 %i.lc to i64
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %bb.t, %.lr.ph.preheader.i115
  %indvars.iv.i118 = phi i64 [ 1, %.lr.ph.preheader.i115 ], [ %indvars.iv.next.i119, %bb.t ] ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i118
  %i.le = load double, ptr %i.ld, align 8, !tbaa !14
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i118
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !14
  %i.lh = fcmp une double %i.le, %i.lg
  br i1 %i.lh, label %lde_.exit124.thread, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i117
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %wide.trip.count.i116
  br i1 %exitcond.not.i120, label %lde_.exit124, label %.lr.ph.i117, !llvm.loop !0

lde_.exit124.thread:                              ; preds = %.lr.ph.i117
  store i32 0, ptr @main.same, align 4, !tbaa !10
  br label %bb.u

lde_.exit124:                                     ; preds = %bb.t, %._crit_edge198
  store i32 1, ptr @main.same, align 4, !tbaa !10
  %i.li = load double, ptr @main.err, align 8
  %i.lj = fcmp une double %i.li, 0.000000e+00
  br i1 %i.lj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %lde_.exit124.thread, %lde_.exit124
  %puts85 = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.lk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb) ; 0 uses
  %i.ll = load i32, ptr @main.same, align 4, !tbaa !10
  %i.lm = icmp eq i32 %i.ll, 0
  %i.ln = select i1 %i.lm, i32 70, i32 84
  %i.lo = load double, ptr @main.err, align 8, !tbaa !14
  %i.lp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ln, double noundef %i.lo) ; 0 uses
  %puts86 = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %puts87 = call i32 @puts(ptr nonnull dereferenceable(1) @str.17) ; 0 uses
  call void @exit(i32 noundef 1) #21
  unreachable

bb.v:                                             ; preds = %lde_.exit124
  store i8 84, ptr @main.transb, align 1, !tbaa !11
  %i.lq = call i32 @dmmch_(ptr noundef nonnull @main.transa, ptr noundef nonnull @main.transb, ptr noundef nonnull @main.n, ptr noundef nonnull @c__1, ptr noundef nonnull @main.n, ptr noundef nonnull @c_b90, ptr noundef nonnull @main.ab, ptr noundef nonnull @c__65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @main.ab, i64 33800), ptr noundef nonnull @c__65, ptr noundef nonnull @c_b104, ptr noundef nonnull @main.c__, ptr noundef nonnull @c__65, ptr noundef nonnull @main.ct, ptr noundef nonnull @main.g, ptr noundef nonnull @main.cc, ptr noundef nonnull @c__65, ptr noundef nonnull @main.eps, ptr noundef nonnull @main.err, ptr noundef nonnull @main.fatal, ptr nonnull poison, ptr noundef nonnull @c_true, i32 poison, i32 poison) ; 0 uses
  %i.lr = load i32, ptr @main.n, align 4, !tbaa !10 ; 2 uses
  %.not7.i125 = icmp slt i32 %i.lr, 1
  br i1 %.not7.i125, label %lde_.exit135, label %.lr.ph.preheader.i126

.lr.ph.preheader.i126:                            ; preds = %bb.v
  %i.ls = add nuw i32 %i.lr, 1
  %wide.trip.count.i127 = zext i32 %i.ls to i64
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.w, %.lr.ph.preheader.i126
  %indvars.iv.i129 = phi i64 [ 1, %.lr.ph.preheader.i126 ], [ %indvars.iv.next.i130, %bb.w ] ; 3 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.cc, i64 -8), i64 %indvars.iv.i129
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !14
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds (i8, ptr @main.ct, i64 -8), i64 %indvars.iv.i129
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !14
  %i.lx = fcmp une double %i.lu, %i.lw
  br i1 %i.lx, label %lde_.exit135, label %bb.w

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
  %storemerge79201 = phi i32 [ 1, %lde_.exit135 ], [ %i.ov, %bb.bi ] ; 3 uses
  %i.ly = add nsw i32 %storemerge79201, -1
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr @main.ltest, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !10
  %.not81 = icmp eq i32 %i.mb, 0
  br i1 %.not81, label %bb.y, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.mc = sext i32 %storemerge79201 to i64
  %i.md = getelementptr [13 x i8], ptr @main.snames, i64 %i.mc ; 12 uses
  %i.me = getelementptr i8, ptr %i.md, i64 -13    ; 2 uses
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !11  ; 2 uses
  %.not82 = icmp eq i8 %i.mf, 0
  br i1 %.not82, label %.critedge, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.mg = getelementptr inbounds [13 x i8], ptr @main.snames, i64 %i.lz
  %i.mh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %i.mg) ; 0 uses
  br label %bb.bi

bb.z:                                             ; preds = %.preheader
  store i8 %i.mf, ptr @srnamc_, align 1, !tbaa !11
  %i.mi = getelementptr i8, ptr %i.md, i64 -12
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !11  ; 2 uses
  %.not82.1 = icmp eq i8 %i.mj, 0
  br i1 %.not82.1, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
end_hunk_0
