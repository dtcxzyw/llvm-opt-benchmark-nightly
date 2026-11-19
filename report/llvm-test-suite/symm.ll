Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/symm?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 !guid !23 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 !guid !24 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 !guid !25 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 !guid !26 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !17
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !17
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 !guid !27 {
bb.a:
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !guid !28 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !48 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !19
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 38400) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !19   ; 9 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 28800) #12
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !19   ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i15 = or i1 %i.m, %i.l
  br i1 %or.cond.i.i15, label %bb.c, label %polybench_alloc_data.exit17

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i16 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit17:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 38400) #12
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i.i18 = or i1 %i.r, %i.q
  br i1 %or.cond.i.i18, label %bb.d, label %polybench_alloc_data.exit20

bb.d:                                             ; preds = %polybench_alloc_data.exit17
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i19 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.s) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit20:                      ; preds = %polybench_alloc_data.exit17
  %i.t = ptrtoaddr ptr %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.u = sub i64 %i.f, %i.t
  %diff.check = icmp ugt i64 %i.u, -16
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit20
  %indvars.iv52.i = phi i64 [ 0, %polybench_alloc_data.exit20 ], [ %indvars.iv.next53.i, %middle.block ] ; 6 uses
  %i.v = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv52.i ; 2 uses
  %i.w = add nuw nsw i64 %indvars.iv52.i, 80      ; 2 uses
  %i.x = getelementptr inbounds nuw [640 x i8], ptr %i.p, i64 %indvars.iv52.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader45.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv52.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert36 = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat37 = shufflevector <2 x i64> %broadcast.splatinsert36, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.y = add nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.z = trunc nuw nsw <2 x i64> %i.y to <2 x i32>
  %i.aa = urem <2 x i32> %i.z, splat (i32 100)
  %i.ab = uitofp nneg <2 x i32> %i.aa to <2 x double>
  %i.ac = fdiv <2 x double> %i.ab, splat (double 6.000000e+01)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index
  store <2 x double> %i.ac, ptr %i.ad, align 8, !tbaa !17
  %i.ae = sub nuw nsw <2 x i64> %broadcast.splat37, %vec.ind
  %i.af = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ag = urem <2 x i32> %i.af, splat (i32 100)
  %i.ah = uitofp nneg <2 x i32> %i.ag to <2 x double>
  %i.ai = fdiv <2 x double> %i.ah, splat (double 6.000000e+01)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.ai, ptr %i.aj, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ak = icmp eq i64 %index.next, 80
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !29

scalar.ph:                                        ; preds = %.preheader45.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader45.i ] ; 5 uses
  %i.al = add nuw nsw i64 %indvars.iv.i, %indvars.iv52.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.an = sub nuw nsw i64 %i.w, %indvars.iv.i
  %i.ao = trunc nsw i64 %i.al to i32
  %i.ap = trunc nsw i64 %i.an to i32
  %i.aq = insertelement <2 x i32> poison, i32 %i.ao, i64 0
  %i.ar = insertelement <2 x i32> %i.aq, i32 %i.ap, i64 1
  %i.as = urem <2 x i32> %i.ar, splat (i32 100)
  %i.at = uitofp nneg <2 x i32> %i.as to <2 x double>
  %i.au = fdiv <2 x double> %i.at, splat (double 6.000000e+01) ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  store double %i.av, ptr %i.am, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ax = extractelement <2 x double> %i.au, i64 1
  store double %i.ax, ptr %i.aw, align 8, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 80
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !30

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 60
  br i1 %exitcond55.not.i, label %.preheader.i, label %.preheader45.i, !llvm.loop !31

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block43, %.loopexit
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next69.i, 60
  br i1 %exitcond73.not.i, label %.preheader44.i.preheader, label %.preheader.i, !llvm.loop !32

.preheader44.i.preheader:                         ; preds = %.loopexit.i
  %i.ay = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %i.k, i64 1 ; 2 uses
  %i.ba = getelementptr i8, <2 x ptr> %i.az, <2 x i64> <i64 640, i64 28800>
  %i.bb = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.bc = shufflevector <2 x ptr> %i.bb, <2 x ptr> poison, <2 x i32> zeroinitializer
  %2 = getelementptr i8, ptr %i.e, <2 x i64> <i64 640, i64 38400>
  %i.bd = icmp ult <2 x ptr> %i.bc, %i.ba
  %i.be = icmp ult <2 x ptr> %i.az, %2
  %i.bf = and <2 x i1> %i.bd, %i.be
  %i.bg = bitcast <2 x i1> %i.bf to i2
  %.not = icmp eq i2 %i.bg, 0
  br label %.preheader44.i

.preheader.i:                                     ; preds = %middle.block, %.loopexit.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %.loopexit.i ], [ 0, %middle.block ] ; 7 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.loopexit.i ], [ 1, %middle.block ] ; 8 uses
  %i.bh = getelementptr inbounds nuw [480 x i8], ptr %i.k, i64 %indvars.iv68.i ; 4 uses
  %min.iters.check45 = icmp samesign ult i64 %indvars.iv62.i, 2
  br i1 %min.iters.check45, label %scalar.ph44.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %.preheader.i
  %n.vec47 = and i64 %indvars.iv62.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert48 = insertelement <2 x i64> poison, i64 %indvars.iv68.i, i64 0
  %broadcast.splat49 = shufflevector <2 x i64> %broadcast.splatinsert48, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %vec.ind52 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph46 ], [ %vec.ind.next54, %vector.body50 ] ; 2 uses
  %i.bi = add nuw nsw <2 x i64> %vec.ind52, %broadcast.splat49
  %i.bj = trunc nuw nsw <2 x i64> %i.bi to <2 x i32>
  %i.bk = urem <2 x i32> %i.bj, splat (i32 100)
  %i.bl = uitofp nneg <2 x i32> %i.bk to <2 x double>
  %i.bm = fdiv <2 x double> %i.bl, splat (double 6.000000e+01)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index51
  store <2 x double> %i.bm, ptr %i.bn, align 8, !tbaa !17
  %index.next53 = add nuw i64 %index51, 2         ; 2 uses
  %vec.ind.next54 = add nuw nsw <2 x i64> %vec.ind52, splat (i64 2)
  %i.bo = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.bo, label %middle.block55, label %vector.body50, !llvm.loop !33

middle.block55:                                   ; preds = %vector.body50
  %cmp.n56 = icmp eq i64 %indvars.iv62.i, %n.vec47
  br i1 %cmp.n56, label %.loopexit, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %.preheader.i, %middle.block55
  %indvars.iv56.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec47, %middle.block55 ]
  br label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.preheader, %scalar.ph44
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %scalar.ph44 ], [ %indvars.iv56.i.ph, %scalar.ph44.preheader ] ; 3 uses
  %i.bp = add nuw nsw i64 %indvars.iv56.i, %indvars.iv68.i
  %i.bq = trunc nuw nsw i64 %i.bp to i32
  %i.br = urem i32 %i.bq, 100
  %i.bs = uitofp nneg i32 %i.br to double
  %i.bt = fdiv double %i.bs, 6.000000e+01
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv56.i
  store double %i.bt, ptr %i.bu, align 8, !tbaa !17
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next57.i, %indvars.iv62.i
  br i1 %exitcond61.not.i, label %.loopexit, label %scalar.ph44, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph44, %middle.block55
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv68.i, 59
  br i1 %i.bv, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %i.bw = sub nuw nsw i64 59, %indvars.iv68.i     ; 2 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv68.i, 55
  br i1 %min.iters.check, label %.lr.ph.i.preheader85, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bw, 60                      ; 3 uses
  %i.bx = add nuw i64 %indvars.iv62.i, %n.vec
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv62.i
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph39
  %index41 = phi i64 [ 0, %vector.ph39 ], [ %index.next42, %vector.body40 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %index41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x double> splat (double -9.990000e+02), ptr %i.bz, align 8, !tbaa !17
  store <2 x double> splat (double -9.990000e+02), ptr %i.ca, align 8, !tbaa !17
  %index.next42 = add nuw i64 %index41, 4         ; 2 uses
  %i.cb = icmp eq i64 %index.next42, %n.vec
  br i1 %i.cb, label %middle.block43, label %vector.body40, !llvm.loop !35

middle.block43:                                   ; preds = %vector.body40
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader85

.lr.ph.i.preheader85:                             ; preds = %.lr.ph.i.preheader, %middle.block43
  %indvars.iv64.i.ph = phi i64 [ %indvars.iv62.i, %.lr.ph.i.preheader ], [ %i.bx, %middle.block43 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader85, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph.i ], [ %indvars.iv64.i.ph, %.lr.ph.i.preheader85 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv64.i
  store double -9.990000e+02, ptr %i.cc, align 8, !tbaa !17
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 60
  br i1 %exitcond67.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !36

.preheader44.i:                                   ; preds = %.preheader44.i.preheader, %.split.us.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.split.us.i ], [ 0, %.preheader44.i.preheader ] ; 7 uses
  %.not.i = icmp eq i64 %indvars.iv61.i, 0
  %i.cd = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv61.i ; 4 uses
  %i.ce = getelementptr inbounds nuw [640 x i8], ptr %i.p, i64 %indvars.iv61.i ; 4 uses
  %i.cf = getelementptr inbounds nuw [480 x i8], ptr %i.k, i64 %indvars.iv61.i ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv61.i ; 4 uses
  br i1 %.not.i, label %vector.memcheck67, label %.preheader.us.i

vector.memcheck67:                                ; preds = %.preheader44.i
  br i1 %.not, label %vector.ph71, label %.preheader.i24

vector.ph71:                                      ; preds = %vector.memcheck67
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !17, !alias.scope !52
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %i.ch, i64 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph71
  %index73 = phi i64 [ 0, %vector.ph71 ], [ %index.next79, %vector.body72 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index73 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ci, align 8, !tbaa !17, !alias.scope !53, !noalias !54
  %wide.load74 = load <2 x double>, ptr %i.cj, align 8, !tbaa !17, !alias.scope !53, !noalias !54
  %i.ck = fmul <2 x double> %wide.load, splat (double 1.200000e+00)
  %i.cl = fmul <2 x double> %wide.load74, splat (double 1.200000e+00)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index73 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load75 = load <2 x double>, ptr %i.cm, align 8, !tbaa !17, !alias.scope !55
  %wide.load76 = load <2 x double>, ptr %i.cn, align 8, !tbaa !17, !alias.scope !55
  %i.co = fmul <2 x double> %wide.load75, splat (double 1.500000e+00)
  %i.cp = fmul <2 x double> %wide.load76, splat (double 1.500000e+00)
  %i.cq = fmul <2 x double> %i.co, %broadcast.splat78
  %i.cr = fmul <2 x double> %i.cp, %broadcast.splat78
  %i.cs = fadd <2 x double> %i.ck, %i.cq
  %i.ct = fadd <2 x double> %i.cl, %i.cr
  %i.cu = fadd <2 x double> %i.cs, zeroinitializer
  %i.cv = fadd <2 x double> %i.ct, zeroinitializer
  store <2 x double> %i.cu, ptr %i.ci, align 8, !tbaa !17, !alias.scope !53, !noalias !54
  store <2 x double> %i.cv, ptr %i.cj, align 8, !tbaa !17, !alias.scope !53, !noalias !54
  %index.next79 = add nuw i64 %index73, 4         ; 2 uses
  %i.cw = icmp eq i64 %index.next79, 80
  br i1 %i.cw, label %.split.us.i, label %vector.body72, !llvm.loop !41

.preheader.us.i:                                  ; preds = %.preheader44.i, %._crit_edge.us.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %._crit_edge.us.i ], [ 0, %.preheader44.i ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i ; 2 uses
  %invariant.gep.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv53.i
  %invariant.gep47.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.i
  %indvars.iv.i21 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i22, %bb.e ] ; 4 uses
  %.046.us.i = phi double [ 0.000000e+00, %.preheader.us.i ], [ %i.di, %bb.e ]
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !17
  %i.cz = fmul double %i.cy, 1.500000e+00
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i21 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !17
  %i.dc = fmul double %i.cz, %i.db
  %gep.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.i21 ; 2 uses
  %i.dd = load double, ptr %gep.us.i, align 8, !tbaa !17
  %i.de = fadd double %i.dd, %i.dc
  store double %i.de, ptr %gep.us.i, align 8, !tbaa !17
  %gep48.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep47.us.i, i64 %indvars.iv.i21
  %i.df = load double, ptr %gep48.us.i, align 8, !tbaa !17
  %i.dg = load double, ptr %i.da, align 8, !tbaa !17
  %i.dh = fmul double %i.df, %i.dg
  %i.di = fadd double %.046.us.i, %i.dh           ; 2 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %indvars.iv61.i
  br i1 %exitcond.not.i23, label %._crit_edge.us.i, label %bb.e, !llvm.loop !42

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv53.i ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !17
  %i.dl = fmul double %i.dk, 1.200000e+00
  %i.dm = load double, ptr %i.cx, align 8, !tbaa !17
  %i.dn = fmul double %i.dm, 1.500000e+00
  %i.do = load double, ptr %i.cg, align 8, !tbaa !17
  %i.dp = fmul double %i.dn, %i.do
  %i.dq = fadd double %i.dl, %i.dp
  %i.dr = fmul double %i.di, 1.500000e+00
  %i.ds = fadd double %i.dr, %i.dq
  store double %i.ds, ptr %i.dj, align 8, !tbaa !17
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 80
  br i1 %exitcond56.not.i, label %.split.us.i, label %.preheader.us.i, !llvm.loop !43

.preheader.i24:                                   ; preds = %vector.memcheck67, %.preheader.i24
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.1, %.preheader.i24 ], [ 0, %vector.memcheck67 ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv57.i ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !17
  %i.dv = fmul double %i.du, 1.200000e+00
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv57.i
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !17
  %i.dy = fmul double %i.dx, 1.500000e+00
  %i.dz = load double, ptr %i.cg, align 8, !tbaa !17
  %i.ea = fmul double %i.dy, %i.dz
  %i.eb = fadd double %i.dv, %i.ea
  %i.ec = fadd double %i.eb, 0.000000e+00
  store double %i.ec, ptr %i.dt, align 8, !tbaa !17
  %indvars.iv.next58.i = or disjoint i64 %indvars.iv57.i, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next58.i ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !17
end_hunk_0
