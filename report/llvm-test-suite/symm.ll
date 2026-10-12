Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/symm?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumUnrolled: 1
begin_hunk_0_@polybench_timer_start:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !9
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !9
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 38400) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 9 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 28800) #12
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11   ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i15 = or i1 %i.m, %i.l
  br i1 %or.cond.i.i15, label %bb.c, label %polybench_alloc_data.exit17

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i16 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit17:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 38400) #12
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !11   ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i.i18 = or i1 %i.r, %i.q
  br i1 %or.cond.i.i18, label %bb.d, label %polybench_alloc_data.exit20

bb.d:                                             ; preds = %polybench_alloc_data.exit17
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !13
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
  store <2 x double> %i.ac, ptr %i.ad, align 8, !tbaa !9
  %i.ae = sub nuw nsw <2 x i64> %broadcast.splat37, %vec.ind
  %i.af = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ag = urem <2 x i32> %i.af, splat (i32 100)
  %i.ah = uitofp nneg <2 x i32> %i.ag to <2 x double>
  %i.ai = fdiv <2 x double> %i.ah, splat (double 6.000000e+01)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.ai, ptr %i.aj, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ak = icmp eq i64 %index.next, 80
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !14

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
  store double %i.av, ptr %i.am, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ax = extractelement <2 x double> %i.au, i64 1
  store double %i.ax, ptr %i.aw, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 80
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !15

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 60
  br i1 %exitcond55.not.i, label %.preheader.i, label %.preheader45.i, !llvm.loop !16

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block43, %.loopexit
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next69.i, 60
  br i1 %exitcond73.not.i, label %.preheader44.i.preheader, label %.preheader.i, !llvm.loop !17

.preheader44.i.preheader:                         ; preds = %.loopexit.i
  %scevgep = getelementptr i8, ptr %i.e, i64 38400
  %i.ay = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %i.k, i64 1 ; 2 uses
  %i.ba = getelementptr i8, <2 x ptr> %i.az, <2 x i64> <i64 38400, i64 28800>
  %i.bb = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.bc = shufflevector <2 x ptr> %i.bb, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bd = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.be = shufflevector <2 x ptr> %i.bd, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bf = icmp ult <2 x ptr> %i.bc, %i.ba
  %i.bg = icmp ult <2 x ptr> %i.az, %i.be
  %i.bh = and <2 x i1> %i.bf, %i.bg
  %i.bi = bitcast <2 x i1> %i.bh to i2
  %.not = icmp eq i2 %i.bi, 0
  br label %.preheader44.i

.preheader.i:                                     ; preds = %middle.block, %.loopexit.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %.loopexit.i ], [ 0, %middle.block ] ; 6 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.loopexit.i ], [ 1, %middle.block ] ; 8 uses
  %2 = sub nsw i64 59, %indvars.iv68.i            ; 3 uses
  %i.bj = getelementptr inbounds nuw [480 x i8], ptr %i.k, i64 %indvars.iv68.i ; 4 uses
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
  %i.bk = add nuw nsw <2 x i64> %vec.ind52, %broadcast.splat49
  %i.bl = trunc nuw nsw <2 x i64> %i.bk to <2 x i32>
  %i.bm = urem <2 x i32> %i.bl, splat (i32 100)
  %i.bn = uitofp nneg <2 x i32> %i.bm to <2 x double>
  %i.bo = fdiv <2 x double> %i.bn, splat (double 6.000000e+01)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index51
  store <2 x double> %i.bo, ptr %i.bp, align 8, !tbaa !9
  %index.next53 = add nuw i64 %index51, 2         ; 2 uses
  %vec.ind.next54 = add nuw nsw <2 x i64> %vec.ind52, splat (i64 2)
  %i.bq = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.bq, label %middle.block55, label %vector.body50, !llvm.loop !18

middle.block55:                                   ; preds = %vector.body50
  %cmp.n56 = icmp eq i64 %indvars.iv62.i, %n.vec47
  br i1 %cmp.n56, label %.loopexit, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %.preheader.i, %middle.block55
  %indvars.iv56.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec47, %middle.block55 ]
  br label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.preheader, %scalar.ph44
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %scalar.ph44 ], [ %indvars.iv56.i.ph, %scalar.ph44.preheader ] ; 3 uses
  %i.br = add nuw nsw i64 %indvars.iv56.i, %indvars.iv68.i
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = urem i32 %i.bs, 100
  %i.bu = uitofp nneg i32 %i.bt to double
  %i.bv = fdiv double %i.bu, 6.000000e+01
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv56.i
  store double %i.bv, ptr %i.bw, align 8, !tbaa !9
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next57.i, %indvars.iv62.i
  br i1 %exitcond61.not.i, label %.loopexit, label %scalar.ph44, !llvm.loop !19

.loopexit:                                        ; preds = %scalar.ph44, %middle.block55
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv68.i, 59
  br i1 %i.bx, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader79, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  %i.by = add i64 %indvars.iv62.i, %n.vec
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv62.i
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40, %vector.ph39
  %index41 = phi i64 [ 0, %vector.ph39 ], [ %index.next42, %vector.body40 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index41 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x double> splat (double -9.990000e+02), ptr %i.ca, align 8, !tbaa !9
  store <2 x double> splat (double -9.990000e+02), ptr %i.cb, align 8, !tbaa !9
  %index.next42 = add nuw i64 %index41, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next42, %n.vec
  br i1 %i.cc, label %middle.block43, label %vector.body40, !llvm.loop !20

middle.block43:                                   ; preds = %vector.body40
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader79

.lr.ph.i.preheader79:                             ; preds = %.lr.ph.i.preheader, %middle.block43
  %indvars.iv64.i.ph = phi i64 [ %indvars.iv62.i, %.lr.ph.i.preheader ], [ %i.by, %middle.block43 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader79, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph.i ], [ %indvars.iv64.i.ph, %.lr.ph.i.preheader79 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv64.i
  store double -9.990000e+02, ptr %i.cd, align 8, !tbaa !9
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 60
  br i1 %exitcond67.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !21

.preheader44.i:                                   ; preds = %.preheader44.i.preheader, %.split.us.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.split.us.i ], [ 0, %.preheader44.i.preheader ] ; 7 uses
  %.not.i = icmp eq i64 %indvars.iv61.i, 0
  %i.ce = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv61.i ; 4 uses
  %i.cf = getelementptr inbounds nuw [640 x i8], ptr %i.p, i64 %indvars.iv61.i ; 4 uses
  %i.cg = getelementptr inbounds nuw [480 x i8], ptr %i.k, i64 %indvars.iv61.i ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv61.i ; 4 uses
  br i1 %.not.i, label %vector.memcheck58, label %.preheader.us.i

vector.memcheck58:                                ; preds = %.preheader44.i
  br i1 %.not, label %vector.ph65, label %.preheader.i24

vector.ph65:                                      ; preds = %vector.memcheck58
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !9, !alias.scope !36
  %broadcast.splatinsert71 = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat72 = shufflevector <2 x double> %broadcast.splatinsert71, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph65
  %index67 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body66 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index67 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cj, align 8, !tbaa !9, !alias.scope !37, !noalias !38
  %wide.load68 = load <2 x double>, ptr %i.ck, align 8, !tbaa !9, !alias.scope !37, !noalias !38
  %i.cl = fmul <2 x double> %wide.load, splat (double 1.200000e+00)
  %i.cm = fmul <2 x double> %wide.load68, splat (double 1.200000e+00)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index67 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load69 = load <2 x double>, ptr %i.cn, align 8, !tbaa !9, !alias.scope !39
  %wide.load70 = load <2 x double>, ptr %i.co, align 8, !tbaa !9, !alias.scope !39
  %i.cp = fmul <2 x double> %wide.load69, splat (double 1.500000e+00)
  %i.cq = fmul <2 x double> %wide.load70, splat (double 1.500000e+00)
  %i.cr = fmul <2 x double> %i.cp, %broadcast.splat72
  %i.cs = fmul <2 x double> %i.cq, %broadcast.splat72
  %i.ct = fadd <2 x double> %i.cl, %i.cr
  %i.cu = fadd <2 x double> %i.cm, %i.cs
  %i.cv = fadd <2 x double> %i.ct, zeroinitializer
  %i.cw = fadd <2 x double> %i.cu, zeroinitializer
  store <2 x double> %i.cv, ptr %i.cj, align 8, !tbaa !9, !alias.scope !37, !noalias !38
  store <2 x double> %i.cw, ptr %i.ck, align 8, !tbaa !9, !alias.scope !37, !noalias !38
  %index.next73 = add nuw i64 %index67, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next73, 80
  br i1 %i.cx, label %.split.us.i, label %vector.body66, !llvm.loop !26

.preheader.us.i:                                  ; preds = %.preheader44.i, %._crit_edge.us.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %._crit_edge.us.i ], [ 0, %.preheader44.i ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv53.i ; 2 uses
  %invariant.gep.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv53.i
  %invariant.gep47.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv53.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.i
  %indvars.iv.i21 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i22, %bb.e ] ; 4 uses
  %.046.us.i = phi double [ 0.000000e+00, %.preheader.us.i ], [ %i.dj, %bb.e ]
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !9
  %i.da = fmul double %i.cz, 1.500000e+00
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i21 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !9
  %i.dd = fmul double %i.da, %i.dc
  %gep.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.i21 ; 2 uses
  %i.de = load double, ptr %gep.us.i, align 8, !tbaa !9
  %i.df = fadd double %i.de, %i.dd
  store double %i.df, ptr %gep.us.i, align 8, !tbaa !9
  %gep48.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep47.us.i, i64 %indvars.iv.i21
  %i.dg = load double, ptr %gep48.us.i, align 8, !tbaa !9
  %i.dh = load double, ptr %i.db, align 8, !tbaa !9
  %i.di = fmul double %i.dg, %i.dh
  %i.dj = fadd double %.046.us.i, %i.di           ; 2 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %indvars.iv61.i
  br i1 %exitcond.not.i23, label %._crit_edge.us.i, label %bb.e, !llvm.loop !27

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !9
  %i.dm = fmul double %i.dl, 1.200000e+00
  %i.dn = load double, ptr %i.cy, align 8, !tbaa !9
  %i.do = fmul double %i.dn, 1.500000e+00
  %i.dp = load double, ptr %i.ch, align 8, !tbaa !9
  %i.dq = fmul double %i.do, %i.dp
  %i.dr = fadd double %i.dm, %i.dq
  %i.ds = fmul double %i.dj, 1.500000e+00
  %i.dt = fadd double %i.ds, %i.dr
  store double %i.dt, ptr %i.dk, align 8, !tbaa !9
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 80
  br i1 %exitcond56.not.i, label %.split.us.i, label %.preheader.us.i, !llvm.loop !28

.preheader.i24:                                   ; preds = %vector.memcheck58, %.preheader.i24
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.1, %.preheader.i24 ], [ 0, %vector.memcheck58 ] ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv57.i ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !9
  %i.dw = fmul double %i.dv, 1.200000e+00
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv57.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !9
  %i.dz = fmul double %i.dy, 1.500000e+00
  %i.ea = load double, ptr %i.ch, align 8, !tbaa !9
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = fadd double %i.dw, %i.eb
  %i.ed = fadd double %i.ec, 0.000000e+00
  store double %i.ed, ptr %i.du, align 8, !tbaa !9
  %indvars.iv.next58.i = or disjoint i64 %indvars.iv57.i, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next58.i ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !9
  %i.eg = fmul double %i.ef, 1.200000e+00
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next58.i
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !9
  %i.ej = fmul double %i.ei, 1.500000e+00
  %i.ek = load double, ptr %i.ch, align 8, !tbaa !9
  %i.el = fmul double %i.ej, %i.ek
  %i.em = fadd double %i.eg, %i.el
  %i.en = fadd double %i.em, 0.000000e+00
  store double %i.en, ptr %i.ee, align 8, !tbaa !9
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next58.i.1, 80
  br i1 %exitcond60.not.i.1, label %.split.us.i, label %.preheader.i24, !llvm.loop !29

.split.us.i:                                      ; preds = %._crit_edge.us.i, %vector.body66, %.preheader.i24
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next62.i, 60
  br i1 %exitcond64.not.i, label %kernel_symm.exit, label %.preheader44.i, !llvm.loop !30

kernel_symm.exit:                                 ; preds = %.split.us.i
  %i.eo = tail call noalias dereferenceable_or_null(1281) ptr @malloc(i64 noundef 1281) #15 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1280
  store i8 0, ptr %i.ep, align 1, !tbaa !40
  br label %.preheader.i25

.preheader.i25:                                   ; preds = %bb.g, %kernel_symm.exit
  %indvars.iv19.i = phi i64 [ 0, %kernel_symm.exit ], [ %indvars.iv.next20.i, %bb.g ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv19.i
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i25
  %indvars.iv.i26 = phi i64 [ 0, %.preheader.i25 ], [ %indvars.iv.next.i27, %bb.f ] ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i26
  %i.es = load i64, ptr %i.er, align 8, !tbaa !9
  %i.et = shl nuw nsw i64 %indvars.iv.i26, 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.et
  %.inner = and i64 %i.es, 1085102592571150095
  %.inner76 = or disjoint i64 %.inner, 3472328296227680304
  %i.ev = bitcast i64 %.inner76 to <8 x i8>
  %i.ew = shufflevector <8 x i8> %i.ev, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ew, ptr %i.eu, align 1, !tbaa !40
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, 80
  br i1 %exitcond.not.i28, label %bb.g, label %bb.f, !llvm.loop !31

bb.g:                                             ; preds = %bb.f
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ey = tail call i32 @fputs(ptr noundef nonnull %i.eo, ptr noundef %i.ex) #13 ; 0 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next20.i, 60
  br i1 %exitcond22.not.i, label %print_array.exit, label %.preheader.i25, !llvm.loop !32

print_array.exit:                                 ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.eo) #12
  tail call void @free(ptr noundef nonnull %i.e) #12
  tail call void @free(ptr noundef %i.k) #12
  tail call void @free(ptr noundef %i.p) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10
end_hunk_0
