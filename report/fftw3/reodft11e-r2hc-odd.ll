Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft11e-r2hc-odd?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mkplan:bb.a
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
  %i.aq = uitofp <2 x i64> %i.ap to <2 x double>
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
  %i.ah = add nuw i64 %i.i, 2305843009213693951
  %i.ai = mul i64 %i.m, %i.ah
  %i.aj = shl i64 %i.ai, 3                        ; 3 uses
  %i.ak = shl nuw i64 %i.af, 3                    ; 4 uses
  %i.al = getelementptr i8, ptr %2, i64 %i.aj
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %scevgep = getelementptr i8, ptr %i.am, i64 8   ; 2 uses
  %i.an = shl i64 %i.f, 3                         ; 4 uses
  %i.ao = add i64 %i.an, -8
  %i.ap = sub i64 %i.ao, %i.ak
  %scevgep267 = getelementptr i8, ptr %2, i64 %i.ap ; 4 uses
  %i.aq = getelementptr i8, ptr %2, i64 %i.aj
  %scevgep268 = getelementptr i8, ptr %i.aq, i64 %i.an ; 4 uses
  %i.ar = shl i64 %i.g, 3                         ; 3 uses
  %i.as = add i64 %i.ar, -8
  %i.at = sub i64 %i.as, %i.ak
  %scevgep269 = getelementptr i8, ptr %2, i64 %i.at ; 5 uses
  %i.au = add i64 %i.aj, %i.ar                    ; 2 uses
  %scevgep270 = getelementptr i8, ptr %2, i64 %i.au ; 5 uses
  %i.av = getelementptr i8, ptr %2, i64 %i.ar
  %scevgep271 = getelementptr i8, ptr %i.av, i64 8 ; 5 uses
  %i.aw = getelementptr i8, ptr %2, i64 %i.au
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.ak
  %scevgep272 = getelementptr i8, ptr %i.ax, i64 16 ; 5 uses
  %i.ay = add i64 %i.an, -16
  %i.az = shl i64 %i.af, 4                        ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az
  %scevgep273 = getelementptr i8, ptr %i.o, i64 %i.ba ; 4 uses
  %scevgep274 = getelementptr i8, ptr %i.o, i64 %i.an ; 4 uses
  %scevgep275 = getelementptr i8, ptr %i.o, i64 8 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.o, i64 %i.az
  %scevgep276 = getelementptr i8, ptr %i.bb, i64 24 ; 4 uses
  %i.bc = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.bd = shufflevector <4 x ptr> %i.bc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.be = insertelement <4 x ptr> poison, ptr %scevgep268, i64 0 ; 2 uses
  %i.bf = insertelement <4 x ptr> %i.be, ptr %scevgep270, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep272, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep274, i64 3
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep267, i64 0 ; 2 uses
  %i.bj = insertelement <4 x ptr> %i.bi, ptr %scevgep269, i64 1
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %scevgep271, i64 2
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %scevgep273, i64 3
  %i.bm = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bo = insertelement <4 x ptr> poison, ptr %scevgep273, i64 0
  %i.bp = insertelement <4 x ptr> %i.bo, ptr %scevgep267, i64 1
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %scevgep271, i64 2
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep269, i64 3
  %i.bs = insertelement <4 x ptr> %i.be, ptr %scevgep276, i64 1
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %scevgep270, i64 2
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep274, i64 3
  %i.bv = insertelement <4 x ptr> %i.bi, ptr %scevgep275, i64 1
  %i.bw = insertelement <4 x ptr> %i.bv, ptr %scevgep269, i64 2
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep273, i64 3
  %i.by = insertelement <4 x ptr> poison, ptr %scevgep274, i64 0
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep268, i64 1
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %scevgep272, i64 2
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %scevgep270, i64 3
  %invariant.op = sub i64 4, %i.r
  %invariant.op390 = sub i64 8, %i.r
  %invariant.op392 = sub i64 12, %i.r
  %i.cc = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp sgt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.cd = icmp ult <4 x ptr> %i.bd, %i.bh
  %i.ce = icmp ult <4 x ptr> %i.bl, %i.bn
  %.mask = and i64 %i.m, 1152921504606846976
  %stride.check281 = icmp ne i64 %.mask, 0
  %i.cf = and <4 x i1> %i.cd, %i.ce
  %bound0294 = icmp ult ptr %2, %scevgep276
  %bound1295 = icmp ult ptr %scevgep275, %scevgep
  %found.conflict296 = and i1 %bound0294, %bound1295
  %bound0299 = icmp ult ptr %scevgep267, %scevgep270
  %bound1300 = icmp ult ptr %scevgep269, %scevgep268
  %found.conflict301 = and i1 %bound0299, %bound1300
  %bound0305 = icmp ult ptr %scevgep267, %scevgep272
  %bound1306 = icmp ult ptr %scevgep271, %scevgep268
  %found.conflict307 = and i1 %bound0305, %bound1306
  %i.cg = icmp ult <4 x ptr> %i.bx, %i.cb
  %i.ch = icmp ult <4 x ptr> %i.br, %i.bu
  %i.ci = and <4 x i1> %i.ch, %i.cg
  %bound0332 = icmp ult ptr %scevgep269, %scevgep276
  %bound1333 = icmp ult ptr %scevgep275, %scevgep270
  %found.conflict334 = and i1 %bound0332, %bound1333
  %bound0337 = icmp ult ptr %scevgep271, %scevgep274
  %bound1338 = icmp ult ptr %scevgep273, %scevgep272
  %found.conflict339 = and i1 %bound0337, %bound1338
  %bound0342 = icmp ult ptr %scevgep271, %scevgep276
  %bound1343 = icmp ult ptr %scevgep275, %scevgep272
  %found.conflict344 = and i1 %bound0342, %bound1343
  %rdx.op = or <4 x i1> %i.cf, %i.ci
  %i.cj = bitcast <4 x i1> %rdx.op to i4
  %i.ck = icmp ne i4 %i.cj, 0
  %op.rdx = or i1 %i.ck, %found.conflict296
  %op.rdx355 = or i1 %found.conflict301, %found.conflict307
  %op.rdx356 = or i1 %found.conflict334, %found.conflict339
  %op.rdx357 = or i1 %found.conflict344, %stride.check281
  %op.rdx358 = or i1 %op.rdx, %op.rdx355
  %op.rdx359 = or i1 %op.rdx356, %op.rdx357
  %op.rdx360 = or i1 %op.rdx358, %op.rdx359
  %n.vec = and i64 %i.cc, 9223372036854775806     ; 4 uses
  %i.cl = shl nuw i64 %n.vec, 1                   ; 2 uses
  %i.cm = or disjoint i64 %i.cl, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert347 = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat348 = shufflevector <2 x i64> %broadcast.splatinsert347, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert349 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat350 = shufflevector <2 x i64> %broadcast.splatinsert349, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br label %.preheader195

.preheader195:                                    ; preds = %.preheader195.lr.ph, %bb.c
  %.0231 = phi ptr [ %1, %.preheader195.lr.ph ], [ %i.pq, %bb.c ] ; 22 uses
  %.0166230 = phi ptr [ %2, %.preheader195.lr.ph ], [ %i.pr, %bb.c ] ; 12 uses
  %.0173229 = phi i64 [ 0, %.preheader195.lr.ph ], [ %i.pp, %bb.c ]
  br i1 %i.q, label %.lr.ph, label %.preheader194

.preheader194:                                    ; preds = %.lr.ph, %.preheader195
  %.0168.lcssa = phi i64 [ %i.g, %.preheader195 ], [ %i.dj, %.lr.ph ] ; 5 uses
  %.0167.lcssa = phi i64 [ 0, %.preheader195 ], [ %i.di, %.lr.ph ] ; 4 uses
  %i.cn = icmp slt i64 %.0168.lcssa, %i.r
  br i1 %i.cn, label %.lr.ph203.preheader, label %.preheader193

.lr.ph203.preheader:                              ; preds = %.preheader194
  %i.co = add i64 %.0167.lcssa, 1
  %i.cp = xor i64 %.0168.lcssa, -1
  %i.cq = add i64 %i.r, %i.cp                     ; 2 uses
  %i.cr = lshr i64 %i.cq, 2                       ; 2 uses
  %i.cs = add i64 %i.co, %i.cr                    ; 3 uses
  %i.ct = add nuw nsw i64 %i.cr, 1
  %xtraiter = and i64 %i.ct, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol

.lr.ph203.prol:                                   ; preds = %.lr.ph203.preheader, %.lr.ph203.prol
  %.1202.prol = phi i64 [ %i.db, %.lr.ph203.prol ], [ %.0167.lcssa, %.lr.ph203.preheader ] ; 2 uses
  %.1169201.prol = phi i64 [ %i.dc, %.lr.ph203.prol ], [ %.0168.lcssa, %.lr.ph203.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph203.prol ], [ 0, %.lr.ph203.preheader ]
  %i.cu = xor i64 %.1169201.prol, -1
  %i.cv = add i64 %i.r, %i.cu
  %i.cw = mul nsw i64 %i.cv, %i.b
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !20
  %i.cz = fneg double %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202.prol
  store double %i.cz, ptr %i.da, align 8, !tbaa !20
  %i.db = add nuw nsw i64 %.1202.prol, 1          ; 2 uses
  %i.dc = add nuw nsw i64 %.1169201.prol, 4       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph203.prol.loopexit, label %.lr.ph203.prol, !llvm.loop !45

.lr.ph203.prol.loopexit:                          ; preds = %.lr.ph203.prol, %.lr.ph203.preheader
  %.lcssa365.unr = phi i64 [ poison, %.lr.ph203.preheader ], [ %i.dc, %.lr.ph203.prol ]
  %.1202.unr = phi i64 [ %.0167.lcssa, %.lr.ph203.preheader ], [ %i.db, %.lr.ph203.prol ]
  %.1169201.unr = phi i64 [ %.0168.lcssa, %.lr.ph203.preheader ], [ %i.dc, %.lr.ph203.prol ]
  %i.dd = icmp ult i64 %i.cq, 12
  br i1 %i.dd, label %.preheader193, label %.lr.ph203

.lr.ph:                                           ; preds = %.preheader195, %.lr.ph
  %.0167199 = phi i64 [ %i.di, %.lr.ph ], [ 0, %.preheader195 ] ; 2 uses
  %.0168198 = phi i64 [ %i.dj, %.lr.ph ], [ %i.g, %.preheader195 ] ; 2 uses
  %i.de = mul nsw i64 %.0168198, %i.b
  %i.df = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !20
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0167199
  store double %i.dg, ptr %i.dh, align 8, !tbaa !20
  %i.di = add nuw nsw i64 %.0167199, 1            ; 2 uses
  %i.dj = add nuw nsw i64 %.0168198, 4            ; 3 uses
  %i.dk = icmp slt i64 %i.dj, %i.f
  br i1 %i.dk, label %.lr.ph, label %.preheader194, !llvm.loop !46

.preheader193:                                    ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203, %.preheader194
  %.1169.lcssa = phi i64 [ %.0168.lcssa, %.preheader194 ], [ %.lcssa365.unr, %.lr.ph203.prol.loopexit ], [ %i.fe, %.lr.ph203 ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0167.lcssa, %.preheader194 ], [ %i.cs, %.lr.ph203 ], [ %i.cs, %.lr.ph203.prol.loopexit ] ; 4 uses
  %i.dl = icmp slt i64 %.1169.lcssa, %i.s
  br i1 %i.dl, label %.lr.ph209.preheader, label %.preheader

.lr.ph209.preheader:                              ; preds = %.preheader193
  %i.dm = add i64 %.1.lcssa, 1
  %i.dn = xor i64 %.1169.lcssa, -1
  %i.do = add i64 %i.s, %i.dn                     ; 2 uses
  %i.dp = lshr i64 %i.do, 2                       ; 2 uses
  %i.dq = add i64 %i.dm, %i.dp                    ; 3 uses
  %i.dr = add nuw nsw i64 %i.dp, 1
  %xtraiter370 = and i64 %i.dr, 3                 ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol

.lr.ph209.prol:                                   ; preds = %.lr.ph209.preheader, %.lr.ph209.prol
  %.2208.prol = phi i64 [ %i.dy, %.lr.ph209.prol ], [ %.1.lcssa, %.lr.ph209.preheader ] ; 2 uses
  %.2170207.prol = phi i64 [ %i.dz, %.lr.ph209.prol ], [ %.1169.lcssa, %.lr.ph209.preheader ] ; 2 uses
  %prol.iter372 = phi i64 [ %prol.iter372.next, %.lr.ph209.prol ], [ 0, %.lr.ph209.preheader ]
  %i.ds = sub nsw i64 %.2170207.prol, %i.r
  %i.dt = mul nsw i64 %i.ds, %i.b
  %i.du = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !20
  %i.dw = fneg double %i.dv
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208.prol
  store double %i.dw, ptr %i.dx, align 8, !tbaa !20
  %i.dy = add nuw i64 %.2208.prol, 1              ; 2 uses
  %i.dz = add nuw nsw i64 %.2170207.prol, 4       ; 3 uses
  %prol.iter372.next = add i64 %prol.iter372, 1   ; 2 uses
  %prol.iter372.cmp.not = icmp eq i64 %prol.iter372.next, %xtraiter370
  br i1 %prol.iter372.cmp.not, label %.lr.ph209.prol.loopexit, label %.lr.ph209.prol, !llvm.loop !47

.lr.ph209.prol.loopexit:                          ; preds = %.lr.ph209.prol, %.lr.ph209.preheader
  %.lcssa366.unr = phi i64 [ poison, %.lr.ph209.preheader ], [ %i.dz, %.lr.ph209.prol ]
  %.2208.unr = phi i64 [ %.1.lcssa, %.lr.ph209.preheader ], [ %i.dy, %.lr.ph209.prol ]
  %.2170207.unr = phi i64 [ %.1169.lcssa, %.lr.ph209.preheader ], [ %i.dz, %.lr.ph209.prol ]
  %i.ea = icmp ult i64 %i.do, 12
  br i1 %i.ea, label %.preheader, label %.lr.ph209

.lr.ph203:                                        ; preds = %.lr.ph203.prol.loopexit, %.lr.ph203
  %.1202 = phi i64 [ %i.fd, %.lr.ph203 ], [ %.1202.unr, %.lr.ph203.prol.loopexit ] ; 5 uses
  %.1169201 = phi i64 [ %i.fe, %.lr.ph203 ], [ %.1169201.unr, %.lr.ph203.prol.loopexit ] ; 5 uses
  %i.eb = xor i64 %.1169201, -1
  %i.ec = add i64 %i.r, %i.eb
  %i.ed = mul nsw i64 %i.ec, %i.b
  %i.ee = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !20
  %i.eg = fneg double %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  store double %i.eg, ptr %i.eh, align 8, !tbaa !20
  %reass.sub = sub i64 %i.r, %.1169201
  %i.ei = add i64 %reass.sub, -5
  %i.ej = mul nsw i64 %i.ei, %i.b
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !20
  %i.em = fneg double %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store double %i.em, ptr %i.eo, align 8, !tbaa !20
  %reass.sub376 = sub i64 %i.r, %.1169201
  %i.ep = add i64 %reass.sub376, -9
  %i.eq = mul nsw i64 %i.ep, %i.b
  %i.er = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !20
  %i.et = fneg double %i.es
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store double %i.et, ptr %i.ev, align 8, !tbaa !20
  %reass.sub377 = sub i64 %i.r, %.1169201
  %i.ew = add i64 %reass.sub377, -13
  %i.ex = mul nsw i64 %i.ew, %i.b
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !20
  %i.fa = fneg double %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1202
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store double %i.fa, ptr %i.fc, align 8, !tbaa !20
  %i.fd = add nuw nsw i64 %.1202, 4               ; 2 uses
  %i.fe = add nuw nsw i64 %.1169201, 16           ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fd, %i.cs
  br i1 %exitcond.not.3, label %.preheader193, label %.lr.ph203, !llvm.loop !48

.preheader:                                       ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209, %.preheader193
  %.2170.lcssa = phi i64 [ %.1169.lcssa, %.preheader193 ], [ %.lcssa366.unr, %.lr.ph209.prol.loopexit ], [ %i.gf, %.lr.ph209 ] ; 3 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader193 ], [ %i.dq, %.lr.ph209 ], [ %i.dq, %.lr.ph209.prol.loopexit ] ; 2 uses
  %i.ff = icmp slt i64 %.2170.lcssa, %i.t
  br i1 %i.ff, label %.lr.ph214, label %._crit_edge

.lr.ph209:                                        ; preds = %.lr.ph209.prol.loopexit, %.lr.ph209
  %.2208 = phi i64 [ %i.ge, %.lr.ph209 ], [ %.2208.unr, %.lr.ph209.prol.loopexit ] ; 5 uses
  %.2170207 = phi i64 [ %i.gf, %.lr.ph209 ], [ %.2170207.unr, %.lr.ph209.prol.loopexit ] ; 5 uses
  %i.fg = sub nsw i64 %.2170207, %i.r
  %i.fh = mul nsw i64 %i.fg, %i.b
  %i.fi = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !20
  %i.fk = fneg double %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  store double %i.fk, ptr %i.fl, align 8, !tbaa !20
  %.reass = add i64 %.2170207, %invariant.op
  %i.fm = mul nsw i64 %.reass, %i.b
  %i.fn = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !20
  %i.fp = fneg double %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2208
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
end_hunk_0
begin_hunk_1_@apply_re11:bb.a
  %i.mb = icmp eq <2 x i64> %i.ma, zeroinitializer
  %i.mc = select <2 x i1> %i.mb, <2 x double> %i.jm, <2 x double> %i.lm
  %i.md = fadd <2 x double> %i.lv, %i.mc
  %i.me = fmul <2 x double> %i.md, splat (double f0x3FF6A09E667F3BCD)
  %i.mf = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.lw
  store <2 x double> %i.me, ptr %i.mf, align 8, !tbaa !20, !alias.scope !71, !noalias !72
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.mg = icmp eq i64 %index.next, %n.vec
  br i1 %i.mg, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge226, label %.lr.ph225.preheader362

.lr.ph225.preheader362:                           ; preds = %.lr.ph225.preheader, %middle.block
  %.ph = phi i64 [ %i.cm, %middle.block ], [ 1, %.lr.ph225.preheader ]
  %.ph363 = phi i64 [ %i.cl, %middle.block ], [ 0, %.lr.ph225.preheader ]
  %.5223.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph225.preheader ]
  br label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.preheader362, %.lr.ph225
  %i.mh = phi i64 [ %i.oo, %.lr.ph225 ], [ %.ph, %.lr.ph225.preheader362 ] ; 2 uses
  %i.mi = phi i64 [ %i.on, %.lr.ph225 ], [ %.ph363, %.lr.ph225.preheader362 ]
  %.5223 = phi i64 [ %i.mu, %.lr.ph225 ], [ %.5223.ph, %.lr.ph225.preheader362 ] ; 7 uses
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.mh
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !20 ; 3 uses
  %i.ml = add nuw nsw i64 %i.mi, 2                ; 2 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ml
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !20 ; 3 uses
  %i.mo = sub nsw i64 %i.f, %i.ml
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.mo
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !20 ; 3 uses
  %i.mr = sub nsw i64 %i.f, %i.mh
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !20 ; 3 uses
  %i.mu = add nuw nsw i64 %.5223, 1               ; 6 uses
  %i.mv = and i64 %i.mu, 2
  %.not185 = icmp eq i64 %i.mv, 0
  %i.mw = fneg double %i.mk                       ; 2 uses
  %i.mx = select i1 %.not185, double %i.mk, double %i.mw
  %i.my = and i64 %.5223, 2
  %.not186 = icmp eq i64 %i.my, 0
  %i.mz = fneg double %i.mt                       ; 2 uses
  %i.na = select i1 %.not186, double %i.mt, double %i.mz
  %i.nb = fadd double %i.mx, %i.na
  %i.nc = fmul double %i.nb, f0x3FF6A09E667F3BCD
  %i.nd = mul nsw i64 %.5223, %i.d
  %i.ne = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.nd
  store double %i.nc, ptr %i.ne, align 8, !tbaa !20
  %i.nf = sub nsw i64 %i.f, %.5223
  %i.ng = sdiv i64 %i.nf, 2
  %i.nh = and i64 %i.ng, 1
  %.not187 = icmp eq i64 %i.nh, 0
  %i.ni = select i1 %.not187, double %i.mk, double %i.mw
  %i.nj = sub nsw i64 %i.f, %i.mu                 ; 2 uses
  %i.nk = sdiv i64 %i.nj, 2
  %i.nl = and i64 %i.nk, 1
  %.not188 = icmp eq i64 %i.nl, 0
  %i.nm = select i1 %.not188, double %i.mt, double %i.mz
  %i.nn = fsub double %i.ni, %i.nm
  %i.no = fmul double %i.nn, f0x3FF6A09E667F3BCD
  %i.np = mul nsw i64 %i.nj, %i.d
  %i.nq = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.np
  store double %i.no, ptr %i.nq, align 8, !tbaa !20
  %i.nr = sub nuw nsw i64 %i.g, %.5223
  %i.ns = and i64 %i.nr, 2
  %.not189 = icmp eq i64 %i.ns, 0
  %i.nt = fneg double %i.mn                       ; 2 uses
  %i.nu = select i1 %.not189, double %i.mn, double %i.nt
  %i.nv = sub nuw nsw i64 %i.g, %i.mu             ; 2 uses
  %i.nw = and i64 %i.nv, 2
  %.not190 = icmp eq i64 %i.nw, 0
  %i.nx = fneg double %i.mq                       ; 2 uses
  %i.ny = select i1 %.not190, double %i.mq, double %i.nx
  %i.nz = fsub double %i.nu, %i.ny
  %i.oa = fmul double %i.nz, f0x3FF6A09E667F3BCD
  %i.ob = mul nsw i64 %i.nv, %i.d
  %i.oc = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.ob
  store double %i.oa, ptr %i.oc, align 8, !tbaa !20
  %i.od = add nuw i64 %i.w, %.5223
  %i.oe = and i64 %i.od, 2
  %.not191 = icmp eq i64 %i.oe, 0
  %i.of = select i1 %.not191, double %i.mn, double %i.nt
  %i.og = add nuw nsw i64 %i.mu, %i.g             ; 2 uses
  %i.oh = and i64 %i.og, 2
  %.not192 = icmp eq i64 %i.oh, 0
  %i.oi = select i1 %.not192, double %i.mq, double %i.nx
  %i.oj = fadd double %i.of, %i.oi
  %i.ok = fmul double %i.oj, f0x3FF6A09E667F3BCD
  %i.ol = mul nsw i64 %i.og, %i.d
  %i.om = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.ol
  store double %i.ok, ptr %i.om, align 8, !tbaa !20
  %i.on = shl nuw nsw i64 %i.mu, 1                ; 2 uses
  %i.oo = or disjoint i64 %i.on, 1                ; 2 uses
  %exitcond244.not = icmp eq i64 %.5223, %i.af
  br i1 %exitcond244.not, label %._crit_edge226, label %.lr.ph225, !llvm.loop !61

._crit_edge226:                                   ; preds = %.lr.ph225, %middle.block, %._crit_edge222
  %.5.lcssa = phi i64 [ 0, %._crit_edge222 ], [ %i.ag, %middle.block ], [ %i.ag, %.lr.ph225 ] ; 3 uses
  %.lcssa197 = phi i64 [ 1, %._crit_edge222 ], [ %i.cm, %middle.block ], [ %i.oo, %.lr.ph225 ]
  %i.op = icmp eq i64 %.lcssa197, %i.g
  br i1 %i.op, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge226
  %i.oq = load double, ptr %i.x, align 8, !tbaa !20 ; 3 uses
  %i.or = load double, ptr %i.z, align 8, !tbaa !20 ; 3 uses
  %i.os = add nuw nsw i64 %.5.lcssa, 1            ; 2 uses
  %i.ot = and i64 %i.os, 2
  %.not = icmp eq i64 %i.ot, 0                    ; 2 uses
  %i.ou = fneg double %i.oq                       ; 2 uses
  %i.ov = select i1 %.not, double %i.oq, double %i.ou
  %i.ow = and i64 %.5.lcssa, 2
  %.not182 = icmp eq i64 %i.ow, 0                 ; 2 uses
  %i.ox = fneg double %i.or                       ; 2 uses
  %i.oy = select i1 %.not182, double %i.or, double %i.ox
  %i.oz = fadd double %i.ov, %i.oy
  %i.pa = fmul double %i.oz, f0x3FF6A09E667F3BCD
  %i.pb = mul nsw i64 %.5.lcssa, %i.d
  %i.pc = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.pb
  store double %i.pa, ptr %i.pc, align 8, !tbaa !20
  %i.pd = select i1 %.not182, double %i.ou, double %i.oq
  %i.pe = select i1 %.not, double %i.or, double %i.ox
  %i.pf = fadd double %i.pd, %i.pe
  %i.pg = fmul double %i.pf, f0x3FF6A09E667F3BCD
  %i.ph = sub nsw i64 %i.f, %i.os
  %i.pi = mul nsw i64 %i.ph, %i.d
  %i.pj = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.pi
  store double %i.pg, ptr %i.pj, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge226
  %i.pk = load double, ptr %i.o, align 8, !tbaa !20 ; 2 uses
  %i.pl = fneg double %i.pk
  %i.pm = select i1 %.not184, double %i.pk, double %i.pl
  %i.pn = fmul double %i.pm, f0x3FF6A09E667F3BCD
  %i.po = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.ad
  store double %i.pn, ptr %i.po, align 8, !tbaa !20
  %i.pp = add nuw nsw i64 %.0173229, 1            ; 2 uses
  %i.pq = getelementptr inbounds [8 x i8], ptr %.0231, i64 %i.k
  %i.pr = getelementptr inbounds [8 x i8], ptr %.0166230, i64 %i.m
  %exitcond245.not = icmp eq i64 %i.pp, %i.i
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
  %i.ai = add nuw i64 %i.i, 2305843009213693951
  %i.aj = mul i64 %i.m, %i.ai
  %i.ak = shl i64 %i.aj, 3                        ; 3 uses
  %i.al = shl nuw i64 %i.ag, 3                    ; 4 uses
  %i.am = getelementptr i8, ptr %2, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 %i.al
  %scevgep = getelementptr i8, ptr %i.an, i64 8   ; 2 uses
  %i.ao = shl i64 %i.f, 3                         ; 4 uses
  %i.ap = add i64 %i.ao, -8
  %i.aq = sub i64 %i.ap, %i.al
  %scevgep284 = getelementptr i8, ptr %2, i64 %i.aq ; 4 uses
  %i.ar = getelementptr i8, ptr %2, i64 %i.ak
  %scevgep285 = getelementptr i8, ptr %i.ar, i64 %i.ao ; 4 uses
  %i.as = shl i64 %i.g, 3                         ; 3 uses
  %i.at = add i64 %i.as, -8
  %i.au = sub i64 %i.at, %i.al
  %scevgep286 = getelementptr i8, ptr %2, i64 %i.au ; 5 uses
  %i.av = add i64 %i.ak, %i.as                    ; 2 uses
  %scevgep287 = getelementptr i8, ptr %2, i64 %i.av ; 5 uses
  %i.aw = getelementptr i8, ptr %2, i64 %i.as
  %scevgep288 = getelementptr i8, ptr %i.aw, i64 8 ; 5 uses
  %i.ax = getelementptr i8, ptr %2, i64 %i.av
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.al
  %scevgep289 = getelementptr i8, ptr %i.ay, i64 16 ; 5 uses
  %i.az = add i64 %i.ao, -16
  %i.ba = shl i64 %i.ag, 4                        ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %scevgep290 = getelementptr i8, ptr %i.o, i64 %i.bb ; 4 uses
  %scevgep291 = getelementptr i8, ptr %i.o, i64 %i.ao ; 4 uses
  %scevgep292 = getelementptr i8, ptr %i.o, i64 8 ; 4 uses
  %i.bc = getelementptr i8, ptr %i.o, i64 %i.ba
  %scevgep293 = getelementptr i8, ptr %i.bc, i64 24 ; 4 uses
  %i.bd = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.be = shufflevector <4 x ptr> %i.bd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bf = insertelement <4 x ptr> poison, ptr %scevgep285, i64 0 ; 2 uses
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep287, i64 1
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep289, i64 2
  %i.bi = insertelement <4 x ptr> %i.bh, ptr %scevgep291, i64 3
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep284, i64 0 ; 2 uses
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %scevgep286, i64 1
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %scevgep288, i64 2
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %scevgep290, i64 3
  %i.bn = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bo = shufflevector <4 x ptr> %i.bn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep290, i64 0
  %i.bq = insertelement <4 x ptr> %i.bp, ptr %scevgep284, i64 1
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep288, i64 2
  %i.bs = insertelement <4 x ptr> %i.br, ptr %scevgep286, i64 3
  %i.bt = insertelement <4 x ptr> %i.bf, ptr %scevgep293, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep287, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep291, i64 3
  %i.bw = insertelement <4 x ptr> %i.bj, ptr %scevgep292, i64 1
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep286, i64 2
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep290, i64 3
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep291, i64 0
  %i.ca = insertelement <4 x ptr> %i.bz, ptr %scevgep285, i64 1
  %i.cb = insertelement <4 x ptr> %i.ca, ptr %scevgep289, i64 2
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %scevgep287, i64 3
  %invariant.op = sub i64 4, %i.f
  %invariant.op410 = sub i64 8, %i.f
  %invariant.op412 = sub i64 12, %i.f
  %i.cd = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp sgt i64 %i.f, 15
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.ce = icmp ult <4 x ptr> %i.be, %i.bi
  %i.cf = icmp ult <4 x ptr> %i.bm, %i.bo
  %.mask = and i64 %i.m, 1152921504606846976
  %stride.check298 = icmp ne i64 %.mask, 0
  %i.cg = and <4 x i1> %i.ce, %i.cf
  %bound0311 = icmp ult ptr %2, %scevgep293
  %bound1312 = icmp ult ptr %scevgep292, %scevgep
  %found.conflict313 = and i1 %bound0311, %bound1312
  %bound0316 = icmp ult ptr %scevgep284, %scevgep287
  %bound1317 = icmp ult ptr %scevgep286, %scevgep285
  %found.conflict318 = and i1 %bound0316, %bound1317
  %bound0322 = icmp ult ptr %scevgep284, %scevgep289
  %bound1323 = icmp ult ptr %scevgep288, %scevgep285
  %found.conflict324 = and i1 %bound0322, %bound1323
  %i.ch = icmp ult <4 x ptr> %i.by, %i.cc
  %i.ci = icmp ult <4 x ptr> %i.bs, %i.bv
  %i.cj = and <4 x i1> %i.ci, %i.ch
  %bound0349 = icmp ult ptr %scevgep286, %scevgep293
  %bound1350 = icmp ult ptr %scevgep292, %scevgep287
  %found.conflict351 = and i1 %bound0349, %bound1350
  %bound0354 = icmp ult ptr %scevgep288, %scevgep291
  %bound1355 = icmp ult ptr %scevgep290, %scevgep289
  %found.conflict356 = and i1 %bound0354, %bound1355
  %bound0359 = icmp ult ptr %scevgep288, %scevgep293
  %bound1360 = icmp ult ptr %scevgep292, %scevgep289
  %found.conflict361 = and i1 %bound0359, %bound1360
  %rdx.op = or <4 x i1> %i.cg, %i.cj
  %i.ck = bitcast <4 x i1> %rdx.op to i4
  %i.cl = icmp ne i4 %i.ck, 0
  %op.rdx = or i1 %i.cl, %found.conflict313
  %op.rdx372 = or i1 %found.conflict318, %found.conflict324
  %op.rdx373 = or i1 %found.conflict351, %found.conflict356
  %op.rdx374 = or i1 %found.conflict361, %stride.check298
  %op.rdx375 = or i1 %op.rdx, %op.rdx372
  %op.rdx376 = or i1 %op.rdx373, %op.rdx374
  %op.rdx377 = or i1 %op.rdx375, %op.rdx376
  %n.vec = and i64 %i.cd, 9223372036854775806     ; 4 uses
  %i.cm = shl nuw i64 %n.vec, 1                   ; 2 uses
  %i.cn = or disjoint i64 %i.cm, 1                ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.f, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert364 = insertelement <2 x i64> poison, i64 %i.g, i64 0
  %broadcast.splat365 = shufflevector <2 x i64> %broadcast.splatinsert364, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert366 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat367 = shufflevector <2 x i64> %broadcast.splatinsert366, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br label %.preheader212

.preheader212:                                    ; preds = %.preheader212.lr.ph, %bb.c
  %.0248 = phi ptr [ %1, %.preheader212.lr.ph ], [ %i.qg, %bb.c ] ; 18 uses
  %.0182247 = phi ptr [ %2, %.preheader212.lr.ph ], [ %i.qh, %bb.c ] ; 12 uses
  %.0184246 = phi i64 [ 0, %.preheader212.lr.ph ], [ %i.qf, %bb.c ]
  br i1 %i.q, label %.lr.ph, label %.preheader211

.preheader211:                                    ; preds = %.lr.ph, %.preheader212
  %.0185.lcssa = phi i64 [ %i.g, %.preheader212 ], [ %i.dl, %.lr.ph ] ; 5 uses
  %.0183.lcssa = phi i64 [ 0, %.preheader212 ], [ %i.dk, %.lr.ph ] ; 4 uses
  %i.co = icmp slt i64 %.0185.lcssa, %i.r
  br i1 %i.co, label %.lr.ph220.preheader, label %.preheader210

.lr.ph220.preheader:                              ; preds = %.preheader211
  %i.cp = add i64 %.0183.lcssa, 1
  %i.cq = xor i64 %.0185.lcssa, -1
  %i.cr = add i64 %i.r, %i.cq                     ; 2 uses
  %i.cs = lshr i64 %i.cr, 2                       ; 2 uses
  %i.ct = add i64 %i.cp, %i.cs                    ; 3 uses
  %i.cu = add nuw nsw i64 %i.cs, 1
  %xtraiter = and i64 %i.cu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol

.lr.ph220.prol:                                   ; preds = %.lr.ph220.preheader, %.lr.ph220.prol
  %.1219.prol = phi i64 [ %i.db, %.lr.ph220.prol ], [ %.0183.lcssa, %.lr.ph220.preheader ] ; 2 uses
  %.1186218.prol = phi i64 [ %i.dc, %.lr.ph220.prol ], [ %.0185.lcssa, %.lr.ph220.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph220.prol ], [ 0, %.lr.ph220.preheader ]
  %i.cv = sub nsw i64 %.1186218.prol, %i.f
  %i.cw = mul nsw i64 %i.cv, %i.b
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !20
  %i.cz = fneg double %i.cy
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219.prol
  store double %i.cz, ptr %i.da, align 8, !tbaa !20
  %i.db = add nuw nsw i64 %.1219.prol, 1          ; 2 uses
  %i.dc = add nuw nsw i64 %.1186218.prol, 4       ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph220.prol.loopexit, label %.lr.ph220.prol, !llvm.loop !73

.lr.ph220.prol.loopexit:                          ; preds = %.lr.ph220.prol, %.lr.ph220.preheader
  %.lcssa382.unr = phi i64 [ poison, %.lr.ph220.preheader ], [ %i.dc, %.lr.ph220.prol ]
  %.1219.unr = phi i64 [ %.0183.lcssa, %.lr.ph220.preheader ], [ %i.db, %.lr.ph220.prol ]
  %.1186218.unr = phi i64 [ %.0185.lcssa, %.lr.ph220.preheader ], [ %i.dc, %.lr.ph220.prol ]
  %i.dd = icmp ult i64 %i.cr, 12
  br i1 %i.dd, label %.preheader210, label %.lr.ph220

.lr.ph:                                           ; preds = %.preheader212, %.lr.ph
  %.0183216 = phi i64 [ %i.dk, %.lr.ph ], [ 0, %.preheader212 ] ; 2 uses
  %.0185215 = phi i64 [ %i.dl, %.lr.ph ], [ %i.g, %.preheader212 ] ; 2 uses
  %i.de = xor i64 %.0185215, -1
  %i.df = add nsw i64 %i.f, %i.de
  %i.dg = mul nsw i64 %i.df, %i.b
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !20
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.0183216
  store double %i.di, ptr %i.dj, align 8, !tbaa !20
  %i.dk = add nuw nsw i64 %.0183216, 1            ; 2 uses
  %i.dl = add nuw nsw i64 %.0185215, 4            ; 3 uses
  %i.dm = icmp slt i64 %i.dl, %i.f
  br i1 %i.dm, label %.lr.ph, label %.preheader211, !llvm.loop !74

.preheader210:                                    ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220, %.preheader211
  %.1186.lcssa = phi i64 [ %.0185.lcssa, %.preheader211 ], [ %.lcssa382.unr, %.lr.ph220.prol.loopexit ], [ %i.fd, %.lr.ph220 ] ; 5 uses
  %.1.lcssa = phi i64 [ %.0183.lcssa, %.preheader211 ], [ %i.ct, %.lr.ph220 ], [ %i.ct, %.lr.ph220.prol.loopexit ] ; 4 uses
  %i.dn = icmp slt i64 %.1186.lcssa, %i.s
  br i1 %i.dn, label %.lr.ph225.preheader, label %.preheader

.lr.ph225.preheader:                              ; preds = %.preheader210
  %i.do = add i64 %.1.lcssa, 1
  %i.dp = xor i64 %.1186.lcssa, -1
  %i.dq = add i64 %i.s, %i.dp                     ; 2 uses
  %i.dr = lshr i64 %i.dq, 2                       ; 2 uses
  %i.ds = add i64 %i.do, %i.dr                    ; 3 uses
  %i.dt = add nuw nsw i64 %i.dr, 1
  %xtraiter387 = and i64 %i.dt, 3                 ; 2 uses
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %.lr.ph225.prol.loopexit, label %.lr.ph225.prol

.lr.ph225.prol:                                   ; preds = %.lr.ph225.preheader, %.lr.ph225.prol
  %.2224.prol = phi i64 [ %i.eb, %.lr.ph225.prol ], [ %.1.lcssa, %.lr.ph225.preheader ] ; 2 uses
  %.2187223.prol = phi i64 [ %i.ec, %.lr.ph225.prol ], [ %.1186.lcssa, %.lr.ph225.preheader ] ; 2 uses
  %prol.iter389 = phi i64 [ %prol.iter389.next, %.lr.ph225.prol ], [ 0, %.lr.ph225.preheader ]
  %i.du = xor i64 %.2187223.prol, -1
  %i.dv = add i64 %i.s, %i.du
  %i.dw = mul nsw i64 %i.dv, %i.b
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !20
  %i.dz = fneg double %i.dy
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224.prol
  store double %i.dz, ptr %i.ea, align 8, !tbaa !20
  %i.eb = add nuw i64 %.2224.prol, 1              ; 2 uses
  %i.ec = add nuw nsw i64 %.2187223.prol, 4       ; 3 uses
  %prol.iter389.next = add i64 %prol.iter389, 1   ; 2 uses
  %prol.iter389.cmp.not = icmp eq i64 %prol.iter389.next, %xtraiter387
  br i1 %prol.iter389.cmp.not, label %.lr.ph225.prol.loopexit, label %.lr.ph225.prol, !llvm.loop !75

.lr.ph225.prol.loopexit:                          ; preds = %.lr.ph225.prol, %.lr.ph225.preheader
  %.lcssa383.unr = phi i64 [ poison, %.lr.ph225.preheader ], [ %i.ec, %.lr.ph225.prol ]
  %.2224.unr = phi i64 [ %.1.lcssa, %.lr.ph225.preheader ], [ %i.eb, %.lr.ph225.prol ]
  %.2187223.unr = phi i64 [ %.1186.lcssa, %.lr.ph225.preheader ], [ %i.ec, %.lr.ph225.prol ]
  %i.ed = icmp ult i64 %i.dq, 12
  br i1 %i.ed, label %.preheader, label %.lr.ph225

.lr.ph220:                                        ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220
  %.1219 = phi i64 [ %i.fc, %.lr.ph220 ], [ %.1219.unr, %.lr.ph220.prol.loopexit ] ; 5 uses
  %.1186218 = phi i64 [ %i.fd, %.lr.ph220 ], [ %.1186218.unr, %.lr.ph220.prol.loopexit ] ; 5 uses
  %i.ee = sub nsw i64 %.1186218, %i.f
  %i.ef = mul nsw i64 %i.ee, %i.b
  %i.eg = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !20
  %i.ei = fneg double %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  store double %i.ei, ptr %i.ej, align 8, !tbaa !20
  %.reass = add i64 %.1186218, %invariant.op
  %i.ek = mul nsw i64 %.reass, %i.b
  %i.el = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !20
  %i.en = fneg double %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store double %i.en, ptr %i.ep, align 8, !tbaa !20
  %.reass411 = add i64 %.1186218, %invariant.op410
  %i.eq = mul nsw i64 %.reass411, %i.b
  %i.er = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !20
  %i.et = fneg double %i.es
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store double %i.et, ptr %i.ev, align 8, !tbaa !20
  %.reass413 = add i64 %.1186218, %invariant.op412
  %i.ew = mul nsw i64 %.reass413, %i.b
  %i.ex = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !20
  %i.ez = fneg double %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.1219
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store double %i.ez, ptr %i.fb, align 8, !tbaa !20
  %i.fc = add nuw nsw i64 %.1219, 4               ; 2 uses
  %i.fd = add nuw nsw i64 %.1186218, 16           ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fc, %i.ct
  br i1 %exitcond.not.3, label %.preheader210, label %.lr.ph220, !llvm.loop !76

.preheader:                                       ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225, %.preheader210
  %.2187.lcssa = phi i64 [ %.1186.lcssa, %.preheader210 ], [ %.lcssa383.unr, %.lr.ph225.prol.loopexit ], [ %i.gi, %.lr.ph225 ] ; 3 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader210 ], [ %i.ds, %.lr.ph225 ], [ %i.ds, %.lr.ph225.prol.loopexit ] ; 2 uses
  %i.fe = icmp slt i64 %.2187.lcssa, %i.t
  br i1 %i.fe, label %.lr.ph231, label %._crit_edge

.lr.ph225:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225
  %.2224 = phi i64 [ %i.gh, %.lr.ph225 ], [ %.2224.unr, %.lr.ph225.prol.loopexit ] ; 5 uses
  %.2187223 = phi i64 [ %i.gi, %.lr.ph225 ], [ %.2187223.unr, %.lr.ph225.prol.loopexit ] ; 5 uses
  %i.ff = xor i64 %.2187223, -1
  %i.fg = add i64 %i.s, %i.ff
  %i.fh = mul nsw i64 %i.fg, %i.b
  %i.fi = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.fh
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !20
  %i.fk = fneg double %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  store double %i.fk, ptr %i.fl, align 8, !tbaa !20
  %reass.sub = sub i64 %i.s, %.2187223
  %i.fm = add i64 %reass.sub, -5
  %i.fn = mul nsw i64 %i.fm, %i.b
  %i.fo = getelementptr inbounds [8 x i8], ptr %.0248, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !20
  %i.fq = fneg double %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2224
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
end_hunk_1
