Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/syrk?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@polybench_timer_stop:bb.a
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
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 7 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 11520000) #12
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11   ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  %i.n = icmp ne i32 %i.j, 0
  %or.cond.i.i21 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i.i21, label %bb.c, label %polybench_alloc_data.exit23

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i22 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit23:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #12
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !11   ; 10 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i24 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i.i24, label %bb.d, label %polybench_alloc_data.exit26

bb.d:                                             ; preds = %polybench_alloc_data.exit23
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i25 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.t) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit26:                      ; preds = %polybench_alloc_data.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader35.i

.preheader35.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit26
  %indvars.iv41.i = phi i64 [ 0, %polybench_alloc_data.exit26 ], [ %indvars.iv.next42.i, %middle.block ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8000 x i8], ptr %i.q, i64 %indvars.iv41.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader35.i
  %index = phi i64 [ 0, %.preheader35.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader35.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.v = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.w = trunc <2 x i64> %i.v to <2 x i32>
  %i.x = add <2 x i32> %i.w, splat (i32 1)
  %i.y = urem <2 x i32> %i.x, splat (i32 1200)
  %i.z = uitofp nneg <2 x i32> %i.y to <2 x double>
  %i.aa = fdiv <2 x double> %i.z, splat (double 1.200000e+03)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index
  store <2 x double> %i.aa, ptr %i.ab, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ac = icmp eq i64 %index.next, 1000
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, 1200
  br i1 %exitcond44.not.i, label %.preheader.i.preheader, label %.preheader35.i, !llvm.loop !15

.preheader.i.preheader:                           ; preds = %middle.block
  %i.ad = sub i64 %i.f, %i.l
  %diff.check = icmp ugt i64 %i.ad, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block94
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %middle.block94 ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv49.i ; 2 uses
  %i.af = getelementptr inbounds nuw [9600 x i8], ptr %i.k, i64 %indvars.iv49.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph86

vector.ph86:                                      ; preds = %.preheader.i
  %broadcast.splatinsert87 = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat88 = shufflevector <2 x i64> %broadcast.splatinsert87, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph86
  %index90 = phi i64 [ 0, %vector.ph86 ], [ %index.next92, %vector.body89 ] ; 3 uses
  %vec.ind91 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph86 ], [ %vec.ind.next93, %vector.body89 ] ; 2 uses
  %i.ag = mul nuw nsw <2 x i64> %vec.ind91, %broadcast.splat88
  %i.ah = trunc <2 x i64> %i.ag to <2 x i32>
  %i.ai = add <2 x i32> %i.ah, splat (i32 2)
  %i.aj = urem <2 x i32> %i.ai, splat (i32 1000)
  %i.ak = uitofp nneg <2 x i32> %i.aj to <2 x double>
  %i.al = fdiv <2 x double> %i.ak, splat (double 1.000000e+03) ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index90
  store <2 x double> %i.al, ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index90
  store <2 x double> %i.al, ptr %i.an, align 8, !tbaa !9
  %index.next92 = add nuw i64 %index90, 2         ; 2 uses
  %vec.ind.next93 = add nuw nsw <2 x i64> %vec.ind91, splat (i64 2)
  %i.ao = icmp eq i64 %index.next92, 1200
  br i1 %i.ao, label %middle.block94, label %vector.body89, !llvm.loop !16

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %scalar.ph ], [ 0, %.preheader.i ] ; 4 uses
  %i.ap = mul nuw nsw i64 %indvars.iv45.i, %indvars.iv49.i
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = add i32 %i.aq, 2
  %i.as = urem i32 %i.ar, 1000
  %i.at = uitofp nneg i32 %i.as to double
  %i.au = fdiv double %i.at, 1.000000e+03         ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv45.i
  store double %i.au, ptr %i.av, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv45.i
  store double %i.au, ptr %i.aw, align 8, !tbaa !9
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next46.i, 1200
  br i1 %exitcond48.not.i, label %middle.block94, label %scalar.ph, !llvm.loop !17

middle.block94:                                   ; preds = %vector.body89, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader29.i.preheader, label %.preheader.i, !llvm.loop !18

.preheader29.i.preheader:                         ; preds = %middle.block94
  %i.ax = insertelement <2 x ptr> poison, ptr %i.q, i64 0 ; 2 uses
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %.preheader29.i.preheader, %bb.e
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.e ], [ 0, %.preheader29.i.preheader ] ; 6 uses
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %bb.e ], [ 1, %.preheader29.i.preheader ] ; 10 uses
  %i.ay = mul nuw nsw i64 %indvars.iv48.i, 9608
  %i.az = getelementptr i8, ptr %i.e, i64 %i.ay
  %scevgep = getelementptr i8, ptr %i.az, i64 8
  %i.ba = mul nuw nsw i64 %indvars.iv48.i, 8000
  %2 = getelementptr i8, ptr %i.q, i64 %i.ba
  %scevgep96 = getelementptr i8, ptr %2, i64 8000
  %i.bb = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv48.i ; 7 uses
  %min.iters.check110 = icmp samesign ult i64 %indvars.iv46.i, 4
  br i1 %min.iters.check110, label %scalar.ph109.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %.preheader29.i
  %n.vec112 = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next117, %vector.body113 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index114 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load115 = load <2 x double>, ptr %i.bc, align 8, !tbaa !9
  %wide.load116 = load <2 x double>, ptr %i.bd, align 8, !tbaa !9
  %i.be = fmul <2 x double> %wide.load115, splat (double 1.200000e+00)
  %i.bf = fmul <2 x double> %wide.load116, splat (double 1.200000e+00)
  store <2 x double> %i.be, ptr %i.bc, align 8, !tbaa !9
  store <2 x double> %i.bf, ptr %i.bd, align 8, !tbaa !9
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next117, %n.vec112
  br i1 %i.bg, label %middle.block118, label %vector.body113, !llvm.loop !19

middle.block118:                                  ; preds = %vector.body113
  %cmp.n119 = icmp eq i64 %indvars.iv46.i, %n.vec112
  br i1 %cmp.n119, label %.preheader28.i, label %scalar.ph109.preheader

scalar.ph109.preheader:                           ; preds = %.preheader29.i, %middle.block118
  %indvars.iv.i27.ph = phi i64 [ 0, %.preheader29.i ], [ %n.vec112, %middle.block118 ]
  br label %scalar.ph109

.preheader28.i:                                   ; preds = %scalar.ph109, %middle.block118
  %i.bh = getelementptr inbounds nuw [8000 x i8], ptr %i.q, i64 %indvars.iv48.i ; 2 uses
  %i.bi = insertelement <2 x ptr> poison, ptr %i.bb, i64 0
  %i.bj = insertelement <2 x ptr> poison, ptr %scevgep96, i64 0
  %i.bk = insertelement <2 x ptr> %i.ax, ptr %i.bh, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.bm = shufflevector <2 x ptr> %i.bl, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %indvars.iv46.i, 4
  %i.bn = icmp ult <2 x ptr> %i.bi, %i.bj
  %i.bo = shufflevector <2 x i1> %i.bn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bp = icmp ult <2 x ptr> %i.bk, %i.bm
  %i.bq = and <2 x i1> %i.bo, %i.bp
  %i.br = bitcast <2 x i1> %i.bq to i2
  %conflict.rdx.not = icmp eq i2 %i.br, 0
  %n.vec = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv46.i, %n.vec
  %xtraiter = and i64 %indvars.iv46.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i30

scalar.ph109:                                     ; preds = %scalar.ph109.preheader, %scalar.ph109
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %scalar.ph109 ], [ %indvars.iv.i27.ph, %scalar.ph109.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i27 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !9
  %i.bu = fmul double %i.bt, 1.200000e+00
  store double %i.bu, ptr %i.bs, align 8, !tbaa !9
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next.i28, %indvars.iv46.i
  br i1 %exitcond.not.i29, label %.preheader28.i, label %scalar.ph109, !llvm.loop !20

.preheader.i30:                                   ; preds = %.loopexit157, %.preheader28.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next43.i, %.loopexit157 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv42.i ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv42.i ; 7 uses
  %conflict.rdx.not.not = xor i1 %conflict.rdx.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx.not.not
  br i1 %brmerge, label %scalar.ph100.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %.preheader.i30
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !9, !alias.scope !46
  %i.bx = fmul double %i.bw, 1.500000e+00
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.bx, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph101
  %index103 = phi i64 [ 0, %vector.ph101 ], [ %index.next107, %vector.body102 ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.bz = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8000
  %i.cb = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16000
  %i.cd = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24000
  %i.cf = load double, ptr %i.by, align 8, !tbaa !9, !alias.scope !47
  %i.cg = load double, ptr %i.ca, align 8, !tbaa !9, !alias.scope !47
  %i.ch = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1
  %i.cj = load double, ptr %i.cc, align 8, !tbaa !9, !alias.scope !47
  %i.ck = load double, ptr %i.ce, align 8, !tbaa !9, !alias.scope !47
  %i.cl = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ck, i64 1
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index103 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cn, align 8, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load104 = load <2 x double>, ptr %i.co, align 8, !tbaa !9, !alias.scope !48, !noalias !49
  %i.cp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %i.ci, <2 x double> %wide.load)
  %i.cq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %i.cm, <2 x double> %wide.load104)
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !9, !alias.scope !48, !noalias !49
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !9, !alias.scope !48, !noalias !49
  %index.next107 = add nuw i64 %index103, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next107, %n.vec
  br i1 %i.cr, label %middle.block108, label %vector.body102, !llvm.loop !25

middle.block108:                                  ; preds = %vector.body102
  br i1 %cmp.n, label %.loopexit157, label %scalar.ph100.preheader

scalar.ph100.preheader:                           ; preds = %.preheader.i30, %middle.block108
  %indvars.iv37.i.ph = phi i64 [ %n.vec, %middle.block108 ], [ 0, %.preheader.i30 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph100.prol.loopexit, label %scalar.ph100.prol

scalar.ph100.prol:                                ; preds = %scalar.ph100.preheader
  %i.cs = load double, ptr %i.bv, align 8, !tbaa !9
  %i.ct = fmul double %i.cs, 1.500000e+00
  %gep.i.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i.ph
  %i.cu = load double, ptr %gep.i.prol, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv37.i.ph ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !9
  %i.cx = call double @llvm.fmuladd.f64(double %i.ct, double %i.cu, double %i.cw)
  store double %i.cx, ptr %i.cv, align 8, !tbaa !9
  %indvars.iv.next38.i.prol = or disjoint i64 %indvars.iv37.i.ph, 1
  br label %scalar.ph100.prol.loopexit

scalar.ph100.prol.loopexit:                       ; preds = %scalar.ph100.prol, %scalar.ph100.preheader
  %indvars.iv37.i.unr = phi i64 [ %indvars.iv37.i.ph, %scalar.ph100.preheader ], [ %indvars.iv.next38.i.prol, %scalar.ph100.prol ]
  %i.cy = icmp eq i64 %indvars.iv48.i, %indvars.iv37.i.ph
  br i1 %i.cy, label %.loopexit157, label %scalar.ph100

scalar.ph100:                                     ; preds = %scalar.ph100.prol.loopexit, %scalar.ph100
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i.1, %scalar.ph100 ], [ %indvars.iv37.i.unr, %scalar.ph100.prol.loopexit ] ; 4 uses
  %i.cz = load double, ptr %i.bv, align 8, !tbaa !9
  %i.da = fmul double %i.cz, 1.500000e+00
  %gep.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i
  %i.db = load double, ptr %gep.i, align 8, !tbaa !9
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv37.i ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !9
  %i.de = call double @llvm.fmuladd.f64(double %i.da, double %i.db, double %i.dd)
  store double %i.de, ptr %i.dc, align 8, !tbaa !9
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.df = load double, ptr %i.bv, align 8, !tbaa !9
  %i.dg = fmul double %i.df, 1.500000e+00
  %gep.i.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next38.i
  %i.dh = load double, ptr %gep.i.1, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.next38.i ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !9
  %i.dk = call double @llvm.fmuladd.f64(double %i.dg, double %i.dh, double %i.dj)
  store double %i.dk, ptr %i.di, align 8, !tbaa !9
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %exitcond41.not.i.1 = icmp eq i64 %indvars.iv.next38.i.1, %indvars.iv46.i
  br i1 %exitcond41.not.i.1, label %.loopexit157, label %scalar.ph100, !llvm.loop !26

.loopexit157:                                     ; preds = %scalar.ph100.prol.loopexit, %scalar.ph100, %middle.block108
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, 1000
  br i1 %exitcond45.not.i, label %bb.e, label %.preheader.i30, !llvm.loop !27

bb.e:                                             ; preds = %.loopexit157
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next49.i, 1200
  br i1 %exitcond53.not.i, label %.preheader29.i31, label %.preheader29.i, !llvm.loop !28

.preheader29.i31:                                 ; preds = %bb.e, %bb.f
  %indvars.iv48.i32 = phi i64 [ %indvars.iv.next49.i47, %bb.f ], [ 0, %bb.e ] ; 6 uses
  %indvars.iv46.i33 = phi i64 [ %indvars.iv.next47.i48, %bb.f ], [ 1, %bb.e ] ; 10 uses
  %i.dl = mul nuw nsw i64 %indvars.iv48.i32, 9608
  %i.dm = getelementptr i8, ptr %i.k, i64 %i.dl
  %scevgep122 = getelementptr i8, ptr %i.dm, i64 8
  %i.dn = mul nuw nsw i64 %indvars.iv48.i32, 8000
  %3 = getelementptr i8, ptr %i.q, i64 %i.dn
  %scevgep123 = getelementptr i8, ptr %3, i64 8000
  %i.do = getelementptr inbounds nuw [9600 x i8], ptr %i.k, i64 %indvars.iv48.i32 ; 7 uses
  %min.iters.check146 = icmp samesign ult i64 %indvars.iv46.i33, 4
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.preheader29.i31
  %n.vec148 = and i64 %indvars.iv46.i33, 9223372036854775804 ; 3 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next153, %vector.body149 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index150 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %wide.load151 = load <2 x double>, ptr %i.dp, align 8, !tbaa !9
  %wide.load152 = load <2 x double>, ptr %i.dq, align 8, !tbaa !9
  %i.dr = fmul <2 x double> %wide.load151, splat (double 1.200000e+00)
  %i.ds = fmul <2 x double> %wide.load152, splat (double 1.200000e+00)
  store <2 x double> %i.dr, ptr %i.dp, align 8, !tbaa !9
  store <2 x double> %i.ds, ptr %i.dq, align 8, !tbaa !9
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.dt, label %middle.block154, label %vector.body149, !llvm.loop !29

middle.block154:                                  ; preds = %vector.body149
  %cmp.n155 = icmp eq i64 %indvars.iv46.i33, %n.vec148
  br i1 %cmp.n155, label %.preheader28.i37, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.preheader29.i31, %middle.block154
  %indvars.iv.i34.ph = phi i64 [ 0, %.preheader29.i31 ], [ %n.vec148, %middle.block154 ]
  br label %scalar.ph145

.preheader28.i37:                                 ; preds = %scalar.ph145, %middle.block154
  %i.du = getelementptr inbounds nuw [8000 x i8], ptr %i.q, i64 %indvars.iv48.i32 ; 2 uses
  %i.dv = insertelement <2 x ptr> poison, ptr %i.do, i64 0
  %i.dw = insertelement <2 x ptr> poison, ptr %scevgep123, i64 0
  %i.dx = insertelement <2 x ptr> %i.ax, ptr %i.du, i64 1
  %i.dy = insertelement <2 x ptr> poison, ptr %scevgep122, i64 0
  %i.dz = shufflevector <2 x ptr> %i.dy, <2 x ptr> poison, <2 x i32> zeroinitializer
  %min.iters.check132 = icmp samesign ult i64 %indvars.iv46.i33, 4
  %i.ea = icmp ult <2 x ptr> %i.dv, %i.dw
  %i.eb = shufflevector <2 x i1> %i.ea, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ec = icmp ult <2 x ptr> %i.dx, %i.dz
  %i.ed = and <2 x i1> %i.eb, %i.ec
  %i.ee = bitcast <2 x i1> %i.ed to i2
  %conflict.rdx130.not = icmp eq i2 %i.ee, 0
  %n.vec134 = and i64 %indvars.iv46.i33, 9223372036854775804 ; 3 uses
  %cmp.n143 = icmp eq i64 %indvars.iv46.i33, %n.vec134
  %xtraiter170 = and i64 %indvars.iv46.i33, 1
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br label %.preheader.i38

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv.i34 = phi i64 [ %indvars.iv.next.i35, %scalar.ph145 ], [ %indvars.iv.i34.ph, %scalar.ph145.preheader ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i34 ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !9
  %i.eh = fmul double %i.eg, 1.200000e+00
  store double %i.eh, ptr %i.ef, align 8, !tbaa !9
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  %exitcond.not.i36 = icmp eq i64 %indvars.iv.next.i35, %indvars.iv46.i33
  br i1 %exitcond.not.i36, label %.preheader28.i37, label %scalar.ph145, !llvm.loop !30

.preheader.i38:                                   ; preds = %.loopexit, %.preheader28.i37
  %indvars.iv42.i39 = phi i64 [ 0, %.preheader28.i37 ], [ %indvars.iv.next43.i45, %.loopexit ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv42.i39 ; 4 uses
  %invariant.gep.i40 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv42.i39 ; 7 uses
  %conflict.rdx130.not.not = xor i1 %conflict.rdx130.not, true
  %brmerge174 = select i1 %min.iters.check132, i1 true, i1 %conflict.rdx130.not.not
  br i1 %brmerge174, label %scalar.ph131.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.preheader.i38
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !9, !alias.scope !50
  %i.ek = fmul double %i.ej, 1.500000e+00
  %broadcast.splatinsert137 = insertelement <2 x double> poison, double %i.ek, i64 0
  %broadcast.splat138 = shufflevector <2 x double> %broadcast.splatinsert137, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 6 uses
  %i.el = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index136
  %i.em = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index136
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8000
  %i.eo = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index136
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16000
  %i.eq = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %index136
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24000
  %i.es = load double, ptr %i.el, align 8, !tbaa !9, !alias.scope !51
  %i.et = load double, ptr %i.en, align 8, !tbaa !9, !alias.scope !51
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.et, i64 1
  %i.ew = load double, ptr %i.ep, align 8, !tbaa !9, !alias.scope !51
  %i.ex = load double, ptr %i.er, align 8, !tbaa !9, !alias.scope !51
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = insertelement <2 x double> %i.ey, double %i.ex, i64 1
  %i.fa = fmul <2 x double> %broadcast.splat138, %i.ev
  %i.fb = fmul <2 x double> %broadcast.splat138, %i.ez
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index136 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load139 = load <2 x double>, ptr %i.fc, align 8, !tbaa !9, !alias.scope !52, !noalias !53
  %wide.load140 = load <2 x double>, ptr %i.fd, align 8, !tbaa !9, !alias.scope !52, !noalias !53
  %i.fe = fadd <2 x double> %wide.load139, %i.fa
  %i.ff = fadd <2 x double> %wide.load140, %i.fb
  store <2 x double> %i.fe, ptr %i.fc, align 8, !tbaa !9, !alias.scope !52, !noalias !53
  store <2 x double> %i.ff, ptr %i.fd, align 8, !tbaa !9, !alias.scope !52, !noalias !53
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.fg = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.fg, label %middle.block142, label %vector.body135, !llvm.loop !35

middle.block142:                                  ; preds = %vector.body135
  br i1 %cmp.n143, label %.loopexit, label %scalar.ph131.preheader

scalar.ph131.preheader:                           ; preds = %.preheader.i38, %middle.block142
  %indvars.iv37.i41.ph = phi i64 [ %n.vec134, %middle.block142 ], [ 0, %.preheader.i38 ] ; 5 uses
  br i1 %lcmp.mod171.not, label %scalar.ph131.prol.loopexit, label %scalar.ph131.prol

scalar.ph131.prol:                                ; preds = %scalar.ph131.preheader
  %i.fh = load double, ptr %i.ei, align 8, !tbaa !9
  %i.fi = fmul double %i.fh, 1.500000e+00
  %gep.i42.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %indvars.iv37.i41.ph
  %i.fj = load double, ptr %gep.i42.prol, align 8, !tbaa !9
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv37.i41.ph ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !9
  %i.fn = fadd double %i.fm, %i.fk
  store double %i.fn, ptr %i.fl, align 8, !tbaa !9
  %indvars.iv.next38.i43.prol = or disjoint i64 %indvars.iv37.i41.ph, 1
  br label %scalar.ph131.prol.loopexit

scalar.ph131.prol.loopexit:                       ; preds = %scalar.ph131.prol, %scalar.ph131.preheader
  %indvars.iv37.i41.unr = phi i64 [ %indvars.iv37.i41.ph, %scalar.ph131.preheader ], [ %indvars.iv.next38.i43.prol, %scalar.ph131.prol ]
  %i.fo = icmp eq i64 %indvars.iv48.i32, %indvars.iv37.i41.ph
  br i1 %i.fo, label %.loopexit, label %scalar.ph131

scalar.ph131:                                     ; preds = %scalar.ph131.prol.loopexit, %scalar.ph131
  %indvars.iv37.i41 = phi i64 [ %indvars.iv.next38.i43.1, %scalar.ph131 ], [ %indvars.iv37.i41.unr, %scalar.ph131.prol.loopexit ] ; 4 uses
  %i.fp = load double, ptr %i.ei, align 8, !tbaa !9
  %i.fq = fmul double %i.fp, 1.500000e+00
  %gep.i42 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %indvars.iv37.i41
  %i.fr = load double, ptr %gep.i42, align 8, !tbaa !9
  %i.fs = fmul double %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv37.i41 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !9
  %i.fv = fadd double %i.fu, %i.fs
  store double %i.fv, ptr %i.ft, align 8, !tbaa !9
  %indvars.iv.next38.i43 = add nuw nsw i64 %indvars.iv37.i41, 1 ; 2 uses
  %i.fw = load double, ptr %i.ei, align 8, !tbaa !9
  %i.fx = fmul double %i.fw, 1.500000e+00
  %gep.i42.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i40, i64 %indvars.iv.next38.i43
  %i.fy = load double, ptr %gep.i42.1, align 8, !tbaa !9
  %i.fz = fmul double %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next38.i43 ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !9
  %i.gc = fadd double %i.gb, %i.fz
  store double %i.gc, ptr %i.ga, align 8, !tbaa !9
  %indvars.iv.next38.i43.1 = add nuw nsw i64 %indvars.iv37.i41, 2 ; 2 uses
  %exitcond41.not.i44.1 = icmp eq i64 %indvars.iv.next38.i43.1, %indvars.iv46.i33
  br i1 %exitcond41.not.i44.1, label %.loopexit, label %scalar.ph131, !llvm.loop !36

.loopexit:                                        ; preds = %scalar.ph131.prol.loopexit, %scalar.ph131, %middle.block142
  %indvars.iv.next43.i45 = add nuw nsw i64 %indvars.iv42.i39, 1 ; 2 uses
  %exitcond45.not.i46 = icmp eq i64 %indvars.iv.next43.i45, 1000
  br i1 %exitcond45.not.i46, label %bb.f, label %.preheader.i38, !llvm.loop !37

bb.f:                                             ; preds = %.loopexit
  %indvars.iv.next49.i47 = add nuw nsw i64 %indvars.iv48.i32, 1 ; 2 uses
  %indvars.iv.next47.i48 = add nuw nsw i64 %indvars.iv46.i33, 1
  %exitcond53.not.i49 = icmp eq i64 %indvars.iv.next49.i47, 1200
  br i1 %exitcond53.not.i49, label %.preheader.i50, label %.preheader29.i31, !llvm.loop !38

.preheader.i50:                                   ; preds = %bb.f, %bb.h
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.h ], [ 0, %bb.f ] ; 4 uses
  %i.gd = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv36.i ; 3 uses
  %i.ge = getelementptr inbounds nuw [9600 x i8], ptr %i.k, i64 %indvars.iv36.i ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.2, %.preheader.i50
  %indvars.iv.i51 = phi i64 [ 0, %.preheader.i50 ], [ %indvars.iv.next.i52.2, %.critedge.i.2 ] ; 6 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.i51
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !9 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i51
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !9 ; 2 uses
  %i.gj = fsub double %i.gg, %i.gi
  %i.gk = call double @llvm.fabs.f64(double %i.gj)
  %i.gl = fcmp ule double %i.gk, 1.000000e-05
  br i1 %i.gl, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.1, %.critedge.i, %bb.g
  %indvars.iv.i51.lcssa = phi i64 [ %indvars.iv.i51, %bb.g ], [ %indvars.iv.next.i52, %.critedge.i ], [ %indvars.iv.next.i52.1, %.critedge.i.1 ]
  %.lcssa164 = phi double [ %i.gg, %bb.g ], [ %i.gr, %.critedge.i ], [ %i.gy, %.critedge.i.1 ]
  %.lcssa = phi double [ %i.gi, %bb.g ], [ %i.gt, %.critedge.i ], [ %i.ha, %.critedge.i.1 ]
  %i.gm = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.gn = trunc nuw nsw i64 %indvars.iv.i51.lcssa to i32 ; 2 uses
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.gp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.go, ptr noundef nonnull @.str.2, i32 noundef %i.gm, i32 noundef %i.gn, double noundef %.lcssa164, i32 noundef %i.gm, i32 noundef %i.gn, double noundef %.lcssa, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i51, 1 ; 3 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv.next.i52
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !9 ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i52
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !9 ; 2 uses
end_hunk_0
