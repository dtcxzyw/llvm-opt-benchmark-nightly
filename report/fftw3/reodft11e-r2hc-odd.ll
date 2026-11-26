Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft11e-r2hc-odd?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@fftw_solver_register
declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.opcnt, align 16             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.a = getelementptr i8, ptr %2, i64 212
  %.val = load i64, ptr %i.a, align 4
  %i.b = and i64 %.val, 8
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = load i32, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39   ; 6 uses
  %i.m = and i64 %i.l, -9223372036854775807
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.e, label %applicable.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !40
  switch i32 %i.p, label %applicable.exit.thread [
    i32 12, label %applicable.exit.thread40
    i32 16, label %applicable.exit.thread40
  ]

applicable.exit.thread40:                         ; preds = %bb.e, %bb.e
  %i.q = shl i64 %i.l, 3
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #4 ; 3 uses
  %i.s = tail call ptr @fftw_mktensor_1d(i64 noundef %i.l, i64 noundef 1, i64 noundef 1) #4
  %i.t = tail call ptr @fftw_mktensor_0d() #4
  %i.u = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.s, ptr noundef %i.t, ptr noundef %i.r, ptr noundef %i.r, i32 noundef 0) #4
  %i.v = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.u) #4 ; 3 uses
  tail call void @fftw_ifree(ptr noundef %i.r) #4
  %.not38 = icmp eq ptr %i.v, null
  br i1 %.not38, label %applicable.exit.thread, label %bb.f

bb.f:                                             ; preds = %applicable.exit.thread40
  %i.w = load i32, ptr %i.o, align 8, !tbaa !40
  %i.x = icmp eq i32 %i.w, 12
  %i.y = select i1 %i.x, ptr @apply_re11, ptr @apply_ro11
  %i.z = tail call ptr @fftw_mkplan_rdft(i64 noundef 128, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull %i.y) #4 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store i64 %i.l, ptr %i.aa, align 8, !tbaa !17
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ae = load <2 x i64>, ptr %i.ac, align 8, !tbaa !41
  store <2 x i64> %i.ae, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store ptr %i.v, ptr %i.af, align 8, !tbaa !18
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !19
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 96 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.am = tail call i32 @fftw_tensor_tornk1(ptr noundef %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al) #4 ; 0 uses
  call void @fftw_ops_zero(ptr noundef nonnull %3) #4
  %i.an = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %i.ao = shufflevector <2 x i64> %i.an, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ap = add nsw <2 x i64> %i.ao, <i64 -1, i64 0>
  %i.aq = uitofp nneg <2 x i64> %i.ap to <2 x double>
  store <2 x double> %i.aq, ptr %3, align 16, !tbaa !20
  %i.ar = shl nsw i64 %i.l, 2
  %i.as = uitofp nneg i64 %i.ar to double
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.as, ptr %i.at, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.au) #4
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !21
  call void @fftw_ops_madd2(i64 noundef %i.av, ptr noundef nonnull %3, ptr noundef nonnull %i.au) #4
  %i.aw = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.au) #4
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a, %applicable.exit.thread40, %bb.f
  %.0 = phi ptr [ %i.z, %bb.f ], [ null, %bb.e ], [ null, %applicable.exit.thread40 ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i32, ptr %i.b, align 8, !tbaa !19
  %i.d = tail call ptr @fftw_rdft_kind_str(i32 noundef %i.c) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, ptr noundef %i.j) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #4
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_0d() local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_re11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 27 uses
  %i.g = sdiv i64 %i.f, 2                         ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = shl i64 %i.f, 3
  %i.o = tail call ptr @fftw_malloc_plain(i64 noundef %i.n) #4 ; 40 uses
  %i.p = icmp sgt i64 %i.i, 0
  br i1 %i.p, label %.preheader195.lr.ph, label %._crit_edge232

.preheader195.lr.ph:                              ; preds = %bb.a
  %i.q = icmp sgt i64 %i.f, 0
  %i.r = shl i64 %i.f, 1                          ; 12 uses
  %i.s = mul i64 %i.f, 3                          ; 2 uses
  %i.t = shl nsw i64 %i.f, 2                      ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = icmp sgt i64 %i.f, 3
  %i.w = xor i64 %i.g, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.g
  %i.y = sub nsw i64 %i.f, %i.g
  %i.z = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = add nsw i64 %i.g, 1
  %i.ab = sdiv i64 %i.aa, 2
  %i.ac = and i64 %i.ab, 1
  %.not184 = icmp eq i64 %i.ac, 0
  %i.ad = mul nsw i64 %i.g, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 3)
  %i.ae = add nsw i64 %smax, -2
  %i.af = lshr i64 %i.ae, 1                       ; 5 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %i.ah = shl i64 %i.af, 4                        ; 2 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 24  ; 4 uses
  %scevgep328 = getelementptr i8, ptr %i.o, i64 8 ; 4 uses
  %3 = shl i64 %i.f, 3                            ; 4 uses
  %scevgep329.a = getelementptr i8, ptr %i.o, i64 %3 ; 4 uses
  %4 = add i64 %3, -16
  %5 = sub i64 %4, %i.ah
  %scevgep330 = getelementptr i8, ptr %i.o, i64 %5 ; 4 uses
  %i.aj = add nuw i64 %i.i, 2305843009213693951
  %i.ak = mul i64 %i.m, %i.aj
  %i.al = shl i64 %i.ak, 3                        ; 4 uses
  %i.am = shl i64 %i.g, 3                         ; 4 uses
  %i.an = shl nuw i64 %i.af, 3                    ; 4 uses
  %i.ao = getelementptr i8, ptr %2, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  %scevgep331 = getelementptr i8, ptr %i.aq, i64 16 ; 5 uses
  %i.ar = getelementptr i8, ptr %2, i64 %i.am
  %scevgep332 = getelementptr i8, ptr %i.ar, i64 8 ; 5 uses
  %i.as = getelementptr i8, ptr %2, i64 %i.al
  %scevgep333 = getelementptr i8, ptr %i.as, i64 %i.am ; 5 uses
  %i.at = add i64 %i.am, -8
  %i.au = sub i64 %i.at, %i.an
  %scevgep334 = getelementptr i8, ptr %2, i64 %i.au ; 5 uses
  %i.av = getelementptr i8, ptr %2, i64 %i.al
  %scevgep335 = getelementptr i8, ptr %i.av, i64 %3 ; 4 uses
  %i.aw = add i64 %3, -8
  %i.ax = sub i64 %i.aw, %i.an
  %scevgep336 = getelementptr i8, ptr %2, i64 %i.ax ; 4 uses
  %i.ay = getelementptr i8, ptr %2, i64 %i.al
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.an
  %scevgep337 = getelementptr i8, ptr %i.az, i64 8 ; 2 uses
  %i.ba = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.bb = shufflevector <4 x ptr> %i.ba, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bc = insertelement <4 x ptr> poison, ptr %scevgep335, i64 0 ; 2 uses
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %scevgep333, i64 1
  %i.be = insertelement <4 x ptr> %i.bd, ptr %scevgep331, i64 2
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep329.a, i64 3
  %i.bg = insertelement <4 x ptr> poison, ptr %scevgep336, i64 0 ; 2 uses
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep334, i64 1
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %scevgep332, i64 2
  %i.bj = insertelement <4 x ptr> %i.bi, ptr %scevgep330, i64 3
  %i.bk = insertelement <4 x ptr> poison, ptr %scevgep337, i64 0
  %i.bl = shufflevector <4 x ptr> %i.bk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bm = insertelement <4 x ptr> poison, ptr %scevgep330, i64 0
  %i.bn = insertelement <4 x ptr> %i.bm, ptr %scevgep336, i64 1
  %i.bo = insertelement <4 x ptr> %i.bn, ptr %scevgep332, i64 2
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %scevgep334, i64 3
  %i.bq = insertelement <4 x ptr> %i.bc, ptr %scevgep, i64 1
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep333, i64 2
  %i.bs = insertelement <4 x ptr> %i.br, ptr %scevgep329.a, i64 3
  %i.bt = insertelement <4 x ptr> %i.bg, ptr %scevgep328, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep334, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep330, i64 3
  %i.bw = insertelement <4 x ptr> poison, ptr %scevgep329.a, i64 0
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep335, i64 1
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep331, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep333, i64 3
  %invariant.op = sub i64 4, %i.r
  %invariant.op431 = sub i64 8, %i.r
  %invariant.op433 = sub i64 12, %i.r
  %i.ca = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp sgt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.cb = icmp ult <4 x ptr> %i.bb, %i.bf
  %i.cc = icmp ult <4 x ptr> %i.bj, %i.bl
  %.mask = and i64 %i.m, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.cd = and <4 x i1> %i.cb, %i.cc
  %bound0349 = icmp ult ptr %2, %scevgep
  %bound1350 = icmp ult ptr %scevgep328, %scevgep337
  %found.conflict351 = and i1 %bound0349, %bound1350
  %bound0353 = icmp ult ptr %scevgep336, %scevgep333
  %bound1354 = icmp ult ptr %scevgep334, %scevgep335
  %found.conflict355 = and i1 %bound0353, %bound1354
  %bound0357 = icmp ult ptr %scevgep336, %scevgep331
  %bound1358 = icmp ult ptr %scevgep332, %scevgep335
  %found.conflict359 = and i1 %bound0357, %bound1358
  %i.ce = icmp ult <4 x ptr> %i.bv, %i.bz
  %i.cf = icmp ult <4 x ptr> %i.bp, %i.bs
  %i.cg = and <4 x i1> %i.cf, %i.ce
  %bound0377 = icmp ult ptr %scevgep334, %scevgep
  %bound1378 = icmp ult ptr %scevgep328, %scevgep333
  %found.conflict379 = and i1 %bound0377, %bound1378
  %bound0381 = icmp ult ptr %scevgep332, %scevgep329.a
  %bound1382 = icmp ult ptr %scevgep330, %scevgep331
  %found.conflict383 = and i1 %bound0381, %bound1382
  %bound0385 = icmp ult ptr %scevgep332, %scevgep
  %bound1386 = icmp ult ptr %scevgep328, %scevgep331
  %found.conflict387 = and i1 %bound0385, %bound1386
  %rdx.op = or <4 x i1> %i.cd, %i.cg
  %i.ch = bitcast <4 x i1> %rdx.op to i4
  %i.ci = icmp ne i4 %i.ch, 0
  %op.rdx = or i1 %i.ci, %found.conflict351
  %op.rdx397 = or i1 %found.conflict355, %found.conflict359
  %op.rdx398 = or i1 %found.conflict379, %found.conflict383
  %op.rdx399 = or i1 %found.conflict387, %stride.check
  %op.rdx400 = or i1 %op.rdx, %op.rdx397
  %op.rdx401 = or i1 %op.rdx398, %op.rdx399
  %op.rdx402 = or i1 %op.rdx400, %op.rdx401
  %n.vec = and i64 %i.ca, 9223372036854775806     ; 4 uses
  %i.cj = shl nuw i64 %n.vec, 1                   ; 2 uses
  %i.ck = or disjoint i64 %i.cj, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert389 = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat390 = shufflevector <2 x i64> %broadcast.splatinsert389, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert391 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat392 = shufflevector <2 x i64> %broadcast.splatinsert391, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.lr.ph, %bb.c
  %.0231 = phi ptr [ %1, %.preheader195.lr.ph ], [ %i.po, %bb.c ] ; 22 uses
  %.0166230 = phi ptr [ %2, %.preheader195.lr.ph ], [ %i.pp, %bb.c ] ; 12 uses
  %.0173229 = phi i64 [ 0, %.preheader195.lr.ph ], [ %i.pn, %bb.c ]
  br i1 %i.q, label %.lr.ph, label %.preheader194

.preheader194:                                    ; preds = %.lr.ph, %.preheader195
  %.0168.lcssa = phi i64 [ %i.g, %.preheader195 ], [ %i.dh, %.lr.ph ] ; 5 uses
  %.0167.lcssa = phi i64 [ 0, %.preheader195 ], [ %i.dg, %.lr.ph ] ; 4 uses
  %i.cl = icmp slt i64 %.0168.lcssa, %i.r
  br i1 %i.cl, label %.lr.ph203.preheader, label %.preheader193

.lr.ph203.preheader:                              ; preds = %.preheader194
  %i.cm = add i64 %.0167.lcssa, 1
  %i.cn = xor i64 %.0168.lcssa, -1
  %i.co = add i64 %i.r, %i.cn                     ; 2 uses
  %i.cp = lshr i64 %i.co, 2                       ; 2 uses
  %i.cq = add i64 %i.cm, %i.cp                    ; 3 uses
  %i.cr = add nuw nsw i64 %i.cp, 1
  %xtraiter = and i64 %i.cr, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol

.lr.ph203.prol:                                   ; preds = %.lr.ph203.preheader, %.lr.ph203.prol
  %.1202.prol = phi i64 [ %i.cz, %.lr.ph203.prol ], [ %.0167.lcssa, %.lr.ph203.preheader ] ; 2 uses
  %.1169201.prol = phi i64 [ %i.da, %.lr.ph203.prol ], [ %.0168.lcssa, %.lr.ph203.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph203.prol ], [ 0, %.lr.ph203.preheader ]
  %i.cs = xor i64 %.1169201.prol, -1
  %i.ct = add i64 %i.r, %i.cs
  %i.cu = mul nsw i64 %i.ct, %i.b
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !20
  %i.cx = fneg double %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202.prol
  store double %i.cx, ptr %i.cy, align 8, !tbaa !20
  %i.cz = add nuw nsw i64 %.1202.prol, 1          ; 2 uses
  %i.da = add nuw nsw i64 %.1169201.prol, 4       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol, !llvm.loop !45

.lr.ph203.prol.loopexit:                          ; preds = %.lr.ph203.prol, %.lr.ph203.preheader
  %.lcssa406.unr = phi i64 [ poison, %.lr.ph203.preheader ], [ %i.da, %.lr.ph203.prol ]
  %.1202.unr = phi i64 [ %.0167.lcssa, %.lr.ph203.preheader ], [ %i.cz, %.lr.ph203.prol ]
  %.1169201.unr = phi i64 [ %.0168.lcssa, %.lr.ph203.preheader ], [ %i.da, %.lr.ph203.prol ]
  %i.db = icmp ult i64 %i.co, 12
  br i1 %i.db, label %.preheader193, label %.lr.ph203

.lr.ph:                                           ; preds = %.preheader195, %.lr.ph
  %.0167199 = phi i64 [ %i.dg, %.lr.ph ], [ 0, %.preheader195 ] ; 2 uses
  %.0168198 = phi i64 [ %i.dh, %.lr.ph ], [ %i.g, %.preheader195 ] ; 2 uses
  %i.dc = mul nsw i64 %.0168198, %i.b
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !20
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0167199
  store double %i.de, ptr %i.df, align 8, !tbaa !20
  %i.dg = add nuw nsw i64 %.0167199, 1            ; 2 uses
  %i.dh = add nuw nsw i64 %.0168198, 4            ; 3 uses
  %i.di = icmp slt i64 %i.dh, %i.f
  br i1 %i.di, label %.lr.ph, label %.preheader194, !llvm.loop !46

.preheader193:                                    ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203, %.preheader194
  %.1169.lcssa = phi i64 [ %.0168.lcssa, %.preheader194 ], [ %.lcssa406.unr, %.lr.ph203.prol.loopexit ], [ %i.fc, %.lr.ph203 ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0167.lcssa, %.preheader194 ], [ %i.cq, %.lr.ph203 ], [ %i.cq, %.lr.ph203.prol.loopexit ] ; 4 uses
  %i.dj = icmp slt i64 %.1169.lcssa, %i.s
  br i1 %i.dj, label %.lr.ph209.preheader, label %.preheader

.lr.ph209.preheader:                              ; preds = %.preheader193
  %i.dk = add i64 %.1.lcssa, 1
  %i.dl = xor i64 %.1169.lcssa, -1
  %i.dm = add i64 %i.s, %i.dl                     ; 2 uses
  %i.dn = lshr i64 %i.dm, 2                       ; 2 uses
  %i.do = add i64 %i.dk, %i.dn                    ; 3 uses
  %i.dp = add nuw nsw i64 %i.dn, 1
  %xtraiter411 = and i64 %i.dp, 3                 ; 2 uses
  %lcmp.mod412.not = icmp eq i64 %xtraiter411, 0
  br i1 %lcmp.mod412.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol

.lr.ph209.prol:                                   ; preds = %.lr.ph209.preheader, %.lr.ph209.prol
  %.2208.prol = phi i64 [ %i.dw, %.lr.ph209.prol ], [ %.1.lcssa, %.lr.ph209.preheader ] ; 2 uses
  %.2170207.prol = phi i64 [ %i.dx, %.lr.ph209.prol ], [ %.1169.lcssa, %.lr.ph209.preheader ] ; 2 uses
  %prol.iter413 = phi i64 [ %prol.iter413.next, %.lr.ph209.prol ], [ 0, %.lr.ph209.preheader ]
  %i.dq = sub nsw i64 %.2170207.prol, %i.r
  %i.dr = mul nsw i64 %i.dq, %i.b
  %i.ds = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !20
  %i.du = fneg double %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208.prol
  store double %i.du, ptr %i.dv, align 8, !tbaa !20
  %i.dw = add nuw i64 %.2208.prol, 1              ; 2 uses
  %i.dx = add nuw nsw i64 %.2170207.prol, 4       ; 3 uses
  %prol.iter413.next = add i64 %prol.iter413, 1   ; 2 uses
  %prol.iter413.cmp.not = icmp eq i64 %prol.iter413.next, %xtraiter411
  br i1 %prol.iter413.cmp.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol, !llvm.loop !47

.lr.ph209.prol.loopexit:                          ; preds = %.lr.ph209.prol, %.lr.ph209.preheader
  %.lcssa407.unr = phi i64 [ poison, %.lr.ph209.preheader ], [ %i.dx, %.lr.ph209.prol ]
  %.2208.unr = phi i64 [ %.1.lcssa, %.lr.ph209.preheader ], [ %i.dw, %.lr.ph209.prol ]
  %.2170207.unr = phi i64 [ %.1169.lcssa, %.lr.ph209.preheader ], [ %i.dx, %.lr.ph209.prol ]
  %i.dy = icmp ult i64 %i.dm, 12
  br i1 %i.dy, label %.preheader, label %.lr.ph209

.lr.ph203:                                        ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203
  %.1202 = phi i64 [ %i.fb, %.lr.ph203 ], [ %.1202.unr, %.lr.ph203.prol.loopexit ] ; 5 uses
  %.1169201 = phi i64 [ %i.fc, %.lr.ph203 ], [ %.1169201.unr, %.lr.ph203.prol.loopexit ] ; 5 uses
  %i.dz = xor i64 %.1169201, -1
  %i.ea = add i64 %i.r, %i.dz
  %i.eb = mul nsw i64 %i.ea, %i.b
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !20
  %i.ee = fneg double %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  store double %i.ee, ptr %i.ef, align 8, !tbaa !20
  %reass.sub = sub i64 %i.r, %.1169201
  %i.eg = add i64 %reass.sub, -5
  %i.eh = mul nsw i64 %i.eg, %i.b
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !20
  %i.ek = fneg double %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store double %i.ek, ptr %i.em, align 8, !tbaa !20
  %reass.sub417 = sub i64 %i.r, %.1169201
  %i.en = add i64 %reass.sub417, -9
  %i.eo = mul nsw i64 %i.en, %i.b
  %i.ep = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !20
  %i.er = fneg double %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store double %i.er, ptr %i.et, align 8, !tbaa !20
  %reass.sub418 = sub i64 %i.r, %.1169201
  %i.eu = add i64 %reass.sub418, -13
  %i.ev = mul nsw i64 %i.eu, %i.b
  %i.ew = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !20
  %i.ey = fneg double %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store double %i.ey, ptr %i.fa, align 8, !tbaa !20
  %i.fb = add nuw nsw i64 %.1202, 4               ; 2 uses
  %i.fc = add nuw nsw i64 %.1169201, 16           ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fb, %i.cq
  br i1 %exitcond.not.3, label %.preheader193, label %.lr.ph203, !llvm.loop !48

.preheader:                                       ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209, %.preheader193
  %.2170.lcssa = phi i64 [ %.1169.lcssa, %.preheader193 ], [ %.lcssa407.unr, %.lr.ph209.prol.loopexit ], [ %i.gd, %.lr.ph209 ] ; 3 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader193 ], [ %i.do, %.lr.ph209 ], [ %i.do, %.lr.ph209.prol.loopexit ] ; 2 uses
  %i.fd = icmp slt i64 %.2170.lcssa, %i.t
  br i1 %i.fd, label %.lr.ph214, label %._crit_edge

.lr.ph209:                                        ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209
  %.2208 = phi i64 [ %i.gc, %.lr.ph209 ], [ %.2208.unr, %.lr.ph209.prol.loopexit ] ; 5 uses
  %.2170207 = phi i64 [ %i.gd, %.lr.ph209 ], [ %.2170207.unr, %.lr.ph209.prol.loopexit ] ; 5 uses
  %i.fe = sub nsw i64 %.2170207, %i.r
  %i.ff = mul nsw i64 %i.fe, %i.b
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !20
  %i.fi = fneg double %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  store double %i.fi, ptr %i.fj, align 8, !tbaa !20
  %.reass = add i64 %.2170207, %invariant.op
  %i.fk = mul nsw i64 %.reass, %i.b
  %i.fl = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !20
  %i.fn = fneg double %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store double %i.fn, ptr %i.fp, align 8, !tbaa !20
  %.reass432 = add i64 %.2170207, %invariant.op431
  %i.fq = mul nsw i64 %.reass432, %i.b
  %i.fr = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !20
  %i.ft = fneg double %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store double %i.ft, ptr %i.fv, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@apply_re11:bb.a
  store <2 x double> %reverse394, ptr %i.lp, align 8, !tbaa !20, !alias.scope !69, !noalias !70
  %i.lq = add nuw <2 x i64> %broadcast.splat392, %vec.ind
  %i.lr = and <2 x i64> %i.lq, splat (i64 2)
  %i.ls = icmp eq <2 x i64> %i.lr, zeroinitializer
  %i.lt = select <2 x i1> %i.ls, <2 x double> %strided.vec393, <2 x double> %i.lc
  %i.lu = add nuw nsw i64 %i.jt, %i.g             ; 2 uses
  %i.lv = add nuw nsw i64 %i.ju, %i.g
  %i.lw = insertelement <2 x i64> poison, i64 %i.lu, i64 0
  %i.lx = insertelement <2 x i64> %i.lw, i64 %i.lv, i64 1
  %i.ly = and <2 x i64> %i.lx, splat (i64 2)
  %i.lz = icmp eq <2 x i64> %i.ly, zeroinitializer
  %i.ma = select <2 x i1> %i.lz, <2 x double> %i.jk, <2 x double> %i.lk
  %i.mb = fadd <2 x double> %i.lt, %i.ma
  %i.mc = fmul <2 x double> %i.mb, splat (double f0x3FF6A09E667F3BCD)
  %i.md = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.lu
  store <2 x double> %i.mc, ptr %i.md, align 8, !tbaa !20, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge226, label %.lr.ph225.preheader403

.lr.ph225.preheader403:                           ; preds = %.lr.ph225.preheader, %middle.block
  %.ph = phi i64 [ %i.ck, %middle.block ], [ 1, %.lr.ph225.preheader ]
  %.ph404 = phi i64 [ %i.cj, %middle.block ], [ 0, %.lr.ph225.preheader ]
  %.5223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph225.preheader ]
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader403, %.lr.ph225
  %i.mf = phi i64 [ %i.om, %.lr.ph225 ], [ %.ph, %.lr.ph225.preheader403 ] ; 2 uses
  %i.mg = phi i64 [ %i.ol, %.lr.ph225 ], [ %.ph404, %.lr.ph225.preheader403 ]
  %.5223 = phi i64 [ %i.ms, %.lr.ph225 ], [ %.5223.ph, %.lr.ph225.preheader403 ] ; 7 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.mf
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !20 ; 3 uses
  %i.mj = add nuw nsw i64 %i.mg, 2                ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.mj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !20 ; 3 uses
  %i.mm = sub nsw i64 %i.f, %i.mj
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !20 ; 3 uses
  %i.mp = sub nsw i64 %i.f, %i.mf
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !20 ; 3 uses
  %i.ms = add nuw nsw i64 %.5223, 1               ; 6 uses
  %i.mt = and i64 %i.ms, 2
  %.not185 = icmp eq i64 %i.mt, 0
  %i.mu = fneg double %i.mi                       ; 2 uses
  %i.mv = select i1 %.not185, double %i.mi, double %i.mu
  %i.mw = and i64 %.5223, 2
  %.not186 = icmp eq i64 %i.mw, 0
  %i.mx = fneg double %i.mr                       ; 2 uses
  %i.my = select i1 %.not186, double %i.mr, double %i.mx
  %i.mz = fadd double %i.mv, %i.my
  %i.na = fmul double %i.mz, f0x3FF6A09E667F3BCD
  %i.nb = mul nsw i64 %.5223, %i.d
  %i.nc = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.nb
  store double %i.na, ptr %i.nc, align 8, !tbaa !20
  %i.nd = sub nsw i64 %i.f, %.5223
  %i.ne = sdiv i64 %i.nd, 2
  %i.nf = and i64 %i.ne, 1
  %.not187 = icmp eq i64 %i.nf, 0
  %i.ng = select i1 %.not187, double %i.mi, double %i.mu
  %i.nh = sub nsw i64 %i.f, %i.ms                 ; 2 uses
  %i.ni = sdiv i64 %i.nh, 2
  %i.nj = and i64 %i.ni, 1
  %.not188 = icmp eq i64 %i.nj, 0
  %i.nk = select i1 %.not188, double %i.mr, double %i.mx
  %i.nl = fsub double %i.ng, %i.nk
  %i.nm = fmul double %i.nl, f0x3FF6A09E667F3BCD
  %i.nn = mul nsw i64 %i.nh, %i.d
  %i.no = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.nn
  store double %i.nm, ptr %i.no, align 8, !tbaa !20
  %i.np = sub nuw nsw i64 %i.g, %.5223
  %i.nq = and i64 %i.np, 2
  %.not189 = icmp eq i64 %i.nq, 0
  %i.nr = fneg double %i.ml                       ; 2 uses
  %i.ns = select i1 %.not189, double %i.ml, double %i.nr
  %i.nt = sub nuw nsw i64 %i.g, %i.ms             ; 2 uses
  %i.nu = and i64 %i.nt, 2
  %.not190 = icmp eq i64 %i.nu, 0
  %i.nv = fneg double %i.mo                       ; 2 uses
  %i.nw = select i1 %.not190, double %i.mo, double %i.nv
  %i.nx = fsub double %i.ns, %i.nw
  %i.ny = fmul double %i.nx, f0x3FF6A09E667F3BCD
  %i.nz = mul nsw i64 %i.nt, %i.d
  %i.oa = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.nz
  store double %i.ny, ptr %i.oa, align 8, !tbaa !20
  %i.ob = add nuw i64 %i.w, %.5223
  %i.oc = and i64 %i.ob, 2
  %.not191 = icmp eq i64 %i.oc, 0
  %i.od = select i1 %.not191, double %i.ml, double %i.nr
  %i.oe = add nuw nsw i64 %i.ms, %i.g             ; 2 uses
  %i.of = and i64 %i.oe, 2
  %.not192 = icmp eq i64 %i.of, 0
  %i.og = select i1 %.not192, double %i.mo, double %i.nv
  %i.oh = fadd double %i.od, %i.og
  %i.oi = fmul double %i.oh, f0x3FF6A09E667F3BCD
  %i.oj = mul nsw i64 %i.oe, %i.d
  %i.ok = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.oj
  store double %i.oi, ptr %i.ok, align 8, !tbaa !20
  %i.ol = shl nuw nsw i64 %i.ms, 1                ; 2 uses
  %i.om = or disjoint i64 %i.ol, 1                ; 2 uses
  %exitcond244.not = icmp eq i64 %.5223, %i.af
  br i1 %exitcond244.not, label %._crit_edge226, label %.lr.ph225, !llvm.loop !61

._crit_edge226:                                   ; preds = %.lr.ph225, %middle.block, %._crit_edge222
  %.5.lcssa = phi i64 [ 0, %._crit_edge222 ], [ %i.ag, %middle.block ], [ %i.ag, %.lr.ph225 ] ; 3 uses
  %.lcssa197 = phi i64 [ 1, %._crit_edge222 ], [ %i.ck, %middle.block ], [ %i.om, %.lr.ph225 ]
  %i.on = icmp eq i64 %.lcssa197, %i.g
  br i1 %i.on, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge226
  %i.oo = load double, ptr %i.x, align 8, !tbaa !20 ; 3 uses
  %i.op = load double, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %i.oq = add nuw nsw i64 %.5.lcssa, 1            ; 2 uses
  %i.or = and i64 %i.oq, 2
  %.not = icmp eq i64 %i.or, 0                    ; 2 uses
  %i.os = fneg double %i.oo                       ; 2 uses
  %i.ot = select i1 %.not, double %i.oo, double %i.os
  %i.ou = and i64 %.5.lcssa, 2
  %.not182 = icmp eq i64 %i.ou, 0                 ; 2 uses
  %i.ov = fneg double %i.op                       ; 2 uses
  %i.ow = select i1 %.not182, double %i.op, double %i.ov
  %i.ox = fadd double %i.ot, %i.ow
  %i.oy = fmul double %i.ox, f0x3FF6A09E667F3BCD
  %i.oz = mul nsw i64 %.5.lcssa, %i.d
  %i.pa = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.oz
  store double %i.oy, ptr %i.pa, align 8, !tbaa !20
  %i.pb = select i1 %.not182, double %i.os, double %i.oo
  %i.pc = select i1 %.not, double %i.op, double %i.ov
  %i.pd = fadd double %i.pb, %i.pc
  %i.pe = fmul double %i.pd, f0x3FF6A09E667F3BCD
  %i.pf = sub nsw i64 %i.f, %i.oq
  %i.pg = mul nsw i64 %i.pf, %i.d
  %i.ph = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.pg
  store double %i.pe, ptr %i.ph, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge226
  %i.pi = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.pj = fneg double %i.pi
  %i.pk = select i1 %.not184, double %i.pi, double %i.pj
  %i.pl = fmul double %i.pk, f0x3FF6A09E667F3BCD
  %i.pm = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.ad
  store double %i.pl, ptr %i.pm, align 8, !tbaa !20
  %i.pn = add nuw nsw i64 %.0173229, 1            ; 2 uses
  %i.po = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.k
  %i.pp = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.m
  %exitcond245.not = icmp eq i64 %i.pn, %i.i
  br i1 %exitcond245.not, label %._crit_edge232, label %.preheader195, !llvm.loop !62

._crit_edge232:                                   ; preds = %bb.c, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.o) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_ro11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !23   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 38 uses
  %i.g = sdiv i64 %i.f, 2                         ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25   ; 3 uses
  %i.n = shl i64 %i.f, 3
  %i.o = tail call ptr @fftw_malloc_plain(i64 noundef %i.n) #4 ; 36 uses
  %i.p = icmp sgt i64 %i.i, 0
  br i1 %i.p, label %.preheader212.lr.ph, label %._crit_edge249

.preheader212.lr.ph:                              ; preds = %bb.a
  %i.q = icmp sgt i64 %i.f, 0
  %i.r = shl i64 %i.f, 1                          ; 2 uses
  %i.s = mul i64 %i.f, 3                          ; 8 uses
  %i.t = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = icmp sgt i64 %i.f, 3
  %i.w = xor i64 %i.g, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.g
  %i.y = sub nsw i64 %i.f, %i.g
  %i.z = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.y
  %i.aa = add nsw i64 %i.g, 1
  %i.ab = sdiv i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, %i.g
  %i.ad = and i64 %i.ac, 1
  %.not201 = icmp eq i64 %i.ad, 0
  %i.ae = mul nsw i64 %i.g, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 3)
  %i.af = add nsw i64 %smax, -2
  %i.ag = lshr i64 %i.af, 1                       ; 5 uses
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ai = shl i64 %i.ag, 4                        ; 2 uses
  %i.aj = getelementptr i8, ptr %i.o, i64 %i.ai
  %scevgep = getelementptr i8, ptr %i.aj, i64 24  ; 4 uses
  %scevgep345 = getelementptr i8, ptr %i.o, i64 8 ; 4 uses
  %3 = shl i64 %i.f, 3                            ; 4 uses
  %scevgep346.a = getelementptr i8, ptr %i.o, i64 %3 ; 4 uses
  %4 = add i64 %3, -16
  %5 = sub i64 %4, %i.ai
  %scevgep347 = getelementptr i8, ptr %i.o, i64 %5 ; 4 uses
  %i.ak = add nuw i64 %i.i, 2305843009213693951
  %i.al = mul i64 %i.m, %i.ak
  %i.am = shl i64 %i.al, 3                        ; 4 uses
  %i.an = shl i64 %i.g, 3                         ; 4 uses
  %i.ao = shl nuw i64 %i.ag, 3                    ; 4 uses
  %i.ap = getelementptr i8, ptr %2, i64 %i.am
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ao
  %scevgep348 = getelementptr i8, ptr %i.ar, i64 16 ; 5 uses
  %i.as = getelementptr i8, ptr %2, i64 %i.an
  %scevgep349 = getelementptr i8, ptr %i.as, i64 8 ; 5 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.am
  %scevgep350 = getelementptr i8, ptr %i.at, i64 %i.an ; 5 uses
  %i.au = add i64 %i.an, -8
  %i.av = sub i64 %i.au, %i.ao
  %scevgep351 = getelementptr i8, ptr %2, i64 %i.av ; 5 uses
  %i.aw = getelementptr i8, ptr %2, i64 %i.am
  %scevgep352 = getelementptr i8, ptr %i.aw, i64 %3 ; 4 uses
  %i.ax = add i64 %3, -8
  %i.ay = sub i64 %i.ax, %i.ao
  %scevgep353 = getelementptr i8, ptr %2, i64 %i.ay ; 4 uses
  %i.az = getelementptr i8, ptr %2, i64 %i.am
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ao
  %scevgep354 = getelementptr i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bb = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.bc = shufflevector <4 x ptr> %i.bb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bd = insertelement <4 x ptr> poison, ptr %scevgep352, i64 0 ; 2 uses
  %i.be = insertelement <4 x ptr> %i.bd, ptr %scevgep350, i64 1
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep348, i64 2
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep346.a, i64 3
  %i.bh = insertelement <4 x ptr> poison, ptr %scevgep353, i64 0 ; 2 uses
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %scevgep351, i64 1
  %i.bj = insertelement <4 x ptr> %i.bi, ptr %scevgep349, i64 2
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %scevgep347, i64 3
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep354, i64 0
  %i.bm = shufflevector <4 x ptr> %i.bl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = insertelement <4 x ptr> poison, ptr %scevgep347, i64 0
  %i.bo = insertelement <4 x ptr> %i.bn, ptr %scevgep353, i64 1
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %scevgep349, i64 2
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %scevgep351, i64 3
  %i.br = insertelement <4 x ptr> %i.bd, ptr %scevgep, i64 1
  %i.bs = insertelement <4 x ptr> %i.br, ptr %scevgep350, i64 2
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %scevgep346.a, i64 3
  %i.bu = insertelement <4 x ptr> %i.bh, ptr %scevgep345, i64 1
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep351, i64 2
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %scevgep347, i64 3
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep346.a, i64 0
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep352, i64 1
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep348, i64 2
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %scevgep350, i64 3
  %invariant.op = sub i64 4, %i.f
  %invariant.op451 = sub i64 8, %i.f
  %invariant.op453 = sub i64 12, %i.f
  %i.cb = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp sgt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.cc = icmp ult <4 x ptr> %i.bc, %i.bg
  %i.cd = icmp ult <4 x ptr> %i.bk, %i.bm
  %.mask = and i64 %i.m, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.ce = and <4 x i1> %i.cc, %i.cd
  %bound0366 = icmp ult ptr %2, %scevgep
  %bound1367 = icmp ult ptr %scevgep345, %scevgep354
  %found.conflict368 = and i1 %bound0366, %bound1367
  %bound0370 = icmp ult ptr %scevgep353, %scevgep350
  %bound1371 = icmp ult ptr %scevgep351, %scevgep352
  %found.conflict372 = and i1 %bound0370, %bound1371
  %bound0374 = icmp ult ptr %scevgep353, %scevgep348
  %bound1375 = icmp ult ptr %scevgep349, %scevgep352
  %found.conflict376 = and i1 %bound0374, %bound1375
  %i.cf = icmp ult <4 x ptr> %i.bw, %i.ca
  %i.cg = icmp ult <4 x ptr> %i.bq, %i.bt
  %i.ch = and <4 x i1> %i.cg, %i.cf
  %bound0394 = icmp ult ptr %scevgep351, %scevgep
  %bound1395 = icmp ult ptr %scevgep345, %scevgep350
  %found.conflict396 = and i1 %bound0394, %bound1395
  %bound0398 = icmp ult ptr %scevgep349, %scevgep346.a
  %bound1399 = icmp ult ptr %scevgep347, %scevgep348
  %found.conflict400 = and i1 %bound0398, %bound1399
  %bound0402 = icmp ult ptr %scevgep349, %scevgep
  %bound1403 = icmp ult ptr %scevgep345, %scevgep348
  %found.conflict404 = and i1 %bound0402, %bound1403
  %rdx.op = or <4 x i1> %i.ce, %i.ch
  %i.ci = bitcast <4 x i1> %rdx.op to i4
  %i.cj = icmp ne i4 %i.ci, 0
  %op.rdx = or i1 %i.cj, %found.conflict368
  %op.rdx414 = or i1 %found.conflict372, %found.conflict376
  %op.rdx415 = or i1 %found.conflict396, %found.conflict400
  %op.rdx416 = or i1 %found.conflict404, %stride.check
  %op.rdx417 = or i1 %op.rdx, %op.rdx414
  %op.rdx418 = or i1 %op.rdx415, %op.rdx416
  %op.rdx419 = or i1 %op.rdx417, %op.rdx418
  %n.vec = and i64 %i.cb, 9223372036854775806     ; 4 uses
  %i.ck = shl nuw i64 %n.vec, 1                   ; 2 uses
  %i.cl = or disjoint i64 %i.ck, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert406 = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat407 = shufflevector <2 x i64> %broadcast.splatinsert406, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert408 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat409 = shufflevector <2 x i64> %broadcast.splatinsert408, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br label %.preheader212

.preheader212:                                    ; preds = %.preheader212.lr.ph, %bb.c
  %.0248 = phi ptr [ %1, %.preheader212.lr.ph ], [ %i.qe, %bb.c ] ; 18 uses
  %.0182247 = phi ptr [ %2, %.preheader212.lr.ph ], [ %i.qf, %bb.c ] ; 12 uses
  %.0184246 = phi i64 [ 0, %.preheader212.lr.ph ], [ %i.qd, %bb.c ]
  br i1 %i.q, label %.lr.ph, label %.preheader211

.preheader211:                                    ; preds = %.lr.ph, %.preheader212
  %.0185.lcssa = phi i64 [ %i.g, %.preheader212 ], [ %i.dj, %.lr.ph ] ; 5 uses
  %.0183.lcssa = phi i64 [ 0, %.preheader212 ], [ %i.di, %.lr.ph ] ; 4 uses
  %i.cm = icmp slt i64 %.0185.lcssa, %i.r
  br i1 %i.cm, label %.lr.ph220.preheader, label %.preheader210

.lr.ph220.preheader:                              ; preds = %.preheader211
  %i.cn = add i64 %.0183.lcssa, 1
  %i.co = xor i64 %.0185.lcssa, -1
  %i.cp = add i64 %i.r, %i.co                     ; 2 uses
  %i.cq = lshr i64 %i.cp, 2                       ; 2 uses
  %i.cr = add i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = add nuw nsw i64 %i.cq, 1
  %xtraiter = and i64 %i.cs, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol

.lr.ph220.prol:                                   ; preds = %.lr.ph220.preheader, %.lr.ph220.prol
  %.1219.prol = phi i64 [ %i.cz, %.lr.ph220.prol ], [ %.0183.lcssa, %.lr.ph220.preheader ] ; 2 uses
  %.1186218.prol = phi i64 [ %i.da, %.lr.ph220.prol ], [ %.0185.lcssa, %.lr.ph220.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph220.prol ], [ 0, %.lr.ph220.preheader ]
  %i.ct = sub nsw i64 %.1186218.prol, %i.f
  %i.cu = mul nsw i64 %i.ct, %i.b
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !20
  %i.cx = fneg double %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219.prol
  store double %i.cx, ptr %i.cy, align 8, !tbaa !20
  %i.cz = add nuw nsw i64 %.1219.prol, 1          ; 2 uses
  %i.da = add nuw nsw i64 %.1186218.prol, 4       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol, !llvm.loop !73

.lr.ph220.prol.loopexit:                          ; preds = %.lr.ph220.prol, %.lr.ph220.preheader
  %.lcssa423.unr = phi i64 [ poison, %.lr.ph220.preheader ], [ %i.da, %.lr.ph220.prol ]
  %.1219.unr = phi i64 [ %.0183.lcssa, %.lr.ph220.preheader ], [ %i.cz, %.lr.ph220.prol ]
  %.1186218.unr = phi i64 [ %.0185.lcssa, %.lr.ph220.preheader ], [ %i.da, %.lr.ph220.prol ]
  %i.db = icmp ult i64 %i.cp, 12
  br i1 %i.db, label %.preheader210, label %.lr.ph220

.lr.ph:                                           ; preds = %.preheader212, %.lr.ph
  %.0183216 = phi i64 [ %i.di, %.lr.ph ], [ 0, %.preheader212 ] ; 2 uses
  %.0185215 = phi i64 [ %i.dj, %.lr.ph ], [ %i.g, %.preheader212 ] ; 2 uses
  %i.dc = xor i64 %.0185215, -1
  %i.dd = add nsw i64 %i.f, %i.dc
  %i.de = mul nsw i64 %i.dd, %i.b
  %i.df = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0183216
  store double %i.dg, ptr %i.dh, align 8, !tbaa !20
  %i.di = add nuw nsw i64 %.0183216, 1            ; 2 uses
  %i.dj = add nuw nsw i64 %.0185215, 4            ; 3 uses
  %i.dk = icmp slt i64 %i.dj, %i.f
  br i1 %i.dk, label %.lr.ph, label %.preheader211, !llvm.loop !74

.preheader210:                                    ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220, %.preheader211
  %.1186.lcssa = phi i64 [ %.0185.lcssa, %.preheader211 ], [ %.lcssa423.unr, %.lr.ph220.prol.loopexit ], [ %i.fb, %.lr.ph220 ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0183.lcssa, %.preheader211 ], [ %i.cr, %.lr.ph220 ], [ %i.cr, %.lr.ph220.prol.loopexit ] ; 4 uses
  %i.dl = icmp slt i64 %.1186.lcssa, %i.s
  br i1 %i.dl, label %.lr.ph225.preheader, label %.preheader

.lr.ph225.preheader:                              ; preds = %.preheader210
  %i.dm = add i64 %.1.lcssa, 1
  %i.dn = xor i64 %.1186.lcssa, -1
  %i.do = add i64 %i.s, %i.dn                     ; 2 uses
  %i.dp = lshr i64 %i.do, 2                       ; 2 uses
  %i.dq = add i64 %i.dm, %i.dp                    ; 3 uses
  %i.dr = add nuw nsw i64 %i.dp, 1
  %xtraiter428 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph225.prol.loopexit, label %.lr.ph225.prol

.lr.ph225.prol:                                   ; preds = %.lr.ph225.preheader, %.lr.ph225.prol
  %.2224.prol = phi i64 [ %i.dz, %.lr.ph225.prol ], [ %.1.lcssa, %.lr.ph225.preheader ] ; 2 uses
  %.2187223.prol = phi i64 [ %i.ea, %.lr.ph225.prol ], [ %.1186.lcssa, %.lr.ph225.preheader ] ; 2 uses
  %prol.iter430 = phi i64 [ %prol.iter430.next, %.lr.ph225.prol ], [ 0, %.lr.ph225.preheader ]
  %i.ds = xor i64 %.2187223.prol, -1
  %i.dt = add i64 %i.s, %i.ds
  %i.du = mul nsw i64 %i.dt, %i.b
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !20
  %i.dx = fneg double %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224.prol
  store double %i.dx, ptr %i.dy, align 8, !tbaa !20
  %i.dz = add nuw i64 %.2224.prol, 1              ; 2 uses
  %i.ea = add nuw nsw i64 %.2187223.prol, 4       ; 3 uses
  %prol.iter430.next = add i64 %prol.iter430, 1   ; 2 uses
  %prol.iter430.cmp.not = icmp eq i64 %prol.iter430.next, %xtraiter428
  br i1 %prol.iter430.cmp.not, label %.lr.ph225.prol.loopexit, label %.lr.ph225.prol, !llvm.loop !75

.lr.ph225.prol.loopexit:                          ; preds = %.lr.ph225.prol, %.lr.ph225.preheader
  %.lcssa424.unr = phi i64 [ poison, %.lr.ph225.preheader ], [ %i.ea, %.lr.ph225.prol ]
  %.2224.unr = phi i64 [ %.1.lcssa, %.lr.ph225.preheader ], [ %i.dz, %.lr.ph225.prol ]
  %.2187223.unr = phi i64 [ %.1186.lcssa, %.lr.ph225.preheader ], [ %i.ea, %.lr.ph225.prol ]
  %i.eb = icmp ult i64 %i.do, 12
  br i1 %i.eb, label %.preheader, label %.lr.ph225

.lr.ph220:                                        ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220
  %.1219 = phi i64 [ %i.fa, %.lr.ph220 ], [ %.1219.unr, %.lr.ph220.prol.loopexit ] ; 5 uses
  %.1186218 = phi i64 [ %i.fb, %.lr.ph220 ], [ %.1186218.unr, %.lr.ph220.prol.loopexit ] ; 5 uses
  %i.ec = sub nsw i64 %.1186218, %i.f
  %i.ed = mul nsw i64 %i.ec, %i.b
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !20
  %i.eg = fneg double %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  store double %i.eg, ptr %i.eh, align 8, !tbaa !20
  %.reass = add i64 %.1186218, %invariant.op
  %i.ei = mul nsw i64 %.reass, %i.b
  %i.ej = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !20
  %i.el = fneg double %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store double %i.el, ptr %i.en, align 8, !tbaa !20
  %.reass452 = add i64 %.1186218, %invariant.op451
  %i.eo = mul nsw i64 %.reass452, %i.b
  %i.ep = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.eo
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !20
  %i.er = fneg double %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store double %i.er, ptr %i.et, align 8, !tbaa !20
  %.reass454 = add i64 %.1186218, %invariant.op453
  %i.eu = mul nsw i64 %.reass454, %i.b
  %i.ev = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !20
  %i.ex = fneg double %i.ew
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  store double %i.ex, ptr %i.ez, align 8, !tbaa !20
  %i.fa = add nuw nsw i64 %.1219, 4               ; 2 uses
  %i.fb = add nuw nsw i64 %.1186218, 16           ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fa, %i.cr
  br i1 %exitcond.not.3, label %.preheader210, label %.lr.ph220, !llvm.loop !76

.preheader:                                       ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225, %.preheader210
  %.2187.lcssa = phi i64 [ %.1186.lcssa, %.preheader210 ], [ %.lcssa424.unr, %.lr.ph225.prol.loopexit ], [ %i.gg, %.lr.ph225 ] ; 3 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader210 ], [ %i.dq, %.lr.ph225 ], [ %i.dq, %.lr.ph225.prol.loopexit ] ; 2 uses
  %i.fc = icmp slt i64 %.2187.lcssa, %i.t
  br i1 %i.fc, label %.lr.ph231, label %._crit_edge

.lr.ph225:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225
  %.2224 = phi i64 [ %i.gf, %.lr.ph225 ], [ %.2224.unr, %.lr.ph225.prol.loopexit ] ; 5 uses
  %.2187223 = phi i64 [ %i.gg, %.lr.ph225 ], [ %.2187223.unr, %.lr.ph225.prol.loopexit ] ; 5 uses
  %i.fd = xor i64 %.2187223, -1
  %i.fe = add i64 %i.s, %i.fd
  %i.ff = mul nsw i64 %i.fe, %i.b
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !20
  %i.fi = fneg double %i.fh
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  store double %i.fi, ptr %i.fj, align 8, !tbaa !20
  %reass.sub = sub i64 %i.s, %.2187223
  %i.fk = add i64 %reass.sub, -5
  %i.fl = mul nsw i64 %i.fk, %i.b
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !20
  %i.fo = fneg double %i.fn
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store double %i.fo, ptr %i.fq, align 8, !tbaa !20
  %reass.sub434 = sub i64 %i.s, %.2187223
  %i.fr = add i64 %reass.sub434, -9
  %i.fs = mul nsw i64 %i.fr, %i.b
  %i.ft = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !20
  %i.fv = fneg double %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
end_hunk_1
begin_hunk_2_@apply_ro11:bb.a
  %i.nj = sdiv i64 %i.ni, 2
  %i.nk = add nsw i64 %i.nj, %.5240
  %i.nl = and i64 %i.nk, 1
  %.not205 = icmp eq i64 %i.nl, 0
  %i.nm = select i1 %.not205, double %i.mn, double %i.mx
  %i.nn = fsub double %i.nh, %i.nm
  %i.no = fmul double %i.nn, f0x3FF6A09E667F3BCD
  %i.np = mul nsw i64 %i.ni, %i.d
  %i.nq = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.np
  store double %i.no, ptr %i.nq, align 8, !tbaa !20
  %i.nr = sub nuw nsw i64 %i.g, %i.mo             ; 6 uses
  %i.ns = sub nuw nsw i64 %i.g, %.5240
  %i.nt = lshr i64 %i.ns, 1
  %i.nu = add nuw nsw i64 %i.nt, %i.nr
  %i.nv = and i64 %i.nu, 1
  %.not206 = icmp eq i64 %i.nv, 0
  %i.nw = fneg double %i.mh                       ; 2 uses
  %i.nx = select i1 %.not206, double %i.mh, double %i.nw
  %i.ny = lshr i64 %i.nr, 1
  %i.nz = add nuw nsw i64 %i.ny, %i.nr
  %i.oa = and i64 %i.nz, 1
  %.not207 = icmp eq i64 %i.oa, 0
  %i.ob = fneg double %i.mk                       ; 2 uses
  %i.oc = select i1 %.not207, double %i.mk, double %i.ob
  %i.od = fsub double %i.nx, %i.oc
  %i.oe = fmul double %i.od, f0x3FF6A09E667F3BCD
  %i.of = mul nsw i64 %i.nr, %i.d
  %i.og = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.of
  store double %i.oe, ptr %i.og, align 8, !tbaa !20
  %i.oh = add nuw i64 %i.w, %.5240
  %i.oi = lshr i64 %i.oh, 1
  %i.oj = add nuw i64 %i.oi, %i.nr
  %i.ok = and i64 %i.oj, 1
  %.not208 = icmp eq i64 %i.ok, 0
  %i.ol = select i1 %.not208, double %i.mh, double %i.nw
  %i.om = add nuw nsw i64 %i.mo, %i.g             ; 2 uses
  %i.on = lshr i64 %i.om, 1
  %i.oo = add nuw nsw i64 %i.on, %i.nr
  %i.op = and i64 %i.oo, 1
  %.not209 = icmp eq i64 %i.op, 0
  %i.oq = select i1 %.not209, double %i.mk, double %i.ob
  %i.or = fadd double %i.ol, %i.oq
  %i.os = fmul double %i.or, f0x3FF6A09E667F3BCD
  %i.ot = mul nsw i64 %i.om, %i.d
  %i.ou = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.ot
  store double %i.os, ptr %i.ou, align 8, !tbaa !20
  %i.ov = shl nuw nsw i64 %i.mo, 1                ; 2 uses
  %i.ow = or disjoint i64 %i.ov, 1                ; 2 uses
  %exitcond261.not = icmp eq i64 %.5240, %i.ag
  br i1 %exitcond261.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !89

._crit_edge243:                                   ; preds = %.lr.ph242, %middle.block, %._crit_edge239
  %.5.lcssa = phi i64 [ 0, %._crit_edge239 ], [ %i.ah, %middle.block ], [ %i.ah, %.lr.ph242 ] ; 6 uses
  %.lcssa214 = phi i64 [ 1, %._crit_edge239 ], [ %i.cl, %middle.block ], [ %i.ow, %.lr.ph242 ]
  %i.ox = icmp eq i64 %.lcssa214, %i.g
  br i1 %i.ox, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge243
  %i.oy = load double, ptr %i.x, align 8, !tbaa !20 ; 3 uses
  %i.oz = load double, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %i.pa = add nuw nsw i64 %.5.lcssa, 1            ; 2 uses
  %i.pb = lshr i64 %i.pa, 1
  %i.pc = add nuw nsw i64 %i.pb, %.5.lcssa
  %i.pd = and i64 %i.pc, 1
  %.not = icmp eq i64 %i.pd, 0                    ; 2 uses
  %i.pe = fneg double %i.oy                       ; 2 uses
  %i.pf = select i1 %.not, double %i.oy, double %i.pe
  %i.pg = lshr i64 %.5.lcssa, 1                   ; 2 uses
  %i.ph = add nuw nsw i64 %i.pg, %.5.lcssa
  %i.pi = and i64 %i.ph, 1
  %.not199 = icmp eq i64 %i.pi, 0
  %i.pj = fneg double %i.oz                       ; 2 uses
  %i.pk = select i1 %.not199, double %i.oz, double %i.pj
  %i.pl = fadd double %i.pf, %i.pk
  %i.pm = fmul double %i.pl, f0x3FF6A09E667F3BCD
  %i.pn = mul nsw i64 %.5.lcssa, %i.d
  %i.po = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.pn
  store double %i.pm, ptr %i.po, align 8, !tbaa !20
  %i.pp = sub nsw i64 %i.pg, %.5.lcssa
  %i.pq = and i64 %i.pp, 1
  %.not200.not = icmp eq i64 %i.pq, 0
  %i.pr = select i1 %.not200.not, double %i.pe, double %i.oy
  %i.ps = select i1 %.not, double %i.oz, double %i.pj
  %i.pt = fadd double %i.pr, %i.ps
  %i.pu = fmul double %i.pt, f0x3FF6A09E667F3BCD
  %i.pv = sub nsw i64 %i.f, %i.pa
  %i.pw = mul nsw i64 %i.pv, %i.d
  %i.px = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.pw
  store double %i.pu, ptr %i.px, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge243
  %i.py = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.pz = fneg double %i.py
  %i.qa = select i1 %.not201, double %i.py, double %i.pz
  %i.qb = fmul double %i.qa, f0x3FF6A09E667F3BCD
  %i.qc = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.ae
  store double %i.qb, ptr %i.qc, align 8, !tbaa !20
  %i.qd = add nuw nsw i64 %.0184246, 1            ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.k
  %i.qf = getelementptr inbounds [8 x i8], ptr %.0182247, i64 %i.m
  %exitcond262.not = icmp eq i64 %i.qd, %i.i
  br i1 %exitcond262.not, label %._crit_edge249, label %.preheader212, !llvm.loop !90

._crit_edge249:                                   ; preds = %bb.c, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.o) #4
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_zero(ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_rdft_kind_str(i32 noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!10 = !{!"long", !5, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!13 = !{!"plan_s", !9, i64 0, !12, i64 8, !11, i64 40, !6, i64 48, !6, i64 52}
!14 = !{!"", !13, i64 0, !9, i64 56}
!15 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!16 = !{!"", !14, i64 0, !15, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !6, i64 120}
!17 = !{!16, !10, i64 88}
!18 = !{!16, !15, i64 64}
!19 = !{!16, !6, i64 120}
!20 = !{!11, !11, i64 0}
!21 = !{!16, !10, i64 96}
!22 = !{!16, !10, i64 72}
!23 = !{!16, !10, i64 80}
!24 = !{!16, !10, i64 104}
!25 = !{!16, !10, i64 112}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!14, !9, i64 56}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"problem_s", !9, i64 0}
!32 = !{!"p1 double", !9, i64 0}
!33 = !{!"", !31, i64 0, !9, i64 8, !9, i64 16, !32, i64 24, !32, i64 32, !5, i64 40}
!34 = !{!33, !9, i64 8}
!35 = !{!"", !6, i64 0, !5, i64 8}
!36 = !{!35, !6, i64 0}
!37 = !{!33, !9, i64 16}
!38 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!39 = !{!38, !10, i64 0}
!40 = !{!6, !6, i64 0}
!41 = !{!10, !10, i64 0}
!42 = !{!12, !11, i64 24}
!43 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!44 = !{!43, !9, i64 0}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !27}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !27}
!49 = distinct !{!49, !27}
!50 = distinct !{!50, !27}
!51 = distinct !{!51, !26}
!52 = distinct !{!52, !27}
!53 = distinct !{!53, i1 false, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !53}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !53}
!60 = distinct !{!60, !27, !29, !30}
!61 = distinct !{!61, !27, !29}
!62 = distinct !{!62, !27}
!63 = !{!54}
!64 = !{!55}
!65 = !{!56}
!66 = !{!59, !58, !57, !55, !54}
!67 = !{!59}
!68 = !{!58, !57, !55, !54}
!69 = !{!58}
!70 = !{!57, !55, !54}
!71 = !{!57}
!72 = !{!55, !54}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !27}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !27}
!77 = distinct !{!77, !27}
!78 = distinct !{!78, !27}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, i1 false, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !81}
!85 = distinct !{!85, !81}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !27, !29, !30}
!89 = distinct !{!89, !27, !29}
!90 = distinct !{!90, !27}
!91 = !{!82}
!92 = !{!83}
!93 = !{!84}
!94 = !{!87, !86, !85, !83, !82}
!95 = !{!87}
!96 = !{!86, !85, !83, !82}
!97 = !{!86}
!98 = !{!85, !83, !82}
!99 = !{!85}
!100 = !{!83, !82}
end_hunk_2
